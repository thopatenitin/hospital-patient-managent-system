<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="discharge.aspx.cs" Inherits="doctor_module_discharge" %>

<%@ Register src="../../USERCONTROL/investigation.ascx" tagname="investigation" tagprefix="uc1" %>
<%@ Register src="../../USERCONTROL/IPD/ipd_investigation.ascx" tagname="ipd_investigation" tagprefix="uc2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel9.ClientID%>");
            var mainwindow = window.open('', '', 'height=500,width=800');
            mainwindow.document.write('<html moznomarginboxes mozdisallowselectionprint>><head></head><body>');
            mainwindow.document.write(getpanal.innerHTML);
            mainwindow.document.write('</body></html>');
            mainwindow.document.close();
            setTimeout(function () { mainwindow.print(); }, 500);
            return false;
         }
         function printpage0() {
             var getpanal = document.getElementById("<%=Panel18.ClientID%>");
             var mainwindow = window.open('', '', 'height=500,width=800');
             mainwindow.document.write('<html moznomarginboxes mozdisallowselectionprint>><head></head><body>');
             mainwindow.document.write(getpanal.innerHTML);
             mainwindow.document.write('</body></html>');
             mainwindow.document.close();
             setTimeout(function () { mainwindow.print(); }, 500);
             return false;
         }
         function update() {
             var prm = Sys.WebForms.pageRequestManager.getInstance();
             prm.beginAsyncPostBack(['UpdatePanel1'],'','',false,'');
         }

    </script>
   <script src="http://code.jquery.com/jquery-1.8.2.js"></script> 

<script type="text/javascript">  
         $(window).load(function () {
             $("#loader").fadeOut(1000);
         });
</script>  
     <style type="text/css">
          
         .auto-style15 {
             width: 992px;
         }
         .auto-style16 {
             width: 100%;
         }
         .auto-style17 {
             height: 22px;
         }
         .auto-style18 {
             height: 20px;
         }
        

         .auto-style19 {
             text-decoration: none;
         }
        
         .auto-style21 {
             text-align: center;
             text-decoration: underline;
         }
                 

        .auto-style12 {
            width: 1041px;
            height: 176px;
        }
        .auto-style30 {
            width: 148px;
        }
        .auto-style32 {
            height: 26px;
            width: 148px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style33 {
            margin-left: 0px;
        }
         .auto-style36 {
             height: 26px;
             width: 77px;
         }
         .auto-style37 {
             height: 26px;
             width: 134px;
         }
         .auto-style42 {
             height: 26px;
             width: 201px;
         }
        

         .auto-style43 {
             width: 100%;
             border-style: solid;
             border-width: 1px;
         }
        

         .auto-style44 {
             width: 455px;
         }
        #loader {  
    position: fixed;  
    left: 0px;  
    top: 0px;  
    width: 100%;  
    height: 100%;  
    z-index: 9999;  
    background: url('pageloader.gif') 50% 50% no-repeat rgb(249,249,249);  
}  

     .auto-style45 {
        width: 1171px;
    }
        

     </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;" class="auto-style45">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                            <asp:View ID="View1" runat="server"><div id="loader"></div> 
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table class="auto-style16">
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Panel ID="Panel12" runat="server" BackColor="#66CCFF" Height="26px">
                                                <div class="auto-style21">
                                                    <asp:Panel ID="Panel21" runat="server">
                                                        <strong>&nbsp;Treatement Given Medical</strong></asp:Panel>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="Panel13" runat="server">
                                                <table class="auto-style16">
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="Panel19" runat="server" BackColor="Silver">
                                                                <table border="1" class="auto-style12">
                                                                    <tr>
                                                                        <td class="auto-style30">&nbsp;&nbsp;
                                                                            <asp:Label ID="Label835" runat="server" Text="Drug Name"></asp:Label>
                                                                            <br />
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:TextBox ID="TextBox69" runat="server" CssClass="auto-style33" Height="22px" Width="264px"></asp:TextBox>
                                                                            <br />
                                                                            <br />
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="Label836" runat="server" Text="Days"></asp:Label>
                                                                            &nbsp;
                                                                            <asp:TextBox ID="text67" runat="server"></asp:TextBox>
                                                                            Days<br />
                                                                            <br />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style32">
                                                                            <asp:Label ID="Label837" runat="server" Text="Morning"></asp:Label>
                                                                        </td>
                                                                        <td class="auto-style36">
                                                                            <asp:Label ID="Label838" runat="server" Text="Afternoon"></asp:Label>
                                                                        </td>
                                                                        <td class="auto-style37">
                                                                            <asp:Label ID="Label839" runat="server" Text="Evening"></asp:Label>
                                                                        </td>
                                                                        <td class="auto-style42">
                                                                            <asp:Label ID="Label840" runat="server" Text="Night"></asp:Label>
                                                                        </td>
                                                                        <td class="auto-style13" style="vertical-align: top;"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style32">
                                                                            <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="auto-style36">
                                                                            <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="auto-style37">
                                                                            <asp:TextBox ID="text68" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="auto-style42">
                                                                            <asp:TextBox ID="text69" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="auto-style13" style="vertical-align: top;">
                                                                            <asp:Button ID="Button19" runat="server" BorderStyle="None" Height="29px" OnClick="Button19_Click" Text="Add" Width="53px" />
                                                                            <ajaxToolkit:DropShadowExtender ID="Button18_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button18" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style32">&nbsp;</td>
                                                                        <td class="auto-style36">&nbsp;</td>
                                                                        <td class="auto-style37">&nbsp;</td>
                                                                        <td class="auto-style42">&nbsp;</td>
                                                                        <td class="auto-style13" style="vertical-align: top;">&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <ajaxToolkit:CollapsiblePanelExtender ID="Panel19_CollapsiblePanelExtender" runat="server" BehaviorID="Panel19_CollapsiblePanelExtender" CollapseControlID="Panel21" ExpandControlID="Panel21" TargetControlID="Panel19" />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="medication_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="940px">
                                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="patient_code" HeaderText="Patient Code" SortExpression="patient_code" />
                                                                    <asp:BoundField DataField="drug" HeaderText="Drug" SortExpression="drug" />
                                                                   
                                                                    <asp:BoundField DataField="route" HeaderText="Route" SortExpression="route" />
                                                                     <asp:BoundField DataField="frequency" HeaderText="Frequency" SortExpression="frequency" />
                                                                    <asp:TemplateField><ItemTemplate>
                                                                          <asp:Label ID="lbl" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timea") %>' ></asp:Label>------<asp:Label ID="lab01" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timeb") %>'></asp:Label>------<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timec") %>'></asp:Label>------<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timed") %>'></asp:Label>
                                                                                       </ItemTemplate></asp:TemplateField>
                                                                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/NewFolder1/if_Delete_1493279.png" ShowDeleteButton="True">
                                                                    <ControlStyle Height="19px" />
                                                                    </asp:CommandField>
                                                                </Columns>
                                                                <FooterStyle BackColor="#CCCCCC" />
                                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                                            </asp:GridView>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT DISTINCT [drug], [medication_id], [patient_code], [inserted_by], [inserted_on], [frequency], [timea], [timeb], [timec], [timed], [prn], [route] FROM [palm_ipd_medication] WHERE ([patient_code] = @patient_code) ORDER BY [drug]" DeleteCommand="DELETE FROM palm_ipd_medication WHERE (medication_id = @medication_id)">
                                                                <DeleteParameters>
                                                                    <asp:Parameter Name="medication_id" />
                                                                </DeleteParameters>
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Panel ID="Panel14" runat="server" BackColor="#66CCFF" Height="26px">
                                                <div class="auto-style21">
                                                    <strong>Treatement On</strong> <strong>Discharge </strong>
                                                </div>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel15" runat="server" BackColor="Silver">
                                                <table border="1" class="auto-style12">
                                                    <tr>
                                                        <td class="auto-style30">&nbsp;&nbsp;
                                                            <asp:Label ID="Label69" runat="server" Text="Drug Name"></asp:Label>
                                                            <br />
                                                        </td>
                                                        <td colspan="2">
                                                            <asp:TextBox ID="TextBox21" runat="server" CssClass="auto-style33" Height="22px" Width="264px"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </td>
                                                        <td colspan="2">
                                                            <asp:Label ID="Label73" runat="server" Text="Days"></asp:Label>
&nbsp;
                                                            <asp:TextBox ID="text0" runat="server"></asp:TextBox>
                                                            Days<br />
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style32">
                                                            <asp:Label ID="Label75" runat="server" Text="Morning"></asp:Label>
                                                        </td>
                                                        <td class="auto-style36">
                                                            <asp:Label ID="Label796" runat="server" Text="Afternoon"></asp:Label>
                                                        </td>
                                                        <td class="auto-style37">
                                                            <asp:Label ID="Label797" runat="server" Text="Evening"></asp:Label>
                                                        </td>
                                                        <td class="auto-style42">
                                                            <asp:Label ID="Label798" runat="server" Text="Night"></asp:Label>
                                                        </td>
                                                        <td class="auto-style13" style="vertical-align: top;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style32">
                                                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style36">
                                                            <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style37">
                                                            <asp:TextBox ID="text66" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style42">
                                                            <asp:TextBox ID="text6" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style13" style="vertical-align: top;">
                                                            <asp:Button ID="Button18" runat="server" BorderStyle="None" Height="29px" OnClick="Button18_Click" Text="Add" Width="53px" />
                                                            <ajaxToolkit:DropShadowExtender ID="Button18_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button18" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style32">
                                                            <asp:ScriptManager ID="ScriptManager2" runat="server">
                                                            </asp:ScriptManager>
                                                        </td>
                                                        <td class="auto-style36">&nbsp;</td>
                                                        <td class="auto-style37">&nbsp;</td>
                                                        <td class="auto-style42">&nbsp;</td>
                                                        <td class="auto-style13" style="vertical-align: top;">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:UpdatePanel ID="treatement" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="pal" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="medication_id" DataSourceID="SqlDataSource2" EmptyDataText="no records found" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="pal_SelectedIndexChanged" Width="875px">
                                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                                        <Columns>
                                                            <asp:BoundField DataField="drug" HeaderText="Drug" SortExpression="drug" />
                                                            <asp:BoundField DataField="days" HeaderText="Days" SortExpression="days" />
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lbl" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timea") %>'></asp:Label>
                                                                    ------<asp:Label ID="lab01" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timeb") %>'></asp:Label>
                                                                    ------<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timec") %>'></asp:Label>
                                                                    ------<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timed") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/NewFolder1/if_Delete_1493279.png" ShowDeleteButton="True">
                                                            <ControlStyle Height="19px" />
                                                            </asp:CommandField>
                                                        </Columns>
                                                        <FooterStyle BackColor="#CCCCCC" />
                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" DeleteCommand="DELETE FROM palm_discharge_medication WHERE (medication_id = @medication_id)" SelectCommand="SELECT * FROM [palm_discharge_medication] WHERE ([patient_code] = @patient_code)">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="medication_id" />
                                                        </DeleteParameters>
                                                        <SelectParameters>
                                                            <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Button18" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel20" runat="server" BackColor="#66CCFF" Height="26px">
                                                <div class="auto-style21">
                                                    O<strong>perative Note&nbsp;</strong></div>
                                            </asp:Panel>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="auto-style16">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label849" runat="server" Text="Operative Note :"></asp:Label>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="operative_notetext" runat="server" Height="95px" TextMode="MultiLine" Width="710px"></asp:TextBox>
                                                        <asp:Button ID="Button21" runat="server" OnClick="Button21_Click" Text="Submit" />
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:UpdatePanel ID="treatement0" runat="server">
                                                            <ContentTemplate>
                                                                <asp:Label ID="operative_note001" runat="server"></asp:Label>
                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="Button21" EventName="Click" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel16" runat="server" BackColor="#66CCFF" Height="26px">
                                                <div class="auto-style21">
                                                    Final Discharge<strong>&nbsp;</strong></div>
                                            </asp:Panel>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <table class="auto-style16">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label67" runat="server" Text="Discharge Date:."></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                             <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label841" runat="server" Text="Time :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="td" runat="server"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="td_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="td" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label833" runat="server" Text="Follow Up Date : "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="follow_up" runat="server"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="follow_up_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="follow_up" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label848" runat="server" Text="Time :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="td0" runat="server"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="td0_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="td0" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                               
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Discharge Now" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Genrate Bill" />
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                            </asp:View>
                            <asp:View ID="View6" runat="server">
                                <asp:Panel ID="Panel4" runat="server">
                                    <table class="auto-style15">
                                        <tr>
                                            <td>
                                                <table border="1" style="width:100%; height:30px;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label408" runat="server" Font-Bold="True" Text="No."></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label409" runat="server" Font-Bold="True" Text="MEMORANDUM OF CHARGES"></asp:Label>
                                                        </td>
                                                        <td colspan="4">
                                                            <table class="auto-style16">
                                                                <tr>
                                                                    <td colspan="3" style="text-align:center;">
                                                                        <asp:Label ID="Label410" runat="server" Font-Bold="True" Text="PARTICULARS OF DEPOSIT"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label411" runat="server" Font-Bold="True" Text="Nos."></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label412" runat="server" Font-Bold="True" Text="Amount"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label413" runat="server" Font-Bold="True" Text="Total Amount"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label414" runat="server" Text="Registration Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label561" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label558" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label418" runat="server" Text="Stay Charges / NCCU / NICU"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt" runat="server" AutoPostBack="True" Height="16px" OnTextChanged="qt_TextChanged" Width="60px"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" InvalidChars="0" TargetControlID="qt" />
                                                            <asp:Label ID="q1" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="qt001" runat="server" AutoPostBack="True" OnTextChanged="TextBox38_TextChanged" ValidationGroup="2"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt001_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="qt001" />
                                                            <asp:Label ID="q001" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <asp:Label ID="stay_charges" runat="server"></asp:Label>
                                                                </ContentTemplate>
                                                                <Triggers>
                                                                    <asp:AsyncPostBackTrigger ControlID="qt" EventName="TextChanged" />
                                                                </Triggers>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton1_Click" OnClientClick="update();" Width="41px" />
                                                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton2_Click" Visible="False" Width="41px" />
                                                                </ContentTemplate>
                                                                <Triggers>
                                                                    <asp:AsyncPostBackTrigger ControlID="ImageButton1" EventName="Click" />
                                                                    <asp:AsyncPostBackTrigger ControlID="ImageButton2" EventName="Click" />
                                                                </Triggers>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label422" runat="server" Text="Stay Charges / Delux / Spl. / Genral "></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:Label ID="days" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label560" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="r_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label426" runat="server" Text="Emergency Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt0" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt0_TextChanged" ValidationGroup="2"></asp:TextBox>
                                                            <asp:Label ID="q2" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox38" runat="server" AutoPostBack="True" OnTextChanged="TextBox38_TextChanged" ValidationGroup="2"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="TextBox38_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox38" />
                                                            <asp:Label ID="q3" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label429" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton145" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton145_Click" Width="41px" ValidationGroup="2" />
                                                            <asp:ImageButton ID="ImageButton146" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton146_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label430" runat="server" Text="Dressing Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt1" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt1_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt1_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" InvalidChars="0" TargetControlID="qt1" />
                                                            <asp:Label ID="q5" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="dresiing_text" runat="server" AutoPostBack="True" OnTextChanged="dresiing_text_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="dresiing_text_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="dresiing_text" />
                                                            <asp:Label ID="qd" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label432" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton118" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton118_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton14" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton14_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>6</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label433" runat="server" Text="Multipara Monitor Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt2" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt2_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt2_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" InvalidChars="0" TargetControlID="qt2" />
                                                            <asp:Label ID="q6" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="multipara_monitor_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label436" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton119" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton119_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton148" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton148_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>7</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label437" runat="server" Text="ECG Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt3" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt3_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt3_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" InvalidChars="0" TargetControlID="qt3" />
                                                            <asp:Label ID="q8" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ecg_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ecg" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton120" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton120_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton149" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton149_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>8</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label441" runat="server" Text="Oxygen Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="oxycharges" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt4_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="oxycharges_FilteredTextBoxExtender" runat="server" BehaviorID="oxycharges_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="oxycharges" />
                                                            <asp:Label ID="q9" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="oxygen_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="oxy" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton121" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton121_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton150" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton150_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>9</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label445" runat="server" Text="Ventilator Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style200" style="width: 20%">
                                                            <asp:TextBox ID="qt5" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnTextChanged="qt5_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="qt5_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" InvalidChars="0" TargetControlID="qt5" />
                                                            <asp:Label ID="q10" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ventilator_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="venti" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton122" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png"  Width="41px" OnClick="ImageButton122_Click" />
                                                            <asp:ImageButton ID="ImageButton151" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton151_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>10</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label449" runat="server" Text="Anaeshtetist Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox29" runat="server" OnTextChanged="TextBox29_TextChanged"></asp:TextBox>
                                                            <ajaxToolkit:FilteredTextBoxExtender ID="TextBox29_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox29" />
                                                            <asp:Label ID="q11" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="anesh" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton123" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton123_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton152" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton152_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <asp:Button ID="Button4" runat="server" Height="35px" Text="Next" Width="86px" OnClick="Button4_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:View>
                           
                            <asp:View ID="View7" runat="server">
                            </asp:View>
                            <asp:View ID="View8" runat="server">
                                <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
                                </asp:ScriptManagerProxy>
                                <asp:Panel ID="Panel5" runat="server" Height="475px" Width="990px">
                                    <table class="auto-style15">
                                        <tr>
                                            <td>
                                                <table border="1" style="width:100%; height:30px;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label562" runat="server" Font-Bold="True" Text="No."></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label563" runat="server" Font-Bold="True" Text="MEMORANDUM OF CHARGES"></asp:Label>
                                                        </td>
                                                        <td colspan="4">
                                                            <table style="width:100%;">
                                                                <tr>
                                                                    <td colspan="3" style="text-align:center;">
                                                                        <asp:Label ID="Label564" runat="server" Font-Bold="True" Text="PARTICULARS OF DEPOSIT"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label565" runat="server" Font-Bold="True" Text="Nos."></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label566" runat="server" Font-Bold="True" Text="Amount"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label567" runat="server" Font-Bold="True" Text="Total Amount"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>11</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label589" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt28" runat="server" Height="16px" Width="60px" OnTextChanged="qt28_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="qcc" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="ccharges" runat="server" OnTextChanged="ccharges_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="q38" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label590" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton198" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton198_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton199" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton199_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>12</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label591" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt29" runat="server" Height="16px" Width="60px" OnTextChanged="qt29_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="q39" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="textbox" runat="server" Height="24px" OnTextChanged="textbox_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="q40" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label592" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton200" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton200_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton201" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton201_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>13</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label593" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt30" runat="server" Height="16px" Width="60px" OnTextChanged="qt30_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="q41" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox49" runat="server" OnTextChanged="TextBox49_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc3" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="cctextbox" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton202" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton202_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton203" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton203_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>14</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label595" runat="server" Text="Assistant Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt31" runat="server" Height="16px" Width="60px" OnTextChanged="qt31_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="q43" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox50" runat="server" OnTextChanged="TextBox50_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="accharges" runat="server"></asp:Label>
                                                            &nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label596" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton204" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton204_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton205" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton2_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>15</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label597" runat="server" Text="Pathology Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="pathology_chargf0" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>16</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label598" runat="server" Text="Surgeon Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox51" runat="server" OnTextChanged="TextBox51_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="accharges0" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label599" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton206" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton206_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton298" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton298_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>17</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label600" runat="server" Text="Sonography Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt32" runat="server" Height="16px" Width="60px" OnTextChanged="qt32_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc6" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox52" runat="server" OnTextChanged="TextBox52_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc13" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label601" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton208" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton208_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton209" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton209_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>18</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label602" runat="server" Text="Nebulisation Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt33" runat="server" Height="16px" Width="60px" OnTextChanged="qt33_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc8" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="nebu" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label603" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton210" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton210_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton211" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton211_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>19</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label604" runat="server" Text="Bedside Sonography / 2D Echo"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt34" runat="server" Height="16px" Width="60px" OnTextChanged="qt34_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc9" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox53" runat="server" OnTextChanged="TextBox53_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc10" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label605" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton212" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton212_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton213" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton213_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>20</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label606" runat="server" Text="Bedside portable X-Ray / X-Ray"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt35" runat="server" Height="16px" Width="60px" OnTextChanged="qt35_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc12" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="TextBox54" runat="server" OnTextChanged="TextBox54_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="cc11" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="label" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton214" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton214_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton215" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton215_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button5" runat="server" Height="35px" OnClick="Button5_Click" Text="Prev" Width="86px" />
                                                <asp:Button ID="Button6" runat="server" Height="35px" OnClick="Button6_Click" Text="Next" Width="86px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="qt" EventName="TextChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </asp:View>
                            
                            <br />
                            <asp:View ID="View10" runat="server">
                                <asp:Panel ID="Panel6" runat="server">
                                    <table class="auto-style15">
                                        <tr>
                                            <td>
                                                <table border="1" style="width:100%; height:30px;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label641" runat="server" Font-Bold="True" Text="No."></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label642" runat="server" Font-Bold="True" Text="MEMORANDUM OF CHARGES"></asp:Label>
                                                        </td>
                                                        <td colspan="4">
                                                            <table style="width:100%;">
                                                                <tr>
                                                                    <td colspan="3" style="text-align:center;">
                                                                        <asp:Label ID="Label643" runat="server" Font-Bold="True" Text="PARTICULARS OF DEPOSIT"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label644" runat="server" Font-Bold="True" Text="Nos."></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label645" runat="server" Font-Bold="True" Text="Amount"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label646" runat="server" Font-Bold="True" Text="Total Amount"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>21</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label687" runat="server" Text="Ryles Tube"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt58" runat="server" Height="16px" Width="60px" OnTextChanged="qt58_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca16" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca9" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label688" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ryles" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton_ryles_tube_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ryles1" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ryles1_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>22</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label689" runat="server" Text="Intubation"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt59" runat="server" Height="16px" Width="60px" OnTextChanged="qt59_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca38" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca10" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label690" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton0" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton_Click" Width="41px" />
                                                            <asp:ImageButton ID="central_line" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="central_line_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>23</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label691" runat="server" Text="Syringe Pump"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt60" runat="server" Height="16px" Width="60px" OnTextChanged="qt60_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca18" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca11" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label692" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="syringe" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="syringe_Click" Width="41px" />
                                                            <asp:ImageButton ID="syringe_edit" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="syringe_edit_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>24</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label693" runat="server" Text="Cathetor"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt61" runat="server" Height="16px" Width="60px" OnTextChanged="qt61_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca19" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca12" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label694" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton280" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton280_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton281" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton281_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>25</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label695" runat="server" Text="Surgical Instrument Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="surgical_instrument" runat="server" OnTextChanged="surgical_instrument_Click" Width="128px"></asp:TextBox>
                                                            <asp:Label ID="ca21" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label696" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton282" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton282_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton283" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton282_Click2" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>26</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label697" runat="server" Text="Central Line"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt62" runat="server" Height="16px" Width="60px" OnTextChanged="qt62_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca20" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca13" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="Label698" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton284" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton284_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton285" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton285_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>27</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label699" runat="server" Text="Nursing Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:Label ID="ca14" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="ca15" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="nursing_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            &nbsp;&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>28</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label703" runat="server" Text="Gastrick Leavag"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt6z" runat="server" Height="16px" OnTextChanged="qt6z_TextChanged" Width="60px"></asp:TextBox>
                                                            <asp:Label ID="z" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="gastric_text" runat="server" OnTextChanged="gastrick_text"></asp:TextBox>
                                                            <asp:Label ID="ca22" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="gastric_leavage" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton288" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton288_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton289" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton289_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>29</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label705" runat="server" Text="Blood Transfusion Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt65" runat="server" Height="16px" OnTextChanged="qt65_TextChanged" Width="60px"></asp:TextBox>
                                                            <asp:Label ID="z0" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="bt" runat="server" OnTextChanged="bt_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="z1" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="btc" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton290" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton290_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton291" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton291_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>30</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label707" runat="server" Text="Physio Therapy / Stress Test"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <asp:TextBox ID="qt63" runat="server" Height="16px" Width="60px" OnTextChanged="qt63_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca23" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="rt_text" runat="server" OnTextChanged="rt_text_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="physio_theropy" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton292" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton292_Click" OnClientClick="update();" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton293" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton293_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="b1" runat="server" Height="35px" OnClick="b1_Click" Text="Prev" Width="86px" />
                                                <asp:Button ID="Button9" runat="server" Height="35px" OnClick="Button9_Click" Text="Next" Width="86px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:View>
                            <asp:View ID="View11" runat="server">
                                <asp:Panel ID="Panel8" runat="server">
                                    <table class="auto-style15">
                                        <tr>
                                            <td>
                                                <table border="1" style="width:100%; height:30px;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label750" runat="server" Font-Bold="True" Text="No."></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label751" runat="server" Font-Bold="True" Text="MEMORANDUM OF CHARGES"></asp:Label>
                                                        </td>
                                                        <td colspan="4">
                                                            <table style="width:100%;">
                                                                <tr>
                                                                    <td colspan="3" style="text-align:center;">
                                                                        <asp:Label ID="Label752" runat="server" Font-Bold="True" Text="PARTICULARS OF DEPOSIT"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label753" runat="server" Font-Bold="True" Text="Nos."></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label754" runat="server" Font-Bold="True" Text="Amount"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                    <td>
                                                                        <asp:Label ID="Label755" runat="server" Font-Bold="True" Text="Total Amount"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>31</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label772" runat="server" Text="Special Visit"></asp:Label>
                                                        </td>
                                                        <td  class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="special_visit_text" runat="server" Height="16px" OnTextChanged="special_visit_TextChanged" Width="60px"></asp:TextBox>
                                                            <asp:Label ID="ca25" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="spaecial_visit_text" runat="server" OnTextChanged="spaecial_visit_text_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="ca26" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="special_visit" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton294" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton294_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton295" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton295_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>32</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label773" runat="server" Text="Medicine"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:TextBox ID="medicine_text" runat="server" OnTextChanged="medicine_text_TextChanged"></asp:TextBox>
                                                            <asp:Label ID="medicine" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="medicine_f" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">
                                                            <asp:ImageButton ID="ImageButton296" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_sign-add_299068.png" OnClick="ImageButton296_Click" Width="41px" />
                                                            <asp:ImageButton ID="ImageButton_medicine" runat="server" Height="32px" ImageUrl="~/NewFolder1/if_icon-136-document-edit_314724 (1).png" OnClick="ImageButton_medicine_Click" Visible="False" Width="41px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>33</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label774" runat="server" Text="Total Bill"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">
                                                            <td class="auto-style19" style="width: 20%"></td>
                                                            <td class="auto-style19" style="width: 20%">
                                                                <asp:Label ID="final_bill1" runat="server"></asp:Label>
                                                            </td>
                                                            <td class="auto-style19" style="width: 8%">
                                                                <asp:Button ID="Button14" runat="server" Height="41px"  Text="Calculate Final Bill" Width="126px" OnClick="Button14_Click" />
                                                            </td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style18">34</td>
                                                        <td class="auto-style18">
                                                            <asp:Label ID="Label776" runat="server" Text="Service Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style18" style="width: 20%"></td>
                                                        <td class="auto-style18" style="width: 20%">
                                                            <asp:Label ID="a4" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style18" style="width: 20%">
                                                            <asp:Label ID="b4" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style18" style="width: 8%"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style18">35</td>
                                                        <td class="auto-style18">GST</td>
                                                        <td class="auto-style18" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style18" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style18" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style18" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>36</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label777" runat="server" Text="Bill Amount"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="c5" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="d5" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>37</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label778" runat="server" Text="Deposit"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="f11" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="f12" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>38</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label779" runat="server" Text="Total Amount"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="g6" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 20%">
                                                            <asp:Label ID="h5" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td class="auto-style19">&nbsp;</td>
                                                        <td class="auto-style20" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 20%">&nbsp;</td>
                                                        <td class="auto-style19" style="width: 8%">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button11" runat="server" Height="35px" OnClick="Button11_Click" Text="Prev" Width="86px" />
                                                <asp:Button ID="Button12" runat="server" Height="35px" OnClick="Button12_Click" Text="Submit" Width="86px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:View>
                            
                            <br />
                            <asp:View ID="View12" runat="server">
                                <asp:Panel ID="Panel9" runat="server">
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <table style="width:100%;">
                                                    <tr>
                                                        <td rowspan="2">
                                                            <asp:Image ID="Image5" runat="server" Height="94px" ImageUrl="~/NewFolder1/logo(1).png" Width="242px" />
                                                        </td>
                                                        <td class="auto-style17">
                                                            <asp:Label ID="Label780" runat="server" Font-Bold="True" Text="FINAL FILL"></asp:Label>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                        <td rowspan="2">
                                                            <asp:Label ID="Label781" runat="server" Text="Plot No. 249, Palm Beach Road vashi, Sector-28"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label782" runat="server" Text="Opp. Kopari Pump, VASHI , Navi mumbai -703"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label783" runat="server" Text="Ph.:022-27668119 Mob.: 7718032077"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="auto-style16">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label795" runat="server" Text="Invoice No:"></asp:Label>
                                                            &nbsp;<asp:Label ID="Date_of_addmission0" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label784" runat="server" Text="Patient Name : "></asp:Label>
                                                            <asp:Label ID="pateint_name0" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table class="auto-style16">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label785" runat="server" Text="Date Of Addmission : "></asp:Label>
                                                                        <asp:Label ID="Date_of_addmission" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label787" runat="server" Text="Date of Discharge : "></asp:Label>
                                                                        <asp:Label ID="dod" runat="server"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="Label789" runat="server" Text="Indoor No : "></asp:Label>
                                                                        <asp:Label ID="in" runat="server"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table style="width:100%;">
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label790" runat="server" Text="Medical Director Sign."></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label791" runat="server" Text="Patient Sign."></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label792" runat="server" Text="Prepared By."></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label793" runat="server" Text="Checked By"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label794" runat="server" Text="Billing In Charges"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="5" style="text-align:center;">
                                                                        <h3>Emergency: +91-22-27668119 Email : hospitalpalmbeach28@gmail.com</h3>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                                <asp:Button ID="Button13" runat="server" OnClientClick="return printpage();" Text="Button" />
                            </asp:View>
                            
                            <br />
                            <asp:View ID="View13" runat="server">
                                <asp:Panel ID="Panel10" runat="server" Height="276px" Width="1080px">
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButton46" runat="server" CssClass="auto-style19" OnClick="LinkButton46_Click">Print Final Bill</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton48" runat="server" CssClass="auto-style19" OnClick="LinkButton48_Click">Print Final Reciept</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButton49" runat="server" CssClass="auto-style19" OnClick="LinkButton49_Click">Print Ipd Registration Form</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton50" runat="server" CssClass="auto-style19" OnClick="LinkButton50_Click1">Print Discharge Card</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </asp:Panel>
                            </asp:View>
                            <asp:View ID="View14" runat="server">
                            </asp:View>
                            
                            <asp:View ID="View9" runat="server">
                                <asp:Panel ID="Panel3" runat="server">
                                    <table style="width:100%; height:60%;">
                                        <tr>
                                            <td colspan="2">
                                                <table style="width:100%;">
                                                    <tr>
                                                        <td rowspan="2">
                                                            <asp:Image ID="Image4" runat="server" Height="94px" ImageUrl="~/NewFolder1/logo(1).png" Width="242px" />
                                                        </td>
                                                        <td class="auto-style17">
                                                            <asp:Label ID="Label68" runat="server" Font-Bold="True" Text="FINAL FILL"></asp:Label>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        </td>
                                                        <td rowspan="2">
                                                            <asp:Label ID="Label76" runat="server" Text="Plot No. 249, Palm Beach Road vashi, Sector-28"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label77" runat="server" Text="Opp. Kopari Pump, VASHI , Navi mumbai -703"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label78" runat="server" Text="Ph.:022-27668119 Mob.: 7718032077"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18" colspan="2">
                                                <asp:Label ID="Label83" runat="server" Text="Patient Name : "></asp:Label>
                                                <asp:Label ID="pateint_name" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label85" runat="server" Text="Date Of Addmission : "></asp:Label>
                                                <asp:Label ID="Label88" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label86" runat="server" Text="Date of Discharge : "></asp:Label>
                                                <asp:Label ID="Label89" runat="server"></asp:Label>
                                                &nbsp;
                                                <asp:Label ID="Label87" runat="server" Text="Indoor No : "></asp:Label>
                                                <asp:Label ID="Label90" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table style="width:100%; height:30px;" border="1">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label96" runat="server" Font-Bold="True" Text="No."></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label95" runat="server" Font-Bold="True" Text="MEMORANDUM OF CHARGES"></asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <table style="width:100%;">
                                                                <tr>
                                                                    <td colspan="3" style="text-align:center;">
                                                                        <asp:Label ID="Label91" runat="server" Font-Bold="True" Text="PARTICULARS OF DEPOSIT"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label92" runat="server" Font-Bold="True" Text="Nos."></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label93" runat="server" Font-Bold="True" Text="Amount"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label94" runat="server" Font-Bold="True" Text="Total Amount"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label97" runat="server" Text="Registration Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label381" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label382" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="label1" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label98" runat="server" Text="Stay Charges / NCCU / NICU"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label301" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label303" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label383" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label99" runat="server" Text="Stay Charges / Delux / Spl. / Genral "></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label386" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label305" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label306" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label100" runat="server" Text="Emergency Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label203" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label151" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="emer" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label101" runat="server" Text="Dressing Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label152" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="q" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="qqq" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>6</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label102" runat="server" Text="Multipara Monitor Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label308" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label309" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label310" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>7</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label103" runat="server" Text="ECG Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label311" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="ecg_chargesf" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label313" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>8</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label104" runat="server" Text="Oxygen Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="oxygen" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label315" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label316" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>9</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label105" runat="server" Text="Ventilator Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="ventilator" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label318" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label319" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>10</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label106" runat="server" Text="Anaeshtetist Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label320" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label321" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="anesthetist" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>11</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label107" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label323" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label324" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label325" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>12</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label108" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label326" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Consultant_charg" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label328" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>13</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label109" runat="server" Text="Consultants Charges Dr."></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label329" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label330" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label331" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>14</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label110" runat="server" Text="Assistant Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label332" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label333" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label334" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>15</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label111" runat="server" Text="Pathology Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label335" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label336" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="pathologyf_charge" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>16</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label112" runat="server" Text="Surgeon Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label338" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label339" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="surgon_charges" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>17</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label113" runat="server" Text="Sonography Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="sono_nos" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="sono_amount" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="amount" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>18</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label114" runat="server" Text="Nebulisation Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="neb_nos" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="nebulisation_charges" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="neb_amount" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>19</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label115" runat="server" Text="Bedside Sonography / 2D Echo"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="bedside_sono" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label348" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label349" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>20</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label116" runat="server" Text="Bedside portable X-Ray / X-Ray"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label350" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label351" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label352" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>21</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label122" runat="server" Text="Ryles Tube"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label353" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="ryles_tube" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label355" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>22</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label118" runat="server" Text="Intubation"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label356" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="intubation" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label358" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>23</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label119" runat="server" Text="Syringe Pump"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label181" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="syringe_pump" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label265" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>24</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label130" runat="server" Text="Cathetor"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label359" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label360" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label361" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>25</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label131" runat="server" Text="Surgical Instrument Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label362" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label363" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label364" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>26</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label387" runat="server" Text="Central Line"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label388" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label389" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label390" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>27</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label120" runat="server" Text="Nursing Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label365" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label366" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="nurse_charge" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>28</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label121" runat="server" Text="Gastrick Leavag"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label368" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label369" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b21" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>29</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label132" runat="server" Text="Blood Transfusion Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="b22" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b23" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b28" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>30</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label124" runat="server" Text="Physio Therapy / Stress Test"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="b25" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b26" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b29" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>31</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label125" runat="server" Text="Special Visit"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label291" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label292" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label293" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>32</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label126" runat="server" Text="Medicine"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label294" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label295" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label296" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>33</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label128" runat="server" Text="Total Bill"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label298" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label299" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label300" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>34</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label129" runat="server" Text="Service Charges"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label191" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="a" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="b" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>35</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label133" runat="server" Text="Bill Amount"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="Label192" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="c0" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="d0" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>36</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label134" runat="server" Text="Deposit"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="e1" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="f1" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="f2" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>37</td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="Label135" runat="server" Text="Total Amount"></asp:Label>
                                                        </td>
                                                        <td class="auto-style20">
                                                            <asp:Label ID="g0" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="g" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Label ID="h0" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>38</td>
                                                        <td class="auto-style19">GST</td>
                                                        <td class="auto-style20">&nbsp;</td>
                                                        <td class="auto-style19">&nbsp;</td>
                                                        <td class="auto-style19">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table style="width:100%;">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label391" runat="server" Text="Medical Director Sign."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label392" runat="server" Text="Patient Sign."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label393" runat="server" Text="Prepared By."></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label394" runat="server" Text="Checked By"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label395" runat="server" Text="Billing In Charges"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" style="text-align:center;">
                                                            <h3>Emergency: +91-22-27668119 Email : hospitalpalmbeach28@gmail.com</h3>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center;"><h3>Economic-class professional Treatement <i>with care...</i></h3>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                                <asp:Button ID="Button3" runat="server" OnClientClick="return printpage();" Text="Print" />
                            </asp:View>
                            <br />
                            <asp:View ID="View15" runat="server">
                            </asp:View>
                            <asp:View ID="View16" runat="server">
                                <asp:Panel ID="Panel17" runat="server" BorderColor="#3399FF" BorderWidth="1px">
                                    <asp:Panel ID="Panel18" runat="server">
                                        <table class="auto-style16">
                                            <tr>
                                                <td>
                                                    <table style="width:100%;">
                                                        <tr>
                                                            <td rowspan="2">
                                                                <asp:Image ID="Image6" runat="server" Height="94px" ImageUrl="~/NewFolder1/logo(1).png" Width="242px" />
                                                            </td>
                                                            <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                            <td rowspan="2">
                                                                <asp:Label ID="Label800" runat="server" Text="Plot No. 249, Palm Beach Road vashi, Sector-28"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label801" runat="server" Text="Opp. Kopari Pump, VASHI , Navi mumbai -703"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label802" runat="server" Text="Ph.:022-27668119 Mob.: 7718032077"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="auto-style16">
                                                        <tr>
                                                            <td style=" text-align: center; ">
                                                                <asp:Label ID="Label813" runat="server" Font-Bold="True" Text="DISCHARGE CARD"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label803" runat="server" Text="IPD No:"></asp:Label>
                                                                &nbsp;<asp:Label ID="ipd_no" runat="server" Font-Bold="True"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label804" runat="server" Font-Bold="True" Text="Patient Name : "></asp:Label>
                                                                <asp:Label ID="pateint_name1" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table class="auto-style16">
                                                                    <tr>
                                                                        <td class="auto-style44">
                                                                            <asp:Label ID="Label805" runat="server" Font-Bold="True" Text="Date Of Addmission : "></asp:Label>
                                                                            <asp:Label ID="Date_of_addmissionr0" runat="server"></asp:Label>
                                                                            &nbsp;&nbsp;
                                                                            <asp:Label ID="Label815" runat="server" Font-Bold="True" Text="Time Of Addmission : "></asp:Label>
                                                                            <asp:Label ID="toa" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label806" runat="server" Font-Bold="True" Text="Date of Discharge : "></asp:Label>
                                                                            <asp:Label ID="dod0" runat="server"></asp:Label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <asp:Label ID="Label816" runat="server" Font-Bold="True" Text="Time of Discharge : "></asp:Label>
                                                                            <asp:Label ID="tod" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style44">
                                                                            <asp:Label ID="Label814" runat="server" Font-Bold="True" Text="Address:"></asp:Label>
                                                                            &nbsp;
                                                                            <asp:Label ID="address" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style44">
                                                                            <asp:Label ID="Label817" runat="server" Font-Bold="True" Text="Procedure Name:"></asp:Label>
                                                                            &nbsp;
                                                                            <asp:Label ID="proc_name" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="Label843" runat="server" Font-Bold="True" Text="Diaqgnosis : "></asp:Label>
                                                                            <asp:Label ID="diagnosis" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style44">
                                                                            <asp:Label ID="Label844" runat="server" Font-Bold="True" Text="Dr. Incharge : "></asp:Label>
                                                                            <asp:Label ID="dr_incharge" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label845" runat="server" Font-Bold="True" Text="Speciality : "></asp:Label>
                                                                            <asp:Label ID="speciality" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table border="1" style="width:100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label818" runat="server" Font-Bold="True" Text="Chief Complaints : "></asp:Label>
                                                                                        <br />
                                                                                        <asp:Label ID="chief_complaints" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table border="1" style="width:100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label828" runat="server" Font-Bold="True" Text="Examination Details :"></asp:Label>
                                                                                        <br />
                                                                                        <table class="auto-style16">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints0" runat="server">Temp :</asp:Label>
                                                                                                    <asp:Label ID="temp" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints1" runat="server">Pulse : </asp:Label>
                                                                                                    <asp:Label ID="pulse" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints2" runat="server">BP : </asp:Label>
                                                                                                    <asp:Label ID="bp" runat="server"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints3" runat="server">Resp :</asp:Label>
                                                                                                    <asp:Label ID="resp" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints4" runat="server">SpO2 : </asp:Label>
                                                                                                    <asp:Label ID="spo2" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints5" runat="server">C.V.S. :</asp:Label>
                                                                                                    <asp:Label ID="cvs" runat="server"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints6" runat="server">C.N.S. : </asp:Label>
                                                                                                    <asp:Label ID="cns" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Label ID="chief_complaints7" runat="server">R.S. : </asp:Label>
                                                                                                    <asp:Label ID="rs" runat="server"></asp:Label>
                                                                                                </td>
                                                                                                <td>&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table border="1" style="width:100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label829" runat="server" Font-Bold="True" Text="Investigation : "></asp:Label>
                                                                                        <br />
                                                                                        <asp:Label ID="investigation" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table class="auto-style43">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label830" runat="server" Font-Bold="True" Text="Treatment Given Medical : "></asp:Label>
                                                                                        <br />
                                                                                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="medication_id" DataSourceID="treatment_given_on_discharge" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="1028px">
                                                                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                                                                            <Columns>
                                                                                                <asp:BoundField DataField="drug" HeaderText="drug" SortExpression="drug" />
                                                                                                <asp:BoundField DataField="frequency" HeaderText="frequency" SortExpression="frequency" />
                                                                                                <asp:TemplateField>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lbl0" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timea") %>'></asp:Label>
                                                                                                        ------<asp:Label ID="lab2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timeb") %>'></asp:Label>
                                                                                                        ------<asp:Label ID="Label846" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timec") %>'></asp:Label>
                                                                                                        ------<asp:Label ID="Label847" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timed") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                            </Columns>
                                                                                            <FooterStyle BackColor="#CCCCCC" />
                                                                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                                        </asp:GridView>
                                                                                        <asp:SqlDataSource ID="treatment_given_on_discharge" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [palm_ipd_medication] WHERE ([patient_code] = @patient_code)">
                                                                                            <SelectParameters>
                                                                                                <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                                                                            </SelectParameters>
                                                                                        </asp:SqlDataSource>
                                                                                        <br />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table border="1" style="width:100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label831" runat="server" Font-Bold="True" Text="Operative Notes :"></asp:Label>
                                                                                        <br />
                                                                                        <asp:Label ID="operative_note" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table class="auto-style43">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label832" runat="server" Font-Bold="True" Text="Treatment On Discharge"></asp:Label>
                                                                                        <br />
                                                                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="medication_id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Width="1028px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                                                                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                                                                            <Columns>
                                                                                                <asp:BoundField DataField="drug" HeaderText="drug" SortExpression="drug" />
                                                                                                <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                                                                                             <asp:TemplateField><ItemTemplate>
                                                                          <asp:Label ID="lbl" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timea") %>' ></asp:Label>------<asp:Label ID="lab01" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timeb") %>'></asp:Label>------<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timec") %>'></asp:Label>------<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timed") %>'></asp:Label>
                                                                                       </ItemTemplate></asp:TemplateField>  
                                                                                            </Columns>
                                                                                            <FooterStyle BackColor="#CCCCCC" />
                                                                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                                        </asp:GridView>
                                                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT * FROM [palm_discharge_medication] WHERE ([patient_code] = @patient_code)">
                                                                                            <SelectParameters>
                                                                                                <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                                                                            </SelectParameters>
                                                                                        </asp:SqlDataSource>
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
                                                                <table border="1" style="width:100%">
                                                                    <tr>
                                                                        <td colspan="3"><br /><br /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="Label808" runat="server" Text="Follow Up Date :"></asp:Label>
                                                                            <asp:Label ID="operative_note1" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label809" runat="server" Text="Time: "></asp:Label>
                                                                            <asp:Label ID="operative_note2" runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label812" runat="server" Text="Medical Officer"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="3" style="text-align:center;">
                                                                            <h3>Emergency: +91-22-27668119 Email : hospitalpalmbeach28@gmail.com</h3>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <br />
                                    <asp:Button ID="Button20" runat="server" Text="Print" OnClientClick="return printpage0();s"  />
                                </asp:Panel>
                                <ajaxToolkit:RoundedCornersExtender ID="Panel17_RoundedCornersExtender" runat="server" BehaviorID="Panel17_RoundedCornersExtender" TargetControlID="Panel17" />
                            </asp:View>
                            <asp:View ID="View18" runat="server">
                            </asp:View>
                            <asp:View ID="View19" runat="server">
                            </asp:View>
                        </asp:MultiView>
                    </asp:Panel>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

