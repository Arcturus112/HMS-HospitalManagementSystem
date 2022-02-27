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
    public partial class viewappointments : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                filldrop();
                doctorddl.Items.Insert(0, "...Select...");
            }
        }

        void filldrop()
        {
            con.Open();
            string qry = "select name from hospital_doctorsignup";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_doctorsignup");
            doctorddl.DataSource = ds;
            doctorddl.DataTextField = "name";
            doctorddl.DataBind();
            con.Close();

        }

        protected void doctorddl_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void appbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            //string str = doctorddl.SelectedItem.ToString();
            string qry = "select * from hospital_patientinfo where doctor='" + doctorddl.SelectedValue + "' ";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        protected void backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorsden.aspx");
        }

    }
}