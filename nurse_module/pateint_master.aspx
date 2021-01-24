<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="pateint_master.aspx.cs" Inherits="nurse_module_pateint_master" %>



<%@ Register src="../USERCONTROL/pateint_master.ascx" tagname="pateint_master" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    
    <uc1:pateint_master ID="pateint_master1" runat="server" />
    
</asp:Content>

