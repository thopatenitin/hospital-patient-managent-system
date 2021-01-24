using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using presentation;
public partial class New_Patient : System.Web.UI.Page
{
    presentationlayer obj = new presentationlayer();
    clsbusslayer objb = new clsbusslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
       
            String prn = objb.getprnbll();
            obj.title = DropDownList14.SelectedItem.ToString();
            obj.lastname = TextBox26.Text;
            obj.pateint_code = prn;
            obj.firstname = first_name.Text;
            obj.middlename = m_n.Text;
            obj.fatherhusbendname = TextBox28.Text;
            obj.mothername = TextBox29.Text;

            obj.gender = RadioButtonList2.SelectedValue;
            obj.bloodgroup = DropDownList7.SelectedValue;
            obj.civilstatus = DropDownList8.SelectedValue;

            obj.age = TextBox31.Text;
            obj.present_houseno = TextBox22.Text;
            obj.present_build_societty = TextBox33.Text;
            obj.present_area = TextBox34.Text;
            obj.present_locality = TextBox35.Text;
            obj.present_town = TextBox36.Text;
            obj.present_country_code = Convert.ToInt32(DropDownList9.SelectedValue);

            obj.present_state_id = Convert.ToInt32(DropDownList10.SelectedValue);
            obj.present_district_id = TextBox46.Text;
            obj.present_tal = TextBox48.Text;
            obj.present_city = TextBox40.Text;
            obj.telephone = TextBox42.Text;
            obj.mobile = TextBox43.Text;
            obj.email_id = TextBox44.Text;
            obj.present_pin_code = TextBox32.Text;
            obj.ref_doctor = refdoc.Text;
            obj.is_check_in = "0";
            obj.is_discharge = "0";
            if (CheckBox1.Checked == true)
            {

                obj.houseno = TextBox22.Text;
                obj.build_societty = TextBox33.Text;
                obj.area = TextBox34.Text;
                obj.locality = TextBox35.Text;
                obj.town = TextBox36.Text;
                obj.country_code = Convert.ToInt32(DropDownList9.SelectedValue);

                obj.state_id = Convert.ToInt32(DropDownList10.SelectedValue);
                obj.district_id = TextBox46.Text;
                obj.tal = TextBox48.Text;
                obj.city = TextBox40.Text;
                obj.telephone = TextBox42.Text;
                obj.mobile = TextBox43.Text;
                obj.email_id = TextBox44.Text;
                obj.pin_code = TextBox32.Text;
            }
            else
            {

                obj.houseno = TextBox1.Text;
                obj.build_societty = TextBox2.Text;
                obj.area = TextBox4.Text;
                obj.locality = TextBox5.Text;
                obj.town = TextBox6.Text;
                obj.country_code = Convert.ToInt32(DropDownList1.SelectedValue);

                obj.state_id = Convert.ToInt32(DropDownList2.SelectedValue);
                obj.district_id = TextBox47.Text;
                obj.tal = TextBox7.Text;
                obj.city = TextBox8.Text;
                obj.telephone = TextBox9.Text;
                obj.mobile = TextBox10.Text;
                obj.email_id = TextBox11.Text;
                obj.pin_code = TextBox12.Text;

            }
            objb.new_patient(obj);
            //  Response.Redirect("~/opd_registration.aspx");
            Session["pateint_code"] = prn;
            Session["pateint_name"] = first_name.Text + " " + TextBox26.Text;
            Session["opd_code"] = objb.getopdbll(Session["pateint_code"].ToString());
            if (redirect.SelectedItem.Text == "IPD")
            {
                Response.Redirect("~/nurse_module/IPD/ipdreg.aspx");

            }
            else if (redirect.SelectedItem.Text == "OPD")
            {
                Session["opd_only"] = 1;
                Response.Redirect("~/opd_registration.aspx");

            }
            else { Response.Redirect("~/nurse_module/ext_investigation.aspx"); }
        }
        catch (Exception errr) {
            Response.Write("<script>alert('Fill all mandatory fields'"+errr+")</script>");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        { Panel7.Enabled = false; }
        else { Panel7.Enabled = true; }

       TextBox1.Text= TextBox22.Text;
     TextBox2.Text=    TextBox33.Text;
       TextBox4.Text=  TextBox34.Text;
       TextBox5.Text=  TextBox35.Text;
      TextBox6.Text=   TextBox36.Text;
      DropDownList1.SelectedValue=  DropDownList9.SelectedValue;


TextBox47.Text=TextBox46.Text;
     TextBox7.Text=    TextBox48.Text;
     TextBox8.Text=    TextBox40.Text;
     TextBox9.Text=    TextBox42.Text;
      TextBox10.Text=   TextBox43.Text;
      TextBox11.Text=   TextBox44.Text;
         TextBox12.Text=TextBox32.Text;
    }

    protected void TextBox30_TextChanged(object sender, EventArgs e)
    {

        
  }

    protected void redirect_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (redirect.SelectedValue == "Pathology")
        {
            Panel9.Visible = false;
            Panel10.Visible = true;
            redirect0.SelectedValue = "Pathology";
        }
        else {
            Panel9.Visible = true;
            Panel10.Visible = false;
        }
    }

    protected void save_Click(object sender, EventArgs e)
    {
       /*try
        {*/
            DataClassesDataContext rt = new DataClassesDataContext();
            palm_pateint_master ppm = new palm_pateint_master();
            palm_pateints_profile ppp = new palm_pateints_profile();
            String prn = objb.getprnbll();
            ppm.pateint_code = prn;
            ppp.pateint_code = prn;
            ppm.pateient_first_name = TextBox49.Text;
            ppm.pateient_title = DropDownList15.SelectedValue;
            ppm.pateient_middle_name = name.Text;
            ppm.pateient_last_name = TextBox58.Text;
        
        ppm.is_check_in = "1";
        ppm.is_discharge = "1";
          //  ppm.gender = RadioButtonList3.SelectedValue;
            rt.palm_pateint_masters.InsertOnSubmit(ppm);
            rt.SubmitChanges();
            ppp.age = TextBox52.Text;
        ppp.ref_doc = refdoct.Text;
            rt.palm_pateints_profiles.InsertOnSubmit(ppp);
            rt.SubmitChanges();
            palm_opd_registration opr = new palm_opd_registration();
            opr.opd_code = "OPD" + prn;
            opr.pateint_code = prn;
            opr.ref_doctor = refdoct.Text;
        opr.department_code = "123";
        opr.consultant_doctor_name = refdoct.Text;
            rt.palm_opd_registrations.InsertOnSubmit(opr);

            rt.SubmitChanges();
       
        Session["ref_doctor"] = refdoct.Text;
           opr = rt.palm_opd_registrations.Single(palm_opd_registration=>palm_opd_registration.pateint_code==prn);
        //Session["ref_doctor"] =opr.ref_doctor;
        Session["opd_code"] = opr.opd_code;
            Session["pateint_code"] = prn;
            Response.Redirect("~/nurse_module/ext_investigation.aspx");
     /*  }
        catch (Exception err) {
            Response.Write("<script>alert('Failed Insert Record');</script>");
        }*/
    }

    protected void TextBox49_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox52_TextChanged(object sender, EventArgs e)
    {

    }
}