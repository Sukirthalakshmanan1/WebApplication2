<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
</head>
<body>
   <center> <h1>Welcome</h1></center>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Userid" runat="server" Text="Enter UserId:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Blue"></asp:TextBox>
        <p>
            <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderColor="Blue"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BorderStyle="Double" />
    </form>
</body>
</html>
