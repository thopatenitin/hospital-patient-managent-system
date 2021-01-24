using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nuese_module_nursemodule : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["emp_name"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
      LinkButton2.Text = Session["emp_name"].ToString();
    }

    protected void LinkButton13_Click(object sender, EventArgs e)
    {

    }
    protected void new_pateint_click(object sender, EventArgs e)
    {
        Response.Redirect("~/New Patient.aspx");
    }
    protected void pateint_master_click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/pateint_master.aspx");
    }
public LinkButton username {
        get {
            return LinkButton4;
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

    protected void LinkButton14_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/opd_registration.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~nurse_module/out_pateint_enq.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/IPD/ipdreg.aspx");
    }

    protected void LinkButton46_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/nurse_module/bill_module/bill_master.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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
}
