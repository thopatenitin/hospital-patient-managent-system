using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using System.Data.SqlClient;
public partial class doctor_module_in_patient_investigation : System.Web.UI.Page
{
    DataClassesDataContext rt = new DataClassesDataContext();
    clsbusslayer obj = new clsbusslayer();
    IPDDataContext rt1 = new IPDDataContext();
    palm_ipd_pathlogy pop = new palm_ipd_pathlogy();
    palm_ipd_pathlogy_slave pop1 = new palm_ipd_pathlogy_slave();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet dt1 = new DataSet();
        //
        dt1 = obj.investigation_byprn(Session["prn"].ToString());
        if (dt1.Tables[0].Rows.Count == 0)
        {
            String path_id = obj.getpath_id_ipd();
            pop.path_id = path_id;
            if (Session["external"] == null)
            {
                pop.ref_by = Convert.ToString(Session["emp_code"]);
            }
            else
            {
                pop.ref_by = Convert.ToString(Session["external"]);
            }
            pop.prn = Convert.ToString(Session["prn"]);
            pop.patient_code = Convert.ToString(Session["pateint_code"]);
            pop.inserted_by = Convert.ToString(Session["emp_code"]);
            pop.inserted_on = TextBox3.Text;
            pop.is_done = "Not Completed";
            rt1.palm_ipd_pathlogies.InsertOnSubmit(pop);
            rt1.SubmitChanges();
            pop = rt1.palm_ipd_pathlogies.Single(palm_ipd_pathlogy => palm_ipd_pathlogy.prn == Convert.ToString(Session["prn"]));
            pop1.path_id = pop.path_id; ;
            pop1.test_name = DropDownList1.SelectedItem.Text;
            pop1.description = TextBox2.Text;
            pop1.date = TextBox3.Text ;
            pop1.is_done = "Not Completed";
            ; rt1.palm_ipd_pathlogy_slaves.InsertOnSubmit(pop1);
            rt1.SubmitChanges();
        }
        else
        {
            pop1.path_id = dt1.Tables[0].Rows[0]["path_id"].ToString();
            pop1.test_name = DropDownList1.SelectedItem.Text;
            pop1.description = TextBox2.Text;
            pop1.date = TextBox3.Text;
            pop1.is_done = "Not Completed";
            ; rt1.palm_ipd_pathlogy_slaves.InsertOnSubmit(pop1);
            rt1.SubmitChanges();
        }

        // bill section
        DataSet dt = new DataSet();
        dt = obj.getbillstatus_ipd(Session["prn"].ToString());
        palm_ipd_pathlogy_billm pob = new palm_ipd_pathlogy_billm();
        palm_IPD_pathlogy_bill pos = new palm_IPD_pathlogy_bill();
        pathology_test_report ptr = new pathology_test_report();
        dt1 = obj.pathologybill_byipd(Session["prn"].ToString());
        if (dt.Tables[0].Rows.Count == 0)
        {

            string cashmemo = obj.getlast_pathology_cashmemo_ipd();
            pob.memo = cashmemo;
            pob.prn = Session["prn"].ToString();
            pob.patient_code = Session["pateint_code"].ToString();
            pob.inserted_by = Session["emp_code"].ToString();
            pob.inserted_on = DateTime.Now;
            rt1.palm_ipd_pathlogy_billms.InsertOnSubmit(pob);
            rt1.SubmitChanges();

            //pathology save

            pos.memo = cashmemo;
            pos.patient_code = Session["pateint_code"].ToString();
            pos.test_name = DropDownList1.SelectedItem.Text;
            ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
            pos.charge = ptr.test_rate;
            rt1.palm_IPD_pathlogy_bills.InsertOnSubmit(pos);
            rt1.SubmitChanges();
        }
        else
        {
            int i = dt.Tables[0].Rows.Count - 1;
            if (dt.Tables[0].Rows[i]["total"].ToString() != "")
            {
                string cashmemo = obj.getlast_pathology_cashmemo_ipd();
                pob.memo = cashmemo;
                pob.prn = Session["prn"].ToString();
                pob.patient_code = Session["pateint_code"].ToString();
                pob.inserted_by = Session["emp_code"].ToString();
                pob.inserted_on = DateTime.Now;
                rt1.palm_ipd_pathlogy_billms.InsertOnSubmit(pob);
                rt1.SubmitChanges();

                //pathology save

                pos.memo = cashmemo;
                pos.patient_code = Session["pateint_code"].ToString();
                pos.test_name = DropDownList1.SelectedItem.Text;
                ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
                pos.charge = ptr.test_rate;
                rt1.palm_IPD_pathlogy_bills.InsertOnSubmit(pos);
                rt1.SubmitChanges();
            }

            else
            {
                // pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm => palm_opd_pathlogy_billm.opd_code == Session["opd_code"].ToString());
                DataSet ds = new DataSet();
                ds = obj.getactivememo_ipd(Session["prn"].ToString());
                pos.memo = ds.Tables[0].Rows[0]["memo"].ToString();
                pos.patient_code = Session["pateint_code"].ToString();
                pos.test_name = DropDownList1.SelectedItem.Text;
                ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
                pos.charge = ptr.test_rate;
                rt1.palm_IPD_pathlogy_bills.InsertOnSubmit(pos);
                rt1.SubmitChanges();

            }

        }
        GridView1.DataBind();
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}