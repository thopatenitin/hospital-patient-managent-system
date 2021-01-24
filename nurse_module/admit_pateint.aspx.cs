using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nurse_module_admit_pateint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pateint_code"] = GridView1.SelectedRow.Cells[0].Text; 
        Session["pateint_name"] = GridView1.SelectedRow.Cells[1].Text + " " + GridView1.SelectedRow.Cells[2].Text + " " + GridView1.SelectedRow.Cells[4].Text;
        Response.Redirect("~/nurse_module/IPD/ipdreg.aspx");
    }
}