<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="lipid_profile.aspx.cs" Inherits="pathology_reports_lipid_profile" %>
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
        .auto-style13 {
            width: 219px;
            height: 23px;
        }
        .auto-style14 {
            width: 190px;
            height: 23px;
        }
        .auto-style15 {
            width: 115px;
            height: 23px;
        }
        .auto-style16 {
            width: 173px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style19 {
            height: 42px;
        }
        .auto-style20 {
            width: 187px;
            height: 39px;
        }
        .auto-style21 {
            height: 39px;
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
                                    <td>:
                                        <asp:Label ID="labe1" runat="server"></asp:Label>
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
                                        <asp:Label ID="Label207" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="Lipid Profile"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label199" runat="server" Text="LIPID PROFILE " Font-Bold="True"></asp:Label>
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
                                        <asp:Label ID="Label17" runat="server" Text="TOTAL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label63" runat="server" Text="PHOTOMETRY"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">mg%<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox1" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="125 - 200 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label18" runat="server" Text="TRIGLYCERIDES"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label64" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">mg%<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox2" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label52" runat="server" Text="25 - 200 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label19" runat="server" Text="HDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label155" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">mg%<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label54" runat="server" Text="35 - 80 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label158" runat="server" Text="LDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label159" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBoxp" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">mg%<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBoxp" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label160" runat="server" Text="85 - 130 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label20" runat="server" Text="VLDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label156" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="textbox" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">mg%<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="textbox" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label161" runat="server" Text="5 - 40 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label21" runat="server" Text="TC/HDL CHOLESTROL RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label65" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label162" runat="server" Text="3.0 - 5.0 Ratio"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label22" runat="server" Text="LDL/HDL RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label157" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox6" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label57" runat="server" Text="1.5 - 3.5 Ratio"></asp:Label>
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
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="None" Height="36px" Width="81px" OnClick="Button1_Click"  />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel8" runat="server" BackColor="White">
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
                                    <td class="auto-style18">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20"></td>
                                    <td class="auto-style21"></td>
                                    <td class="auto-style21"></td>
                                    <td class="auto-style21"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label163" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label164" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label165" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label166" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label167" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label168" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label169" runat="server" Text="TASK ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label170" runat="server" Text="Liver Function Test"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
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
                                        <asp:Label ID="Label171" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label172" runat="server" Text="METHOD"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label173" runat="server" Text="VALUE"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label174" runat="server" Text="UNITS"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label175" runat="server" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label176" runat="server" Text="TOTAL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label177" runat="server" Text="PHOTOMETRY"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label200" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">mg%</td>
                                    <td>
                                        <asp:Label ID="Label178" runat="server" Text="125 - 200 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label179" runat="server" Text="TRIGLYCERIDES"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label180" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label201" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">mg%</td>
                                    <td>
                                        <asp:Label ID="Label181" runat="server" Text="25 - 200 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label182" runat="server" Text="HDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label183" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label202" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style16">mg%</td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label184" runat="server" Text="35 - 80 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label185" runat="server" Text="LDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label186" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label203" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style16">mg%</td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label187" runat="server" Text="85 - 130 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label188" runat="server" Text="VLDL CHOLESTROL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label189" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label204" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">mg%</td>
                                    <td>
                                        <asp:Label ID="Label190" runat="server" Text="5 - 40 mg%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label191" runat="server" Text="TC/HDL CHOLESTROL RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label192" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label205" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">Ratio</td>
                                    <td>
                                        <asp:Label ID="Label193" runat="server" Text="3.0 - 5.0 Ratio"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label194" runat="server" Text="LDL/HDL RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label195" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label206" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">Ratio</td>
                                    <td>
                                        <asp:Label ID="Label196" runat="server" Text="1.5 - 3.5 Ratio"></asp:Label>
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
                        <td >
                            <asp:Label ID="Label197" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center;">
                            <asp:Label ID="Label198" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style19">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClientClick="return printpage();"  Text="Print" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Content>

