using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanXe.Models;

namespace WebBanXe
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnSigUp_Click(object sender, EventArgs e)
        {
         String chuoi_ket_noi = configurationManager.ConnectionStrings["WebBanXeConnectionStrings"].ConnectionStrings
         sqlConnection conn = new SqlConnecion(chuoi_ket_noi);
         conn.open();
            
        }
    }
}
