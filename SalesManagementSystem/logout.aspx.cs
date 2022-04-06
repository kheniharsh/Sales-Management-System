using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesManagementSystem
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Session.Clear();
            Response.Redirect("login.aspx");


        }
    }
}