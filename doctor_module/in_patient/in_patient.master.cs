using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctor_module_in_patient_in_patient : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label63.Text = Session["prn"].ToString();
        Label65.Text = Session["pateint_name"].ToString();
    }

    protected void LinkButton41_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/Genral_info.aspx");
    }

    protected void LinkButton39_Click(object sender, EventArgs e)
    {
Response.Redirect("~/doctor_module/in_patient/diagnosis.aspx");
    }

    protected void LinkButton40_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/medi.aspx");
    }

    protected void progress_note_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/progress_note.aspx");
    }

    protected void intale_output_record_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/intake_output.aspx");
    }

    protected void Nurse_progress_Note_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/nuese_progress.aspx");
    }

    protected void LinkButton43_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/vitalsign.aspx");
    }

    protected void ip_room_transfer_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/ip_room_transfer.aspx");
    }

    protected void Bed_side_procedure_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/bed_procedure.aspx");
    }

    protected void operation_theater_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/operation_theater.aspx");
    }

    protected void patient_history_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/patient_history.aspx");
    }

    protected void LinkButton44_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/discharge.aspx");
    }
    protected void in_patient(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/bed_procedure.aspx");
    }
    protected void out_patient(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/complain.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/investigation.aspx");

    }

    protected void LinkButton40_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/complain.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/doctor_module/in_patient/complain.aspx");
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/diagnosis.aspx");
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/medi.aspx");
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/investigation.aspx");
    }

    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/intake_output.aspx");
    }

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/vitalsign.aspx");
    }

    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/operation_theater.aspx");
    }

    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/patient_history.aspx");
    }

    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/doctor_module/in_patient/discharge.aspx");
    }
}
