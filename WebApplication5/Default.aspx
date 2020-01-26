<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5.WebForm1" %>
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

        <h1>
            Welcome to Memez-at-Arms!
        </h1>


        <h3>
            What in the world is Memez-At-Armz?
        </h3>   

        <h5>
            Meme-At-Armz is a online shop that sells High-Quality airsoft guns made in the Philippines!
            All of our airsoft guns are made by hand. Our office and production facility are both located in Cainta, Rizal Province.
        </h5>

        <h5>
            All of our airsoft guns are both affordable and is of high quality. If you are not satisfied with your airsoft gun, you may return it within 7 days and we will give you a refund.
        </h5>

        <br />
        <br />
        <br />

        <h1>
            Featured Product
        </h1>

        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [prodid], [name], [price], [qty], [imgdir] FROM [products] WHERE [prodid] = 1"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate>
                <table border="0">
                    <tr>
                        <td>
                            <a href="ProdInfo.aspx?id=1">
                                <img src="<%#Eval("imgdir") %>" width="200" height="100"/>
                            </a>
                            <br />
                            <h6>Weapon: <%#Eval("name") %></h6>
                            <h6>Price: <%#Eval("price") %></h6>
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>

    </div>



        

        <!--
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [prodid], [name], [price], [qty] FROM [products] WHERE [prodid] = 2"></asp:SqlDataSource>
        <div>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                <LayoutTemplate>
                <asp:PlaceHolder ID = "itemPlaceholder" runat="server"></asp:PlaceHolder>
                </LayoutTemplate>
                    <ItemTemplate>
                            <table border="0" class="center-div td-center">
                                <br />
                                <tr>
                                    <td>
                                        <br />
                                       Weapon: 
                                        <br />
                                       Price: <br /><br /></td>
                                </tr>
                            </table>
                    </ItemTemplate>
            </asp:ListView>
        </div>
            -->

        <br />
</asp:Content>
