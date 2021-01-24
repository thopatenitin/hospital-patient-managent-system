<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="stool_examination.aspx.cs" Inherits="pathology_reports_stool_examination" %>
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
        .auto-style11 {
            width: 115px;
        }
        .auto-style8 {
            width: 173px;
        }
        .auto-style9 {
            width: 219px;
        }
        .auto-style12 {
            width: 190px;
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
            width: 367px;
        }
        .auto-style21 {
            width: 52px;
        }
        .auto-style22 {
            width: 52px;
            height: 23px;
        }
    .auto-style23 {
        width: 52px;
        height: 26px;
    }
    .auto-style24 {
        width: 219px;
        height: 26px;
    }
    .auto-style25 {
        width: 190px;
        height: 26px;
    }
    .auto-style26 {
        width: 115px;
        height: 26px;
    }
    .auto-style27 {
        width: 173px;
        height: 26px;
    }
    .auto-style28 {
        height: 26px;
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
                                    <td class="auto-style19">:
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
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
                                    <td class="auto-style19">:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label667" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td class="auto-style19">:
                                        <asp:Label ID="Label9" runat="server" Text="Stool Examination"></asp:Label>
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
                            <table class="auto-style7">
                                <tr>
                                    <td style="align-content:center; text-align:center;" class="auto-style21">
                                        &nbsp;</td>
                                    <td colspan="5" style="align-content:center; text-align:center;">
                                        <asp:Label ID="Label14" runat="server" Text="EXAMINATION OF STOOL"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Underline="True" Text="PHYSICAL EXAMINATION"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label169" runat="server" Font-Bold="True" Font-Underline="True" Text="RESULT"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label228" runat="server" Text="Colour"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox2" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style22">
                                        &nbsp;</td>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label229" runat="server" Text="Form &amp; Consistensy"></asp:Label>
                                    </td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox12" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label20" runat="server" Text="Mucas"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label21" runat="server" Text="Blood"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label22" runat="server" Text="Parasites"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Underline="True" Text="CHEMICAL EXAMINATION"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label24" runat="server" Text="Reaction"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox8" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label25" runat="server" Text="Occult Blood"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label26" runat="server" Text="Reducing Substrains"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Label ID="Label156" runat="server" Font-Bold="True" Font-Underline="True" Text="MICROSCOPIC EXAMINATION "></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label27" runat="server" Text="Red Blood Test"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList6" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        </td>
                                    <td class="auto-style24">
                                        <asp:Label ID="Label157" runat="server" Text="Pus Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style25"></td>
                                    <td class="auto-style26">
                                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style27">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox23" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style28"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label158" runat="server" Text="Epithetical Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox24" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label159" runat="server" Text="Macrophages"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList9" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label160" runat="server" Text="Fat"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList10" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label161" runat="server" Text="Starch"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList11" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label162" runat="server" Text="Entamoeba Histolitical"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList12" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label163" runat="server" Text="Entameba Coli"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList13" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label164" runat="server" Text="Giardia Lambia"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList14" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label165" runat="server" Text="Tricomonas Hominis"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList15" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label166" runat="server" Text="Ova/Cyst"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList16" runat="server" Height="16px" Width="120px">
                                            <asp:ListItem Value="absent">Absent</asp:ListItem>
                                            <asp:ListItem Value="present">Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
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
            <asp:Panel ID="Panel8" runat="server">
                <asp:Panel ID="Panel9" runat="server" BackColor="White">
                    <table class="auto-style6">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style18">
                                            &nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label230" runat="server" Text="NAME"></asp:Label>
                                        </td>
                                        <td class="auto-style19">:
                                            <asp:Label ID="Label231" runat="server"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="Label232" runat="server">DATE</asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label234" runat="server" Text="REF. BY"></asp:Label>
                                        </td>
                                        <td class="auto-style19">:
                                            <asp:Label ID="Label235" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label236" runat="server" Text="TASK ASKED"></asp:Label>
                                        </td>
                                        <td class="auto-style19">:
                                            <asp:Label ID="Label237" runat="server" Text="Stool Examination"></asp:Label>
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
                                        <td colspan="2" style="align-content:center; text-align:center;">
                                            <asp:Label ID="Label238" runat="server" Text="EXAMINATION OF STOOL"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr><td></td>
                                        <td>
                                            <hr />
                                        </td>
                                    </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                            <td>
                                <table class="auto-style7">
                                 
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label239" runat="server" Font-Bold="True" Font-Underline="True" Text="PHYSICAL EXAMINATION"></asp:Label>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label240" runat="server" Font-Bold="True" Font-Underline="True" Text="RESULT"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label241" runat="server" Text="Colour"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label262" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label242" runat="server" Text="Form &amp; Consistensy"></asp:Label>
                                        </td>
                                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                        <td class="auto-style15">
                                            <asp:Label ID="Label263" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style17">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label243" runat="server" Text="Mucas"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label264" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label244" runat="server" Text="Blood"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label265" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label245" runat="server" Text="Parasites"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label266" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label246" runat="server" Font-Bold="True" Font-Underline="True" Text="CHEMICAL EXAMINATION"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label247" runat="server" Text="Reaction"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label267" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label248" runat="server" Text="Occult Blood"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label268" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label249" runat="server" Text="Reducing Substrains"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label269" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label250" runat="server" Font-Bold="True" Font-Underline="True" Text="MICROSCOPIC EXAMINATION "></asp:Label>
                                        </td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label251" runat="server" Text="Red Blood Test"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label90" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label252" runat="server" Text="Pus Cells"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label00" runat="server"></asp:Label>
                                            <asp:Label ID="Label281" runat="server">/hpf</asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label253" runat="server" Text="Epithetical Cells"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label000" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label254" runat="server" Text="Macrophages"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label666" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label255" runat="server" Text="Fat"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label0" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label256" runat="server" Text="Starch"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label01" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label257" runat="server" Text="Entamoeba Histolitical"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label02" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label258" runat="server" Text="Entameba Coli"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="label66" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label259" runat="server" Text="Giardia Lambia"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="label69" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label260" runat="server" Text="Tricomonas Hominis"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label001" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label261" runat="server" Text="Ova/Cyst"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label280" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                </asp:Panel>
                                    <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClientClick="return printpage();" Text="Print" Width="81px" />
                       <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button2" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            </asp:Panel>
        </asp:View>
    </asp:MultiView>

</asp:Content>

