<%@ Control Language="C#" AutoEventWireup="true" CodeFile="history_ipd.ascx.cs" Inherits="USERCONTROL_history_ipd" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<style type="text/css">
    .auto-style69 {
        width: 400px;
    }

    .auto-style2 {
        width: 99%;
    }
    </style>
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
                            <asp:TextBox ID="q" runat="server" Height="61px" TextMode="MultiLine" Width="602px"></asp:TextBox>
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
                                    <td>&nbsp;<asp:TextBox ID="q0" runat="server"></asp:TextBox>
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
                            <asp:Button ID="Button3" runat="server" BorderStyle="None" Height="29px"  Text="Close" Width="82px" />
                            <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button3" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel3" runat="server" BackColor="White">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
                            
        </asp:View>
    </asp:MultiView>

