<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/MasterPage2.master" AutoEventWireup="true" CodeFile="investigation.aspx.cs" Inherits="doctor_module_investigation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
            width: 300px;
        }
        .auto-style13 {
            width: 100%;
            height: 235px;
        }
    
.Grid {background-color: #fff; border:none; margin: 5px 0 10px 0;  font-family:Calibri; color: #474747;
       
}

        .auto-style14 {
            width: 1066px;
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
                <li id="licss" style="list-style:none; border-top:4px solid #069; " class="auto-style14">Investigation Advice</li></ul>
                        <hr />
                    <asp:Panel ID="Panel2" runat="server" Height="454px" Width="1052px">
                        <asp:Panel ID="Panel3" runat="server" Height="448px">
                            <table class="auto-style11" style="background-color: #CCCCCC">
                                <tr>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label66" runat="server" Text="Investigation"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label67" runat="server" Text="Description"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12" style="vertical-align:top;">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="178px" DataSourceID="SqlDataSource2" DataTextField="test_name" DataValueField="test_code">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [test_code], [test_name] FROM [pathology_test_report]"></asp:SqlDataSource>
                                        <br />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" Width="334px"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" Height="21px" OnClick="Button1_Click" text="Add" Width="59px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                            </table>
&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style13">
                                        <tr>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                            <td>
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </asp:Panel>
&nbsp; 
                    </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

