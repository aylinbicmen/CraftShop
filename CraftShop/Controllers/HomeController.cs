using CraftShop.Data;
using CraftShop.Models;
using CraftShop.Models.db;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using NuGet.Protocol;
using System.Diagnostics;
using WebApplication1.Models.db;

namespace CraftShop.Controllers
{
	public class HomeController : Controller
	{
		private readonly ApplicationDbContext _context;

		public HomeController(ApplicationDbContext context)
		{
			_context = context;
		}

		//method to show top products and latest products
		public IActionResult Index()
		{
			ViewBag.TopProducts = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Where(a => a.IsActive == true).Take(8).ToList();

			ViewBag.LatestProducts = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Where(a => a.IsActive == true).OrderByDescending(x => x.ProductID).Take(2).ToList();

            return View();
		}

		//method to show all products or products according to the chosen category --> showType: "all", "chosenCategory"
		public IActionResult Products(string showType)
		{
			ViewBag.showType = showType;


            switch (showType)
			{
				case "all":
                    ViewBag.Products = _context.Product.Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Where(a => a.IsActive == true).ToList();
                    break;
				default:
					int id = Convert.ToInt32(showType);
                    ViewBag.Products = _context.Product.Where(x => x.SubCategory.CategoryID == id).Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Where(a => a.IsActive == true).ToList();

                    break;
			}
			return View();
		}

		//method to display categories in the layout - ajax
        public IActionResult GetCategories()
        {
            var categories = JsonConvert.SerializeObject(_context.Category.Where(c => c.IsActive == true).ToList());
            return Json(categories);
        }

		//method to display single product with details --> id: itemID
		public IActionResult SingleProduct(int id)
		{
			Product product = _context.Product.Where(p => p.ProductID == id).Include(c => c.Color).Include(sub => sub.SubCategory).ThenInclude(main => main.Category).FirstOrDefault();
			return View(product);
		}

		//post method to list products based on search box data on the navigation --> search: "userInput"
		[HttpPost]
		public IActionResult Search(string search) 
		{
            ViewBag.Products = _context.Product.Where(p => p.Name.Contains(search)).Include(sub => sub.SubCategory).ThenInclude(main => main.Category).Where(a => a.IsActive == true).ToList();

			return View();
		}

		//method to display FAQ page
		public IActionResult FAQ()
		{
			return View();
		}

        //method to display Contact Us page
        public IActionResult ContactUs()
		{
			return View();
		}

        //method to display About Us page
        public IActionResult AboutUs()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}