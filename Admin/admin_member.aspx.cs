using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews.Admin
{
    public partial class admin_member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != "admin")
            {
                Response.Redirect("../page404.html");
            }
            List<thanhvien> danhsach = (List<thanhvien>)Application["danhsachtv"];
            string chuoi = "";
            admin.InnerHtml = "Xin chào " +  Session["username"];

            int i = 1;
            foreach (thanhvien tv in danhsach)
            {
                chuoi += "<tr>";
                chuoi += "<td>" + (i++) + "</td>";
                chuoi += "<td>" + tv.HoTen + "</td>";
                chuoi += "<td>" + tv.NgaySinh + "</td>";
                chuoi += "<td>" + tv.GioiTinh + "</td>";
                chuoi += "<td>" + tv.NgayThamGia + "</td>";
                chuoi += "<td>" + tv.TenDangNhap + "</td>";
                chuoi += "<td>" + tv.Email + "</td>";
                chuoi += "<td><span><button class='sua'>Sửa</button></span><button class='xoa' style='margin-left: 2px;'>Xóa</button></td>";
                chuoi += "</tr>";
            }

            tbody.InnerHtml = chuoi;
        }
    }
}