using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_dengue_igm : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_dengue_igm ppd = new palm_pathology_dengue_igm();
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
            label1.Text = Session["pateint_name"].ToString();
            palm_doctor_employee pde = new palm_doctor_employee();
           // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label8.Text = pde.doctor_name;
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
           // palm_doctor_employee pde = new palm_doctor_employee();
           // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label253.Text = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label253.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label249.Text = Session["pateint_name"].ToString();
           // Label253.Text = Session["ref_doctor"].ToString();
            palm_pathology_dengue_igm ppm = new palm_pathology_dengue_igm();
            ppm = rt.palm_pathology_dengue_igms.Single(palm_pathology_dengue_igm => palm_pathology_dengue_igm.slave_id == Session["slave_id"].ToString());
            Label263.Text = ppm.dengue_igm.ToString();
           

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label251.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppd.path_id = Session["path_id"].ToString();
        ppd.slave_id = Session["slave_id"].ToString();
        ppd.pateint_code = Session["pateint_code"].ToString();
        ppd.dengue_igm = DropDownList1.SelectedValue;
        rt.palm_pathology_dengue_igms.InsertOnSubmit(ppd);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        //fill print page

        ppd = rt.palm_pathology_dengue_igms.Single(palm_pathology_dengue_igm=>palm_pathology_dengue_igm.slave_id==Session["slave_id"].ToString());
        Label249.Text = Session["pateint_name"].ToString();
        Label251.Text = d.Text;
        Label253.Text = Session["ref_doctor"].ToString();
        Label263.Text = ppd.dengue_igm;
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