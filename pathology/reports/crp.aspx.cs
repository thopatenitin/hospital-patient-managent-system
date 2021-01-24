using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_crp : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_crp ppc = new palm_pathology_crp();
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
           
            Label223.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label1.Text = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label1.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label223.Text = Session["pateint_name"].ToString();
           // Label1.Text = Session["ref_doctor"].ToString();
            palm_pathology_crp ppm = new palm_pathology_crp();
            ppm = rt.palm_pathology_crps.Single(palm_pathology_crp => palm_pathology_crp.slave_id == Session["slave_id"].ToString());
            labe6.Text = ppm.crp_level.ToString();
            Label2.Text = ppm.result.ToString();
            
            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label225.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppc.path_id = Session["path_id"].ToString();
        ppc.pateint_code = Session["pateint_code"].ToString();
        ppc.slave_id = Session["slave_id"].ToString();
        ppc.crp_level = Convert.ToDecimal(TextBox1.Text);
        ppc.result = DropDownList1.SelectedValue;
        rt.palm_pathology_crps.InsertOnSubmit(ppc);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();

        //print fill

        ppc = rt.palm_pathology_crps.Single(palm_pathology_crp =>palm_pathology_crp.slave_id == Session["slave_id"].ToString());
        Label223.Text = Session["pateint_name"].ToString();
        Label1.Text = Session["ref_doctor"].ToString();
        Label225.Text = d.Text;
        labe6.Text = Convert.ToString(ppc.crp_level);
        Label2.Text = Convert.ToString(ppc.result);
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