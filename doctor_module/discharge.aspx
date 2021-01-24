<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/MasterPage2.master" AutoEventWireup="true" CodeFile="discharge.aspx.cs" Inherits="doctor_module_discharge" %>

<%@ Register src="../USERCONTROL/discharge_summery.ascx" tagname="discharge_summery" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <uc1:discharge_summery ID="discharge_summery1" runat="server" />
</asp:Content>

