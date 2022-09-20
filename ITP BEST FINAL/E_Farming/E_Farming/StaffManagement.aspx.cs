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
    public partial class WebForm47 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exists with this Employee ID, try other ID');</script>");
            }
            else
            {
                addmember();

                // Response.Redirect("DeleteMember.aspx");
                
            }


        }
        //Go button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getDepartmentByID();

        }



        //User defined method


        bool checkMemberExists()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Staff_management_tbl where Employee_ID='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        void getDepartmentByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Member_Department_tbl where Code_No='" + TextBox4.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox13.Text = dr.GetValue(1).ToString();
                        TextBox14.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(3).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //user add function
        void addmember()
        {



            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Staff_management_tbl(Employee_Name,Employee_ID,Code_No,Department,Designation,Basic_Salary,contact_no,email,dob,account_no,address,Password1)values(@emp_name,@emp_ID,@Code_No,@department,@designation,@basic_salary,@Contact_no,@email,@dob,@account_no,@full_address,@pwd1)", con);

                cmd.Parameters.AddWithValue("@emp_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@emp_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Code_No", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@department", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@basic_salary", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@account_no", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@pwd1", TextBox11.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Added Successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void A_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteMember.aspx");
        }

        protected void B_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalaryCalculation.aspx");
        }

        protected void C_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBasicSalary.aspx");
        }

        protected void D_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentSalary.aspx");
        }
    }
}