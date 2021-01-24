using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_calcium : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
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
            palm_pathology_calcium ppm = new palm_pathology_calcium();
            ppm = rt.palm_pathology_calciums.Single(palm_pathology_calcium => palm_pathology_calcium.slave_id == Session["slave_id"].ToString());
            Label241.Text = ppm.calcium.ToString();
            

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label18.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        palm_pathology_calcium ppc = new palm_pathology_calcium();
        ppc.path_id = Session["path_id"].ToString();
        ppc.pateint_code = Session["pateint_code"].ToString();
        ppc.slave_id = Session["slave_id"].ToString();
        ppc.calcium = Convert.ToDecimal(TextBox6.Text);
      
        rt.palm_pathology_calciums.InsertOnSubmit(ppc);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();

        //print fill

        ppc = rt.palm_pathology_calciums.Single(palm_pathology_calcium => palm_pathology_calcium.slave_id == Session["slave_id"].ToString());
        Label2.Text = Session["pateint_name"].ToString();
        Label20.Text = Session["ref_doctor"].ToString();
        Label18.Text = d.Text;
        Label241.Text = Convert.ToString(ppc.calcium);
        
        MultiView1.ActiveViewIndex = 1;
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        if(TextBox6.Text=="")
        {

            Response.Write("<script>alert('Calcium Can not be Empty')</script>");
        }
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