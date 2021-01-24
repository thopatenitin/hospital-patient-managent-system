using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_pathology : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // LinkButton2.Text = Session["emp_name"].ToString();
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
        Response.Redirect("~/pathology/profile.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if (Session["back"] == null)
        {
            Response.Redirect("~/pathology/pathology_home.aspx");
        }
        else
        {
            Session["back"] = null;
            Response.Redirect("~/nurse_module/ext_investigation.aspx");
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pathology/pathology_ipd_home.aspx");

    }

    protected void LinkButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pathology/pathology_home.aspx");
    }
}
