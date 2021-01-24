<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/IPD/admit.master" AutoEventWireup="true" CodeFile="ipdreg.aspx.cs" Inherits="IPD_ipdreg" %>
<%@ MasterType VirtualPath="~/nurse_module/IPD/admit.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <script  type="text/javascript">
        function printpage()
        {
            var getpanal = document.getElementById("<%=Panel3.ClientID%>");
            var mainwindow = window.open('', '', 'height=500,width=800');
            mainwindow.document.write('<html moznomarginboxes mozdisallowselectionprint>><head></head><body>');
            mainwindow.document.write(getpanal.innerHTML);
            mainwindow.document.write('</body></html>');
            mainwindow.document.close();
            setTimeout(function () { mainwindow.print(); }, 500);
            return false;
        }
        
    </script>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel7" runat="server" BackColor="White">
                <link href="../theme/gridview.css" rel="stylesheet" />
                <table class="auto-style1" style="background-color: #D9D5D7; width: 779px;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
                            <asp:Label ID="Label66" runat="server" Text="Date Of Addmission"></asp:Label>
                        </td>
                        <td style="height: 26px">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" BehaviorID="TextBox5_CalendarExtender" TargetControlID="TextBox5" />
                        </td>
                        <td style="height: 26px">
                            <asp:Label ID="Label74" runat="server" Text="Time Of Addmision"></asp:Label>
                        </td>
                        <td style="height: 26px">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style10">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Date of Addmission" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style11">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Time of Addmission" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="777px">
                    <Columns>
                        <asp:BoundField DataField="room_no" HeaderText="Room No" SortExpression="room_no" />
                        <asp:BoundField DataField="room_type" HeaderText="Room Type" SortExpression="room_type" />
                        <asp:BoundField DataField="no_bed" HeaderText="No. Of Beds" SortExpression="no_bed" />
                        <asp:BoundField DataField="occupied" HeaderText="Occupied" SortExpression="occupied" />
                        <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                    </Columns>
                    <SortedAscendingCellStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" />
                    <SortedDescendingCellStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [room_no], [room_type], [no_bed], [occupied] FROM [room_master]"></asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" Width="798px">
                    <Columns>
                        <asp:BoundField DataField="room_no" HeaderText="Room No." SortExpression="room_no" />
                        <asp:BoundField DataField="bed_no" HeaderText="Bed No." SortExpression="bed_no" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:Button ID="Button3" runat="server" Height="36px" OnClick="Button3_Click" Text="Back" Width="95px" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [room_no], [bed_no], [status] FROM [palm_bed_category] WHERE ([room_no] = @room_no)">
                    <SelectParameters>
                        <asp:SessionParameter Name="room_no" SessionField="room_no" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel8" runat="server" BackColor="White">
                <table style="width: 803px">
            <tr>
                <td class="auto-style12" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="Label67" runat="server" Font-Bold="True" Font-Underline="True" Text="Next Of Kin:."></asp:Label>
                    <asp:Label ID="Label68" runat="server" Text="(Please mention To Inform In Case Of Emergency)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label69" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label70" runat="server" Text="Relationship"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label71" runat="server" Text="Mobile No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label72" runat="server" Text="Do pateint have any of the following facility"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table class="auto-style8">
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Insurance/TPA Coverage" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Corporate/PSU" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="If any other" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:Label ID="Label73" runat="server" Text="Please Specify"></asp:Label>
                                    :
                                    <asp:TextBox ID="TextBox4" runat="server" Height="46px" TextMode="MultiLine" Width="237px"></asp:TextBox>
                                </asp:Panel>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="39px" Text="Submit" Width="118px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View3" runat="server"><asp:Panel ID="Panel3" runat="server" BackColor="White">
            <table >
                <tr>
                    <td class="auto-style23" style="width: 461px; height: 106px;" >
                        <asp:Image ID="Image1" runat="server" Height="97px" ImageUrl="~/NewFolder1/logo(1).png" Width="284px" />
                    </td>
                    <td class="auto-style12" style="height: 106px">
                        <asp:Label ID="Label156" runat="server" Text="Plot no:. 249 , Palm beach Road Vashi , Sector:.-28, Kopri Petrol pump, VASHI,Navi Mumbai-703"></asp:Label>
                        <br />
                        <asp:Label ID="Label157" runat="server" Font-Bold="True" Font-Underline="True">Ph:. 02227668119 Mob.: 7718032077          </asp:Label>
                        <br />
                        <asp:Label ID="Label158" runat="server">Sector:.12A, Opp. Kalash udhyan Society, Near Ashwith Hotel ,Behind Petrol pump, Koperkhairane ,Navi Mumbai - 400709</asp:Label>
                        <br />
                        <asp:Label ID="Label159" runat="server" Font-Bold="True">Mob.: +91-7709887039 / 9867924061</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Panel ID="panel" runat="server" BorderStyle="Ridge">
                            <table style="width:100%;" border="1">
                                <tr>
                                    <td colspan="2"><table style="width: 917px"><tr>  <td colspan="2">                                     <asp:Label ID="Label75" runat="server" Text="Date of Addmision" Font-Bold="True"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label88" runat="server"></asp:Label>
                                        &nbsp;<asp:Label ID="Label173" runat="server" Font-Bold="True" Text="Time : "></asp:Label>
                                        <asp:Label ID="toa" runat="server" Font-Underline="False">________</asp:Label>
                                        &nbsp;&nbsp;<asp:Label ID="Label76" runat="server" Font-Bold="True" Text="Date of Discharge"></asp:Label>
                                        &nbsp;<asp:Label ID="Label89" runat="server" Font-Underline="False">_________________</asp:Label>
                                        <asp:Label ID="Label174" runat="server" Font-Bold="True" Text="Time : "></asp:Label>
                                        <asp:Label ID="tod" runat="server" Font-Underline="False">_______</asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label77" runat="server" Text="PRN" Font-Bold="True"></asp:Label>
                                        &nbsp;<asp:Label ID="Label90" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label91" runat="server" Font-Bold="True">Patient&#39;s Name :</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label164" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label92" runat="server" Font-Bold="True">Father / Husbend Name:</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label163" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label95" runat="server" Font-Bold="True">Gender:</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label98" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label94" runat="server" Font-Bold="True">Age:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label161" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label99" runat="server" Font-Bold="True">Nationality</asp:Label>
                                        &nbsp; </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label101" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label112" runat="server" Font-Bold="True">Tele. No:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="telephone" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label170" runat="server" Font-Bold="True">Mobile No:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="mobile" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label172" runat="server" Font-Bold="True">Email Id:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="emailid" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label119" runat="server" Font-Bold="True">Ref. Doctor:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label120" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label126" runat="server" Font-Bold="True">Name of the treating Consultant :. </asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label169" runat="server"></asp:Label>
                                        <asp:Label ID="Label128" runat="server"></asp:Label>
                                        <asp:Label ID="Label129" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label131" runat="server" Font-Bold="True">Next Of kin: (Please mention to inform in case of emergency)</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label130" runat="server" Font-Bold="True">Name:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label132" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label134" runat="server" Font-Bold="True">Mobile No:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="Label000" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 226px">
                                        <asp:Label ID="Label133" runat="server" Font-Bold="True">Relationship:.</asp:Label>
                                    </td>
                                    <td style="width: 487px">
                                        <asp:Label ID="lab0" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label135" runat="server" Font-Bold="True">Room Teriff Card is Available  at admission desk , please ask for the details.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label136" runat="server">Preference of bed category is subject to availbility</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Delux" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Private Room" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Semi Private Room" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="checkbox0" runat="server" Text="Genral Ward" /></tr></table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label103" runat="server" Font-Bold="True">Present Address:.</asp:Label>
                                    </td>
                                    <td colspan="2" rowspan="2">
                                        <asp:Label ID="Label166" runat="server"></asp:Label>
                                        <asp:Label ID="Label105" runat="server" Font-Bold="True">State:.</asp:Label>
                                        <asp:Label ID="Label109" runat="server"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label108" runat="server" Font-Bold="True">Country:.</asp:Label>
                                        <asp:Label ID="Label111" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label106" runat="server" Font-Bold="True">Pin Code :.</asp:Label>
                                        &nbsp;<asp:Label ID="Label110" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label122" runat="server" Font-Bold="True">Permanant Address:.</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label121" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label123" runat="server" Font-Bold="True">State:.</asp:Label>
                                        <asp:Label ID="Label168" runat="server"></asp:Label>
                                        <asp:Label ID="Label124" runat="server" Font-Bold="True">Pin Code:.</asp:Label>
                                        <asp:Label ID="label0" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label139" runat="server">I Undertake to pay the shortfall in the event the final bill amount is not fully paid by  the insurance co./TPA/Corporate under the cashless and credit arrangement.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label140" runat="server" Font-Bold="True">Please Note:.</asp:Label>
                                        <br />
                                        <asp:Label ID="Label141" runat="server">Credit/Cashless facility is offered only to the patients from insurance covered(TPA),corporate/PSU and Schemes having an understanding agreement  with palmbeach Hospital &amp; Dignostic Center , Vashi </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label142" runat="server">Supporting documents /Card should be produced at the admission, in case of emergency ,card shoud be produced within 24 hrs of the admission ,Only one facility will be accepted at the time of admission.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label143" runat="server">Upgradation of room will effect all surgery/procedure, the surgical procedure related charges from the date of admission . If adpted for lower room category, the charges the charges willbe effective from date of occupancy with prior approval. However all the surgery/procedure relatedcharges will be charged on earlier occupied room category.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label144" runat="server">I have made to understand clearly in an understandable language about the policies &amp; protocols  of the hospital and i take the resposiblity to clear all the bills of the hospitals. I also Undertake to pay the intrim paymentsas when demanded by the hospital</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label145" runat="server">Signature of the Patient / Next Of kin. :</asp:Label>
                                        <table >
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label154" runat="server">Name of Patient /Next of Kin:. </asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label146" runat="server" Font-Bold="True">Name of Patient /Next of Kin:. </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label147" runat="server" Font-Bold="True">Relation With patient :.</asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label150" runat="server" Font-Bold="True">Tele. No:.</asp:Label>
                                        &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 461px">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 461px">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 461px"></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 461px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 461px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
            <asp:Button ID="Button2" runat="server" Text="Print" OnClientClick="return printpage();" />
        </asp:View>
        <br />
        <asp:View ID="View4" runat="server">
            <asp:Panel ID="Panel9" runat="server" BackColor="White" Height="134px">
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Content>

