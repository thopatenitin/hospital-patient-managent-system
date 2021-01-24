using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_hbsag : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_hbsag pph = new palm_pathology_hbsag();
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
            Label8.Text = Session["ref_doctor"].ToString();
            //Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Session["ref_doctor"] = pde.doctor_name;
            }catch(InvalidOperationException rtt) {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Session["ref_doctor"] = ppp.ref_doc;
                Label253.Text = ppp.ref_doc;
            }
            Label249.Text = Session["pateint_name"].ToString();
            Label253.Text = Session["ref_doctor"].ToString();
            palm_pathology_hbsag ppm = new palm_pathology_hbsag();
            ppm = rt.palm_pathology_hbsags.Single(palm_pathology_hbsags => palm_pathology_hbsags.slave_id == Session["slave_id"].ToString());
            Label263.Text = ppm.hepatitis_b_surface_antigen.ToString();


            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label251.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        pph.path_id = Session["path_id"].ToString();
        pph.pateint_code = Session["pateint_code"].ToString();
        pph.slave_id = Session["slave_id"].ToString();
        pph.hepatitis_b_surface_antigen =DropDownList2.SelectedItem.Text;
        rt.palm_pathology_hbsags.InsertOnSubmit(pph);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();

        //print page

        pph = rt.palm_pathology_hbsags.Single(palm_pathology_hbsag => palm_pathology_hbsag.slave_id == Session["slave_id"].ToString());
        Label249.Text = Session["pateint_name"].ToString();
        Label253.Text = Session["ref_doctor"].ToString();
        Label251.Text = d.Text;
        Label263.Text = Convert.ToString(pph.hepatitis_b_surface_antigen);
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