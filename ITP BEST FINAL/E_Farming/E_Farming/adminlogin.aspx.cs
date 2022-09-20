using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace E_Farming
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        { 
        } 
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select username from admin_Table_1 where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (TextBox1.Text.ToString() == "STM0001" && TextBox2.Text.ToString() == "STM001")
                {
                    Response.Redirect("Total.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "ADM0003" && TextBox2.Text.ToString() == "ADM0003")
                {
                    Response.Redirect("StaffManagement.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "ITM0002" && TextBox2.Text.ToString() == "ITM0002")
                {
                    Response.Redirect("WelcomeAdminPB.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "DEL0004" && TextBox2.Text.ToString() == "DEL0004")
                {
                    Response.Redirect("viewDelivery.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "CUS0006" && TextBox2.Text.ToString() == "CUS0006")
                {
                    Response.Redirect("AdminManagement.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "PAY0005" && TextBox2.Text.ToString() == "PAY0005")
                {
                    Response.Redirect("PaymentManage.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else if (TextBox1.Text.ToString() == "FED0007" && TextBox2.Text.ToString() == "FED0007")
                {
                    Response.Redirect("Feedbackviwe.aspx");
                    Session["username"] = dr.GetValue(0).ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentails');</script>");
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}