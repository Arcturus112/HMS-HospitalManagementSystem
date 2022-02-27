using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_HospitalManagementSystem_.AdminPanel
{
    public partial class doctorforgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void pwdbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            Panel1.Visible = true;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_doctorforgot";
            cmd.Connection = con;

            SqlParameter p = new SqlParameter("@loginid", SqlDbType.VarChar, 20);
            p.Value = lidtxt.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@password", SqlDbType.VarChar, 20);
            p1.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p1);

            cmd.ExecuteReader();
            pwdtxt.Text = cmd.Parameters["@password"].Value.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorlogin.aspx");
        }
    }
}