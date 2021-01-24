<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="operation_theater.aspx.cs" Inherits="doctor_module_in_patient_operation_theater" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 645px;
        }
        .auto-style8 {
            width: 646px;
        }
        .auto-style9 {
            width: 649px;
        }
        .auto-style10 {
            width: 654px;
        }
        .auto-style11 {
            width: 655px;
        }
        .auto-style12 {
            width: 658px;
        }
        .auto-style13 {
            width: 657px;
        }
        .auto-style15 {
            width: 635px;
            height: -12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;">
                <ul">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <li id="licss" style="list-style:none; border-top:4px solid #069; ">Operation Theater
                    <hr />
                    <asp:Panel ID="Panel2" runat="server" Height="823px" Width="682px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label72" runat="server" Text="From Date &amp; nTime ."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="184px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" />
                        &nbsp;
                        <asp:TextBox ID="TextBox13" runat="server" Height="16px" Width="185px"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox13_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox13_TextBoxWatermarkExtender" TargetControlID="TextBox13" WatermarkText="HH:MM:SS" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <hr class="auto-style15" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label73" runat="server" Text="To Date &amp; Time."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox14" runat="server" Height="16px" Width="176px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox14_CalendarExtender" runat="server" BehaviorID="TextBox14_CalendarExtender" TargetControlID="TextBox14" />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox16" runat="server" Height="16px" Width="156px"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox16_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox13_TextBoxWatermarkExtender" TargetControlID="TextBox16" WatermarkText="HH:MM:SS" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<hr class="auto-style8" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label74" runat="server" Text="Operation Name."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                        <hr class="auto-style9" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label75" runat="server" Text="Diagnosis"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <hr class="auto-style9" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label76" runat="server" Text="Name Of Surgon."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        &nbsp;<hr class="auto-style10" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label77" runat="server" Text="Name Of Anesthesia."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <hr class="auto-style11" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label78" runat="server" Text="Asistant Name 1."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <hr class="auto-style12" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label84" runat="server" Text="Asistant Name 2."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        <hr class="auto-style13" />
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label80" runat="server" Text="Asistant Name 3."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <hr />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label81" runat="server" Text="Asistant Name 4."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        <hr />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label82" runat="server" Text="Operation Procedure"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        <hr />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label83" runat="server" Text="patient History"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <hr />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label85" runat="server" Text="Discharge Summary"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox18" runat="server" Height="61px" TextMode="MultiLine" Width="389px"></asp:TextBox>
                        <br />
                        <hr />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label86" runat="server" Text="Notes"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox19" runat="server" Height="77px" TextMode="MultiLine" Width="393px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Save" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Print" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

