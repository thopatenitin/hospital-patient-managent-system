using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERCONTROL_profile : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataClassesDataContext rt = new DataClassesDataContext();
        employee_master em = new employee_master();
        employee_registration er = new employee_registration();
        em = rt.employee_masters.Single(employee_master => employee_master.emp_code == Session["emp_code"].ToString());
        er = rt.employee_registrations.Single(employee_registration => employee_registration.employee_code == Session["emp_code"].ToString());

        DropDownList15.SelectedValue = er.title;
        TextBox56.Text = er.full_name;
        DropDownList16.SelectedValue = er.department;
        DropDownList17.SelectedValue = er.role;
        TextBox57.Text = er.mobile_no;
        TextBox58.Text = er.email_id;
        TextBox59.Text = Convert.ToString(er.date_of_birth);
        DropDownList18.SelectedValue = er.gender;
        DropDownList19.SelectedValue = er.civil_status;
        TextBox60.Text = er.tele_no;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataClassesDataContext rt = new DataClassesDataContext();
        employee_master em = new employee_master();
        employee_registration er = new employee_registration();
        em = rt.employee_masters.Single(employee_master=>employee_master.emp_code==Session["emp_code"].ToString());
        er = rt.employee_registrations.Single(employee_registration=>employee_registration.employee_code==Session["emp_code"].ToString());

         er.title= DropDownList15.SelectedValue ;
       er.full_name = TextBox56.Text ;
        er.department= DropDownList16.SelectedValue ;
        er.role= DropDownList17.SelectedValue ;
        er.mobile_no = TextBox57.Text ;
         er.email_id= TextBox58.Text ;
         er.date_of_birth= Convert.ToDateTime(TextBox59.Text);
         er.gender= DropDownList18.SelectedValue ;
        er.civil_status = DropDownList19.SelectedValue ;
        er.tele_no = TextBox60.Text ;
        rt.SubmitChanges();
        Response.Write("<script>alert('Profile Updated Succesfully')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        DataClassesDataContext rt = new DataClassesDataContext();
        employee_master em = new employee_master();
        em = rt.employee_masters.Single(employee_master=>employee_master.emp_code==Session["emp_code"].ToString() && employee_master.user_password==TextBox61.Text);
        if (em.role == null)
        {
            Response.Write("<script>alert('Entered password is incorrect')</script>");
        }
        else {
            em.user_password = TextBox62.Text;
            Response.Write("<script>alert('password chenged succesfully')</script>");
            Panel2_CollapsiblePanelExtender.Collapsed = true;
        }
    }
}