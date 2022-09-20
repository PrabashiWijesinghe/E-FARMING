using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm50 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void AddItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("addItem aspx.aspx");
        }

        protected void ViewItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("item aspx.aspx");
        }

        protected void ViewOrderDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("order_view aspx.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }
    }
    }