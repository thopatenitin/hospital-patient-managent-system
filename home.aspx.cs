using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using BLL;


public partial class home : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        clsbusslayer obj = new clsbusslayer();
        String role =obj.login(TextBox1.Text, TextBox2.Text);
        if (role == "null")
        {
            Response.Write("<SCRIPT>alert('Username or password Is incorrect')</SCRIPT>");
        }
        else {
           
            DataClassesDataContext rt = new DataClassesDataContext();
            employee_registration er = new employee_registration();
            employee_master em = new employee_master();
            em = rt.employee_masters.Single(employee_master=>employee_master.username==TextBox1.Text);
            Session["emp_code"] = em.emp_code;
            er = rt.employee_registrations.Single(employee_registration=>employee_registration.employee_code==em.emp_code);
            Session["emp_name"] = er.full_name;
            
            switch (role)
            {
                case "doctor":
                   
                    Response.Redirect("~/doctor_module/doctor.aspx");
                    break;
                case "admin":
                  
                    Response.Redirect("~/admin_home.aspx");
                    break;
                case "nurse":
                    
                    Response.Redirect("~/nurse_module/Default.aspx");
                    break;
                case "pathologist":
                    Response.Redirect("~/pathology/pathology_home.aspx");
                    break;
                default:
                    Response.Write("<SCRIPT>alert('Username or password Is incorrect')</SCRIPT>");
                    break;
            } }
        
          
     
                      
        }
     
      
        
    }
