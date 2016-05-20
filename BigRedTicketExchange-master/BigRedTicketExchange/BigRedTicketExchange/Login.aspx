<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Login.aspx.vb" Inherits="BigRedTicketExchange.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Login</h1>

			<div class="form-group col-sm-12">
				<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-4">
					<asp:textbox runat="server" class="form-control" placeholder="Email" name="email" id="email"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<asp:textbox runat="server" type="password" class="form-control" placeholder="Password" name="password" id="password"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<div class="col-sm-offset-2 col-sm-10">
					<asp:button  runat="server" class="btn btn-primary" id="signinButton" Text="Sign In"></asp:button>
				</div>
			</div>
            <div class="col-sm-12">
			<asp:button class="btn btn-default" runat="server" id="RegisterButton" Text="Register"></asp:button>
                </div>

        </div>

</asp:Content>
