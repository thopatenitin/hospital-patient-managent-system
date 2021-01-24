<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="doctor_module_in_patient__complain" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../../theme/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="../../theme/gridview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

    .auto-style9 {
        width: 678px;
    }
        .auto-style15 {
            width: 1070px;
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
        .auto-style18 {
            vertical-align: top;
            height: 233px;
            width: 44px;
        }
        .auto-style14 {
            vertical-align:top;
            height: 233px;
        }
        .auto-style19 {
            width: 44px;
        }
        .auto-style20 {
            vertical-align: top;
            width: 300px;
            height: 23px;
        }
        .auto-style21 {
            height: 23px;
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
                        <li id="licss" style="list-style:none; border-top:4px solid #069; " class="auto-style15">Complain</li>
                    </ul>
                    <hr />
                    <asp:Panel ID="Panel2" runat="server" Height="487px" Width="1038px">
                        <asp:Panel ID="Panel3" runat="server" Height="98px">
                            <table class="auto-style11" style="background-color: #CCCCCC">
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label66" runat="server" Text="Complain"></asp:Label>
                                    </td>
                                    <td class="auto-style21">
                                        <asp:Label ID="Label67" runat="server" Text="Remark"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="247px" AutoPostBack="True"></asp:TextBox>
                                        <br />
                                        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="getcomplain" TargetControlID="TextBox1"></ajaxToolkit:AutoCompleteExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" Width="334px"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click" Text="Add" Width="59px" PostBackUrl="~/doctor_module/in_patient/complain.aspx" />
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
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CaptionAlign="Left" CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Justify" ShowFooter="True" Width="941px" DataKeyNames="complain_id">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                       
                                                        <asp:BoundField DataField="complain" HeaderText="Complain" SortExpression="complain" />
                                                        <asp:BoundField DataField="remark" HeaderText="Remark" SortExpression="remark" />
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
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT complain, remark, complain_id FROM palm_ipd_complain WHERE (patient_code = @patient_code)" DeleteCommand="DELETE FROM palm_ipd_complain WHERE (complain_id = @complain_id)">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="complain_id" />
                                                    </DeleteParameters>
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style19">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
&nbsp; 
                    </asp:Panel>
                </td>
            </tr>
        </table>
  

</asp:Content>

