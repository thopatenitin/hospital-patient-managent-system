<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate></ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT * FROM [room_master]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                room_code:
                <asp:TextBox ID="room_codeTextBox" runat="server" Text='<%# Bind("room_code") %>' />
                <br />
                room_no:
                <asp:TextBox ID="room_noTextBox" runat="server" Text='<%# Bind("room_no") %>' />
                <br />
                room_type:
                <asp:TextBox ID="room_typeTextBox" runat="server" Text='<%# Bind("room_type") %>' />
                <br />
                rent:
                <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                <br />
                no_bed:
                <asp:TextBox ID="no_bedTextBox" runat="server" Text='<%# Bind("no_bed") %>' />
                <br />
                occupied:
                <asp:TextBox ID="occupiedTextBox" runat="server" Text='<%# Bind("occupied") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                room_code:
                <asp:TextBox ID="room_codeTextBox" runat="server" Text='<%# Bind("room_code") %>' />
                <br />
                room_no:
                <asp:TextBox ID="room_noTextBox" runat="server" Text='<%# Bind("room_no") %>' />
                <br />
                room_type:
                <asp:TextBox ID="room_typeTextBox" runat="server" Text='<%# Bind("room_type") %>' />
                <br />
                rent:
                <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                <br />
                no_bed:
                <asp:TextBox ID="no_bedTextBox" runat="server" Text='<%# Bind("no_bed") %>' />
                <br />
                occupied:
                <asp:TextBox ID="occupiedTextBox" runat="server" Text='<%# Bind("occupied") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                room_code:
                <asp:Label ID="room_codeLabel" runat="server" Text='<%# Bind("room_code") %>' />
                <br />
                room_no:
                <asp:Label ID="room_noLabel" runat="server" Text='<%# Bind("room_no") %>' />
                <br />
                room_type:
                <asp:Label ID="room_typeLabel" runat="server" Text='<%# Bind("room_type") %>' />
                <br />
                rent:
                <asp:Label ID="rentLabel" runat="server" Text='<%# Bind("rent") %>' />
                <br />
                no_bed:
                <asp:Label ID="no_bedLabel" runat="server" Text='<%# Bind("no_bed") %>' />
                <br />
                occupied:
                <asp:Label ID="occupiedLabel" runat="server" Text='<%# Bind("occupied") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
        <br />
    </form>
</body>
</html>
