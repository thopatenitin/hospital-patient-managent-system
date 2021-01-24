<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="Hb1ac.aspx.cs" Inherits="pathology_reports_Hb1ac" %>
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
        .auto-style23 {
            width: 140px;
        }
        .auto-style8 {
            width: 173px;
        }
        .auto-style24 {
            width: 219px;
            height: 31px;
        }
        .auto-style25 {
            width: 190px;
            height: 31px;
        }
        .auto-style26 {
            width: 140px;
            height: 31px;
        }
        .auto-style27 {
            width: 173px;
            height: 31px;
        }
        .auto-style28 {
            height: 31px;
        }
        .auto-style30 {
            width: 289px;
            height: 31px;
        }
        .auto-style32 {
            width: 289px;
        }
        .auto-style33 {
            width: 187px;
            height: 23px;
        }
        .auto-style34 {
            height: 23px;
        }
        .auto-style35 {
            width: 127px;
        }
        .auto-style36 {
            width: 289px;
            height: 23px;
        }
        .auto-style38 {
            width: 99px;
            height: 23px;
        }
        .auto-style40 {
            width: 153px;
            height: 23px;
        }
        .auto-style41 {
            width: 153px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel7" runat="server" BackColor="White">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="width:100%;">
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
                                    <td class="auto-style33">
                                        <asp:Label ID="Label5" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td class="auto-style34">:
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style34"></td>
                                    <td class="auto-style34"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label243" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="HbA1C"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">
                                        <asp:Label ID="Label199" runat="server" Text="HAEMOGLOBIN A1C" Font-Bold="True"></asp:Label>
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
                                    <td class="auto-style23">
                                        <asp:Label ID="Label14" runat="server" Text="RESULT"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label16" runat="server" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label17" runat="server" Text="HbA1C"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        &nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="101px"></asp:TextBox>
                                       
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter HbA1C" ForeColor="Red"></asp:RequiredFieldValidator>
                                       
                                    </td>
                                    <td class="auto-style8">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style24">
                                        &nbsp;</td>
                                    <td class="auto-style25">
                                        &nbsp;</td>
                                    <td class="auto-style26">
                                        &nbsp;</td>
                                    <td class="auto-style27">
                                        &nbsp;</td>
                                    <td class="auto-style28">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
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
            <asp:Panel ID="Panel8" runat="server" BackColor="White" Height="532px" Width="964px">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="  width: 100%;">
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label249" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label250" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td>
                                        <asp:Label ID="Label251" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label252" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label253" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label254" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label255" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label276" runat="server" Text="HbA1C"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center;">&nbsp;<asp:Label ID="Label278" runat="server" Font-Bold="True" Text="HAEMOGLOBIN A1C"></asp:Label>
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
                                    <td class="auto-style32">
                                        <asp:Label ID="Label258" runat="server" Text="TEST NAME" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label294" runat="server" Text="METHOD" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style41" colspan="1">
                                        <asp:Label ID="Label259" runat="server" Font-Bold="True" Text="RESULT"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        &nbsp;</td><td>
                                        <asp:Label ID="Label292" runat="server" Font-Bold="True" Text="UNIT"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style36"></td>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style40"></td>
                                    <td class="auto-style38"></td>
                                    <td colspan="2" class="auto-style34"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label277" runat="server" Text="HAEMOGLOBIN A1C"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label295" runat="server" Font-Bold="True" Text="H.P.L.C."></asp:Label>
                                    </td>
                                    <td colspan="1" class="auto-style40">
                                        &nbsp;<asp:Label ID="label21" runat="server" Font-Bold="True"></asp:Label>
                                       
                                        %</td><td colspan="2" class="auto-style34">
                                    </td><td class="auto-style34">
                                        <asp:Label ID="Label293" runat="server" Font-Bold="True" Text="%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">
                                        <asp:Label ID="Label284" runat="server" Font-Bold="True" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                    <td class="auto-style30"></td>
                                    <td class="auto-style28" colspan="2">
                                        &nbsp;&nbsp;</td>
                                    <td class="auto-style28" colspan="2">
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <asp:Label ID="Label285" runat="server" Text="Bellow 6.0%-Normal Value"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label286" runat="server" Text="6.0% - 7.0%- Good Control "></asp:Label>
                                        <br />
                                        <asp:Label ID="Label287" runat="server" Text="7.0% - 8.0% -Fair Control"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label288" runat="server" Text="8.0% -10% - Unsatisfactory Control"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label289" runat="server" Text="Above 10% -Poor Control"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label290" runat="server" Font-Bold="True" Text="Technology:"></asp:Label>
                                        <asp:Label ID="Label291" runat="server" Text="Fully Automated H.P.L.C. using TOSOH G8"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">&nbsp;</td>
                                </tr>
                            </table>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <br />
                            <asp:Label ID="Label269" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center;">
                            <asp:Label ID="Label270" runat="server" Text="END REPORT"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClientClick="return printpage();" Text="Print" Width="81px" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
            <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender0" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
        </asp:View>
        <br />
    </asp:MultiView>
</asp:Content>

