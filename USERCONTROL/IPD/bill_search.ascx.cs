using System;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using presentation;
using System.Text;
using System.Linq;
public partial class USERCONTROL_bill_search : System.Web.UI.UserControl
{
    DataClassesDataContext rt = new DataClassesDataContext();
    clsbusslayer objb = new clsbusslayer();
    presentationlayer pl = new presentationlayer();
    palm_pateint_master ppm = new palm_pateint_master();
    palm_opd_pathlogy pop = new palm_opd_pathlogy();
    palm_opd_pathlogy_billm pob = new palm_opd_pathlogy_billm();
    protected void Page_Load(object sender, EventArgs e)
    {
       
      
        if (Session["ext_bill"] != null) {
            Panel2.Visible = false;
            Panel16.Visible = true;
            TextBox1.Text = Session["pateint_code"].ToString();
            Session["ext_bill"] = null;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["pateint_code"] = TextBox1.Text;

        /* try
         {*/
       

        //  BindData();
        Panel16.Visible = true;
        Panel2.Visible = false;
       
    }

 


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    private void BindData()
    {
        pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm=>palm_opd_pathlogy_billm.memo== Session["memo"].ToString());

        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = objb.getpathology_billby_pateint_code( Session["memo"].ToString());
        ds1 = objb.getpathology_totalbillby_pateint_code( Session["memo"].ToString());
        htmlTable.Append("<table style='width:100%' border=2px>");
        htmlTable.Append("<tr ><th>Sr.No.</th><th>Investigation</th><th>Amount</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
        

            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + Convert.ToInt32(i + 1) + "</td>");

                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["test_name"] + "</td>");

                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["charge"] + "</td>");

                    htmlTable.Append("</tr>");
                }
      
                htmlTable.Append("</table>");
                htmlTable.Append("</br>");
                htmlTable.Append("<table>");
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'> <table  width=100% >");
                htmlTable.Append("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>&nbsp;</td>");
                htmlTable.Append("<td>Total</td><td>" + ds1.Tables[0].Rows[0]["total"] + "</td></tr>");
                htmlTable.Append("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td></td>");
                htmlTable.Append("<td>Advance</td><td>"+pob.advanced+"</td></tr>");
                htmlTable.Append("<tr><td> Thank You !&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td></td>");
                htmlTable.Append("<td>Balence Total</td><td>" +pob.balence + "</td></tr>");
                htmlTable.Append("<tr><td><B>Emergency : +91-22-27668119<br/>Email:hospitalpalmbeach28@gmail.com</B><br/>Economic-class Professional Treatment With Care</td><td width='200px'></td><td colspan='2' style='vertical-align:bottom; '>Received Signature</td></tr>");
                htmlTable.Append("</table></td>");
                /*  htmlTable.Append("<td align='center'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total</td>");
                  htmlTable.Append("<td align='center'><asp:Label ID=''label1 runat='server'>"+ds1.Tables[0].Rows[0]["total"]+"</asp:Label></td>");*/

                htmlTable.Append("</tr>");
                htmlTable.Append("</table>");
                PlaceHolder2.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }

    }

    private void BindData1()
    {

        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet trial = new DataSet();
        ds1 = objb.getpathology_totalbillby_pateint_code( Session["memo"].ToString());
        StringBuilder htmlTable1 = new StringBuilder();
        ds = objb.getpathology_billby_pateint_code( Session["memo"].ToString());
    
        htmlTable1.Append("<table style='width:100%' border=2px>");
        htmlTable1.Append("<tr ><th>Sr.No.</th><th>Investigation</th><th>Amount</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            
            Label118.Text = ds1.Tables[0].Rows[0]["total"].ToString();

            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable1.Append("<tr>");
                    htmlTable1.Append("<td align='center'>" + Convert.ToInt32(i + 1) + "</td>");

                    htmlTable1.Append("<td align='center'>" + ds.Tables[0].Rows[i]["test_name"] + "</td>");

                    htmlTable1.Append("<td align='center'>" + ds.Tables[0].Rows[i]["charge"] + "</td>");

                    htmlTable1.Append("</tr>");
                }
                htmlTable1.Append("<tr>");
                htmlTable1.Append("<td align='center' colspan='4'><hr/></td>");
                htmlTable1.Append("</tr>");                /*  htmlTable1.Append("<td align='center'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total</td>");
                  htmlTable1.Append("<td align='center'><asp:Label ID=''label1 runat='server'>"+ds1.Tables[0].Rows[0]["total"]+"</asp:Label></td>");*/

                htmlTable1.Append("</tr>");
                htmlTable1.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = htmlTable1.ToString() });
            }
            else
            {
                htmlTable1.Append("<tr>");
                htmlTable1.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable1.Append("</tr>");
            }
        }

    }


    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        DataSet ds1 = new DataSet();
        ds1 = objb.getpathology_totalbillby_pateint_code(Session["memo"].ToString());
        int total = Convert.ToInt32(ds1.Tables[0].Rows[0]["Total"]);
        if (TextBox2.Text == "")
        {
            TextBox3.Text = Convert.ToString(total - Convert.ToInt32(0));
        }
        else {
            TextBox3.Text = Convert.ToString(total - Convert.ToInt32(TextBox2.Text));
        }
        BindData1();
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm=>palm_opd_pathlogy_billm.memo== Session["memo"].ToString());
        DataSet ds1 = new DataSet();
        ds1 = objb.getpathology_totalbillby_pateint_code(Session["memo"].ToString());
        int total = Convert.ToInt32(ds1.Tables[0].Rows[0]["Total"]);
        pob.total = total;
        if (TextBox2.Text == "")
        {
            pob.advanced = Convert.ToInt32(0);
            pob.balence = Convert.ToInt32(ds1.Tables[0].Rows[0]["Total"]);
        }
        else {
           
            pob.advanced = Convert.ToDecimal(TextBox2.Text);
            pob.balence = Convert.ToDecimal(TextBox3.Text);
        }
        pob.inserted_on = d.Text;
        rt.SubmitChanges();
        pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm => palm_opd_pathlogy_billm.memo == Session["memo"].ToString());
        if (pob.balence == 0)
        {
            pob.Status = "Paid";
        }
        else if (pob.balence<pob.total)
        {
            pob.Status = "Pending";
        }
        else 
        {
            pob.Status = "Unpaid";
        }
        rt.SubmitChanges();
        BindData();
        Panel23.Visible = false;
        Label124.Text = pob.inserted_on;
        Panel24.Visible = true;
        printbutton.Visible = true;
        Session["memo"] = null;
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {try
        {
            ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());
            String memo = Convert.ToString(GridView1.SelectedRow.Cells[0].Text);
            Session["memo"] = memo;
            Panel16.Visible = false;
            Panel17.Visible = true;
            Label112.Text = Label126.Text = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
            //Label115.Text = d.Text;
            pop = rt.palm_opd_pathlogies.Single(palm_opd_pathlogy => palm_opd_pathlogy.patient_code == Session["pateint_code"].ToString());
           
            String ref_doctor = pop.ref_by;
        }
        catch (NullReferenceException rtt)
        {
            Response.Redirect("~/login.aspx");
        }
        palm_doctor_employee pdd = new palm_doctor_employee();
        try
        {
            pdd = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == pop.ref_by);
            Label113.Text = pdd.doctor_name;
        }
        catch (Exception er)
        { Label113.Text = pop.ref_by; }
        pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm => palm_opd_pathlogy_billm.memo == Session["memo"].ToString());
        Label114.Text = pob.memo;
        Label122.Text = pob.memo;
        Label126.Text = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
       
        Label128.Text = pdd.doctor_name;
        Label124.Text = Convert.ToString(pob.inserted_on);
        TextBox2.Text = Convert.ToString(pob.advanced);
        TextBox3.Text = Convert.ToString(pob.balence);

        BindData1();
        /*  }
          catch (InvalidOperationException ioe)
          {Label134.Text="No Record Found";
          }*/
        DataClassesDataContext df = new DataClassesDataContext();
        palm_opd_Bill_master bill_master = new palm_opd_Bill_master();
        palm_opd_Bill_slave bill_slave = new palm_opd_Bill_slave();
        palm_doctor_employee pde = new palm_doctor_employee();
        try
        {
            bill_master = df.palm_opd_Bill_masters.Single(palm_opd_Bill_master => palm_opd_Bill_master.pateint_code == TextBox1.Text);
            Label00.Text = Convert.ToString(bill_master.cash_memo);
            palm_pateints_profile ppp = new palm_pateints_profile();
            Label81.Text = bill_master.opd_code;
            pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == bill_master.emp_id);
            palm_department pd = new palm_department();
            pd = df.palm_departments.Single(palm_department => palm_department.department_code == pde.department);
            Label02.Text = pde.doctor_name;
            label9.Text = pd.department_desc;
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
        }
        catch (Exception rt1) { }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
       // GridView1.DataBind();
    }



    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}