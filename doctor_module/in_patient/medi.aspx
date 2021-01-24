<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="medi.aspx.cs" Inherits="doctor_module_in_patient_medi" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

        .auto-style11 {
            height: 372px;
        }
        
        .auto-style12 {
            width: 1041px;
            height: 176px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style22 {
            width: 70px;
        }
        .auto-style23 {
            text-align: right;
            width: 70px;
        }
        .auto-style26 {
            width: 697px;
        }
        .auto-style27 {
            height: 28px;
        }
        .auto-style28 {
            height: 21px;
        }
        .auto-style29 {
            height: 28px;
            width: 148px;
        }
        .auto-style30 {
            width: 148px;
        }
        .auto-style32 {
            height: 26px;
            width: 148px;
        }
        .auto-style33 {
            margin-left: 0px;
        }
        .auto-style34 {
        height: 25px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;">
                <ul>
                    <li id="licss" style="list-style:none; border-top:4px solid #069; ">Medication</li>
                </ul>
                <hr />
                <asp:Panel ID="Panel2" runat="server" Height="531px" Width="1051px">
                    <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View5" runat="server">
                            <asp:Panel ID="Panel6" runat="server" Height="477px">
                                <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" Height="180px">
                                    <table border="1" class="auto-style12">
                                        <tr>
                                            <td class="auto-style29">
                                                <asp:Label ID="Label79" runat="server" Text="Date:."></asp:Label>
                                            </td>
                                            <td class="auto-style27" colspan="4">
                                                <asp:TextBox ID="TextBox29" runat="server" AutoPostBack="True" OnTextChanged="TextBox29_TextChanged"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender ID="TextBox29_CalendarExtender" runat="server" BehaviorID="TextBox29_CalendarExtender" TargetControlID="TextBox29" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style30" rowspan="2">
                                                &nbsp;&nbsp;
                                                <asp:Label ID="Label69" runat="server" Text="Drug Name"></asp:Label>
                                                <br />
                                            </td>
                                            <td colspan="2" rowspan="2">
                                                <asp:TextBox ID="TextBox21" runat="server" CssClass="auto-style33" Height="22px" Width="264px"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td class="auto-style34">
                                                <asp:Label ID="Label72" runat="server" Text="Route"></asp:Label>
                                            </td>
                                            <td class="auto-style34">
                                                <asp:Label ID="Label73" runat="server" Text="Frequency"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style28">
                                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td class="auto-style28">
                                                <asp:TextBox ID="text0" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style32">
                                                <asp:Label ID="Label75" runat="server" Text="Morning"></asp:Label>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label76" runat="server" Text="Afternoon"></asp:Label>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label77" runat="server" Text="Evening"></asp:Label>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label78" runat="server" Text="Night"></asp:Label>
                                            </td>
                                            <td class="auto-style13" style="vertical-align: top;"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style32">
                                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="text66" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="text6" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style13" style="vertical-align: top;">
                                                <asp:Button ID="Button2" runat="server" BorderStyle="None" Height="29px" Text="Add" Width="53px" PostBackUrl="~/doctor_module/in_patient/medi.aspx" OnClick="Button2_Click" />
                                                <ajaxToolkit:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" TargetControlID="Button2" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style32">&nbsp;</td>
                                            <td class="auto-style13">&nbsp;</td>
                                            <td class="auto-style13">&nbsp;</td>
                                            <td class="auto-style13">&nbsp;</td>
                                            <td class="auto-style13" style="vertical-align: top;">&nbsp;</td>
                                        </tr>
                                    </table>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="medication_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="805px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="medication_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="medication_id" />
                                            <asp:BoundField DataField="drug" HeaderText="Drug" SortExpression="drug" />
                                            <asp:BoundField DataField="route" HeaderText="Route" SortExpression="route" />
                                            <asp:BoundField DataField="frequency" HeaderText="Frequency" SortExpression="frequency" />
                                            <asp:TemplateField><ItemTemplate>
                                                                          <asp:Label ID="lbl" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timea") %>' ></asp:Label>------<asp:Label ID="lab01" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timeb") %>'></asp:Label>------<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timec") %>'></asp:Label>------<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"timed") %>'></asp:Label>
                                                                                       </ItemTemplate></asp:TemplateField>
                                            <asp:CommandField ShowDeleteButton="True" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT * FROM [palm_ipd_medication] WHERE (([patient_code] = @patient_code) AND ([inserted_on] = @inserted_on))" DeleteCommand="DELETE FROM [palm_ipd_medication] WHERE [medication_id] = @medication_id" InsertCommand="INSERT INTO [palm_ipd_medication] ([patient_code], [inserted_by], [inserted_on], [drug], [frequency], [timea], [timeb], [timec], [timed], [prn], [route]) VALUES (@patient_code, @inserted_by, @inserted_on, @drug, @frequency, @timea, @timeb, @timec, @timed, @prn, @route)" UpdateCommand="UPDATE [palm_ipd_medication] SET [patient_code] = @patient_code, [inserted_by] = @inserted_by, [inserted_on] = @inserted_on, [drug] = @drug, [frequency] = @frequency, [timea] = @timea, [timeb] = @timeb, [timec] = @timec, [timed] = @timed, [prn] = @prn, [route] = @route WHERE [medication_id] = @medication_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="medication_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="patient_code" Type="String" />
                                            <asp:Parameter Name="inserted_by" Type="String" />
                                            <asp:Parameter Name="inserted_on" Type="String" />
                                            <asp:Parameter Name="drug" Type="String" />
                                            <asp:Parameter Name="frequency" Type="String" />
                                            <asp:Parameter Name="timea" Type="Int32" />
                                            <asp:Parameter Name="timeb" Type="Int32" />
                                            <asp:Parameter Name="timec" Type="Int32" />
                                            <asp:Parameter Name="timed" Type="Int32" />
                                            <asp:Parameter Name="prn" Type="String" />
                                            <asp:Parameter Name="route" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="patient_code" SessionField="pateint_code" Type="String" />
                                            <asp:ControlParameter ControlID="TextBox29" Name="inserted_on" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="patient_code" Type="String" />
                                            <asp:Parameter Name="inserted_by" Type="String" />
                                            <asp:Parameter Name="inserted_on" Type="String" />
                                            <asp:Parameter Name="drug" Type="String" />
                                            <asp:Parameter Name="frequency" Type="String" />
                                            <asp:Parameter Name="timea" Type="Int32" />
                                            <asp:Parameter Name="timeb" Type="Int32" />
                                            <asp:Parameter Name="timec" Type="Int32" />
                                            <asp:Parameter Name="timed" Type="Int32" />
                                            <asp:Parameter Name="prn" Type="String" />
                                            <asp:Parameter Name="route" Type="String" />
                                            <asp:Parameter Name="medication_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel4" runat="server" Height="169px">
                                                <asp:Panel ID="Panel9" runat="server">
                                                </asp:Panel>
                                                <br />
                                            </asp:Panel>
                                            <asp:Panel ID="Panel5" runat="server">
                                            </asp:Panel>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                                            <asp:AsyncPostBackTrigger ControlID="TextBox21" EventName="TextChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                            </asp:Panel>
                        </asp:View>
                        <asp:View ID="View6" runat="server">
                            <asp:Panel ID="Panel7" runat="server" BackColor="White" Height="657px">
                                <asp:Panel ID="Panel8" runat="server" Height="451px">
                                    <table class="auto-style14">
                                        <tr>
                                            <td style="vertical-align:bottom;" class="auto-style26">
                                                <asp:Image ID="Image4" runat="server" Height="86px" ImageUrl="~/NewFolder1/logo(1).png" Width="257px" />
                                                <br />
                                                <br />
                                                <br />
                                                <asp:Label ID="Label80" runat="server" Text="PT NAME : "></asp:Label>
                                                <asp:Label ID="Label81" runat="server"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                <table class="auto-style14">
                                                    <tr>
                                                        <td class="auto-style22" >&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style22">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style22">&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label110" runat="server" Font-Bold="True" Font-Size="20pt">MEDICINE CHART</asp:Label>
                                                            <br />
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style23">
                                                            <asp:Label ID="Label100" runat="server" Text="PRN NO : "></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label101" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style23">
                                                            <asp:Label ID="Label83" runat="server" Text="DOA : "></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label102" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style23">
                                                            <asp:Label ID="Label84" runat="server" Text="DATE : "></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label105" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style16" colspan="2">
                                                            <asp:Label ID="Label103" runat="server" Text="AGE :"></asp:Label>
                                                            <asp:Label ID="Label106" runat="server"></asp:Label>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label108" runat="server">SEX :</asp:Label>
                                                            &nbsp;&nbsp;
                                                            <asp:Label ID="Label109" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:Panel>
                        </asp:View>
                    </asp:MultiView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top; background-color:#fff;" class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

