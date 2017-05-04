<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Showdown.Pages.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>Account Settings</h4>
        <p>Username:<asp:TextBox ID="UN_Box" runat="server"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h4>Change Password</h4>
        <p>Old password:<asp:TextBox ID="OPW_Box" runat="server"></asp:TextBox>
        </p>
        <p>New password:<asp:TextBox ID="NPW_Box" runat="server"></asp:TextBox>
        </p>
        <p>Repeat password:<asp:TextBox ID="RPW_Box" runat="server"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="button_Save" runat="server" OnClick="Button1_Click" Text="Save changes" Width="107px" />
        </p>
    </div>
    </form>
</body>
</html>
