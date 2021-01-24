using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_stool_examination : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_opd_stool_routine por = new palm_opd_stool_routine();

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

        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/pathology/pathology_home.aspx");
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
            //  Label11.Text = DateTime.Now.ToString();
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
                Label235.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label235.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            Label231.Text = Session["pateint_name"].ToString();
            Label235.Text = Session["ref_doctor"].ToString();
            palm_opd_stool_routine ppm = new palm_opd_stool_routine();
            ppm = rt.palm_opd_stool_routines.Single(palm_opd_stool_routine => palm_opd_stool_routine.slave_id == Session["slave_id"].ToString());
            Label262.Text = ppm.colour.ToString();
            Label263.Text = ppm.form_consistency.ToString();
            Label264.Text = ppm.mucus.ToString();
            Label265.Text = ppm.blood.ToString();
            Label266.Text = ppm.parasites.ToString();
            Label267.Text = ppm.reaction.ToString();
            Label268.Text = ppm.occult_blood.ToString();
            Label269.Text = ppm.reducing_substrains.ToString();
            Label90.Text = ppm.red_blood_cells.ToString();
            Label00.Text = ppm.pus_cells.ToString();
            Label000.Text = ppm.epithelial_cells.ToString();
            Label666.Text = ppm.macrophages.ToString();
            Label0.Text = ppm.fat.ToString();
            Label01.Text = ppm.starch.ToString();
            Label02.Text = ppm.entamoeba_histolitical.ToString();
            label66.Text = ppm.entamba_coli.ToString();
            label69.Text = ppm.giardia_lambia.ToString();
            Label001.Text = ppm.tricomonas_hominis.ToString();
            Label280.Text = ppm.ova_cyst.ToString();
        

            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label1.Text = Convert.ToString(pps.date);
            Session["print"] = null;
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        por.path_id = Session["path_id"].ToString();
        por.slave_id = Session["slave_id"].ToString();
        por.pateint_code = Session["pateint_code"].ToString();
        por.colour = TextBox2.Text;
        por.form_consistency = TextBox12.Text;
        por.mucus = DropDownList1.SelectedValue;
        por.blood = DropDownList2.SelectedValue;
        por.parasites = DropDownList3.SelectedValue;
        por.reaction = TextBox8.Text;
        por.occult_blood = DropDownList4.SelectedValue;
        por.reducing_substrains = DropDownList5.SelectedValue;
        por.red_blood_cells = DropDownList6.SelectedValue;
        por.pus_cells = TextBox23.Text;
        por.epithelial_cells = TextBox24.Text;
        por.macrophages = DropDownList9.SelectedValue;
        por.fat = DropDownList10.SelectedValue;
        por.starch = DropDownList11.SelectedValue;
        por.entamoeba_histolitical = DropDownList12.SelectedValue;
        por.entamba_coli = DropDownList13.SelectedValue;
        por.giardia_lambia = DropDownList14.SelectedValue;
        por.tricomonas_hominis = DropDownList15.SelectedValue;
        por.ova_cyst = DropDownList16.SelectedValue;
        rt.palm_opd_stool_routines.InsertOnSubmit(por);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave=>palm_opd_pathlogy_slave.slave_id==Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();

        //print page

        por = rt.palm_opd_stool_routines.Single(palm_opd_stool_routine => palm_opd_stool_routine.slave_id == Session["slave_id"].ToString());
        Label231.Text = Session["pateint_name"].ToString();
        Label235.Text = Session["ref_doctor"].ToString();
        Label1.Text = DateTime.Now.ToString();
        Label262.Text = por.colour;
        Label263.Text= por.form_consistency ;
        Label264.Text= por.mucus ;
        Label265.Text= por.blood ;
        Label266.Text= por.parasites;

        Label267.Text= por.reaction;
        Label268.Text= por.occult_blood;
        Label269.Text= por.reducing_substrains ;
        Label90.Text= por.red_blood_cells;
        Label00.Text= por.pus_cells ;
        Label000.Text= por.epithelial_cells ;
        Label666.Text= por.macrophages;
        Label0.Text= por.fat ;
        Label01.Text= por.starch ;
        Label02.Text= por.entamoeba_histolitical;
        label66.Text= por.entamba_coli ;
      label69.Text=  por.giardia_lambia ;
       Label001.Text= por.tricomonas_hominis ;
        Label280.Text= por.ova_cyst;

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