using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERCONTROL_history_ipd : System.Web.UI.UserControl
{
    IPDDataContext rt1 = new IPDDataContext();
    palm_ipd_history pih = new palm_ipd_history();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        pih.maritual_history = TextBox1.Text;
        pih.past_medical_history = q.Text;
        pih.past_surgical_history = TextBox5.Text;
        pih.bowel = q0.Text;
        pih.appetite = TextBox8.Text;
        pih.bladder = TextBox9.Text;
        pih.sleep_pattern = TextBox10.Text;
        pih.addiction = TextBox11.Text;
        pih.allergic_history = TextBox6.Text;
        pih.menstrul_history = RadioButtonList1.SelectedValue;
        rt1.palm_ipd_histories.InsertOnSubmit(pih);
        rt1.SubmitChanges();
        MultiView1.ActiveViewIndex = 1;
    }
}