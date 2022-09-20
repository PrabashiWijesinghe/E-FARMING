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
    public partial class WebForm16 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            GridView1.DataBind();
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


                SqlCommand cmd = new SqlCommand("INSERT INTO FarmerPayments(PID,Fname,Payment,AcoNo,Paydate,Pending_status,AdminID)values (@PID,@Fname,@Payment,@AcoNo,@Paydate,@Pending_status,@AdminID)", con);
                cmd.Parameters.AddWithValue("@PID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Fname", TextBox2.Text.Trim());
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
        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select f.farmer_id,f.farmer_name,f.acc_number,d.unit_price,n.UAmount from farmer_reg_form f ,farmer_request_items d ,Expired_Management n where d.farmer_id =f.farmer_id and n.FarmerID =d.farmer_id and f.farmer_id ='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(1).ToString();
                    TextBox4.Text = dr.GetValue(2).ToString();

                    TextBox9.Text = dr.GetValue(3).ToString();
                    TextBox10.Text = dr.GetValue(4).ToString();

                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmerPayView.aspx");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentManage.aspx"); //paymentManage
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }








        public void AddPay()
        {
            float a, b;



            bool isAValid = float.TryParse(TextBox9.Text, out a); // First Text Box
            bool isBValid = float.TryParse(TextBox10.Text, out b);// Second Text Box



            if (isAValid && isBValid)
                TextBox3.Text = (a * b).ToString(); // Third Text Box




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AddPay();
        }

    }
}
