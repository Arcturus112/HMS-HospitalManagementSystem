using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_HospitalManagementSystem_.Content
{
    public partial class HMSMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();

            Session.Clear();
            Response.Redirect("home.aspx");
        }
    }
}