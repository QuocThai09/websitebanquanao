using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn_ShopQuanAo.Models
{
    public class GioHang
    {
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        public int iMaHH { get; set; }
        public string sTenHH { get; set; }
        public string sMau { get; set; }
        public string sAnh { get; set; }
        public int iDonGia { get; set; }
        public int iSoLuong { get; set; }

        public double dThanhTien
        {
            get { return iSoLuong * iDonGia; }
        }

        public GioHang(int MaHH)
        {
            iMaHH = MaHH;
            HangHoa hh = db.HangHoas.Single(s => s.MaHH == iMaHH);
            sTenHH = hh.TenHH;
            sMau = hh.Mau;
            sAnh = hh.Anh;
            iDonGia = int.Parse(hh.DonGia.ToString());
            iSoLuong = 1;

        }

    }
}