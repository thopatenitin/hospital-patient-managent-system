using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using presentation;
using BLL;
public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        presentationlayer obj = new presentationlayer();
        clsbusslayer objb = new clsbusslayer();
        obj.title = DropDownList14.SelectedItem.ToString();
        obj.lastname = TextBox26.Text;
        obj.firstname = TextBox27.Text;
        obj.middlename = TextBox3.Text;
        obj.fatherhusbendname = TextBox28.Text;
        obj.mothername = TextBox29.Text;
        obj.dateofbirth = Convert.ToDateTime(TextBox30.Text);
     
        obj.gender = RadioButtonList2.SelectedValue;
        obj.bloodgroup = DropDownList7.SelectedValue;
        obj.civilstatus = DropDownList8.SelectedValue;


        obj.houseno = TextBox22.Text;
        obj.build_societty = TextBox33.Text;
        obj.area = TextBox34.Text;
        obj.locality = TextBox35.Text;
        obj.town = TextBox36.Text;
        obj.country_code =Convert.ToInt32( DropDownList12.SelectedValue);

        obj.state_id = Convert.ToInt32(DropDownList9.SelectedValue);
        obj.district_id = DropDownList10.SelectedValue;
        obj.tal = DropDownList11.SelectedValue;
        obj.city = TextBox40.Text;
        obj.telephone = TextBox42.Text;
        obj.mobile = TextBox43.Text;
        obj.email_id = TextBox44.Text;
        obj.pin_code = TextBox32.Text;
        objb.new_patient(obj); ;

    }
}