using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CraftShop.Models.db
{
	[Table("Product", Schema = "Product")]
	public class Product
	{
        [Key]
		public int ProductID { get; set; }
        [Required, MaxLength(150)]
		public string Name { get; set; }
		public string? Description { get; set; }
		[Required]
		public decimal Price { get; set; }
		[Required, MaxLength(150)]
		public string Photo { get; set; }
		[Required]
		public int Stock { get; set; }

		[Required]
		public bool IsActive { get; set; }
		[Required]
		public DateTime AddDate { get; set; }

		//Foreign Keys
		public int SubCategoryID { get; set; }
		public Subcategory SubCategory { get; set; }

		//Foreign Key
		public int ColorID { get; set; }
		public Color Color { get; set; }
	}
}
