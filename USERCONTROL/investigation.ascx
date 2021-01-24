<%@ Control Language="C#" AutoEventWireup="true" CodeFile="investigation.ascx.cs" Inherits="USERCONTROL_investigation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Panel ID="Panel1" runat="server">  <style type="text/css">

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

    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;" class="auto-style9">
                <ul>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <li id="licss" style="list-style:none; border-top:4px solid #069; " class="auto-style14">Investigation Advice</li></ul>
                        <hr class="auto-style15" />
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
                                        <asp:Button ID="Button2" runat="server" Height="21px" OnClick="Button1_Click" text="Add" Width="59px" PostBackUrl="~/nurse_module/ext_investigation.aspx" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                            </table>
&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style13">
                                        <tr>
                                            <td style="vertical-align:top;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="path_id,slave_id" DataSourceID="SqlDataSource1" Height="151px" Width="868px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No Records Found" OnRowDeleted="GridView1_RowDeleted">
                                                <Columns>
                                                    <asp:BoundField DataField="slave_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="slave_id" />
                                                    <asp:BoundField DataField="patient_code" HeaderText="Pateint Code" SortExpression="patient_code" />
                                                    <asp:BoundField DataField="test_name" HeaderText="Test Name" SortExpression="test_name" />
                                                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                                    <asp:BoundField DataField="ref_by" HeaderText="Refrenced Doctor" SortExpression="ref_by" />
                                                    <asp:BoundField DataField="is_done" HeaderText="Status" SortExpression="is_done" />
                                                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/NewFolder1/if_Delete_1493279.png" HeaderText="Action" SelectImageUrl="~/NewFolder1/if_page14_216307 (1).png" ShowDeleteButton="True" ShowSelectButton="True">
                                                    <ControlStyle Width="19px" />
                                                    </asp:CommandField>
                                                </Columns>
                                                </asp:GridView>
                                                

                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="sp_get_investigationdetail_bypateint_code_by1" SelectCommandType="StoredProcedure" DeleteCommand="DELETE FROM palm_opd_pathlogy_slave WHERE (slave_id = @slave_id)">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="slave_id" Type="Int32" />
                                                    </DeleteParameters>
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="emp_code" SessionField="emp_code" Type="String" />
                                                        <asp:SessionParameter Name="pateint_code" SessionField="pateint_code" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                            <td style="vertical-align:bottom; text-align:right;">
                                                <asp:Button ID="Button3" runat="server" Height="47px" OnClick="Button3_Click" text="Genrate Bill" Width="180px" BackColor="White" BorderStyle="None" />
                                                <ajaxToolkit:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" BehaviorID="Button3_DropShadowExtender" TargetControlID="Button3" />
                                            </td>
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

</asp:Panel>

