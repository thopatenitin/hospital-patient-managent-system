<%@ Page Title="" Language="C#" MasterPageFile="~/pathology/pathology.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="pathology_profile" %>

<%@ Register src="../USERCONTROL/profile.ascx" tagname="profile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <uc1:profile ID="profile1" runat="server" />
</asp:Content>

