using CraftShop.Models.db;
using Microsoft.AspNetCore.Identity;

namespace WebApplication1.Models.db
{
	public class ApplicationUser : IdentityUser
	{
        public ICollection<Address> Addresses { get; set; }
    }
}
