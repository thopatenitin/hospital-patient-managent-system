<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="out_patient.aspx.cs" Inherits="doctor_module_out_patient" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
   
        <hr />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Label ID="Label56" runat="server" Text="Search IPD Patient"></asp:Label>
        <table id="searchtable">
            <tr>
                <td>
                    <asp:Label ID="Label57" runat="server" Font-Size="10pt" Text="From Date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label58" runat="server" Font-Size="10pt" Text="To Date "></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label61" runat="server" Font-Size="10pt" Text=" Patient Name"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox22_CalendarExtender" runat="server" BehaviorID="TextBox22_CalendarExtender" TargetControlID="TextBox22" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox23_CalendarExtender" runat="server" BehaviorID="TextBox23_CalendarExtender" TargetControlID="TextBox23" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Search" />
                </td>
            </tr>
        </table>
        <hr />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BorderWidth="0px" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="login_id" HeaderText="login_id" InsertVisible="False" ReadOnly="True" SortExpression="login_id" />
                <asp:BoundField DataField="login_code" HeaderText="login_code" SortExpression="login_code" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
    
</asp:Content>

