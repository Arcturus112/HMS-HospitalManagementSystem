﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_HospitalManagementSystem_.AdminPanel
{
    public partial class doctorsden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doc"] != null)
            {
                Label1.Text = "Welcome: " + Session["doc"].ToString();
            }
            else
            {

                Response.Redirect("doctorlogin.aspx");
            }
        }
    }
}