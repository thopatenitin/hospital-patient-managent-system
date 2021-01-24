<%@ Control Language="C#" AutoEventWireup="true" CodeFile="room_master.ascx.cs" Inherits="USERCONTROL_IPD_room_master" %>



<link href="../../theme/gridview.css" rel="stylesheet" type="text/css" />

<style type="text/css">
    .auto-style1 {
        width: 854px;
    }
</style>

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <table  style="background-color: #D9D5D7" class="auto-style1" >
            <tr>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label66" runat="server" Text="Date Of Addmission"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    
                </td>
                <td >
                    <asp:Label ID="Label74" runat="server" Text="Time Of Addmision"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowCommand="GridView3_RowCommand" Width="848px">
                        <Columns>
                            <asp:BoundField DataField="room_no" HeaderText="Room No" SortExpression="room_no" />
                            <asp:BoundField DataField="no_bed" HeaderText="No. of Bed" SortExpression="no_bed" />
                            <asp:BoundField DataField="occupied" HeaderText="Occupied" SortExpression="occupied" />
                            <asp:BoundField DataField="room_type" HeaderText="Room Type" SortExpression="room_type" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%#Eval("room_no") %>' CommandName="Select" Height="20px" ImageUrl="~/NewFolder1/if_view-01_186381.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [room_no], [room_type], [no_bed], [occupied] FROM [room_master]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataKeyNames="bed_no" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" SourceID="SqlDataSource2" Width="854px">
                        <Columns>
                            <asp:BoundField DataField="bed_no" HeaderText="bed_no" ReadOnly="True" SortExpression="bed_no" />
                            <asp:BoundField DataField="room_no" HeaderText="room_no" SortExpression="room_no" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [bed_no], [room_no], [status] FROM [palm_bed_category] WHERE ([room_no] = @room_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="room_no" SessionField="room_no" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table>
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
    </asp:View>
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server">
            <table >
                <tr>
                    <td class="auto-style23" >
                        <asp:Image ID="Image1" runat="server" Height="106px" ImageUrl="~/NewFolder1/logo(1).png" Width="297px" />
                    </td>
                    <td class="auto-style12">
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
                        <asp:Panel ID="panel" runat="server">
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label75" runat="server" Text="Date of Addmision"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label88" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label76" runat="server" Text="Date of Discharge"></asp:Label>
                                        &nbsp;<asp:Label ID="Label89" runat="server" Font-Underline="False">__________________</asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="Label77" runat="server" Text="PRN"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label90" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label91" runat="server">Patient&#39;s Name :</asp:Label>
                                    </td>
                                    <td class="auto-style15">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label92" runat="server">Father / Husbend Name:</asp:Label>
                                    </td>
                                    <td class="auto-style15">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label93" runat="server">Date Of Birth :.</asp:Label>
                                        <asp:Label ID="Label96" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label94" runat="server">Age:.</asp:Label>
                                        <asp:Label ID="Label97" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label95" runat="server">Gender:</asp:Label>
                                        <asp:Label ID="Label98" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label99" runat="server">Nationality</asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label101" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label100" runat="server">Passport No:.</asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label102" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label103" runat="server">Present Address:.</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label104" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label105" runat="server">State:.</asp:Label>
                                        &nbsp;<asp:Label ID="Label109" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label106" runat="server">Pin Code :.</asp:Label>
                                        &nbsp;<asp:Label ID="Label110" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label108" runat="server">Country:.</asp:Label>
                                        &nbsp;<asp:Label ID="Label111" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label112" runat="server">Tele. No:.</asp:Label>
                                        <asp:Label ID="Label115" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="Label113" runat="server">Mobile No:.</asp:Label>
                                        <asp:Label ID="Label116" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label114" runat="server">Email Id:.</asp:Label>
                                        <asp:Label ID="Label118" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label119" runat="server">Ref. Doctor:.</asp:Label>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label120" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label122" runat="server">Permanant Address:.</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label121" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label123" runat="server">State:.</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label124" runat="server">Pin Code:.</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label125" runat="server">Email id:.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label126" runat="server">Name of the treating Consultant :. </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label127" runat="server"></asp:Label>
                                        &nbsp;<asp:Label ID="Label128" runat="server"></asp:Label>
                                        &nbsp;<asp:Label ID="Label129" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label131" runat="server">Next Of kin: (Please mention to inform in case of emergency)</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label130" runat="server">Name:.</asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label132" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label133" runat="server">Relationship:.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17" colspan="2">
                                        <asp:Label ID="Label134" runat="server">Mobile No:.</asp:Label>
                                        &nbsp;<asp:Label ID="Label000" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style17"></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label135" runat="server" Font-Bold="True">Room Teriff Card is Available  at admission desk , please ask for the details.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label136" runat="server">Preference of bed category is subject to availbility</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Delux" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Private Room" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Semi Private Room" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="CheckBox7" runat="server" Text="Genral Ward" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label137" runat="server">Do you having any following facility</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label138" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label139" runat="server">I Undertake to pay the shortfall in the event the final bill amount is not fully paid by  the insurance co./TPA/Corporate under the cashless and credit arrangement.</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label140" runat="server" Font-Bold="True">Please Note:.</asp:Label>
                                        <br />
                                        <asp:Label ID="Label141" runat="server">Credit/Cashless facility is offered only to the patients from insurance covered(TPA),corporate/PSU and Schemes having an understanding agreement  with palmbeach Hospital &amp; Dignostic Center , Vashi </asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label142" runat="server">Supporting documents /Card should be produced at the admission, in case of emergency ,card shoud be produced within 24 hrs of the admission ,Only one facility will be accepted at the time of admission.</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label143" runat="server">Upgradation of room will effect all surgery/procedure, the surgical procedure related charges from the date of admission . If adpted for lower room category, the charges the charges willbe effective from date of occupancy with prior approval. However all the surgery/procedure relatedcharges will be charged on earlier occupied room category.</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label144" runat="server">I have made to understand clearly in an understandable language about the policies &amp; protocols  of the hospital and i take the resposiblity to clear all the bills of the hospitals. I also Undertake to pay the intrim paymentsas when demanded by the hospital</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label145" runat="server">Signature of the Patient / Next Of kin. :</asp:Label>
                                        <table class="auto-style8">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label154" runat="server">Name of Patient /Next of Kin:. </asp:Label>
                                                    <asp:Label ID="Label155" runat="server">________________________________________________________________________________________________</asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label146" runat="server">Name of Patient /Next of Kin:. </asp:Label>
                                        <asp:Label ID="Label152" runat="server">________________________________________________________________________________________________</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label147" runat="server">Relation With patient :.</asp:Label>
                                        <asp:Label ID="Label149" runat="server">____________________________</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label150" runat="server">Tele. No:.</asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label151" runat="server">____________________________</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>









