<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication5.WebForm3" %>
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

        <div id = "tooplate_main ">

        

        <br />
        <br />
        <br />

        <h1>
            Products
        </h1>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [prodid], [name], [price], [qty], [imgdir] FROM [products]"></asp:SqlDataSource>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate>
                <table border="0">
                    <tr>
                        <td>
                            <a href="ProdInfo.aspx?id=<%#Eval("prodid") %>">
                                <img src="<%#Eval("imgdir") %>" width="200" height="100"/>
                            </a>
                            <h6>Weapon: <%#Eval("name") %></h6>
                            <h6>Price: <%#Eval("price") %></h6>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            </asp:ListView>

        <br />



    </div>
</asp:Content>
