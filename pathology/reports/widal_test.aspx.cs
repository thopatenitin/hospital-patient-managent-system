using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_widal_test : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_widal ppb = new palm_pathology_widal();
    palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
    palm_doctor_employee pde = new palm_doctor_employee();
    protected void Page_Load(object sender, EventArgs e)
    {if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
    if(Session["pateint_name"]==null&&Session["ref_doctor"]== null && Session["slave_id"] == null)
        {

            Response.Redirect("~/home.aspx");
        }


        if (Session["print"] == null)
        {
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
            Label1.Text = Session["pateint_name"].ToString();
          //  Label8.Text = Session["ref_doctor"].ToString();
            //Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
           //palm_doctor_employee pde = new palm_doctor_employee();
            // palm_doctor_employee pde = new palm_doctor_employee();
            // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                label3.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                label3.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            laqbel00.Text = Session["pateint_name"].ToString();
            
            palm_pathology_widal ppm = new palm_pathology_widal();
            ppm = rt.palm_pathology_widals.Single(palm_pathology_widal => palm_pathology_widal.slave_id == Convert.ToInt32(Session["slave_id"]).ToString());
            label300.Text = Convert.ToString(ppm.s_typhi_antigen_o);
            label301.Text = ppm.s_typhi_antigen_h;
            label302.Text = ppm.s_paratyphi_a;
            label303.Text = ppm.s_paratyphi_b;
            Label0.Text = ppm.result;
            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            laqbel0.Text = Convert.ToString(pps.date);

            
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppb.path_id = Session["path_id"].ToString();
        ppb.pateint_code = Session["pateint_code"].ToString();
        ppb.slave_id = Session["slave_id"].ToString();
        ppb.s_typhi_antigen_o = TextBox1.Text;
        ppb.s_typhi_antigen_h = TextBox2.Text;
        ppb.s_paratyphi_a = TextBox3.Text;
        ppb.s_paratyphi_b = textbox00.Text;
        ppb.result = TextBox5.Text;
        rt.palm_pathology_widals.InsertOnSubmit(ppb);
        rt.SubmitChanges();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        // fill print
        ppb = rt.palm_pathology_widals.Single(palm_pathology_widal => palm_pathology_widal.slave_id == Session["slave_id"].ToString());
        laqbel00.Text = Session["pateint_name"].ToString();
        label3.Text = Session["ref_doctor"].ToString();
        laqbel0.Text = d.Text;
        label300.Text = Convert.ToString(ppb.s_typhi_antigen_o);
        label301.Text = Convert.ToString(ppb.s_typhi_antigen_h);
        label302.Text = Convert.ToString(ppb.s_paratyphi_a);
        label303.Text = Convert.ToString(ppb.s_paratyphi_b);
        Label0.Text = ppb.result;
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