<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="patient_history.aspx.cs" Inherits="doctor_module_in_patient_patient_history" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%@ Register src="../../USERCONTROL/discharge_summery.ascx" tagname="discharge_summery" tagprefix="uc1" %>
<%@ Register src="../../USERCONTROL/history_ipd.ascx" tagname="history_ipd" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <style type="text/css">

        .auto-style7 {
            width: 645px;
        }
        </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <asp:Panel ID="Panel1" runat="server">
        <uc2:history_ipd ID="history_ipd1" runat="server" />
    </asp:Panel>
    <br />

</asp:Content>

