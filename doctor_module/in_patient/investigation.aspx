<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="investigation.aspx.cs" Inherits="doctor_module_in_patient_investigation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
                                        <asp:Label ID="Label68" runat="server" Text="Date"></asp:Label>
                                        &nbsp;
                                        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
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
                                        <asp:Button ID="Button2" runat="server" Height="21px" OnClick="Button1_Click" text="Add" Width="59px" PostBackUrl="~/doctor_module/in_patient/investigation.aspx" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                            </table>
&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style13">
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="slave_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="935px">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="test_name" HeaderText="Test Name" SortExpression="test_name" />
                                                        <asp:BoundField DataField="description" HeaderText="Remark" SortExpression="description" />
                                                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/NewFolder1/if_Delete_1493279.png" ShowDeleteButton="True">
                                                        <ControlStyle Height="30px" />
                                                        </asp:CommandField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" />
                                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT slave_id, path_id, test_name, description, date, is_done FROM palm_ipd_pathlogy_slave WHERE (path_id = (SELECT path_id FROM palm_ipd_pathlogy WHERE (prn = @prn))) AND (date = @date)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="prn" SessionField="prn" />
                                                        <asp:ControlParameter ControlID="TextBox3" Name="date" PropertyName="Text" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
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

