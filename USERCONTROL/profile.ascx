<%@ Control Language="C#" AutoEventWireup="true" CodeFile="profile.ascx.cs" Inherits="USERCONTROL_profile" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<style type="text/css">

        .auto-style17 {
            width: 883px;
        }
        .auto-style11 {
            width: 264px;
        }
        .auto-style12 {
            height: 23px;
            width: 264px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style18 {
        width: 100%;
    }
    .auto-style19 {
        height: 28px;
    }
    .auto-style20 {
        width: 264px;
        height: 26px;
    }
    .auto-style21 {
        height: 26px;
    }
</style>

<asp:Panel ID="Panel1" runat="server">
    <table class="auto-style17">
        <tr>
            <td colspan="2" style="background-color: #99CCFF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label48" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList15" runat="server">
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Miss.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Dr.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label49" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox56" runat="server" Height="21px" Width="236px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label50" runat="server" Text="Department"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource5" DataTextField="department_desc" DataValueField="department_code" Enabled="False">
                    <asp:ListItem>xcs</asp:ListItem>
                    <asp:ListItem>dfd</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=DESKTOP-D41R48C\SQLEXPRESS;Initial Catalog=palm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [department_code], [department_desc] FROM [palm_department]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label51" runat="server" Text="Role"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" Enabled="False">
                    <asp:ListItem Value="doctor">Doctor</asp:ListItem>
                    <asp:ListItem Value="nurse">Nurse</asp:ListItem>
                    <asp:ListItem Value="admin">Administrator</asp:ListItem>
                    <asp:ListItem Value="pathologist">Pathologist</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label52" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label53" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label54" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox59_CalendarExtender" runat="server" BehaviorID="TextBox59_CalendarExtender" TargetControlID="TextBox59" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label55" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList18" runat="server">
                    <asp:ListItem Value="male">Male</asp:ListItem>
                    <asp:ListItem Value="female">Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label56" runat="server" Text="Marritial Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList19" runat="server">
                    <asp:ListItem Value="married">Married</asp:ListItem>
                    <asp:ListItem Value="single">Single</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label62" runat="server" Text="Tele. Phone "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="None" Height="28px" OnClick="Button3_Click" Text="Update" Width="53px" />
                <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button2_DropShadowExtender" TargetControlID="Button3" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #99CCFF">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" Text="Change Password" />
                <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button1" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #99CCFF">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="auto-style18">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table class="auto-style18">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label63" runat="server" Text="Current Password"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <asp:Label ID="Label64" runat="server" Text="New Password"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label65" runat="server" Text="New Password"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Height="28px" OnClick="Button2_Click" Text="Done" Width="53px" />
                                <ajaxToolkit:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" BehaviorID="Button2_DropShadowExtender" TargetControlID="Button2" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="Panel2_CollapsiblePanelExtender" runat="server" BehaviorID="Panel2_CollapsiblePanelExtender" CollapseControlID="Button1" Collapsed="True" TargetControlID="Panel2" />
            </td>
        </tr>
    </table>
</asp:Panel>

