<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProdInfo.aspx.cs" Inherits="WebApplication5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="tooplate_menu">
        <div id="content">
	    <ul>
		    <li class="current_page_item"><a href="Default.aspx">Home</a></li>
                <li><a href="Products.aspx">Products</a></li>
                <li><a href="Login.aspx">Accounts</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
            </ul>
            </div>
    </div>

    <br />
    <br />
    <br />
    <br />
    <br />

    <div id="tooplate_main">

        <asp:Image ID="Image1" runat="server" Height="98px" Width="132px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />

        <h2>Buy this amazing gun now!</h2>
        <br />
        Phone Number<br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        Email Address:<br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        Credit Card Number<br />
        <asp:TextBox ID="TextBox3" runat="server" Width="311px"></asp:TextBox>
        <br />
        <br />
        Credit Card CVV<br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Expiry Date:<br />
        <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <br />
        <br />
        Quantity:
        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Height="19px"></asp:TextBox>
        <br />
        <br />
        Address:<br />
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="312px"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy Now!" />

    </div>


</asp:Content>
