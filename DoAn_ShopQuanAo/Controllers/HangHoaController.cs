using DoAn_ShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn_ShopQuanAo.Controllers
{
    public class HangHoaController : Controller
    {
        // GET: HangHoa
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        public ActionResult HangHoaAoThun()
        {
            var listHH = db.HangHoas.Where(s => s.MaTL == 1).ToList();
            return View(listHH);
        }

        public ActionResult HangHoaAoKhoat()
        {
            var listHH = db.HangHoas.Where(s => s.MaTL == 2).ToList();
            return View(listHH);
        }

        public ActionResult HangHoaAoSoMi()
        {
            var listHH = db.HangHoas.Where(s => s.MaTL == 3).ToList();
            return View(listHH);
        }

        public ActionResult HangHoaQuanDai()
        {
            var listHH = db.HangHoas.Where(s => s.MaTL == 4).ToList();
            return View(listHH);
        }
        public ActionResult ChiTietHH(int maHH)
        {
            HangHoa hh = db.HangHoas.Single(s => s.MaHH == maHH);
            if (hh == null)
            {
                return HttpNotFound();
            }
            return View(hh);
        }
    }
}