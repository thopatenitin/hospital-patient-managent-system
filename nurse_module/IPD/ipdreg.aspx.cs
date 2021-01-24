using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class IPD_ipdreg : System.Web.UI.Page
{
    clsbusslayer bl = new clsbusslayer();
    palm_ipd_registration pl = new palm_ipd_registration();
    palm_pateints_kin_detail pkd = new palm_pateints_kin_detail();
    IPDDataContext rt = new IPDDataContext();
    DataClassesDataContext rt1 = new DataClassesDataContext();
    room_master rm = new room_master();
    palm_bed_category pbc = new palm_bed_category();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["printing"] != null)
        {
            Session["printing"] = null;
            try
            {
                palm_pateint_master ppm = new palm_pateint_master();
                ppm = rt1.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
                //     pl = rt.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
                Label88.Text = TextBox5.Text;

                Label90.Text = Convert.ToString(Session["prn"].ToString());
                Label164.Text = ppm.pateient_last_name + "  " + ppm.pateient_first_name + "  " + ppm.pateient_middle_name;
                Label163.Text = ppm.father_husbemd_name;
                Label98.Text = ppm.gender;
            }
            catch (InvalidOperationException rtt)
            {
                Label88.Text = "NA";
                Label90.Text = "NA";
                Label164.Text = "NA";
                Label163.Text = "NA";
                Label98.Text = "NA";
            }
            try
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt1.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label101.Text = "Indian";
                Label120.Text = ppp.ref_doc;

                Label110.Text = ppp.present_pincode;
                Label161.Text = ppp.age;
                label0.Text = ppp.permanent_pin_code;
                mobile.Text = ppp.mobile_no;
                telephone.Text = ppp.tele_no;
                emailid.Text = ppp.present_email_id;
                label0.Text = ppp.present_pincode;
                Label166.Text = ppp.present_house_no + "" + ppp.present_build_society + " " + ppp.present_area + " " + ppp.present_area + " " + ppp.present_city + " " + ppp.present_town;
                Label121.Text = ppp.permanent_home_no + " " + ppp.present_build_society + " " + ppp.permanant_area + "  " + ppp.permanant_locality + " " + ppp.permanant_city + " " + ppp.permanant_tal_id + " " + ppp.permanant_district_id;

                palm_state_master psm = new palm_state_master();
                int state_id = Convert.ToInt32(ppp.present_state_id);
                psm = rt.palm_state_masters.Single(palm_state_master => palm_state_master.state_code == Convert.ToString(ppp.present_state_id));
                Label109.Text = psm.state_desc;
                int state_id1 = Convert.ToInt32(ppp.permanent_state_id);
                psm = rt.palm_state_masters.Single(palm_state_master => palm_state_master.state_code == Convert.ToString(ppp.permanent_state_id));
                Label168.Text = psm.state_desc;

                label0.Text = ppp.permanent_pin_code;
                palm_country_master pcm = new palm_country_master();
                int id = Convert.ToInt32(ppp.present_country_id);
                pcm = rt.palm_country_masters.Single(palm_country_master => palm_country_master.country_code == Convert.ToString(ppp.permanent_country_id));
                Label111.Text = pcm.country_desc;



            }
            catch (InvalidOperationException rtt)
            {

                Label101.Text = "NA";
                Label120.Text = "NA";
                Label110.Text = "NA";

                Label166.Text = "NA";
                Label121.Text = "NA";


                Label109.Text = "NA";

                Label168.Text = "NA";

                label0.Text = "NA";

            }
            try
            {

                palm_ipd_registration pir = new palm_ipd_registration();
                String code = Session["pateint_code"].ToString();
                pir = rt.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
                palm_doctor_employee pde = new palm_doctor_employee();
                pde = rt1.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == pir.consultant_doctor_name);
                Label169.Text = pde.doctor_name;
                Label128.Text = pir.consultant1_doctor_name;
                Label129.Text = pir.consultant2_doctor_name;
               
                String room_type = pir.room_type;
                switch (room_type)
                {
                    case "Delux":
                        CheckBox4.Checked = true;
                        break;
                    case "Private _Room":
                        CheckBox5.Checked = true;
                        break;
                    case "Semi Private Room":
                        CheckBox6.Checked = true;
                        break;
                    case "Genral Ward":
                        checkbox0.Checked = true;
                        break;
                    default:
                        break;
                }
                Label89.Text = pir.date_of_discharge;
                toa.Text = pir.time_admission;
                tod.Text = pir.time_of_discharge;
            }
            catch (InvalidOperationException rtt)
            {
                Label169.Text = "---";
                Label128.Text = "---";
                Label129.Text = "---";
            }
            try
            {
                palm_pateints_kin_detail ppk = new palm_pateints_kin_detail();
                String code = Session["pateint_code"].ToString();
                ppk = rt.palm_pateints_kin_details.Single(palm_pateints_kin_detail => palm_pateints_kin_detail.pateint_code == Session["pateint_code"].ToString());
                Label132.Text = ppk.kin_next_name;
                lab0.Text = ppk.kin_reln_pateint;
                Label000.Text = ppk.kin_tele_no;
            }
            catch (InvalidOperationException rtt)
            {
                Label132.Text = "---";
                lab0.Text = "---";
                Label000.Text = "---";

            }
            MultiView1.ActiveViewIndex = 2;
        }
       
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    { if (GridView2.SelectedRow.Cells[2].Text == "Unoccupied")
        {
            Master.room_no.Text = GridView2.SelectedRow.Cells[0].Text;
            Master.bed_no.Text = GridView2.SelectedRow.Cells[1].Text;
            MultiView1.ActiveViewIndex = 1;
        }
        else {
            Response.Write("<script>alert('Bed Already Taken')</script>");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    { if (GridView1.SelectedRow.Cells[2].Text != GridView1.SelectedRow.Cells[3].Text)
        {
            Session["room_no"] = GridView1.SelectedRow.Cells[0].Text;
            GridView2.Visible = true;
            Master.room_type.Text = GridView1.SelectedRow.Cells[1].Text;
            GridView1.Visible = false;
        }
        else { Response.Write("<script>alert('Ward is Full')</script>"); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*try
        {*/
            palm_pateint_master ppm1 = new palm_pateint_master();

            long prn = bl.getprn();
            pl.prn = prn;
            Session["prn"] = prn;
            pl.pateint_code = Session["Pateint_code"].ToString();
            pl.inserted_by = Session["emp_code"].ToString();
            pl.inserted_on = DateTime.Now;
            pl.department_code = Master.department.SelectedValue;
            pl.consultant_doctor_name = Master.departmentd.SelectedValue;
            pl.consultant1_doctor_name = Master.doctor1.Text;
            pl.consultant2_doctor_name = Master.doctor2.Text;
            pl.room_type = Master.room_type.Text;
            pl.room_no = Convert.ToInt32(Master.room_no.Text);
            pl.bed_no = Convert.ToInt32(Master.bed_no.Text);
            pl.date_of_admission = TextBox5.Text;
            pl.time_admission = TextBox6.Text;

            rt.palm_ipd_registrations.InsertOnSubmit(pl);
            rt.SubmitChanges();
            pkd.prn = prn.ToString(); ;
            pkd.kin_next_name = TextBox1.Text;
            pkd.kin_reln_pateint = TextBox2.Text;
            pkd.kin_tele_no = TextBox3.Text;
            pkd.pateint_code = Session["pateint_code"].ToString();
            // rt.palm_pateints_kin_details.InsertOnSubmit(pkd);
            rt.SubmitChanges();
            palm_bed_category pbc = new palm_bed_category();
            palm_pateint_master ppm = new palm_pateint_master();
            ppm = rt1.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());

            pbc = rt.palm_bed_categories.Single(palm_bed_category => palm_bed_category.bed_no == Convert.ToInt32(Master.bed_no.Text));
            pbc.status = "Occupied";
            pbc.pateint_code = Session["pateint_code"].ToString();
            pbc.prn = Session["prn"].ToString();
            rt.SubmitChanges();
            room_master rm = new room_master();
            rm = rt.room_masters.Single(room_master => room_master.room_no == Convert.ToInt32(Master.room_no.Text));
            rm.occupied = rm.occupied + 1;
            rt.SubmitChanges();

            ppm = rt1.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
            ppm.is_check_in = "1";
            rt1.SubmitChanges();
            Response.Write("<script>alert('Pateint Registration Successfull')</script>");
            //checking in pateint
            /*  palm_pateint_master ppm1 = new palm_pateint_master();
             // ppm1 = rt1.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
              ppm.is_check_in = "1";
              rt1.SubmitChanges();*/
            int a = bl.checkin(Session["pateint_code"].ToString());


            //print form
            try
            {
                //palm_pateint_master ppm = new palm_pateint_master();
                ppm = rt1.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
                //     pl = rt.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
                Label88.Text = TextBox5.Text;

                Label90.Text = Convert.ToString(prn);
                Label164.Text = ppm.pateient_last_name + "  " + ppm.pateient_first_name + "  " + ppm.pateient_middle_name;
                Label163.Text = ppm.father_husbemd_name;
                Label98.Text = ppm.gender;
            }
            catch (InvalidOperationException rtt)
            {
                Label88.Text = "NA";
                Label90.Text = "NA";
                Label164.Text = "NA";
                Label163.Text = "NA";
                Label98.Text = "NA";
            }
            try
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt1.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Label101.Text = "Indian";
                Label120.Text = ppp.ref_doc;

                Label110.Text = ppp.present_pincode;
                Label161.Text = ppp.age;
                label0.Text = ppp.permanent_pin_code;
                mobile.Text = ppp.mobile_no;
                telephone.Text = ppp.tele_no;
                emailid.Text = ppp.present_email_id;
                label0.Text = ppp.present_pincode;
                Label166.Text = ppp.present_house_no + "" + ppp.present_build_society + " " + ppp.present_area + " " + ppp.present_area + " " + ppp.present_city + " " + ppp.present_town;
                Label121.Text = ppp.permanent_home_no + " " + ppp.present_build_society + " " + ppp.permanant_area + "  " + ppp.permanant_locality + " " + ppp.permanant_city + " " + ppp.permanant_tal_id + " " + ppp.permanant_district_id;

                palm_state_master psm = new palm_state_master();
                int state_id = Convert.ToInt32(ppp.present_state_id);
                psm = rt.palm_state_masters.Single(palm_state_master => palm_state_master.state_code == Convert.ToString(ppp.present_state_id));
                Label109.Text = psm.state_desc;
                int state_id1 = Convert.ToInt32(ppp.permanent_state_id);
                psm = rt.palm_state_masters.Single(palm_state_master => palm_state_master.state_code == Convert.ToString(ppp.permanent_state_id));
                Label168.Text = psm.state_desc;

                label0.Text = ppp.permanent_pin_code;
                palm_country_master pcm = new palm_country_master();
                int id = Convert.ToInt32(ppp.present_country_id);
                pcm = rt.palm_country_masters.Single(palm_country_master => palm_country_master.country_code == Convert.ToString(ppp.permanent_country_id));
                Label111.Text = pcm.country_desc;



            }
            catch (InvalidOperationException rtt)
            {

                Label101.Text = "NA";
                Label120.Text = "NA";
                Label110.Text = "NA";

                Label166.Text = "NA";
                Label121.Text = "NA";


                Label109.Text = "NA";

                Label168.Text = "NA";

                label0.Text = "NA";

            }
            try
            {

                palm_ipd_registration pir = new palm_ipd_registration();
                String code = Session["pateint_code"].ToString();
                pir = rt.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
                palm_doctor_employee pde = new palm_doctor_employee();
                pde = rt1.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == pir.consultant_doctor_name);
                Label169.Text = pde.doctor_name;
                Label128.Text = pir.consultant1_doctor_name;
                Label129.Text = pir.consultant2_doctor_name;
                toa.Text = pir.time_admission;
                String room_type = pir.room_type;
                switch (room_type)
                {
                    case "Delux":
                        CheckBox4.Checked = true;
                        break;
                    case "Private _Room":
                        CheckBox5.Checked = true;
                        break;
                    case "Semi Private Room":
                        CheckBox6.Checked = true;
                        break;
                    case "Genral Ward":
                        checkbox0.Checked = true;
                        break;
                    default:
                        break;
                }
            }
            catch (InvalidOperationException rtt)
            {
                Label169.Text = "---";
                Label128.Text = "---";
                Label129.Text = "---";
            }
            try
            {
                palm_pateints_kin_detail ppk = new palm_pateints_kin_detail();
                String code = Session["pateint_code"].ToString();
                ppk = rt.palm_pateints_kin_details.Single(palm_pateints_kin_detail => palm_pateints_kin_detail.pateint_code == Session["pateint_code"].ToString());
                Label132.Text = ppk.kin_next_name;
                lab0.Text = ppk.kin_reln_pateint;
                Label000.Text = ppk.kin_tele_no;
            }
            catch (InvalidOperationException rtt)
            {
                Label132.Text = "---";
                lab0.Text = "---";
                Label000.Text = "---";
            }

            catch (Exception err) { }
            MultiView1.ActiveViewIndex = 2;

        /*}
        catch (Exception err) { }*/
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        Master.room_type.Text = "";
        GridView1.Visible = true;
    }
}