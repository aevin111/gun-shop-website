<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication5.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tooplate_menu">
	<ul>
		<li class="current_page_item"><a href="Default.aspx">Home</a></li>
            <li><a href="Products.aspx">Products</a></li>
            <li><a href="Login.aspx">Accounts</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
        </ul> t
    </div>

    <br />
    <br />
    <br />
    <br />
    <br />

    <div id="contact_form">
        <h3>
            Information:
        </h3>

        <h5>
            Address: 11th Street, Brgy. San Juan, Cainta, Rizal, Philippines
        </h5>

        <h5>
            Phone Number: (+63) 999-1023 / (+63) 927 135 5963 
        </h5>

        <h5>
            Email Address: inquiry@memezatarmz.ph
        </h5>
    </div>
</asp:Content>
