<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="pathology_ipd_home.aspx.cs" Inherits="pathology_pathology_ipd_home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .auto-style2 {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #fff;
        margin: 5px 0 10px 0;
        font-family: Calibri;
        color: #474747;
        height: 48px;
        width: 1021px;
    }
    .auto-style3 {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="1044px">
        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                Pending
            </HeaderTemplate>
            <ContentTemplate>
                <table class="auto-style2" style="background-color: #FFFFFF;">
                    <tr>
                        <td style="background-color: #99CCFF">
                            <asp:Label ID="Label4" runat="server" Text="Pending"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel7" runat="server">
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataKeyNames="slave_id" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="1004px">
                                    <Columns>
                                        <asp:BoundField DataField="slave_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="slave_id" />
                                        <asp:BoundField DataField="patient_code" HeaderText="Pateint Code" SortExpression="patient_code" />
                                        <asp:BoundField DataField="inserted_by" HeaderText="Reference Doctor" SortExpression="inserted_by" />
                                        <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
                                        <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                        <asp:BoundField DataField="test_name" HeaderText="Test" SortExpression="test_name" />
                                        <asp:BoundField DataField="is_done" HeaderText="Status" SortExpression="is_done" />
                                        <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_pathology_ipd_info_completed" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </asp:Panel>
                        </td>
                    </tr>
                   
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>
                Completed
            </HeaderTemplate>
            <ContentTemplate>
            <table> <tr>
                        <td class="auto-style3" style="background-color: #99CCFF">
                            <asp:Label ID="Label5" runat="server" Text="Completed"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel8" runat="server">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataKeyNames="slave_id" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="1004px">
                                    <Columns>
                                        <asp:BoundField DataField="slave_id" HeaderText="ID" SortExpression="slave_id" InsertVisible="False" ReadOnly="True" />
                                        <asp:BoundField DataField="patient_code" HeaderText="Pateint Code" SortExpression="patient_code" />
                                        <asp:BoundField DataField="inserted_by" HeaderText="Reference Doctor" SortExpression="inserted_by" />
                                        <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
                                        <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                        <asp:BoundField DataField="test_name" HeaderText="Test" SortExpression="test_name" />
                                        <asp:BoundField DataField="is_done" HeaderText="Status" SortExpression="is_done" />
                                        <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_pathology_ipd_info_completed" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </asp:Panel>
                        </td>
                    </tr></table></ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>



