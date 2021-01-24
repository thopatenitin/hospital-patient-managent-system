using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_dengue_ns1 : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_dengue_ns1 ppn = new palm_pathology_dengue_ns1();
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
            label13.Text = Session["pateint_name"].ToString();
            palm_doctor_employee pde = new palm_doctor_employee();
            //label0.Text = Session["pateint_name"].ToString();
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
          //  label0.Text = Session["pateint_name"].ToString();
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
            Label223.Text = Session["pateint_name"].ToString();
                Label2.Text = Session["ref_doctor"].ToString();
                palm_pathology_dengue_ns1 ppm = new palm_pathology_dengue_ns1();
                ppm = rt.palm_pathology_dengue_ns1s.Single(palm_pathology_dengue_ns1 => palm_pathology_dengue_ns1.slave_id == Session["slave_id"].ToString());
                Label245.Text = ppm.dengue_ns1.ToString();
           

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label225.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppn.path_id = Session["path_id"].ToString();
        ppn.slave_id = Session["slave_id"].ToString();
        ppn.pateint_code = Session["pateint_code"].ToString();
        ppn.dengue_ns1 = DropDownList2.SelectedValue;
        rt.palm_pathology_dengue_ns1s.InsertOnSubmit(ppn);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        //fill print page

        ppn = rt.palm_pathology_dengue_ns1s.Single(palm_pathology_dengue_ns1 => palm_pathology_dengue_ns1.slave_id == Session["slave_id"].ToString());
       Label223.Text = Session["pateint_name"].ToString();
        Label225.Text = d.Text;
        Label245.Text = ppn.dengue_ns1;
        Label2.Text =  Session["ref_doctor"].ToString();
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