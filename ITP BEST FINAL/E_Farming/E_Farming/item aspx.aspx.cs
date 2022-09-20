using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace E_Farming
{
    public partial class WebForm27 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void EGridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void EGridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void BtnviewItem_Click(object sender, EventArgs e)
        {
            
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE item_management SET price=@price WHERE code='" + txtItemCode.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@price", txtPrice.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Updated');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            Response.Redirect(Request.RawUrl);


        }

        void clear()
        {
            txtItemCode.Text = "";
            txtItemName.Text = "";

            txtPrice.Text = "";
        }
        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("addItem aspx.aspx");
        }

        protected void BtnDelete_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM item_management WHERE code='" + txtItemCode.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Deleted Successfully');</script>");

                EGridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            clear();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            txtItemCode.Text = EGridView1.Rows[rowind].Cells[2].Text;
            txtItemName.Text = EGridView1.Rows[rowind].Cells[1].Text;
            Catagories.Text = EGridView1.Rows[rowind].Cells[3].Text;




        }

        protected void Orders_Click(object sender, EventArgs e)
        {
            Response.Redirect("order_view aspx.aspx");
        }
    }
}