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
    public partial class WebForm48 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("memberlogin.aspx");
                }
                else
                {

                    if (!Page.IsPostBack)
                    {

                        getMemberPersonalDetails();
                        getUserSalData();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("memberlogin.aspx");
            }

        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("memberlogin.aspx");
            }
            else
            {
                updatePersonalMember();
                updateSal();
                getUserSalData();

            }
        }
        //User defined method



        //getSalData
        void getUserSalData()
        {
            /* try
             {
                 SqlConnection con = new SqlConnection(strcon);
                 if (con.State == ConnectionState.Closed)
                 {
                     con.Open();
                 }

                 SqlCommand cmd = new SqlCommand("SELECT * from Salary_Management_tbl where Employee_ID='" + Session["username"].ToString() + "'", con);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 DataTable dt = new DataTable();
                 da.Fill(dt);


                 GridView1.DataBind();

             }
             catch (Exception ex)
             {
                 Response.Write("<script>alert('" + ex.Message + "');</script>");

             }*/
            try
            {




                SqlConnection con = new SqlConnection(strcon);
                SqlCommand sqlcomm = new SqlCommand("selectsal", con);
                sqlcomm.CommandType = CommandType.StoredProcedure;
                sqlcomm.Parameters.AddWithValue("@ID", Session["username"]);
                con.Open();
                GridView1.DataSource = sqlcomm.ExecuteReader();
                GridView1.DataBind();



                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //userPersonalDetails
        void getMemberPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Staff_management_tbl where Employee_ID='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["Employee_ID"].ToString();
                TextBox2.Text = dt.Rows[0]["Employee_Name"].ToString();
                TextBox12.Text = dt.Rows[0]["Department"].ToString();
                TextBox3.Text = dt.Rows[0]["Designation"].ToString();
                TextBox16.Text = dt.Rows[0]["Basic_Salary"].ToString();
                TextBox6.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox7.Text = dt.Rows[0]["email"].ToString();
                TextBox8.Text = dt.Rows[0]["dob"].ToString();
                TextBox10.Text = dt.Rows[0]["account_no"].ToString();
                TextBox9.Text = dt.Rows[0]["address"].ToString();
                TextBox11.Text = dt.Rows[0]["Password1"].ToString();


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        //user update function
        void updatePersonalMember()
        {
            string Password1 = "";
            if (TextBox5.Text.Trim() == "")
            {
                Password1 = TextBox11.Text.Trim();//old pw
            }
            else
            {
                Password1 = TextBox5.Text.Trim();//new pw
            }

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Staff_management_tbl SET Employee_Name=@emp_name,contact_no=@contact_no,email=@email,dob=@dob,account_no=@account_no,address=@full_address,Password1=@pwd1  where Employee_ID='" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@emp_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@account_no", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@pwd1", (Password1));




                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Update Successfully');</script>");
                    getMemberPersonalDetails();
                    getUserSalData();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //updatesal
        void updateSal()
        {
            /* string Password1 = "";
             if (TextBox5.Text.Trim() == "")
             {
                 Password1 = TextBox11.Text.Trim();//old pw
             }
             else
             {
                 Password1 = TextBox5.Text.Trim();//new pw
             }*/

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Salary_Management_tbl SET Employee_Name=@emp_name  where Employee_ID='" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@emp_name", TextBox2.Text.Trim());





                int result = cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("FarmHome.aspx");
           
        }
    }
}