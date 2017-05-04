<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="Showdown.Pages.Post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
