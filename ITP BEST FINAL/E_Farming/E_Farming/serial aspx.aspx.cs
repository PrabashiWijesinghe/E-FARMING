﻿using System;
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
    public partial class WebForm29 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user"))
                {



                    LinkButton3.Visible = true; // logout link button

                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                }

                else if (Session["role"].Equals("farmer"))

                {



                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["farmer_id"].ToString();


                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            txtIname.Text = EGridView1.Rows[rowind].Cells[1].Text;
            txtPrice.Text = EGridView1.Rows[rowind].Cells[2].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart aspx.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into cart_management(itemName,CustID,price)values(@itemName,@CustID,@price)", con);
                cmd.Parameters.AddWithValue("@itemName", txtIname.Text.Trim() + '-' + txtQuentity.Text.Trim());
                cmd.Parameters.AddWithValue("@CustID", Session["username"]);
                cmd.Parameters.AddWithValue("@price", txtTotal.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            clear();
        }

        public void Multiply()
        {
            float a, b;

            bool isAValid = float.TryParse(txtQuentity.Text, out a); // First Text Box
            bool isBValid = float.TryParse(txtPrice.Text, out b);// Second Text Box

            if (isAValid && isBValid)
                txtTotal.Text = ((a * b) / 100).ToString(); // Third Text Box



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Multiply();
        }

        void clear()
        {
            txtIname.Text = "";
            txtQuentity.Text = "";
            txtPrice.Text = "";
            txtTotal.Text = "";
        }

        protected void btncat_Click(object sender, EventArgs e)
        {
            Response.Redirect("catagories aspx.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage aspx.aspx");
        }
        /*protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("FarmHome.aspx");
		}*/

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";




            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            Response.Redirect("FarmHome.aspx");


        }
    }

}
