using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using presentation;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class doctor_module_medication : System.Web.UI.Page
{
    clsbusslayer objb = new clsbusslayer();
    presentationlayer objp = new presentationlayer();
   
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if(Session["pateint_code"] == null)
        {
            if (Session["opd_code"] == null)
            {
                Response.Redirect("~/doctor_module/doctor.aspx");
            }
        }
       if(!Page.IsPostBack)            BindData();
       
        //Session["emp_code"] = "PBH201710181";
        // Session["opd_code"] = "OPD20171";
        //Session["pateint_code"] = "20171";
    }

    private void BindData()
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getmedication_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>category</th><th>drug</th><th>dose</th><th>route</th><th>Timing</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["category"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["drug"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["dose"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["route"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["timea"] + "------" + ds.Tables[0].Rows[i]["timeb"] + "------" + ds.Tables[0].Rows[i]["timec"] + "------- " + ds.Tables[0].Rows[i]["timed"] + " </td>");
                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        objp.inserted_by = Session["emp_code"].ToString();
        objp.pateint_code = Session["pateint_code"].ToString();
        objp.category = TextBox21.Text;
            objp.drug_name= TextBox22.Text;
        objp.dose= TextBox14.Text;
        objp.route= TextBox23.Text;
        objp.frequency=TextBox24.Text;
        if (TextBox25.Text==null)
        { objp.timea = "0"; }
        else { objp.timea = TextBox25.Text; }
        if (TextBox26.Text == null)
        { objp.timeb = "0"; }
        else { objp.timeb = TextBox26.Text; }

        if (TextBox27.Text == null)
        { objp.timec = "0"; }
        else { objp.timec = TextBox27.Text; }

        if (TextBox27.Text == null)
        { objp.timed = "0"; }
        else { objp.timed = TextBox28.Text; }
        objp.opd_code = Session["opd_code"].ToString();
        objb.add_opd_medication(objp);
        BindData();
    }
}