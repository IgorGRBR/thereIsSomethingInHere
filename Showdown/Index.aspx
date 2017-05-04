<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Showdown.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/Styles/Main.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('Artwork/aw1.png'); left: -1%; top: -1%; background-repeat: repeat; width: 101%; height: 148%; position:absolute" dir="auto">
    <div>
        <div id="UserHotbar" runat="server" class="user_board">
            
            <h4>Hello, <asp:Label ID="Query_Result" runat="server" Text="SQL DATA GOES HERE"></asp:Label>.  
            <asp:LinkButton runat="server" href="Pages/Account.aspx">Profile.</asp:LinkButton>   
            <asp:LinkButton runat="server" href="Pages/Blog.aspx">Blog.</asp:LinkButton>  
            <asp:LinkButton ID="LogoutButton" runat="server" OnClick="LogoutButton_Click">Log out.</asp:LinkButton> </h4>
        </div>
        <div class="center_box">
	        <div class="center_box_text">
                <img src="https://puu.sh/vn5tE/c4c5e1bfc9.png" alt="showdown" style="position: relative; padding: 0;"/>
                <br />
                <h1>Showdown</h1>
                <h5>A web service allowing thousants of talented people to find their job easily.</h5>
                <h5 id="LogRes" runat="server">Please <a href="Pages/Login.aspx">sign in</a> or <a href="Pages/Register.aspx">create an account</a>.</h5>
                <h5 id="ErrorLog" runat="server"> No errors.</h5>
	        </div>
        </div>
    </div>
        
    </form>
</body>
</html>
