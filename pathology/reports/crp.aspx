<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="crp.aspx.cs" Inherits="pathology_reports_crp" %>
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
            height: 56px;
        }
        .auto-style20 {
            height: 56px;
        }
        .auto-style21 {
        width: 187px;
        height: 30px;
    }
    .auto-style22 {
        height: 30px;
    }
        .auto-style23 {
            width: 187px;
            height: 42px;
        }
        .auto-style24 {
            height: 108px;
        }
        .auto-style25 {
            height: 42px;
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
                                    <td>:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label243" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="CRP"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label199" runat="server" Text="C. REACTIVE PROTIENS" Font-Bold="True"></asp:Label>
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
                                        <asp:Label ID="Label14" runat="server" Text="RESULT"></asp:Label>
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
                                        <asp:Label ID="Label17" runat="server" Text="CRP  Lavel"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label63" runat="server" Text="Quantitative"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label220" runat="server" Text="mg/L"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="Up to 10mg/L"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter CRP Level" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label221" runat="server" Text="Result"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>None</asp:ListItem>
                                            <asp:ListItem>POSITIVE</asp:ListItem>
                                            <asp:ListItem>NEGATIVE</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Result" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
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
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style19">
                                            &nbsp;</td>
                                        <td class="auto-style20">&nbsp;</td>
                                        <td class="auto-style20">
                                            &nbsp;</td>
                                        <td class="auto-style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23"></td>
                                        <td class="auto-style25"></td>
                                        <td class="auto-style25"></td>
                                        <td class="auto-style25"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            &nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style22">
                                            &nbsp;</td>
                                        <td class="auto-style22">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            <asp:Label ID="Label222" runat="server" Text="NAME"></asp:Label>
                                        </td>
                                        <td class="auto-style22">:
                                            <asp:Label ID="Label223" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:Label ID="Label224" runat="server">DATE</asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:Label ID="Label225" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label226" runat="server" Text="REF. BY"></asp:Label>
                                        </td>
                                        <td>:
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label228" runat="server" Text="TASK ASKED"></asp:Label>
                                        </td>
                                        <td>:
                                            <asp:Label ID="Label229" runat="server" Text="CRP"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="text-align:center;">
                                            <asp:Label ID="Label230" runat="server" Font-Bold="True" Text="C. REACTIVE PROTIENS"></asp:Label>
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
                                            <asp:Label ID="Label231" runat="server" Text="TEST NAME" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label232" runat="server" Text="METHOD" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label233" runat="server" Text="RESULT" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label234" runat="server" Text="UNITS" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label235" runat="server" Text="REFERANCE RANGE" Font-Bold="True"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label236" runat="server" Text="CRP  Lavel"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label237" runat="server" Text="Quantitative"></asp:Label>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="labe6" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label238" runat="server" Text="mg/L"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label239" runat="server" Text="Up to 10mg/L"></asp:Label>
                                        </td>
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
                                            <asp:Label ID="Label240" runat="server" Text="Result"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
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
                    
                </asp:Panel>                <asp:Button ID="Button2" runat="server" Text="Print" BackColor="White" BorderStyle="None" OnClientClick="return printpage();" Height="36px" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Content>

