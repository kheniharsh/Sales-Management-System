using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SalesManagementSystem
{
    public partial class sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u"] == null)
            {
                Response.Redirect("login.aspx");
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string selectQuery = "select pid,priceperunit from product where productname=@productname";
                SqlCommand cmd = new SqlCommand(selectQuery, conn);
                cmd.Parameters.AddWithValue("@productname", DropDownList1.SelectedValue);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String pid1 = String.Format("{0}", reader["pid"]);
                        String ppu1 = String.Format("{0}", reader["priceperunit"]);
                        xyz.Value = pid1;
                        pqr.Value = ppu1;
                    }
                }
                
                conn.Close();
               
                conn.Open();
                string insertQuery = "insert into total(ItemId,ProductName,PricePerUnit,Quantity,Total)values (@ItemId,@ProductName,@PricePerUnit,@Quantity,@Total)";
                SqlCommand cmd1 = new SqlCommand(insertQuery, conn);
                cmd1.Parameters.AddWithValue("@ItemId", xyz.Value);
                cmd1.Parameters.AddWithValue("@ProductName", DropDownList1.SelectedValue);
                cmd1.Parameters.AddWithValue("@PricePerUnit", pqr.Value);
                cmd1.Parameters.AddWithValue("@Quantity", TextBox2.Text);
                float tot;
                tot = float.Parse(TextBox2.Text) * float.Parse(pqr.Value);
                cmd1.Parameters.AddWithValue("@Total", tot);
                cmd1.ExecuteNonQuery();





                conn.Close();
                conn.Open();
                GridView1.Visible = true;
                GridView1.DataBind();
                string squery = "SELECT SUM(Total) AS Total FROM total";
                SqlCommand cmd2 = new SqlCommand(squery, conn);
                
                using (SqlDataReader reader = cmd2.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String tota = String.Format("{0}", reader["Total"]);
                        
                        Label7.Text = tota;
                    }
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                GridView1.Visible = false;
                
                Label6.Visible = false;
                SqlConnection conn2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO sales(customer, contact, date, total) VALUES (@customer, @contact, @date, @total)", conn2);

                cmd.Parameters.AddWithValue("@customer", Customer.Text);
                cmd.Parameters.AddWithValue("@contact", Contact.Text);
                cmd.Parameters.AddWithValue("@date", TextBox3.Text);
                cmd.Parameters.AddWithValue("@total", Label7.Text);

                conn2.Open();
                cmd.ExecuteNonQuery();
                conn2.Close();
                GridView2.DataBind();

                SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn4.Open();
                string selectQuery = "DELETE from total";
                SqlCommand cmd4 = new SqlCommand(selectQuery, conn4);
                cmd4.ExecuteNonQuery();
                conn4.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}