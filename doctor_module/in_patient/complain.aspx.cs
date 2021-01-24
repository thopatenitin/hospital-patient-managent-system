using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System;
using System.Data;
using System.Data.SqlClient;
using presentation;
using System.Configuration;

public partial class doctor_module_in_patient__complain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SP4LJ9B;Initial Catalog=palm;Integrated Security=True");
    clsbusslayer obj = new clsbusslayer(); 
    IPDDataContext rt1 = new IPDDataContext();
    palm_ipd_complain pic = new palm_ipd_complain();

    protected void Page_Load(object sender, EventArgs e)
    {
      /*  Session["emp_code"] = "1";
        Session["pateint_code"] = "1";
        Session["prn"] = "1";
        Session["pateint_name"] = "1";*/
    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute]
    public static  string[] getcomplain(string prefix,int count) {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SP4LJ9B;Initial Catalog=palm;Integrated Security=True");
        DataTable ds = new DataTable();
        SqlDataAdapter da;
        String sql = String.Format("SELECT complain from palm_ipd_complain where complain like '{0}%'", prefix);
        SqlCommand cmd = new SqlCommand(sql, con);
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        int rcount,size;
        rcount = ds.Rows.Count;
        if (rcount >= count)
        {
            size = count;
        }
        else
        {
            size = rcount;
        }
      //  DataTable ds = new DataTable();
        //ds = objDAL.getcomplain(v);
        string[] complain = new string[ds.Rows.Count - 1];
        for (int i = 0; i <= size; i++)
        {
            complain[i] = ds.Rows[i][0].ToString();
        }
        return complain;
       // return obj.getcomplain(prefix);
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {
        pic.inserted_by = Session["emp_code"].ToString();
        pic.inserted_on = DateTime.Now.ToString();
        pic.patient_code = Session["pateint_code"].ToString();
        pic.complain = TextBox1.Text;
        pic.remark = TextBox2.Text;
        rt1.palm_ipd_complains.InsertOnSubmit(pic);
        rt1.SubmitChanges();
        GridView1.DataBind();
    }
}