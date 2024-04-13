using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanXe
{
    public partial class ThemXe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //lấy giá trị chuỗi kết nối trong web.config
            string chuoiketnoi = ConfigurationManager.ConnectionStrings["QLBanHangConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            conn.Open();
            string sql = "INSERT INTO Xe(tenxe,dongia,mota,anhxe,mahx)" + " values(@tenxe,@dongia,@mota,@anhxe,@mahx)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@tenxe", txtTenXe.Text);
            cmd.Parameters.AddWithValue("@dongia", txtGia.Text);
            cmd.Parameters.AddWithValue("@mota", txtMoTa.Text);

            if (FHinh.HasFile)
            {
                //xử lý upload hình
                string duong_dan = Server.MapPath("~/xe/") + FHinh.FileName;
                FHinh.SaveAs(duong_dan);
                cmd.Parameters.AddWithValue("@anhxe", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@anhxe", "no_image.png");
            }
            cmd.Parameters.AddWithValue("@mahx", ddlHX.SelectedValue);
            //thực hiện câu lệnh truy vấn đến CSDL
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("TatCaXe.aspx");
            else
                lbThongBao.Text = "Thao tác thêm tin Thất Bại!!!";
        }
    }
    
}