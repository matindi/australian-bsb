using System.Net.Http;
using Microsoft.AspNetCore.Mvc;

namespace web
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            string bsbDirectory = string.Empty;
            using(var client = new HttpClient())
            {
                bsbDirectory = client.GetStringAsync("http://api:3000/bsbdirectory").Result;
            }

            return View("Index",bsbDirectory);
        }

    }   
}