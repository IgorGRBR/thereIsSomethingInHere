<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Showdown.Pages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('../Artwork/aw2.jpg'); left: -1%; top: -1%; background-size: 100%; background-repeat: repeat; width: 101%; height: 101%; position:absolute">
    <div style=" width: 50%; height: 65%; background-color: black; margin: 2% auto; text-align: center; padding: 8ex; font-size: 3ex; color: gray;">
        <h4>Register Form</h4>
        <p>Username:<asp:TextBox ID="UN_Box" runat="server"></asp:TextBox>
        </p>
        <p>Email:<asp:TextBox ID="EM_Box" runat="server"></asp:TextBox>
        </p>
        <p>Password:<asp:TextBox ID="PW_Box" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>Repeat password:<asp:TextBox ID="PW2_Box" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>Account type:<asp:DropDownList ID="DDL_Type" runat="server">
            <asp:ListItem Selected="True" Value="1">Artist</asp:ListItem>
            <asp:ListItem Value="2">Seeker</asp:ListItem>
            <asp:ListItem Value="0">Admin</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p><asp:Label ID="Error_Text" runat="server"></asp:Label>
        </p>
        <p><asp:Button ID="Button_Register" runat="server" Text="Register" OnClick="Button_Register_Click" />
        </p>
        <br/>
        Already have an account? <a href="Pages/Login.aspx">Login</a><br />
        <a href="../Index.aspx">Go back.</a>
    </div>
    </form>
</body>
</html>
