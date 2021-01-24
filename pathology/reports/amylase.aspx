<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="amylase.aspx.cs" Inherits="pathology_reports_amylase" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel8.ClientID%>");
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





        .auto-style6 {
            width: 100%;
        }
        .auto-style18 {
            width: 187px;
        }
        .auto-style7 {
            width: 100%;
            height: 9px;
        }
        .auto-style9 {
            width: 219px;
        }
        .auto-style12 {
            width: 190px;
        }
        .auto-style11 {
            width: 115px;
        }
        .auto-style8 {
            width: 173px;
        }
        .auto-style19 {
            width: 187px;
            height: 37px;
        }
        .auto-style21 {
        width: 187px;
        height: 30px;
    }
    .auto-style22 {
        height: 30px;
    }
        .auto-style25 {
            width: 219px;
            height: 24px;
        }
        .auto-style26 {
            width: 190px;
            height: 24px;
        }
        .auto-style27 {
            width: 115px;
            height: 24px;
        }
        .auto-style28 {
            width: 173px;
            height: 24px;
        }
        .auto-style29 {
            height: 24px;
        }
        .auto-style30 {
            width: 187px;
            height: 43px;
        }
        .auto-style31 {
            height: 43px;
        }
        .auto-style32 {
            width: 187px;
            height: 35px;
        }
        .auto-style34 {
            height: 35px;
        }
        .auto-style35 {
            height: 37px;
        }
        .auto-style36 {
            width: 374px;
        }
        .auto-style37 {
            height: 35px;
            width: 563px;
        }
        .auto-style38 {
            height: 43px;
            width: 563px;
        }
        .auto-style39 {
            height: 37px;
            width: 563px;
        }
        .auto-style40 {
            height: 30px;
            width: 563px;
        }
        .auto-style41 {
            width: 563px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel7" runat="server" BackColor="White">
                <table class="auto-style6">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                    <td class="auto-style36">:
                                        <asp:Label ID="label000" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="TextBox2" Format="dd/MM/yyyy" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox2" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label5" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td class="auto-style36">:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label243" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td class="auto-style36">:
                                        <asp:Label ID="Label268" runat="server" Text="Amylase"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label267" runat="server" Text="AMYLASE" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                        <td>
                            <table class="auto-style7">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label12" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label14" runat="server" Text="RESULT"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Label ID="Label271" runat="server" Text="UNIT"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label262" runat="server" Text="Amylase"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Amylase" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label263" runat="server" Text="U/L                                                            "></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style25"></td>
                                    <td class="auto-style26"></td>
                                    <td class="auto-style27"></td>
                                    <td class="auto-style28"></td>
                                    <td class="auto-style29"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label254" runat="server" Text="Interpretation"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <asp:Label ID="Label264" runat="server" Text="Lipemic Sera (Hypertriglyceridemia) may contain inhibitors, Which falsely depress results. About 20% of patients with Acute Pancreatitis have abnormal lipids. Normal serum amylase may occur in Pancreatitis, Especially relapsing and chronic pancreatitis. Moderate increases may be reported in normal pregnancy."></asp:Label>
                                        <asp:Label ID="Label265" runat="server" Text="Tietz Nw, Huang WY, Rauh DF ET Al. Laboratory tests in the differential diagnosis of Hyperamylasemia. Clin Chem 1986;32: 301–307"></asp:Label>
                                        <asp:Label ID="Label266" runat="server" Text="Technology :- ENZYMATIC PHOTOMETRIC TEST."></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <br />
                            <asp:Label ID="Label28" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center;">
                            <asp:Label ID="Label200" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="None" Height="36px" Width="81px" OnClick="Button1_Click" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel1" runat="server">
                <asp:Panel ID="Panel8" runat="server" BackColor="White">
                    <table class="auto-style6">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style32"></td>
                                        <td class="auto-style37"></td>
                                        <td class="auto-style34"></td>
                                        <td class="auto-style34"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style38"></td>
                                        <td class="auto-style31"></td>
                                        <td class="auto-style31"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19"></td>
                                        <td class="auto-style39"></td>
                                        <td class="auto-style35"></td>
                                        <td class="auto-style35"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            <asp:Label ID="Label222" runat="server" Text="NAME"></asp:Label>
                                        </td>
                                        <td class="auto-style40">:
                                            <asp:Label ID="Label223" runat="server"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td class="auto-style22">
                                            &nbsp;</td>
                                        <td class="auto-style22">
                                            <asp:Label ID="Label224" runat="server">DATE</asp:Label>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label226" runat="server" Text="REF. BY"></asp:Label>
                                        </td>
                                        <td class="auto-style41">:
                                            <asp:Label ID="Label225" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label228" runat="server" Text="TASK ASKED"></asp:Label>
                                        </td>
                                        <td class="auto-style41">:
                                            <asp:Label ID="Label246" runat="server" Text="Amylase"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="text-align:center;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label247" runat="server" Font-Bold="True" Text="AMYLASE"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                            <td>
                                <table class="auto-style7">
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label231" runat="server" Text="TEST NAME" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label269" runat="server" Font-Bold="True" Text="METHOD"></asp:Label>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label233" runat="server" Text="RESULT" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:Label ID="Label270" runat="server" Font-Bold="True" Text="UNIT"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label251" runat="server" Text="AMYLASE"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label256" runat="server" Text="PHOTOMETRY"></asp:Label>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="labe6" runat="server" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label257" runat="server" Text="U/L                                                            "></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label232" runat="server" Text="Reference Range :- "></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label249" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label255" runat="server" Text="Adults : 30-118 U/L
"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label258" runat="server" Text=" Interpretation:                                                                                                                                                                        "></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <asp:Label ID="Label259" runat="server" Text="Lipemic Sera (Hypertriglyceridemia) may contain inhibitors, Which falsely depress results. About 20% of patients with Acute Pancreatitis have abnormal lipids. Normal serum amylase may occur in Pancreatitis, Especially relapsing and chronic pancreatitis. Moderate increases may be reported in normal pregnancy."></asp:Label>
                                            <br />
                                            &nbsp;<asp:Label ID="Label260" runat="server" Text="Tietz Nw, Huang WY, Rauh DF ET Al. Laboratory tests in the differential diagnosis of Hyperamylasemia. Clin Chem 1986;32: 301–307"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label261" runat="server" Text="Technology :- ENZYMATIC PHOTOMETRIC TEST."></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <br />
                                <asp:Label ID="Label241" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align:center;">
                                <asp:Label ID="Label242" runat="server" Text="END REPORT"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </asp:Panel>
                <asp:Button ID="Button2" runat="server" Text="Print" BackColor="White" BorderStyle="None" OnClientClick="return printpage();" Height="36px" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Content>

