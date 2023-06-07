using CraftShop.Data;
using CraftShop.Models.db;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;


namespace CraftShop.Controllers
{
    public class UserController : Controller
    {
        private readonly ApplicationDbContext _context;

        public UserController(ApplicationDbContext context)
        {
            _context = context;
        }

        //method to display added user addresses
        public IActionResult UserAddresses()
        {
            ClaimsPrincipal currentUser = this.User;
            string currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;

            ViewBag.Address = _context.Address.Include(type => type.AddressType).Where(id => id.ApplicationUserId == currentUserID && id.IsActive == true).ToList();

            return View();
        }

        //method to add a new address
        public IActionResult Create()
        {
            ViewBag.Types = _context.AddressType.ToList();

            return View();
        }

        //post method to add a new address
        [HttpPost]
        public IActionResult Create(Address address)
        {
            try
            {
                _context.Address.Add(address);

                _context.SaveChanges();
            }
            catch (Exception)
            {
                return View("IndexMessage", "An Error Occured While Adding The Address!");
            }

            return View("IndexMessage", "The Address Has Been Successfully Added!");

        }

        //method to display address details --> id: "AddressID"
        public IActionResult Details(int id)
        {
            Address address = _context.Address.Where(a => a.AddressID == id).Include(type => type.AddressType).FirstOrDefault();

            return View(address);
        }

        //method to edit the selected address --> id: "AddressID" 
        public IActionResult Edit(int id) 
        {
            Address address = _context.Address.Where(a => a.AddressID == id).Include(type => type.AddressType).FirstOrDefault();

            ViewBag.Types = _context.AddressType.ToList();

            return View(address);
        }

        //post method to edit the selected address
        [HttpPost]
        public IActionResult Edit(Address address) 
        {
            try
            {
                _context.Entry(address).State = EntityState.Modified;

                _context.SaveChanges();
            }
            catch (Exception)
            {
                return View("IndexMessage", "An Error Occured While Updating The Address!");
            }

            return View("IndexMessage", "The Address Has Been Successfully Updated!");
        }

        //method to make the selected address passive --> id: "AddressID"
        public IActionResult Delete(int id) 
        {
            Address address = _context.Address.Where(a => a.AddressID == id).Include(type => type.AddressType).FirstOrDefault();

            return View(address);
        }

        //method to make the selected address passive
        [HttpPost]
        public IActionResult Delete(Address address)
        {
            try
            {
                Address addr = _context.Address.FirstOrDefault(a => a.AddressID == address.AddressID);

                addr.IsActive = false;

                _context.SaveChanges();
            }
            catch (Exception)
            {
                return View("IndexMessage", "An Error Occured While Deleting The Address!");
            }

            return View("IndexMessage", "The Address Has Been Successfully Deleted!");
        }

        //method to display orders placed by the current user
        public IActionResult UserOrders()
        {
            ClaimsPrincipal currentUser = this.User;
            string currentUserEmail = currentUser.FindFirst(ClaimTypes.Email).Value;

            ViewBag.Orders = _context.Order.Where(o => o.Email == currentUserEmail).Include(o => o.Address).ToList();

            return View();
        }
    }
}
