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
    public partial class WebForm32 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)

            {
                showData();

            }

        }



        protected void showData()
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand sqlcom = new SqlCommand("sum", con);
            sqlcom.CommandType = CommandType.StoredProcedure;
            con.Open();

            TotalGridView.DataSource = sqlcom.ExecuteReader();
            TotalGridView.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            TIcode.Text = TotalGridView.Rows[rowind].Cells[0].Text;
            TStock.Text = TotalGridView.Rows[rowind].Cells[1].Text;

        }

        protected void update_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Expired_Management SET UAmount=@UAmount WHERE ItemCode='" + TIcode.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@UAmount", present.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Updated');</script>");
                showData();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        protected void calc_Click(object sender, EventArgs e)
        {
            float a, b;



            bool isAValid = float.TryParse(TStock.Text, out a); // First Text Box
            bool isBValid = float.TryParse(sold.Text, out b);// Second Text Box



            if (isAValid && isBValid)
                present.Text = (a - b).ToString(); // Third Text Box
        }

        protected void addNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewStockPage.aspx");
        }
    }
}