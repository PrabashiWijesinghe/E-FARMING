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
    public partial class WebForm28 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                showData();
            }

        }
        public void DeleteRecord(int ID)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("delete from order_management where ID=@ID", con);
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from order_management order by ID DESC", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            EGridView1.DataSource = dt;
            EGridView1.DataBind();

        }
        protected void remove_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow grow in EGridView1.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");

                if (chkdel.Checked)
                {
                    int ID = Convert.ToInt32(grow.Cells[0].Text);
                    DeleteRecord(ID);
                }
            }
            showData();
        }
        
    }
}