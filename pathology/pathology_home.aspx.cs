using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_pathology_home : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_opd_pathlogy pop = new palm_opd_pathlogy();
    palm_opd_pathlogy_slave pops = new palm_opd_pathlogy_slave();
    pathology_test_report ptr = new pathology_test_report();
    palm_doctor_employee pde = new palm_doctor_employee();
    palm_pateint_master ppm = new palm_pateint_master();
    protected void Page_Load(object sender, EventArgs e)
    {
        

    } 
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        pops = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text));
        Session["pateint_code"] = GridView1.SelectedRow.Cells[1].Text;
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master=>palm_pateint_master.pateint_code==Session["pateint_code"].ToString());

        Session["Pateint_name"] =  ppm.pateient_title+" "+ppm.pateient_first_name+" "+ppm.pateient_last_name;
        Session["test_asked"] = GridView1.SelectedRow.Cells[5].Text;
        ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_name == GridView1.SelectedRow.Cells[5].Text);
        Session["path_id"] = pops.path_id;
        try
        {
            pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == GridView1.SelectedRow.Cells[2].Text);

            Session["ref_doctor"] = "Dr." + pde.doctor_name;
        }
        catch (InvalidOperationException rt1)
        {
            palm_pateints_profile ppp = new palm_pateints_profile();
            ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile=>palm_pateints_profile.pateint_code==Session["pateint_code"].ToString());
            Session["ref_doctor"] = ppp.ref_doc; ;
        }
        Session["slave_id"] = GridView1.SelectedRow.Cells[0].Text;
        
        String test_code = ptr.test_code;
        switch (test_code)
        {
            case "lft":
                Response.Redirect("~/pathology/reports/LFT.aspx");
                break;
            case "cbc":
                Response.Redirect("~/pathology/reports/cbc.aspx");
                break;
            case "ur":
                Response.Redirect("~/pathology/reports/urine_routine.aspx");
                break;
            case "rbs":
                Response.Redirect("~/pathology/reports/rbs.aspx");
                break;
            case "bg":
                Response.Redirect("~/pathology/reports/blood_group.aspx");
                break;
            case "crp":
                Response.Redirect("~/pathology/reports/crp.aspx");
                break;
            case "ua":
                Response.Redirect("~/pathology/reports/uric_acid.aspx");
                break;
            case "hba1c":
                Response.Redirect("~/pathology/reports/hb1ac.aspx");
                break;
            case "sr":
                Response.Redirect("~/pathology/reports/stool_examination.aspx");
                break;
            case "mp":
                Response.Redirect("~/pathology/reports/mp.aspx");
                break;
            case "hbsag":
                Response.Redirect("~/pathology/reports/hbsag.aspx");
                break;
            case "Dengue IgM":
                Response.Redirect("~/pathology/reports/dengue_igm.aspx");
                break;
            case "Dengue NS1":
                Response.Redirect("~/pathology/reports/dengue_ns1.aspx");
             
                break;
            case "esr":
                Response.Redirect("~/pathology/reports/esr.aspx");
                break;
            case "lp":
                Response.Redirect("~/pathology/reports/lipid_profile.aspx");
                break;
            case "rft":
                Response.Redirect("~/pathology/reports/rft.aspx");
                break;
            case "c":
                Response.Redirect("~/pathology/reports/calcium.aspx");
                break;
            case "vitb12":
                Response.Redirect("~/pathology/reports/vit_b12.aspx");
                break;
            case "vitd3":
                Response.Redirect("~/pathology/reports/vitd3.aspx");
                break;
            case "bt_ct":
                Response.Redirect("~/pathology/reports/bt_ct.aspx");
                break;
            case "fbs_plbs":
                Response.Redirect("~/pathology/reports/fbs_plbs.aspx");
                break;
            case "wt":
                Response.Redirect("~/pathology/reports/widal_test.aspx");
                break;
            case "vdrl":
                Response.Redirect("~/pathology/reports/VDRL.aspx");
                break;
            case "ra":
                Response.Redirect("~/pathology/reports/ra_test.aspx");
                break;
            case "el":
                Response.Redirect("~/pathology/reports/electrolyte.aspx");
                break;
            case "cpk":
                Response.Redirect("~/pathology/reports/cpk.aspx");
                break;
            case "hcv":
                Response.Redirect("~/pathology/reports/HCV.aspx");
                break;
            case "g6pd":
                Response.Redirect("~/pathology/reports/g6pd.aspx");
                break;
            case "a":
                Response.Redirect("~/pathology/reports/amylase.aspx");
                break;
            case "lipase":
                Response.Redirect("~/pathology/reports/lipase.aspx");
                break;
            case "cn":
                Response.Redirect("~/pathology/reports/CREATNINE.aspx");
                break;
            default:
                Response.Write("<script>alert('Report Module is not Ready.')</script>");
                break;
        }

    }



    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        palm_pateint_master ppm = new palm_pateint_master();
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master=>palm_pateint_master.pateint_code== GridView2.SelectedRow.Cells[1].Text);

        String test_name = GridView2.SelectedRow.Cells[6].Text;
        ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_name == test_name);
        String test_code = ptr.test_code;
        switch (test_code)
        {
            case "cn":
                Session["print"] = 1;
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Response.Redirect("~/pathology/reports/CREATNINE.aspx");
                break;
            case "hba1c":
                Session["print"] = 1;
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                Response.Redirect("~/pathology/reports/hb1ac.aspx");
                break;
            case "rbs":
                Session["print"] = 1;
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Response.Redirect("~/pathology/reports/rbs.aspx");
                break;
            case "lft":

                Session["print"] = 1;
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Response.Redirect("~/pathology/reports/LFT.aspx");
                break;
            case "cbc":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/cbc.aspx");
                break;
            case "ur":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/urine_routine.aspx");
                break;
            case "bg":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/blood_group.aspx");
                break;
            case "lipase":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/lipase.aspx");
                break;
            case "crp":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/crp.aspx");
                break;
            case "ua":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/uric_acid.aspx");
                break;
            case "sr":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/stool_examination.aspx");
                break;
            case "mp":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/mp.aspx");
                break;
            case "hbsag":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/hbsag.aspx");
                break;
            case "Dengue IgM":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/dengue_igm.aspx");
                break;
            case "Dengue NS1":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/dengue_ns1.aspx");

                break;
            case "esr":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/esr.aspx");
                break;
            case "lp":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/lipid_profile.aspx");
                break;
            case "rft":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/rft.aspx");
                break;
            case "c":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/calcium.aspx");
                break;
            case "vitb12":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/vit_b12.aspx");
                break;
            case "vitd3":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/vitd3.aspx");
                break;
                   case "bt_ct":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/bt_ct.aspx");
                break;
            case "fbs_plbs":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/fbs_plbs.aspx");
                break;
            case "wt":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/widal_test.aspx");
                break;
            case "vdrl":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/VDRL.aspx");
                break;
            case "ra":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/ra_test.aspx");
                break;
            case "el":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/electrolyte.aspx");
                break;
               
            case "cpk":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/cpk.aspx");
                break;
            case "hcv":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/HCV.aspx");
                break;
            case "g6pd":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/g6pd.aspx");
                break;
            case "a":
                Session["pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
                Session["pateint_code"] = GridView2.SelectedRow.Cells[1].Text;
                Session["slave_id"] = GridView2.SelectedRow.Cells[0].Text;
                Session["ref_doctor"] = GridView2.SelectedRow.Cells[3].Text;
                Session["print"] = 1;
                Response.Redirect("~/pathology/reports/amylase.aspx");
                break;
            default:
                Response.Write("<script>alert('Report Module is not Ready.')</script>");
                break;
        }
    }
}