<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product details</title>
</head>
<body>
    <center>  <h2>Product details:</h2></center>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="ProductID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Product name:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <p>
            <asp:Label ID="Label3" runat="server" Text="Price:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert product" BorderStyle="Double" Width="201px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BorderStyle="Groove" OnClick="Button2_Click" Text="Update product" Width="225px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BorderStyle="Groove" OnClick="Button3_Click" Text="Delete product" Width="193px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BorderStyle="Double" OnClick="Button4_Click" style="margin-left: 0px" Text="View all" Width="190px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" BorderStyle="Ridge" OnClick="Button5_Click" Text="Find product" Width="183px" />
        </p>
        <asp:Label ID="Display" runat="server" BackColor="#66FFFF" BorderColor="#3366FF" Text="Message"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Display2" runat="server" Text="Message2"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
