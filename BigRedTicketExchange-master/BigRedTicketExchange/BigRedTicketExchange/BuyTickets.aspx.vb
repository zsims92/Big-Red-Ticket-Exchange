Public Class BuyTickets
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim db As New DBManager
        GameTickets.DataSource = db.getTicketsByGameID(Session("GameID"))
        GameTickets.DataBind()

    End Sub

    Protected Sub rpt_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles GameTickets.ItemCommand
        If e.CommandName = "Message" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            Dim control As HiddenField = e.Item.FindControl("UserID")
            'Session.Add("MsgRecipient", control.Value)
            Dim db As New DBManager
            Dim sender As User = db.getUserByID(control.Value)
            Session.Add("Sender", sender)
            Session.Remove("GameID")
            Response.Redirect("SendMessage.aspx")
        End If
    End Sub

End Class