<%@ Page Title="" Language="C#" MasterPageFile="~/masterForm/BoxForm.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShare.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <input type="text" name="usernameTxt" required="required" placeholder="User name" />
        <input type="password" name="passwordTxt" required="required" placeholder="Password" />
        <asp:Label ID="errorTxt" CssClass="error-message" runat="server" Text=""></asp:Label>
        <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click" />
        <p class="message">Not registered? <a href="RegisterPage.aspx">Create an account</a></p>
    </form>
</asp:Content>
