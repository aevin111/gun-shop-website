using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf; Integrated Security = True");
        string name;
        string date;
        string address;
        int price;
        int qty;
        int id;


        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * String username = "joe.bloggs";
               SqlCommand sqlQuery = new SqlCommand("SELECT user_id, first_name,last_name FROM users WHERE username = ?username",  con);
               sqlQuery.Parameters.AddWithValue("?username", username);
               int result = (int)cmd.ExecuteReader();
             */
            string prodID = Request.QueryString["id"];
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
                    Image1.ImageUrl = printer.GetString(2);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int response;

            if (Int32.TryParse(TextBox1.Text, out qty))
            {
                qty = Convert.ToInt32(TextBox1.Text);
            }

            else
            {
                qty = 1;
            }

            price = price * qty;
            address = TextBox2.Text;
            date = DateTime.UtcNow.Date.ToString("MM/dd/yyyy");
            SqlCommand query = new SqlCommand("SELECT COUNT(id) FROM transactions", con);
            query.Prepare();

            using (SqlDataReader printer = query.ExecuteReader())
            {
                if (printer.Read())
                {
                    id = printer.GetInt32(0) + 1;
                }
            }

            //INSERT INTO transactions VALUES (1, 'M14 Rifle', 2, 300000, '09/09/2017', 'meme', 'a', '', '', '', '')
            //SqlConnection con3 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Soappy\documents\visual studio 2015\Projects\WebApplication5\WebApplication5\App_Data\Database1.mdf;Integrated Security=True");
            string cmd = "INSERT INTO transactions VALUES (@id, @name, @qty, @price, @date, @addr, @emailadd, @phonenum, @cardnum, @cvv, @expiry)";

            using (SqlCommand query2 = new SqlCommand(cmd, con))
            {
                query2.Prepare();
                query2.Parameters.AddWithValue("@id", id);
                query2.Parameters.AddWithValue("@name", name);
                query2.Parameters.AddWithValue("@qty", qty);
                query2.Parameters.AddWithValue("@price", price);
                query2.Parameters.AddWithValue("@date", date);
                query2.Parameters.AddWithValue("@addr", address);
                query2.Parameters.AddWithValue("@emailadd", TextBox7.Text);
                query2.Parameters.AddWithValue("@phonenum", TextBox6.Text);
                query2.Parameters.AddWithValue("@cardnum", TextBox3.Text);
                query2.Parameters.AddWithValue("@cvv", TextBox5.Text);
                query2.Parameters.AddWithValue("@expiry", TextBox4.Text);
                response = query2.ExecuteNonQuery();
            }

            if (response > 0)
            {
                Response.Redirect("Confirmed.aspx");
            }
        }
    }
}