<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="Showdown.Pages.Post" %>

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
            <h4>Hello <asp:Label ID="Query_Result" runat="server" Text="SQL DATA GOES HERE"></asp:Label>.  
            <asp:LinkButton runat="server" href="Pages/Account.aspx">Profile.</asp:LinkButton>   
            <asp:LinkButton runat="server" href="../Index.aspx">Index.</asp:LinkButton>  
            <asp:LinkButton ID="LogoutButton" runat="server" OnClick="LogoutButton_Click">Log out.</asp:LinkButton> 
            </h4>
        </div>
    <div id="BlogString" runat="server" style="height: 48%; overflow-y: scroll; background-color: black; margin: auto 10% auto 10%; text-align: center; padding: 8ex; font-size: 3ex; color: gray;">
        <div>
        Create New Post
        <br />
        <br />
        Title:<asp:TextBox ID="Title_Box" runat="server" Width="276px"></asp:TextBox>
        <br />
        <br />
        Text:<br />
        <asp:TextBox ID="Text_Box" runat="server" Height="273px" TextMode="MultiLine" Width="627px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Submit_Button" runat="server" Text="Submit" /> 
        <br />
        <br />
        <a href="Pages/Blog.aspx">Cancel</a>
&nbsp;</div>
    </div>
    </form>
</body>
</html>
