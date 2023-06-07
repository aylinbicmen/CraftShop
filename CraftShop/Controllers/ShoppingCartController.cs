using CraftShop.Data;
using CraftShop.Models;
using CraftShop.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Text.Encodings.Web;

namespace CraftShop.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly ApplicationDbContext _context;
        private ShoppingCart shoppingCart;
        public ShoppingCartController(ApplicationDbContext context)
        {
            _context = context;
            shoppingCart = new ShoppingCart();
            shoppingCart._context = context;
        }
        //
        // GET: /ShoppingCart/
        public IActionResult Index()
        {
            var cart = shoppingCart.GetCart(this.HttpContext);

            // Set up our ViewModel
            var viewModel = new ShoppingCartViewModel
            {
                CartItems = cart.GetCartItems(),
                CartTotal = cart.GetTotal()
            };
            // Return the view
            ViewData["CartCount"] = HttpContext.Session.GetString("adet");
            return View(viewModel);
        }
        //
        // GET: /Store/AddToCart/5
        public IActionResult AddToCart(int id)
        {
            // Retrieve the album from the database
            var addedProduct = _context.Product.Single(product => product.ProductID == id);

            // Add it to the shopping cart
            var cart = shoppingCart.GetCart(this.HttpContext);

            cart.AddToCart(addedProduct);
            HttpContext.Session.SetString("adet", cart.GetCount().ToString());

            // Go back to the main store page for more shopping
            return RedirectToAction("Index");
        }
        //
        // AJAX: /ShoppingCart/RemoveFromCart/5
        [HttpPost]
        public IActionResult RemoveFromCart(int id)
        {
            // Remove the item from the cart
            var cart = shoppingCart.GetCart(this.HttpContext);

            // Get the name of the album to display confirmation
            string productName = _context.Cart.Include(p => p.Product).Single(item => item.RecordID == id).Product.Name;

            // Remove from cart
            int itemCount = cart.RemoveFromCart(id);
            HttpContext.Session.SetString("adet", cart.GetCount().ToString());

            // Display the confirmation message
            var results = new ShoppingCartRemoveViewModel
            {
                Message = HtmlEncoder.Default.Encode(productName) +
                    " has been removed from your shopping cart.",
                CartTotal = cart.GetTotal(),
                CartCount = cart.GetCount(),
                ItemCount = itemCount,
                DeleteId = id
            };
            return Json(results);
        }
        //
        // GET: /ShoppingCart/CartSummary
        public IActionResult CartSummary()
        {
            var cart = shoppingCart.GetCart(this.HttpContext);

            ViewData["CartCount"] = cart.GetCount();
            return PartialView("CartSummary");
        }
    }
}
