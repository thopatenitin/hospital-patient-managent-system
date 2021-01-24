<%@ Page Title="" Language="C#" MasterPageFile="~/doctor_module/MasterPage2.master" AutoEventWireup="true" CodeFile="vitalsign.aspx.cs" Inherits="vitalsign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

           
    
    
   
    
    .auto-style20 {
        height: 768px;
        width: 965px;
    }
    .auto-style14 {
        position: relative;
        left: 2px;
        top: 20px;
        width: 895px;
        height: 260px;
        right: 33px;
    }
        
    .auto-style5 {
        height: 30px;
    }
    .auto-style6 {
        width: 274px;
        height: 30px;
    }
        
   
    
    
   
    
    .auto-style12 {
        width: 221px;
        height: 30px;
    }
    .auto-style16 {
        width: 236px;
        height: 30px;
    }
    .auto-style18 {
        width: 274px;
    }
    .auto-style13 {
        width: 221px;
    }
    .auto-style19 {
        width: 236px;
    }
    
   
    
    
   
    
    .auto-style11 {
        width: 100%;
    }
    
   
    
    
   
    
    .auto-style22 {
        width: 161px;
    }
    .auto-style23 {
        height: 22px;
        width: 161px;
    }
    
   
    
    
   
    
    .auto-style21 {
        height: 22px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
       
   
    <table id="optable">
        <tr>
            <td rowspan="3" style="vertical-align:top; background-color:#fff;">
                <ul">
                <li id="licss" style="list-style:none; border-top:4px solid #069; ">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    Vital Parameters</li><hr />
                    <asp:Panel ID="Panel2" runat="server" Height="782px" Width="986px">
                            &nbsp;<fieldset class="auto-style20">
                                <legend>Genral Examination</legend>
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label22" runat="server" Text="Built"></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            &nbsp;</td>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label58" runat="server" Text="pulse"></asp:Label>
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label25" runat="server" Text="BP"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Text="RR"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label59" runat="server" Text="Pallor"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="qt" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" Text="Cyanosis"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label24" runat="server" Text="Clubbimg"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label60" runat="server" Text="Peripheral Pulse"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label27" runat="server" Text="JVP"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label61" runat="server" Text="HJR"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label64" runat="server" Text="Oedema"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label67" runat="server" Text="Adenopathy"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label62" runat="server" Text="Icterus"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label65" runat="server" Text="Erruptions"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label75" runat="server" Text="Others"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="TextBox47" runat="server" Height="44px" Width="268px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <table class="auto-style11">
                                                <tr>
                                                    <td class="auto-style22">
                                                        <asp:Label ID="Label68" runat="server" Text="CVS"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox36" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style23">
                                                        <asp:Label ID="Label69" runat="server" Text="R/S"></asp:Label>
                                                    </td>
                                                    <td class="auto-style21">
                                                        <asp:TextBox ID="TextBox42" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <asp:Label ID="Label70" runat="server" Text="P/A"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox43" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <asp:Label ID="Label71" runat="server" Text="CNS"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox44" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <asp:Label ID="Label72" runat="server" Text="PS./PV."></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox45" runat="server" Height="62px" TextMode="MultiLine" Width="716px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">&nbsp;</td>
                                                    <td>
                                                        <br />
                                                        <br />
                                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset></asp:Panel>
                    </td>
        </tr>
        <tr>
            <td style="vertical-align:top; background-color:#fff;">&nbsp;</td>
        </tr>
    </table>
    
       
   
</asp:Content>

