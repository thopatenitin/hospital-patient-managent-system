<%@ Control Language="C#" AutoEventWireup="true" CodeFile="opd_registration.ascx.cs" Inherits="USERCONTROL_opd_registration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %> 
 <script>
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel4.ClientID%>");
            var mainwindow = window.open('', '', 'height=500,width=660');
            mainwindow.document.write('<html  moznomarginboxes mozdisallowselectionprint><head></head><body>');
            mainwindow.document.write(getpanal.innerHTML);
            mainwindow.document.write('</body></html>');
            mainwindow.document.close();
            setTimeout(function () { mainwindow.print(); }, 500);
            return false;
        }
    </script>
<style type="text/css">
    .auto-style1 {
        width: 914px;
        height: 66px;
    }
    
    .auto-style2 {
        width: 70px;
    }
    
    .auto-style5 {
        height: 30px;
    }
    .auto-style6 {
        width: 274px;
        height: 30px;
    }
    .auto-style8 {
        width: 292px;
    }
    
   
    
    
   
    
    .auto-style9 {
        width: 1176px;
    }
    
   
    
    
   
    
    .auto-style10 {
        width: 1252px;
    }
    
   
    
    
   
    
    .auto-style11 {
        width: 100%;
    }
    
   
    
    
   
    
    .auto-style29 {
        width: 915px;
    }
    .auto-style34 {
        height: 21px;
    }
    
   
    
    
   
    
    .auto-style33 {
        width: 927px;
    }
    .auto-style32 {
        width: 898px;
        margin-top: 0px;
    }
        
   
    
    
   
    
    .auto-style31 {
        width: 74%;
    }
    .auto-style24 {
        width: 114px;
        height: 23px;
    }
    .auto-style25 {
        height: 23px;
    }
    
   
    
    
   
    
    .auto-style35 {
        width: 114px;
    }
    
   
    
    
   
    
    .auto-style36 {
        position: relative;
        left: 2px;
        height: 304px;
        width: 725px;
        top: 20px;
    }
    .auto-style37 {
        height: 515px;
    }
    
   
    
    
   
    
    .auto-style20 {
        height: 652px;
        width: 923px;
    }
    .auto-style14 {
        position: relative;
        left: 2px;
        top: 20px;
        width: 895px;
        height: 260px;
        right: 33px;
    }
        
   
    
    
   
    
    .auto-style12 {
        width: 221px;
        height: 30px;
    }
    .auto-style16 {
        width: 236px;
        height: 30px;
    }
    .auto-style18 {
        width: 274px;
    }
    .auto-style13 {
        width: 221px;
    }
    .auto-style19 {
        width: 236px;
    }
    
   
    
    
   
    
    .auto-style22 {
        width: 161px;
    }
    .auto-style23 {
        height: 22px;
        width: 161px;
    }
    
   
    
    
   
    
    .auto-style21 {
        height: 22px;
    }
        
   
    
    
   
    
    .auto-style39 {
        margin-bottom: 0px;
    }
        
   
    
    
   
    
    .auto-style40 {
        width: 921px;
        height: 101px;
    }
        
   
    
    
   
    
    </style>
<link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
<link href="../theme/modalbill.css" rel="stylesheet" type="text/css" />
<link href="../theme/submenu.css" rel="stylesheet" type="text/css" />
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="White">
            <br />
            <hr />
            <br />
            <asp:Label ID="Label56" runat="server" Text="Search OPD Patient"></asp:Label>
            <table class="auto-style10">
                <tr>
                    <td>
                        <asp:Label ID="Label57" runat="server" Font-Size="10pt" Text="PRN Number"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox22" runat="server" Height="22px" Width="216px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button8" runat="server" BorderStyle="None" Height="31px" OnClick="Button8_Click" Text="Search" Width="77px" />
                        <ajaxToolkit:DropShadowExtender ID="Button8_DropShadowExtender" runat="server" BehaviorID="Button4_DropShadowExtender" TargetControlID="Button8" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <hr />
            <br />
            <table class="auto-style11">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="opd_code" CssClass="Grid" Width="1214px">
                            <Columns>
                                <asp:BoundField DataField="pateint_code" HeaderText="PRN Code" SortExpression="pateint_code" />
                                <asp:BoundField DataField="pateient_title" SortExpression="pateient_title" />
                                <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
                                <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                <asp:BoundField DataField="opd_code" HeaderText="OPD Code" SortExpression="opd_code" ReadOnly="True" />
                                <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-D41R48C\SQLEXPRESS;Initial Catalog=palm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT palm_pateint_master.pateient_title, palm_pateint_master.pateient_first_name, palm_pateint_master.pateient_last_name, palm_pateint_master.civil_status, palm_pateint_master.gender, palm_pateint_master.pateint_code, palm_opd_registration.opd_code FROM palm_pateint_master INNER JOIN palm_opd_registration ON palm_pateint_master.pateint_code = palm_opd_registration.pateint_code"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
    </asp:View>
    <asp:View ID="View2" runat="server"><asp:Panel ID="Panel3" runat="server" BackColor="White">
        <table class="auto-style1"><tr><td class="auto-style2"><asp:Image ID="Image1" runat="server" Height="68px" ImageUrl="~/NewFolder1/patient.png" Width="99px" /></td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Overline="False" Font-Underline="True" Text="Patient No."></asp:Label>
                
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label13" runat="server" Font-Overline="False" Font-Underline="True" Text="Patient Name."></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Overline="False" Font-Underline="True" Text="Age."></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server" Font-Overline="False" Font-Underline="True" Text="Gender."></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label16" runat="server" Font-Overline="False" Font-Underline="True" Text="Address. "></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label17" runat="server" Font-Overline="False" Font-Underline="True" Text="Civil Status."></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
              </table>
        
        <hr class="auto-style9" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style11">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="33px" Text="Cancel" Width="75px" />
                    <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" Height="31px" Text="Save" Width="74px" OnClick="Button2_Click" />
                    <ajaxToolkit:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" BehaviorID="Button2_DropShadowExtender" TargetControlID="Button2" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
                    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="800px" Width="973px">
                        <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                            <HeaderTemplate>
                                &nbsp; Genral Information&nbsp;&nbsp;&nbsp;
                            </HeaderTemplate>
                            <ContentTemplate>
                                <br />
                                <br />
                              <fieldset class="auto-style37"><legend>OPD</legend>  <table class="auto-style36">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label53" runat="server" Text="OPD No."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="TextBox21" runat="server" Enabled="False"></asp:TextBox>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label54" runat="server" Text="Refereal Doctor"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label55" runat="server" Text="Deparment"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="department_desc" DataValueField="department_code" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                                
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [department_code], [department_desc] FROM [palm_department]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Text="Consultant Doctor"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="doctor_name" DataValueField="emp_code">
                                                <asp:ListItem>n</asp:ListItem>
                                                <asp:ListItem>ghfh</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [doctor_name], [emp_code] FROM [palm_doctor_employee] WHERE ([department] = @department)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList5" Name="department" PropertyName="SelectedValue" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Consultant doctor"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="auto-style8">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                </table></fieldset>
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp; &nbsp;&nbsp;
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                            <HeaderTemplate>
                                &nbsp;&nbsp; Vital Parameters&nbsp;&nbsp;&nbsp;
                            </HeaderTemplate>
                            <ContentTemplate>
                                <asp:Panel ID="Panel5" runat="server">
                                    <fieldset class="auto-style20">
                                        <legend>Genral Examination</legend>
                                        <table class="auto-style14">
                                            <tr>
                                                <td class="auto-style5">
                                                    <asp:Label ID="Label22" runat="server" Text="Built"></asp:Label>
                                                </td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                    &nbsp;</td>
                                                <td class="auto-style12">
                                                    <asp:Label ID="Label58" runat="server" Text="pulse"></asp:Label>
                                                </td>
                                                <td class="auto-style16">
                                                    <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="auto-style5">
                                                    <asp:Label ID="Label25" runat="server" Text="BP"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                <td class="auto-style5">
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label23" runat="server" Text="RR"></asp:Label>
                                                </td>
                                                <td class="auto-style18">
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="auto-style13">
                                                    <asp:Label ID="Label59" runat="server" Text="Pallor"></asp:Label>
                                                </td>
                                                <td class="auto-style19">
                                                    <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label26" runat="server" Text="Cyanosis"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                    <asp:Label ID="Label32" runat="server" Text=" /min"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label24" runat="server" Text="Clubbimg"></asp:Label>
                                                </td>
                                                <td class="auto-style18">
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                    <br />
                                                </td>
                                                <td class="auto-style13">
                                                    <asp:Label ID="Label60" runat="server" Text="Peripheral Pulse"></asp:Label>
                                                </td>
                                                <td class="auto-style19">
                                                    <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label27" runat="server" Text="JVP"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                    <asp:Label ID="Label33" runat="server" Text="Kg"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label61" runat="server" Text="HJR"></asp:Label>
                                                </td>
                                                <td class="auto-style18">
                                                    <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                                                    <br />
                                                </td>
                                                <td class="auto-style13">
                                                    <asp:Label ID="Label64" runat="server" Text="Oedema"></asp:Label>
                                                </td>
                                                <td class="auto-style19">
                                                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label67" runat="server" Text="Adenopathy"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label62" runat="server" Text="Icterus"></asp:Label>
                                                </td>
                                                <td class="auto-style18">
                                                    <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                                    <br />
                                                </td>
                                                <td class="auto-style13">
                                                    <asp:Label ID="Label65" runat="server" Text="Erruptions"></asp:Label>
                                                </td>
                                                <td class="auto-style19">
                                                    <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label75" runat="server" Text="Others"></asp:Label>
                                                </td>
                                                <td colspan="2">
                                                    <asp:TextBox ID="TextBox47" runat="server" Height="44px" Width="268px"></asp:TextBox>
                                                    <br />
                                                </td>
                                                <td class="auto-style19">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <table class="auto-style11">
                                                        <tr>
                                                            <td class="auto-style22">
                                                                <asp:Label ID="Label68" runat="server" Text="CVS"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox36" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style23">
                                                                <asp:Label ID="Label69" runat="server" Text="R/S"></asp:Label>
                                                            </td>
                                                            <td class="auto-style21">
                                                                <asp:TextBox ID="TextBox42" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style22">
                                                                <asp:Label ID="Label70" runat="server" Text="P/A"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox43" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style22">
                                                                <asp:Label ID="Label71" runat="server" Text="CNS"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox44" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style22">
                                                                <asp:Label ID="Label72" runat="server" Text="PS./PV."></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox45" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style22">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset></asp:Panel>
                                &nbsp;
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
                </td>
            </tr>
        </table><br/><br/><br/><br/><br/><br/>
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:View>
         <asp:View ID="View3" runat="server">
            
             <asp:Panel ID="Panel2" runat="server" BackColor="White">
                 <br />
                 <br />
                 <br />
                 <hr />
                 <br />
                 <table class="auto-style11">
                     <tr>
                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                         <td>
                             <asp:GridView ID="Grid" runat="server"   AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="97px" ShowHeaderWhenEmpty="True" Width="756px" BorderStyle="None" CssClass="Grid" OnSelectedIndexChanged="Grid_SelectedIndexChanged">
                                 
                                 <Columns>
                                     <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
                                     <asp:BoundField DataField="pateient_title" SortExpression="pateient_title" />
                                     <asp:BoundField DataField="pateient_first_name" SortExpression="pateient_first_name" HeaderText="First Name" />
                                     <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                     <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                     <asp:BoundField DataField="civil_status" HeaderText="Civil Status" SortExpression="civil_status" />
                                     <asp:CommandField SelectText="Check In" ShowSelectButton="True" />
                                 </Columns>
                                 <PagerStyle BorderStyle="None" ForeColor="#CCFFFF" />
                                 <SelectedRowStyle BackColor="Silver" />
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [pateint_code], [gender], [pateient_first_name], [pateient_last_name], [pateient_title], [civil_status] FROM [palm_pateint_master] WHERE ([is_check_in] = @is_check_in)" ProviderName="System.Data.SqlClient">
                                 <SelectParameters>
                                     <asp:Parameter DefaultValue="0" Name="is_check_in" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                         </td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </asp:Panel>
            
    </asp:View>
    <asp:View ID="View4" runat="server">

        <asp:Panel ID="Panel4" runat="server" style=" border: 3px solid black;
        background-color: #fff;
        padding-top: 10px;
        padding-left: 10px; " Height="670px" ScrollBars="Vertical" Width="917px">
            <div class="auto-style29">
                <asp:Panel ID="Panel6" runat="server" CssClass="auto-style39" Height="148px">
                    <asp:Panel ID="Panel13" runat="server" Height="144px">
                        <table class="auto-style40">
                            <tr>
                                <td class="auto-style4">
                                    <img style=" height: 83px;
        width: 204px;" alt="" src="NewFolder1/logo(1).png" />
                                </td>
                                <td style="vertical-align:top; text-align:center;">
                                    <h2><u>PALM BEACH HOSPITAL &amp; DIAGNOSTIC CENTER</u></h2>
                                    <h3>A Network Hospital</h3>
                                    PalmBeach Road,sector:28,Vashi, Tel:022-27668119<br /> Mob:.9867924061 | Email:hospitalpalmbeach28@gmail.com </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
                <hr />
                <table style="  width: 915px;
        height: 103px;">
                    <tr>
                        <td>Memo No:.</td>
                        <td>
                            <asp:Label ID="Label00" runat="server"></asp:Label>
                        </td>
                        <td>OPD No:.</td>
                        <td>
                            <asp:Label ID="Label81" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34">Name:.</td>
                        <td class="auto-style34">
                            <asp:Label ID="Label01" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style34">Date:.</td>
                        <td class="auto-style34">
                            <asp:Label ID="Label82" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Consultant:.</td>
                        <td>
                            <asp:Label ID="Label02" runat="server"></asp:Label>
                        </td>
                        <td>Age:.</td>
                        <td>
                            <asp:Label ID="Label83" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Speciality:.</td>
                        <td>
                            <asp:Label ID="Label006" runat="server"></asp:Label>
                        </td>
                        <td>Gender:.</td>
                        <td>
                            <asp:Label ID="Label84" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Refral Doctor:</td>
                        <td>
                            <asp:Label ID="Label80" runat="server"></asp:Label>
                        </td>
                        <td>Class:.</td>
                        <td>
                            <asp:Label ID="Label85" runat="server">OPD</asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <hr class="auto-style33" />
            <hr class="auto-style32" />
            <table class="auto-style31">
                <tr>
                    <td colspan="6">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="920px" DataKeyNames="id">
                            <Columns>
                                <asp:BoundField DataField="charge_name" HeaderText="Charge Name" SortExpression="charge_name" />
                                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                <asp:BoundField DataField="units" HeaderText="Units" SortExpression="units" />
                                <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_getopdbill_slave_by_master" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <hr />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style25">Total&nbsp; Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label86" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">Net&nbsp; Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label001" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label88" runat="server">Payment Details:.</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <hr />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">Recd by Cash:.</td>
                    <td>
                        <asp:Label ID="Label90" runat="server"></asp:Label><hr />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">Total Amt Rs.</td>
                    <td>
                        <asp:Label ID="Label91" runat="server"></asp:Label>
                    </td>
                    <td colspan="2">Amount in Words:.</td>
                    <td class="auto-style3">&nbsp;</td>
                    
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Hide Header" AutoPostBack="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" Height="28px" OnClientClick="return printpage();" Text="Print" Width="62px" OnClick="Button6_Click" />
                        
    </asp:View>
<asp:View ID="View5" runat="server">
    <asp:Panel ID="Panel14" runat="server" Height="102px">
        <table class="auto-style11">
            <tr>
                <td>
                    <asp:Label ID="Label96" runat="server" Text="Test Asked" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="test_name" DataValueField="test_code" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" Visible="False">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [test_code], [test_name] FROM [pathology_test_report]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label95" runat="server" Text="Description" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox49" runat="server" Height="29px" Visible="False" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:View>
</asp:MultiView>




