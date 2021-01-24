using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_electrolyte : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_electrolyte ppb = new palm_pathology_electrolyte();
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

            Label1.Text = Session["pateint_name"].ToString();
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
           // palm_doctor_employee pde = new palm_doctor_employee();
           // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label00.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label00.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label2.Text = Session["pateint_name"].ToString();
           // Label00.Text = Session["ref_doctor"].ToString();
            palm_pathology_electrolyte ppm = new palm_pathology_electrolyte();
            ppm = rt.palm_pathology_electrolytes.Single(palm_pathology_electrolyte => palm_pathology_electrolyte.slave_id == Session["slave_id"].ToString());
            Label249.Text = Convert.ToString(ppm.serum_sodium);
            Label239.Text = Convert.ToString(ppm.serum_potassium);
            Label250.Text = Convert.ToString(ppm.serum_chloride);

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label0.Text = Convert.ToString(pps.date);


            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        ppb.path_id = Session["path_id"].ToString();
        ppb.pateint_code = Session["pateint_code"].ToString();
        ppb.slave_id = Session["slave_id"].ToString();
        ppb.serum_sodium = Convert.ToDecimal(textbox5.Text);
        ppb.serum_potassium = Convert.ToDecimal(TextBox1.Text);
        ppb.serum_chloride = Convert.ToDecimal(textbox0.Text);


        rt.palm_pathology_electrolytes.InsertOnSubmit(ppb);
        rt.SubmitChanges();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        // fill print
        ppb = rt.palm_pathology_electrolytes.Single(palm_pathology_electrolyte => palm_pathology_electrolyte.slave_id == Session["slave_id"].ToString());
        Label2.Text = Session["pateint_name"].ToString();
        Label00.Text = Session["ref_doctor"].ToString();
        Label0.Text = d.Text;
        Label249.Text = Convert.ToString(ppb.serum_sodium);
        Label239.Text = Convert.ToString(ppb.serum_potassium);
        Label250.Text = Convert.ToString(ppb.serum_chloride);

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