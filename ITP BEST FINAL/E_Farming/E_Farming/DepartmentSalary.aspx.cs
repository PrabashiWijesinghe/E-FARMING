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
    public partial class WebForm44 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //add 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Department Already Exists with this Code No, try other Code No');</script>");
            }
            else
            {
                addDepartment();

                Response.Redirect("UpdateBasicSalary.aspx");
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



        //user add function
        void addDepartment()
        {



            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Member_Department_tbl(Code_No,Department,Designation,Basic_Salary)values(@Code_No,@department,@designation,@basic_salary)", con);


                cmd.Parameters.AddWithValue("@Code_No", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@department", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@designation", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@basic_salary", TextBox12.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Department Added Successful');</script>");

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