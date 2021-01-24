<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="cbc.aspx.cs" Inherits="pathology_reports_cbc" %>
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
        .auto-style21 {
            width: 207px;
            height: 23px;
        }
        .auto-style25 {
            width: 73px;
            height: 23px;
        }
        .auto-style26 {
            width: 73px;
        }
        .auto-style28 {
            width: 52px;
            height: 23px;
        }
        .auto-style29 {
            width: 219px;
            height: 26px;
        }
        .auto-style30 {
            width: 190px;
            height: 26px;
        }
        .auto-style31 {
            width: 115px;
            height: 26px;
        }
        .auto-style32 {
            width: 173px;
            height: 26px;
        }
        .auto-style33 {
            height: 26px;
        }
        .auto-style35 {
            width: 52px;
        }
        .auto-style37 {
            width: 350px;
            height: 23px;
        }
        .auto-style39 {
            width: 207px;
        }
        .auto-style40 {
            width: 350px;
        }
        .auto-style41 {
            width: 187px;
            height: 23px;
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
                                        <asp:Label ID="Label6" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="C B C"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center">
                                        <asp:Label ID="Label166" runat="server" Text="COMPLETE BLOOD COUNT" Font-Bold="True"></asp:Label>
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
                                    <td >
                                        <asp:Label ID="Label12" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style12"></td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label14" runat="server" Text="VALUE"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        &nbsp;</td>
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
                                        <asp:Label ID="Label17" runat="server" Text="Erythrocyte count"></asp:Label>
                                    </td>
                                    <td style="  width: 190px;">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Erythrocyte Count" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="4.5 - 6 c.u. mm."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label18" runat="server" Text="HEAMOGLOBIN"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Heamoglobin" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label52" runat="server" Text="14 -17 Gms"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label19" runat="server" Text="P.C.V."></asp:Label>
                                    </td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter P.C.V." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label54" runat="server" Text="37 - 47 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label20" runat="server" Text="M.C.V."></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter M.C.V." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label55" runat="server" Text="78 - 92 femtolitres"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label22" runat="server" Text="M.C.H."></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter M.C.H." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label230" runat="server" Text="28 - 38 pico-grams"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label23" runat="server" Text="M.C.H.C."></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox19" ErrorMessage="Enter M.C.H.C." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label231" runat="server" Text="32 - 37 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label24" runat="server" Text="Leucocyte Count"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Leucocyte Count" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label232" runat="server" Text="5000 - 10000 cu mm"></asp:Label>
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
                                        <asp:Label ID="Label25" runat="server" Text="W.B.S. Differential Count"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        &nbsp;</td>
                                    <td class="auto-style8">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
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
                                        <asp:Label ID="Label26" runat="server" Text="Neutrophils"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Neutrophils" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label167" runat="server" Text="60 - 75 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label27" runat="server" Text="Eosinophils"></asp:Label>
                                    </td>
                                    <td class="auto-style30"></td>
                                    <td class="auto-style31">
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style32">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter Eosinophils" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label168" runat="server" Text="0 - 6 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label155" runat="server" Text="Basophils"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter Basophils" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label169" runat="server" Text="0 - 1 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label156" runat="server" Text="Lymphocytes"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter Lymphocytes" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label162" runat="server" Text="20 - 40 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label157" runat="server" Text="Monocytes"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox14" ErrorMessage="Enter Monocytes" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label163" runat="server" Text="2 - 5 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label158" runat="server" Text="Platelat Count"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox15_FilteredTextBoxExtender" runat="server" FilterType="Numbers" TargetControlID="TextBox15" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox15" ErrorMessage="Enter Platelat Count" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label164" runat="server" Text="1.5 - 4.5 cu. mm."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label159" runat="server" Text="Platelet on smear"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox16" ErrorMessage="Enter Platelet on smear" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                        <asp:Label ID="Label160" runat="server" Font-Bold="False" Text="RBC MORPHOLOGY"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox20" ErrorMessage="Enter Rbc Morphology" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label161" runat="server" Text="WBC MORPHOLOGY"></asp:Label>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox18" ErrorMessage="Enter WBC Morphology" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                    <td rowspan="3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label170" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="label" runat="server"></asp:Label>
                                    </td>
                                 <td style="text-align:end" colspan="2" rowspan="3">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    <td style="text-align:end">&nbsp;</td>
                                    <td style="text-align:end">
                                        <asp:Label ID="Label172" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label174" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label176" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label177" runat="server" Text="C B C"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="7" style="text-align:center">
                                        <asp:Label ID="Label178" runat="server" Font-Bold="True" Text="COMPLETE BLOOD COUNT"></asp:Label>
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
                                    <td class="auto-style39">
                                        <asp:Label ID="Label179" runat="server" Text="TEST NAME" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label180" runat="server" Text="VALUE" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label181" runat="server" Text="REFERANCE RANGE" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr noshade="noshade" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label182" runat="server" Text="Erythrocyte count"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label213" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label183" runat="server" Text="4.5 - 6 c.u. mm."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label184" runat="server" Text="HEAMOGLOBIN"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label214" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label185" runat="server" Text="14 -17 Gms"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        <asp:Label ID="Label186" runat="server" Text="P.C.V."></asp:Label>
                                    </td>
                                    <td class="auto-style28">&nbsp;</td>
                                    <td class="auto-style37">
                                        <asp:Label ID="Label215" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label187" runat="server" Text="37 - 47 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label190" runat="server" Text="M.C.V."></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label217" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26"></td>
                                    <td>
                                        <asp:Label ID="Label236" runat="server" Text="78 - 92 femtolitres"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label192" runat="server" Text="M.C.H."></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label218" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label235" runat="server" Text="28 - 38 pico-grams"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label194" runat="server" Text="M.C.H.C."></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label219" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label234" runat="server" Text="32 - 37 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label196" runat="server" Text="Leucocyte Count"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label220" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label233" runat="server" Text="5000 - 10000 cu mm"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">&nbsp;</td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label197" runat="server" Text="W.B.S. Differential Count"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">&nbsp;</td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label198" runat="server" Text="Neutrophils"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label221" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label199" runat="server" Text="60 - 75 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label200" runat="server" Text="Eosinophils"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label222" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label201" runat="server" Text="0 - 6 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label202" runat="server" Text="Basophils"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label223" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label203" runat="server" Text="0 - 1 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label204" runat="server" Text="Lymphocytes"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label224" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label205" runat="server" Text="20 - 40 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label206" runat="server" Text="Monocytes"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label225" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label207" runat="server" Text="2 - 5 percent"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label208" runat="server" Text="Platelat Count"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label227" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label209" runat="server" Text="1.5 - 4.5 cu. mm."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label210" runat="server" Text="Platelet on smear"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label226" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">&nbsp;</td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label211" runat="server" Font-Bold="False" Text="RBC MORPHOLOGY"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label228" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <asp:Label ID="Label212" runat="server" Text="WBC MORPHOLOGY"></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label229" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="text-align:end;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" OnClientClick="return printpage();" Height="36px"  Text="Print" Width="81px" OnClick="Button2_Click" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
        </asp:View>
    </asp:MultiView>
</asp:Content>

