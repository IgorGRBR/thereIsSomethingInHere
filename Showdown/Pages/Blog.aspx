<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Showdown.Pages.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/Main.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('../Artwork/aw2.jpg'); left: -1%; top: -1%; background-size: 100%; background-repeat: repeat; width: 101%; height: 101%; position:absolute">
        <div id="UserHotbar" runat="server" class="user_board">
            
            <h4>Hello, <asp:Label ID="Query_Result" runat="server" Text="SQL DATA GOES HERE"></asp:Label>.  
            <asp:LinkButton runat="server" href="Pages/Account.aspx">Profile.</asp:LinkButton>   
            <asp:LinkButton runat="server" href="../Index.aspx">Index.</asp:LinkButton>  
            <asp:LinkButton ID="LogoutButton" runat="server" OnClick="LogoutButton_Click">Log out.</asp:LinkButton> </h4>
        </div>
    <div style=" width: 70%; background-color: black; margin: 8% auto; text-align: center; padding: 8ex; font-size: 3ex; color: gray;">
        <h4>User Blog Page</h4>
        <p>Posts:</p>
    </div>
    </form>
</body>
</html>
