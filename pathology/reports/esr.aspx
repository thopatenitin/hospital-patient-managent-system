<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="esr.aspx.cs" Inherits="pathology_reports_esr" %>
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
        .auto-style17 {
            height: 23px;
        }
        .auto-style21 {
            width: 284px;
            height: 21px;
        }
        .auto-style23 {
            height: 21px;
        }
        .auto-style27 {
            width: 99px;
        }
        .auto-style30 {
            width: 23%;
        }
        .auto-style32 {
            width: 229px;
            height: 23px;
        }
        .auto-style33 {
            width: 229px;
        }
        .auto-style35 {
            width: 284px;
        }
        .auto-style36 {
            height: 75px;
        }
        .auto-style37 {
            height: 24px;
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
                                    <td class="auto-style33">
                                        <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                    <td style="width:29%">:
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </td>
                                    <td style="width:29%">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                        <asp:TextBox ID="d" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="d" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <ajaxToolkit:CalendarExtender ID="d_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="d" Format="dd/MM/yyyy" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label5" runat="server" Text="REF. BY"></asp:Label>
                                    </td><td>
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <caption>
                                        <tr>
                                            <td class="auto-style32">&nbsp;</td>
                                            <td class="auto-style17">&nbsp;</td>
                                            <td class="auto-style17"></td>
                                            <td class="auto-style17"></td>
                                        </tr>
                                    </caption>
                                </tr>
                                <tr>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label217" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="E S R"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="text-align:center;" class="auto-style37">
                                        <asp:Label ID="Label199" runat="server" Text="ERYTHROCYTE SEDIMENTATION RATE" Font-Bold="True"></asp:Label>
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
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label14" runat="server" Text="VALUE"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
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
                                        <asp:Label ID="Label17" runat="server" Text="Erythrocyte Sedimentation Rate"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox1" ErrorMessage=" Enter Erythrocyte Sedimentation Rate" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="0  - 15 mm/1 hr"></asp:Label>
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
            <asp:Panel ID="Panel1" runat="server">
                <asp:Panel ID="Panel8" runat="server" BackColor="White">
                    <table style=" width: 100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style36"></td>
                            <td class="auto-style36"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table style="width: 100%;">
                                    <tr>
                                        <td class="auto-style35">
                                            <asp:Label ID="Label200" runat="server" Text="NAME"></asp:Label>
                                            :</td>
                                        <td colspan="2">
                                            <asp:Label ID="Label201" runat="server"></asp:Label>
                                        </td>
                                        <td style="width: 29%">&nbsp;</td>
                                        <td class="auto-style30">
                                            <asp:Label ID="Label202" runat="server">DATE</asp:Label>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label203" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            <asp:Label ID="Label204" runat="server" Text="REF. BY"></asp:Label>
                                            :</td>
                                        <td class="auto-style23" colspan="2">
                                            <asp:Label ID="Label216" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">
                                            <asp:Label ID="Label206" runat="server" Text="TASK ASKED"></asp:Label>
                                            :</td>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label218" runat="server" Text="E S R"></asp:Label>
                                        </td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>:
                                            </td>
                                        <td class="auto-style30">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style30">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="text-align: center;">
                                            <asp:Label ID="Label208" runat="server" Font-Bold="True" Text="ERYTHROCYTE SEDIMENTATION RATE"></asp:Label>
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
                                <table style=" width: 100%;">
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label209" runat="server" Text="TEST NAME"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label210" runat="server" Text="VALUE"></asp:Label>
                                        </td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label211" runat="server" Text="REFERANCE RANGE"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label212" runat="server" Text="Erythrocyte Sedimentation Rate"></asp:Label>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label215" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label213" runat="server" Text="0  - 15 mm/1 hr"></asp:Label>
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
                                <asp:Label ID="Label214" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                </asp:Panel>                <asp:Button ID="Button2" runat="server" Text="Print" BackColor="White" OnClientClick="return printpage();" BorderStyle="None" Height="36px" Width="81px"  />
                   <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Content>

