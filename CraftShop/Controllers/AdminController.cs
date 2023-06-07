using CraftShop.Data;
using CraftShop.Models.db;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Formatters;
using Microsoft.EntityFrameworkCore;
using System.Data;

namespace CraftShop.Controllers
{
    public class AdminController : Controller
    {
		private readonly ApplicationDbContext _context;

		public AdminController(ApplicationDbContext context)
        {
			_context = context;
		}

		//Index page of the Admin portal
        [Authorize(Roles = "Admin")]
        public IActionResult Index()
        {
			List<decimal> orders = _context.Order.Select(o => o.Total).ToList();
			ViewBag.Total = orders.Sum();
			ViewBag.NumOfOrders = orders.Count();

			List<bool> products = _context.Product.Select(p => p.IsActive).ToList();
			ViewBag.Active = products.Where(p => p == true).Count();
			ViewBag.Passive = products.Where(p => p == false).Count();

			return View();
        }

        //Method to create a new product, category, subcategory or color --> createType: "addProduct", "addCategory", "addSubcategory", "addColor"
        [Authorize(Roles = "Admin")]
        public IActionResult Create(string createType)
        {
            ViewBag.createType = createType;

			ViewBag.Category = _context.Category.ToList();
            ViewBag.Subcategory = _context.SubCategory.ToList();
            ViewBag.Color = _context.Color.ToList();

			return View();
        }

		//Post method to create a category
        [HttpPost]
        public IActionResult CreateMainCategory(Category category) 
        {
			try
			{
				_context.Category.Add(category);

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Adding The Category!");
			}

			return View("Message", "The Category Has Been Successfully Added!");
		}

        //Post method to create a subcategory
        [HttpPost]
        public IActionResult CreateSubCategory(Subcategory subcategory)
        {
			try
			{
				_context.SubCategory.Add(subcategory);

				_context.SaveChanges();
			}
			catch (Exception)
			{

				return View("Message", "An Error Occured While Adding The Subcategory!");
			}

			return View("Message", "The Subcategory Has Been Successfully Added!");
		}

        //Post method to create a color
        [HttpPost]
		public IActionResult CreateColor(Color color)
		{
			try
			{
				_context.Color.Add(color);

				_context.SaveChanges();
			}
			catch (Exception)
			{

				return View("Message", "An Error Occured While Adding The Color!");
			}

			return View("Message", "The Color Has Been Successfully Added!");
		}

        //Post method to create a product
        [HttpPost]
		public IActionResult CreateProduct(Product product)
		{
			try
			{
				if (product.SubCategoryID == 0 || product.ColorID == 0)
				{
					return View("Message", "Please Check The Product Details Before Adding!");
				}
				else
				{
					_context.Product.Add(product);

					_context.SaveChanges();
				}
			}
			catch (Exception)
			{

				return View("Message", "An Error Occured While Adding The Product!");
			}

			return View("Message", "The Product Has Been Successfully Added!");
		}

        //Method to edit an existing product, category, subcategory or color --> editType: "editProduct", "editCategory", "editSubcategory", "editColor" - id: itemID
        [Authorize(Roles = "Admin")]
        public IActionResult Edit(string editType,int id)
        {
            ViewBag.editType = editType;

            switch (editType)
            {
                case "editProduct":
					ViewBag.Item = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Include(color => color.Color).FirstOrDefault(x => x.ProductID == id);
					break;
                case "editCategory":
					ViewBag.Item = _context.Category.FirstOrDefault(x => x.CategoryID == id);
					break;
				case "editSubcategory":
                    ViewBag.Item = _context.SubCategory.FirstOrDefault(x => x.SubCategoryID == id);
                    break;
				case "editColor":
					ViewBag.Item = _context.Color.FirstOrDefault(x => x.ColorID == id);
					break;
			}

            ViewBag.Category = _context.Category.ToList();
            ViewBag.Subcategory = _context.SubCategory.ToList();
            ViewBag.Color = _context.Color.ToList();

            return View();
        }

        //Post method to edit a product
        [HttpPost]
		public IActionResult EditProduct(Product product)
		{
			try
			{
				_context.Entry(product).State = EntityState.Modified;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Updating The Product!");
			}

			return View("Message", "The Product Has Been Successfully Updated!");
		}

        //Post method to edit a category
        [HttpPost]
		public IActionResult EditMainCategory(Category category)
		{
			try
			{
				_context.Entry(category).State = EntityState.Modified;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Updating The Category!");
			}

			return View("Message", "The Category Has Been Successfully Updated!");
		}

        //Post method to edit a subcategory
        [HttpPost]
		public IActionResult EditSubCategory(Subcategory subcategory)
		{
			try
			{
				_context.Entry(subcategory).State = EntityState.Modified;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Updating The Subcategory!");
			}

			return View("Message", "The Subcategory Has Been Successfully Updated!");
		}

        //Post method to edit a color
        [HttpPost]
        public IActionResult EditColor(Color color) 
        {
			try
			{
				_context.Entry(color).State = EntityState.Modified;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Updating The Color!");
			}

			return View("Message", "The Color Has Been Successfully Updated!");
		}

        //Method to see product details
        [Authorize(Roles = "Admin")]
        public IActionResult Details(int id)
        {
            ViewBag.Item = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Include(color => color.Color).FirstOrDefault(x => x.ProductID == id);

            return View();
        }

        //Method to make a product, category, subcategory or color passive --> editType: "deleteProduct", "deleteCategory", "deleteSubcategory", "deleteColor" - id: itemID
        [Authorize(Roles = "Admin")]
        public IActionResult Delete(int id, string deleteType) 
		{
            switch (deleteType)
            {
                case "deleteProduct":
					ViewBag.Item = _context.Product.FirstOrDefault(x => x.ProductID == id);
                    break;
                case "deleteCategory":
                    ViewBag.Item = _context.Category.FirstOrDefault(x => x.CategoryID == id);
                    break;
                case "deleteSubcategory":
                    ViewBag.Item = _context.SubCategory.FirstOrDefault(x => x.SubCategoryID == id);
                    break;
                case "deleteColor":
                    ViewBag.Item = _context.Color.FirstOrDefault(x => x.ColorID == id);
                    break;
            }

			ViewBag.deleteType = deleteType;
            return View();
		}

        //Method to make a product passive
        [HttpPost]
		public IActionResult DeleteProduct(Product product)
		{
			try
			{
				Product prd = _context.Product.FirstOrDefault(prd => prd.ProductID == product.ProductID);

				prd.IsActive = false;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Deleting The Product!");
			}

			return View("Message", "The Product Has Been Successfully Deleted!");
		}

        //Method to make a category passive
        [HttpPost]
		public IActionResult DeleteCategory(Category category)
		{
			try
			{
				Category mainCat = _context.Category.FirstOrDefault(cat => cat.CategoryID == category.CategoryID);

				mainCat.IsActive = false;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Deleting The Category!");
			}

			return View("Message", "The Category Has Been Successfully Deleted!");
		}

        //Method to make a subcategory passive
        [HttpPost]
		public IActionResult DeleteSubcategory(Subcategory subcategory)
		{
			try
			{
				Subcategory subCat = _context.SubCategory.FirstOrDefault(cat => cat.SubCategoryID == subcategory.SubCategoryID);

				subCat.IsActive = false;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Deleting The Subcategory!");
			}

			return View("Message", "The Subcategory Has Been Successfully Deleted!");
		}

        //Method to make a color passive
        [HttpPost]
		public IActionResult DeleteColor(Color color)
		{
			try
			{
				Color contextColor = _context.Color.FirstOrDefault(col => col.ColorID == color.ColorID);

				contextColor.IsActive = false;

				_context.SaveChanges();
			}
			catch (Exception)
			{
				return View("Message", "An Error Occured While Deleting The Subcategory!");
			}

			return View("Message", "The Subcategory Has Been Successfully Deleted!");
		}

		//method to show all products
        [Authorize(Roles = "Admin")]
        public IActionResult Products() 
        {
            ViewBag.Product = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).ToList();
			ViewBag.Category = _context.Category.ToList();
			ViewBag.Subcategory = _context.SubCategory.ToList();

			return View();
        }

        //method to show all categories --> categoryType: "mainCategory", "subCategory"
        [Authorize(Roles = "Admin")]
        public IActionResult Categories(string categoryType)
        {
            ViewBag.categoryType = categoryType;

            ViewBag.Category = _context.Category.ToList();
			ViewBag.Subcategory = _context.SubCategory.ToList();

			return View();
        }

        //method to show all parameters - currently has only "color"
        [Authorize(Roles = "Admin")]
        public IActionResult Parameters(string parameterType)
        {
            ViewBag.parameterType = parameterType;

            ViewBag.Color = _context.Color.ToList();

            return View();
        }

        //method to show all orders
        [Authorize(Roles = "Admin")]
        public IActionResult Orders()
		{
			ViewBag.Orders = _context.Order.ToList();

			return View();
		}
    }
}
