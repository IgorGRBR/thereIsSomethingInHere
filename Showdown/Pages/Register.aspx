<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Showdown.Pages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>Register Form</h4>
        Username:<asp:TextBox ID="UN_Box" runat="server"></asp:TextBox>
        <br />
        Email:<asp:TextBox ID="EM_Box" runat="server"></asp:TextBox>
        <br />
        Password:<asp:TextBox ID="PW_Box" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Repeat password:<asp:TextBox ID="PW2_Box" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Account type:<asp:DropDownList ID="DDL_Type" runat="server">
            <asp:ListItem Selected="True" Value="1">Artist</asp:ListItem>
            <asp:ListItem Value="2">Seeker</asp:ListItem>
            <asp:ListItem Value="0">Admin</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Error_Text" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button_Register" runat="server" Text="Register" OnClick="Button_Register_Click" />
        <br />
        <br />
        Already have an account? <a href="Pages/Login.aspx">Login</a><br />
        <a href="../Index.aspx">Go back.</a>
    </div>
    </form>
</body>
</html>
