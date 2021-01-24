using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_rft : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_rft ppl = new palm_pathology_rft();
    palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (Session["pateint_name"] == null && Session["ref_doctor"] == null && Session["slave_id"] == null)
        {

            Response.Redirect("~/home.aspx");
        }

        if (Session["print"] == null)
        {

            Label7.Text = Session["pateint_name"].ToString();
            palm_doctor_employee pde = new palm_doctor_employee();
            // palm_doctor_employee pde = new palm_doctor_employee();
            // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label8.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label8.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            //  Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
         //   palm_doctor_employee pde = new palm_doctor_employee();
            // palm_doctor_employee pde = new palm_doctor_employee();
            // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label20.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label20.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label2.Text = Session["pateint_name"].ToString();
            Label20.Text = Session["ref_doctor"].ToString();
            palm_pathology_rft ppm = new palm_pathology_rft();
            ppm = rt.palm_pathology_rfts.Single(palm_pathology_rft => palm_pathology_rft.slave_id == Session["slave_id"].ToString());
            Label237.Text = ppm.creatinine_serum.ToString();
            Label238.Text = ppm.blood_uria_nitrogen.ToString();
            Label239.Text = ppm.bun_sr_creatinine_ratio.ToString();
            Label240.Text = ppm.uric_acid.ToString();
            Label241.Text = ppm.calcium.ToString();
            Q.Text = ppm.protine_total.ToString();

            Q0.Text = ppm.albumin_serum.ToString();
            Q1.Text = ppm.albumin_serum.ToString();
            Q2.Text = ppm.a_g.ToString();

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label18.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppl.path_id = Session["path_id"].ToString();
        ppl.pateint_code = Session["pateint_code"].ToString();
        ppl.slave_id = Session["slave_id"].ToString();
        ppl.creatinine_serum = Convert.ToDecimal(TextBox1.Text);
        ppl.blood_uria_nitrogen = Convert.ToDecimal(TextBox3.Text);
        ppl.bun_sr_creatinine_ratio = Convert.ToDecimal(TextBox4.Text);
        ppl.uric_acid = Convert.ToDecimal(TextBox5.Text);
        ppl.calcium = Convert.ToDecimal(TextBox6.Text);
        ppl.protine_total = Convert.ToDecimal(TextBox8.Text);
        ppl.albumin_serum = Convert.ToDecimal(TextBox9.Text);
        ppl.serum_globulin = Convert.ToDecimal(TextBox10.Text);
        ppl.a_g = Convert.ToDecimal(TextBox11.Text);
        rt.palm_pathology_rfts.InsertOnSubmit(ppl);
        rt.SubmitChanges();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        //print form fill

        ppl = rt.palm_pathology_rfts.Single(palm_pathology_rft => palm_pathology_rft.slave_id == Session["slave_id"].ToString());
        Label2.Text = Session["pateint_name"].ToString();
        Label20.Text = Session["ref_doctor"].ToString();
        Label18.Text = d.Text;
        Label237.Text = Convert.ToString(ppl.creatinine_serum);
        Label238.Text = Convert.ToString(ppl.blood_uria_nitrogen);
        Label239.Text = Convert.ToString(ppl.bun_sr_creatinine_ratio);
        Label240.Text = Convert.ToString(ppl.uric_acid);
        Label241.Text = Convert.ToString(ppl.calcium);
        Q.Text = ppl.protine_total.ToString();

        Q0.Text = ppl.albumin_serum.ToString();
        Q1.Text = ppl.albumin_serum.ToString();
        Q2.Text = ppl.a_g.ToString();



        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
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