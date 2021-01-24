<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="LFT.aspx.cs" Inherits="pathology_reports_LFT" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" media="print">
        @page {
            size: auto; /* auto is the initial value */
            margin: 0mm; /* this affects the margin in the printer settings */
        }
    </style>
       <script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel9.ClientID%>");
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
        .auto-style7 {
            width: 103%;
            height: 9px;
        }
      
        .auto-style9 {
            width: 219px;
        }
        .auto-style11 {
            width: 115px;
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
        .auto-style18 {
            width: 187px;
        }
        .auto-style19 {
            width: 109%;
            height: 9px;
        }
      
        .auto-style21 {
            width: 28px;
            height: 23px;
        }
    
      
        .auto-style22 {
            width: 172px;
        }
        .auto-style24 {
            width: 106px;
            height: 23px;
        }
        .auto-style25 {
            width: 106px;
        }
        .auto-style26 {
            width: 412px;
        }
        .auto-style27 {
            width: 198px;
        }
        .auto-style28 {
            width: 198px;
            height: 23px;
        }
        .auto-style30 {
            width: 161px;
            height: 23px;
        }
        .auto-style31 {
            width: 161px;
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
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                                        <asp:Label ID="Label670" runat="server" Text="TEST ASKED"></asp:Label>
                                    </td>
                                    <td>:
                                        <asp:Label ID="Label9" runat="server" Text="Liver Function Test"></asp:Label>
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
                                    <td class="auto-style9">
                                        <asp:Label ID="Label12" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label13" runat="server" Text="METHOD"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label14" runat="server" Text="VALUE"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label15" runat="server" Text="UNITS"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                        <asp:Label ID="Label17" runat="server" Text="BILIRUBIN-TOTAL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label63" runat="server" Text="PHOTOMETRY"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td >
                                        <asp:Label ID="Label41" runat="server" Text="mg/dl"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="TextBox1" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="0.30-1.20"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label18" runat="server" Text="BILIRUBIN-DIRECT"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label64" runat="server" Text="PHOTOMETRY"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label42" runat="server" Text="mg/dl"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="TextBox2" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label52" runat="server" Text="0-0.20"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label19" runat="server" Text="BILIRUBIN-(INDIRECT)"></asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label65" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style21">
                                        <asp:Label ID="Label43" runat="server" Text="mg/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label54" runat="server" Text="0-0.9"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label20" runat="server" Text="ASAPRATE AMINO TRANS FERASE (SGOT)"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label66" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label44" runat="server" Text="U/L"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label55" runat="server" Text="0-31"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        &nbsp;</td>
                                    <td class="auto-style12">
                                        &nbsp;</td>
                                    <td class="auto-style11">
                                        &nbsp;</td>
                                    <td class="auto-style22">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label22" runat="server" Text="ALANINE TRANSAMINES (SGPT)"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label68" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label46" runat="server" Text="U/L"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="TextBox6" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label155" runat="server" Text="10-28"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label23" runat="server" Text="ALKALINE PHOSPATASE"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label69" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="qt" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label47" runat="server" Text="gm/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="qt" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label156" runat="server" Text="25 - 126"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label24" runat="server" Text="PROTEIN-TOTAL"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label70" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label48" runat="server" Text="gm/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="TextBox8" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label59" runat="server" Text="6.6 - 8.3"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label25" runat="server" Text="ALBUMIN-SERUM"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label71" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label49" runat="server" Text="gm/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="TextBox9" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label60" runat="server" Text="3.5 - 5.2"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label26" runat="server" Text="SERUM GLOBULIN"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label72" runat="server" Text="PHOTOMETRY"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label50" runat="server" Text="gm/dl"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="TextBox10" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label61" runat="server" Text="2.3 - 3.5"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label27" runat="server" Text="SERUM ALBULIN/GLOBULIN RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label73" runat="server" Text="CALCULATED"></asp:Label>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label51" runat="server" Text="Ratio"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="TextBox11" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label62" runat="server" Text="0.9 - 2.0"></asp:Label>
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
                            <asp:Label ID="Label29" runat="server" Text="Technology :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label30" runat="server" Text="BILT- Diazo method of pearlman &amp; lee,End point."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label31" runat="server" Text="BILD-Diazo method of pearlman &amp; lee, End point."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label32" runat="server" Text="BILI-Derived from serum total and Direct Bilirubin values"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label33" runat="server" Text="SGOT-IFCC* Without pyridoxal  phospate  Activation"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label34" runat="server" Text="SGPT-IFCC* Without pyridoxal  phospate  Activation"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label35" runat="server" Text="ALKP-Modified IFCC method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label36" runat="server" Text="GGT-Modified IFCC Method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label37" runat="server" Text="PROT-Biuret method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label38" runat="server" Text="SALB-Albumin Bcg1 method (Colorimetric Assay Endpoints)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label39" runat="server" Text="SEGB-DERIVED FROM SERUM  ALBUMIN AND PROTEIN VALUES"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label40" runat="server" Text="A/GR-Derived from serum Albumin and protein values"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="None" Height="36px" Width="81px" OnClick="Button1_Click" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel9" runat="server" BackColor="White">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style18">
                                        &nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">&nbsp;</td>
                                    <td class="auto-style26">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label74" runat="server" Text="NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style26">:
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label76" runat="server">DATE</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="ARMY" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label78" runat="server" Text="REF. BY"></asp:Label>
                                    </td>
                                    <td class="auto-style26">:
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label80" runat="server" Text="TASK ASKED"></asp:Label>
                                    </td>
                                    <td class="auto-style26">:
                                        <asp:Label ID="Label81" runat="server" Text="Liver Function Test"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label82" runat="server" Text="TEST NAME"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label83" runat="server" Text="METHOD"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label84" runat="server" Text="VALUE"></asp:Label>
                                        &nbsp;</td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label85" runat="server" Text="UNITS"></asp:Label>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label86" runat="server" Text="REFERANCE RANGE"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label87" runat="server" Text="BILIRUBIN-TOTAL" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label88" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                        &nbsp;
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="label669" runat="server" Font-Size="11pt"></asp:Label>
                                        &nbsp;
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label89" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label90" runat="server" Text="0.30-1.20" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label91" runat="server" Text="BILIRUBIN-DIRECT" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label92" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="label666" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label93" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label94" runat="server" Text="0-0.20" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style28">
                                        <asp:Label ID="Label95" runat="server" Text="BILIRUBIN-(INDIRECT)" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style30">
                                        <asp:Label ID="Label96" runat="server" Text="CALCULATED" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style24">
                                        <asp:Label ID="Label146" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label97" runat="server" Text="mg/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="Label98" runat="server" Text="0-0.9" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label99" runat="server" Text="ASAPRATE AMINO " Font-Size="11pt"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label672" runat="server" Text="TRANS FERASE (SGOT)" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label100" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="labell" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label101" runat="server" Text="U/L" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label102" runat="server" Text="0-31" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label107" runat="server" Text="ALANINE TRANSAMINES " Font-Size="11pt"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label671" runat="server" Text="(SGPT)" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label108" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label149" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label109" runat="server" Text="U/L" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label110" runat="server" Text="25 - 126" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label111" runat="server" Text="ALKALINE PHOSPATASE" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label112" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label150" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label113" runat="server" Text="gm/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label114" runat="server" Text="6.6 - 8.3" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label115" runat="server" Text="PROTEIN-TOTAL" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label116" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label151" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label117" runat="server" Text="gm/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label118" runat="server" Text="6.6 - 8.3" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label119" runat="server" Text="ALBUMIN-SERUM" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label120" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label152" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label121" runat="server" Text="gm/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label122" runat="server" Text="3.5 - 5.2" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label123" runat="server" Text="SERUM GLOBULIN" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label124" runat="server" Text="PHOTOMETRY" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label153" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label125" runat="server" Text="gm/dl" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label126" runat="server" Text="2.3 - 3.5" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <asp:Label ID="Label127" runat="server" Text="SERUM ALBULIN/GLOBULIN " Font-Size="11pt"></asp:Label>
                                        <br />
                                        <asp:Label ID="Labelq" runat="server" Text="RATIO"></asp:Label>
                                    </td>
                                    <td class="auto-style31">
                                        <asp:Label ID="Label128" runat="server" Text="CALCULATED" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label154" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label129" runat="server" Text="Ratio" Font-Size="11pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label130" runat="server" Text="0.9 - 2.0" Font-Size="11pt"></asp:Label>
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
                            <asp:Label ID="Label131" runat="server" Text="Please correlated with clinical conditions."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label132" runat="server" Text="Technology :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label133" runat="server" Text="BILT- Diazo method of pearlman &amp; lee,End point."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label134" runat="server" Text="BILD-Diazo method of pearlman &amp; lee, End point."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label135" runat="server" Text="BILI-Derived from serum total and Direct Bilirubin values"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label136" runat="server" Text="SGOT-IFCC* Without pyridoxal  phospate  Activation"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label137" runat="server" Text="SGPT-IFCC* Without pyridoxal  phospate  Activation"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label138" runat="server" Text="ALKP-Modified IFCC method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label139" runat="server" Text="GGT-Modified IFCC Method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label140" runat="server" Text="PROT-Biuret method"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label141" runat="server" Text="SALB-Albumin Bcg1 method (Colorimetric Assay Endpoints)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label142" runat="server" Text="SEGB-DERIVED FROM SERUM  ALBUMIN AND PROTEIN VALUES"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label143" runat="server" Text="A/GR-Derived from serum Albumin and protein values"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Print" Height="33px" Width="61px" OnClientClick="return printpage();" OnClick="Button2_Click"/>
            <ajaxToolkit:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" BehaviorID="Button2_DropShadowExtender" TargetControlID="Button2" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="36px" OnClick="Button3_Click" Text="Back" Width="81px" />
        </asp:View>
    </asp:MultiView>
    <asp:Panel ID="Panel8" runat="server">
    </asp:Panel>
</asp:Content>

