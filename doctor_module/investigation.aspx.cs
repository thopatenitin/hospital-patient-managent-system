using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class doctor_module_investigation : System.Web.UI.Page
{ clsbusslayer obj = new clsbusslayer();
    DataClassesDataContext rt = new DataClassesDataContext();
    palm_opd_pathlogy pop = new palm_opd_pathlogy();
    palm_opd_pathlogy_slave pop1 = new palm_opd_pathlogy_slave();
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
        if(!Page.IsPostBack)
            BindData();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet dt1 = new DataSet();
        dt1 = obj.investigation_byopd(Session["opd_code"].ToString());
        if (dt1.Tables[0].Rows.Count == 0)
        {
            String path_id = obj.getpath_id();
            pop.path_id = path_id;
            if (Session["external"] == null)
            {
                pop.ref_by = Convert.ToString(Session["emp_code"]);
            }
            else
            {
                pop.ref_by = Convert.ToString(Session["external"]);
            }
            pop.opd_code = Convert.ToString(Session["opd_code"]);
            pop.patient_code = Convert.ToString(Session["pateint_code"]);
            pop.inserted_by = Convert.ToString(Session["emp_code"]);
            pop.inserted_on = DateTime.Today;
            pop.is_done = "Not Completed";
            rt.palm_opd_pathlogies.InsertOnSubmit(pop);
            rt.SubmitChanges();
            pop = rt.palm_opd_pathlogies.Single(palm_opd_pathlogy => palm_opd_pathlogy.opd_code == Convert.ToString(Session["opd_code"]));
            pop1.path_id = pop.path_id; ;
            pop1.test_name = DropDownList1.SelectedItem.Text;
            pop1.description = TextBox2.Text;
            pop1.date = DateTime.Now.ToString(); ;
            pop1.is_done = "Not Completed";
            ; rt.palm_opd_pathlogy_slaves.InsertOnSubmit(pop1);
            rt.SubmitChanges();
        }
        else
        {
            pop1.path_id = dt1.Tables[0].Rows[0]["path_id"].ToString();
            pop1.test_name = DropDownList1.SelectedItem.Text;
            pop1.description = TextBox2.Text;
            pop1.date = DateTime.Now.ToString();
            pop1.is_done = "Not Completed";
            ; rt.palm_opd_pathlogy_slaves.InsertOnSubmit(pop1);
            rt.SubmitChanges();
        }

        // bill section
        DataSet dt = new DataSet();
        dt = obj.getbillstatus(Session["opd_code"].ToString());
        palm_opd_pathlogy_billm pob = new palm_opd_pathlogy_billm();
        palm_opd_pathlogy_bill pos = new palm_opd_pathlogy_bill();
        pathology_test_report ptr = new pathology_test_report();
        dt1 = obj.pathologybill_byopd(Session["opd_code"].ToString());
        if (dt.Tables[0].Rows.Count == 0)
        {

            string cashmemo = obj.getlast_pathology_cashmemo();
            pob.memo = cashmemo;
            pob.opd_code = Session["opd_code"].ToString();
            pob.patient_code = Session["pateint_code"].ToString();
            pob.inserted_by = Session["emp_code"].ToString();
            pob.inserted_on = DateTime.Now.ToString();
            rt.palm_opd_pathlogy_billms.InsertOnSubmit(pob);
            rt.SubmitChanges();

            //pathology save

            pos.memo = cashmemo;
            pos.patient_code = Session["pateint_code"].ToString();
            pos.test_name = DropDownList1.SelectedItem.Text;
            ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
            pos.charge = ptr.test_rate;
            rt.palm_opd_pathlogy_bills.InsertOnSubmit(pos);
            rt.SubmitChanges();
        }
        else
        {
            int i = dt.Tables[0].Rows.Count - 1;
            if (dt.Tables[0].Rows[i]["total"].ToString() != "")
            {
                string cashmemo = obj.getlast_pathology_cashmemo();
                pob.memo = cashmemo;
                pob.opd_code = Session["opd_code"].ToString();
                pob.patient_code = Session["pateint_code"].ToString();
                pob.inserted_by = Session["emp_code"].ToString();
                pob.inserted_on = DateTime.Now.ToString();
                rt.palm_opd_pathlogy_billms.InsertOnSubmit(pob);
                rt.SubmitChanges();

                //pathology save

                pos.memo = cashmemo;
                pos.patient_code = Session["pateint_code"].ToString();
                pos.test_name = DropDownList1.SelectedItem.Text;
                ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
                pos.charge = ptr.test_rate;
                rt.palm_opd_pathlogy_bills.InsertOnSubmit(pos);
                rt.SubmitChanges();
            }

            else
            {
                // pob = rt.palm_opd_pathlogy_billms.Single(palm_opd_pathlogy_billm => palm_opd_pathlogy_billm.opd_code == Session["opd_code"].ToString());
                DataSet ds = new DataSet();
                ds = obj.getactivememo(Session["opd_code"].ToString());
                pos.memo = ds.Tables[0].Rows[0]["memo"].ToString();
                pos.patient_code = Session["pateint_code"].ToString();
                pos.test_name = DropDownList1.SelectedItem.Text;
                ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
                pos.charge = ptr.test_rate;
                rt.palm_opd_pathlogy_bills.InsertOnSubmit(pos);
                rt.SubmitChanges();

            }
           
        }
        BindData();
    } 
    private void BindData()
    {

        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        ds = obj.getinvestigation_byopdcode(Session["opd_code"].ToString());

        htmlTable.Append("<table style='width:100%' border=1px>");
        htmlTable.Append("<tr ><th>Investigation</th><th>remark</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["test_name"] + "</td>");
                    htmlTable.Append("<td align='center'>" + ds.Tables[0].Rows[i]["description"] + "</td>");
                  
                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }

    }

}