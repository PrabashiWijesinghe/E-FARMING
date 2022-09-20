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
    public partial class WebForm19 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        //user define function

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select * from Salary_Management_tbl where Employee_ID ='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(1).ToString();
                    TextBox3.Text = dr.GetValue(12).ToString();
                    TextBox4.Text = dr.GetValue(4).ToString();
                    TextBox6.Text = dr.GetValue(6).ToString();

                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


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


                SqlCommand cmd = new SqlCommand("INSERT INTO StaffPayments(PID,Ename,Payment,AcoNo,Paydate,Pending_status,AdminID)values (@PID,@Ename,@Payment,@AcoNo,@Paydate,@Pending_status,@AdminID)", con);
                cmd.Parameters.AddWithValue("@PID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Ename", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Payment", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@AcoNo", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Paydate", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Pending_status", "Pending");
                cmd.Parameters.AddWithValue("@AdminID", TextBox8.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentManage.aspx"); //PaymentManage.aspx
        }

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffPayView.aspx");
        }
    }
}