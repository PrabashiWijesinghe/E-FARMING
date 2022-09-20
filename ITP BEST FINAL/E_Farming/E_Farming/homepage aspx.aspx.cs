using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user"))
                {



                    LinkButton3.Visible = true; // logout link button

                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                }

                else if (Session["role"].Equals("farmer"))

                {



                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["farmer_id"].ToString();


                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart aspx.aspx");
        }

        protected void btnViewItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("catagories aspx.aspx");
        }

        protected void btnOrderItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("order_view aspx.aspx");
        }

        protected void btnViewDelivery_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerViewDelivery.aspx");
        }

        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerProfile.aspx");
        }
        /* protected void LinkButton1_Click(object sender, EventArgs e)
         {
             Response.Redirect("FarmHome.aspx");
         }*/
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage aspx.aspx");
        }
        /*protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("FarmHome.aspx");
		}*/

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";




            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            Response.Redirect("FarmHome.aspx");


        }

        protected void btnFeedBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx"); 
        }
    }
}
