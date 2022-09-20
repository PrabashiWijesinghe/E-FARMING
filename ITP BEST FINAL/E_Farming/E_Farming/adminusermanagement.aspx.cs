using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
	public partial class WebForm10 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		/*private string Encrypt(string clearText)
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

		protected void Button4_Click(object sender, EventArgs e)
		{
			if (checkMemberExists())
			{
				Response.Write("<script>alert('Member already Exists with this Member ID,try other ID');</script>");
			}
			else
			{
				userinNewuser();
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
				SqlCommand cmd = new SqlCommand("SELECT* from Userdetails_Table_2 where user_id ='" + TextBox11.Text.Trim() + "';", con);
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


				con.Close();
				Response.Write("<script>alert('User in  Successful.Go to Login page  to Login');</script>");
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				return false;
			}


		}
		void userinNewuser()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}


				SqlCommand cmd = new SqlCommand("insert into Userdetails_Table_2(user_id,password,name,type) values(@user_id,@password,@name,@type)", con);

				cmd.Parameters.AddWithValue("@user_id", TextBox11.Text.Trim());
				cmd.Parameters.AddWithValue("@password", (TextBox12.Text.Trim()));
				cmd.Parameters.AddWithValue("@name", TextBox13.Text.Trim());
				cmd.Parameters.AddWithValue("@type", DropDownList2.SelectedItem.Value);

				cmd.ExecuteNonQuery();

				con.Close();
				Response.Write("<script>alert('User in successfull.go to login page to login');</script>");



			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}

		}
	}
}