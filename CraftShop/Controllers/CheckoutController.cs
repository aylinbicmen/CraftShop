using CraftShop.Data;
using CraftShop.Models;
using CraftShop.Models.db;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace CraftShop.Controllers
{
    public class CheckoutController : Controller
    {
        private readonly ApplicationDbContext _context;
        private ShoppingCart shoppingCart;
        const string PromoCode = "FREE";
        public CheckoutController(ApplicationDbContext context)
        {
            _context = context;
            shoppingCart = new ShoppingCart();
            shoppingCart._context = context;
        }

        //method to get details necessary for the order
        public IActionResult AddressAndPayment()
        {
            bool loggedIn = User.Identity.IsAuthenticated;

            if (loggedIn)
            {
                ClaimsPrincipal currentUser = this.User;
                string currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;

                List<Address> addresses = _context.Address.Include(type => type.AddressType).Where(id => id.ApplicationUserId == currentUserID && id.IsActive == true).ToList();

                if (addresses.Count > 0)
                {
                    ViewBag.Address = addresses;
                    return View();
                }
                else
                {
                    return View("IndexMessage", "Please add an address to complete your order!");
                }
            }
            else
            {
                return View("IndexMessage", "Please log in to your account to complete your order!");
            }
        }

        //post method to process payment of order with details
        [HttpPost]
        public IActionResult AddressAndPayment(IFormCollection values)
        {
            var order = new Order();
            //TryUpdateModel(order);

            try
            {
                if (string.Equals(values["PromoCode"], PromoCode,
                    StringComparison.OrdinalIgnoreCase) == false)
                {
                    //return View(order);
                    return View("IndexMessage", "An Error Occured With The Payment! Please Try Again.");
                }
                else
                {
                    order.Username = User.Identity.Name;
                    order.OrderDate = DateTime.Now;
                    order.FirstName = values["FirstName"];
                    order.LastName = values["LastName"];
                    order.AddressID = Convert.ToInt32(values["AddressID"]);
                    order.Email = values["Email"];
                    order.Phone = values["Phone"];
                    order.Total = Convert.ToDecimal(values["Total"]);

                    //Save Order
                    _context.Order.Add(order);
                    _context.SaveChanges();
                    //Process the order
                    var cart = shoppingCart.GetCart(this.HttpContext);
                    cart.CreateOrder(order);

                    ViewData["CartCount"] = cart.GetCount();

                    return RedirectToAction("Complete",
                        new { id = order.OrderID });
                }
            }
            catch
            {
                //Invalid - redisplay with errors
                //return View(order);
                return View("IndexMessage", "An Error Occured With The Payment! Please Try Again.");
            }
        }

        //method to control if an order was placed successfully or not
        public IActionResult Complete(int id)
        {
            // Validate customer owns this order
            bool isValid = _context.Order.Any(o => o.OrderID == id && o.Username == User.Identity.Name);

            if (isValid)
            {
                return View(id);
            }
            else
            {
                return View("Error");
            }
        }
    }
}
