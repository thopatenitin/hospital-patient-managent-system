<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="opd_registration.aspx.cs" Inherits="nurse_module_opd_registration" %>

<%@ Register src="../opd_registration.ascx" tagname="opd_registration" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
 
    <uc1:opd_registration ID="opd_registration1" runat="server" />
 
</asp:Content>

