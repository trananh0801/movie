﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieNews.Admin
{
    public partial class admin_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admin.InnerHtml = "Xin chào " + Session["username"];
        }
    }
}