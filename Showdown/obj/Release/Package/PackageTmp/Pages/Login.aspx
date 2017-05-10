<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Showdown.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('../Artwork/aw2.jpg'); left: -1%; top: -1%; background-size: 100%; background-repeat: repeat; width: 101%; height: 101%; position:absolute">
    <div style=" width: 50%; height: 40%; background-color: black; margin: 8% auto; text-align: center; padding: 8ex; font-size: 3ex; color: gray;">
        <h4>Login Page</h4>
        <p>Username:<asp:TextBox ID="UN_Box" runat="server"></asp:TextBox>
        </p>
        Password:<asp:TextBox ID="PS_Box" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <div id="Error_Text" runat="server"></div>
        <br />
        <asp:Button ID="Login_Button" runat="server" Text="Login" OnClick="Login_Button_Click" />
        <br />
        <br />
        Don&#39;t have an account? <a href="Register.aspx">Register</a><br />
        <a href="../Index.aspx">Go back.</a></form>
    </div>
</body>
</html>
