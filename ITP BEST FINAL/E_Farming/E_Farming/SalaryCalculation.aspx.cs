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
    public partial class WebForm46 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            view();

        }
        //Go Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getDetailsByID();
        }
        //Add Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exists with this Employee ID, try other ID');</script>");
            }
            else
            {
                addsalmember();



            }

        }
        bool checkMemberExists()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Salary_Management_tbl where Employee_ID='" + TextBox1.Text.Trim() + "';", con);

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


        //Calculation button
        protected void Button2_Click(object sender, EventArgs e)
        {
            float a, b, c, d, t;
            bool isAValid = float.TryParse(Dsal.Text, out a); // First Text Box
            bool isBValid = float.TryParse(Esal.Text, out b);// Second Text Box
            bool isCValid = float.TryParse(Msal.Text, out c);// Third Text Box
            bool isDValid = float.TryParse(tax.Text, out d);// fourth Text Box
            bool isTValid = float.TryParse(sal.Text, out t);// Fifth Text Box
            if (isAValid && isBValid && isCValid && isDValid)
            {
                nsal.Text = ((a + b + c + t) - d).ToString();
            }
        }
        //Go Button
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "Yes")
            {
                tax.Text = 1000.ToString();
            }
            else
            {
                tax.Text = 0.ToString();
            }
        }

        //Update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateNetSalary();


        }
        //Delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            deleteMember();

        }

        //user define function



        void getDetailsByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Staff_management_tbl where Employee_ID='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(3).ToString();
                        TextBox4.Text = dr.GetValue(4).ToString();
                        TextBox9.Text = dr.GetValue(10).ToString();
                        sal.Text = dr.GetValue(5).ToString();
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
        //Admin add function
        void addsalmember()
        {



            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Salary_Management_tbl(Employee_Name,Employee_ID,Department,Designation,Basic_Salary,account_no,Date,Complain,Tax,Dearness_Allowance,Entertainment_Allowance,Medical_Allowance,Net_Salary)values(@emp_name,@emp_ID,@department,@designation,@basic_salary,@account_no,@Date,@complain,@tax,@DA,@EA,@MA,@netsal)", con);

                cmd.Parameters.AddWithValue("@emp_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@emp_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@department", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@basic_salary", sal.Text.Trim());
                cmd.Parameters.AddWithValue("@account_no", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@complain", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@tax", tax.Text.Trim());
                cmd.Parameters.AddWithValue("@DA", Dsal.Text.Trim());
                cmd.Parameters.AddWithValue("@EA", Esal.Text.Trim());
                cmd.Parameters.AddWithValue("@MA", Msal.Text.Trim());
                cmd.Parameters.AddWithValue("@netsal", nsal.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Salary Added Successful');</script>");
                GridView1.DataBind();
                view();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //Admin update salary
        void updateNetSalary()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Salary_Management_tbl SET  Complain=@complain,Date=@date,Dearness_Allowance=@DA,Entertainment_Allowance=@EA,Medical_Allowance=@MA,Net_Salary=@nsal,Department=@department,Designation=@designation,Basic_Salary=@basic_salary,Tax=@tax,account_no=@account_no where Employee_ID='" + TextBox1.Text.Trim() + "'", con);





                cmd.Parameters.AddWithValue("@department", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@basic_salary", sal.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@account_no", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@complain", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@tax", tax.Text.Trim());
                cmd.Parameters.AddWithValue("@DA", Dsal.Text.Trim());
                cmd.Parameters.AddWithValue("@EA", Esal.Text.Trim());
                cmd.Parameters.AddWithValue("@MA", Msal.Text.Trim());
                cmd.Parameters.AddWithValue("@nsal", nsal.Text.Trim());




                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' Salary Update Successfully');</script>");
                //GridView1.DataBind();
                view();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //Delete Netsal
        void deleteMember()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from Salary_Management_tbl  where Employee_ID='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Deleted Successfully');</script>");
                GridView1.DataBind();
                view();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //footer
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
        protected void view()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {



                    con.Open();



                    SqlDataAdapter cmd = new SqlDataAdapter("select * from Salary_Management_tbl", con);



                    cmd.Fill(dtbl);
                }



                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}