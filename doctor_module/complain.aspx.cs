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

public partial class doctor_module_complain : System.Web.UI.Page
{
    presentationlayer pl = new presentationlayer();
    clsbusslayer objb = new clsbusslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (Session["pateint_code"] == null)
        {
            if (Session["opd_code"] == null)
            {
                Response.Redirect("~/doctor_module/doctor.aspx");
            }
        }
        if(!Page.IsPostBack)
        BindData();
      

        // Session["emp_code"] = "PBH201710181";
        // Session["opd_code"] = "OPD20171";
        //  Session["pateint_code"] = "20171";
    }

   
    private void BindData()
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getcomplain_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>Complain</th><th>Remark</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["complain"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["remark"] + "</td>");
                    
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
        pl.inserted_by = Session["emp_code"].ToString();
        pl.complain= TextBox1.Text;
        pl.remark = TextBox2.Text;
        pl.pateint_code = Session["pateint_code"].ToString();
        pl.opd_code = Session["opd_code"].ToString();
        objb.add_opd_complain(pl);
        BindData();
    }
}