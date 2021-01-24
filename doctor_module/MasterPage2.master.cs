using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_name"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        LinkButton2.Text = Session["emp_name"].ToString();
        Session["emp_name1"] = Session["emp_name"];
        Label66.Text = Session["emp_name1"].ToString();
       Label63.Text = Session["pateint_code"].ToString();
        Label65.Text = Session["pateint_name"].ToString();

       // Label63.Text = Session["pateint_code"].ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
    protected void In_patient_Click(object sender, EventArgs e)
    {

    }

    protected void Out_Patient_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/genral_info.aspx");
    }




    protected void LinkButton41_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/genral_info.aspx");
    }

    protected void LinkButton39_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/diagnosis.aspx");
    }

    protected void LinkButton40_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/medication.aspx");
    }

    protected void LinkButton42_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/complain.aspx");
    }

    protected void LinkButton43_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/vitalsign.aspx");
    }

    protected void LinkButton44_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/discharge.aspx");
    }
    public Label labelo
    {
        get
        {
            return Label63;

        }
    }
         public Label labelo1
    {
        get
        {
            return Label65;

        }
    }
    public string LabelValue
    {
        get { return this.Label63.Text; }
        set { this.Label63.Text = value; }
    }


    protected void LinkButton45_Click(object sender, EventArgs e)
    {
        Session["emp_code"] = null;
        Session["opd_code"] = null;
        Session["emp_name"] = null;
        Session["pateint_code"] = null;
        Session["pateint_name"] = null;
        Response.Redirect("~/home.aspx");
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/investigation.aspx");
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/profile.aspx");
    }
}
