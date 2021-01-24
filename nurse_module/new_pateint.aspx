<%@ Page Title="" Language="C#" MasterPageFile="~/nurse_module/nursemodule.master" AutoEventWireup="true" CodeFile="new_pateint.aspx.cs" Inherits="nurse_module_new_pateint" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<asp:Content ID="Content3" ContentPlaceHolderID="Content_td" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <br />
      <asp:Panel ID="Panel9" runat="server" BackColor="White">
          <asp:Panel ID="Panel8" runat="server">
              <fieldset style="border:2px solid black;" class="auto-style25">
                  <legend>
                      <asp:Label runat="server" Text="Personal Information" Font-Bold="True" Font-Size="16pt" ID="Label40"></asp:Label>
                  </legend>
                  <table class="auto-style7">
                      <tr>
                          <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Required Feilds*" ID="Label39"></asp:Label>
                              <br />
                          </td>
                          <td class="auto-style22">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td style="vertical-align:top;">
                              <asp:Label runat="server" Text="Department" ID="Label66"></asp:Label>
                          </td>
                          <td class="auto-style22">
                              <asp:RadioButtonList ID="redirect" runat="server" Height="25px" RepeatDirection="Horizontal" Width="220px">
                                  <asp:ListItem>OPD</asp:ListItem>
                                  <asp:ListItem>IPD</asp:ListItem>
                                  <asp:ListItem>Pathology</asp:ListItem>
                              </asp:RadioButtonList>
                              <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label ID="Label55" runat="server" Text="Title"></asp:Label>
                              &nbsp;<br /> </td>
                          <td class="auto-style22">
                              <asp:DropDownList ID="DropDownList14" runat="server">
                                  <asp:ListItem>Mr.</asp:ListItem>
                                  <asp:ListItem>Miss.</asp:ListItem>
                                  <asp:ListItem>Mrs</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Last Name*" ID="Label2"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:TextBox runat="server" ID="TextBox26"></asp:TextBox>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox26" ErrorMessage="Fill Last Name" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                      </tr>
                      <tr>
                          <td class="auto-style10"></td>
                          <td class="auto-style23">
                              <asp:Label runat="server" Text="First Name*" ID="Label30"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style24">
                              <asp:TextBox runat="server" ID="first_name"></asp:TextBox>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="first_name" ErrorMessage="Fill First Name" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
                              <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Middle Name*" ID="Label31"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:TextBox runat="server" ID="m_n"></asp:TextBox>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="m_n" ErrorMessage="Fill Last Name" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                              <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10" >&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Father/Husbend Name*" ID="Label32"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22" >
                              <asp:TextBox runat="server" ID="TextBox28"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Mother Name*" ID="Label33"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:TextBox runat="server" ID="TextBox29"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Age*" ID="Label35"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:TextBox runat="server" ID="TextBox31"></asp:TextBox>
                              <ajaxToolkit:FilteredTextBoxExtender runat="server" FilterType="Numbers" BehaviorID="TextBox31_FilteredTextBoxExtender" TargetControlID="TextBox31" ID="TextBox31_FilteredTextBoxExtender">
                              </ajaxToolkit:FilteredTextBoxExtender>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox31" ErrorMessage="Fill Age" ID="RequiredFieldValidator18"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Gender*" ID="Label36"></asp:Label>
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ID="RadioButtonList2">
                                  <asp:ListItem>Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                              </asp:RadioButtonList>
                              <br />
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Select Gender" ID="RequiredFieldValidator5"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Blood Group*" ID="Label37"></asp:Label>
                              <br />
                              <br />
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:DropDownList runat="server" ID="DropDownList7">
                                  <asp:ListItem>Unknown</asp:ListItem>
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
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Refrenced Doctor:" ID="Label65"></asp:Label>
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:TextBox runat="server" ID="refdoc"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Enter Ref. Doctor"></asp:RequiredFieldValidator>
                              <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>
                              <asp:Label runat="server" Text="Civil Status*" ID="Label38"></asp:Label>
                              <br />
                          </td>
                          <td class="auto-style22">
                              <asp:DropDownList runat="server" ID="DropDownList8">
                                  <asp:ListItem>Married</asp:ListItem>
                                  <asp:ListItem Selected="True">Single</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">&nbsp;</td>
                          <td>&nbsp;</td>
                          <td class="auto-style22">&nbsp;&nbsp;<br />
                              <br />
                          </td>
                      </tr>
                  </table>
              </fieldset></asp:Panel>
          <asp:Panel ID="Panel1" runat="server">
             <table class="auto-style4">
                  <tr>
                      <td class="auto-style9">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                      <td class="auto-style9">
                          <fieldset style="border: 2px solid black;">
                              <legend>Permant Address</legend>
                              <table class="auto-style18">
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
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox22" ErrorMessage="Fill House No"></asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style16">&nbsp;</td>
                                      <td class="auto-style16">
                                          <asp:Label ID="Label42" runat="server" Text="Build/Society *"></asp:Label>
                                      </td>
                                      <td class="auto-style15">
                                          <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox33" ErrorMessage="Fill Address Field"></asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style16">&nbsp;</td>
                                      <td class="auto-style16">
                                          <asp:Label ID="Label43" runat="server" Text="Area*"></asp:Label>
                                      </td>
                                      <td class="auto-style15">
                                          <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox34" ErrorMessage="Fill Address Field"></asp:RequiredFieldValidator>
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
                                          <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource1" DataTextField="country_desc" DataValueField="country_code">
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
                                          <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource2" DataTextField="state_desc" DataValueField="state_code">
                                          </asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master] ">
                                          </asp:SqlDataSource>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList10" ErrorMessage="Select State"></asp:RequiredFieldValidator>
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
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox33" ErrorMessage="Enter Mobile No"></asp:RequiredFieldValidator>
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
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                      <td>
                          <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Same As Permanant Address" />
                          &nbsp;<asp:Panel ID="Panel7" runat="server">
                              <fieldset style="border: 2px solid black;">
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
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox1" ErrorMessage="Fill Address Field"></asp:RequiredFieldValidator>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style26">
                                              <asp:Label ID="Label3" runat="server" Text="Build/Society *"></asp:Label>
                                          </td>
                                          <td class="auto-style26">
                                              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill Address Field"></asp:RequiredFieldValidator>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style14">
                                              <asp:Label ID="Label4" runat="server" Text="Area*"></asp:Label>
                                          </td>
                                          <td class="auto-style13">
                                              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox4" ErrorMessage="Fill Address Field"></asp:RequiredFieldValidator>
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
                                              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [country_code], [country_desc] FROM [palm_country_master]"></asp:SqlDataSource>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style14">
                                              <asp:Label ID="Label61" runat="server" Text="State*"></asp:Label>
                                          </td>
                                          <td class="auto-style13">
                                              <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="state_desc" DataValueField="state_code">
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [state_code], [state_desc] FROM [palm_state_master] WHERE ([country_id] = @country_id)">
                                                  <SelectParameters>
                                                      <asp:ControlParameter ControlID="DropDownList1" Name="country_id" PropertyName="SelectedValue" Type="Int32" />
                                                  </SelectParameters>
                                              </asp:SqlDataSource>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select State"></asp:RequiredFieldValidator>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style14">
                                              <asp:Label ID="Label62" runat="server" Text="District*"></asp:Label>
                                          </td>
                                          <td class="auto-style13">
                                              <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
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
                                              <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Mobile No."></asp:RequiredFieldValidator>
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
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button6" runat="server" BorderStyle="None" Height="29px" OnClick="Button5_Click" Text="Save" Width="72px" />
              <ajaxToolkit:DropShadowExtender ID="Button6_DropShadowExtender" runat="server" BehaviorID="Button6_DropShadowExtender" TargetControlID="Button6" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </asp:Panel>
      </asp:Panel>
    </asp:Content>

