using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string uname = "Sukirthal";
        string pass = "lsuki@123";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == uname && TextBox2.Text == pass)
            {
                Response.Redirect("~/WebForm2.aspx");
            }
            else
            {
                Response.Write("Invalid username or password...");
            }
        }
    }
}