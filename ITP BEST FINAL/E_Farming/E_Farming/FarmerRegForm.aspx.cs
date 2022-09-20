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
    public partial class WebForm38 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into farmer_reg_form(farmer_name,farmer_dateofbirth,contact_num,email,nic,province,city,acc_number,address,farmer_id,password,confirm_password)values(@farmer_name,@farmer_dateofbirth,@contact_num,@email,@nic,@province,@city,@acc_number,@address,@farmer_id,@password,@confirm_password)", con);
                cmd.Parameters.AddWithValue("@farmer_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@farmer_dateofbirth", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_num", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@nic", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@province", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@acc_number", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@farmer_id", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@confirm_password", TextBox11.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            clear();

            Response.Redirect("adminusermanagement.aspx");

        }

        void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox6.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }

        protected void btnGen_Click(object sender, EventArgs e)
        {
            IDgen();
        }

        public void IDgen()
        {
            char digit = 'F';
            String num = "123456789";
            int len = num.Length;
            String otp = String.Empty;
            int otpdigit = 5;
            String finaldigit;



            int getindex;



            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();
                }
                while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }



            TextBox6.Text = (digit + otp);



        }

    }
}