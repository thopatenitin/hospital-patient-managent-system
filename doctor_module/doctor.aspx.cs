using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class doctor_module_doctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
      Label6.Text = Session["emp_name"].ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pateint_code"]= GridView1.SelectedRow.Cells[0].Text;
        Session["opd_code"] = GridView1.SelectedRow.Cells[1].Text;
        Session["pateint_name"] =GridView1.SelectedRow.Cells[3].Text;
        Response.Redirect("~/doctor_module/Genral_info.aspx");

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

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }



    protected void LinkButton46_Click(object sender, EventArgs e)
    {
      //  Response.Redirect("~/doctor_module/profile.aspx");
    }

 /*   protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pateint_code"] = GridView3.SelectedRow.Cells[6].Text;
        Session["prn"] = GridView3.SelectedRow.Cells[0].Text;
        Session["pateint_name"] = GridView3.SelectedRow.Cells[1].Text+" "+ GridView3.SelectedRow.Cells[2].Text+" "+ GridView3.SelectedRow.Cells[3].Text;
        Response.Redirect("~/doctor_module/in_pateint/Genral_info.aspx");
    }
    */
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pateint_code"] = GridView2.SelectedRow.Cells[6].Text;
        Session["prn"] = GridView2.SelectedRow.Cells[0].Text;
        Session["pateint_name"] = GridView2.SelectedRow.Cells[1].Text + " " + GridView2.SelectedRow.Cells[2].Text + " " + GridView2.SelectedRow.Cells[3].Text;
        Response.Redirect("~/doctor_module/in_patient/genr_info.aspx");
    }
}