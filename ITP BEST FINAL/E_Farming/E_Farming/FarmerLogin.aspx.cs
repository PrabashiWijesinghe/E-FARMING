using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmerRegForm.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Userdetails_Table_2 where user_id='" + TextBox1.Text.Trim() + "' AND password = '" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["farmer_id"] = dr.GetValue(0).ToString();
                       
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "farmer";
                    }
                    Response.Redirect("RequestItemSelect.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentails');</script>");
                }
            }
            catch (Exception ex)
            {



            }

        }
    }
}