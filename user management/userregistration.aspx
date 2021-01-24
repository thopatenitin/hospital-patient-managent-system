<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="user_management_userregistration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
        height: 44px;
    }
        .auto-style9 {
            width: 412px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 264px;
        }
        .auto-style12 {
            height: 23px;
            width: 264px;
        }
        .auto-style15 {
            width: 410px;
        }
        .auto-style16 {
            width: 406px;
        }
        .auto-style17 {
            width: 883px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 727px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:Panel ID="Panel7" runat="server" BackColor="White" BorderStyle="None">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:Label ID="Label78" runat="server" Font-Bold="True" Font-Size="16pt" Text="Registration"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox56" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label50" runat="server" Text="Department"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource5" DataTextField="department_desc" DataValueField="department_code">
                                    <asp:ListItem>xcs</asp:ListItem>
                                    <asp:ListItem>dfd</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=DESKTOP-D41R48C\SQLEXPRESS;Initial Catalog=palm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [department_code], [department_desc] FROM [palm_department]"></asp:SqlDataSource>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList16" ErrorMessage="Select Department"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label51" runat="server" Text="Role"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged">
                                    <asp:ListItem Value="doctor">Doctor</asp:ListItem>
                                    <asp:ListItem Value="nurse">Nurse</asp:ListItem>
                                    <asp:ListItem Value="admin">Administrator</asp:ListItem>
                                    <asp:ListItem Value="pathologist">Pathologist</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList17" ErrorMessage="Select Role"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label80" runat="server" Text="Consulting Fees" Visible="False"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="TextBox65" runat="server" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label52" runat="server" Text="Mobile No"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox57" ErrorMessage="Mobile No"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox59" ErrorMessage="Fill Date Of Birth"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownList18" ErrorMessage="Select Gender"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownList19" ErrorMessage="Fill Maritial Status"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label62" runat="server" Text="Tele. Phone "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="background-color: #99CCFF">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <fieldset class="auto-style19" style="border:2px solid black;">
                                <legend>Current Address</legend>
                                <table class="auto-style8">
                                    <tr>
                                        <td>&nbsp;&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label41" runat="server" Text="No. Of House *"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox22" ErrorMessage="Fill House No"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label42" runat="server" Text="Build/Society *"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox33" ErrorMessage="Fill Build Or Society"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label44" runat="server" Text="Locality*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox35" ErrorMessage="Fill Locality"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label79" runat="server" Text="Area*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox62" runat="server" OnTextChanged="TextBox47_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox62" ErrorMessage="Fill Area"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label45" runat="server" Text="Town*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox36" ErrorMessage="Select Town"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label60" runat="server" Text="Country*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="country_desc" DataValueField="country_code">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label57" runat="server" Text="State*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="state_desc" DataValueField="state_code">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master] WHERE ([country_id] = @country_id)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList9" Name="country_id" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="DropDownList10" ErrorMessage="Select State"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label58" runat="server" Text="District*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="TextBox63" ErrorMessage="Fill District"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label61" runat="server" Text="City*"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="TextBox40" ErrorMessage="Fill City"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label59" runat="server" Text="Tal *"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="TextBox55" ErrorMessage="Fill Tahsil"></asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">&nbsp;</td>
                                        <td class="auto-style20">
                                            <asp:Label ID="Label26" runat="server" Text="Pin Code*"></asp:Label>
                                        </td>
                                        <td class="auto-style21">
                                            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="TextBox32" ErrorMessage="Fill PinCode"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <fieldset style="border:2px solid black;">
                                <legend>Permant Address</legend>
                                <br />
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="Permanant Address is Same As Current Address" />
                                <asp:Panel ID="Panel8" runat="server" CssClass="auto-style18" Height="656px">
                                    <br />
                                    <table id="permanant" class="auto-style8">
                                        <tr>
                                            <td>&nbsp;&nbsp;</td>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label64" runat="server" Text="No. Of House *"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">
                                                <br />
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label65" runat="server" Text="Build/Society *"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label66" runat="server" Text="Area*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox47" runat="server" OnTextChanged="TextBox47_TextChanged"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label67" runat="server" Text="Locality*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label68" runat="server" Text="Town*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label69" runat="server" Text="Country*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:DropDownList ID="DropDownList12" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="country_desc" DataValueField="country_code">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label70" runat="server" Text="State*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="state_desc" DataValueField="state_code">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master] WHERE ([country_id] = @country_id)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="DropDownList9" Name="country_id" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">
                                                <br />
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label71" runat="server" Text="District*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label72" runat="server" Text="City*"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label73" runat="server" Text="Tal *"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style20">&nbsp;</td>
                                            <td class="auto-style20">
                                                <asp:Label ID="Label77" runat="server" Text="Pin Code*"></asp:Label>
                                            </td>
                                            <td class="auto-style21">
                                                <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" BackColor="White" BorderWidth="1px" Height="25px" Text="Close" Width="68px" />
                    <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button3" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="White" BorderWidth="1px" Height="25px" Text="Save" Width="58px" OnClick="Button4_Click" />
                    <ajaxToolkit:DropShadowExtender ID="Button4_DropShadowExtender" runat="server" BehaviorID="Button2_DropShadowExtender" TargetControlID="Button4" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

