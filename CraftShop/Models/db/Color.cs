using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CraftShop.Models.db
{
	[Table("Color", Schema = "Product")]
	public class Color
	{
		[Key]
		public int ColorID { get; set; }
		[Required, MaxLength(20)]
		public string Name { get; set; }

		[Required]
		public bool IsActive { get; set; }

		public ICollection<Product> Products { get; set; }
	}
}
