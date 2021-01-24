<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="admit_pateint.aspx.cs" Inherits="nurse_module_admit_pateint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CssClass="Grid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="1003px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
            <asp:BoundField DataField="pateient_title" HeaderText="Title" SortExpression="pateient_title" />
            <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
            <asp:BoundField DataField="pateient_middle_name" HeaderText="Middle Name" SortExpression="pateient_middle_name" />
            <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
            <asp:CommandField HeaderText="Action" SelectText="Admit" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [pateint_code], [pateient_first_name], [pateient_middle_name], [pateient_last_name], [pateient_title] FROM [palm_pateint_master] WHERE ([is_discharge] = @is_discharge)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="is_discharge" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

