<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="nuese_progress.aspx.cs" Inherits="doctor_module_in_patient_nuese_progress" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;">
                <ul">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <li id="licss" style="list-style:none; border-top:4px solid #069; ">Nurse Note
                    <hr />
                    <asp:Panel ID="Panel2" runat="server" Height="454px" Width="682px">
                        <asp:Button ID="medication" runat="server" Text="+Add Note" BorderStyle="None" Height="34px" Width="144px" />
                        <ajaxToolkit:DropShadowExtender ID="medication_DropShadowExtender" runat="server" BehaviorID="medication_DropShadowExtender" TargetControlID="medication" />
                        <ajaxToolkit:ModalPopupExtender ID="medication_ModalPopupExtender" runat="server" BehaviorID="medication_ModalPopupExtender" DynamicServicePath="" OkControlID="ok0" PopupControlID="popuppanal0" TargetControlID="medication" BackgroundCssClass="background">
                        </ajaxToolkit:ModalPopupExtender>
                            &#160;&#160;&#160;&#160;&#160;
                            <asp:Button ID="Button5" runat="server" Text="Print" BorderStyle="None" Height="29px" Width="75px" />
                        <ajaxToolkit:DropShadowExtender ID="Button5_DropShadowExtender" runat="server" BehaviorID="Button5_DropShadowExtender" TargetControlID="Button5" />
                            &#160; 
                    </asp:Panel>
                    <asp:Panel ID="popuppanal0" runat="server" CssClass="popup background" Height="374px" Width="464px">
                        <br />
                            &#160;&#160;&#160;&#160;&#160;&#160;<asp:Label ID="Label69" runat="server" Font-Bold="True" Text="Nurse Note"></asp:Label>
                        <br />
                        <hr />
                        <br />
                        <br />
                            &#160;&#160;&#160;&#160;&#160;
                            <asp:Label ID="Label79" runat="server" Text="Date &amp;Time."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox35" runat="server" ></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox35_CalendarExtender" runat="server" BehaviorID="TextBox28_CalendarExtender" TargetControlID="TextBox35" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                            &#160;&#160;&#160;&#160;&#160;
                            <asp:Label ID="Label80" runat="server" Text="Focus."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox36_CalendarExtender" runat="server" BehaviorID="TextBox28_CalendarExtender" TargetControlID="TextBox36" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label81" runat="server" Text="Note."></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox26" runat="server" Height="83px" TextMode="MultiLine" Width="231px"></asp:TextBox>
                        <br />
                        <hr />
                        <br />
                        <br />
                            &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                            <asp:Button ID="Cancel0" runat="server" Height="30px" Text="Close" Width="78px" />
                            &#160;&#160;&#160;&#160;
                            <asp:Button ID="ok0" runat="server" Height="27px" Text="Save" Width="71px" />
                    </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

