<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SpisakUcenika._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;</h2>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="Ime" HeaderText="Ime" />
        <asp:BoundField DataField="Prezime" HeaderText="Prezime" />
        <asp:BoundField DataField="Razred" HeaderText="Razred" />
    </Columns>
</asp:GridView>
<br />
<br />
</asp:Content>
