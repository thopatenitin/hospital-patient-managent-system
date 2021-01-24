using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using presentation;
public partial class nurse_module_new_pateint : System.Web.UI.Page
{
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            presentationlayer obj = new presentationlayer();
            clsbusslayer objb = new clsbusslayer();
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
        catch (Exception errr)
        {
            Response.Write("<script>alert('Fill all mandatory fields'" + errr + ")</script>");
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

        TextBox1.Text = TextBox22.Text;
        TextBox2.Text = TextBox33.Text;
        TextBox4.Text = TextBox34.Text;
        TextBox5.Text = TextBox35.Text;
        TextBox6.Text = TextBox36.Text;
        DropDownList1.SelectedValue = DropDownList9.SelectedValue;


        TextBox47.Text = TextBox46.Text;
        TextBox7.Text = TextBox48.Text;
        TextBox8.Text = TextBox40.Text;
        TextBox9.Text = TextBox42.Text;
        TextBox10.Text = TextBox43.Text;
        TextBox11.Text = TextBox44.Text;
        TextBox12.Text = TextBox32.Text;
    }

    protected void TextBox30_TextChanged(object sender, EventArgs e)
    {


    }
}