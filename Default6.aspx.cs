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

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute]
    public static string[] getcomplain(string prefix, int count)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SP4LJ9B;Initial Catalog=palm;Integrated Security=True");
        DataTable ds = new DataTable();
        SqlDataAdapter da;
        String sql = String.Format("SELECT country_desc from palm_country_master where country_desc like '{0}%'", prefix);
        SqlCommand cmd = new SqlCommand(sql, con);
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        int rcount, size;
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
}