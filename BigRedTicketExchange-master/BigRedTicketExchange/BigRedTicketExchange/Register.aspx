<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Register.aspx.vb" Inherits="BigRedTicketExchange.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="container">

		<h1>Register</h1>

			<div class="form-group col-sm-12" id="usernamegroup">
				<label for="firstname" class="col-sm-2 control-label">First Name</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="text" class="form-control" placeholder="First Name" name="firstname" id="firstname"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredFirstName" runat="server"
  ControlToValidate="firstname"
  ErrorMessage="First name is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
            <div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Last Name</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="Last Name" name="lastname" id="lastname"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredLastname" runat="server"
  ControlToValidate="lastname"
  ErrorMessage="Last name is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12" id="passwordgroup1">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="password" class="form-control" placeholder="Password" name="password" id="password"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12" id="passwordgroup2">
				<label for="inputPassword3" class="col-sm-2 control-label">Confirm Password</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" type="password" class="form-control" placeholder="Password" name="confirmPassword" id="confirmPassword"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="test@email.com" name="email" id="email"></asp:textbox>
                    <asp:RequiredFieldValidator id="requiredEmail" runat="server"
  ControlToValidate="email"
  ErrorMessage="Email is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">NUID</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="00000000" name="nuid" id="nuid"></asp:textbox>
                    <asp:RequiredFieldValidator id="requredNUID" runat="server"
  ControlToValidate="nuid"
  ErrorMessage="NUID is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="form-group col-sm-12">
				<label class="col-sm-2 control-label">Phone Number</label>
				<div class="col-sm-6">
					<asp:textbox runat="server" class="form-control" placeholder="402-555-5555" name="phonenumber" id="phonenumber"></asp:textbox>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<div class="col-sm-offset-2 col-sm-10">
					<asp:button runat="server" class="btn btn-default" id="registerButton" Text="Register"></asp:button>
				</div>
			</div>
	</div>



</asp:Content>
