<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Purchases.aspx.cs" Inherits="WebApplication5.Purchases" %>
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

    <div id ="tooplate_main">
        <h6>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                <asp:BoundField DataField="addr" HeaderText="addr" SortExpression="addr" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [prodname], [qty], [price], [dt], [addr] FROM [transactions]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" />
            </h6>
    </div>
</asp:Content>
