using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm6 : System.Web.UI.Page
    {
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		/*private string Decrypt(string clearText)
		{
			string EncryptionKey = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
			byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
			using (Aes encryptor = Aes.Create())
			{
				Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
				encryptor.Key = pdb.GetBytes(32);
				encryptor.IV = pdb.GetBytes(16);
				using (MemoryStream ms = new MemoryStream())
				{
					using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
					{
						cs.Write(clearBytes, 0, clearBytes.Length);
						cs.Close();
					}
					clearText = Convert.ToBase64String(ms.ToArray());
				}
			}
			return clearText;
		}*/

		protected void Button3_Click(object sender, EventArgs e)
		{

			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == System.Data.ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("select * from Userdetails_Table_2 where user_id='" + TextBox1.Text.Trim() + "' AND password = '" + (TextBox2.Text.Trim()) + "'", con);
				SqlDataReader dr = cmd.ExecuteReader();
				if (dr.HasRows)
				{
					while (dr.Read())
					{
						Response.Write("<script>alert('Login Successful');</script>");
						Session["username"] = dr.GetValue(0).ToString();
						Session["fullname"] = dr.GetValue(2).ToString();
						Session["role"] = "user";
					}
					Response.Redirect("homepage aspx.aspx");
				}
				else
				{
					Response.Write("<script>alert('Invalid credentails');</script>");
				}
			}
			catch (Exception ex)
			{

			}
			//Response.Write("<script>alert('Sign up Successful.Go to User Login to Login');</script>");
		}
	}
}