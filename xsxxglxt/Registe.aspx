<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="xsxxglxt.Registe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<form runat="server" class="col-md-4 col-md-offset-4">
  <div class="form-group">
    <label for="id">学号</label>
    <asp:TextBox ID="id" CssClass="form-control" placeholder="学号" runat="server"></asp:TextBox>
    <asp:CustomValidator OnServerValidate="CustomValidator2_ServerValidate" Display="Dynamic" ID="CustomValidator2" runat="server" EnableClientScript="false" ControlToValidate="id" ErrorMessage="学号必须8位数字" ForeColor="Red"></asp:CustomValidator>
    <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ControlToValidate="id" ErrorMessage="学号不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="name">姓名</label>
    <asp:TextBox ID="name" CssClass="form-control" placeholder="姓名" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="姓名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="age">年龄</label>
    <asp:TextBox ID="age" CssClass="form-control" placeholder="年龄" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="age" ErrorMessage="年龄不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CustomValidator OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic" ID="CustomValidator1" runat="server" EnableClientScript="false" ControlToValidate="age" ErrorMessage="年龄必须是数字类型" ForeColor="Red"></asp:CustomValidator>
    <asp:RangeValidator  Display="Dynamic"  ID="RangeValidator1" runat="server" Type="Integer" ControlToValidate="age" MinimumValue="18" MaximumValue="55" ErrorMessage="年龄范围18-55岁" ForeColor="Red"></asp:RangeValidator>
  </div>
  <div class="form-group">
      <asp:Button ID="btnSave" runat="server" Text="注册" CssClass="btn btn-primary" OnClick="btnSave_Click"/>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
  </div>
  
</form>
</asp:Content>
