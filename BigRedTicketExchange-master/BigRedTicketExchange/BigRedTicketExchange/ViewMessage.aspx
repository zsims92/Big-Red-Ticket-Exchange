<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="ViewMessage.aspx.vb" Inherits="BigRedTicketExchange.ViewMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="col-sm-12">
		<h4 runat="server" id="SenderName"></h4>
        <h4 runat="server" id="Subject"></h4>
        <h4 runat="server" id="DateSent"></h4>
        <p runat="server" id="Message"></p>
	</div>
    <div class="col-sm-12">
        <asp:button class="btn btn-default" runat="server" id="Reply" Text="Reply"></asp:button>
        <asp:button class="btn btn-default" runat="server" id="Delete" Text="Delete"></asp:button>
    </div>

        </div>
</asp:Content>