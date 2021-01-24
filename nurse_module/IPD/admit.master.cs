using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IPD_admit : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (Session["pateint_code"] == null)
        {
            if (Session["opd_code"] == null)
            {
                Response.Redirect("~/doctor_module/doctor.aspx");
            }
        }
        Label63.Text = Session["pateint_code"].ToString();
        Label65.Text = Session["pateint_name"].ToString();
     
    }
   public DropDownList department
    { get { return DropDownList2; }
    set { DropDownList2 = value; }
    }
    public DropDownList departmentd
    {
        get { return DropDownList3; }
        set { DropDownList3 = value; }
    }
    public TextBox doctor1
    {
        get { return TextBox5; }
        set { TextBox5 = value; }
    }
    public TextBox doctor2
    {
        get { return TextBox6; }
        set { TextBox6 = value; }
    }
    public TextBox room_type
    {
        get { return TextBox1; }
        set { TextBox1 = value; }
    }
    public TextBox room_no
    {
        get { return TextBox2; }
        set { TextBox2 = value; }
    }
    public TextBox bed_no
    {
        get { return TextBox3; }
        set { TextBox3 = value; }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["department"] = DropDownList2.SelectedItem.Text;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["con_doctor1"] = DropDownList3.SelectedItem.Text;
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        Session["con_doctor2"] = TextBox5.Text;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Session["room_type"] = TextBox1.Text;

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Session["room_no"] = TextBox2.Text;
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        Session["con_doctor3"] = TextBox6.Text;
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        Session["bed_no"] = TextBox3.Text;
    }
}
