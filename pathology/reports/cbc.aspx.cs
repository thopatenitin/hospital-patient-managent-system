using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pathology_reports_cbc : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_pathology_cbc ppc = new palm_pathology_cbc();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emp_code"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (Session["pateint_name"] == null && Session["ref_doctor"] == null && Session["slave_id"] == null)
        {

            Response.Redirect("~/home.aspx");
        }
        if (Session["print"] == null)
        {
            Label7.Text = Session["pateint_name"].ToString();
            Label8.Text = Session["ref_doctor"].ToString();
           // Label11.Text = DateTime.Now.ToString();
        }
        else
        {
            Session["print"] = null;
            palm_doctor_employee pde = new palm_doctor_employee();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == Session["ref_doctor"].ToString());
                Session["ref_doctor"] = pde.doctor_name;
            }catch(InvalidOperationException ioe)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());

                Label2.Text  = ppp.ref_doc;
            }
            label.Text = Session["pateint_name"].ToString();
           
            palm_pathology_cbc ppm = new palm_pathology_cbc();
            ppm = rt.palm_pathology_cbcs.Single(palm_pathology_cbc => palm_pathology_cbc.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label213.Text = ppm.erythrocyte_count.ToString();
            Label214.Text = ppm.heamoglobin.ToString();
            Label215.Text = ppm.p_c_v.ToString();
            Label217.Text = ppm.m_c_v.ToString();
            Label218.Text = ppm.m_c_h.ToString();
            Label219.Text = ppm.m_c_h_c.ToString();
            Label220.Text = ppm.leucocyte_count.ToString();
            Label221.Text = ppm.neutrophils.ToString();
            Label222.Text = ppm.eosinohils.ToString();
            Label223.Text = ppm.basophils.ToString();
            Label224.Text = ppm.lymphocytes.ToString();
            Label225.Text = ppm.monocytes.ToString();
            Label227.Text = ppm.platelete_count.ToString();
            Label226.Text = ppm.platelete_on_smear.ToString();
            Label228.Text = ppm.rbc_morphology.ToString();
            Label229.Text = ppm.wbc_morphology.ToString();
            palm_opd_pathlogy_slave pps = new palm_opd_pathlogy_slave();
            pps = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
            Label1.Text = Convert.ToString(pps.date);
            MultiView1.ActiveViewIndex = 1;
            Session["print"] = null;
        }
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      //  if ((Convert.ToInt32(TextBox10.Text)+ Convert.ToInt32(TextBox10.Text)+ Convert.ToInt32(TextBox10.Text)+ Convert.ToInt32(TextBox10.Text)+ Convert.ToInt32(TextBox10.Text))==100) {
            ppc.path_id = Session["path_id"].ToString();
            ppc.pateint_code = Session["pateint_code"].ToString();
            ppc.slave_id = Convert.ToInt16(Session["slave_id"]);
            ppc.erythrocyte_count = Convert.ToDecimal(TextBox1.Text);
            ppc.heamoglobin = Convert.ToDecimal(TextBox2.Text);
            ppc.p_c_v = Convert.ToDecimal(TextBox3.Text);
            ppc.m_c_v = Convert.ToDecimal(TextBox4.Text);
            ppc.m_c_h = Convert.ToDecimal(TextBox6.Text);
            ppc.m_c_h_c = Convert.ToDecimal(TextBox19.Text);
            ppc.leucocyte_count = Convert.ToDecimal(TextBox8.Text);
            ppc.neutrophils = Convert.ToInt16(TextBox10.Text);
            ppc.eosinohils = Convert.ToInt16(TextBox11.Text);
            ppc.basophils = Convert.ToInt16(TextBox12.Text);
            ppc.lymphocytes = Convert.ToInt16(TextBox13.Text);
            ppc.monocytes = Convert.ToInt16(TextBox14.Text);
            ppc.platelete_count = Convert.ToInt64(TextBox15.Text);
            ppc.platelete_on_smear = TextBox16.Text;
            ppc.rbc_morphology = TextBox20.Text;
            ppc.wbc_morphology = TextBox18.Text;
            rt.palm_pathology_cbcs.InsertOnSubmit(ppc);
            rt.SubmitChanges();
            palm_opd_pathlogy_slave pos = new palm_opd_pathlogy_slave();
            pos = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt32(Session["slave_id"]));
        pos.date = d.Text;
        pos.is_done = "Completed";
            rt.SubmitChanges();
            //print form

            ppc = rt.palm_pathology_cbcs.Single(palm_pathology_cbc => palm_pathology_cbc.slave_id == Convert.ToInt16(Session["slave_id"]));

            label.Text = Session["pateint_name"].ToString();
            Label2.Text = Session["ref_doctor"].ToString();
            Label1.Text = d.Text;
        Label213.Text = Convert.ToString(ppc.erythrocyte_count);
            Label214.Text = Convert.ToString(ppc.heamoglobin);
            Label215.Text = Convert.ToString(ppc.p_c_v);
            Label217.Text = Convert.ToString(ppc.m_c_v);
            Label218.Text = Convert.ToString(ppc.m_c_h);
            Label219.Text = Convert.ToString(ppc.m_c_h_c);
            Label220.Text = Convert.ToString(ppc.leucocyte_count);
            Label221.Text = Convert.ToString(ppc.neutrophils);
            Label222.Text = Convert.ToString(ppc.eosinohils);
            Label223.Text = Convert.ToString(ppc.basophils);
            Label224.Text = Convert.ToString(ppc.lymphocytes);
            Label225.Text = Convert.ToString(ppc.monocytes);
            Label226.Text = Convert.ToString(ppc.platelete_count);
            Label226.Text = ppc.platelete_on_smear;
            Label228.Text = ppc.rbc_morphology;
            Label229.Text = ppc.wbc_morphology;
            MultiView1.ActiveViewIndex = 1;
       /*}
        else { Response.Write("<script>alert('Sum of Neutrophils, Eosinophils,Basophils,Lymphocytes,Monocytes is should not greater then or smmaler then 100%')</script>"); }*/
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Printing Succesfull')</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["back"] == null)
        {
            Response.Redirect("~/pathology/pathology_home.aspx");
        }
        else
        {
            Session["back"] = null;
            Response.Redirect("~/nurse_module/ext_investigation.aspx");
        }
    }
}