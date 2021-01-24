<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="outpatientenquiry.aspx.cs" Inherits="outpatientenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
     <br />
        <hr />
        <br />
        <asp:Label ID="Label56" runat="server" Text="Search OPD Patient"></asp:Label>
        <table class="auto-style10">
            <tr>
                <td>
                    <asp:Label ID="Label57" runat="server" Font-Size="10pt" Text="Search OPD Patient"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label58" runat="server" Font-Size="10pt" Text="Search OPD Patient"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label59" runat="server" Font-Size="10pt" Text="Search OPD Patient"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label60" runat="server" Font-Size="10pt" Text="Search OPD Patient"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label61" runat="server" Font-Size="10pt" Text="Search OPD Patient"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                </td>
            <td>
                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Search" />
                </td>
            </tr>
        </table>
        <hr />
        <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderWidth="0px">
    <Columns>
        <asp:BoundField DataField="login_id" HeaderText="login_id" InsertVisible="False" ReadOnly="True" SortExpression="login_id" />
        <asp:BoundField DataField="login_code" HeaderText="login_code" SortExpression="login_code" />
        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT * FROM [palm_login]"></asp:SqlDataSource>
        <br />
</asp:Content>

