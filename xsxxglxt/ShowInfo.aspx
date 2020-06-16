<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="xsxxglxt.ShowInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<form runat="server">
<asp:GridView ID="GridView1" DataSourceID="SqlDataSource1" runat="server" CssClass="table table-bordered" BorderColor="White" AutoGenerateColumns="False" DataKeyNames="ID">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="学号" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
        <asp:BoundField DataField="age" HeaderText="年龄" SortExpression="age" />
    </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xsxxglxtConnectionString %>" SelectCommand="SELECT * FROM [info]"></asp:SqlDataSource>
</form>
</asp:Content>
