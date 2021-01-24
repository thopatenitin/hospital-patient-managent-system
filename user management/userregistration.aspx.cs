using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using presentation;
public partial class user_management_userregistration : System.Web.UI.Page
{
    presentationlayer objp = new presentationlayer();
    clsbusslayer objb = new clsbusslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        objp.emp_code = objb.getemployee_code();
        objp.employee_code= objb.getemployee_code();
        objp.title = DropDownList15.SelectedValue;
        objp.fullname = TextBox56.Text;
        objp.department = DropDownList16.SelectedValue;
        objp.role = DropDownList17.SelectedValue;
        if (DropDownList17.SelectedValue == "doctor")
        {
            objp.consulting_fees = Convert.ToInt32(TextBox65.Text);
            objb.doctorreg(objp);
        }
        objp.mobile = TextBox57.Text;
       objp.emp_code = objb.getemployee_code();
     
            objp.dateofbirth = Convert.ToDateTime(TextBox59.Text+" 00:00:00");
       
      
        objp.gender = DropDownList18.SelectedValue;
        objp.civilstatus = DropDownList19.SelectedValue;
        objp.telephone = TextBox60.Text;
        objp.email_id = TextBox58.Text;
        objb.employeereg(objp);

       
        objp.present_houseno = TextBox22.Text;
        objp.present_build_societty = TextBox33.Text;
        objp.present_area = TextBox62.Text;
        objp.present_locality = TextBox35.Text;
        objp.present_town = TextBox36.Text;
        objp.present_country_code = Convert.ToInt32(DropDownList9.SelectedValue);
        objp.present_state_id =Convert.ToInt32( DropDownList10.Text);
        objp.present_district_id =TextBox63.Text;
        objp.present_city = TextBox40.Text;
        objp.present_tal = TextBox55.Text;
        objp.present_pin_code = TextBox32.Text;
        if (CheckBox1.Checked == true)

        {
            objp.houseno = TextBox22.Text;
            objp.build_societty = TextBox33.Text;
            objp.locality = TextBox35.Text;
            objp.town = TextBox36.Text;
            objp.area = TextBox62.Text;
            objp.country_code = Convert.ToInt32(DropDownList9.SelectedValue);
            objp.state_id = Convert.ToInt32(DropDownList10.Text);
            objp.district_id = TextBox63.Text;
            objp.city = TextBox40.Text;
            objp.tal = TextBox55.Text;
            objp.pin_code = TextBox32.Text;
        }
        else
        {
            objp.houseno = TextBox45.Text;
            objp.build_societty = TextBox46.Text;
            objp.area = TextBox47.Text;
            objp.locality = TextBox48.Text;
            objp.town = TextBox49.Text;
            objp.country_code = Convert.ToInt32(DropDownList12.SelectedValue);
            objp.state_id = Convert.ToInt32(DropDownList13.Text);
            objp.district_id = TextBox64.Text;
            objp.city = TextBox50.Text;
            objp.tal = TextBox61.Text;
            objp.pin_code = TextBox54.Text;
        }
        
        objb.emp_address(objp);
        Response.Write("<SCRIPT>alert('User Added Succesfully')</SCRIPT>");

    }




    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Panel8.Enabled = false;
            TextBox45.Text = TextBox22.Text;
            TextBox46.Text = TextBox33.Text;
            TextBox47.Text = TextBox35.Text;
            TextBox48.Text = TextBox36.Text;
            TextBox49.Text = TextBox36.Text;
            DropDownList12.SelectedValue = DropDownList9.SelectedValue;
            DropDownList13.Text = DropDownList10.SelectedValue;
            TextBox64.Text= TextBox63.Text;
            TextBox50.Text = TextBox40.Text;
            TextBox61.Text = TextBox55.Text;
            TextBox54.Text = TextBox32.Text;
        }
        else { Panel8.Enabled = true; }
    }
    protected void TextBox47_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList17.SelectedValue == "doctor")
        {
            Label80.Visible = true;
            TextBox65.Visible = true; 
        }
        else {

            Label80.Visible = false;
            TextBox65.Visible=false;
        }
    }
}