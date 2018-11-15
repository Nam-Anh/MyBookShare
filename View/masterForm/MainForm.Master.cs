using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace booksahre.masterForm
{
    public partial class MainForm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.AbsolutePath;
            if (!url.Contains("Home.aspx") && Session["username"]==null) Response.Redirect("Login.aspx");
            
        }
    }
}