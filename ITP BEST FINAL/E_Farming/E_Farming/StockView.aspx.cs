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
    public partial class WebForm31 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showData();
            }
        }

        protected void Eadd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Expired_Management(ItemCode,FarmerID,Category,ExpiredItemType,AddedAmount,Amount,UAmount,UsableAmount,Date)values(@ItemCode,@FarmerID,@Category,@ExpiredItemType,@AddedAmount,@Amount,@UAmount,@UsableAmount,@Date)", con);

                cmd.Parameters.AddWithValue("@ItemCode", EIcode.Text.Trim());
                cmd.Parameters.AddWithValue("@FarmerID", EFID.Text.Trim());
                cmd.Parameters.AddWithValue("@Category", Ecategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ExpiredItemType", Etype.Text.Trim());
                cmd.Parameters.AddWithValue("@AddedAmount", amount.Text.Trim());
                cmd.Parameters.AddWithValue("@Amount", Eamount.Text.Trim());
                cmd.Parameters.AddWithValue("@UAmount", EUamount.Text.Trim());
                cmd.Parameters.AddWithValue("@UsableAmount", usable.Text.Trim() + '%');
                cmd.Parameters.AddWithValue("@Date", txtdate.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            Response.Redirect("Expired.aspx");
            Response.Write("<script>alert('Successfully Added');</script>");
            clear();

        }




        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from AddStock", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DeleteRecord(int ID)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("delete from AddStock where ID=@ID", con);
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            
        }
        protected void remove_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow grow in GridView1.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");

                if (chkdel.Checked)
                {
                    int ID = Convert.ToInt32(grow.Cells[0].Text);
                    DeleteRecord(ID);
                    Response.Write("<script>alert('Successfully Deleted');</script>");
                }
            }
            showData();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;



            EIcode.Text = GridView1.Rows[rowind].Cells[1].Text;
            EFID.Text = GridView1.Rows[rowind].Cells[2].Text;
            Ecategory.Text = GridView1.Rows[rowind].Cells[3].Text;
            Etype.Text = GridView1.Rows[rowind].Cells[4].Text;
            amount.Text = GridView1.Rows[rowind].Cells[5].Text;
            txtdate.Text = GridView1.Rows[rowind].Cells[6].Text;

        }

        protected void calcUsable_Click(object sender, EventArgs e)
        {
            Substract();
            Persentage();

        }

        public void Persentage()
        {
            float a, b;



            bool isAValid = float.TryParse(amount.Text, out a); // First Text Box
            bool isBValid = float.TryParse(Eamount.Text, out b);// Second Text Box



            if (isAValid && isBValid)
                usable.Text = (((a - b) * 100) / a).ToString(); // Third Text Box

        }

        public void Substract()
        {
            float a, b;



            bool isAValid = float.TryParse(amount.Text, out a); // First Text Box
            bool isBValid = float.TryParse(Eamount.Text, out b);// Second Text Box



            if (isAValid && isBValid)
                EUamount.Text = (a - b).ToString(); // Third Text Box

        }

        void clear()
        {
            EIcode.Text = "";
            EFID.Text = "";
            Ecategory.Text = "";
            Etype.Text = "";
            amount.Text = "";
            Eamount.Text = "";
            EUamount.Text = "";
            usable.Text = "";
            txtdate.Text = "";
        }
    }
}