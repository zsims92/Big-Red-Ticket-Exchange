<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Home.aspx.vb" Inherits="BigRedTicketExchange.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top: 20px;">
        <div class="container">
            <div id="jumbotron">
                <img src="/images/Banner.PNG" />
            </div>
        </div>

        <div>
            <p class="lead">Connect with buyers and sellers in a streamlined student ticket exchange experience!</p>


            <div class="row">
                <div class="col-sm-4 footballDiv center-block">

                    <a href="#" id="footballbutton">
                        <img id="footballImage" src="/images/FootballButton.PNG" /></a>

                    <div id="fsched" style="display: none;">

                        <asp:Repeater runat="server" ID="FootballSchedule">
                            <ItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyFootball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellFootball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                                <asp:HiddenField runat="server" ID="GameID" Value='<%# Eval("GameID")%>' />
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyFootball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellFootball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                                <asp:HiddenField runat="server" ID="GameID" Value='<%# Eval("GameID")%>' />
                            </AlternatingItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
                <div class="col-sm-4 basketballDiv center-block">
                    <a href="#" id="basketballbutton">
                        <img src="/images/BasketballButton.PNG" /></a>
                    <div id="bsched" style="display: none;">
                        <asp:Repeater runat="server" ID="BasketballSchedule">
                            <ItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyBasketball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellBasketball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyBasketball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellBasketball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-sm-4 volleyballDiv center-block">
                    <a href="#" id="volleyballbutton">
                        <img src="/images/VolleyballButton.PNG" /></a>
                    <div id="vsched" style="display: none;">
                        <asp:Repeater runat="server" ID="VolleyballSchedule">
                            <ItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyVolleyball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellVolleyball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <asp:Table runat="server" CellPadding="3" CellSpacing="1">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell Width="30%"><%# Eval("Opponent")%></asp:TableCell>
                                        <asp:TableCell Width="50%"><%# Eval("GameDate")%></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="buyVolleyball" Text="Buy" CommandName="Buy" UseSubmitBehavior="False"></asp:Button></asp:TableCell>
                                        <asp:TableCell Width="10%"><asp:Button runat="server" ID="sellVolleyball" Text="Sell" CommandName="Sell" UseSubmitBehavior="false"></asp:Button></asp:TableCell>
                                    </asp:TableRow>
                                 </asp:Table>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script type="text/javascript">
        $(function () {

            $('#footballbutton').click(function () {
                $('#fsched').toggle();
                return false;
            });
            $('#volleyballbutton').click(function () {
                $('#vsched').toggle();
                return false

            });
            $('#basketballbutton').click(function () {
                $('#bsched').toggle();
                return false;

            });
        });
        $(function () {
            $('.fsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
            $('.vsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
            $('.bsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
        });
        $(function () {

        });
    </script>
</asp:Content>
