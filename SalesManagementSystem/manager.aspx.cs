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
    public partial class manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[user] (name,contact,username,password,role) Values (@name,@contact,@username,@password,@role)", conn);
                cmd.Parameters.AddWithValue("@name", Name.Text);
                cmd.Parameters.AddWithValue("@contact", Contact.Text);
                cmd.Parameters.AddWithValue("@username", Username.Text);
                cmd.Parameters.AddWithValue("@password", Password.Text);
                cmd.Parameters.AddWithValue("@role", DropDownList1.SelectedValue);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}
    