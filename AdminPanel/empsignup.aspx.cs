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
    public partial class empsignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_empsignup";
            cmd.Connection = con;

            SqlParameter p = new SqlParameter("@name", SqlDbType.VarChar, 20);
            p.Value = nametxt.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@loginid", SqlDbType.VarChar, 20);
            p1.Value = lidtxt.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@password", SqlDbType.VarChar, 20);
            p2.Value = pwdtxt.Text;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@department", SqlDbType.VarChar, 20);
            p3.Value = depddl.Text;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter("@phonenumber", SqlDbType.BigInt);
            p4.Value = phtxt.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@address", SqlDbType.VarChar, 20);
            p5.Value = addtxt.Text;
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@email", SqlDbType.VarChar, 20);
            p6.Value = emtxt.Text;
            cmd.Parameters.Add(p6);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emplogin.aspx");
        }
        protected void Resbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("empsignup.aspx");
        }
        protected void canbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("emplogin.aspx");
        }
    }
}