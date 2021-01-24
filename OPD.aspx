<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OPD.aspx.cs" Inherits="OPD" %>




<%@ Register src="USERCONTROL/pateint_master.ascx" tagname="pateint_master" tagprefix="uc1" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
    <p>
       
        </p>
    <uc1:pateint_master ID="pateint_master1" runat="server" />
</asp:Content>

