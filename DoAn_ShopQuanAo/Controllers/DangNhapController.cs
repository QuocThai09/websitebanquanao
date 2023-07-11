using DoAn_ShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn_ShopQuanAo.Controllers
{
    public class DangNhapController : Controller
    {
        // GET: DangNhap
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        public ActionResult DangNhap()
        {
            FormCollection form = new FormCollection();
            var user = form["user"];
            
            if (String.IsNullOrEmpty(user))
            {
                ViewBag.loi1 = "User không được bỏ trống";
            }  
            return View();
        }
    }
}