<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="fbs_plbs.aspx.cs" Inherits="pathology_reports_fbs_plbs" %>
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
        .auto-style29 {
            width: 123px;
        }
        .auto-style23 {
            width: 140px;
        }
        .auto-style8 {
            width: 173px;
        }
        .auto-style30 {
            width: 187px;
            height: 23px;
        }
        .auto-style31 {
            height: 23px;
        }
        .auto-style34 {
            width: 219px;
            height: 26px;
        }
        .auto-style35 {
            width: 123px;
            height: 26px;
        }
        .auto-style36 {
            width: 140px;
            height: 26px;
        }
        .auto-style37 {
            height: 26px;
        }
        .auto-style38 {
            width: 187px;
            height: 63px;
        }
        .auto-style39 {
            height: 63px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel7" runat="server" BackColor="White">
                <table style="    width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="width:100%;s">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
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
                                        <asp:Label ID="label000" runat="server">FBS/PLBS</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label199" runat="server" Text="FBS/PLBS" Font-Bold="True"></asp:Label>
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
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="Label14" runat="server" Text="RESULT"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label17" runat="server" Text="Fasting Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox1" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label261" runat="server" Text="Urine Suger (Fasting Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox2" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label262" runat="server" Text="Urine Acetone (Fasting Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox3" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label263" runat="server" Text="Post Lunch Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="textBox00" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="textBox00" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label264" runat="server" Text="Urine Suger(Post Lunch Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox5" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label266" runat="server" Text="Urine Acetone(Post Lunch Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox6" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style34">
                                        <asp:Label ID="Label306" runat="server" Text="Random Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style35"></td>
                                    <td class="auto-style36">
                                        <asp:TextBox ID="textbox0" runat="server"></asp:TextBox>
                                    </td>
                                    <td colspan="2" class="auto-style37">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="textbox0" ErrorMessage="Manadatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label267" runat="server" Font-Bold="True" Font-Underline="True" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label268" runat="server" Text="Fasting Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label271" runat="server" Text="&lt;100"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label269" runat="server" Text="Post Lunch Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label272" runat="server" Text="70--105"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label270" runat="server" Text="Random Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label273" runat="server" Text="&lt;140"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
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
                        <td style="text-align:center;">
                            <asp:Label ID="Label200" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="None" Height="36px" Width="81px" OnClick="Button1_Click"  />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel8" runat="server" BackColor="White">
                <table style="    width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="    width: 100%;">
                                <tr>
                                    <td class="auto-style30">
                                        &nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style38"></td>
                                    <td class="auto-style39"></td>
                                    <td class="auto-style39"></td>
                                    <td class="auto-style39"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">
                                        <asp:Label ID="Label274" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style31">:
                                        <asp:Label ID="laqbel00" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label276" runat="server">DATE</asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="laqbel0" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label278" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="label3" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label280" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="label281" runat="server">FBS/PLBS/RBS</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label282" runat="server" Font-Bold="True" Text="FBS/PLBS/RBS"></asp:Label>
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
                            <table style="    width: 100%;">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label283" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="Label284" runat="server" Text="RESULT"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label285" runat="server" Text="Fasting Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label300" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label286" runat="server" Text="Urine Suger (Fasting Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label301" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label287" runat="server" Text="Urine Acetone (Fasting Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label302" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label288" runat="server" Text="Post Lunch Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label303" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label289" runat="server" Text="Urine Suger(Post Lunch Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label304" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label290" runat="server" Text="Urine Acetone(Post Lunch Sample)"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label305" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label311" runat="server" Text="Random Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="label312" runat="server"></asp:Label>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label291" runat="server" Font-Bold="True" Font-Underline="True" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                    <td class="auto-style29">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label292" runat="server" Text="Fasting Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label308" runat="server" Text="&lt;100"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label294" runat="server" Text="Post Lunch  Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label309" runat="server" Text="70--105"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label307" runat="server" Text="Post Lunch Blood Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label310" runat="server" Text="&lt;140"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
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
                            <asp:Label ID="Label298" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label313" runat="server" Font-Bold="True" Text="Technolgy :"></asp:Label>
                            <asp:Label ID="Label314" runat="server" Text="GOD-POD METHOD"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center;">
                            <asp:Label ID="Label299" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            </asp:Panel>
                            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClientClick="return printpage();" Text="Print" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            &nbsp;<asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
        </asp:View>
        <br />
        <br />
    </asp:MultiView>
</asp:Content>

