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
    public partial class outpatient : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataReader dr;
        string dt = DateTime.Now.ToShortDateString();
        protected void Page_Load(object sender, EventArgs e)
        {
            optxt.Text = dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_outpatient";
            cmd.Connection = con;

            SqlParameter p = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            p.Value = pntxt.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@gender", SqlDbType.VarChar, 20);
            p1.Value = gddl.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@age", SqlDbType.Int);
            p2.Value = agetxt.Text;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@address", SqlDbType.VarChar, 20);
            p3.Value = addtxt.Text;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter("@assigndoctor", SqlDbType.VarChar, 20);
            p4.Value = doctorddl.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@phoneres", SqlDbType.BigInt);
            p5.Value = restxt.Text;
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@phonemob", SqlDbType.BigInt);
            p6.Value = mobtxt.Text;
            cmd.Parameters.Add(p6);

            SqlParameter p7 = new SqlParameter("@opdate", SqlDbType.DateTime);
            p7.Value = optxt.Text;
            cmd.Parameters.Add(p7);

            SqlParameter p8 = new SqlParameter("@department", SqlDbType.VarChar, 20);
            p8.Value = depddl.Text;
            cmd.Parameters.Add(p8);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("outpatient.aspx");
        }
    }
}