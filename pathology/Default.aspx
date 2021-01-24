<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="pathology_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <ajaxToolkit:ComboBox ID="ComboBox1" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </ajaxToolkit:ComboBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" TargetControlID="TextBox1">
        </ajaxToolkit:AutoCompleteExtender>
        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" FilterType="UppercaseLetters" TargetControlID="TextBox1" />
        <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" />
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <ajaxToolkit:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" BehaviorID="Button1_ConfirmButtonExtender" ConfirmText="" TargetControlID="Button1" />
    </form>
</body>
</html>
