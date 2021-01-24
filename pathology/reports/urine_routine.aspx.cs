using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_urine_routine : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_urine_routine ppu = new palm_pathology_urine_routine();
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
          //  palm_doctor_employee pde = new palm_doctor_employee();
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
            Label7.Text = Session["pateint_name"].ToString();
           // Label8.Text = Session["ref_doctor"].ToString();
           // Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            Label1.Text = Session["pateint_name"].ToString();
            palm_doctor_employee pde = new palm_doctor_employee();
            // palm_doctor_employee pde = new palm_doctor_employee();
            // label0.Text = Session["pateint_name"].ToString();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Label3.Text = pde.doctor_name;
                Session["ref_doctor"] = pde.doctor_name;
            }
            catch (InvalidOperationException rtt)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label3.Text = ppp.ref_doc;
                Session["ref_doctor"] = ppp.ref_doc;
            }
            palm_pathology_urine_routine ppm = new palm_pathology_urine_routine();
            ppm = rt.palm_pathology_urine_routines.Single(palm_pathology_urine_routine => palm_pathology_urine_routine.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label204.Text = ppm.quantity.ToString();
            Label206.Text = ppm.colour.ToString();
            Label207.Text = ppm.appearance.ToString();
            Label208.Text = ppm.deposit.ToString();
            Label209.Text = ppm.reaction.ToString();
            Label210.Text = ppm.urine_albumin.ToString();
            Label211.Text = ppm.urine_suger.ToString();
            Label212.Text = ppm.ketones.ToString();
            Label213.Text = ppm.blood_test.ToString();
            Label214.Text = ppm.bile_salts.ToString();
            Label228.Text = ppm.bile_pigements.ToString();
            Label216.Text = ppm.red_blood_cells.ToString();
            Label00.Text = ppm.pus_cells.ToString();
            Label218.Text = ppm.epithelial_cells.ToString();
            Label219.Text = ppm.casts.ToString();
            Label220.Text = ppm.crystals.ToString();
            Label221.Text = ppm.spermatozoa.ToString();
            Label222.Text = ppm.trichomonas_vaginalis.ToString();
            Label223.Text = ppm.yeast_cells.ToString();
            Label224.Text = ppm.amorphous_deposits.ToString();
            Label225.Text = ppm.bacteria.ToString();




            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label2.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ppu.path_id = Session["path_id"].ToString();
        ppu.pateint_code = Session["pateint_code"].ToString();
        ppu.slave_id =Convert.ToInt32( Session["slave_id"]);
        ppu.quantity= Convert.ToInt16(TextBox2.Text);
        ppu.colour = TextBox12.Text;
        ppu.appearance = deposite.Text;
        ppu.deposit = TextBox5.Text;
        ppu.reaction = TextBox6.Text;
        ppu.urine_albumin = DropDownList1.SelectedValue; ;
        ppu.urine_suger = DropDownList2.SelectedValue; ;
        ppu.ketones = DropDownList3.SelectedValue; ;
        ppu.blood_test = DropDownList4.SelectedValue; ;
        ppu.bile_salts = DropDownList5.SelectedValue;
        ppu.bile_pigements = DropDownList6.SelectedValue;
        ppu.red_blood_cells = DropDownList7.SelectedValue;
        ppu.pus_cells =TextBox16.Text;
        ppu.epithelial_cells = TextBox18.Text;
        ppu.casts= DropDownList8.SelectedValue;
        ppu.crystals = DropDownList9.SelectedValue;
        ppu.spermatozoa = DropDownList10.SelectedValue;
        ppu.trichomonas_vaginalis = DropDownList11.SelectedValue;
        ppu.yeast_cells= DropDownList12.SelectedValue;
        ppu.amorphous_deposits = DropDownList13.SelectedValue;
        ppu.bacteria= DropDownList14.SelectedValue;
        rt.palm_pathology_urine_routines.InsertOnSubmit(ppu);
        rt.SubmitChanges();
        palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
        pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
        rt.SubmitChanges();
        //print form fill

        ppu = rt.palm_pathology_urine_routines.Single(palm_pathology_urine_routine => palm_pathology_urine_routine.slave_id ==Convert.ToInt32( Session["slave_id"]));
        Label1.Text = Session["pateint_name"].ToString();
        Label3.Text = Session["ref_doctor"].ToString();
        Label2.Text = d.Text;
        Label204.Text = Convert.ToString(ppu.quantity);
        Label206.Text = Convert.ToString(ppu.colour);
        Label207.Text = Convert.ToString(ppu.appearance);
        Label208.Text = Convert.ToString(ppu.deposit);
        Label209.Text = Convert.ToString(ppu.reaction);
        Label210.Text = Convert.ToString(ppu.urine_albumin);
        Label211.Text = Convert.ToString(ppu.urine_albumin);
        Label212.Text = Convert.ToString(ppu.ketones);
        Label213.Text = Convert.ToString(ppu.blood_test);
        Label214.Text = Convert.ToString(ppu.bile_salts);
        Label228.Text = Convert.ToString(ppu.bile_pigements);
        Label216.Text = Convert.ToString(ppu.red_blood_cells);
        Label00.Text = Convert.ToString(ppu.pus_cells);
        Label218.Text = Convert.ToString(ppu.epithelial_cells);
        Label219.Text = Convert.ToString(ppu.casts);
        Label220.Text = Convert.ToString(ppu.crystals);
        Label221.Text = Convert.ToString(ppu.spermatozoa);
        Label222.Text = Convert.ToString(ppu.trichomonas_vaginalis);
        Label223.Text = Convert.ToString(ppu.yeast_cells);
        Label224.Text = Convert.ToString(ppu.amorphous_deposits);
        Label225.Text = Convert.ToString(ppu.bacteria);
        MultiView1.ActiveViewIndex = 1;

    }

    protected void TextBox21_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

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