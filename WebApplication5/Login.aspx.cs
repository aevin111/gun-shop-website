using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class Login : System.Web.UI.Page
    {
        string email;
        string pass;
        int priv;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=c:\users\soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand query = new SqlCommand("SELECT name, price, imgdir FROM products WHERE prodid = @prodid", con);
            query.Prepare();
            query.Parameters.AddWithValue("@prodid", prodID);

            using (SqlDataReader printer = query.ExecuteReader())
            {
                if (printer.Read())
                {
                    name = printer.GetString(0);
                    price = printer.GetInt32(1);
                    Label1.Text = printer.GetString(0);
                    Label2.Text = "P" + printer.GetInt32(1).ToString();
                    Image1.ImageUrl = @"Images\" + printer.GetString(2);
                }
            }
             */
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=c:\users\soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand query = new SqlCommand("SELECT email, pass, privid FROM users WHERE email = @email AND pass = @pass", con);
            query.Prepare();
            query.Parameters.AddWithValue("@email", TextBox1.Text.ToString());
            query.Parameters.AddWithValue("@pass", TextBox2.Text.ToString());

            using (SqlDataReader printer = query.ExecuteReader())
            {
                if (printer.Read())
                {
                    /*
                    name = printer.GetString(0);
                    price = printer.GetInt32(1);
                    Label1.Text = printer.GetString(0);
                    Label2.Text = "P" + printer.GetInt32(1).ToString();
                    Image1.ImageUrl = @"Images\" + printer.GetString(2);
                    */
                    email = printer.GetString(0);
                    pass = printer.GetString(1);
                    priv = printer.GetInt32(2);
                }
            }

            if (email == TextBox1.Text && pass == TextBox2.Text && priv == 1)
            {
                Response.Redirect("Purchases.aspx");
            }
        }
    }
}