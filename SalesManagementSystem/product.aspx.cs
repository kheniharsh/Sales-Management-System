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
    public partial class product : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[product] (companyname,category,productname,priceperunit,stock) Values (@companyname,@category,@productname,@priceperunit,@stock)", conn);

                cmd.Parameters.AddWithValue("@companyname", companyname.Text);
                cmd.Parameters.AddWithValue("@category", category.Text);
                cmd.Parameters.AddWithValue("@productname", productname.Text);
                cmd.Parameters.AddWithValue("@priceperunit", priceperunit.Text);
                cmd.Parameters.AddWithValue("@stock", stock.Text);
                
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