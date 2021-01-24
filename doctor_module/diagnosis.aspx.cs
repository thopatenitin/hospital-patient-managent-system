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

public partial class doctor_module_diagnosis : System.Web.UI.Page
{
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
        if (!Page.IsPostBack)
        {
            BindData();
            BindData1();
        }
        // Session["emp_code"] = "PBH201710181";
        // Session["opd_code"] = "OPD20171";
        //Session["pateint_code"] = "20171";
    }

    private void BindData1()
    {
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getfinal_diagnosis_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>Final Diagnosis</th><th>Remark</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["final_diagnosis"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["final_remark"] + "</td>");
                   
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

    private void BindData()
    {

        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getdiagnosis_provisional_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>Provisional Diagnosis</th><th>Remark</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["pro_diagnosis"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["pro_remark"] + "</td>");
                 
                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("</table>");
                PlaceHolder2.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }

    }

    clsbusslayer objb = new clsbusslayer();
    presentationlayer objp = new presentationlayer();

    protected void Button7_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds=objb.getdiagnosis_byopdcode(Session["opd_code"].ToString());
        DataClassesDataContext rt = new DataClassesDataContext();
        palm_opd_diagnosis_master pom = new palm_opd_diagnosis_master();

        if (ds.Tables[0].Rows.Count == 0) 
        {
            pom.pateint_code = Session["pateint_code"].ToString();
            pom.opd_code = Session["opd_code"].ToString();
            pom.inserted_by = Session["emp_code"].ToString();
            pom.inserted_on = DateTime.Now;
            rt.palm_opd_diagnosis_masters.InsertOnSubmit(pom);
            rt.SubmitChanges();
            palm_opd_provisional_diagnosi pod = new palm_opd_provisional_diagnosi();
            pom = rt.palm_opd_diagnosis_masters.Single(palm_opd_diagnosis_master => palm_opd_diagnosis_master.opd_code == Session["opd_code"].ToString());
            pod.master_id = pom.opd_diagnosis_master_id;
            pod.opd_code = pom.opd_code;
            pod.pro_diagnosis = TextBox4.Text;
            pod.pro_remark = TextBox5.Text;
            rt.palm_opd_provisional_diagnosis.InsertOnSubmit(pod);
            rt.SubmitChanges();
        }
        else
        {
            palm_opd_provisional_diagnosi pod = new palm_opd_provisional_diagnosi();
            pom = rt.palm_opd_diagnosis_masters.Single(palm_opd_diagnosis_master => palm_opd_diagnosis_master.opd_code == Session["opd_code"].ToString());
            pod.master_id = pom.opd_diagnosis_master_id;
            pod.opd_code = pom.opd_code;
            pod.pro_diagnosis = TextBox4.Text;
            pod.pro_remark = TextBox5.Text;
            rt.palm_opd_provisional_diagnosis.InsertOnSubmit(pod);
            rt.SubmitChanges();
        }
        BindData();


    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = objb.getdiagnosis_byopdcode(Session["opd_code"].ToString());
        DataClassesDataContext rt = new DataClassesDataContext();
        palm_opd_diagnosis_master pom = new palm_opd_diagnosis_master();

        if (ds.Tables[0].Rows.Count == 0)
        {
            pom.pateint_code = Session["pateint_code"].ToString();
            pom.opd_code = Session["opd_code"].ToString();
            pom.inserted_by = Session["emp_code"].ToString();
            pom.inserted_on = DateTime.Now;
            rt.palm_opd_diagnosis_masters.InsertOnSubmit(pom);
            rt.SubmitChanges();
            palm_opd_final_diagnosi pod = new palm_opd_final_diagnosi();
            pom = rt.palm_opd_diagnosis_masters.Single(palm_opd_diagnosis_master => palm_opd_diagnosis_master.opd_code == Session["opd_code"].ToString());
            pod.master_id = pom.opd_diagnosis_master_id;
            pod.opd_code = pom.opd_code;
            pod.Final_diagnosis = TextBox6.Text;
            pod.final_remark = TextBox9.Text;
            rt.palm_opd_final_diagnosis.InsertOnSubmit(pod);
            rt.SubmitChanges();
        }
        else
        {
            palm_opd_final_diagnosi pod = new palm_opd_final_diagnosi();
            pom = rt.palm_opd_diagnosis_masters.Single(palm_opd_diagnosis_master => palm_opd_diagnosis_master.opd_code == Session["opd_code"].ToString());
            pod.master_id = pom.opd_diagnosis_master_id;
            pod.opd_code = pom.opd_code;
            pod.Final_diagnosis = TextBox6.Text;
            pod.final_remark = TextBox9.Text;
            rt.palm_opd_final_diagnosis.InsertOnSubmit(pod);
            rt.SubmitChanges();
        }

        BindData1();

    }
}