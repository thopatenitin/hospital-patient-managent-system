using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
using presentation;

public partial class USERCONTROL_opd_registration : System.Web.UI.UserControl
{
    palm_opd_Bill_slave bill_slave = new palm_opd_Bill_slave();
    palm_pateint_master ppm = new palm_pateint_master();
    palm_pateints_profile ppp = new palm_pateints_profile();
    palm_opd_patient pop = new palm_opd_patient();
    palm_doctor_employee pde = new palm_doctor_employee();
    DataClassesDataContext df = new DataClassesDataContext();
    palm_opd_Bill_master bill_master = new palm_opd_Bill_master();
    palm_opd_registration por = new palm_opd_registration();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"].ToString() == "")
        {
            Response.Redirect("~/home.aspx");
        }

        if (Session["opd_only"] != null)
        {
            ppp = df.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
            Label6.Text = ppp.age;
            Label10.Text = ppp.permanant_town;
            ppm = df.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
            Label2.Text = Session["pateint_code"].ToString();
            Label4.Text = Session["pateint_name"].ToString();
            Label8.Text = ppm.gender;
            Label12.Text = ppm.civil_status;
            TextBox21.Text = obj.getopdbll(Session["pateint_code"].ToString());
            MultiView1.ActiveViewIndex = 1;
            DataSet ds = new DataSet();
            Session["opd_only"] =null;
        }

    }

    clsbusslayer obj = new clsbusslayer();
    presentationlayer objp = new presentationlayer();
    protected void Grid_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pateint_code"] = Grid.SelectedRow.Cells[0].Text;
        MultiView1.ActiveViewIndex = 1;
        ppp = df.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Grid.SelectedRow.Cells[0].Text);
        Label6.Text = ppp.age;
        Label10.Text = ppp.permanant_town;

        Label2.Text = Session["pateint_code"].ToString();
        Label4.Text = Grid.SelectedRow.Cells[2].Text;
        Label8.Text = Grid.SelectedRow.Cells[4].Text;
        Label12.Text = Grid.SelectedRow.Cells[5].Text;
        TextBox21.Text = Session["opd_code"].ToString(); ;
        DataSet ds = new DataSet();

      
        // Label4.Text = ds.Rows[0]["pateint_name"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        objp.built = TextBox2.Text;
        objp.pulse = TextBox26.Text;
        objp.bp = TextBox5.Text;
        objp.rr = TextBox3.Text;
        objp.pallor = TextBox27.Text;
        objp.cyanosis = TextBox2.Text;
        objp.clubing = TextBox4.Text;
        objp.peripheral_pulse = TextBox28.Text;
        objp.jvp = TextBox2.Text;
        objp.hjr = TextBox29.Text;
        objp.oedema = TextBox32.Text;
        objp.adenopathy = TextBox2.Text;
        objp.icterus = TextBox30.Text;
        objp.erruptions = TextBox33.Text;
        objp.other = TextBox47.Text;
        objp.cvs = TextBox36.Text;
        objp.r_s = TextBox42.Text;
        objp.p_a = TextBox43.Text;
        objp.cns = TextBox44.Text;
        objp.ps_pv = TextBox45.Text;
        objp.opd_code = Session["opd_code"].ToString(); ;
        objp.ref_doctor = TextBox25.Text;
        objp.department = DropDownList5.SelectedValue;
        objp.doctor_id = DropDownList3.SelectedValue;
       
        objp.con_doctor = DropDownList3.SelectedItem.Text;


        objp.pateint_code = Session["pateint_code"].ToString();
        objp.emp_code = Session["emp_code"].ToString();
        objp.is_check_in = "1";
        
        obj.opdreg(objp);
      

        int cashmemo = obj.getcashmemo();

        por = df.palm_opd_registrations.Single(palm_opd_registration => palm_opd_registration.opd_code == TextBox21.Text);
        bill_master.cash_memo = cashmemo;
        bill_master.pateint_code = por.pateint_code;
        bill_master.opd_code = TextBox21.Text;
        bill_master.cash_memo = cashmemo;
        bill_master.emp_id = por.emp_code;
        bill_master.inserted_by = Session["emp_code"].ToString();
        bill_master.inserted_on = DateTime.Now;
        df.palm_opd_Bill_masters.InsertOnSubmit(bill_master);
        df.SubmitChanges();

        bill_master = df.palm_opd_Bill_masters.Single(palm_opd_Bill_master => palm_opd_Bill_master.cash_memo == cashmemo);
        pde = df.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == bill_master.emp_id);
        bill_slave.opd_bill_id = bill_master.cash_memo;
        bill_slave.charge_name = "Consulting";
        bill_slave.description = "Consulting";
        bill_slave.units = 1;
        bill_slave.amount = pde.consulting_fees;
        df.palm_opd_Bill_slaves.InsertOnSubmit(bill_slave);
        df.SubmitChanges();


        Label00.Text = Convert.ToString(bill_master.cash_memo);
        Label81.Text = bill_master.opd_code;
        palm_department pd = new palm_department();
        pd = df.palm_departments.Single(palm_department => palm_department.department_code == pde.department);
        Label02.Text = pde.doctor_name;
        Label006.Text = pd.department_desc;
        ppm = df.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == bill_master.pateint_code);
        Label01.Text = ppm.pateient_title + " ." + ppm.pateient_last_name + " " + ppm.pateient_first_name + " " + ppm.pateient_middle_name;
        Label84.Text = ppm.gender;
        ppp = df.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == bill_master.pateint_code);
        Label80.Text = ppp.ref_doc;
        Label83.Text = ppp.age;
        Label82.Text = Convert.ToString(bill_master.inserted_on);
        bill_slave = df.palm_opd_Bill_slaves.Single(palm_opd_Bill_slave => palm_opd_Bill_slave.opd_bill_id == bill_master.cash_memo);
        Label86.Text = Convert.ToString(bill_slave.amount);
        Label001.Text = Convert.ToString(bill_slave.amount);
        Label90.Text = Convert.ToString(bill_slave.amount);
        Label91.Text = Convert.ToString(bill_slave.amount);

        MultiView1.ActiveViewIndex = 3;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        presentationlayer pl = new presentationlayer();
        pl.pateint_code = TextBox22.Text;
        clsbusslayer objb = new clsbusslayer();
        DataTable dt = new DataTable();
        dt = objb.getpateint_byprn(pl);
        if (dt == null && dt.Rows[0][0] == null)
        {
            Response.Write("<script>alert('Record Not Found')</script>");
        }
        else {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Panel13.Visible = false;
        }
        else
        {
            Panel13.Visible = true;
        }
    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }




 
}
