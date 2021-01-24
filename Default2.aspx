<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

       
        .auto-style16 {
            margin-right: 6px;
        }
       
    #nav {
margin:0;padding:0;float:left;
}
    #nav li {
    list-style:none;background:#fff;width:250px; border-bottom:1px solid #666; 

    }
                

        .auto-style14 {
            height: 64px;
        }
       
        #nav li a {
        border-left:4px solid #069; background:#f8f8f8;
        }
                        

        #nav li a {
       display:block;padding:20px;border-left:4px solid #444; text-decoration:none; box-shadow:2px 2px 5px #ccc;
             }
        .auto-style9 {
            height: 24px;
        }
        #nav li ul {
        display:none;
        }
        </style>
    <link href="theme/vmenu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
                 <asp:Panel ID="Panel6" runat="server" Height="672px" CssClass="auto-style16">
                 <ul id="nav">
        <li class="auto-style14" ><a href="#">Dashboard</a></li>
        <li><a href="#" class="auto-style9">Biling</a></li>
                     <li><asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton2_Click">EMR</asp:LinkButton>
                         <ul><li><asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton2_Click">In-Patient EMR</asp:LinkButton></li>
                             <li><asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton2_Click">Out-Patient EMR</asp:LinkButton></li>
                         </ul>
                     </li>
        <li><a href="#">patient Management</a>
            <ul>
                <li><a href="Default2.aspx">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton2_Click">Patient12</asp:LinkButton></li>
                <li><a href="#">IPD</a><ul><li><asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton2_Click">Admit Patient</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton2_Click">In-Patient Enquiry</asp:LinkButton></li>
                    </ul></li>
                <li><a href="#">OPD</a>
                    <ul><li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton2_Click">OPD Registration</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click">Out-Patient Enquiry</asp:LinkButton></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton2_Click">Room Management </asp:LinkButton>
            <ul><li><asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton2_Click">Room Enquiry</asp:LinkButton></li>
               <li> <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton2_Click">Room Category</asp:LinkButton></li>
                <li> <asp:LinkButton ID="LinkButton16" runat="server" OnClick="LinkButton2_Click">Room Master</asp:LinkButton></li>
                <li> <asp:LinkButton ID="LinkButton17" runat="server" OnClick="LinkButton2_Click">Room Bed Master</asp:LinkButton></li>
            </ul>
        </li>
        <li><a href="#">Nurse Module</a>
            <ul>
<li><asp:LinkButton ID="LinkButton18" runat="server" OnClick="LinkButton2_Click">Patient Medication</asp:LinkButton>
 <li><asp:LinkButton ID="LinkButton20" runat="server" OnClick="LinkButton2_Click">Intake/Output Record</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton21" runat="server" OnClick="LinkButton2_Click">Nurse Progress Note</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton22" runat="server" OnClick="LinkButton2_Click">Vital Sign</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton23" runat="server" OnClick="LinkButton2_Click">Bed Side Procedure</asp:LinkButton>
   <li><asp:LinkButton ID="LinkButton24" runat="server" OnClick="LinkButton2_Click">IP Room Transfer</asp:LinkButton>
                        <li><asp:LinkButton ID="LinkButton25" runat="server" OnClick="LinkButton2_Click">Patient History</asp:LinkButton>
    <li><asp:LinkButton ID="LinkButton19" runat="server" OnClick="LinkButton2_Click">Discharge Summary</asp:LinkButton>
            </ul>
        </li>
        <li><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton2_Click">Doctor Module</asp:LinkButton>
            <ul><li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton2_Click">In-patient</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton2_Click">Out-Patient</asp:LinkButton></li>
                    </ul>
        </li>
                     <li><a href="#">User Management</a>
            <ul>
<li><asp:LinkButton ID="LinkButton26" runat="server" OnClick="LinkButton2_Click">Add New User</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton27" runat="server" OnClick="LinkButton2_Click">User Masterlis</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton28" runat="server" OnClick="LinkButton2_Click">User Role</asp:LinkButton>
   
                     </ul></li>
                      <li><a href="#">Administrator</a>
            <ul>
<li><asp:LinkButton ID="LinkButton29" runat="server" OnClick="LinkButton2_Click">Department Master </asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton30" runat="server" OnClick="LinkButton2_Click">Designation Master</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton31" runat="server" OnClick="LinkButton2_Click">Bill Group Name Master</asp:LinkButton>
      <li><asp:LinkButton ID="LinkButton32" runat="server" OnClick="LinkButton2_Click">Perticular bill master</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton33" runat="server" OnClick="LinkButton2_Click">Complain Master</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton34" runat="server" OnClick="LinkButton2_Click">diagnosis Master</asp:LinkButton>
      <li><asp:LinkButton ID="LinkButton35" runat="server" OnClick="LinkButton2_Click">Insurance Company</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton36" runat="server" OnClick="LinkButton2_Click">Medicine Management</asp:LinkButton>
  <li><asp:LinkButton ID="LinkButton37" runat="server" OnClick="LinkButton2_Click">System Parameter</asp:LinkButton>
      <li><asp:LinkButton ID="LinkButton38" runat="server" OnClick="LinkButton2_Click">System Pages</asp:LinkButton>
  
   
                     </ul></li>
                     <li><a href="#">Report Generation</a></li>
                     <li><a href="#">User Profiler</a></li>

    </ul>
                 </asp:Panel>
    <div>
    
    </div>
    </form>
</body>
</html>
