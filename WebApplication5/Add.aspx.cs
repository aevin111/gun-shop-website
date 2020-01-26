using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class Add : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf; Integrated Security = True");
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Label1.Text = con.State.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf; Integrated Security = True");
            //con.Open();
            SqlCommand query = new SqlCommand("SELECT COUNT(prodid) FROM PRODUCTS", con);
            query.Prepare();

            using (SqlDataReader printer = query.ExecuteReader())
            {
                if (printer.Read())
                {
                    id = printer.GetInt32(0) + 1;
                }
            }

            SqlCommand query2 = new SqlCommand("INSERT INTO products VALUES (@prodid, @name, @price, @qty, @imgdir)", con);
            query2.Prepare();
            query2.Parameters.AddWithValue("@prodid", id);
            query2.Parameters.AddWithValue("@name", TextBox1.Text);
            query2.Parameters.AddWithValue("@price", TextBox2.Text);
            query2.Parameters.AddWithValue("@qty", TextBox4.Text);
            query2.Parameters.AddWithValue("@imgdir", TextBox3.Text);
            query2.ExecuteNonQuery();
            Response.Redirect("Purchases.aspx");
        }
    }
}