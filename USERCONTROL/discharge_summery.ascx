<%@ Control Language="C#" AutoEventWireup="true" CodeFile="discharge_summery.ascx.cs" Inherits="USERCONTROL_discharge_summery" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
 <script>
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel3.ClientID%>");
            var mainwindow = window.open('', '', 'height=500,width=660');
            mainwindow.document.write('<html  moznomarginboxes mozdisallowselectionprint><head></head><body>');
            mainwindow.document.write(getpanal.innerHTML);
            mainwindow.document.write('</body></html>');
            mainwindow.document.close();
            setTimeout(function () { mainwindow.print(); }, 500);
            return false;
        }
    </script>
<style type="text/css">
    @media print {
tr.vendorListHeading {
    background-color: #1a4567 !important;
    
}}

@media print {
    .vendorListHeading th {
    color: white !important;
}}
    .auto-style1 {
       
    }

    .auto-style2 {
        width: 99%;
    }
    .auto-style34 {
        height: 21px;
    }
    
   
    
    
   
    
    .auto-style37 {
        width: 387px;
    }
    .auto-style38 {
        width: 86%;
    }
    .auto-style47 {
        height: 21px;
        width: 19%;
    }
    .auto-style48 {
        width: 19%;
    }
    .auto-style49 {
        width: 14%;
    }
    .auto-style50 {
        height: 21px;
        width: 14%;
    }
    .auto-style52 {
        height: 21px;
        width: 34%;
    }
    .auto-style55 {
        width: 264px;
    }
    .auto-style56 {
     
    }
    .auto-style57 {
        width: 1126px;
    }
    .auto-style58 {
        width: 100%;
    }
    .auto-style59 {
        width: 1126px;
        height: 29px;
    }
    .auto-style60 {
        height: 29px;
    }
    .auto-style61 {
        width: 17%;
    }
    .auto-style62 {
        height: 21px;
        width: 17%;
    }
    .auto-style63 {
        width: 5%;
    }
    .auto-style64 {
        height: 21px;
        width: 5%;
    }
    .auto-style66 {
        width: 13%;
    }
    .auto-style67 {
        height: 21px;
        width: 13%;
    }
    .auto-style68 {
        width: 34%;
    }
    .auto-style69 {
        width: 400px;
    }
</style>

<asp:Panel ID="Panel1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel2" runat="server" BackColor="White" Width="1351px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label1" runat="server" Text="Maritual History"></asp:Label>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="61px" TextMode="MultiLine" Width="602px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label2" runat="server" Text="Past Medical History"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="61px" TextMode="MultiLine" Width="602px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label3" runat="server" Text="Past Surgical History"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="61px" TextMode="MultiLine" Width="602px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label4" runat="server" Text="Personal History"></asp:Label>
                        </td>
                        <td>
                            <table class="auto-style2">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Bowel"></asp:Label>
                                    </td>
                                    <td>&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="Bladder"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Appetite"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="Sleep Pattern"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label5" runat="server" Text="Drug History"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Addicition "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label6" runat="server" Text="Allergic History"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="61px" TextMode="MultiLine" Width="602px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">
                            <asp:Label ID="Label7" runat="server" Text="Menstrul History"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Regular</asp:ListItem>
                                <asp:ListItem>Irreguler</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style69">&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="29px" OnClick="Button1_Click" Text="Save" Width="82px" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BorderStyle="None" Height="29px" OnClick="Button6_Click" Text="Close" Width="82px" />
                            <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button3" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel3" runat="server" BackColor="White">
                <table class="auto-style38" >
                    <tr>
                        <td>
                            <table style="   width: 1108px;">
                                <tr>
                                    <td style="padding:0px;" class="auto-style55">
                                        <img alt="" style="   width: 254px;
        height: 117px;" src="../NewFolder1/logo(1).png" class="auto-style56"  />
                                    </td>
                                    <td style="vertical-align:top; text-align:center;">
                                        <h1><u>PALM BEACH HOSPITAL &amp; DIAGNOSTIC CENTER</u></h1>
                                        <h3>A Network Hospital</h3>
                                        PalmBeach Road,sector:28,Vashi, Tel:022-27668119<br /> Mob:.9867924061| Email:hospitalpalmbeach28@gmail.com </td>
                                </tr>
                            </table>
                            <hr />
                            <table style="   width: 1108px;">
                                <tr>
                                    <td class="auto-style61">Memo No:.</td>
                                    <td class="auto-style63">&nbsp;</td>
                                    <td class="auto-style68">
                                        <asp:Label ID="Label76" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">OPD No:.</td>
                                    <td class="auto-style66">&nbsp;</td>
                                    <td class="auto-style48">
                                        <asp:Label ID="Label81" runat="server"></asp:Label>
                                    </td>
                                    <td style="width:25%">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style62">Name:.</td>
                                    <td class="auto-style64">&nbsp;</td>
                                    <td class="auto-style52">
                                        <asp:Label ID="Label77" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style50">Date:.</td>
                                    <td class="auto-style67">&nbsp;</td>
                                    <td class="auto-style47">
                                        <asp:Label ID="Label82" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style61">Consultant:.</td>
                                    <td class="auto-style63">&nbsp;</td>
                                    <td class="auto-style68">
                                        <asp:Label ID="Label78" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">Age:.</td>
                                    <td class="auto-style66">&nbsp;</td>
                                    <td class="auto-style48">
                                        <asp:Label ID="Label83" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style61">Speciality:.</td>
                                    <td class="auto-style63">&nbsp;</td>
                                    <td class="auto-style68">
                                        <asp:Label ID="Label79" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">Gender:.</td>
                                    <td class="auto-style66">&nbsp;</td>
                                    <td class="auto-style48">
                                        <asp:Label ID="Label84" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style61">Refral Doctor:</td>
                                    <td class="auto-style63">&nbsp;</td>
                                    <td class="auto-style68">
                                        <asp:Label ID="Label80" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">Class:.</td>
                                    <td class="auto-style66">&nbsp;</td>
                                    <td class="auto-style48">
                                        <asp:Label ID="Label85" runat="server">OPD</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style=" width: 100%;">
                                <tr>
                                    <td colspan="2">
                                        <table class="auto-style58">
                                            <tr>
                                                <td style="background-color: #CCCCCC; width:621px;">
                                                    <asp:Label ID="Label99" runat="server" Font-Bold="True" Text="Provisional Diagnosis"></asp:Label>
                                                </td>
                                                <td style="background-color: #CCCCCC; width:621px;">
                                                    <asp:Label ID="Label101" runat="server" Font-Bold="True" Text="Final Diagnosis:."></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
                                                </td>
                                                <td>
                                                    <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="background-color: #CCCCCC">
                                        <asp:Label ID="Label87" runat="server" Font-Bold="True" Text="Chief Complaint:."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:PlaceHolder ID="PlaceHolder0" runat="server"></asp:PlaceHolder>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="background-color: #CCCCCC">
                                        <asp:Label ID="Label88" runat="server" Font-Bold="True" Text="Past History:."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style57">
                                        <asp:Label ID="Label96" runat="server"></asp:Label>
                                        <asp:Label ID="Label97" runat="server"></asp:Label>
                                        <asp:Label ID="Label98" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style57" style="background-color: #CCCCCC">
                                        <asp:Label ID="Label102" runat="server" Font-Bold="True" Text="Investigation:."></asp:Label>
                                    </td>
                                    <td style="background-color: #CCCCCC">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style59">
                                        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                    </td>
                                    <td class="auto-style60"></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="background-color: #CCCCCC">
                                        <asp:Label ID="Label89" runat="server" Font-Bold="True" Text="Medication"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                       
                                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                       
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #CCCCCC">
                            <asp:Label ID="Label90" runat="server" Font-Bold="True" Text="Follow Up:."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label91" runat="server" Text="In Emergency, Please Contact On :(022-27668119)"></asp:Label>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label92" runat="server" Font-Bold="True" Text="Consultant's  Signature"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" BorderStyle="None" Height="29px"  OnClientClick="return printpage();" Text="Print" Width="82px" />
                            <ajaxToolkit:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button2" />
                            
        </asp:View>
    </asp:MultiView>
</asp:Panel>

