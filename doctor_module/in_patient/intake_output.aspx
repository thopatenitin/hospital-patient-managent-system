<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/in_patient/in_patient.master" AutoEventWireup="true" CodeFile="intake_output.aspx.cs" Inherits="doctor_module_in_patient_intake_output" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">


        
        .auto-style12 {
            width: 1061px;
            height: 176px;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style26 {
            width: 697px;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        .auto-style22 {
            width: 70px;
        }
        .auto-style23 {
            text-align: right;
            width: 70px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style32 {
            width: 59px;
        }
        .auto-style33 {
            width: 61px;
        }
        .auto-style34 {
            width: 62px;
        }
        .auto-style42 {
            width: 67px;
        }
        .auto-style46 {
            width: 57px;
        }
        .auto-style47 {
            height: 26px;
            }
        .auto-style48 {
            width: 57px;
            height: 43px;
        }
        .auto-style49 {
            height: 43px;
        }
        .auto-style50 {
            width: 59px;
            height: 43px;
        }
        .auto-style51 {
            width: 61px;
            height: 43px;
        }
        .auto-style52 {
            width: 62px;
            height: 43px;
        }
        .auto-style53 {
            width: 70px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Panel ID="Panel10" runat="server" Height="530px" Width="1036px">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="0">
            <asp:View ID="View5" runat="server">
                <asp:Panel ID="Panel6" runat="server" Height="566px">
                    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" Height="180px" Width="1088px">
                        <table border="1px" class="auto-style12">
                            <tr>
                                <td class="auto-style48">
                                    <asp:Label ID="Label79" runat="server" Text="Date:."></asp:Label>
                                </td>
                                <td colspan="3" class="auto-style49">
                                    &#39;<asp:TextBox ID="d" runat="server"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="d_CalendarExtender" runat="server" BehaviorID="TextBox81_CalendarExtender" Format="dd/MM/yyyy" TargetControlID="d" />
                                </td>
                                <td class="auto-style50"></td>
                                <td class="auto-style50"></td>
                                <td class="auto-style50"></td>
                                <td class="auto-style50">
                                    <asp:Label ID="Label120" runat="server" Text="INTAKE"></asp:Label>
                                </td>
                                <td class="auto-style50"></td>
                                <td class="auto-style51">
                                    <asp:Label ID="Label121" runat="server" Text="OUTPUT"></asp:Label>
                                </td>
                                <td class="auto-style50"></td>
                                <td class="auto-style52"></td>
                                <td class="auto-style53"></td>
                                <td class="auto-style53"></td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:Label ID="Label69" runat="server" Text="TEMP"></asp:Label>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="Label70" runat="server" Text="PULSE"></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label71" runat="server" Text="B.P."></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label72" runat="server" Text="R.R."></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label73" runat="server" Text="SPO"></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label112" runat="server" Text="OXY."></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label113" runat="server" Text="RBS"></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label76" runat="server" Text="ORAL"></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label77" runat="server" Text="IV"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:Label ID="Label114" runat="server" Text="URINE"></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label119" runat="server" Text="STOOL"></asp:Label>
                                </td>
                                <td class="auto-style34">
                                    <asp:Label ID="Label117" runat="server" Text="Aspiration"></asp:Label>
                                </td>
                                <td class="auto-style22">
                                    <asp:Label ID="Label118" runat="server" Text="BEDSORE"></asp:Label>
                                </td>
                                <td class="auto-style22">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:TextBox ID="TextBox80" runat="server" Width="59px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style42">
                                    <asp:TextBox ID="TextBox22" runat="server" Width="59px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="TextBox14" runat="server" Width="51px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="TextBox69" runat="server" Width="51px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt" runat="server" Width="51px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt0" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt1" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt2" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt3" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="qt9" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="qt5" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style34">
                                    <asp:TextBox ID="qt6" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style22">
                                    <asp:TextBox ID="qt8" runat="server" Width="51px"></asp:TextBox>
                                </td>
                                <td class="auto-style22">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SUBMIT" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style47"  colspan="13">
                                    &nbsp;</td>
                                <td class="auto-style47">&nbsp;</td>
                            </tr>
                        </table>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="Panel4" runat="server" Height="169px">
                                    <asp:Panel ID="Panel11" runat="server" Height="200px" ScrollBars="Both" Width="100%">
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1037px" DataSourceID="SqlDataSource1">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                                <asp:BoundField DataField="temp" HeaderText="temp" SortExpression="temp" />
                                                <asp:BoundField DataField="pulse" HeaderText="pulse" SortExpression="pulse" />
                                                <asp:BoundField DataField="bp" HeaderText="bp" SortExpression="bp" />
                                                <asp:BoundField DataField="rr" HeaderText="rr" SortExpression="rr" />
                                                <asp:BoundField DataField="spo" HeaderText="spo" SortExpression="spo" />
                                                <asp:BoundField DataField="oxy" HeaderText="oxy" SortExpression="oxy" />
                                                <asp:BoundField DataField="rbs" HeaderText="rbs" SortExpression="rbs" />
                                                <asp:BoundField DataField="oral" HeaderText="oral" SortExpression="oral" />
                                                <asp:BoundField DataField="urine" HeaderText="urine" SortExpression="urine" />
                                                <asp:BoundField DataField="iv" HeaderText="iv" SortExpression="iv" />
                                                <asp:BoundField DataField="aspiration" HeaderText="aspiration" SortExpression="aspiration" />
                                                <asp:BoundField DataField="stool" HeaderText="stool" SortExpression="stool" />
                                                <asp:BoundField DataField="bedsore" HeaderText="bedsore" SortExpression="bedsore" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [date], [temp], [pulse], [bp], [rr], [spo], [oxy], [rbs], [oral], [urine], [iv], [aspiration], [stool], [bedsore] FROM [intake_output] WHERE ([io_id] = @io_id)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="io_id" SessionField="io_id" Type="Decimal" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel9" runat="server" Height="183px" ScrollBars="Both">
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1037px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                                                <asp:BoundField DataField="drug" HeaderText="Drug" SortExpression="drug" />
                                                <asp:BoundField DataField="dose" HeaderText="Dose" SortExpression="dose" />
                                                <asp:BoundField DataField="route" HeaderText="Route" SortExpression="route" />
                                                <asp:BoundField DataField="frequency" HeaderText="Frequency" SortExpression="frequency" />
                                                <asp:CommandField ShowSelectButton="True" />
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
                                    </asp:Panel>
                                    <br />
                                </asp:Panel>
                                <asp:Panel ID="Panel5" runat="server">
                                </asp:Panel>
                            </ContentTemplate>
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
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
</asp:Content>

