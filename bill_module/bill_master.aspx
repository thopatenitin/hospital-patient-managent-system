<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill_master.aspx.cs" Inherits="bill_module_bill_master" %>



<%@ Register src="../USERCONTROL/IPD/bill_search.ascx" tagname="bill_search" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .auto-style49 {
        width: 78%;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
                &nbsp;&nbsp;<uc1:bill_search ID="bill_search1" runat="server" />
&nbsp;
</asp:Content>

