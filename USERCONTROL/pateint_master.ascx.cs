using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERCONTROL_pateint_master : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Grid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataClassesDataContext rt = new DataClassesDataContext();
        palm_pateint_master ppm = new palm_pateint_master();
        palm_pateints_profile ppp = new palm_pateints_profile();
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master=>palm_pateint_master.pateint_code==Grid.SelectedRow.Cells[0].Text);
        ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile=>palm_pateints_profile.pateint_code==Grid.SelectedRow.Cells[0].Text);
        DropDownList14.SelectedValue = ppm.pateient_title;
        TextBox26.Text = ppm.pateient_last_name;
        TextBox27.Text = ppm.pateient_middle_name;
        TextBox3.Text = ppm.pateient_middle_name;
        TextBox28.Text = ppm.father_husbemd_name;
        TextBox29.Text = "";
      
        TextBox31.Text = ppp.age;
        RadioButtonList2.SelectedValue = ppm.gender;
        try
        {
            DropDownList7.SelectedValue = ppm.blood_group;
        }
        catch (ArgumentOutOfRangeException aore)
        { }
        TextBox45.Text = ppp.ref_doc;
        DropDownList8.SelectedValue = ppm.civil_status;
        TextBox22.Text = ppp.permanent_home_no;
        TextBox33.Text = ppp.permanant_build_society;
        TextBox34.Text = ppp.permanant_area;
        TextBox35.Text = ppp.permanant_locality;
        TextBox36.Text = ppp.permanant_town;
       DropDownList9.SelectedIndex = DropDownList9.Items.IndexOf(DropDownList9.Items.FindByText(ppp.permanent_country_id.ToString())) ;
    DropDownList10.SelectedIndex = DropDownList9.Items.IndexOf(DropDownList9.Items.FindByText(ppp.permanent_state_id.ToString()));
        TextBox46.Text = ppp.permanant_district_id;
        TextBox40.Text = ppp.permanant_city;
        TextBox48.Text = ppp.permanant_tal_id;
        TextBox42.Text = ppp.tele_no;
        TextBox43.Text = ppp.mobile_no;
        TextBox44.Text = ppp.present_email_id;
        TextBox32.Text = ppp.permanent_pin_code;
        TextBox1.Text = ppp.present_email_id;
        TextBox2.Text = ppp.present_build_society;
        TextBox4.Text = ppp.present_area;
        TextBox5.Text = ppp.present_locality;
        TextBox6.Text = ppp.present_town;
        DropDownList1.SelectedValue =ppp.present_country_id.ToString();
        DropDownList2.SelectedIndex = DropDownList9.Items.IndexOf(DropDownList9.Items.FindByText(ppp.present_state_id.ToString()));
        TextBox47.Text = ppp.present_district_id;
        TextBox7.Text = ppp.present_city;
        TextBox8.Text = ppp.present_tal;
        TextBox9.Text = ppp.tele_no;
        TextBox10.Text = ppp.mobile_no;
        TextBox11.Text = ppp.present_email_id;
        TextBox12.Text = ppp.permanent_pin_code;
        MultiView1.ActiveViewIndex=1;

    }

    protected void TextBox47_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        DataClassesDataContext rt = new DataClassesDataContext();
        palm_pateint_master ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Grid.SelectedRow.Cells[0].Text);
        palm_pateints_profile ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Grid.SelectedRow.Cells[0].Text);
         ppm.pateient_title= DropDownList14.SelectedValue;
        ppm.pateient_last_name = TextBox26.Text ;
        TextBox27.Text = ppm.pateient_middle_name;
        ppm.pateient_middle_name = TextBox3.Text ;
         ppm.father_husbemd_name= TextBox28.Text ;
        TextBox29.Text = "";
        
        ppp.age = TextBox31.Text ;
        ppm.gender= RadioButtonList2.SelectedValue ;
       ppm.blood_group = DropDownList7.SelectedValue ;
         ppp.ref_doc= TextBox45.Text ;
         ppm.civil_status= DropDownList8.SelectedValue ;
        ppp.permanent_home_no= TextBox22.Text ;
       ppp.permanant_build_society = TextBox33.Text ;
        ppp.permanant_area = TextBox34.Text ;
        ppp.permanant_locality = TextBox35.Text ;
         ppp.permanant_town=TextBox36.Text ;
        ppp.permanent_country_id = DropDownList9.SelectedIndex;
         ppp.permanent_state_id= DropDownList10.SelectedIndex;
        ppp.permanant_district_id = TextBox46.Text ;
         ppp.permanant_city= TextBox40.Text ;
     ppp.permanant_tal_id = TextBox48.Text ;
        ppp.tele_no= TextBox42.Text ;
         ppp.mobile_no= TextBox43.Text ;
         ppp.present_email_id= TextBox44.Text ;
        ppp.permanent_pin_code= TextBox32.Text ;
         ppp.present_email_id= TextBox1.Text;
       ppp.present_build_society = TextBox2.Text ;
        ppp.present_area = TextBox4.Text ;
         ppp.present_locality= TextBox5.Text;
        ppp.present_town = TextBox6.Text ;
        ppp.permanent_country_id= DropDownList1.SelectedIndex ;
        ppp.permanent_state_id = DropDownList2.SelectedIndex;
        ppp.present_district_id=TextBox47.Text;
        ppp.present_city=TextBox7.Text ;
        ppp.present_tal=TextBox8.Text ;
        ppp.tele_no=TextBox9.Text ;
        ppp.mobile_no= TextBox10.Text ;
        ppp.present_email_id=TextBox11.Text ;
        ppp.present_pin_code=TextBox12.Text;
        rt.SubmitChanges();
        Response.Write("<SCRIPT>alert('Record Updated Succesfully')</SCRIPT>");
    }

    protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        Panel7.Enabled = false;
    }
}