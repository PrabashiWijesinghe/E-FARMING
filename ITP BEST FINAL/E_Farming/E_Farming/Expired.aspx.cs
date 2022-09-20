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
    public partial class WebForm34 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EshowData();
            }
        }





        protected void tot_Click(object sender, EventArgs e)
        {
            Response.Redirect("Total.aspx");
        }
        protected void EshowData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from Expired_Management", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            EGridView1.DataSource = dt;
            EGridView1.DataBind();
        }

        protected void EDeleteRecord(int EID)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("delete from Expired_Management where EID=@EID", con);
            com.Parameters.AddWithValue("@EID", EID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void Eremove_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow grow in EGridView1.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("EchkDel");

                if (chkdel.Checked)
                {
                    int EID = Convert.ToInt32(grow.Cells[0].Text);
                    EDeleteRecord(EID);
                }
            }
            EshowData();
        }
    }
}