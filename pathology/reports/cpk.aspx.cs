using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_cpk : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_cpk ppb = new palm_pathology_cpk();
    palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (Session["pateint_name"] == null && Session["ref_doctor"] == null && Session["slave_id"] == null && Session["slave_id"] == null)
        {

            Response.Redirect("~/home.aspx");
        }


        if (Session["print"] == null)
        {

            label000.Text = Session["pateint_name"].ToString();
            palm_doctor_employee pde = new palm_doctor_employee();
            label0.Text = Session["pateint_name"].ToString();
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
            // Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
           // palm_doctor_employee pde = new palm_doctor_employee();
            label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label225.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label225.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label223.Text = Session["pateint_name"].ToString();
            Label1.Text = Session["ref_doctor"].ToString();
            palm_pathology_cpk ppm = new palm_pathology_cpk();
            ppm = rt.palm_pathology_cpks.Single(palm_pathology_cpk => palm_pathology_cpk.slave_id == Session["slave_id"].ToString());
            labe6.Text = Convert.ToString(ppm.cpk_total_serum);
            label00.Text = Convert.ToString(ppm.cpk_mb);
            label0.Text = Convert.ToString(ppm.ldh);
            label300.Text = Convert.ToString(ppm.sgot);

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label225.Text = Convert.ToString(pps.date);


            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppb.path_id = Session["path_id"].ToString();
        ppb.pateint_code = Session["pateint_code"].ToString();
        ppb.slave_id = Session["slave_id"].ToString();
        ppb.cpk_total_serum = Convert.ToDecimal(TextBox1.Text);
        ppb.cpk_mb = Convert.ToDecimal(TextBox2.Text);
        ppb.ldh = Convert.ToDecimal(TextBox3.Text);
        ppb.sgot = Convert.ToDecimal(TextBox5.Text);

        rt.palm_pathology_cpks.InsertOnSubmit(ppb);
        rt.SubmitChanges();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        // fill print
        ppb = rt.palm_pathology_cpks.Single(palm_pathology_cpk => palm_pathology_cpk.slave_id == Session["slave_id"].ToString());
        Label223.Text = Session["pateint_name"].ToString();
        Label1.Text = Session["ref_doctor"].ToString();
        Label225.Text = d.Text;
        labe6.Text = Convert.ToString(ppb.cpk_total_serum);
        label00.Text = Convert.ToString(ppb.cpk_mb);
        label0.Text = Convert.ToString(ppb.ldh);
        label300.Text = Convert.ToString(ppb.sgot);
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