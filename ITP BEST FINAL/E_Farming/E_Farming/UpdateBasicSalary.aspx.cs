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
    public partial class WebForm49 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataBind();
        }

        //Go Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getDepartmentByID();
        }
        //update member
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkMemberExists())
            {
                updateBasicSalary();
            }
            else
            {
                Response.Write("<script>alert('Department Does not Exists');</script>");
            }
        }
        //Delete
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                deleteDepartment();
            }
            else
            {
                Response.Write("<script>alert('Department Does not Exists');</script>");
            }
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
                SqlCommand cmd = new SqlCommand("SELECT * from Member_Department_tbl where Code_No='" + TextBox11.Text.Trim() + "';", con);

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

        //user update function
        void getDepartmentByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Member_Department_tbl where Code_No='" + TextBox11.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox13.Text = dr.GetValue(1).ToString();
                        TextBox14.Text = dr.GetValue(2).ToString();
                        TextBox12.Text = dr.GetValue(3).ToString();

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
        //update
        void updateBasicSalary()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Member_Department_tbl SET Basic_Salary=@basic_salary  where Code_No='" + TextBox11.Text.Trim() + "'", con);




                cmd.Parameters.AddWithValue("@basic_salary", TextBox12.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Basic Salary Update Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //user Delete function

        void deleteDepartment()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from Member_Department_tbl  where Code_No='" + TextBox11.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' Deleted Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void A_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffManagement.aspx");
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