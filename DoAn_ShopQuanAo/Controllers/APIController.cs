using DoAn_ShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DoAn_ShopQuanAo.Controllers
{
    public class APIController : ApiController
    {
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();

        [HttpGet]
        public List<HangHoa> GetHangHoa()
        {
            return db.HangHoas.ToList();
        }
        [HttpGet]
        public HangHoa GetHH(int id)
        {
            return db.HangHoas.FirstOrDefault(s => s.MaHH == id);
        }
    }
}
