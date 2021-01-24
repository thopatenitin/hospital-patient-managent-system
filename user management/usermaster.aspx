<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usermaster.aspx.cs" Inherits="user_management_usermaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:Panel ID="Panel7" runat="server" BackColor="White">
        <asp:GridView ID="GridView1" runat="server" CssClass="Grid">
        </asp:GridView>
    </asp:Panel>
</asp:Content>

