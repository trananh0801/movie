using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews.Common
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }
        protected void dangky_Click(object sender, EventArgs e)
        {
            List<thanhvien> danhsach = (List<thanhvien>)Application["danhsachtv"];
            int checkEmail = 0;
            int checkUname = 0;
            foreach (thanhvien tv1 in danhsach)
            {
                if (tv1.Email == Request.Form["email"] || tv1.TenDangNhap == Request.Form["uname"])
                {
                    checkEmail = 1;
                    checkUname = 1;
                    dinhdangEmail.InnerHtml = "Tài khoản đã tồn tại!";
                }
            }
            if (checkEmail == 0 && checkUname == 0)
            {
                thanhvien tv = new thanhvien();
                tv.Email = Request.Form["email"];
                tv.HoTen = Request.Form["hoten"];
                tv.NgaySinh = Request.Form["ngaysinh"];
                tv.GioiTinh = Request.Form["gioitinh"];
                tv.TenDangNhap = Request.Form["uname"];
                tv.MatKhau = Request.Form["psw"];
                tv.NgayThamGia = DateTime.Now.ToString("dd/MM/yyyy");
                danhsach.Add(tv);
                Application["danhsachtv"] = danhsach;
                Response.Redirect("login.aspx");
            }
            
        }
    }
}