using Microsoft.AspNetCore.Mvc;


namespace CraftShop.ViewComponents
{
    public class CartCheck : ViewComponent
    {
        public async Task<IViewComponentResult> InvokeAsync()
        {
            string value = HttpContext.Session.GetString("adet");
            int cartItemNum;

            if (value != null)
            {
                cartItemNum = int.Parse(value);
            }
            else
            {
                cartItemNum = 0;
            }

            // Verileri bir ViewComponentResult nesnesine ekleyin ve döndürün
            return View(cartItemNum);
        }
    }
}
