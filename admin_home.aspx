<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 385px;
        }
        .auto-style9 {
            width: 325px;
        }
        .auto-style10 {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
    <asp:Panel ID="Panel7" runat="server" BackImageUrl="~/NewFolder1/breakthrough-case.jpg" Height="671px" Width="1036px">
        <table class="auto-style7">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NewFolder1/user_customer_person_add_face_plus.png" OnClick="ImageButton1_Click" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton46" runat="server" OnClick="LinkButton46_Click">New Patient</asp:LinkButton>
                </td>
                <td class="auto-style8">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/NewFolder1/admit.png" OnClick="ImageButton2_Click" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton47" runat="server" OnClick="LinkButton47_Click">Admit  Patient</asp:LinkButton>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="144px" ImageUrl="~/NewFolder1/laboratory icon.png" Width="296px" OnClick="ImageButton3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

