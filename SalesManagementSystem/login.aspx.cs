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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SELECT name, role FROM [user] WHERE [username] = @username AND [password] = @password", conn);
                
                conn.Open();
                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);

                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String n = String.Format("{0}", reader["name"]);
                        String v = String.Format("{0}", reader["role"]);
                        if (v == "Admin")
                        {
                            Session["u"] = n;
                            Response.Redirect("home_admin.aspx");


                        }
                        else if (v == "Manager")
                        {
                            Session["u"] = n;
                            Response.Redirect("home_manager.aspx");

                        }
                    }
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
           
            

        }
    }
}
