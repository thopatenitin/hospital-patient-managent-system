<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" DelimiterCharacters="" MinimumPrefixLength="1" ServiceMethod="getcomplain" ServicePath="" TargetControlID="TextBox1">
            </ajaxToolkit:AutoCompleteExtender>
        </div>
    </form>
</body>
</html>
