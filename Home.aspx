<%@ Page Title="" Language="C#" MasterPageFile="~/Oursite.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RainbowSchool_AzureWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        position: absolute;
        top: 65px;
        left: 97px;
        z-index: 1;
        width: 1192px;
        height: 528px;
        margin-right: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="auto">Welcome to Rainbow School..!</h3>
<p class="auto">&nbsp;</p>
<table class="auto-style1">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style6" ImageUrl="~/images/Kids.jpg" />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
