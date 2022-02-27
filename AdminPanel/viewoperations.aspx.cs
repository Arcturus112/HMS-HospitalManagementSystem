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
    public partial class viewoperations : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
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
            cn.Open();
            string qry = "select name from hospital_doctorsignup";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_doctorsignup");
            doctorddl.DataSource = ds;
            doctorddl.DataTextField = "name";
            doctorddl.DataBind();
            cn.Close();

        }
        protected void appbtn_Click(object sender, EventArgs e)
        {
            cn.Open();
            //string str = doctorddl.SelectedItem.ToString();
            string qry = "select * from hospital_operation where refdoctor='" + doctorddl.SelectedValue + "' ";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cn.Close();
        }
        protected void backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorsden.aspx");
        }
    }
}