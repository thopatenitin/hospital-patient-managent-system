<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="doctor_module_doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../theme/mastertheme.css" rel="stylesheet" type="text/css" />
    <link href="../theme/vmenu.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 116%;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
         <div id="auto-style13" >

        <table style="padding:0;margin:0;" id="auto-style15">
    <tr>
           <td  id="css4" >
               <asp:Image ID="Image2" runat="server" Height="66px" ImageUrl="~/NewFolder1/logo.png" Width="203px" />
           </td>
            <td  id="css6" >
                  <asp:Label ID="Label1" runat="server" Text="PALM BEACH " Font-Bold="True" Font-Italic="True" Font-Size="29pt" ForeColor="Black"></asp:Label>&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Hospital &amp; Diagnostic Center"></asp:Label>
           </td>
               </tr>
    <tr>
            <td  id="css5" >
                <asp:Image ID="Image1" runat="server" Height="54px" ImageUrl="~/NewFolder1/thZKY6CTL4.jpg" Width="49px" />
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td id="css7" >
                
                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;</td>
                        <td>
            
            
                <asp:LinkButton ID="LinkButton45" runat="server" OnClick="LinkButton45_Click">LogOut</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
               </tr>
             <tr>
            <td  id="css2"  >
                 <asp:Panel ID="Panel6" runat="server" Height="480px" CssClass="panalcss" Width="199px" BackColor="White">
                 <ul id="nav">
                     <li><asp:LinkButton ID="LinkButton46" runat="server" OnClick="LinkButton46_Click">User Profile</asp:LinkButton>
                         </li>
                     <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton6_Click" >In-patient</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton6" runat="server"  OnClick="LinkButton5_Click" >Out-Patient</asp:LinkButton></li>
    </ul>
                 </asp:Panel>
                 </td>
            <td style="vertical-align:top; " id="css1" >
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <asp:Panel ID="Panel7" runat="server" BackColor="White" Height="475px">
                            <table class="auto-style2">
                                <tr>
                                    <td style="background-color:dodgerblue;">
                                        <asp:Label ID="Label4" runat="server" ForeColor="White" Text="OPD Pateint"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel8" runat="server" ScrollBars="Vertical">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="Grid" DataKeyNames="opd_code" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="110px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="856px">
                                                <Columns>
                                                    <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
                                                    <asp:BoundField DataField="opd_code" HeaderText="OPD Code" ReadOnly="True" SortExpression="opd_code" />
                                                    <asp:BoundField DataField="pateient_title" HeaderText="Title" SortExpression="pateient_title" />
                                                    <asp:BoundField DataField="pateient_first_name" HeaderText="Name" SortExpression="pateient_first_name" />
                                                    <asp:BoundField DataField="pateient_last_name" SortExpression="pateient_last_name" />
                                                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                                    <asp:CommandField HeaderText="Action" SelectText="View" ShowSelectButton="True" />
                                                </Columns>
                                                <RowStyle BorderStyle="None" />
                                                <SortedAscendingCellStyle BorderStyle="None" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_getpatient_detail_byempcode" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="emp_code" SessionField="emp_code" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:Panel ID="Panel10" runat="server" BackColor="White" Height="475px">
                            <table class="auto-style2">
                                <tr>
                                    <td style="background-color:dodgerblue;" class="auto-style3">
                                        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="IPD Pateint"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataKeyNames="prn" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="874px">
                                            <Columns>
                                                <asp:BoundField DataField="prn" HeaderText="PRN" ReadOnly="True" SortExpression="prn" />
                                                <asp:BoundField DataField="pateient_title" HeaderText="Title" SortExpression="pateient_title" />
                                                <asp:BoundField DataField="pateient_first_name" HeaderText="Name" SortExpression="pateient_first_name" />
                                                <asp:BoundField DataField="pateient_last_name" SortExpression="pateient_last_name" />
                                                <asp:BoundField DataField="civil_status" HeaderText="Civil Status" SortExpression="civil_status" />
                                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                                <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
                                                <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_getpatient_detail_byempcode_ipd" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="emp_code" SessionField="emp_code" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                </asp:MultiView>
              
                 </td>
               </tr>

             </table>
    </div>

   
    </form>
</body>
</html>
