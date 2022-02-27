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
    public partial class dischargesummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                con.Open();
                string qry = "select patientid from hospital_outpatient";
                SqlDataAdapter da = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "hospital_outpatient");
                PID.DataSource = ds;
                PID.DataTextField = "patientid";
                PID.DataBind();
                con.Close();
                Calendar1.Visible = false;
                PID.Items.Insert(0, "...Select...");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }
        protected void PID_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand Cmd = new SqlCommand("select patientname,opdate from hospital_outpatient WHERE patientid ='" + PID.SelectedValue + "'", con);
            SqlDataReader dr = Cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
            }
            dr.Close();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_dischargesummary";
            cmd.Connection = con;

            SqlParameter p = new SqlParameter("@patientid", SqlDbType.Int);
            p.Value = PID.Text;
            cmd.Parameters.Add(p);
            SqlParameter p1 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            p1.Value = TextBox1.Text;
            cmd.Parameters.Add(p1);
            SqlParameter p2 = new SqlParameter("@joindate", SqlDbType.DateTime, 20);
            p2.Value = TextBox2.Text;
            cmd.Parameters.Add(p2);
            SqlParameter p3 = new SqlParameter("@dischargedate", SqlDbType.VarChar, 20);
            p3.Value = TextBox3.Text;
            cmd.Parameters.Add(p3);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            string qry = "select * from hospital_dischargesummary";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

    }
}