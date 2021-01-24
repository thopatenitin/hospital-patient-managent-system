using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using BLL;
using System.Configuration;
public partial class doctor_module_in_patient_medi : System.Web.UI.Page
{
    clsbusslayer objb = new clsbusslayer();
    IPDDataContext rt = new IPDDataContext();
    palm_ipd_medication pim = new palm_ipd_medication();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //pim.category = TextBox21.Text;
        pim.drug = TextBox21.Text;
        //pim.dose = TextBox14.Text;
        //pim.route = TextBox23.Text;
        pim.frequency = text0.Text;
        pim.inserted_by = Session["emp_code"].ToString();
        pim.inserted_on = DateTime.Now.ToString();
        pim.prn = Session["prn"].ToString();
        pim.patient_code = Session["pateint_code"].ToString();
        if (TextBox25.Text == "")
        { pim.timea = 0; }
        else { pim.timea =Convert.ToInt32( TextBox25.Text); }
        if (TextBox66.Text == "")
        { pim.timeb = 0; }
        else { pim.timeb = Convert.ToInt32(TextBox66.Text); }

        if (text66.Text == "")
        { pim.timec =0; }
        else {pim.timec =Convert.ToInt32( text66.Text); }

        if (text6.Text == "")
        { pim.timed = 0; }
        else { pim.timed = Convert.ToInt32(text6.Text); }
        rt.palm_ipd_medications.InsertOnSubmit(pim);
        rt.SubmitChanges();
        GridView1.DataBind();
    }
    private void BindData()
    {
      
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getmedication_byprncode(Session["prn"].ToString(),TextBox21.Text);

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>NO.</th><th>NAME</th><th>DOSE</th><th>ROUTE</th><th>FREQUENCY</th><th>TIME</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + i+1 + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["category"]+"." + ds.Tables[0].Rows[i]["drug"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["dose"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["route"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["frequency"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["timea"] + "------" + ds.Tables[0].Rows[i]["timeb"] + "------" + ds.Tables[0].Rows[i]["timec"] + "------- " + ds.Tables[0].Rows[i]["timed"] + " </td>");
                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("</table>");
                
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }

    }

    protected void TextBox29_TextChanged(object sender, EventArgs e)
    {
        Session["date"] = TextBox21.Text + " 00:00:00";
        GridView1.DataBind();
    }


    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        palm_ipd_medication pid = new palm_ipd_medication();
        pid.inserted_on = TextBox29.Text;
        pid.drug = TextBox21.Text;
        pid.route = TextBox23.Text;
        pid.frequency = text0.Text;
             pid.inserted_by = Session["emp_code"].ToString();
        //pc.inserted_on = DateTime.Today.ToString();
        pid.patient_code = Session["pateint_code"].ToString();
        pid.prn = Session["prn"].ToString();
        //.drug = TextBox21.Text;
        //pc.days = Convert.ToInt16(text0.Text);
        if (TextBox25.Text == "")
        { pid.timea = 0; }
        else { pid.timea = Convert.ToInt16(TextBox25.Text); }

        if (TextBox66.Text == "")
        { pid.timeb = 0; }
        else { pid.timeb = Convert.ToInt16(TextBox66.Text); }

        if (text66.Text == "")
        { pid.timec = 0; }
        else { pid.timec = Convert.ToInt16(text66.Text); }

        if (text6.Text == "")
        { pid.timed = 0; }
        else { pid.timed = Convert.ToInt16(text6.Text); }
        rt.palm_ipd_medications.InsertOnSubmit(pid);
        rt.SubmitChanges();
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["palmConnectionString"].ConnectionString);
        con.Open(); SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from palm_ipd_medication where medication_id='" + GridView1.SelectedRow.Cells[0].ToString() + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        GridView1.DataBind();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {/*
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["palmConnectionString"].ConnectionString);
        con.Open(); SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from palm_ipd_medication where medication_id='"+GridView1.SelectedRow.Cells[0]+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        GridView1.DataBind();*/
    }
}