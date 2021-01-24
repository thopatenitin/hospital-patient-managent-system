<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="diagnosis.aspx.cs" Inherits="doctor_module_in_patient_diagnosis" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 97%;
            height: 43px;
            padding:0px;
            
        }
        .auto-style6 {
            margin-bottom: 35px;
        }
        .auto-style11 {
            height: 331px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 99%;
            height: 43px;
            padding: 0px;
        }
        .auto-style14 {
            width: 1069px;
        }
        .auto-style15 {
            width: 1009px;
        }
        .auto-style16 {
            width: 460px;
            vertical-align: top;
        }
     .auto-style17 {
         margin-right: 71px;
         margin-bottom: 35px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<table id="optable" class="auto-style14">
    <tr>
        <td rowspan="3" style="vertical-align:top; background-color:#fff;">
            <ul>
            <li id="licss" style="list-style:none; border-top:4px solid #069; ">Diagnosis</li></ul>
                        <hr />
                <asp:Panel ID="Panel2" runat="server" Height="454px" Width="1057px">
                            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17" Height="491px" Width="1037px">
                                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="446px" Width="1039px" BackColor="#CCCCCC">
                                    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1"><HeaderTemplate>Provisional Diagnosis&nbsp;</HeaderTemplate><ContentTemplate><table class="auto-style13" style="background-color: #CCCCCC"><tr><td class="auto-style12"><asp:Label ID="Label72" runat="server" Text="Diagnosis"></asp:Label></td><td class="auto-style12"><asp:Label ID="Label73" runat="server" Text="Remark"></asp:Label></td><td class="auto-style12"></td></tr><tr><td><asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="147px"></asp:TextBox><br /></td><td><asp:TextBox ID="TextBox5" runat="server" Height="35px" TextMode="MultiLine" Width="199px"></asp:TextBox><br /></td><td><asp:Button ID="Button7" runat="server" BackColor="White" BorderStyle="None" Height="31px" Text="Add" Width="57px" OnClick="Button7_Click" /><ajaxToolkit:DropShadowExtender ID="Button7_DropShadowExtender" runat="server" BehaviorID="Button7_DropShadowExtender" TargetControlID="Button7" /></td></tr></table><br /><hr /><br /><asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ipd_diagnosis_master_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="848px">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ipd_diagnosis_master_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ipd_diagnosis_master_id" />
                                                    <asp:BoundField DataField="pro_diagnosis" HeaderText="Provisional Diagnosis" SortExpression="pro_diagnosis" />
                                                    <asp:BoundField DataField="pro_remark" HeaderText="Remark" SortExpression="pro_remark" />
                                                    <asp:CommandField ShowDeleteButton="True" />
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="Gray" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" DeleteCommand="DELETE FROM [palm_ipd_provisional_diagnosis] WHERE [ipd_diagnosis_master_id] = @ipd_diagnosis_master_id" InsertCommand="INSERT INTO [palm_ipd_provisional_diagnosis] ([master_id], [prn], [pro_diagnosis], [pro_remark]) VALUES (@master_id, @prn, @pro_diagnosis, @pro_remark)" SelectCommand="SELECT * FROM [palm_ipd_provisional_diagnosis] WHERE ([prn] = @prn)" UpdateCommand="UPDATE [palm_ipd_provisional_diagnosis] SET [master_id] = @master_id, [prn] = @prn, [pro_diagnosis] = @pro_diagnosis, [pro_remark] = @pro_remark WHERE [ipd_diagnosis_master_id] = @ipd_diagnosis_master_id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="ipd_diagnosis_master_id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="master_id" Type="Int32" />
                                                    <asp:Parameter Name="prn" Type="String" />
                                                    <asp:Parameter Name="pro_diagnosis" Type="String" />
                                                    <asp:Parameter Name="pro_remark" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="prn" SessionField="prn" Type="String" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="master_id" Type="Int32" />
                                                    <asp:Parameter Name="prn" Type="String" />
                                                    <asp:Parameter Name="pro_diagnosis" Type="String" />
                                                    <asp:Parameter Name="pro_remark" Type="String" />
                                                    <asp:Parameter Name="ipd_diagnosis_master_id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </ContentTemplate>
                                        </asp:UpdatePanel></ContentTemplate></ajaxToolkit:TabPanel>
                                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2"><HeaderTemplate>Final Diagnosis&nbsp;</HeaderTemplate><ContentTemplate><table  style="background-color: #CCCCCC" class="auto-style15"><tr><td class="auto-style16"><asp:Label ID="Label74" runat="server" Text="Diagnosis"></asp:Label></td><td><asp:Label ID="Label75" runat="server" Text="Remark"></asp:Label></td></tr><tr><td class="auto-style16"><asp:TextBox ID="TextBox6" runat="server" Height="36px" Width="214px"></asp:TextBox><br /></td><td><asp:TextBox ID="TextBox9" runat="server" Height="46px" TextMode="MultiLine" Width="177px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Add" Height="24px" Width="53px" /></td></tr></table><hr /><br /><asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ipd_diagnosis_master_id" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Vertical" Width="988px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"><AlternatingRowStyle BackColor="#CCCCCC" /><Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="ipd_diagnosis_master_id" HeaderText="ipd_diagnosis_master_id" SortExpression="ipd_diagnosis_master_id" InsertVisible="False" ReadOnly="True" /><asp:BoundField DataField="master_id" HeaderText="master_id" SortExpression="master_id" /><asp:BoundField DataField="prn" HeaderText="prn" SortExpression="prn" /><asp:BoundField DataField="Final_diagnosis" HeaderText="Final_diagnosis" SortExpression="Final_diagnosis" /><asp:BoundField DataField="final_remark" HeaderText="final_remark" SortExpression="final_remark" /></Columns><FooterStyle BackColor="#CCCCCC" /><HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" /><PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" /><SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" /><SortedAscendingCellStyle BackColor="#F1F1F1" /><SortedAscendingHeaderStyle BackColor="#808080" /><SortedDescendingCellStyle BackColor="#CAC9C9" /><SortedDescendingHeaderStyle BackColor="#383838" /></asp:GridView>
                                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="IPDDataContext" EnableDelete="True" EntityTypeName="" TableName="palm_ipd_final_diagnosis" Where="prn == @prn">
                                            <WhereParameters>
                                                <asp:SessionParameter Name="prn" SessionField="prn" Type="String" />
                                            </WhereParameters>
                                        </asp:LinqDataSource>
                                        </ContentTemplate><Triggers><asp:AsyncPostBackTrigger ControlID="Button8" EventName="Click" /></Triggers></asp:UpdatePanel><br /></ContentTemplate></ajaxToolkit:TabPanel>
                                </ajaxToolkit:TabContainer>
                            </asp:Panel>
                </asp:Panel>
                </td>
    </tr>
    <tr>
        <td style="vertical-align:top; background-color:#fff;" class="auto-style11"></td>
    </tr>
</table>
</asp:Content>

