<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="SpisakUcenika.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 139px;
        }
        .style2
        {
            width: 139px;
            height: 21px;
        }
        .style3
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <table style="width: 100%;">
    <tr>
        <td class="style1">
            &nbsp;
            Ime:</td>
        <td>
            &nbsp;
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;
            Prezime:</td>
        <td>
            &nbsp;
            <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;
            Razred:</td>
        <td class="style3">
            &nbsp;
            <asp:TextBox ID="txtRazred" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            &nbsp;
        </td>
    </tr>
</table>
    <asp:Button ID="btnDodaj" runat="server" Text="Dodaj učenika" 
        onclick="btnDodaj_Click" />

</asp:Content>

