<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/MasterPage2.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="doctor_module_complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../theme/gridview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 678px;
    }
        .auto-style11 {
            width: 100%;
            height: 93px;
        }
        .auto-style12 {
            vertical-align:top;
            width: 300px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            vertical-align:top;
            height: 233px;
        }
        .auto-style15 {
            width: 1070px;
        }
        .auto-style18 {
            vertical-align: top;
            height: 233px;
            width: 96px;
        }
        .auto-style19 {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


        <table id="optable">
            <tr>
                <td rowspan="3" style="vertical-align:top; background-color:#fff;" class="auto-style9">
                  <ul>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                        <li id="licss" style="list-style:none; border-top:4px solid #069; " class="auto-style15">Complain</li></ul>
                        <hr />
                        <asp:Panel ID="Panel2" runat="server" Height="487px" Width="1038px">
                            <asp:Panel ID="Panel3" runat="server" Height="98px">
                                <table class="auto-style11" style="background-color: #CCCCCC">
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label66" runat="server" Text="Complain"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label67" runat="server" Text="Remark"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="247px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" Width="334px"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click" Text="Add" Width="59px" />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <table class="auto-style13">
                                        <tr>
                                            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                            <td class="auto-style14">
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style19">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
&nbsp; </asp:Panel>
                        
                        
                    </td>
            </tr>
        </table>
  

</asp:Content>

