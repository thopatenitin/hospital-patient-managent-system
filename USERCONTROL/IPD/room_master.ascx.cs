using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using presentation;
using BLL;
using System.Data;
public partial class USERCONTROL_IPD_room_master : System.Web.UI.UserControl
{

  
   palm_ipd_registration pl = new palm_ipd_registration();
    palm_pateints_kin_detail pkd = new palm_pateints_kin_detail();
    IPDDataContext rt = new IPDDataContext();
    room_master rm = new room_master();
    palm_bed_category pbc = new palm_bed_category();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   

   

    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       // String id = GridView3.SelectedRow.Cells[0].ToString();
        int room_no = Convert.ToInt16(e.CommandArgument);
        Session["room_no"] = room_no;
        GridView2.DataBind();
       // Session["room_no"] = null;
       /* rm = rt.room_masters.Single(room_master => room_master.room_no == room_no);
        var q =
                from a in rt.GetTable<palm_bed_category>()
                where a.room_no == room_no
                select a;
       
        
        GridView2.DataSource = q;
        GridView2.DataBind();*/

       
    }



    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        rm=rt.room_masters.Single(room_master=>room_master.room_no ==Convert.ToInt32( GridView2.SelectedRow.Cells[1].Text));
        Response.Write("<script>alert('"+GridView2.SelectedRow.Cells[0]+"')</script>");
        Session["room_no"] = GridView2.SelectedRow.Cells[1].Text;
        Session["bed_no"] =GridView2.SelectedRow.Cells[0].Text;
        Session["room_type"] =rm.room_type;
        MultiView1.ActiveViewIndex = 1;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        pl.department_code = Session["department"].ToString();
        pl.consultant_doctor_name = Session["con_doctor1"].ToString();
        pl.consultant1_doctor_name = Session["con_doctor2"].ToString();
        pl.consultant2_doctor_name = Session["con_doctor3"].ToString();
        pl.room_type = Session["room_type"].ToString();
        pl.room_no = Convert.ToInt32(Session["room_no"]);
        pl.bed_no = Convert.ToInt32(Session["bed_no"]);
        pl.date_of_admission = TextBox5.Text;
        pl.time_admission = TextBox6.Text;
        pl.inserted_by = Session["emp_code"].ToString();
        pl.inserted_on = DateTime.Now;
        rt.palm_ipd_registrations.InsertOnSubmit(pl);
        rt.SubmitChanges();
        pkd.kin_next_name = TextBox1.Text;
        pkd.kin_reln_pateint = TextBox2.Text;
        pkd.kin_tele_no = TextBox3.Text;
        rt.palm_pateints_kin_details.InsertOnSubmit(pkd);
        rt.SubmitChanges();
        
    }
}