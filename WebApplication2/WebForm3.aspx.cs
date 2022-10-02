using Customer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection("Data Source=DESKTOP-5GL4B5D\\SQLEXPRESS1;Initial Catalog=product;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            customer c = new customer();
            
            HttpCookie reqCookies = Request.Cookies["prodData"];
            if (reqCookies != null)
            {
              string Fname = reqCookies["First name"].ToString();
                string lname = reqCookies["Lname"].ToString();
                Response.Write("Welcome " + Fname +lname);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.Prodid = Convert.ToInt32(TextBox1.Text);
            p.ProdName = TextBox2.Text;
            p.Price = Convert.ToInt32(TextBox3.Text);
            c.Open();
            SqlCommand cmd = new SqlCommand("insert into product_table values('" + p.Prodid + "','" + p.ProdName + "','" + p.Price + "')", c);
            cmd.ExecuteNonQuery();
           Display.Text = "Record inserted succesfully...";
            TextBox1.Text = " ";
            TextBox2.Text = " "; 
            TextBox3.Text = " ";
            disp();
            c.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.Prodid = Convert.ToInt32(TextBox1.Text);
            p.ProdName = TextBox2.Text;
            p.Price = Convert.ToInt32(TextBox3.Text);
            c.Open();
            SqlCommand cmd = new SqlCommand("update product_table set ProdName=' " + p.ProdName + "',Price='" + p.Price + "' where Product_id=' " + p.Prodid + "'", c);
            cmd.ExecuteNonQuery();
            Display.Text = "Record updated succesfully !!";

            disp();

            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            c.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.Prodid = Convert.ToInt32(TextBox1.Text);
           
            c.Open();
            SqlCommand cmd = new SqlCommand("delete from product_table where Product_id=' " + p.Prodid + "'", c); ;
            cmd.ExecuteNonQuery();
           Display.Text = "Record deleted succesfully...";
            disp();

            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            c.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            disp();
            Display.Text = "Record viewed succesfully !!";
        }
        public void disp()
        {
            SqlCommand cmd = new SqlCommand("select * from product_table", c);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
           Display2.Text = "Record viewed succesfully !!";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.Prodid = Convert.ToInt32(TextBox1.Text);

            SqlCommand cmd = new SqlCommand("select * from product_table where Product_id=' " + p.Prodid + "'", c);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            Display.Text = "Product found ..";
            disp();
           
        }
    }
}