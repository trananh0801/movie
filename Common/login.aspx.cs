using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews.Common
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<thanhvien> danhsach = (List<thanhvien>)Application["danhsachtv"];
            if (IsPostBack)
            {
                if(Request.Form["dangnhap"] == "Đăng nhập")
                {
                    if(danhsach == null)
                    {
                        errorTK.InnerHtml = "Tên đăng nhập hoặc mật khẩu sai!";
                    }
                    foreach(thanhvien tv in danhsach)
                    {
                        if(tv.TenDangNhap == Request.Form["uname"] && tv.MatKhau == Request.Form["psw"])
                        {
                            Session["username"] = Request.Form["uname"];
                            Response.Redirect("home.aspx");
                        }
                        else
                        {
                            errorTK.InnerHtml = "Tên đăng nhập hoặc mật khẩu sai!";
                            break;
                        }
                        
                    }
                }
            }
        }
    }
}