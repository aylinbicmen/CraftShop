using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using WebApplication1.Models.db;

namespace CraftShop.Models.db
{
	[Table("Address", Schema = "Address")]
	public class Address
	{
		[Key]
        public int AddressID { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string AddressLine { get; set; }
        public bool IsActive { get; set; }

        public ICollection<Order> Orders { get; set; }

        //Foreign Keys
        public int AddressTypeID { get; set; }
		public AddressType AddressType { get; set; }

        public string ApplicationUserId { get; set; }
        public ApplicationUser ApplicationUser { get; set; }
    }
}
