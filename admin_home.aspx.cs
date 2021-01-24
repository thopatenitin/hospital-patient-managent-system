using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/New Patient.aspx");
    }

    protected void LinkButton46_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/New Patient.aspxx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/pathology/pathology_home.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/nurse_module/pateint_master.aspx");
    }

    protected void LinkButton47_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/pateint_master.aspx");
    }
}