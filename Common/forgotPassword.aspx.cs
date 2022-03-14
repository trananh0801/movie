using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews.Common
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void forgot_Click(object sender, EventArgs e)
        {
            List<thanhvien> danhsach = (List<thanhvien>)Application["danhsachtv"];
            foreach (thanhvien tv in danhsach)
            {
                if (tv.Email == Request.Form["mail"])
                {
                    tv.MatKhau = Request.Form["newpass"];
                    Response.Redirect("login.aspx");
                }
                else
                {
                    erroremail.InnerHtml = "Email không tồn tại!";
                }

            }
        }
    }
}