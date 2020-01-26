<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.Login" %>
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

    <br />
    <br />
    <br />
    <br />
    <br />


    <div id="tooplate_main">
        <h2>
            Staff Login
        </h2>
        <h6>Username&nbsp;&nbsp;&nbsp;</h6>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>




        <br />
        <br />
        <h6>Password&nbsp;&nbsp;&nbsp;&nbsp;</h6>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />




    </div>

</asp:Content>
