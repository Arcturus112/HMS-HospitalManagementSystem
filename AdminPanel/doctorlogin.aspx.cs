using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_HospitalManagementSystem_.AdminPanel
{
    public partial class doctorlogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlDataReader dr;
            con.Open();
            string qry;
            qry = "select * from hospital_doctorsignup where loginid='" + lidtxt.Text + "' and password='" + pwdtxt.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["doc"] = lidtxt.Text;
                Response.Redirect("doctorsden.aspx");
            }
            else
            {
                pwdlb.Text = "Enter valid UserName/Password";
            }
        }
    }
}