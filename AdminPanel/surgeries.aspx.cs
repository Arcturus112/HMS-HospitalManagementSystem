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
    public partial class surgeries : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                filldrop();
                pidddl.Items.Insert(0, "...Select...");
            }
        }
        void filldrop()
        {
            con.Open();
            string qry;
            qry = "select patientid from hospital_inpatient";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_inpatient");
            pidddl.DataSource = ds;
            pidddl.DataTextField = "patientid";
            pidddl.DataBind();

            con.Close();
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            sdtxt.Text = Calendar1.SelectedDate.ToShortDateString();
        }
        protected void pidddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_patientinfo";
            cmd.Connection = con;

            SqlParameter p = new SqlParameter("@pid", SqlDbType.Int);
            p.Value = pidddl.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            p1.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@age", SqlDbType.Int);
            p2.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@department", SqlDbType.VarChar, 20);
            p3.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p3);

            cmd.ExecuteReader();
            pntxt.Text = cmd.Parameters["@patientname"].Value.ToString();
            agtxt.Text = cmd.Parameters["@age"].Value.ToString();
            deptxt.Text = cmd.Parameters["@department"].Value.ToString();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_surgeryinfo";
            cmd.Connection = con;

            SqlParameter pd = new SqlParameter("@pid", SqlDbType.VarChar, 20);
            pd.Value = pidddl.SelectedItem.Text;
            cmd.Parameters.Add(pd);

            SqlParameter pname = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            pname.Value = pntxt.Text;
            cmd.Parameters.Add(pname);

            SqlParameter age = new SqlParameter("@age", SqlDbType.Int);
            age.Value = agtxt.Text;
            cmd.Parameters.Add(age);

            SqlParameter dep = new SqlParameter("@department", SqlDbType.VarChar, 20);
            dep.Value = deptxt.Text;
            cmd.Parameters.Add(dep);

            SqlParameter doct = new SqlParameter("@doctor", SqlDbType.VarChar, 20);
            doct.Value = doctxt.Text;
            cmd.Parameters.Add(doct);

            SqlParameter sdate = new SqlParameter("@surgerydate", SqlDbType.DateTime);
            sdate.Value = sdtxt.Text;
            cmd.Parameters.Add(sdate);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("receptionhome.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("receptionhome.aspx");
        }
    }
}