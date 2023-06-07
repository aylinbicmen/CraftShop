using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CraftShop.Models.db
{
	[Table("Category", Schema = "Product")]
	public class Category
	{
		[Key]
        public int CategoryID { get; set; }
		[Required, MaxLength(15)]
        public string Name { get; set; }
		[Required]
		public bool IsActive { get; set; }

		public ICollection<Subcategory> Subcategories { get; set; }
    }
}
