using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lecture1
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected static string connstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\6th_sem\\ASPNet\\Teaching1\\Lecture1\\App_Data\\Database1.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(connstr);
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Reset()
        {
            name.Text = "";
            semester.Text = "";
            branch.Text = "";
            password.Text = "";
            email.Text = "";
        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = $"insert into register (name,semester,branch,password,email) values ('{name.Text}','{semester.Text}','{branch.Text}','{password.Text}','{email.Text}')";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            Response.Write("Registered....");
            Reset();
            con.Close();
        }
    }
}