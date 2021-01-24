<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pateint_master.ascx.cs" Inherits="USERCONTROL_pateint_master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<style type="text/css">


.Grid {background-color: #fff; border:none; margin: 5px 0 10px 0;  font-family:Calibri; color: #474747;
       
}

    .auto-style1 {
        width: 953px;
    }

    .auto-style2 {
        width: 911px;
    }

    .auto-style3 {
        width: 100%;
    }

</style>

<asp:Panel ID="Panel1" runat="server" Height="278px" Width="999px">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel2" runat="server">
                <table class="auto-style3">
                    <tr>
                        <td style="background-color: #00CCFF">
                            <asp:Label ID="Label66" runat="server" Text="New Pateints"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="Grid" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="97px" OnSelectedIndexChanged="Grid_SelectedIndexChanged" ShowHeaderWhenEmpty="True" Width="756px">
                                <Columns>
                                    <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
                                    <asp:BoundField DataField="pateient_title" SortExpression="pateient_title" />
                                    <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
                                    <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                    <asp:BoundField DataField="civil_status" HeaderText="Civil Status" SortExpression="civil_status" />
                                    <asp:CommandField HeaderText="Action" SelectText="Check In" ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle BorderStyle="None" ForeColor="#CCFFFF" />
                                <SelectedRowStyle BackColor="Silver" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT pateint_code, gender, pateient_first_name, pateient_last_name, pateient_title, civil_status FROM palm_pateint_master WHERE (is_check_in = @is_check_in) AND (is_discharge = @is_discharge)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="0" Name="is_check_in" Type="String" />
                                    <asp:Parameter DefaultValue="0" Name="is_discharge" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #00CCFF">
                            <asp:Label ID="Label67" runat="server" Text="Checked In Pateints"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="Grid0" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="Grid" DataSourceID="SqlDataSource6" GridLines="Horizontal" Height="97px" OnSelectedIndexChanged="Grid_SelectedIndexChanged" ShowHeaderWhenEmpty="True" Width="756px">
                                <Columns>
                                    <asp:BoundField DataField="pateint_code" HeaderText="Pateint Code" SortExpression="pateint_code" />
                                    <asp:BoundField DataField="pateient_title" SortExpression="pateient_title" />
                                    <asp:BoundField DataField="pateient_first_name" HeaderText="First Name" SortExpression="pateient_first_name" />
                                    <asp:BoundField DataField="pateient_last_name" HeaderText="Last Name" SortExpression="pateient_last_name" />
                                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                    <asp:BoundField DataField="civil_status" HeaderText="Civil Status" SortExpression="civil_status" />
                                    <asp:CommandField HeaderText="Action" SelectText="Check In" ShowSelectButton="True" />
                                </Columns>
                                <PagerStyle BorderStyle="None" ForeColor="#CCFFFF" />
                                <SelectedRowStyle BackColor="Silver" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT pateint_code, gender, pateient_first_name, pateient_last_name, pateient_title, civil_status FROM palm_pateint_master WHERE (is_check_in = @is_check_in) AND (is_discharge = @is_discharge)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="is_check_in" Type="String" />
                                    <asp:Parameter DefaultValue="0" Name="is_discharge" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel3" runat="server"><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Height="692px" Width="1006px" EnableTheming="True" OnActiveTabChanged="TabContainer1_ActiveTabChanged">
    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
        <HeaderTemplate>
            personal Information&nbsp;&nbsp;&nbsp;&nbsp;
        </HeaderTemplate>
        <ContentTemplate>
            
            <br />
            &nbsp;&nbsp;
           
            <asp:Panel ID="Panel4" runat="server">
              
              <fieldset style="border:2px solid black;" class="auto-style25"><legend><asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="16pt" Text="Personal Information"></asp:Label></legend>   <table class="auto-style1">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:Label ID="Label39" runat="server" Text="Required Feilds*"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style22">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label55" runat="server" Text="Title"></asp:Label>
                            &nbsp;<br /> </td>
                        <td class="auto-style22">
                            <asp:DropDownList ID="DropDownList14" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Miss.</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Last Name*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            </td>
                        <td class="auto-style23">
                            <asp:Label ID="Label30" runat="server" Text="First Name*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label31" runat="server" Text="Middle Name*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label32" runat="server" Text="Father/Husbend Name*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22" >
                            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label33" runat="server" Text="Mother Name*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label34" runat="server" Text="Date Of Birth*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="TextBox30_CalendarExtender" runat="server" BehaviorID="TextBox30_CalendarExtender" TargetControlID="TextBox30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label35" runat="server" Text="Age*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                            <ajaxToolkit:FilteredTextBoxExtender ID="TextBox31_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox31_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox31" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label36" runat="server" Text="Gender*"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label37" runat="server" Text="Blood Group*"></asp:Label>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label65" runat="server" Text="Refrenced Doctor:"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label38" runat="server" Text="Civil Status*"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style22">
                            <asp:DropDownList ID="DropDownList8" runat="server">
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style22">&nbsp;&nbsp;<br />
                            <br />
                            <asp:Button ID="Button3" runat="server" BorderStyle="None" Height="35px" OnClick="Button3_Click" Text="Next" Width="115px" />
                        </td>
                    </tr>
                </table></fieldset>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
        </ContentTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
        <HeaderTemplate>
            &nbsp;&nbsp; Contact Information&nbsp;&nbsp;&nbsp;
        </HeaderTemplate>
        <ContentTemplate>
            &nbsp;&nbsp;<br /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style2">
                <tr>
                    <td class="auto-style9">
                        <fieldset style="border:2px solid black;">
                            <legend>Permant Address</legend>
                            <table class="auto-style8">
                                <tr>
                                    <td>&nbsp;&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label41" runat="server" Text="No. Of House *"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label42" runat="server" Text="Build/Society *"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label43" runat="server" Text="Area*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label44" runat="server" Text="Locality*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label45" runat="server" Text="Town*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label56" runat="server" Text="Country*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="country_desc" DataValueField="country_code">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label57" runat="server" Text="State*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="state_desc" DataValueField="state_code">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label58" runat="server" Text="District*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label48" runat="server" Text="City*"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label59" runat="server" Text="Tal *"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label50" runat="server" Text="Tele. Phone "></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label51" runat="server" Text="Mobile No *"></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label25" runat="server" Text="Email ID "></asp:Label>
                                    </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label26" runat="server" Text="Pin Code*"></asp:Label>
                                    </td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset></td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Same As Permanant Address" />
                        &nbsp;<asp:Panel ID="Panel7" runat="server">
                            <fieldset style="border:2px solid black;">
                                <legend>Current Address</legend>
                                <table class="auto-style18">
                                    <tr>
                                        <td class="auto-style17" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label1" runat="server" Text="No. Of House *"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label3" runat="server" Text="Build/Society *"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label4" runat="server" Text="Area*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label5" runat="server" Text="Locality*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label6" runat="server" Text="Town*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label60" runat="server" Text="Country*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="country_desc" DataValueField="country_code">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=DESKTOP-D41R48C\SQLEXPRESS;Initial Catalog=palm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label61" runat="server" Text="State*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="state_desc" DataValueField="state_code">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label62" runat="server" Text="District*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox47" runat="server" OnTextChanged="TextBox47_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label63" runat="server" Text="Tal *"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label64" runat="server" Text="City*"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label12" runat="server" Text="Tele. Phone "></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label13" runat="server" Text="Mobile No *"></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">
                                            <asp:Label ID="Label14" runat="server" Text="Email ID "></asp:Label>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label15" runat="server" Text="Pin Code*"></asp:Label>
                                            <br />
                                        </td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset></asp:Panel>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" BorderStyle="None" Height="29px" OnClick="Button5_Click" Text="Update" Width="72px" />
            <ajaxToolkit:DropShadowExtender ID="Button6_DropShadowExtender" runat="server" BehaviorID="Button5_DropShadowExtender" TargetControlID="Button6" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ContentTemplate>
    </ajaxToolkit:TabPanel>
</ajaxToolkit:TabContainer>




</p>
            </asp:Panel>
        </asp:View>
    </asp:MultiView>
</asp:Panel>

