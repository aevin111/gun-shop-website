<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="WebApplication5.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="tooplate_menu">
        <ul>
            <li class="current_page_item"><a href="Default.aspx">Home</a></li>
            <li><a href="Products.aspx">Products</a></li>
            <li><a href="Login.aspx">Accounts</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
        </ul>
    </div>

    <div id="tooplate_main">

        DB Status:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />

        Product Name:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Price:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Image URL:<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Quantity:<br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" />

    </div>
</asp:Content>
