using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_LFT : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_lft ppl = new palm_pathology_lft();
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
            //Label11.Text = DateTime.Now.ToString();
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
                Label2.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label2.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label1.Text = Session["pateint_name"].ToString();
            Label2.Text = Session["ref_doctor"].ToString();
            palm_pathology_lft ppm = new palm_pathology_lft();
            ppm = rt.palm_pathology_lfts.Single(palm_pathology_lft => palm_pathology_lft.slave_id == Session["slave_id"].ToString());
            label669.Text = ppm.bilirubin_total.ToString();
            label666.Text = ppm.bilirubin_direct.ToString();
            Label146.Text = ppm.bilirubin_indirect.ToString();
            labell.Text = ppm.aspartate_amino_transferase.ToString();
            Label149.Text = ppm.alanine_transaminase.ToString();
            Label150.Text = ppm.alkaline_phosphatease.ToString();
            Label151.Text = ppm.protine_toltal.ToString();
            Label152.Text = ppm.albumin_serum.ToString();
            Label153.Text = ppm.serum_globulin.ToString();
            Label154.Text = ppm.albumin_serum.ToString();
            
            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            ARMY.Text = Convert.ToDateTime(pps.date).ToString("dd/MM/yyyy"); 
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            ppl.path_id = Session["path_id"].ToString();
            ppl.pateint_code = Session["pateint_code"].ToString();
            ppl.slave_id = Session["slave_id"].ToString();
            ppl.bilirubin_total = Convert.ToDecimal(TextBox1.Text);
            ppl.bilirubin_direct = Convert.ToDecimal(TextBox2.Text);
            ppl.bilirubin_indirect = Convert.ToDecimal(TextBox3.Text);
            ppl.aspartate_amino_transferase = Convert.ToDecimal(TextBox4.Text);
            ppl.alanine_transaminase = Convert.ToDecimal(TextBox6.Text);
            ppl.protine_toltal = Convert.ToDecimal(qt.Text);
            ppl.alkaline_phosphatease = Convert.ToDecimal(TextBox8.Text);
            ppl.albumin_serum = Convert.ToDecimal(TextBox9.Text);
            ppl.serum_globulin = Convert.ToDecimal(TextBox10.Text);
            ppl.albumin_globulin_ratio = Convert.ToDecimal(TextBox11.Text);
            rt.palm_pathology_lfts.InsertOnSubmit(ppl);
            rt.SubmitChanges();
            pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            pos.date = d.Text;
            pos.is_done = "Completed";
            rt.SubmitChanges();
            //print form fill

            ppl = rt.palm_pathology_lfts.Single(palm_pathology_lft => palm_pathology_lft.slave_id == Session["slave_id"].ToString());
            Label1.Text = Session["pateint_name"].ToString();
            Label2.Text = Session["ref_doctor"].ToString();
            ARMY.Text = d.Text;
            label669.Text = Convert.ToString(ppl.bilirubin_total);
            label666.Text = Convert.ToString(ppl.bilirubin_direct);
            Label146.Text = Convert.ToString(ppl.bilirubin_indirect);
            labell.Text = Convert.ToString(ppl.aspartate_amino_transferase);
            Label149.Text = Convert.ToString(ppl.alanine_transaminase);
            Label150.Text = Convert.ToString(ppl.alkaline_phosphatease);
            Label151.Text = Convert.ToString(ppl.protine_toltal);
            Label152.Text = Convert.ToString(ppl.albumin_serum);
            Label153.Text = Convert.ToString(ppl.serum_globulin);
            Label154.Text = Convert.ToString(ppl.albumin_globulin_ratio);


            MultiView1.ActiveViewIndex = 1;
        }
        catch (Exception errr)
        { Response.Write("<script>alert('Enter Valid Readings')</script>"); }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

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