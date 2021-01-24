using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_rbs : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_rb ppb = new palm_pathology_rb();
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
            // Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
            String dr = Session["ref_doctor"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (Exception er)
            { Session["ref_doctor"] = dr; }

            laqbel00.Text = Session["pateint_name"].ToString();
            label3.Text = Session["ref_doctor"].ToString();
            palm_pathology_rb ppm = new palm_pathology_rb();
            String dr1 = Session["slave_id"].ToString();
            ppm = rt.palm_pathology_rbs.Single(palm_pathology_rbs => palm_pathology_rbs.slave_id == Session["slave_id"].ToString());
          //  label300.Text = Convert.ToString(ppm.fbs);
           // label301.Text = ppm.usfs.ToString();
           // label302.Text = ppm.uafs.ToString();
            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label2.Text = Convert.ToString(pps.date);
          //  label305.Text = Convert.ToString(ppm.uapls);
           // label304.Text = Convert.ToString(ppm.uspls);
           // label303.Text = Convert.ToString(ppb.plbs);
            label312.Text = Convert.ToString(ppb.rbs);
            MultiView1.ActiveViewIndex = 1;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppb.path_id = Session["path_id"].ToString();
        ppb.pateint_code = Session["pateint_code"].ToString();
        ppb.slave_id = Session["slave_id"].ToString();
       // ppb.fbs = TextBox1.Text;
       // ppb.usfs = TextBox2.Text;
       // ppb.uafs = TextBox3.Text;
      //  ppb.plbs = textBox00.Text;
       // ppb.uspls = TextBox5.Text;
       //// ppb.uapls = TextBox6.Text;
        ppb.rbs = textbox0.Text;
        rt.palm_pathology_rbs.InsertOnSubmit(ppb);
        rt.SubmitChanges();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        // fill print
        ppb = rt.palm_pathology_rbs.Single(palm_pathology_rbs => palm_pathology_rbs.slave_id == Session["slave_id"].ToString());

        laqbel00.Text = Session["pateint_name"].ToString();
        label3.Text = Session["ref_doctor"].ToString();
        Label2.Text = d.Text;
       // label300.Text = Convert.ToString(ppb.fbs);
        //label301.Text = Convert.ToString(ppb.usfs);
       // label302.Text = Convert.ToString(ppb.uafs);
       // label303.Text = Convert.ToString(ppb.plbs);
      //  label304.Text = Convert.ToString(ppb.uspls);
       // label305.Text = Convert.ToString(ppb.uapls);
        label312.Text = Convert.ToString(ppb.rbs);
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
