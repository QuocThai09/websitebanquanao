using DoAn_ShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn_ShopQuanAo.Controllers
{

    public class TheLoaiController : Controller
    {
        // GET: TheLoai

        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        public ActionResult TheLoaiPartial()
        {
            var ListTL = db.TheLoais.Take(4).ToList();
            return View(ListTL);
        }
        public ActionResult QuanAoTheoTheLoai(int maTL)
        {
            var listQA = db.HangHoas.Where(s => s.MaTL == maTL).ToList();
            if (listQA.Count() == 0)
            {
                ViewBag.HangHoa = "Không có sản phẩm thuộc thể loại này!!!";
            }
            return View(listQA);
        }
    }
}