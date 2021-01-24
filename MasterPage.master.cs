using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //   user_name.Text = Session["emp_name"].ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("New Patient.aspx");
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("OPD.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("outpatientenquiry.aspx");


    }
    protected void Out_Patient_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/out_patient.aspx");

    }
    protected void In_patient_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/doctor_module/in_patient/in_patient.aspx");
    }



    protected void LinkButton39_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/genral_info.aspx");
    }
    public Label usernameo
    {
        get{
            return this.user_name;
        }
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/New Patient.aspx");
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/pateint_master.aspx");
    }

    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/opd_registration.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton26_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user management/userregistration.aspx");
    }

    protected void LinkButton40_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/bill_module/bill_master.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/admit_pateint.aspx");
    }
}
