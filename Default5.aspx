<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            height: 42px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">

    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Height="685px" Width="742px">
        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td>
                                <asp:Label ID="Label39" runat="server" Text="Required Feilds*"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label55" runat="server" Text="Initial *"></asp:Label>
                                &nbsp;<br /> </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DropDownList14" runat="server">
                                    <asp:ListItem>Mr.</asp:ListItem>
                                    <asp:ListItem>Miss.</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Last Name*"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" Text="First Name*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label31" runat="server" Text="Middle Name*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"></td>
                            <td class="auto-style1">
                                <asp:Label ID="Label32" runat="server" Text="Father/Husbend Name*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label33" runat="server" Text="Mother Name*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label34" runat="server" Text="Date Of Birth*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label35" runat="server" Text="Age*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label36" runat="server" Text="Gender*"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label37" runat="server" Text="Blood Group*"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DropDownList7" runat="server">
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label38" runat="server" Text="Civil Status*"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DropDownList8" runat="server">
                                    <asp:ListItem>Married</asp:ListItem>
                                    <asp:ListItem>Single</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BorderStyle="None" Height="35px" Text="Next" Width="115px" />
                    <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button3_DropShadowExtender" TargetControlID="Button3" />
                </asp:Panel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <ContentTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:Label ID="Label41" runat="server" Text="No. Of House *"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label42" runat="server" Text="Build/Society *"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label43" runat="server" Text="Area*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label44" runat="server" Text="Locality*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label45" runat="server" Text="Town*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label49" runat="server" Text="Country*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource1" DataTextField="country_desc" DataValueField="country_code">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="State*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource2" DataTextField="state_desc" DataValueField="state_code">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master] WHERE ([country_id] = @country_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList12" Name="country_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label46" runat="server" Text="District*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList10" runat="server">
                                <asp:ListItem>gf</asp:ListItem>
                                <asp:ListItem>fgv</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label47" runat="server" Text="Tal *"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList11" runat="server">
                                <asp:ListItem>df</asp:ListItem>
                                <asp:ListItem>df</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2">
                            <asp:Label ID="Label48" runat="server" Text="City*"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label50" runat="server" Text="Tele. Phone "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label51" runat="server" Text="Mobile No *"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Email ID "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label26" runat="server" Text="Pin Code*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    <ajaxToolkit:DropShadowExtender ID="TabContainer1_DropShadowExtender" runat="server" BehaviorID="TabContainer1_DropShadowExtender" TargetControlID="TabContainer1" />

</asp:Content>

