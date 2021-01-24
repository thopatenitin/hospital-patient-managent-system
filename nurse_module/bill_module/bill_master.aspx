<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="bill_master.aspx.cs" Inherits="nurse_module_bill_module_bill_master" %>

<%@ Register src="../../USERCONTROL/IPD/bill_search.ascx" tagname="bill_search" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <uc1:bill_search ID="bill_search1" runat="server" />
</asp:Content>

