using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Spare_Parts_Shop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Visible = false;
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=.;database=Spare Parts;integrated security = true;";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("splogin", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("EmailID", TextBox1.Text);
            SqlParameter sp2 = new SqlParameter("Password", TextBox2.Text);

            com.Parameters.Add(sp1);
            com.Parameters.Add(sp2);

            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblmsg.Text = "Login successful.";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Invalid username or password.";
                lblmsg.Visible = true;
            }
        }
    }
}