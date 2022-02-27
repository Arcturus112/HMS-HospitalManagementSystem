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
    public partial class patientinfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (type.SelectedItem.Value == "In-Patient")
            {
                SqlDataAdapter Da = new SqlDataAdapter("select * from hospital_inpatient where patientid=" + TextBox1.Text + "", con);
                //SqlCommandBuilder Cmd = new SqlCommandBuilder(Da);
                DataSet Ds = new DataSet();
                Da.Fill(Ds, "hospital_inpatient");
                GridView1.DataSource = Ds.Tables[0];
                GridView1.DataBind();
            }
            else
            {
                SqlDataAdapter Da = new SqlDataAdapter("select * from hospital_outpatient where patientid=" + TextBox1.Text + "", con);
                //SqlCommandBuilder Cmd = new SqlCommandBuilder(Da);
                DataSet Ds1 = new DataSet();
                Da.Fill(Ds1, "hospital_outpatient");
                GridView1.DataSource = Ds1.Tables[0];
                GridView1.DataBind();
            }


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorsden.aspx");
        }
    }
}