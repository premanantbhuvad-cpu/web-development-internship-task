using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication20
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["LoginDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Username", txtRegUser.Text);
                cmd.Parameters.AddWithValue("@Password", txtRegPass.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Write("<script>alert('Registration Successful!')</script>");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["LoginDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Username", txtLoginUser.Text);
                cmd.Parameters.AddWithValue("@Password", txtLoginPass.Text);

                con.Open();
                int count = (int)cmd.ExecuteScalar();
                con.Close();

                if (count > 0)
                {
                    Session["Username"] = txtLoginUser.Text;
                    Response.Write("<script>alert('Login Successful!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password')</script>");
                }
            }
        }

    }
}