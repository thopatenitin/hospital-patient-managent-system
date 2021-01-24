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

public partial class USERCONTROL_IPD_ipd_investigation : System.Web.UI.UserControl
{
    clsbusslayer obj = new clsbusslayer();
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

        // BindData();
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
                pop.inserted_on = DateTime.Now;
                pop.is_done = "Not Completed";
                rt.palm_opd_pathlogies.InsertOnSubmit(pop);
                rt.SubmitChanges();
                pop = rt.palm_opd_pathlogies.Single(palm_opd_pathlogy => palm_opd_pathlogy.opd_code == Convert.ToString(Session["opd_code"]));
                pop1.path_id = pop.path_id; ;
                pop1.test_name = DropDownList1.SelectedItem.Text;
                pop1.description = TextBox2.Text;
                pop1.date = DateTime.Now.ToString();
                pop1.is_done = "Not Completed";
                rt.palm_opd_pathlogy_slaves.InsertOnSubmit(pop1);
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
            //BindData();
            GridView1.DataBind();
        }
        /* private void BindData()
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
     */

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["ext_bill"] = 1;
            String code = Session["pateint_code"].ToString();
            Response.Redirect("~/bill_module/bill_master.aspx");

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["back"] = "~/nurse_module/ext_investigation.aspx";
            palm_opd_pathlogy_slave pops = new palm_opd_pathlogy_slave();
            pops = rt.palm_opd_pathlogy_slaves.Single(palm_opd_pathlogy_slave => palm_opd_pathlogy_slave.slave_id == Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text));
            Session["pateint_code"] = GridView1.SelectedRow.Cells[1].Text;
            palm_pateint_master ppm = new palm_pateint_master();
            ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());

            Session["Pateint_name"] = ppm.pateient_title + " " + ppm.pateient_first_name + " " + ppm.pateient_last_name;
            Session["test_asked"] = GridView1.SelectedRow.Cells[5].Text;
            pathology_test_report ptr = new pathology_test_report();
            ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_name == GridView1.SelectedRow.Cells[2].Text);
            Session["path_id"] = pops.path_id;
            palm_doctor_employee pde = new palm_doctor_employee();
            try
            {
                pde = rt.palm_doctor_employees.Single(palm_doctor_employee => palm_doctor_employee.emp_code == GridView1.SelectedRow.Cells[3].Text);

                Session["ref_doctor"] = "Dr." + pde.doctor_name;
            }
            catch (InvalidOperationException rt1)
            {
                palm_pateints_profile ppp = new palm_pateints_profile();
                ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile => palm_pateints_profile.pateint_code == Session["pateint_code"].ToString());
                Session["ref_doctor"] = ppp.ref_doc; ;
            }
            Session["slave_id"] = GridView1.SelectedRow.Cells[0].Text;

            String test_code = ptr.test_code;
            switch (test_code)
            {
                case "lft":
                    Response.Redirect("~/pathology/reports/LFT.aspx");
                    break;
                case "cbc":
                    Response.Redirect("~/pathology/reports/cbc.aspx");
                    break;
                case "ur":
                    Response.Redirect("~/pathology/reports/urine_routine.aspx");
                    break;
                case "bg":
                    Response.Redirect("~/pathology/reports/blood_group.aspx");
                    break;
                case "crp":
                    Response.Redirect("~/pathology/reports/crp.aspx");
                    break;
                case "ua":
                    Response.Redirect("~/pathology/reports/uric_acid.aspx");
                    break;
                case "hba1c":
                    Response.Redirect("~/pathology/reports/hb1ac.aspx");
                    break;
                case "sr":
                    Response.Redirect("~/pathology/reports/stool_examination.aspx");
                    break;
                case "mp":
                    Response.Redirect("~/pathology/reports/mp.aspx");
                    break;
                case "hbsag":
                    Response.Redirect("~/pathology/reports/hbsag.aspx");
                    break;
                case "Dengue IgM":
                    Response.Redirect("~/pathology/reports/dengue_igm.aspx");
                    break;
                case "Dengue NS1":
                    Response.Redirect("~/pathology/reports/dengue_ns1.aspx");

                    break;
                case "esr":
                    Response.Redirect("~/pathology/reports/esr.aspx");
                    break;
                case "lp":
                    Response.Redirect("~/pathology/reports/lipid_profile.aspx");
                    break;
                case "rft":
                    Response.Redirect("~/pathology/reports/rft.aspx");
                    break;
                case "c":
                    Response.Redirect("~/pathology/reports/calcium.aspx");
                    break;
                case "vitb12":
                    Response.Redirect("~/pathology/reports/vit_b12.aspx");
                    break;
                case "vitd3":
                    Response.Redirect("~/pathology/reports/vitd3.aspx");
                    break;
                case "bt_ct":
                    Response.Redirect("~/pathology/reports/bt_ct.aspx");
                    break;
                case "fbs_plbs":
                    Response.Redirect("~/pathology/reports/fbs_plbs.aspx");
                    break;
                case "wt":
                    Response.Redirect("~/pathology/reports/widal_test.aspx");
                    break;
                case "vdrl":
                    Response.Redirect("~/pathology/reports/VDRL.aspx");
                    break;
                case "ra":
                    Response.Redirect("~/pathology/reports/ra_test.aspx");
                    break;
                case "el":
                    Response.Redirect("~/pathology/reports/electrolyte.aspx");
                    break;
                case "cpk":
                    Response.Redirect("~/pathology/reports/cpk.aspx");
                    break;
                case "hcv":
                    Response.Redirect("~/pathology/reports/HCV.aspx");
                    break;
                case "g6pd":
                    Response.Redirect("~/pathology/reports/g6pd.aspx");
                    break;
                case "a":
                    Response.Redirect("~/pathology/reports/amylase.aspx");
                    break;
                case "lipase":
                    Response.Redirect("~/pathology/reports/lipase.aspx");
                    break;
                case "cn":
                    Response.Redirect("~/pathology/reports/CREATNINE.aspx");
                    break;
                default:
                    Response.Write("<script>alert('Report Module is not Ready.')</script>");
                    break;
            }

        }
    }