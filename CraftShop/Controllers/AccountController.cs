using CraftShop.Data;
using CraftShop.Models;
using Microsoft.AspNetCore.Mvc;

namespace CraftShop.Controllers
{
    public class AccountController : Controller
    {
        private readonly ApplicationDbContext _context;
        private ShoppingCart shoppingCart;
        public AccountController(ApplicationDbContext context)
        {
            _context = context;
            shoppingCart = new ShoppingCart();
            shoppingCart._context = context;
        }
        private void MigrateShoppingCart(string UserName)
        {
            // Associate shopping cart items with logged-in user
            var cart = shoppingCart.GetCart(this.HttpContext);

            cart.MigrateCart(UserName);
            string cartId = ShoppingCart.CartSessionKey;
            HttpContext.Session.SetString(cartId, UserName);
        }
    }
}
