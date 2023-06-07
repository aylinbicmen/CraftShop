using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CraftShop.Models.db
{
	[Table("AddressType", Schema = "Address")]
	public class AddressType
	{
		[Key]
        public int AddressTypeID { get; set; }
		[Required, MaxLength(10)]
        public string Name { get; set; }

		public ICollection<Address> Addresses { get; set; }
    }
}
