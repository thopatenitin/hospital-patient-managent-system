using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vitalsign : System.Web.UI.Page
{
    IPDDataContext rt1 = new IPDDataContext();
    palm_ipd_genralexamination pig = new palm_ipd_genralexamination();
    protected void Page_Load(object sender, EventArgs e)
    { 
        try
        {
            pig = rt1.palm_ipd_genralexaminations.Single(palm_ipd_genralexamination => palm_ipd_genralexamination.pateint_code == Session["pateint_code"].ToString());
            TextBox2.Text= pig.built.ToString() ;
            TextBox26.Text=pig.pulse ;
            TextBox3.Text= pig.rr ;
             text.Text=pig.pallor;
            qt0.Text=pig.clubing;
             TextBox28.Text=pig.peripheral_pulse;
            TextBox29.Text=pig.hjr;
             TextBox32.Text=pig.oedema;
             TextBox30.Text=pig.icterus;
             TextBox33.Text=pig.erruptions;
             TextBox5.Text=pig.bp;
            TextBox6.Text=pig.cyanosis;
            qt1.Text=pig.jvp;
            TextBox35.Text=pig.adenopathy;
             qt2.Text=pig.other;
            TextBox36.Text=pig.cvs;
             TextBox42.Text=pig.r_s;
             TextBox43.Text=pig.p_a;
             TextBox46.Text=pig.cns;
            TextBox48.Text=pig.ps_pv;
            temp.Text = pig.tenp;
                ;
        }
        catch (Exception err)
        { }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        pig.prn = Session["prn"].ToString();
        pig.pateint_code = Session["pateint_code"].ToString();
        
        pig.built = TextBox2.Text;
        pig.pulse = TextBox26.Text;
        pig.rr = TextBox3.Text;
        pig.pallor = text.Text;
        pig.clubing = qt0.Text;
        pig.peripheral_pulse = TextBox28.Text;
        pig.hjr = TextBox29.Text;
        pig.oedema = TextBox32.Text;
        pig.icterus = TextBox30.Text;
        pig.erruptions = TextBox33.Text;
        pig.bp = TextBox5.Text;
        pig.cyanosis = TextBox6.Text;
        pig.jvp = qt1.Text;
        pig.adenopathy = TextBox35.Text;
        pig.other = qt2.Text;
        pig.cvs = TextBox36.Text;
        pig.r_s = TextBox42.Text;
        pig.p_a = TextBox43.Text;
        pig.cns = TextBox46.Text;
        pig.ps_pv = TextBox48.Text;
        pig.tenp = temp.Text;
        rt1.palm_ipd_genralexaminations.InsertOnSubmit(pig);
        rt1.SubmitChanges();
    }
}