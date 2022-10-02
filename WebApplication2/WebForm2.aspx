<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer sign up page </title>
</head>
<body>
  <center>  <h2>Personal details:</h2></center>
    <form id="form1" runat="server">
        <div>
        </div>
       
        <asp:Label ID="FName" runat="server" BorderStyle="Solid" Text="First name:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="F1" runat="server"></asp:TextBox>
        &nbsp;<p>
            <asp:Label ID="lname" runat="server" BorderStyle="Solid" Text="Last name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Lbox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="dob" runat="server" BorderStyle="Solid" Text="date of birth:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="city" runat="server" BorderStyle="Solid" Text="City:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="state" runat="server" BorderStyle="Solid" Text="State:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="sign up" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
