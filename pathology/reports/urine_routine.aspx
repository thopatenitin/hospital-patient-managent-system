<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="urine_routine.aspx.cs" Inherits="pathology_reports_urine_routine" %>
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
             width: 173px;
        }
        .auto-style19 {
            width: 219px;
            height: 27px;
        }
        .auto-style20 {
            width: 106px;
            height: 27px;
        }
        .auto-style21 {
            width: 115px;
            height: 27px;
        }
        .auto-style22 {
            width: 205px;
            height: 27px;
        }
        .auto-style23 {
            height: 27px;
        }
        .auto-style24 {
            width: 187px;
            height: 23px;
        }
        .auto-style25 {
            width: 205px;
        }
        .auto-style26 {
            width: 205px;
            height: 23px;
        }
        .auto-style32 {
            width: 106px;
        }
        .auto-style34 {
            width: 244px;
            height: 82px;
        }
        .auto-style35 {
            width: 476px;
            height: 82px;
        }
        .auto-style36 {
            height: 82px;
        }
        .auto-style37 {
            width: 106px;
            height: 23px;
        }
        .auto-style40 {
            width: 476px;
        }
        .auto-style41 {
            width: 15px;
        }
        .auto-style42 {
            width: 244px;
        }
        .auto-style43 {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel7" runat="server" BackColor="White" Width="940px">
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="d" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style24">
                                        <asp:Label ID="Label5" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td class="auto-style17">:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style17"></td>
                                    <td class="auto-style17"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label231" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="Urine Routine"></asp:Label>
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
                                    <td colspan="5" style="align-content:center; text-align:center;">
                                        <asp:Label ID="Label14" runat="server" Text="EXAMINATION OF URINE" Font-Bold="True" Font-Underline="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style43">
                                        <asp:Label ID="Label17" runat="server" Text="PHYSICAL EXAMINATION" Font-Bold="True" Font-Underline="True"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label169" runat="server" Font-Bold="True" Font-Underline="True" Text="RESULT"></asp:Label>
                                    </td>
                                    <td class="auto-style26">
                                        </td>
                                    <td class="auto-style43">
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label18" runat="server" Text="Quantity"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label155" runat="server" Text="Colour"></asp:Label>
                                    </td>
                                    <td class="auto-style37">
                                        </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter Colour" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label20" runat="server" Text="Appearance"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="deposite" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="deposite" ErrorMessage="Enter Appearance" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label21" runat="server" Text="Deposite"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Deposite" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label22" runat="server" Text="Reaction"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Reaction" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label23" runat="server" Text="CHEMICAL EXAMINATION" Font-Bold="True" Font-Underline="True"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        &nbsp;</td>
                                    <td class="auto-style25">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">
                                        <asp:Label ID="Label24" runat="server" Text="Urine Albumin"></asp:Label>
                                    </td>
                                    <td class="auto-style20">
                                        </td>
                                    <td class="auto-style21">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style22">
                                        &nbsp;</td>
                                    <td class="auto-style23">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label25" runat="server" Text="Urine Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label26" runat="server" Text="Ketones"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label27" runat="server" Text="Blood Test"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label157" runat="server" Text="Bile Salts"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label158" runat="server" Text="Bile Pigments"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList6" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label156" runat="server" Font-Bold="True" Font-Underline="True" Text="MICROSCOPIC EXAMINATION OF CERTRIFUGALISED DEPOSIT"></asp:Label>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label159" runat="server" Text="Red Blood Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList7" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label160" runat="server" Text="Pus Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox16" ErrorMessage="Enter PUS Cells" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label161" runat="server" Text="Epithelial Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox18" ErrorMessage="Enter Epithlial" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label162" runat="server" Text="Casts"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList8" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label163" runat="server" Text="Crystals"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList9" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label164" runat="server" Text="Spermatozoa"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList10" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label165" runat="server" Text="Trichomonas Vaginalis"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList11" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label166" runat="server" Text="Yeast Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList12" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label167" runat="server" Text="Amorphous Deposits"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList13" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label168" runat="server" Text="Bacteria"></asp:Label>
                                    </td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList14" runat="server" Height="21px" Width="118px">
                                            <asp:ListItem>Absent</asp:ListItem>
                                            <asp:ListItem>Present</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style25">&nbsp;</td>
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
            <asp:Panel ID="Panel8" runat="server" BackColor="White">
                <table style=" width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style42">
                                        &nbsp;</td>
                                    <td class="auto-style40" >&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">&nbsp;</td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style34"></td>
                                    <td class="auto-style35"></td>
                                    <td class="auto-style36"></td>
                                    <td class="auto-style36"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label170" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style40">:
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label172" runat="server">DATE</asp:Label>
                                        &nbsp;&nbsp;
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label174" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td class="auto-style40">:
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label230" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td class="auto-style40">:
                                        <asp:Label ID="Label177" runat="server" Text="Urine Routine"></asp:Label>
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
                    </tr>  <tr>
                                    <td colspan="5" style="align-content:center; text-align:center;">
                                        <asp:Label ID="Label229" runat="server" Text="EXAMINATION OF URINE" Font-Bold="True" Font-Underline="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr> <td>&nbsp;</td>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <table style=" width: 100%;">
                              
                                <tr>
                                    <td colspan="2" class="auto-style17">
                                        <asp:Label ID="Label179" runat="server" Font-Bold="True" Font-Underline="True" Text="PHYSICAL EXAMINATION"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label180" runat="server" Font-Bold="True" Font-Underline="True" Text="RESULT"></asp:Label>
                                    </td>
                                    <td class="auto-style16"></td>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style17"></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style43"></td>
                                    <td class="auto-style15"></td>
                                    <td class="auto-style16"></td>
                                    <td class="auto-style16"></td>
                                    <td class="auto-style43"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label181" runat="server" Text="Quantity"></asp:Label>
                                    </td>
                                    <td class="auto-style41" >&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label204" runat="server"></asp:Label>
                                        <asp:Label ID="Label205" runat="server" Text="ml"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label182" runat="server" Text="Colour"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label206" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style17">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label183" runat="server" Text="Appearance"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label207" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label184" runat="server" Text="Deposite"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label208" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label185" runat="server" Text="Reaction"></asp:Label>
                                    </td>
                                    <td class="auto-style41">`</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label209" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label186" runat="server" Font-Bold="True" Font-Underline="True" Text="CHEMICAL EXAMINATION"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label187" runat="server" Text="Urine Albumin"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label210" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label188" runat="server" Text="Urine Suger"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label211" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label189" runat="server" Text="Ketones"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label212" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label190" runat="server" Text="Blood Test"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label213" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label191" runat="server" Text="Bile Salts"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label214" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label192" runat="server" Text="Bile Pigments"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label228" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <asp:Label ID="Label193" runat="server" Font-Bold="True" Font-Underline="True" Text="MICROSCOPIC EXAMINATION OF CERTRIFUGALISED DEPOSIT"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label194" runat="server" Text="Red Blood Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label216" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label195" runat="server" Text="Pus Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label00" runat="server"></asp:Label>
                                        <asp:Label ID="Label226" runat="server">/hpf</asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label196" runat="server" Text="Epithelial Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label218" runat="server"></asp:Label>
                                        <asp:Label ID="Label227" runat="server">/hpf</asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label197" runat="server" Text="Casts"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label219" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label198" runat="server" Text="Crystals"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label220" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label199" runat="server" Text="Spermatozoa"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label221" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label200" runat="server" Text="Trichomonas Vaginalis"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label222" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label201" runat="server" Text="Yeast Cells"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label223" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label202" runat="server" Text="Amorphous Deposits"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label224" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label203" runat="server" Text="Bacteria"></asp:Label>
                                    </td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label225" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style8">&nbsp;</td>
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
               
            </asp:Panel>
                            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" OnClientClick="return printpage();" Height="36px" Text="Print" Width="81px" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button2" /> 
            &nbsp;<asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
        </asp:View>
    </asp:MultiView>

</asp:Content>

