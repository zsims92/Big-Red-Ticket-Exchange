<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="BuyTickets.aspx.vb" Inherits="BigRedTicketExchange.BuyTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buy Tickets</h1>
        <p>Select the button for the ticket that you'd like to buy to message the user.</p>

          <div class="col-sm-12">
                <asp:Table runat="server" Width="1100" CellPadding="2" CellSpacing="1" BorderWidth="2">
                    <asp:TableHeaderRow runat="server" Font-Bold="True">
                        <asp:TableHeaderCell Width="30%">Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%">Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="40%">Comments</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                 </asp:Table>
                <asp:Repeater runat="server" ID="GameTickets">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="UserID" Value='<%# Eval("UserID")%>' />
                            <asp:Table runat="server" Width="1100" CellPadding="3" CellSpacing="1" BorderWidth="2">
                                <asp:TableRow runat="server">
                                    <asp:TableCell Width="30%"><%# Eval("UserName")%></asp:TableCell>
                                    <asp:TableCell Width="20%"><%# Eval("UserEmail")%></asp:TableCell>
                                    <asp:TableCell Width="40%"><%# Eval("Comments")%></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="Message" Text="Message" CommandName="Message" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                </asp:TableRow>
                             </asp:Table>
                            
                       
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <asp:HiddenField runat="server" ID="UserID" Value='<%# Eval("UserID")%>' />
                            <asp:Table runat="server" Width="1100" CellPadding="3" CellSpacing="1" BorderWidth="2">
                                <asp:TableRow runat="server">
                                    <asp:TableCell Width="30%"><%# Eval("UserName")%></asp:TableCell>
                                    <asp:TableCell Width="20%"><%# Eval("UserEmail")%></asp:TableCell>
                                    <asp:TableCell Width="40%"><%# Eval("Comments")%></asp:TableCell>
                                    <asp:TableCell Width="10%"><asp:Button runat="server" ID="Message" Text="Message" CommandName="Message" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                </asp:TableRow>
                             </asp:Table>
                            
                        </AlternatingItemTemplate>
                    </asp:Repeater>
			</div>

    </div>
</asp:Content>
