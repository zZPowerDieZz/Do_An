using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanXe.Models
{
    public class CartItem
    {
        public int MaXe { set; get; }
        public string TenXe { set; get; }
        public string AnhXe { set; get; }
        public int DonGia { set; get; }
        public int SoLuong { set; get; }
        public int ThanhTien
        {
            get { return SoLuong * DonGia; }
        }
    }
}