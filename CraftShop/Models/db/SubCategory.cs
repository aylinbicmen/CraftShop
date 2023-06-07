using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CraftShop.Models.db
{
	[Table("SubCategory", Schema = "Product")]
	public class Subcategory
	{
        [Key]
        public int SubCategoryID { get; set; }
		[Required, MaxLength(30)]
		public string Specification { get; set; }
		[Required]
		public bool IsActive { get; set; }

		public ICollection<Product> Products { get; set; }

		//Foreign Key
		public int CategoryID { get; set; }
		public Category Category { get; set; }
	}
}
