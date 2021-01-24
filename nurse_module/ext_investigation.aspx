<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="ext_investigation.aspx.cs" Inherits="nurse_module_ext_investigation" %>

<%@ Register src="../USERCONTROL/investigation.ascx" tagname="investigation" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_td" Runat="Server">
    <div style="position:fixed;width:100px;right:0px;top:199px; color:green;">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NewFolder1/1498043365_Streamline-73.png" Height="100px" ImageAlign="Middle" Width="100px" /></div>
    <div></div>
   
    <uc1:investigation ID="investigation1" runat="server" />
</asp:Content>

