<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/MasterPage2.master" AutoEventWireup="true" CodeFile="diagnosis.aspx.cs" Inherits="doctor_module_diagnosis" %>
<%@ MasterType VirtualPath="~/doctor_module/MasterPage2.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 97%;
            height: 43px;
            padding:0px;
            
        }
        .auto-style6 {
            margin-bottom: 35px;
        }
        .auto-style9 {
            height: 507px;
        }
        .auto-style11 {
            height: 331px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 99%;
            height: 43px;
            padding: 0px;
        }
        .auto-style14 {
            width: 1069px;
        }
        .auto-style15 {
            width: 1009px;
        }
        .auto-style16 {
            width: 460px;
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<table id="optable" class="auto-style14">
    <tr>
        <td rowspan="3" style="vertical-align:top; background-color:#fff;">
            <ul>
            <li id="licss" style="list-style:none; border-top:4px solid #069; ">Diagnosis</li></ul>
                        <hr />
                <asp:Panel ID="Panel2" runat="server" Height="454px" Width="1057px">
                            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style6" Height="380px">
                                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Height="446px" Width="1039px" BackColor="#CCCCCC">
                                    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                                        <HeaderTemplate>
                                            Provisional Diagnosis&nbsp;
                                        </HeaderTemplate>
                                        <ContentTemplate>
                                            <table class="auto-style13" style="background-color: #CCCCCC">
                                                <tr>
                                                    <td class="auto-style12">
                                                        <asp:Label ID="Label72" runat="server" Text="Diagnosis"></asp:Label>
                                                    </td>
                                                    <td class="auto-style12">
                                                        <asp:Label ID="Label73" runat="server" Text="Remark"></asp:Label>
                                                    </td>
                                                    <td class="auto-style12"></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="147px"></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox5" runat="server" Height="35px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="Button7" runat="server" BackColor="White" BorderStyle="None" Height="31px" Text="Add" Width="57px" OnClick="Button7_Click" />
                                                        <ajaxToolkit:DropShadowExtender ID="Button7_DropShadowExtender" runat="server" BehaviorID="Button7_DropShadowExtender" TargetControlID="Button7" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <hr />
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </ContentTemplate>
                                    </ajaxToolkit:TabPanel>
                                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                                        <HeaderTemplate>
                                            Final Diagnosis&nbsp;
                                        </HeaderTemplate>
                                        <ContentTemplate>
                                            <table  style="background-color: #CCCCCC" class="auto-style15">
                                                <tr>
                                                    <td class="auto-style16">
                                                        <asp:Label ID="Label74" runat="server" Text="Diagnosis"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label75" runat="server" Text="Remark"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style16">
                                                        <asp:TextBox ID="TextBox6" runat="server" Height="36px" Width="214px"></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox9" runat="server" Height="46px" TextMode="MultiLine" Width="177px"></asp:TextBox>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Add" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <hr />
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Button8" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <br />
                                        </ContentTemplate>
                                    </ajaxToolkit:TabPanel>
                                </ajaxToolkit:TabContainer>
                            </asp:Panel>
                </asp:Panel>
                </td>
    </tr>
    <tr>
        <td style="vertical-align:top; background-color:#fff;" class="auto-style11"></td>
    </tr>
</table>
</asp:Content>

