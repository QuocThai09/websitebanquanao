using DoAn_ShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn_ShopQuanAo.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if(lstGioHang == null)
            {
                lstGioHang= new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }    
            return lstGioHang;
        }

        public ActionResult ThemGioHang(int MaHH, string strUrl)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang SanPham = lstGioHang.Find(sp =>sp.iMaHH == MaHH);
            if(SanPham == null)
            {
                SanPham = new GioHang(MaHH);
                lstGioHang.Add(SanPham);
                return Redirect(strUrl);
            }
            else
            {
                SanPham.iSoLuong++;
                return Redirect(strUrl);
            }    
        }

        public int TongSL()
        {
            int tsl = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if(lstGioHang != null)
            {
                tsl = lstGioHang.Sum(sp => sp.iSoLuong);
            }
            return tsl;
        }

        public double TongThanhTien()
        {
            double ttt = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                ttt += lstGioHang.Sum(sp => sp.dThanhTien);
            }
            return ttt;
        }

        public ActionResult GioHang()
        {
            if(Session["GioHang"] == null)
            {
                return RedirectToAction("test","Home");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongSoLuong = TongSL();
            ViewBag.TongThanhTien = TongThanhTien();
            return View(lstGioHang);
        }

        public ActionResult iconGioHang()
        {

            if (Session["GioHang"] == null)
            {
                return RedirectToAction("test", "Home");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongSoLuong = TongSL();
            ViewBag.TongThanhTien = TongThanhTien();
            return View(lstGioHang);
        }

        public ActionResult XoaGioHang(int MaSP)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sp = lstGioHang.Single(s => s.iMaHH == MaSP);
            if(sp != null)
            {
                lstGioHang.RemoveAll(s => s.iMaHH == MaSP);
                return RedirectToAction("GioHang", "GioHang");
            }    

            if(lstGioHang == null)
            {
                return RedirectToAction("test", "Home");
            }
            return RedirectToAction("GioHang", "GioHang");
        }


        public ActionResult CapNhatGioHang(int MaHH, FormCollection f)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sp = lstGioHang.Single(s => s.iMaHH == MaHH);
            if(sp != null)
            {
                sp.iSoLuong = int.Parse(f["txtSoLuong"].ToString());
            }
            return RedirectToAction("GioHang", "GioHang");
        }

        public ActionResult XoaAllGioHang()
        {
            List<GioHang> lstGioHang = LayGioHang();
            lstGioHang.Clear();
            return RedirectToAction("GioHang", "GioHang");
        }

    }
}