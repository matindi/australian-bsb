using Microsoft.AspNetCore.Mvc;

namespace web
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

    }   
}