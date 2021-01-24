using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;
using presentation;
public partial class vitalsign : System.Web.UI.Page
{
    clsbusslayer objb = new clsbusslayer();
    presentationlayer pl = new presentationlayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        //Session["emp_code"] = "PBH201710181";
        // Session["opd_code"] = "OPD20171";
        //Session["pateint_code"] = "20171";
        if(Session["pateint_code"] == null)
        {
            if (Session["opd_code"] == null)
            {
                Response.Redirect("~/doctor_module/doctor.aspx");
            }
        }
        DataTable dt = new DataTable();
        dt=objb.get_vitalparameter("OPD20171");
        DataRow dr;
        int i = 0;
        try
        {
            dr = dt.Rows[i];
       
        TextBox2.Text = Convert.ToString(dr[3]);
            TextBox26.Text= Convert.ToString(dr[4]);
        TextBox5.Text =Convert.ToString(dr[5]);
        TextBox3.Text = Convert.ToString(dr[6]);
        //qt.Text = Convert.ToString(dr[7]);
        TextBox6.Text =Convert.ToString(dr[8]);
        TextBox4.Text = Convert.ToString(dr[9]);
        TextBox28.Text = Convert.ToString(dr[10]);
        TextBox7.Text = Convert.ToString(dr[11]);
        TextBox29.Text = Convert.ToString(dr[12]);
        TextBox32.Text = Convert.ToString(dr[13]);
        TextBox35.Text = Convert.ToString(dr[14]);

        TextBox30.Text = Convert.ToString(dr[15]);


        TextBox33.Text= Convert.ToString(dr[16]);
        TextBox47.Text = Convert.ToString(dr[17]);
        TextBox36.Text = Convert.ToString(dr[18]);
        TextBox42.Text = Convert.ToString(dr[19]);
        TextBox43.Text = Convert.ToString(dr[20]);
        TextBox44.Text = Convert.ToString(dr[21]);
        TextBox45.Text = Convert.ToString(dr[22]);
        }
        catch (Exception rtrt) { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext rt = new DataClassesDataContext();
        palm_opd_genralexamination objp = new palm_opd_genralexamination();
        objp = rt.palm_opd_genralexaminations.Single(palm_opd_genralexamination=>palm_opd_genralexamination.pateint_code==Session["pateint_code"].ToString());
        objp.built = TextBox2.Text;
        objp.pulse = TextBox26.Text;
        objp.bp = TextBox5.Text;
        objp.rr = TextBox3.Text;
       objp.pallor = qt.Text;
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
        rt.SubmitChanges();

    }
}