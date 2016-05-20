<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="TicketTransferInstructions.aspx.vb" Inherits="BigRedTicketExchange.TicketTransferInstructions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

    <h1>Ticket Transfer Instructions</h1>
            <div class="col-sm-12">
                <h3>Seller Instructions</h3>

				<asp:BulletedList runat="server" BulletStyle="Numbered">
                    <asp:ListItem>Get name and email of the buyer</asp:ListItem>
                    <asp:ListItem>Follow the link below to the Husker ticket transfer site</asp:ListItem>
                    <asp:ListItem>Sign in or register on site, make sure to register as a Student</asp:ListItem>
                    <asp:ListItem>Hover over the "My Account" tab, select "Transfer Ticket" option</asp:ListItem>
                    <asp:ListItem>Click on the game for which you would like to transfer the ticket</asp:ListItem>
                    <asp:ListItem>Enter the recipient information and click next</asp:ListItem>
                    <asp:ListItem>Confirm the transfer to have the email sent to the recipient</asp:ListItem>
				</asp:BulletedList>
                <a href="http://ev9.evenue.net/cgi-bin/ncommerce3/EVExecMacro?DB_OEM_ID=100&linkID=huskers&evm=myac&msgCode=32000&shopperContext=ST&returnURL=/cgi-bin/ncommerce3/SEGetGroupList%3FlinkID%3Dhuskers%26groupCode%3D%26RSRC%3D%26RDAT%3D%26shopperContext%3DST&url=/cgi-bin/ncommerce3/SEGetGroupList%3FlinkID%3Dhuskers%26groupCode%3D%26RSRC%3D%26RDAT%3D%26shopperContext%3DST">Husker Ticket Transfer Site</a>
                <h3>Buyer Instructions</h3>
				<asp:BulletedList runat="server" BulletStyle="Numbered">
                    <asp:ListItem>Look for the email about the ticket transfer</asp:ListItem>
                    <asp:ListItem>Within 24 hours of receiving the email, click the link in email to accept the transfer</asp:ListItem>
				</asp:BulletedList>
			</div>
        </div>
</asp:Content>
