//using Entity;
using System;
using System.Drawing;

namespace BookShare
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // set title for page
            Page.Title = "Login - BookShare";

            if (Session["username"] != null && Request.QueryString["command"] != null)
            {
                Session.RemoveAll();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}