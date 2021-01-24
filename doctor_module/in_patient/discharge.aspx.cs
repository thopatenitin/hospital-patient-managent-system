using BLL;
using System;
using System.Data;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class doctor_module_discharge : System.Web.UI.Page
{ clsbusslayer obj = new clsbusslayer();
    clsbusslayer bl = new clsbusslayer();
    palm_ipd_registration pl = new palm_ipd_registration();
    palm_pateints_kin_detail pkd = new palm_pateints_kin_detail();
    IPDDataContext rt1 = new IPDDataContext();

    DataClassesDataContext rt = new DataClassesDataContext();
    room_master rm = new room_master();
    palm_bed_category pbc = new palm_bed_category();
    protected void Page_Load(object sender, EventArgs e)
    {
         Session["emp_code"] = "PBH201710621";
           Session["pateint_code"] = "20178070";
          Session["prn"] = "36";
           Session["pateint_name"] = "K. V. Thilakan";
        MultiView1.ActiveViewIndex = 5;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        palm_ipd_registration pir = new palm_ipd_registration();
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
        int days1 = Convert.ToInt32((Convert.ToDateTime(TextBox1.Text) - Convert.ToDateTime(pir.date_of_admission)).TotalDays);
        if (days1 < 0) { Response.Write("<script>alert('Date of Dischargr should not be lesser then date of addmisiion')</script>"); }
        else
        {
            String pateint_code = Session["pateint_code"].ToString();
            palm_ipd_pathlogy_billm pim = new palm_ipd_pathlogy_billm();
            try
            {
                pim = rt1.palm_ipd_pathlogy_billms.Single(palm_ipd_pathlogy_billm => palm_ipd_pathlogy_billm.total == null);
            }
            catch (Exception er) { }
            // bill section
            DataSet dt = new DataSet();
            DataSet dt1 = new DataSet();
            dt = obj.getbillstatus_ipd_pat(Session["prn"].ToString());
            palm_opd_pathlogy_billm pob = new palm_opd_pathlogy_billm();
            palm_opd_pathlogy_bill pos = new palm_opd_pathlogy_bill();
            pathology_test_report ptr = new pathology_test_report();
            dt1 = obj.pathologybill_byipd(Session["prn"].ToString());

            //calculating pathology bill
            // Response.Write("<script>alert('Last Pathology Bill Is Not Generated')</script>");


            Decimal pathology_final = obj.getfinalpathology_totalbillby_pateint_code(Session["pateint_code"].ToString());


            rt.SubmitChanges();
            //submitting discharge Date
          
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            pir.date_of_discharge = TextBox1.Text;
            pir.time_of_discharge = td.Text;
            rt1.SubmitChanges();

            //calculating no of days of addmission
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            int days = Convert.ToInt32((Convert.ToDateTime(pir.date_of_discharge) - Convert.ToDateTime(pir.date_of_admission)).TotalDays);
            //calculating room charges
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            room_master rm1 = new room_master();
            rm1 = rt1.room_masters.Single(room_master => room_master.room_no == pir.room_no);
            Decimal rent = Convert.ToDecimal(rm1.rent * days);

            //calculating nursing charges
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            palm_nurse_charge pnc = new palm_nurse_charge();
            pnc = rt1.palm_nurse_charges.Single(palm_nurse_charge => palm_nurse_charge.room_type == pir.room_type);
            Decimal nursing_charges = Convert.ToDecimal(pnc.charges * days);

            //submitting values to final bill
            final_bill fb = new final_bill();
            fb.pateint_code = Session["pateint_code"].ToString();
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            Session["prn"] = pir.prn;
            Session["ipd_code"] = pir.prn;
            fb.prn = pir.prn.ToString() ;
            fb.ipd_code = Session["ipd_code"].ToString();
            fb.inserted_by = Session["emp_code"].ToString();
            fb.inserted_on = DateTime.Now;
            basic_charge bc = new basic_charge();
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb.registration_charges = bc.registration_charges;
            fb.stay_charges_delux_spl_genral = rent;
            fb.pathology_charges = pathology_final;
            fb.nursing_charges = nursing_charges;
            fb.day_of_admit = days;
            fb.invoice_no = obj.getinvoice();
            rt1.final_bills.InsertOnSubmit(fb);
            rt1.SubmitChanges();
            pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
            pir.follow_up = follow_up.Text;
            pir.follow_up_time = qt0.Text;
            rt1.SubmitChanges();
            /* string cashmemo = obj.getlast_pathology_cashmemo();
             pob.memo = cashmemo;
             pob.opd_code = Session["opd_code"].ToString();
             pob.patient_code = Session["pateint_code"].ToString();
             pob.inserted_by = Session["emp_code"].ToString();
             pob.inserted_on = DateTime.Now;
             rt.palm_opd_pathlogy_billms.InsertOnSubmit(pob);
             rt.SubmitChanges();*/

            //pathology save

            /* pos.memo = cashmemo;
             pos.patient_code = Session["pateint_code"].ToString();

             ptr = rt.pathology_test_reports.Single(pathology_test_report => pathology_test_report.test_code == DropDownList1.SelectedValue);
             pos.charge = ptr.test_rate;
             rt.palm_opd_pathlogy_bills.InsertOnSubmit(pos);
             rt.SubmitChanges();*/


            //  gridbind();
            Button1.Enabled = false;

        }
        //generate datatable for bill 
        /* public void gridbind()
         {
             DataTable dt = new DataTable();
             dt.Columns.Add("Memorandum Of Charge",typeof(string));
             dt.Columns.Add("Nos", typeof(int));
             dt.Columns.Add("Amount",typeof(Int64));
             dt.Columns.Add("Total Amount",typeof(Int64));
             DataRow dr = dt.NewRow();
             DataTable type = new DataTable();
             type = bl.getdata();
             DataTable amount = new DataTable();
             amount = bl.getamount(Session["pateint_code"].ToString());

             for (int i = 0; i < type.Rows.Count; i++)
             {
                 dr["Memorandum Of Charge"] = type.Rows[0][i];

                 dr["Amount"] = amount.Rows[0][i+5];
                 dr["Total Amount"] = amount.Rows[0][i + 5];
                 dt.Rows.Add(dr);
             }
             GridView1.DataSource = dt;
             GridView1.DataBind();
         }*/
        //resources Deallocation
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
        palm_bed_category pbc = new palm_bed_category();
        pbc = rt1.palm_bed_categories.Single(palm_bed_category => palm_bed_category.bed_no == pir.bed_no);
        pbc.status = "Unoccupied";
        rt1.SubmitChanges();
        room_master rm = new room_master();
        rm = rt1.room_masters.Single(room_master => room_master.room_no == pir.room_no);
        rm.occupied = rm.occupied - 1;
        rt1.SubmitChanges();
    }
    protected void Button2_Click(object sender, EventArgs e)
    { palm_pateint_master ppm = new palm_pateint_master();
        String pateint_code = Session["pateint_code"].ToString();
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master => palm_pateint_master.pateint_code == Session["pateint_code"].ToString());

        //Label401.Text = ppm.pateient_title + ". " + ppm.pateient_first_name + " " + ppm.pateient_middle_name + " " + ppm.pateient_last_name;
        pateint_name.Text = ppm.pateient_title + ". " + ppm.pateient_first_name + " " + ppm.pateient_middle_name + " " + ppm.pateient_last_name;

        palm_ipd_registration pir = new palm_ipd_registration();
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());

        // date_of_addmission.Text = pir.date_of_admission.ToString();
        Label88.Text = pir.date_of_admission.ToString();
        // date_of_discharge.Text = pir.date_of_discharge.ToString();
        Label89.Text = pir.date_of_discharge.ToString();
        //  ipd_no.Text = pir.prn.ToString();
        Label90.Text = pir.prn.ToString();
        basic_charge bc = new basic_charge();
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        Label561.Text = bc.registration_charges.ToString();
        Label382.Text = bc.registration_charges.ToString();
        label1.Text = bc.registration_charges.ToString();
        Label558.Text = bc.registration_charges.ToString();

        //emergency Charges
     //   Label559.Text = bc.emergency_charges.ToString();
        Label303.Text = bc.emergency_charges.ToString();

        //multipara monitor charges
        Label309.Text = bc.multipara_monitor_charges.ToString();
        multipara_monitor_charges.Text = bc.multipara_monitor_charges.ToString();

        //ecg charges
        ecg_charges.Text = bc.ecg_charges.ToString();
        ecg_chargesf.Text = bc.ecg_charges.ToString();

        //oxygen charges
        Label315.Text = bc.oxygen_charges.ToString();
        oxygen_charges.Text = bc.oxygen_charges.ToString();

        //ventilator charges
        ventilator_charges.Text = bc.ventilator_charges.ToString();
        Label318.Text = bc.ventilator_charges.ToString();

        //nebulisation charges
        nebulisation_charges.Text = bc.nebulisation_charges.ToString();
        nebu.Text = bc.nebulisation_charges.ToString();

        //ryles tube
        ca9.Text = bc.ryles_tube.ToString();
        ryles_tube.Text = bc.ryles_tube.ToString();

        //intubation_charges
        intubation.Text = bc.intubation.ToString();
        ca10.Text = bc.intubation.ToString();

        //syringe pump
        ca11.Text = bc.syringe_pump.ToString();
        syringe_pump.Text = bc.syringe_pump.ToString();

        //cathetor
        Label360.Text = bc.cathetor.ToString();
        ca12.Text = bc.cathetor.ToString();

        //central line 
        ca12.Text = bc.central_line.ToString();
        Label389.Text = bc.central_line.ToString();
        final_bill fb = new final_bill();
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        days.Text = fb.day_of_admit.ToString();
        r_charges.Text = fb.stay_charges_delux_spl_genral.ToString();

        //displaying room rent
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration => palm_ipd_registration.pateint_code == Session["pateint_code"].ToString());
        rm = rt1.room_masters.Single(room_master => room_master.room_no == pir.room_no);
        Label560.Text = rm.rent.ToString();
        Label306.Text = rm.rent.ToString();

        //displaying nursing charges
        ca14.Text = fb.day_of_admit.ToString();
        Label365.Text = fb.day_of_admit.ToString();
        nursing_charges.Text = fb.nursing_charges.ToString();
        nurse_charge.Text = fb.nursing_charges.ToString();
        palm_nurse_charge rtt = new palm_nurse_charge();
        rtt = rt1.palm_nurse_charges.Single(palm_nurse_charge => palm_nurse_charge.room_type == pir.room_type);
        ca15.Text = rtt.charges.ToString();
        Label366.Text = rtt.charges.ToString();

        //displaying pathology charges
        pathology_chargf0.Text = fb.pathology_charges.ToString();
        pathologyf_charge.Text = fb.pathology_charges.ToString();
        MultiView1.ActiveViewIndex = 5;
    }





    protected void qt_TextChanged(object sender, EventArgs e)
    {

        stay_charges.Text = Convert.ToString(Convert.ToDecimal(qt001.Text) * Convert.ToDecimal(qt.Text));
        ImageButton1.Enabled = true;
        //  Response.Redirect("~/doctor_module/in_patient/discharge.aspx");
    }




    final_bill fb = new final_bill();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (qt.Text == "") {
            qt.Text = "0";
         
          

        }if (qt001.Text == "")
        { qt001.Text = "0"; }
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        basic_charge bc = new basic_charge();
        bc = rt1.basic_charges.Single(basic_charge=>basic_charge.id==100);
        fb.stay_charges_iccu_nicu_nos = Convert.ToInt32(qt.Text);
        fb.stay_charges_iccu_nicu = Convert.ToDecimal(Convert.ToDecimal(qt001.Text) * Convert.ToDecimal(qt.Text));
        rt1.SubmitChanges();
        Label301.Text = qt.Text;
        Label383.Text = Convert.ToString(Convert.ToDecimal(qt001.Text) * Convert.ToDecimal(qt.Text));
        qt.Visible = false;
        qt001.Visible = false;
        q001.Visible = true;
        q001.Text = qt001.Text;
        q1.Visible = true;
        q1.Text = qt.Text;
        ImageButton1.Visible = false;
        ImageButton2.Visible = true;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        q001.Visible = false;
        qt001.Visible = true;
        q1.Visible = false;
        qt.Text = q1.Text;
        qt.Visible = true;
        ImageButton1.Visible = true;
        ImageButton2.Visible = false;
    }





    protected void ImageButton59_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {if (ImageButton1.Visible == false)
        {
            if (ImageButton145.Visible == false)
            {
                if (ImageButton118.Visible == false)
                {
                    if (ImageButton119.Visible == false)
                    {
                        if (ImageButton120.Visible == false)
                        {
                            if (ImageButton121.Visible == false)
                            {
                                if (ImageButton122.Visible == false)
                                {
                                    if (ImageButton123.Visible == false)
                                    {
                                        MultiView1.ActiveViewIndex = 8 - 1;
                                    }
                                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                                }
                                else { Response.Write("<script>alert('Select all Categories')</script>"); }
                            }
                            else { Response.Write("<script>alert('Select all Categories')</script>"); }
                        }
                        else { Response.Write("<script>alert('Select all Categories')</script>"); }
                    }
                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                }
                else { Response.Write("<script>alert('Select all Categories')</script>"); }
            }
            else { Response.Write("<script>alert('Select all Categories')</script>"); }
        }
        else { Response.Write("<script>alert('Select all Categories')</script>"); }

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (ImageButton198.Visible == false)
        {
            if (ImageButton200.Visible == false)
            {
                if (ImageButton202.Visible == false)
                {
                    if (ImageButton204.Visible == false)
                    {
                        if (ImageButton206.Visible == false)
                        {
                            if (ImageButton208.Visible == false)
                            {
                                if (ImageButton210.Visible == false)
                                {
                                    if (ImageButton212.Visible == false)
                                    {
                                        if (ImageButton214.Visible == false)
                                        {
                                            MultiView1.ActiveViewIndex = 8;
                                        }
                                        else { Response.Write("<script>alert('Select all Categories')</script>"); }
                                    }
                                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                                }
                                else { Response.Write("<script>alert('Select all Categories')</script>"); }
                            }
                            else { Response.Write("<script>alert('Select all Categories')</script>"); }
                        }
                        else { Response.Write("<script>alert('Select all Categories')</script>"); }
                    }
                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                }
                else { Response.Write("<script>alert('Select all Categories')</script>"); }
            }
            else { Response.Write("<script>alert('Select all Categories')</script>"); }
        }
        else { Response.Write("<script>alert('Select all Categories')</script>"); }

       
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 8-1;
    }

    protected void qt0_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Decimal res = Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text);
            Label429.Text = res.ToString();
        }
        catch (Exception rtttt) { }
        /* try
         {
             Decimal res = Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text);
             fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
             fb.emergency_charges = res;
             fb.emergency_charges_nos = Convert.ToInt16(qt0.Text);
             Label203.Text = Convert.ToString(qt0.Text);
             Label151.Text = TextBox38.Text;
         }
         catch (Exception rtttt) { }
         */
    }
    protected void TextBox38_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Decimal res = Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text);
        Label429.Text = res.ToString();
            /*
            try
            {
                Decimal res = Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text);
                fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
                fb.emergency_charges = res;
                fb.emergency_charges_nos = Convert.ToInt16(qt0.Text);
                Label203.Text = Convert.ToString(qt0.Text);
                Label151.Text = TextBox38.Text;
            }
            catch (Exception rtttt) { }*/
        }
        catch (Exception rtttt) { }
    }

    protected void ImageButton145_Click(object sender, ImageClickEventArgs e)
    {


        if (TextBox38.Text == "" && qt0.Text != "")
        {
            Response.Write("<script>alert('Enter Amount for Emergency Charges')</script>>");
        }
        else
        {
            if (qt0.Text == "")
            {
                qt0.Text = "0";
            }
            if (TextBox38.Text == "") {
                TextBox38.Text = "0";
            }

            q2.Visible = true;
            q2.Text = qt0.Text;
            q3.Visible = true;
            q3.Text = TextBox38.Text;
            ImageButton145.Visible = false;
            ImageButton146.Visible = true;
            qt0.Visible = false;
            TextBox38.Visible = false;
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.emergency_charges = Convert.ToDecimal(Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text));
            fb.emergency_charges_nos = Convert.ToInt16(qt0.Text);
            rt1.SubmitChanges();
            Label203.Text = qt0.Text;
            Label151.Text = TextBox38.Text;
            emer.Text = Convert.ToString(Convert.ToDecimal(qt0.Text) * Convert.ToDecimal(TextBox38.Text));
        }
    }



    protected void ImageButton146_Click(object sender, ImageClickEventArgs e)
    {
        q2.Visible = false;
        qt0.Text = q1.Text;
        q3.Visible = false;
        TextBox38.Text = q3.Text;
        ImageButton145.Visible = true;
        ImageButton146.Visible = false;
        qt0.Visible = true;
        TextBox38.Visible = true;

    }

    protected void qt1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label432.Text = Convert.ToString(Convert.ToDecimal(qt1.Text) * Convert.ToDecimal(dresiing_text.Text));
        }
        catch (Exception rttt) { }
    }

    protected void dresiing_text_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label432.Text = Convert.ToString(Convert.ToDecimal(qt1.Text) * Convert.ToDecimal(dresiing_text.Text));
        }
        catch (Exception rttt) { }

    }

    protected void ImageButton118_Click(object sender, ImageClickEventArgs e)
    {

        if (dresiing_text.Text == "" && qt1.Text != "")
        {
            Response.Write("<script>alert('Enter Amount for Dressing Charges')</script>");
        }
        else
        {
            if (qt1.Text == "")
            {
                qt1.Text = "0";
            }
            if (dresiing_text.Text == "")
            {
                dresiing_text.Text = "0";
            }
            qt1.Visible = false;
            dresiing_text.Visible = false;
            q5.Visible = true;
            q5.Text = qt1.Text;
            qd.Visible = true;
            qd.Text = dresiing_text.Text;
            ImageButton118.Visible = false;
            ImageButton14.Visible = true;
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.dressing_charges = Convert.ToDecimal(Convert.ToDecimal(qt1.Text) * Convert.ToDecimal(dresiing_text.Text));
            fb.dressing_charges_nos = Convert.ToInt16(qt1.Text);
            rt1.SubmitChanges();
            Label152.Text = qt1.Text;
            q.Text = dresiing_text.Text;
            qqq.Text = Convert.ToString(Convert.ToDecimal(qt1.Text) * Convert.ToDecimal(dresiing_text.Text));

        }
    }

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        qt1.Visible = true;
        dresiing_text.Visible = true;
        q5.Visible = false;
        qt1.Text = q5.Text;
        qd.Visible = false;
        dresiing_text.Text = qd.Text;
        ImageButton118.Visible = true;
        ImageButton14.Visible = false;
    }


    Decimal multi_para = 0;
    basic_charge bc = new basic_charge();
    protected void qt2_TextChanged(object sender, EventArgs e)
    {

        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        multi_para = Convert.ToDecimal(bc.multipara_monitor_charges * Convert.ToDecimal(qt2.Text));
        Label436.Text = multi_para.ToString();

    }

    protected void ImageButton119_Click(object sender, ImageClickEventArgs e)
    { if (qt2.Text == "")
        { qt2.Text = "0"; }
        qt2.Visible = false;
        q6.Text = qt2.Text;
        q6.Visible = true;
        ImageButton119.Visible = false;
        ImageButton148.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        multi_para = Convert.ToDecimal(bc.multipara_monitor_charges * Convert.ToDecimal(qt2.Text));
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.multipara_monitor_charges = Convert.ToDecimal(Convert.ToDecimal(qt2.Text) * Convert.ToDecimal(bc.multipara_monitor_charges));
        fb.multipara_monitor_charges_nos = Convert.ToInt16(qt2.Text);
        rt1.SubmitChanges();
        Label308.Text = qt2.Text;
        Label310.Text = Convert.ToString(Convert.ToDecimal(qt2.Text) * Convert.ToDecimal(bc.multipara_monitor_charges));
    }

    protected void ImageButton148_Click(object sender, ImageClickEventArgs e)
    {
        qt2.Visible = true;
        qt2.Text = q6.Text;
        q6.Visible = false;
        ImageButton119.Visible = true;
        ImageButton148.Visible = false;
    }

    protected void qt3_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        ecg.Text = Convert.ToString(bc.ecg_charges * Convert.ToDecimal(qt3.Text));

    }

    protected void ImageButton120_Click(object sender, ImageClickEventArgs e)
    {
        if (qt3.Text == "")
        { qt3.Text = "0"; }
        q8.Visible = true;
        qt3.Visible = false;
        q8.Text = qt3.Text;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.ecg_charges = Convert.ToDecimal(Convert.ToDecimal(qt3.Text) * Convert.ToDecimal(bc.ecg_charges));
        fb.ecg_charges_nos = Convert.ToInt16(qt3.Text);
        rt1.SubmitChanges();
        ImageButton120.Visible = false;
        ImageButton149.Visible = true;
        Label311.Text = qt2.Text;
        Label313.Text = Convert.ToString(Convert.ToDecimal(qt3.Text) * Convert.ToDecimal(bc.ecg_charges));
    }

    protected void ImageButton149_Click(object sender, ImageClickEventArgs e)
    {
        qt3.Visible = true;
        qt3.Text = q8.Text;
        q8.Visible = false;
        ImageButton120.Visible = true;
        ImageButton149.Visible = false;
    }

    protected void qt4_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        oxy.Text = Convert.ToString(bc.oxygen_charges * Convert.ToDecimal(oxycharges.Text));
    }

    protected void ImageButton121_Click(object sender, ImageClickEventArgs e)
    {
        if (oxycharges.Text == "")
        {
            oxycharges.Text = "0";
        }
        oxycharges.Visible = false;
        q9.Visible = true;
        q9.Text = oxycharges.Text;
        ImageButton121.Visible = false;
        ImageButton150.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.oxygen_charges = Convert.ToDecimal(Convert.ToDecimal(oxycharges.Text) * Convert.ToDecimal(bc.oxygen_charges));
        fb.oxygen_charges_nos = Convert.ToInt16(oxycharges.Text);
        rt1.SubmitChanges();
        oxygen.Text = oxycharges.Text;
        Label319.Text = Convert.ToString(Convert.ToDecimal(oxycharges.Text) * Convert.ToDecimal(bc.oxygen_charges));
    }

    protected void qt5_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        venti.Text = Convert.ToString(bc.ventilator_charges * Convert.ToDecimal(qt5.Text));


    }



    protected void ImageButton122_Click(object sender, ImageClickEventArgs e)
    {
        if (qt5.Text == "")
        { qt5.Text = "0"; }
        qt5.Visible = false;
        q10.Visible = true;
        q10.Text = qt5.Text;
        ImageButton122.Visible = false;
        ImageButton151.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.ventilator_charges = Convert.ToDecimal(Convert.ToDecimal(qt5.Text) * Convert.ToDecimal(bc.ventilator_charges));
        fb.ventilator_charges_nos = Convert.ToInt16(qt5.Text);
        rt1.SubmitChanges();
        ventilator.Text = qt5.Text;
        Label319.Text = Convert.ToString(Convert.ToDecimal(qt5.Text) * Convert.ToDecimal(bc.ventilator_charges));
    }

    protected void ImageButton150_Click(object sender, ImageClickEventArgs e)
    {
        oxycharges.Visible = true;
        q9.Visible = false;
        oxycharges.Text = q9.Text;
        ImageButton121.Visible = true;
        ImageButton150.Visible = false;

    }

    protected void ImageButton151_Click(object sender, ImageClickEventArgs e)
    {

        qt5.Visible = true;
        q10.Visible = false;
        qt5.Text = q10.Text;
        ImageButton122.Visible = true;
        ImageButton151.Visible = false;

    }

    protected void TextBox29_TextChanged(object sender, EventArgs e)
    {
        anesh.Text = TextBox29.Text;
    }

    protected void ImageButton123_Click(object sender, ImageClickEventArgs e)
    { if (TextBox29.Text == "")
        {
            TextBox29.Text = "0";
        }
        TextBox29.Visible = false;
        q11.Text = TextBox29.Text;
        q11.Visible = true;
        ImageButton123.Visible = false;
        ImageButton152.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.anaeshtetist_charges = Convert.ToDecimal(Convert.ToDecimal(TextBox29.Text));

        rt1.SubmitChanges();
        anesthetist.Text = TextBox29.Text;
    }

    protected void ImageButton152_Click(object sender, ImageClickEventArgs e)
    {
        TextBox29.Visible = true;
        TextBox29.Text = q11.Text;
        q11.Visible = false;
        ImageButton123.Visible = true;
        ImageButton152.Visible = false;

    }

    protected void qt28_TextChanged(object sender, EventArgs e)
    {
        try {
            Label590.Text = Convert.ToString(Convert.ToDecimal(qt28.Text) * Convert.ToDecimal(ccharges.Text));
        }
        catch (Exception etttt) { }
    }

    protected void ccharges_TextChanged(object sender, EventArgs e)
    {

        try
        {
            Label590.Text = Convert.ToString(Convert.ToDecimal(qt28.Text) * Convert.ToDecimal(ccharges.Text));
        }
        catch (Exception etttt) { }
    }

    protected void ImageButton198_Click(object sender, ImageClickEventArgs e)
    { if (qt28.Text != "" && ccharges.Text == "")
        { Response.Write("<script>alert('Enter Consulting Fees')</script>"); }
        else { if (qt28.Text == "") { qt28 .Text = "0"; }
            if (ccharges.Text == "") { ccharges.Text = "0"; }
            qt28.Visible = false;
            ccharges.Visible = false;
            qcc.Text = qt28.Text;
            qcc.Visible = true;
            q38.Text = ccharges.Text;
            q38.Visible = true;
            ImageButton198.Visible = false;
            ImageButton199.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.consultation_charges = Convert.ToDecimal(Convert.ToDecimal(qt28.Text)* Convert.ToDecimal(ccharges.Text));
            fb.consultation_charges_nos = Convert.ToInt16(qt28.Text);
            rt1.SubmitChanges();
        } }

    protected void ImageButton199_Click(object sender, ImageClickEventArgs e)
    {
        qt28.Visible = true;
        ccharges.Visible = true;
        qt28.Text = qcc.Text;
        qcc.Visible = false;
        ccharges.Text = q38.Text;
        q38.Visible = false;
        ImageButton198.Visible = true;
        ImageButton199.Visible = false;
    }

    protected void qt29_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label592.Text = Convert.ToString(Convert.ToDecimal(qt29.Text) * Convert.ToDecimal(textbox.Text));
        }
        catch (Exception errr) { }
    }

    protected void textbox_TextChanged(object sender, EventArgs e)
    {

        try
        {
            Label592.Text = Convert.ToString(Convert.ToDecimal(qt29.Text) * Convert.ToDecimal(textbox.Text));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton200_Click(object sender, ImageClickEventArgs e)
    { if (qt29.Text != "" && textbox.Text == "")
        { Response.Write("<script>alert('Enter Consulting charges')</script>"); }
        else
        {
            if (qt29.Text == "") {
                qt29.Text = "0";
            }
            if (textbox.Text == "")
            { textbox.Text = "0"; }
            qt29.Visible = false;
            textbox.Visible = false;
            q39.Text = qt29.Text;
            q39.Visible = true;
            q40.Text = textbox.Text;
            q40.Visible = true;
            ImageButton200.Visible = false;
            ImageButton201.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.consultation_charges1 = Convert.ToDecimal(Convert.ToDecimal(qt29.Text) * Convert.ToDecimal(textbox.Text));
            fb.consultation_charges1_nos = Convert.ToInt16(qt29.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton201_Click(object sender, ImageClickEventArgs e)
    {

        qt29.Visible = true;
        textbox.Visible = true;
        qt29.Text = q39.Text;
        q39.Visible = false;
        textbox.Text = q40.Text;
        q40.Visible = false;
        ImageButton200.Visible = true;
        ImageButton201.Visible = false;
    }

    protected void qt30_TextChanged(object sender, EventArgs e)
    {
        try
        {
            cctextbox.Text = Convert.ToString(Convert.ToDecimal(qt30.Text) * Convert.ToDecimal(TextBox49.Text));
        }
        catch (Exception errr) { }
    }

    protected void TextBox49_TextChanged(object sender, EventArgs e)
    {
        try
        {
            cctextbox.Text = Convert.ToString(Convert.ToDecimal(qt30.Text) * Convert.ToDecimal(TextBox49.Text));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton202_Click(object sender, ImageClickEventArgs e)
    { if (qt30.Text != "" && TextBox49.Text == "")
        { Response.Write("<script>alert('Enter Consulting Fees')"); }
        else
        { if (qt30.Text == "")
            { qt30.Text = "0"; }
            if (TextBox49.Text == "") { TextBox49.Text = "0"; }
            qt30.Visible = false;
            TextBox49.Visible = false;
            q41.Text = qt30.Text;
            q41.Visible = true;
            cc3.Text = TextBox49.Text;
            cc3.Visible = true;
            ImageButton202.Visible = false;
            ImageButton203.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.consultation_charges2 = Convert.ToDecimal(Convert.ToDecimal(TextBox49.Text) * Convert.ToDecimal(qt30.Text));
            fb.consultation_charges2_nos = Convert.ToInt16(qt30.Text);
            rt1.SubmitChanges();
        }
    }

    protected void qt31_TextChanged(object sender, EventArgs e)
    {
        try {
            Label596.Text = Convert.ToString(Convert.ToDecimal(qt31.Text) * Convert.ToDecimal(TextBox50.Text));
        } catch (Exception errrr) { }
    }

    protected void TextBox50_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label596.Text = Convert.ToString(Convert.ToDecimal(qt31.Text) * Convert.ToDecimal(TextBox50.Text));
        }
        catch (Exception errrr) { }
    }

    protected void ImageButton204_Click(object sender, ImageClickEventArgs e)
    {
        if (qt31.Text != "" && TextBox50.Text == "")
        { Response.Write("<script>alert('Enter Assistance  Fees')"); }
        else
        {
            if (qt31.Text == "")
            { qt31.Text = "0"; }
            if (TextBox50.Text == "") { TextBox50.Text = "0"; }
            qt31.Visible = false;
            TextBox50.Visible = false;
            q43.Text = qt31.Text;
            q43.Visible = true;
            accharges.Text = TextBox49.Text;
            accharges.Visible = true;
            ImageButton204.Visible = false;
            ImageButton205.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.assistant_charges = Convert.ToDecimal(Convert.ToDecimal(TextBox50.Text) * Convert.ToDecimal(qt31.Text));
            fb.assistant_charges_nos = Convert.ToInt16(qt31.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton203_Click(object sender, ImageClickEventArgs e)
    {
        qt31.Visible = true;
        TextBox50.Visible = true;
        //q43.Text = qt31.Text;
        q43.Visible = false;
        //accharges.Text = TextBox49.Text;
        accharges.Visible = false;
        ImageButton204.Visible = true;
        ImageButton205.Visible = false;
    }

    protected void TextBox51_TextChanged(object sender, EventArgs e)
    {
        try
        {
        //    Label559.Text = TextBox51.Text;
        }
        catch (Exception errr) { }
    }

    protected void ImageButton206_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox51.Text == "") {
            TextBox51.Text = "0";

        }

        TextBox51.Visible = false;
        accharges0.Text = TextBox51.Text;
        accharges0.Visible = true;

        ImageButton206.Visible = false;
        ImageButton298.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.surgeon_charges = Convert.ToDecimal(Convert.ToDecimal(TextBox51.Text));
        rt1.SubmitChanges();

    }

    protected void ImageButton207_Click(object sender, ImageClickEventArgs e)
    {
        TextBox51.Visible = true;
        TextBox51.Text = accharges0.Text;
        accharges0.Visible = false;

        ImageButton206.Visible = true;
        ImageButton298.Visible = false;
    }

    protected void qt34_TextChanged(object sender, EventArgs e)
    {
        try {
            Label605.Text = Convert.ToString(Convert.ToDecimal(qt34.Text) * Convert.ToDecimal(TextBox53.Text));
        } catch (Exception errr) { }

    }

    protected void qt33_TextChanged(object sender, EventArgs e)
    { if (qt33.Text == "")
        {
            qt33.Text = "0";
        }
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        Label603.Text = Convert.ToString(bc.nebulisation_charges * Convert.ToDecimal(qt33.Text));
    }

    protected void ImageButton210_Click(object sender, ImageClickEventArgs e)
    {
        if (qt33.Text == "")
        { qt33.Text = "0"; }
        qt33.Visible = false;
        cc8.Text = qt33.Text;
        cc8.Visible = true;
        ImageButton210.Visible = false;
        ImageButton211.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.nebulisation_charges = Convert.ToDecimal(Convert.ToDecimal(qt33.Text)*Convert.ToDecimal(bc.nebulisation_charges));
        fb.nebulisation_charges_nos = Convert.ToInt16(qt33.Text);
        rt1.SubmitChanges();
    }

    protected void ImageButton211_Click(object sender, ImageClickEventArgs e)
    {
        qt33.Visible = true;
        //cc8.Text = qt33.Text;
        cc8.Visible = false;
        ImageButton210.Visible = true;
        ImageButton211.Visible = false;
    }

    protected void qt32_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label601.Text = Convert.ToString(Convert.ToDecimal(qt32.Text) * Convert.ToDecimal(TextBox52.Text));
        }
        catch (Exception errr) { }
    }

    protected void TextBox52_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label601.Text = Convert.ToString(Convert.ToDecimal(qt32.Text) * Convert.ToDecimal(TextBox52.Text));
        }
        catch (Exception errr) { }

    }

    protected void ImageButton208_Click(object sender, ImageClickEventArgs e)
    {
        if (qt32.Text != "" && TextBox52.Text == "")
        {
            Response.Write("<script>alert('Enter  Sonography Charges')</script>");
        }
        else {
            if (qt32.Text == "")
            { qt32.Text = "0"; }
            if (TextBox52.Text == "")
            {
                TextBox52.Text = "0";
            }
            qt32.Visible = false;
            TextBox52.Visible = false;
            cc6.Text = qt32.Text;
            cc13.Text = TextBox52.Text;
            cc6.Visible = true;
            cc13.Visible = true;
            ImageButton208.Visible = false;
            ImageButton209.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.sonography_charges = Convert.ToDecimal(Convert.ToDecimal(TextBox52.Text) * Convert.ToDecimal(qt32.Text));
            fb.sonography_charges_nos = Convert.ToInt32(qt32.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton298_Click(object sender, ImageClickEventArgs e)
    {
        //qt32.Visible = true;
        TextBox51.Visible = true;
        //cc9.Text = qt32.Text;
        //cc13.Text = TextBox52.Text;
        accharges0.Visible = false;
        //cc13.Visible = false;
        ImageButton206.Visible = true;
        ImageButton298.Visible = false;

    }

    protected void TextBox53_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label605.Text = Convert.ToString(Convert.ToDecimal(qt34.Text) * Convert.ToDecimal(TextBox53.Text));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton212_Click(object sender, ImageClickEventArgs e)
    {
        if (qt34.Text != "" && TextBox53.Text == "")
        {
            Response.Write(" <script>alert('Enter Amount  for Bedsode Sonography /2d Echo')</script>");
        }
        else {
            if (qt34.Text == "")
            { qt34.Text = "0"; }
            if (TextBox53.Text == "")
            { TextBox53.Text = "0"; }
            qt34.Visible = false;
            TextBox53.Visible = false;
            cc9.Text = qt34.Text;
            cc10.Text = TextBox53.Text;
            cc9.Visible = true;
            cc10.Visible = true;
            ImageButton212.Visible = false;
            ImageButton213.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.bedside_sonography_2decho = Convert.ToDecimal(Convert.ToDecimal(TextBox53.Text) * Convert.ToDecimal(qt34.Text));
            fb.bedside_sonography_2decho_nos = Convert.ToInt32(qt34.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton213_Click(object sender, ImageClickEventArgs e)
    {
        qt34.Visible = true;
        TextBox53.Visible = true;
        //cc9.Text = qt34.Text;
        //cc10.Text = TextBox53.Text;
        cc9.Visible = false;
        cc10.Visible = false;
        ImageButton212.Visible = true;
        ImageButton213.Visible = false;
    }

    protected void qt35_TextChanged(object sender, EventArgs e)
    {
        try { label.Text = Convert.ToString(Convert.ToDecimal(qt35.Text) * Convert.ToDecimal(TextBox54.Text)); } catch (Exception err) { }
    }

    protected void TextBox54_TextChanged(object sender, EventArgs e)
    {
        try { label.Text = Convert.ToString(Convert.ToDecimal(qt35.Text) * Convert.ToDecimal(TextBox54.Text)); } catch (Exception err) { }

    }

    protected void ImageButton214_Click(object sender, ImageClickEventArgs e)
    {
        if (qt35.Text != "" && TextBox54.Text == "")
        {
            Response.Write("<script>alert('Enter Amount for Bedside portable X-ray')</script>");
        }
        else {
            if (qt35.Text == "")
            { qt35.Text = "0"; }
            if (TextBox54.Text == "")
            {
                TextBox54.Text = "0";
            }
            qt35.Visible = false;
            TextBox54.Visible = false;
            cc12.Text = qt35.Text;
            cc11.Text = TextBox54.Text;
            cc11.Visible = true;
            cc12.Visible = true;
            ImageButton214.Visible = false;
            ImageButton215.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.bedside_portable_x_Ray_x_ray = Convert.ToDecimal(Convert.ToDecimal(TextBox54.Text) * Convert.ToDecimal(qt35.Text));
            fb.bedside_portable_x_Ray_x_ray_nos = Convert.ToInt32(qt35.Text);
            rt1.SubmitChanges();

        }
    }

    protected void ImageButton215_Click(object sender, ImageClickEventArgs e)
    {
        qt35.Visible = true;
        TextBox54.Visible = true;
        //cc12.Text = qt35.Text;
        //cc11.Text = TextBox54.Text;
        cc11.Visible = false;
        cc12.Visible = false;
        ImageButton214.Visible = true;
        ImageButton215.Visible = false;

    }

    protected void qt58_TextChanged(object sender, EventArgs e)
    {
        try
        {
            basic_charge bc = new basic_charge();
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            Label688.Text = Convert.ToString(Convert.ToDecimal(qt58.Text) * Convert.ToDecimal(bc.ryles_tube));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton_ryles_tube_Click(object sender, ImageClickEventArgs e)
    {
        qt58.Visible = false;
        ca16.Visible = true;
        if (qt58.Text == "")
        {
            qt58.Text = "0";
        }
        ryles.Visible = false;
        ryles1.Visible = true;
        ca16.Text = qt58.Text;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.ryles_tube = Convert.ToDecimal(Convert.ToDecimal(qt58.Text) * Convert.ToDecimal(bc.ryles_tube));
        fb.ryles_tube_nos = Convert.ToInt32(qt58.Text);
        rt1.SubmitChanges();
    }

    protected void ryles1_Click(object sender, ImageClickEventArgs e)
    {
        qt58.Visible = true;
        ca16.Visible = false;

        ryles.Visible = true;
        ryles1.Visible = false;

    }

    protected void qt59_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        try { Label690.Text = Convert.ToString(Convert.ToDecimal(qt59.Text) * Convert.ToDecimal(bc.intubation)); } catch (Exception rrr) { }

    

    }
        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
        if (qt59.Text == "")
        { qt59.Text = "0"; }
        qt59.Visible = false;
        ca38.Visible = true;
        ca38.Text = qt59.Text;
        ImageButton0.Visible = false;
        central_line.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.intubation= Convert.ToDecimal(Convert.ToDecimal(qt59.Text) * Convert.ToDecimal(bc.central_line));
        fb.intubation_nos = Convert.ToInt32(qt59.Text);
        rt1.SubmitChanges();
    }
    protected void ImageButton(object sender, ImageClickEventArgs e)
    {
     
        qt59.Visible = true;
        ca38.Visible = false;
        //ca38.Text = qt59.Text;
        ImageButton0.Visible = true;
        central_line.Visible = false;
    }

    protected void qt60_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        try { Label692.Text = Convert.ToString(Convert.ToDecimal(qt60.Text) * Convert.ToDecimal(bc.syringe_pump)); }
        catch (Exception rrr) { }

    }

  
    protected void syringe_Click(object sender, ImageClickEventArgs e)
    {
        if (qt60.Text == "")
        {
            qt60.Text = "0";
        }
        qt60.Visible = false;
        ca18.Text = qt60.Text;
        ca18.Visible = true;
        syringe.Visible = false;
        syringe_edit.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.syringe_pump = Convert.ToDecimal(Convert.ToDecimal(qt60.Text) * Convert.ToDecimal(bc.syringe_pump));
        fb.syringe_pump_nos = Convert.ToInt32(qt60.Text);
        rt1.SubmitChanges();
    }

    protected void syringe_edit_Click(object sender, ImageClickEventArgs e)
    {
        qt60.Visible = true;
      //  ca18.Text = qt60.Text;
        ca18.Visible = false;
        syringe.Visible = true;
        syringe_edit.Visible = false;
    }

    protected void qt62_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        try { Label698.Text = Convert.ToString(Convert.ToDecimal(qt62.Text) * Convert.ToDecimal(bc.central_line));

        }
        catch (Exception rrr) { }
    }

    protected void qt61_TextChanged(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        try { Label694.Text = Convert.ToString(Convert.ToDecimal(qt61.Text) * Convert.ToDecimal(bc.cathetor)); }
        catch (Exception rrr) { }
    }

    protected void ImageButton280_Click(object sender, ImageClickEventArgs e)
    {
        if (qt61.Text == "")
        {
            qt61.Text = "0";
        }qt61.Visible = false;
        ca19.Visible = true;
        ca19.Text = qt61.Text;
        ImageButton280.Visible = false;
        ImageButton281.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.cathetor= Convert.ToDecimal(Convert.ToDecimal(qt61.Text) * Convert.ToDecimal(bc.cathetor));
        fb.cathetor_nos = Convert.ToInt32(qt61.Text);
        rt1.SubmitChanges();
    }

    protected void ImageButton281_Click(object sender, ImageClickEventArgs e)
    {
        ca19.Visible = false;
        //ca19.Text = qt61.Text;
        ImageButton280.Visible = true;
        ImageButton281.Visible = false;
    }

  
    protected void surgical_instrument_Click(object sender, EventArgs e)
    {
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        try { Label696.Text = Convert.ToString(Convert.ToDecimal(surgical_instrument.Text) ); }
        catch (Exception rrr) { }
    }

    protected void ImageButton282_Click(object sender, ImageClickEventArgs e)
    {
        if (surgical_instrument.Text == "")
        { surgical_instrument.Text = "0"; }
        surgical_instrument.Visible = false;
        ca10.Text = surgical_instrument.Text;
        ImageButton282.Visible = false;
        ImageButton283.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.surgical_instrument_charges = Convert.ToDecimal(Convert.ToDecimal(surgical_instrument.Text));
       // fb.cathetor_nos = Convert.ToInt32(qt61.Text);
        rt1.SubmitChanges();
    }

    protected void ImageButton282_Click1(object sender, ImageClickEventArgs e)
    {
        surgical_instrument.Visible = true;
        //ca10.Text = surgical_instrument.Text;
        ImageButton280.Visible = true;
        ImageButton281.Visible = false;
    }

    protected void ImageButton284_Click(object sender, ImageClickEventArgs e)
    {//
        if (qt62.Text == "")
        { qt62.Text = "0"; }
        qt62.Visible = false;
        ca20.Visible = true;
        ca20.Text = qt62.Text;
        ImageButton284.Visible = false;
        ImageButton285.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.central_line = Convert.ToDecimal(Convert.ToDecimal(qt62.Text)*Convert.ToDecimal(bc.central_line));
        fb.central_line_nos = Convert.ToInt32(qt62.Text);
        rt1.SubmitChanges();
    }

    protected void ImageButton282_Click2(object sender, ImageClickEventArgs e)
    {
        ca21.Visible = true;
        surgical_instrument.Visible = false;
        //ca21.Text = surgical_instrument.Text;
        ImageButton284.Visible = false;
        ImageButton285.Visible = true ;

    }



    protected void gastrick_text(object sender, EventArgs e)
    {
        try
        {
            gastric_leavage.Text = Convert.ToString(Convert.ToDecimal(gastric_text.Text) * Convert.ToDecimal(qt6z.Text));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton288_Click(object sender, ImageClickEventArgs e)
    {
        if (qt6z.Text != "" && gastric_text.Text=="")
        { Response.Write("<script>alert('Enter Amount for gastric leavage')</script>"); }
        else
        {
            if (gastric_text.Text == "")
            {
                gastric_text.Text = "0";
            }
            if (qt6z.Text == "")
            {
                qt6z.Text = "0";
            }
            qt6z.Visible = false;
            z.Text = qt6z.Text;
            z.Visible = true;
            gastric_text.Visible = false;
            ca22.Visible = true;
            ca22.Text = gastric_text.Text;
            ImageButton288.Visible = false;
            ImageButton289.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);

            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.gastric_lavag_nos = Convert.ToDecimal(qt6z.Text);
            fb.gastric_lavag = Convert.ToDecimal(Convert.ToDecimal(gastric_text.Text)*Convert.ToDecimal(qt6z.Text));
            //fb.central_line_nos = Convert.ToInt32(surgical_instrument.Text);
            rt1.SubmitChanges();
        }
    }
        
    protected void ImageButton289_Click(object sender, ImageClickEventArgs e)
    {
        qt6z.Visible = true;
        z.Visible = false;
        gastric_text.Visible = true;
        ca22.Visible = false;
        //ca22.Text = gastric_text.Text;
        ImageButton288.Visible = false;
        ImageButton289.Visible = true;

    }



    protected void bt_TextChanged(object sender, EventArgs e)
    {
        try
        {
            btc.Text = Convert.ToString(Convert.ToDecimal(qt65.Text) * Convert.ToDecimal(bt.Text));
        } catch (Exception err) { }
    }

    protected void ImageButton290_Click(object sender, ImageClickEventArgs e)
    {if (qt65.Text != "" && bt.Text == "")
        { Response.Write("<script>alert('Enter Amount for Gastric leavadge')</script>"); }
        else
        {
            if (qt65.Text == "")
            {
                qt65.Text = "0";
            }
            if (bt.Text == "")
            {
                bt.Text = "0";
            }
            bt.Visible = false;
            qt65.Visible = false;
            z0.Visible = true;
            z0.Text = qt65.Text;
            z1.Visible = true;
            z1.Text = bt.Text;
            ImageButton290.Visible = false;
            ImageButton291.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.blood_trancefusion_chargres = Convert.ToDecimal(Convert.ToDecimal(bt.Text)*Convert.ToDecimal(qt65.Text));
            fb.blood_trancefusion_chargres_nos = Convert.ToInt32(qt65.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton291_Click(object sender, ImageClickEventArgs e)
    {
        qt65.Visible = true;
        z0.Visible = false;
        bt.Visible = true;
        z1.Visible = false;
        //ca39.Text = bt.Text;
        ImageButton290.Visible = true;
        ImageButton291.Visible = false;
    }

    protected void qt63_TextChanged(object sender, EventArgs e)
    {
        try {
            physio_theropy.Text = Convert.ToString(Convert.ToDecimal(qt63.Text)*Convert.ToDecimal(rt_text.Text));
        } catch (Exception errr) { }
    }

    protected void rt_text_TextChanged(object sender, EventArgs e)
    {
        try
        {
            physio_theropy.Text = Convert.ToString(Convert.ToDecimal(qt63.Text) * Convert.ToDecimal(rt_text.Text));
        }
        catch (Exception errr) { }
    }

    protected void ImageButton292_Click(object sender, ImageClickEventArgs e)
    {
        if (qt63.Text != "" && rt_text.Text == "")
        {
            Response.Write("<script>alert('Enter Amount for physio Therapy/Stress Test')</swcript>");
        }
        else
        {
            if (qt63.Text == "")
            { qt63.Text = "0"; }
            if (rt_text.Text == "")
            {
                rt_text.Text = "0";
            }
            qt63.Visible = false;
            rt_text.Visible = false;
            ca23.Visible = true;
            ca.Visible = true;
            ca23.Text = qt63.Text;
            ca.Text = rt_text.Text;
            ImageButton292.Visible = false;
            ImageButton293.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.physio_therapy_stress_test = Convert.ToDecimal(Convert.ToDecimal(qt63.Text)*Convert.ToDecimal(rt_text.Text));
            fb.physio_therapy_stress_test_nos = Convert.ToInt32(qt63.Text);
            rt1.SubmitChanges();
        }
    }

    protected void ImageButton293_Click(object sender, ImageClickEventArgs e)
    {
        qt63.Visible = true;
        rt_text.Visible = true;
        ca23.Visible = false;
        ca.Visible = false;
        //ca23.Text = qt63.Text;
       // ca.Text = rt_text.Text;
        ImageButton292.Visible = true;
        ImageButton293.Visible = false;

    }

 

    protected void spaecial_visit_text_TextChanged(object sender, EventArgs e)
    {
        try
        {
            special_visit.Text = Convert.ToString(Convert.ToDecimal(special_visit_text.Text) * Convert.ToDecimal(spaecial_visit_text.Text));
        }
        catch (Exception errrr) { }

    }

    protected void special_visit_TextChanged(object sender, EventArgs e)
    {
        try
        {
            special_visit.Text = Convert.ToString(Convert.ToDecimal(special_visit_text.Text) * Convert.ToDecimal(spaecial_visit_text.Text));
        }
        catch (Exception errrr) { }

    }

    protected void ImageButton294_Click(object sender, ImageClickEventArgs e)
    {
        if (special_visit_text.Text != "" && spaecial_visit_text.Text == "")
        {
            Response.Write("<script>alert('Enter Amount for Special Visit')</script>");
        }
        else {
            if (special_visit_text.Text == "")
            {
                special_visit_text.Text = "0";
            }
            if (spaecial_visit_text.Text == "")
            {
                spaecial_visit_text.Text ="0";
            }
            special_visit_text.Visible = false;
            spaecial_visit_text.Visible = false;
            ca25.Visible = true;
            ca26.Visible = true;
            ca25.Text = special_visit_text.Text;
            ca26.Text = spaecial_visit_text.Text;
            ImageButton294.Visible = false;
            ImageButton295.Visible = true;
            bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
            fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
            fb.special_visit = Convert.ToDecimal(Convert.ToDecimal(special_visit_text.Text) * Convert.ToDecimal(spaecial_visit_text.Text));
            fb.special_visit_nos = Convert.ToInt32(special_visit_text.Text);
            rt1.SubmitChanges();
        }
    }

   
    protected void ImageButton295_Click(object sender, ImageClickEventArgs e)
    {
        special_visit_text.Visible = true;
        spaecial_visit_text.Visible =true;
        ca25.Visible = false;
        ca26.Visible = false ;
        //ca25.Text = special_visit_text.Text;
        //ca26.Text = spaecial_visit_text.Text;
        ImageButton294.Visible = true;
        ImageButton295.Visible = false;
    }



    protected void medicine_text_TextChanged(object sender, EventArgs e)
    {
        try {
            medicine_f.Text = medicine_text.Text;
        }
        catch (Exception errr)
        { }
    }

    protected void ImageButton296_Click(object sender, ImageClickEventArgs e)
    {
        if (medicine_text.Text == "")
        {
            medicine_text.Text = "0";
        }
        medicine_text.Visible = false;
        medicine.Visible = true;
        medicine.Text = medicine_text.Text;
        ImageButton296.Visible = false;
        ImageButton_medicine.Visible = true;
        bc = rt1.basic_charges.Single(basic_charge => basic_charge.id == 100);
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.medicine = Convert.ToDecimal(Convert.ToDecimal(medicine_text.Text) );
        //fb.special_visit_nos = Convert.ToInt32(special_visit.Text);
        rt1.SubmitChanges();
    }

    protected void central_line_Click(object sender, ImageClickEventArgs e)
    {
        qt59.Visible = true;
        ca38.Visible = false;
        //ca38.Text = qt59.Text;
        ImageButton0.Visible = true;
        central_line.Visible = false;
    }

    protected void ImageButton_medicine_Click(object sender, ImageClickEventArgs e)
    {

        medicine_text.Visible = true;
        medicine.Visible =false;
        //medicine.Text = medicine_text.Text;
        ImageButton296.Visible = true;
        ImageButton_medicine.Visible = false;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        if (ryles.Visible == false)
        {
            if (ImageButton0.Visible == false)
            {
                if (syringe.Visible == false)
                {
                    if (ImageButton280.Visible == false)
                    {
                        if (ImageButton282.Visible == false)
                        {
                            if (ImageButton284.Visible == false)
                            {
                                if (ImageButton288.Visible == false)
                                {
                                    if (ImageButton290.Visible == false)
                                    {
                                        if (ImageButton292.Visible == false)
                                        {
                                            MultiView1.ActiveViewIndex = 8 + 1;
                                        }
                                        else { Response.Write("<script>alert('Select all Categories')</script>"); }
                                    }
                                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                                }
                                else { Response.Write("<script>alert('Select all Categories')</script>"); }
                            }
                            else { Response.Write("<script>alert('Select all Categories')</script>"); }
                        }
                        else { Response.Write("<script>alert('Select all Categories')</script>"); }
                    }
                    else { Response.Write("<script>alert('Select all Categories')</script>"); }
                }
                else { Response.Write("<script>alert('Select all Categories')</script>"); }
            }
            else { Response.Write("<script>alert('Select all Categories')</script>"); }
        }
        else { Response.Write("<script>alert('Select all Categories')</script>"); }

      
    }

    protected void ImageButton285_Click(object sender, ImageClickEventArgs e)
    {
        qt62.Visible = true;
        ca20.Visible = false;
        
        //ca21.Text = surgical_instrument.Text;
        ImageButton284.Visible = true;
        ImageButton285.Visible = false;
    }

    protected void Button12_Click(object sender, EventArgs e)
    { //String invoice = obj.getinvoice();
      
        bindbill();
        // billbind();
        

            if (ImageButton294.Visible == false)
            {
                if (ImageButton296.Visible == false)
                {

                    MultiView1.ActiveViewIndex = 11;
                }
                else { Response.Write("<script>alert('Select all Categories')</script>"); }
            }
            else { Response.Write("<script>alert('Select all Categories')</script>"); }

       
    }

    private void bindbill()
    {
        DataTable dt = new DataTable();
        dt.Dispose();
        dt.Columns.Add("perticulars", typeof(String));
        dt.Columns.Add("nos", typeof(String));
        dt.Columns.Add("amount", typeof(String));
        dt.Columns.Add("f_amount", typeof(String));
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        DataRow dtrow = dt.NewRow();  // Create New Row

        DataRow dtrow2 = dt.NewRow();                                  //      dt.ImportRow(dtrow);
        dtrow2["perticulars"] = "Registration Charges";             //Bind Data to Columns
        dtrow2["nos"] = DBNull.Value;
        dtrow2["amount"] = fb.registration_charges;
        dtrow2["f_amount"] = fb.registration_charges;
        dt.Rows.Add(dtrow2);
        Date_of_addmission0.Text = fb.invoice_no;

        if (fb.stay_charges_iccu_nicu!= 0 )
        {
            DataRow dtrow106 = dt.NewRow();
            dtrow106["perticulars"] = "Stay Charges ICCU/NICU"; ;
            dtrow106["nos"] = fb.stay_charges_iccu_nicu_nos.ToString();
            dtrow106["amount"] = (fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            dtrow106["f_amount"] = fb.stay_charges_iccu_nicu.ToString();
            dt.Rows.Add(dtrow106);

        }
        if (fb.stay_charges_delux_spl_genral_nos != 0)
        {
            DataRow dtrow103 = dt.NewRow();
            dtrow103["perticulars"] = "Stay Charges / Delux /Spl. / Genral";
            dtrow103["nos"] = fb.day_of_admit.ToString();
           
                dtrow103["amount"] = (fb.stay_charges_delux_spl_genral /fb.day_of_admit).ToString();
      
            dtrow103["f_amount"] = fb.stay_charges_delux_spl_genral.ToString();
            dt.Rows.Add(dtrow103);

        }
        if (fb.emergency_charges_nos != 0)
        {
            DataRow dtrow101 = dt.NewRow();
            dtrow101["perticulars"] = "Emergency Charges";
            dtrow101["nos"] = fb.emergency_charges_nos.ToString();
            dtrow101["amount"] = (fb.emergency_charges / fb.emergency_charges_nos).ToString();
            dtrow101["f_amount"] = fb.emergency_charges.ToString();
            dt.Rows.Add(dtrow101.ItemArray);


        }
        if (fb.dressing_charges_nos != 0)
        {
            DataRow dtrow100 = dt.NewRow();
            dtrow100["perticulars"] = "Dressing Charges";
            dtrow100["nos"] = fb.dressing_charges.ToString();
            dtrow100["amount"] = (fb.dressing_charges / fb.dressing_charges_nos).ToString();
            dtrow100["f_amount"] = fb.dressing_charges.ToString();
            dt.Rows.Add(dtrow100);

        }
        if (fb.multipara_monitor_charges_nos != 0)
        {
            DataRow dtrow99 = dt.NewRow();
            dtrow99["perticulars"] = "Multipara Monitor Charges";
            dtrow99["nos"] = fb.multipara_monitor_charges_nos.ToString();
            dtrow99["amount"] = (fb.multipara_monitor_charges / fb.multipara_monitor_charges_nos).ToString();
            dtrow99["f_amount"] = fb.multipara_monitor_charges.ToString();
            dt.Rows.Add(dtrow99);

        }
        if (fb.ecg_charges_nos != 0)
        {
            DataRow dtrow98 = dt.NewRow();
            dtrow98["perticulars"] = "ECG Charges";
            dtrow98["nos"] = fb.ecg_charges_nos.ToString();
            dtrow98["amount"] = (fb.ecg_charges / fb.ecg_charges_nos).ToString();
            dtrow98["f_amount"] = fb.ecg_charges.ToString();
            dt.Rows.Add(dtrow98);

        }
        if (fb.oxygen_charges_nos != 0)
        {
            DataRow dtrow96 = dt.NewRow();
            dtrow96["perticulars"] = "Oxygen Charges";
            dtrow96["nos"] = fb.oxygen_charges_nos.ToString();
            dtrow96["amount"] = (fb.oxygen_charges / fb.oxygen_charges_nos).ToString();
            dtrow96["f_amount"] = fb.oxygen_charges.ToString();
            dt.Rows.Add(dtrow96);

        }
        if (fb.ventilator_charges_nos != 0)
        {
            DataRow dtrow93 = dt.NewRow();
            dtrow93["perticulars"] = "Ventilator charges";
            dtrow93["nos"] = fb.ventilator_charges_nos.ToString();
            dtrow93["amount"] = (fb.ventilator_charges / fb.ventilator_charges_nos).ToString();
            dtrow93["f_amount"] = fb.ventilator_charges.ToString();
            dt.Rows.Add(dtrow93);

        }
        if (fb.anaeshtetist_charges != 0)
        {
            DataRow dtrow92 = dt.NewRow();
            dtrow92["perticulars"] = "Anaeshtetist Charges";
            dtrow92["nos"] = DBNull.Value;
            dtrow92["amount"] = (fb.anaeshtetist_charges).ToString();
            dtrow92["f_amount"] = fb.anaeshtetist_charges.ToString();
            dt.Rows.Add(dtrow92);

        }
        if (fb.consultation_charges_nos != 0)
        {
            DataRow dtrow91 = dt.NewRow();
            dtrow91["perticulars"] = "Consultant Charges";
            dtrow91["nos"] = fb.consultation_charges_nos.ToString();
            dtrow91["amount"] = (fb.consultation_charges / fb.consultation_charges_nos).ToString();
            dtrow91["f_amount"] = fb.consultation_charges.ToString();
            dt.Rows.Add(dtrow91);

        }
        if (fb.consultation_charges1_nos != 0)
        {
            DataRow dtrow81 = dt.NewRow();
            dtrow["perticulars"] = "Consultant Charges";
            dtrow81["nos"] = fb.consultation_charges1_nos.ToString();
            dtrow81["amount"] = (fb.consultation_charges1 / fb.consultation_charges1_nos).ToString();
            dtrow81["f_amount"] = fb.consultation_charges1.ToString();
            dt.Rows.Add(dtrow81);

        }
        if (fb.consultation_charges2_nos != 0)
        {
            DataRow dtrow69 = dt.NewRow();
            dtrow69["perticulars"] = "Consultants Charges";
            dtrow69["nos"] = fb.consultation_charges2_nos.ToString();
            dtrow69["amount"] = (fb.consultation_charges2 / fb.consultation_charges2_nos).ToString();
            dtrow69["f_amount"] = fb.consultation_charges2.ToString();
            dt.Rows.Add(dtrow69);

        }
        if (fb.assistant_charges_nos != 0)
        {
            DataRow dtrow66 = dt.NewRow();
            dtrow66["perticulars"] = "Assistant Charges";
            dtrow66["nos"] = fb.assistant_charges_nos.ToString();
            dtrow66["amount"] = (fb.assistant_charges / fb.assistant_charges_nos).ToString();
            dtrow66["f_amount"] = fb.assistant_charges.ToString();
            dt.Rows.Add(dtrow66);

        }
        if (fb.pathology_charges != 0)
        {
            DataRow dtrow63 = dt.NewRow();
            dtrow63["perticulars"] = "Pathology Charges";
            dtrow63["nos"] = DBNull.Value;
            dtrow63["amount"] = DBNull.Value;//(fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            dtrow63["f_amount"] = fb.pathology_charges.ToString();
            dt.Rows.Add(dtrow63);

        }
        if (fb.surgeon_charges != 0)
        {
            DataRow dtrow61 = dt.NewRow();
            dtrow61["perticulars"] = "Surgeon Charges";
            dtrow61["nos"] = DBNull.Value;
            dtrow61["amount"] = ""; // (fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            dtrow61["f_amount"] = fb.surgeon_charges.ToString();
            dt.Rows.Add(dtrow61);

        }
        if (fb.sonography_charges_nos != 0)
        {
            DataRow dtrow39 = dt.NewRow();
            dtrow39["perticulars"] = "Sonography Charges";
            dtrow39["nos"] = fb.sonography_charges_nos.ToString();
            dtrow39["amount"] = (fb.sonography_charges / fb.sonography_charges).ToString();
            dtrow39["f_amount"] = fb.sonography_charges.ToString();
            dt.Rows.Add(dtrow39);

        }
        if (fb.nebulisation_charges_nos != 0)
        {
            DataRow dtrow38 = dt.NewRow();
            dtrow38["perticulars"] = "Nebulistion Charges";
            dtrow38["nos"] = fb.nebulisation_charges_nos.ToString();
            dtrow38["amount"] = (fb.nebulisation_charges / fb.nebulisation_charges_nos).ToString();
            dtrow38["f_amount"] = fb.nebulisation_charges.ToString();
            dt.Rows.Add(dtrow38);

        }
        if (fb.bedside_sonography_2decho_nos != 0)
        {
            DataRow dtrow36 = dt.NewRow();
            dtrow36["perticulars"] = "Bedside Sonography / 2D Echo";
            dtrow36["nos"] = fb.bedside_sonography_2decho_nos.ToString();
            dtrow36["amount"] = (fb.bedside_sonography_2decho / fb.bedside_sonography_2decho_nos).ToString(); ;
            dtrow36["f_amount"] = fb.bedside_sonography_2decho.ToString();
            dt.Rows.Add(dtrow36);

        }
        if (fb.bedside_portable_x_Ray_x_ray_nos != 0)
        {
            DataRow dtrow33 = dt.NewRow();
            dtrow33["perticulars"] = "Bedside portable X-ray";
            dtrow33["nos"] = fb.bedside_portable_x_Ray_x_ray_nos.ToString();
            dtrow33["amount"] = (fb.bedside_portable_x_Ray_x_ray / fb.bedside_portable_x_Ray_x_ray_nos).ToString(); ;
            dtrow33["f_amount"] = fb.bedside_portable_x_Ray_x_ray.ToString();
            dt.Rows.Add(dtrow33);

        }
        if (fb.ryles_tube_nos != 0)
        {
            DataRow dtrow32 = dt.NewRow();
            dtrow32["perticulars"] = "Ryles Tube";
            dtrow32["nos"] = fb.ryles_tube_nos.ToString();
            dtrow32["amount"] = (fb.ryles_tube / fb.ryles_tube_nos).ToString(); ;
            dtrow32["f_amount"] = fb.ryles_tube.ToString();
            dt.Rows.Add(dtrow32);

        }
        if (fb.intubation_nos != 0)
        {
            DataRow dtrow31 = dt.NewRow();
            dtrow31["perticulars"] = "Intubation";
            dtrow31["nos"] = fb.intubation_nos.ToString();
            dtrow31["amount"] = (fb.intubation / fb.intubation_nos).ToString(); ;
            dtrow31["f_amount"] = fb.intubation.ToString();
            dt.Rows.Add(dtrow31);

        }
        if (fb.syringe_pump_nos != 0)
        {
            DataRow dtrow19 = dt.NewRow();
            dtrow19["perticulars"] = "Syringe Pump";
            dtrow19["nos"] = fb.syringe_pump_nos.ToString();
            dtrow19["amount"] = (fb.syringe_pump / fb.syringe_pump_nos).ToString(); ;
            dtrow19["f_amount"] = fb.syringe_pump.ToString();
            dt.Rows.Add(dtrow19);

        }
        if (fb.cathetor_nos != 0)
        {
            DataRow dtrow18 = dt.NewRow();
            dtrow18["perticulars"] = "Cathetor";
            dtrow18["nos"] = fb.cathetor_nos.ToString();
            dtrow18["amount"] = (fb.cathetor / fb.cathetor_nos).ToString(); ;
            dtrow18["f_amount"] = fb.cathetor.ToString();
            dt.Rows.Add(dtrow18);

        }
        if (fb.surgical_instrument_charges != 0)
        {
            DataRow dtrow16 = dt.NewRow();
            dtrow16["perticulars"] = "Surgical Instrument Charges";
            dtrow16["f_amount"] = fb.surgical_instrument_charges.ToString();
            dtrow16["amount"] = DBNull.Value;//(fb.syringe_pump / fb.syringe_pump_nos).ToString(); ;
            dtrow16["nos"] = DBNull.Value;// fb.syringe_pump.ToString();
            dt.Rows.Add(dtrow16);

        }
        if (fb.central_line_nos != 0)
        {
            DataRow dtrow13 = dt.NewRow();
            dtrow13["perticulars"] = "Central Line";
            dtrow13["nos"] = fb.central_line_nos.ToString();
            dtrow13["amount"] = (fb.central_line / fb.central_line_nos).ToString(); ;
            dtrow13["f_amount"] = fb.central_line.ToString();
            dt.Rows.Add(dtrow13);

        }
        DataRow dtrow11 = dt.NewRow();
        dtrow11["perticulars"] = "Nursing Charges";
        dtrow11["nos"] = fb.day_of_admit.ToString();
        dtrow11["amount"] = (fb.nursing_charges / fb.day_of_admit).ToString(); ;
        dtrow11["f_amount"] = fb.nursing_charges.ToString();
        dt.Rows.Add(dtrow11);

        if (fb.gastric_lavag_nos != 0)
        {
            DataRow dtrow10 = dt.NewRow();
            dtrow10["perticulars"] = "Gastrick Leavage";
            dtrow10["nos"] = fb.gastric_lavag_nos.ToString();
            dtrow10["amount"] = (fb.gastric_lavag / fb.gastric_lavag_nos).ToString(); ;
            dtrow10["f_amount"] = fb.gastric_lavag.ToString();
            dt.Rows.Add(dtrow10);


        }
        if (fb.blood_trancefusion_chargres_nos != 0)
        {
            DataRow dtrow9 = dt.NewRow();
            dtrow9["perticulars"] = "Blood Transfusion Charges";
            dtrow9["nos"] = fb.blood_trancefusion_chargres_nos.ToString();
            dtrow9["amount"] = (fb.blood_trancefusion_chargres / fb.blood_trancefusion_chargres_nos).ToString(); ;
            dtrow9["f_amount"] = fb.blood_trancefusion_chargres.ToString();
            dt.Rows.Add(dtrow9);

        }
        if (fb.physio_therapy_stress_test_nos != 0)
        {
            DataRow dtrow8 = dt.NewRow();
            dtrow["perticulars"] = "Physio_therapy /Stress Test";

            dtrow8["nos"] = fb.physio_therapy_stress_test_nos.ToString();
            dtrow8["amount"] = (fb.physio_therapy_stress_test / fb.physio_therapy_stress_test_nos).ToString(); ;
            dtrow8["f_amount"] = fb.physio_therapy_stress_test.ToString();
            dt.Rows.Add(dtrow8);

        }
        if (fb.special_visit_nos != 0)
        {
            DataRow dtrow6 = dt.NewRow();
            dtrow6["perticulars"] = "Special Visit"; ;
            dtrow6["nos"] = fb.special_visit_nos.ToString();
            dtrow6["amount"] = (fb.special_visit / fb.special_visit_nos).ToString();
            dtrow6["f_amount"] = fb.special_visit.ToString();
            dt.Rows.Add(dtrow6);

        }
        if (fb.medicine != 0) { 
        DataRow dtrow3 = dt.NewRow();
        dtrow3["perticulars"] = "Medicine";
        dtrow3["nos"] = "";
        dtrow3["amount"] = "";// (fb.blood_trancefusion_chargres / fb.blood_trancefusion_chargres_nos).ToString(); ;
        dtrow3["f_amount"] = fb.medicine.ToString(); ;// fb.blood_trancefusion_chargres.ToString();
        dt.Rows.Add(dtrow3);
        }
      

        dt.AcceptChanges();
        //bill filling
       DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
         ds = obj.getpateintinfo(Session["pateint_code"].ToString());
        palm_ipd_registration pir = new palm_ipd_registration();
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration=>palm_ipd_registration.pateint_code==Session["pateint_code"].ToString());
        Date_of_addmission.Text = pir.date_of_admission;
        dod.Text = pir.date_of_discharge;
        @in.Text = pir.prn.ToString();
        pateint_name0.Text = ds.Tables[0].Rows[0]["pateient_title"].ToString()+" "+ ds.Tables[0].Rows[0]["pateient_first_name"].ToString()+" "+ ds.Tables[0].Rows[0]["pateient_middle_name"].ToString()+" "+ ds.Tables[0].Rows[0]["pateient_last_name"].ToString();
        htmlTable.Append("<table style='width:100%' border=1px>");
        
        htmlTable.Append("<tr><td >No. </td > <td> MEMORANDUM OF CHARGES</td> <td colspan = '4'> <table width='100%'> <tr><td colspan = '3' ><center>PARTICULARS OF DEPOSIT</center></td></tr><tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nos.  </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Amount </td> </tr></table>");

        if (!object.Equals(dt, null))
        {
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    int no = i + 1;
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='left'>" +no + "</td>");
                    htmlTable.Append("<td align='left'>" + dt.Rows[i]["perticulars"] + "</td>");
                    htmlTable.Append("<td align='center'>" + dt.Rows[i]["nos"] + "</td>");
                    htmlTable.Append("<td align='right'>" + dt.Rows[i]["amount"] + "</td>");
                    htmlTable.Append("<td align='right'>" + dt.Rows[i]["f_amount"] + "</td>");

                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("<tr><td></td><td colspan='3'>Total Bill  </td > <td><center>"+fb.total_bill+"</center> </td>  </tr>");
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

    public void billbind()
    {
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        Label382.Text = fb.registration_charges.ToString();
        label1.Text = fb.registration_charges.ToString();
        if (fb.stay_charges_iccu_nicu_nos != 0)
        {
            Label301.Text = fb.stay_charges_iccu_nicu_nos.ToString();
            Label303.Text = (fb.stay_charges_iccu_nicu/fb.stay_charges_iccu_nicu_nos).ToString();
            Label383.Text = fb.stay_charges_iccu_nicu.ToString();
        }
        if (fb.stay_charges_delux_spl_genral_nos != 0)
        {
            Label386.Text = fb.day_of_admit.ToString();
            Label305.Text = (fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            Label306.Text = fb.stay_charges_delux_spl_genral.ToString();
        }
        if (fb.emergency_charges_nos != 0)
        {
            Label203.Text = fb.emergency_charges_nos.ToString();
            Label305.Text = (fb.emergency_charges/ fb.emergency_charges_nos).ToString();
            emer.Text = fb.emergency_charges_nos.ToString();
        }
        if (fb.dressing_charges_nos != 0)
        {
            Label152.Text = fb.dressing_charges.ToString();
            q.Text = (fb.dressing_charges / fb.dressing_charges_nos).ToString();
            qqq.Text = fb.dressing_charges.ToString();
        }
        if (fb.multipara_monitor_charges_nos != 0)
        {
            Label308.Text = fb.multipara_monitor_charges_nos.ToString();
            Label309.Text = (fb.multipara_monitor_charges / fb.multipara_monitor_charges_nos).ToString();
            Label310.Text = fb.multipara_monitor_charges_nos.ToString();
        }
        if (fb.ecg_charges_nos != 0)
        {
            Label311.Text = fb.ecg_charges_nos.ToString();
            ecg_chargesf.Text = (fb.ecg_charges / fb.ecg_charges_nos).ToString();
            Label313.Text = fb.ecg_charges.ToString();
        }
        if (fb.oxygen_charges_nos != 0)
        {
            oxygen.Text = fb.oxygen_charges_nos.ToString();
            Label315.Text = (fb.oxygen_charges / fb.oxygen_charges_nos).ToString();
            Label316.Text = fb.oxygen_charges.ToString();
        }
        if (fb.ventilator_charges_nos != 0)
        {
            ventilator.Text = fb.ventilator_charges_nos.ToString();
            Label318.Text = (fb.ventilator_charges / fb.ventilator_charges_nos).ToString();
            Label319.Text = fb.ventilator_charges.ToString();
        }
        if (fb.anaeshtetist_charges != 0)
        {
            //Label301.Text = fb.day_of_admit.ToString();
            Label321.Text = (fb.anaeshtetist_charges).ToString();
            anesthetist.Text = fb.anaeshtetist_charges.ToString();
        }
        if (fb.consultation_charges_nos!= 0)
        {
            Label323.Text = fb.consultation_charges_nos.ToString();
            Label324.Text = (fb.consultation_charges / fb.consultation_charges_nos).ToString();
            Label325.Text = fb.consultation_charges.ToString();
        }
        if (fb.consultation_charges1_nos != 0)
        {
            Label323.Text = fb.consultation_charges1_nos.ToString();
            Label324.Text = (fb.consultation_charges1 / fb.consultation_charges1_nos).ToString();
            Label325.Text = fb.consultation_charges1.ToString();
        }
        if (fb.consultation_charges2_nos != 0)
        {
            Label329.Text = fb.consultation_charges2_nos.ToString();
            Label330.Text = (fb.consultation_charges2 / fb.consultation_charges2_nos).ToString();
            Label331.Text = fb.consultation_charges2.ToString();
        }
        if (fb.assistant_charges_nos != 0)
        {
            Label332.Text = fb.assistant_charges_nos.ToString();
            Label333.Text = (fb.assistant_charges / fb.assistant_charges_nos).ToString();
            Label334.Text = fb.assistant_charges.ToString();
        }
        if (fb.pathology_charges != 0)
        {
        //    Label301.Text = fb.day_of_admit.ToString();
          //  Label303.Text = (fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            pathologyf_charge.Text = fb.pathology_charges.ToString();
        }
        if (fb.surgeon_charges!= 0)
        {
            //Label301.Text = fb.day_of_admit.ToString();
            //Label303.Text = (fb.stay_charges_iccu_nicu / fb.stay_charges_iccu_nicu_nos).ToString();
            surgon_charges.Text = fb.surgeon_charges.ToString();
        }
        if (fb.sonography_charges_nos != 0)
        {
            sono_nos.Text = fb.sonography_charges_nos.ToString();
            sono_amount.Text = (fb.sonography_charges / fb.sonography_charges).ToString();
            amount.Text = fb.day_of_admit.ToString();
       }
        if(fb.nebulisation_charges_nos != 0)
        {
    neb_nos.Text = fb.nebulisation_charges_nos.ToString();
           neb_amount.Text = (fb.nebulisation_charges / fb.nebulisation_charges_nos).ToString();
            neb_amount.Text = fb.nebulisation_charges.ToString();
        }
        if (fb.bedside_sonography_2decho_nos != 0)
        {
            bedside_sono.Text = fb.bedside_sonography_2decho_nos.ToString();
            Label348.Text = (fb.bedside_sonography_2decho / fb.bedside_sonography_2decho_nos).ToString(); ;
            Label349.Text = fb.bedside_sonography_2decho.ToString();
        }
        if (fb.bedside_portable_x_Ray_x_ray_nos != 0)
        {
            Label350.Text = fb.bedside_portable_x_Ray_x_ray_nos.ToString();
            Label351.Text = (fb.bedside_portable_x_Ray_x_ray/ fb.bedside_portable_x_Ray_x_ray_nos).ToString(); ;
            Label349.Text = fb.bedside_portable_x_Ray_x_ray.ToString();
        }
        if (fb.ryles_tube_nos != 0)
        {
            Label353.Text = fb.ryles_tube_nos.ToString();
            ryles_tube.Text = (fb.ryles_tube / fb.ryles_tube_nos).ToString(); ;
            Label355.Text = fb.ryles_tube.ToString();
        }
        if (fb.intubation_nos != 0)
        {
            Label356.Text = fb.intubation_nos.ToString();
            intubation.Text = (fb.intubation / fb.intubation_nos).ToString(); ;
            Label358.Text = fb.intubation.ToString();
        }
        if (fb.syringe_pump_nos != 0)
        {
            Label181.Text = fb.syringe_pump_nos.ToString();
            syringe_pump.Text = (fb.syringe_pump / fb.syringe_pump_nos).ToString(); ;
            Label265.Text = fb.syringe_pump.ToString();
        }
        if (fb.cathetor_nos!= 0)
        {
            Label359.Text = fb.cathetor_nos.ToString();
            Label360.Text = (fb.cathetor / fb.cathetor_nos).ToString(); ;
            Label361.Text = fb.cathetor.ToString();
        }
        if (fb.surgical_instrument_charges != 0)
        {
            Label362.Text = fb.surgical_instrument_charges.ToString();
            //syringe_pump.Text = (fb.syringe_pump / fb.syringe_pump_nos).ToString(); ;
            //Label265.Text = fb.syringe_pump.ToString();
        }
        if (fb.central_line_nos != 0)
        {
            Label388.Text = fb.central_line_nos.ToString();
            Label389.Text = (fb.central_line/ fb.central_line_nos).ToString(); ;
            Label390.Text = fb.central_line.ToString();
        }
      
            Label365.Text = fb.day_of_admit.ToString();
            Label366.Text = (fb.nursing_charges /fb.day_of_admit).ToString(); ;
            nurse_charge.Text = fb.day_of_admit.ToString();

        if (fb.gastric_lavag_nos != 0)
        {
            Label368.Text = fb.gastric_lavag_nos.ToString();
            Label369.Text = (fb.gastric_lavag / fb.gastric_lavag_nos).ToString(); ;
            b21.Text = fb.gastric_lavag.ToString();
        }
        if (fb.blood_trancefusion_chargres_nos != 0)
        {
            b22.Text = fb.blood_trancefusion_chargres_nos.ToString();
            b23.Text = (fb.blood_trancefusion_chargres/ fb.blood_trancefusion_chargres_nos).ToString(); ;
            b29.Text = fb.blood_trancefusion_chargres.ToString();
        }
        if (fb.physio_therapy_stress_test_nos!= 0)
        {
            b25.Text = fb.physio_therapy_stress_test_nos.ToString();
            b26.Text = (fb.physio_therapy_stress_test/ fb.physio_therapy_stress_test_nos).ToString(); ;
            b29.Text = fb.physio_therapy_stress_test.ToString();
        }
        if (fb.special_visit_nos!= 0)
        {
            Label291.Text = fb.special_visit_nos.ToString();
            Label292.Text = (fb.special_visit/ fb.special_visit_nos).ToString(); 
            Label293.Text = fb.special_visit.ToString();
        }
       
          Label296.Text = fb.medicine.ToString();
           // b23.Text = (fb.blood_trancefusion_chargres / fb.blood_trancefusion_chargres_nos).ToString(); ;
            //b29.Text = fb.blood_trancefusion_chargres.ToString();
       
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 8;
    }

    protected void ImageButton209_Click(object sender, ImageClickEventArgs e)
    {
        qt32.Visible = true;
        TextBox52.Visible =true;
        //cc9.Text = qt32.Text;
//        cc13.Text = TextBox52.Text;
        cc6.Visible = false;
        cc13.Visible = false;
        ImageButton208.Visible = true;
        ImageButton209.Visible = false;
    }

    protected void qt65_TextChanged(object sender, EventArgs e)
    {
        try
        {
            btc.Text = Convert.ToString(Convert.ToDecimal(qt65.Text) * Convert.ToDecimal(bt.Text));
        }
        catch (Exception errrr) { }
    }

    protected void qt6z_TextChanged(object sender, EventArgs e)
    {
        try
        {
            gastric_leavage.Text = Convert.ToString(Convert.ToDecimal(gastric_text.Text)*Convert.ToDecimal(qt6z.Text));
        }
        catch (Exception errr) { }
    }





    protected void Button14_Click(object sender, EventArgs e)
    {
        Decimal total = 0;
        total= obj.totalbill(Session["pateint_code"].ToString());
        final_bill1.Text = total.ToString();
        fb = rt1.final_bills.Single(final_bill => final_bill.pateint_code == Session["pateint_code"].ToString());
        fb.total_bill = Convert.ToDecimal(Convert.ToDecimal(total));
        rt1.SubmitChanges();
    }

    protected void LinkButton46_Click(object sender, EventArgs e)
    {
        bindbill();
        MultiView1.ActiveViewIndex = 10;
    }

    protected void LinkButton48_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 12;
    }

    protected void LinkButton49_Click(object sender, EventArgs e)
    {
        Session["printing"] = 1;
        Response.Redirect("~/nurse_module/IPD/ipdreg.aspx");
    }

    protected void LinkButton50_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 16;

    }

    protected void Button18_Click(object sender, EventArgs e)
    {
        palm_discharge_medication pc = new palm_discharge_medication();
        pc.inserted_by = Session["emp_code"].ToString();
        pc.inserted_on = DateTime.Today.ToString();
        pc.patient_code = Session["pateint_code"].ToString();
        pc.prn = Session["prn"].ToString();
        pc.drug = TextBox21.Text;
        pc.days = Convert.ToInt16(text0.Text);
        if (TextBox25.Text == "")
        { pc.timea = 0; }
        else { pc.timea = Convert.ToInt16(TextBox25.Text); }

        if (TextBox66.Text == "")
        { pc.timeb = 0; }
        else { pc.timeb = Convert.ToInt16(TextBox66.Text); }

        if (text66.Text == "")
        { pc.timec = 0; }
        else { pc.timec = Convert.ToInt16(text66.Text); }

        if (text6.Text == "")
        { pc.timed = 0; }
        else { pc.timed = Convert.ToInt16(text6.Text); }
        rt1.palm_discharge_medications.InsertOnSubmit(pc);
        rt1.SubmitChanges();
        pal.DataBind();
    }

    protected void pal_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["medication_id"] = pal.SelectedRow.Cells[0];
    }

    protected void LinkButton50_Click1(object sender, EventArgs e)
    {
        palm_pateint_master ppm = new palm_pateint_master();
        palm_ipd_registration pir = new palm_ipd_registration();
        ppm = rt.palm_pateint_masters.Single(palm_pateint_master=>palm_pateint_master.pateint_code==Session["pateint_code"].ToString());
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration=>palm_ipd_registration.pateint_code==Session["pateint_code"].ToString());
        ipd_no.Text = Convert.ToString(pir.prn);
        pateint_name1.Text = ppm.pateient_title + ". " + ppm.pateient_first_name + " " + ppm.pateient_middle_name + " " + ppm.pateient_last_name;
        dod0.Text = pir.date_of_discharge;
        tod.Text = pir.time_of_discharge;
        Date_of_addmissionr0.Text = pir.date_of_admission;
        toa.Text = pir.time_admission;
        palm_doctor_employee pde = new palm_doctor_employee();
        pde = rt.palm_doctor_employees.Single(palm_doctor_employee=>palm_doctor_employee.emp_code==pir.consultant_doctor_name);
        dr_incharge.Text = pde.doctor_name;
        palm_department pd = new palm_department();
        pd = rt.palm_departments.Single(palm_department=>palm_department.department_code==pir.department_code);
        speciality.Text = pd.department_desc;
        palm_pateints_profile ppp = new palm_pateints_profile();
        ppp = rt.palm_pateints_profiles.Single(palm_pateints_profile=>palm_pateints_profile.pateint_code==Session["pateint_code"].ToString());
        address.Text = " House No :" + ppp.present_house_no + " , Building/Society : " + ppp.present_build_society + ", Area : " + ppp.present_area + ",Locality : "+ppp.present_locality+", City : " + ppp.present_city;
        operative_note1.Text = pir.follow_up;
        operative_note2.Text = pir.follow_up_time;
        operative_note.Text = pir.operative_note;
/*
        //temporary dignosis
        palm_ipd_final_diagnosi pid = new palm_ipd_final_diagnosi();
        palm_ipd_diagnosis_master pidmaster = new palm_ipd_diagnosis_master();
        pidmaster = rt1.palm_ipd_diagnosis_masters.Single(palm_ipd_diagnosis_master=>palm_ipd_diagnosis_master.pateint_code==Session["pateint_code"].ToString());
        pid = rt1.palm_ipd_final_diagnosis.Single(palm_ipd_final_diagnosi=>palm_ipd_final_diagnosi.master_id==pidmaster.opd_diagnosis_master_id);
        diagnosis.Text = pid.Final_diagnosis;
        */
        //permanant diagnosis
        
        String digno=bl.getdignod(Session["pateint_code"].ToString());
        diagnosis.Text = digno;
        String investigation1 = bl.getinves(Session["pateint_code"].ToString());
        
        investigation.Text = investigation1;

        //chief Complaints
        String cCompalint = bl.getcompl(Session["pateint_code"].ToString());
        chief_complaints.Text = cCompalint;
        //examiniation detail
        palm_ipd_genralexamination pig = new palm_ipd_genralexamination();
        pig = rt1.palm_ipd_genralexaminations.Single(palm_ipd_genralexamination=>palm_ipd_genralexamination.pateint_code==Session["pateint_code"].ToString());
        temp.Text = pig.tenp;
        pulse.Text = pig.pulse;
        bp.Text = pig.bp;
        resp.Text = pig.rr;
        cns.Text = pig.cns;
        rs.Text = pig.r_s;
        cvs.Text = pig.cvs;

        MultiView1.ActiveViewIndex = 15;
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        palm_ipd_registration pir = new palm_ipd_registration();
        pir = rt1.palm_ipd_registrations.Single(palm_ipd_registration=>palm_ipd_registration.pateint_code==Session["pateint_code"].ToString());
        pir.operative_note = operative_notetext.Text;
        operative_note001.Text = operative_notetext.Text;
        rt1.SubmitChanges();
    }

    protected void Button19_Click(object sender, EventArgs e)
    {

    }
} 
