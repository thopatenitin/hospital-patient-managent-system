using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
public partial class doctor_module_in_patient_intake_output : System.Web.UI.Page
{ clsbusslayer obj = new clsbusslayer();
    IPDDataContext rt1 = new IPDDataContext();
    master_intake_output mio = new master_intake_output();
    intake_output io = new intake_output();
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["emp_code"] = "PBH201710621";
        Session["pateint_code"] = "20174047";
        Session["prn"] = "OPD20171025";
        Session["pateint_name"] = "nitin";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      /*  try
        {*/
            String date = obj.getdate1(d.Text);
            if (date == null)
            {
                mio.date = d.Text;
                mio.pateint_code = Session["pateint_code"].ToString();
                mio.prn = Session["prn"].ToString();
                rt1.master_intake_outputs.InsertOnSubmit(mio);
                rt1.SubmitChanges();
                //slave table
                mio = rt1.master_intake_outputs.Single(master_intake_output => master_intake_output.date == d.Text);
                io.date = mio.date;
                io.io_id = mio.io_id;
                io.temp = Convert.ToDecimal(TextBox80.Text);
            io.pulse = Convert.ToInt64(TextBox22.Text);
            io.bp = TextBox14.Text;
            io.rr = TextBox69.Text;
            io.spo = qt.Text;
            io.oxy = Convert.ToDecimal(qt0.Text);
            io.rbs = Convert.ToDecimal(qt1.Text);
            io.oral = qt2.Text;
            io.iv = qt3.Text;
            io.urine = qt9.Text;
            io.stool = qt5.Text;
            io.aspiration = qt6.Text;
            io.bedsore = qt8.Text;
            rt1.intake_outputs.InsertOnSubmit(io);
            rt1.SubmitChanges();

        }
            else
        {
            

            mio = rt1.master_intake_outputs.Single(master_intake_output => master_intake_output.date == d.Text);
            io.date = mio.date;
            io.io_id = mio.io_id;
            io.temp = Convert.ToDecimal(TextBox80.Text);
            io.pulse = Convert.ToInt64(TextBox22.Text);
            io.bp = TextBox14.Text;
            io.rr = TextBox69.Text;
            io.spo = qt.Text;
            io.oxy = Convert.ToDecimal(qt0.Text);
            io.rbs = Convert.ToDecimal(qt1.Text);
            io.oral = qt2.Text;
            io.iv = qt3.Text;
            io.urine = qt9.Text;
            io.stool = qt5.Text;
            io.aspiration = qt6.Text;
            io.bedsore = qt8.Text;
            rt1.intake_outputs.InsertOnSubmit(io);
            rt1.SubmitChanges();
        }
            var result = from data in rt1.master_intake_outputs
                         where data.date == d.Text
                         select data;
        Session["io_id"] = mio.io_id;
            GridView1.DataBind();
       // Session["io_id"] =null;
        /*}
        catch (Exception err)
        { Response.Write("<script>alert('Enter Valid Readings')</script>"); }*/
    }





    protected void date_TextChanged(object sender, EventArgs e)
    {
        mio = rt1.master_intake_outputs.Single(master_intake_output => master_intake_output.date == d.Text);
        Session["io_id"] = mio.io_id;
        GridView1.DataBind();

        /* var result = from data in rt1.master_intake_outputs
                       where data.date == date1.Text
                       select data;
          DataTable dt = new DataTable();
          GridView1.DataSource = result;
          GridView1.DataBind();*/
    }
}