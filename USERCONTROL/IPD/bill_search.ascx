<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bill_search.ascx.cs" Inherits="USERCONTROL_bill_search" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel24.ClientID%>");
            var mainwindow = window.open('', '', 'height=500,width=800');
            mainwindow.document.write('<html moznomarginboxes mozdisallowselectionprint>><head></head><body>');
            mainwindow.document.write(getpanal.innerHTML);
            mainwindow.document.write('</body></html>');
            mainwindow.document.close();
            setTimeout(function () { mainwindow.print(); }, 500);
            return false;
        }
    </script>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
       
    }
    .auto-style5 {
        width: 198px;
    }
    .auto-style6 {
        width: 217px;
    }
    
    .auto-style2 {
        width: 70px;
    }
    
    .auto-style8 {
        width: 292px;
    }
    
   
    
    
   
    
    .auto-style39 {
        width: 77%;
    }
    .auto-style40 {
        width: 98%;
    }
    .auto-style41 {
        width: 99%;
    }
    .auto-style42 {
        width: 158px;
        height: 23px;
    }
    .auto-style43 {
        width: 198px;
        height: 23px;
    }
    .auto-style44 {
        width: 217px;
        height: 23px;
    }
    .auto-style45 {
        height: 23px;
    }
    .auto-style46 {
        margin-right: 4px;
    }
    .auto-style47 {
        width: 60px;
        height: 23px;
    }
    .auto-style48 {
        width: 60px;
    }
    
   
    
    
   
    
    .auto-style49 {
        width: 165px;
    }
    
   
    
    
   
    
    .auto-style50 {
        width: 804px;
        height: 110px;
    }
    
   
    
    
   
    
   
   
    
    
   
    
    .auto-style52 {
        height: 26px;
    }
    
   
    
    
   
    
    .auto-style53 {
        width: 802px;
        height: auto;
    }
    
   
    
    
   
    
    .auto-style55 {
        height: 23px;
        width: 195px;
    }
    .auto-style56 {
        height: 26px;
        width: 195px;
    }
    .auto-style59 {
        height: 26px;
        width: 180px;
    }
    .auto-style60 {
        width: 180px;
    }
    .auto-style61 {
        width: 180px;
        height: 23px;
    }
    .auto-style62 {
        width: 195px;
    }
    .auto-style65 {
        height: 26px;
        width: 61px;
    }
    .auto-style66 {
        width: 61px;
    }
    .auto-style67 {
        width: 61px;
        height: 23px;
    }
    .auto-style68 {
        width: 46px;
    }
    .auto-style69 {
        height: 23px;
        width: 46px;
    }
    .auto-style70 {
        height: 26px;
        width: 46px;
    }
    
   
    
    
   
    
    .auto-style71 {
        width: 170px;
    }
    .auto-style72 {
        width: 132px;
    }
    .auto-style76 {
        width: 155px;
    }
    
   
    
    
   
    
    .auto-style77 {
        width: 804px;
        height: 124px;
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
        
   
    
    
   
    
    .auto-style35 {
        width: 114px;
    }
    
   
    
    
   
    
    .auto-style24 {
        width: 114px;
        height: 23px;
    }
    .auto-style25 {
        height: 23px;
    }
    
   
    
    
   
    
    .auto-style78 {
        width: 100%;
        height: 94px;
    }
    
   
    
    
   
    
    </style>
<link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="1314px" Width="1031px" CssClass="auto-style46">
            <asp:Panel ID="Panel2" runat="server" BackColor="#0099FF" Height="93px" Width="1024px">
                <table class="auto-style78">
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style42">
                            <asp:ScriptManager ID="ScriptManager3" runat="server">
                            </asp:ScriptManager>
                        </td>
                        <td class="auto-style43"></td>
                        <td class="auto-style44"></td>
                        <td class="auto-style45"></td>
                    </tr>
                    <tr>
                        <td class="auto-style48">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text="Search By"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="110px">
                                <asp:ListItem Value="prn no">PRN No.</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" style="height: 26px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel16" runat="server" Height="419px" Visible="False" HorizontalAlign="Center">
                <table class="auto-style41">
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server" Height="68px" ImageUrl="~/NewFolder1/patient.png" Width="99px" />
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Font-Overline="False" Font-Underline="True" Text="Patient No."></asp:Label>
                            <br />
                            <asp:Label ID="Label94" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="Label13" runat="server" Font-Overline="False" Font-Underline="True" Text="Patient Name."></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style49">
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
                    </tr>
                </table>
                <br />
                <hr />
              
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="Grid" DataKeyNames="memo" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="968px">
                                    <Columns>
                                        <asp:BoundField DataField="memo" HeaderText="Memo" ReadOnly="True" SortExpression="memo" />
                                        <asp:BoundField DataField="patient_code" HeaderText="Pateint Code" SortExpression="patient_code" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                        <asp:BoundField DataField="inserted_on" HeaderText="Updated On" SortExpression="inserted_on" />
                                        <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [memo], [opd_code], [patient_code], inserted_on,[Status] FROM [palm_opd_pathlogy_billm] WHERE ([patient_code] = @patient_code)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox1" Name="patient_code" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                </asp:UpdatePanel>
                    
                <br />
                <br />
                <br />
            </asp:Panel>
           
                    <asp:Panel ID="Panel17" runat="server" Visible="False">
                        <asp:Panel ID="Panel18" runat="server" BackColor="#33CCFF" BorderStyle="Ridge">
                            pathology</asp:Panel>
                        <asp:Panel ID="Panel19" runat="server" Width="810px">
                            <asp:Panel ID="Panel23" runat="server">
                                <table class="auto-style39">
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Panel ID="Panel22" runat="server">
                                                <table class="auto-style39">
                                                    <tr>
                                                        <td colspan="8">
                                                            <table class="auto-style50">
                                                                <tr>
                                                                    <td style=" width: 158px;" >
                                                                        <img alt="" src="../NewFolder1/logo(1).png" style="height: 75px; width: 198px;" />
                                                                    </td>
                                                                    <td style="vertical-align: top; text-align: center;">
                                                                        <h2><u>PALM BEACH HOSPITAL &amp; DIAGNOSTIC CENTER</u></h2>
                                                                        <h3>A Network Hospital</h3>
                                                                        PalmBeach Road,sector:28,Vashi, Tel:022-27668119<br /> Mob:.9867924061 | Email:hospitalpalmbeach28@gmail.com </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8">
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Label ID="Label107" runat="server" Text="NMMC Reg. No. 265"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style71">
                                                            <asp:Label ID="Label108" runat="server" Text="Receipt No."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label114" runat="server"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label109" runat="server" Text="Date."></asp:Label>
                                                            <asp:Label ID="Label115" runat="server"></asp:Label>
                                                            <asp:TextBox ID="d" runat="server"></asp:TextBox>
                                                            <ajaxToolkit:CalendarExtender ID="d_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" Format="dd/MM/yyyy" TargetControlID="d" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style71">
                                                            <asp:Label ID="Label110" runat="server" Text="Pateint Name."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label112" runat="server"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style71">
                                                            <asp:Label ID="Label111" runat="server" Text="Ref. Doctor"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label113" runat="server"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <table class="auto-style40">
                                                <tr>
                                                    <td>
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="auto-style53" style="border-style: double; border-width: 2px;" >
                                                            <tr>
                                                                <td>
                                                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <table align="center" class="auto-style1">
                                                                        <tr>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style68">&nbsp;</td>
                                                                            <td class="auto-style66">&nbsp;</td>
                                                                            <td class="auto-style62">&nbsp;</td>
                                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                            <td class="auto-style60">
                                                                                <asp:Label ID="Label116" runat="server">Total</asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="Label118" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style69"></td>
                                                                            <td class="auto-style67"></td>
                                                                            <td class="auto-style55"></td>
                                                                            <td class="auto-style45"></td>
                                                                            <td class="auto-style61">
                                                                                <asp:Label ID="Label117" runat="server">Advance</asp:Label>
                                                                            </td>
                                                                            <td class="auto-style45">
                                                                                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style70"></td>
                                                                            <td class="auto-style65"></td>
                                                                            <td class="auto-style56"></td>
                                                                            <td class="auto-style52"></td>
                                                                            <td class="auto-style59">
                                                                                <asp:Label ID="Label133" runat="server">Balence Total</asp:Label>
                                                                            </td>
                                                                            <td class="auto-style52">
                                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                    <ContentTemplate>
                                                                                        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                                                                    </ContentTemplate>
                                                                                    <Triggers>
                                                                                        <asp:AsyncPostBackTrigger ControlID="TextBox2" EventName="TextChanged" />
                                                                                    </Triggers>
                                                                                </asp:UpdatePanel>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Submit" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <hr />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:Label ID="Label134" runat="server"></asp:Label>
                            </asp:Panel>
                            <ajaxToolkit:CollapsiblePanelExtender ID="Panel23_CollapsiblePanelExtender" runat="server" BehaviorID="Panel23_CollapsiblePanelExtender" CollapseControlID="Panel18" ExpandControlID="Panel18" TargetControlID="Panel23" />
                            <asp:Panel ID="Panel24" runat="server" Visible="False">
                                <table class="auto-style39">
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Panel ID="Panel25" runat="server">
                                                <table align="center" cellpadding="0" cellspacing="0" class="auto-style39">
                                                    <tr>
                                                        <td colspan="9">
                                                            <table class="auto-style77">
                                                                <tr>
                                                                    <td class="auto-style4">
                                                                        <img alt="" src="../NewFolder1/logo(1).png" style="height: 100px; width: 290px;" />
                                                                    </td>
                                                                    <td style="vertical-align: top; text-align: center;">
                                                                        <h2><u>PALM BEACH HOSPITAL &amp; DIAGNOSTIC CENTER</u></h2>
                                                                        <h3>A Network Hospital</h3>
                                                                        PalmBeach Road,sector:28,Vashi, Tel:022-27668119<br /> Mob:.9867924061 | Email:hospitalpalmbeach28@gmail.com </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9">
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Label ID="Label120" runat="server" Text="NMMC Reg. No. 265"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td class="auto-style72">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style76">
                                                            <asp:Label ID="Label121" runat="server" Text="Receipt No."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label122" runat="server"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td class="auto-style72">&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label123" runat="server" Text="Date."></asp:Label>
                                                            <asp:Label ID="Label124" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style76">
                                                            <asp:Label ID="Label125" runat="server" Text="Pateint Name."></asp:Label>
                                                        </td>
                                                        <td colspan="8">&nbsp;<asp:Label ID="Label126" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style76">
                                                            <asp:Label ID="Label127" runat="server" Text="Ref. Doctor"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label128" runat="server"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td class="auto-style72">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <table >
                                             
                                                <tr>
                                                    <td>
                                                        <table class="auto-style53" >
                                                            <tr>
                                                                <td>
                                                                    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td >
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <asp:Button ID="printbutton" runat="server" OnClientClick="return printpage();" Text="Print" Visible="False" />
                        </asp:Panel>
               
                        
                        
                        <asp:Panel ID="Panel20" runat="server" BackColor="#33CCFF" BorderStyle="Ridge">
                            Consultation Bill</asp:Panel>
                        <asp:Panel ID="Panel21" runat="server">
                            <asp:Panel ID="Panel00" runat="server" Height="670px" ScrollBars="Vertical" style=" border: 3px solid black;
        background-color: #fff;
        padding-top: 10px;
        padding-left: 10px; " Width="917px">
                                <div class="auto-style29">
                                    <asp:Panel ID="Panel6" runat="server" CssClass="auto-style39" Height="148px">
                                        <asp:Panel ID="Panel13" runat="server" Height="144px">
                                            <table class="auto-style40">
                                                <tr>
                                                    <td class="auto-style4">
                                                        <img alt="" src="../NewFolder1/logo(1).png" style=" height: 83px;
        width: 204px;" />
                                                    </td>
                                                    <td style="vertical-align:top; text-align:center;">
                                                        <h2><u>PALM BEACH HOSPITAL &amp; DIAGNOSTIC CENTER</u></h2>
                                                        <h3>A Network Hospital</h3>
                                                        PalmBeach Road,sector:28,Vashi, Tel:022-27668119<br /> Mob:.9867924061 | Email:hospitalpalmbeach28@gmail.com </td>
                                                </tr>
                                            </table>
                                            ``</asp:Panel>
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
                                            <td class="auto-style45">Consultant:.</td>
                                            <td class="auto-style45">
                                                <asp:Label ID="Label02" runat="server"></asp:Label>
                                            </td>
                                            <td class="auto-style45">Age:.</td>
                                            <td class="auto-style45">
                                                <asp:Label ID="Label83" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Speciality:.</td>
                                            <td>
                                                <asp:Label ID="label9" runat="server"></asp:Label>
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
                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" Width="920px">
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
                                            <asp:Label ID="Label90" runat="server"></asp:Label>
                                            <hr />
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
                            <ajaxToolkit:CollapsiblePanelExtender ID="Panel00_CollapsiblePanelExtender" runat="server" BehaviorID="Panel4_CollapsiblePanelExtender" CollapseControlID="Panel20" Collapsed="True" ExpandControlID="Panel20" TargetControlID="Panel00" />
                            <br />
                            <asp:Label ID="Label135" runat="server"></asp:Label>
                        </asp:Panel>
                       
                    </asp:Panel>

        </asp:Panel>
    </asp:View>
</asp:MultiView>

