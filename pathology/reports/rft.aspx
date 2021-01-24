<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="rft.aspx.cs" Inherits="pathology_reports_rft" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel1.ClientID%>");
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
            height: 61px;
        }
        .auto-style23 {
            height: 61px;
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
                                        <asp:ScriptManager ID="ScriptManager2" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                        <asp:TextBox ID="d" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="d_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="d" Format="dd/MM/yyyy" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="d" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label5" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label242" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="Kidpro"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label199" runat="server" Text="RENAL FUNCTION TEST" Font-Bold="True"></asp:Label>
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
                                        <asp:Label ID="Label13" runat="server" Text="METHOD"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label14" runat="server" Text="VALUE"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label15" runat="server" Text="UNITS"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label17" runat="server" Text="CREATININE-SERUM"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label63" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label232" runat="server" Text="mg%"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox1" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="0.5 - 0.8"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label220" runat="server" Text="BLOOD URIA NITROGEN (BUN)"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label224" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label233" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label228" runat="server" Text="7.9 - 20"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label221" runat="server" Text="BUN/SR. CREATININE RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label225" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label234" runat="server" Text="Ratio"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label229" runat="server" Text="9:1 - 23:1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label222" runat="server" Text="URIC ACID"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label226" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label235" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label230" runat="server" Text="2.6 - 6.0"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label223" runat="server" Text="CALCIUM"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label227" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label236" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox6" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label231" runat="server" Text="8.8 - 10.6"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label243" runat="server" Text="PROTINE TOTAL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label247" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label251" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox8" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label255" runat="server" Text="6.6 -- 8.3"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label244" runat="server" Text="ALBUMIN - SERUM"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label248" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label252" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox9" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label256" runat="server" Text="3.5 -- 5.2"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label245" runat="server" Text="SERUM - GLOBULIN"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label249" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label253" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox10" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label257" runat="server" Text="2.30 -- 3.50"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label246" runat="server" Text="SERUM ALBUMIN / GLOBULIN RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label250" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label254" runat="server" Text="Ratio"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox11" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label258" runat="server" Text="0.9 – 2.0"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
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
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
            <asp:Panel ID="Panel1" runat="server" BackColor="White">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style18">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style19"></td>
                                    <td class="auto-style23"></td>
                                    <td class="auto-style23"></td>
                                    <td class="auto-style23"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label19" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label20" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label21" runat="server" Text="TASK ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label22" runat="server" Text="Kidpro"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label23" runat="server" Text="RENAL FUNCTION TEST" Font-Bold="True"></asp:Label>
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
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label24" runat="server" Text="TEST NAME" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label25" runat="server" Text="METHOD" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label26" runat="server" Text="VALUE" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label27" runat="server" Text="UNITS" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Text="REFERANCE RANGE" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label30" runat="server" Text="CREATININE-SERUM" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label31" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label237" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label32" runat="server" Text="mg%" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label33" runat="server" Text="0.5 - 0.8" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label34" runat="server" Text="BLOOD URIA NITROGEN (BUN)" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label35" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label238" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label36" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label37" runat="server" Text="7.9 - 20" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label38" runat="server" Text="BUN/SR. CREATININE RATIO" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label39" runat="server" Text="CALCULATED" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label239" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label40" runat="server" Text="Ratio" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label41" runat="server" Text="9:1 - 23:1" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label42" runat="server" Text="URIC ACID" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label43" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label240" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label44" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label45" runat="server" Text="2.6 - 6.0" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label46" runat="server" Text="CALCIUM" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label47" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label241" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label48" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label49" runat="server" Text="8.8 - 10.6" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label259" runat="server" Font-Size="11pt" Text="PROTINE - TOTAL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label269" runat="server" Font-Size="11pt" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Q" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label273" runat="server" Font-Size="11pt" Text="mg/dl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Q3" runat="server" Font-Size="11pt">6.6 -- 8.3</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label260" runat="server" Font-Size="11pt" Text="ALBUMIN-SERUM"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label270" runat="server" Font-Size="11pt" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Q0" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label274" runat="server" Font-Size="11pt" Text="mg/dl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Q4" runat="server" Font-Size="11pt">3.5 -- 5.2</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label261" runat="server" Font-Size="11pt" Text="SERUM-GLOBULIN"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label271" runat="server" Font-Size="11pt" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Q1" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label275" runat="server" Font-Size="11pt" Text="mg/dl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Q5" runat="server" Font-Size="11pt">2.30 -- 3.50</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label266" runat="server" Font-Size="11pt" Text="SERUM ALBUMIN/GLOBULIN RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label272" runat="server" Font-Size="11pt" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Q2" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label276" runat="server" Font-Size="11pt" Text="Ratio"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Q6" runat="server" Font-Size="11pt">0.9 -- 2.0</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
                                </tr>
                            </table>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <br />
                            <asp:Label ID="Label50" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center;">
                            <asp:Label ID="Label51" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
            </asp:Panel>
               <asp:Button ID="Button2" runat="server" Text="Print" BackColor="White" OnClientClick="return printpage();" BorderStyle="None" Height="36px" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="DropShadowExtender1" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
        </asp:View>
    </asp:MultiView>
</asp:Content>

