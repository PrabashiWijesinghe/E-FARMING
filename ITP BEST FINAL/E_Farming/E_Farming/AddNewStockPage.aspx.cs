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
    public partial class WebForm33 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into AddStock(ItemCode,FarmerID,Category,ItemType,Amount,Date)values(@ItemCode,@FarmerID,@Category,@ItemType,@Amount,@Date)", con);
                cmd.Parameters.AddWithValue("@ItemCode", Icode.Text.Trim());
                cmd.Parameters.AddWithValue("@FarmerID", FID.Text.Trim());
                cmd.Parameters.AddWithValue("@Category", category.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ItemType", type.Text.Trim());
                cmd.Parameters.AddWithValue("@Amount", amount.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", txtSdate.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
               //Response.Redirect("StockView.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            

        }

        
    }
}