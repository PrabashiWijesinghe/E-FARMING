using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["role"].Equals("user"))*/



        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }
    }
}