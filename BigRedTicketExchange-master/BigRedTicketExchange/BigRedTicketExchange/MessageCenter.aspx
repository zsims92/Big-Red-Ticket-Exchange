<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="MessageCenter.aspx.vb" Inherits="BigRedTicketExchange.MessageCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

    <h1>Message Center</h1>

			<div class="col-sm-12" style="padding-bottom:10px;">
			    <asp:button class="btn btn-default" runat="server" id="Compose" Text="Compose Message"></asp:button>
            </div>
    
            <div class="col-sm-12">
                <asp:Table runat="server" Width="1100" CellPadding="2" CellSpacing="1" BorderWidth="2">
                    <asp:TableHeaderRow runat="server" Font-Bold="True">
                        <asp:TableHeaderCell Width="20%">From</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%">Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="40%">Subject</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                 </asp:Table>
                <asp:Repeater runat="server" ID="UserMessages">
                        <ItemTemplate>
                            <asp:Table runat="server" Width="1100" CellPadding="3" CellSpacing="1" BorderWidth="2">
                                <asp:TableRow runat="server">
                                    <asp:TableCell Width="20%"><%# Eval("SenderEmail")%></asp:TableCell>
                                    <asp:TableCell Width="20%"><%# Eval("DateSent")%></asp:TableCell>
                                    <asp:TableCell Width="40%"><%# Eval("Subject")%></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="view" Text="View" CommandName="View" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="delete" Text="Delete" CommandName="Delete" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                </asp:TableRow>
                             </asp:Table>
                            <asp:HiddenField runat="server" ID="MessageID" Value='<%# Eval("MessageID")%>' />
                       
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <asp:Table runat="server" Width="1100" CellPadding="2" CellSpacing="1" BorderWidth="2">
                                <asp:TableRow runat="server">
                                    <asp:TableCell Width="20%"><%# Eval("SenderEmail")%></asp:TableCell>
                                    <asp:TableCell Width="20%"><%# Eval("DateSent")%></asp:TableCell>
                                    <asp:TableCell Width="40%"><%# Eval("Subject")%></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="view" Text="View" CommandName="View" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="delete" Text="Delete" CommandName="Delete" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                </asp:TableRow>
                             </asp:Table>
                            <asp:HiddenField runat="server" ID="MessageID" Value='<%# Eval("MessageID")%>' />
                            
                        </AlternatingItemTemplate>
                    </asp:Repeater>
			</div>

        </div>
</asp:Content>