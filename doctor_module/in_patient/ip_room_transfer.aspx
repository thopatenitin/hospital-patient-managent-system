<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="ip_room_transfer.aspx.cs" Inherits="doctor_module_in_patient_ip_room_transfer" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 793px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table id="optable" class="auto-style1">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;">
                <ul">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <li id="licss" style="list-style:none; border-top:4px solid #069; ">Ip Room Transfer</li>
                        <hr />
                    <asp:Panel ID="Panel2" runat="server" Height="454px" Width="682px">
                        <asp:Button ID="medication" runat="server" Text="Trasnsfer" BorderStyle="None" Height="34px" Width="144px" />
                        <ajaxToolkit:DropShadowExtender ID="medication_DropShadowExtender" runat="server" BehaviorID="medication_DropShadowExtender" TargetControlID="medication" />
                        <ajaxToolkit:ModalPopupExtender ID="medication_ModalPopupExtender" runat="server" BehaviorID="medication_ModalPopupExtender" DynamicServicePath="" OkControlID="ok0" PopupControlID="popuppanal0" TargetControlID="medication" BackgroundCssClass="background">
                        </ajaxToolkit:ModalPopupExtender>
                            &#160;&#160;&#160;&#160;&#160;
                            <asp:Button ID="Button5" runat="server" Text="Print" BorderStyle="None" Height="29px" Width="75px" />
                        <ajaxToolkit:DropShadowExtender ID="Button5_DropShadowExtender" runat="server" BehaviorID="Button5_DropShadowExtender" TargetControlID="Button5" />
                            &#160; 
                    </asp:Panel>
                    <asp:Panel ID="popuppanal0" runat="server" CssClass="popup background" Height="496px" Width="526px">
                        <br />
                            &#160;&#160;&#160;&#160;&#160;&#160;<asp:Label ID="Label69" runat="server" Font-Bold="True" Text="IP Room Transfer"></asp:Label>
                        <br />
                        <hr />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label70" runat="server" Text="Date."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label71" runat="server" Text="Time."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label72" runat="server" Text="Room Type."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label73" runat="server" Text="Room   Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label74" runat="server" Text="Bed No./Name."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label75" runat="server" Text="Reason"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox26" runat="server" Height="48px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                        <br />
                        <hr />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Cancel0" runat="server" Height="30px" Text="Close" Width="78px" />
                            &#160;&#160;&#160;&#160;
                            <asp:Button ID="ok0" runat="server" Height="27px" Text="Save" Width="71px" />
                    </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

