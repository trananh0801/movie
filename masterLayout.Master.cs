using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews
{
    public partial class masterLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int luottruycap = (Convert.ToInt32(Application["luottruycap"]));
            soluottruycap.InnerHtml = luottruycap + " lượt truy cập";
            Application["luottruycap"] = luottruycap + 1;

            if (Request.Form["dangxuat"] == "Đăng xuất")
            {
                Session["username"] = null;
                Response.Redirect("/Common/login.aspx");
            }
        }
    }
}