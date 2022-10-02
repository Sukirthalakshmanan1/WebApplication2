using Customer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("prodData");
            cookie.Expires = DateTime.Now.AddMinutes(10);


            customer c = new customer();
            c.Fname = F1.Text;
            c.LName = Lbox.Text;
            c.dob = TextBox2.Text;
            c.state = TextBox5.Text;
            c.city = TextBox4.Text;





            cookie.Values.Add("First name", c.Fname.ToString());
            cookie.Values.Add("Lname", c.LName.ToString());
            cookie.Values.Add("city", c.city.ToString());
            Response.Cookies.Add(cookie);
           Response.Write("Cookies added succesfully");
           
            
            
            Response.Redirect("~/WebForm3.aspx");

        }
    }
}