using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using BLL;

public partial class USERCONTROL_discharge_summery : System.Web.UI.UserControl
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_opd_Bill_slave bill_slave = new palm_opd_Bill_slave();
    palm_pateint_master ppm = new palm_pateint_master();
    palm_pateints_profile ppp = new palm_pateints_profile();
    palm_opd_patient pop = new palm_opd_patient();
    palm_doctor_employee pde = new palm_doctor_employee();
    
    palm_opd_Bill_master bill_master = new palm_opd_Bill_master();
    palm_opd_registration por = new palm_opd_registration();

    palm_opd_history poh = new palm_opd_history();

    SqlDataAdapter da;
    DataSet ds = new DataSet();
    StringBuilder htmlTable = new StringBuilder();
    clsbusslayer objb = new clsbusslayer();
    protected void Page_Load(object sender, EventArgs e)
    { if (Session["emp_code"] == null)
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
      
            BindData();
        BindData1();
        bindpro_diagnosis();
        bindfi_diagnosis();
        bindcomplain();
    }

    private void bindcomplain()
    {
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();

        ds = objb.get_complain_byopdcode(Session["opd_code"].ToString());
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
                PlaceHolder0.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }
    }

    private void bindfi_diagnosis()
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
                PlaceHolder6.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }
    }

    private void bindpro_diagnosis()
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
                PlaceHolder3.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }
    }

    private void BindData1()
    {
        StringBuilder htmlTable1 = new StringBuilder();
        DataSet ds1;
        ds1 = objb.getinvestigation_byopdcode(Session["opd_code"].ToString());

        htmlTable1.Append("<table style='width:100%'>");
       

        if (!object.Equals(ds1.Tables[0], null))
        {
            if (ds1.Tables[0].Rows.Count > 0)
            {
                htmlTable1.Append("<tr>");
                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                   
                    htmlTable1.Append("<td>" + ds1.Tables[0].Rows[i]["test_name"] + "</td>");


                }
                htmlTable1.Append("</tr>");
                htmlTable1.Append("</table>");
                PlaceHolder2.Controls.Add(new Literal { Text = htmlTable1.ToString() });
            }
            else
            {
                htmlTable1.Append("<tr>");
                htmlTable1.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable1.Append("</tr>");
            }
        }

    }

    private void BindData()
    {
        ds = objb.getmedication_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%'>");
        htmlTable.Append("<tr ><th>category</th><th>drug</th><th>dose</th><th>route</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["category"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["drug"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["dose"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["route"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["timea"] + "------" + ds.Tables[0].Rows[i]["timeb"] + "------" + ds.Tables[0].Rows[i]["timec"] + "------- " + ds.Tables[0].Rows[i]["timed"] + " </td>");
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
        try { poh.menstrul_history = TextBox1.Text; } catch (Exception rttt) { poh.menstrul_history = ""; }
        try
        { poh.past_medical_history = TextBox4.Text; } catch (Exception rttt) { poh.past_medical_history = ""; }
        try
        { poh.past_surgical_history = TextBox5.Text; } catch (Exception rttt) { poh.past_surgical_history = ""; }
        try
        { poh.bowel = TextBox7.Text; } catch (Exception rttt) { poh.bowel = ""; }
        try
        { poh.bladder = TextBox9.Text; } catch (Exception rttt) { poh.bladder = ""; }
        try
        { poh.appetite = TextBox8.Text; } catch (Exception rttt) { poh.appetite = ""; }
        try
        { poh.sleep_pattern = TextBox10.Text;
        }
        catch (Exception rttt) { poh.sleep_pattern = ""; }
        try
        { poh.addiction = TextBox11.Text;
        }
        catch (Exception rttt) { poh.addiction = ""; }
        try
        { poh.allergic_history = TextBox6.Text;
        }
        catch (Exception rttt) { poh.allergic_history = ""; }
        try
        { poh.menstrul_history = RadioButtonList1.SelectedValue;
        }
        catch (Exception rttt) { poh.menstrul_history = ""; }
        poh.opd_code = Session["opd_code"].ToString();

        poh.inserted_by = Session["emp_code"].ToString();
        poh.inserted_on = DateTime.Now;

        ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
        ppm.is_discharge = "1";
        rt.palm_opd_histories.InsertOnSubmit(poh);
      /*  try
        {*/
            rt.SubmitChanges();
        /*}
        catch (Exception rtt) { Response.Write("<script>alert('pateint dose exist')</script>"); }
       */
            // reciept fill

        Label81.Text = Session["opd_code"].ToString();
        por =rt.palm_opd_registrations.Single(palm_opd_registration=> palm_opd_registration.opd_code == Session["opd_code"].ToString());
        Label78.Text = por.consultant_doctor_name;
        palm_department pd = new palm_department();
        pd = rt.palm_departments.Single(palm_department => palm_department.department_code ==por.department_code );
       
        Label79.Text = pd.department_desc;
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
        Label77.Text = ppm.pateient_title + " ." + ppm.pateient_last_name + " " + ppm.pateient_first_name + " " + ppm.pateient_middle_name;
        Label84.Text = ppm.gender;
        ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
        Label80.Text = ppp.ref_doc;
        Label83.Text = ppp.age;
        Label82.Text = Convert.ToString(DateTime.Now);
        palm_opd_complain poc = new palm_opd_complain();
      
         
        poh = rt.palm_opd_histories.Single(palm_opd_history=>palm_opd_history.opd_code==Session["opd_code"].ToString());
        Label96.Text = poh.past_medical_history;
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["opd_code"] = null;
        Session["pateint_code"] = null;
        Response.Redirect("~/doctor_module/doctor.aspx");
    }

  
}