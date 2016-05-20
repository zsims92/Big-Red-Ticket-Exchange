Public Class MessageCenter
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbManager As New DBManager
        Dim user As User = Session.Contents("LoggedInUser")

        If IsNothing(user) Then
            Server.Transfer("Login.aspx")
        End If

        UserMessages.DataSource = dbManager.getMessagesByReceiverId(user.UserID)
        UserMessages.DataBind()
    End Sub

    Protected Sub rpt_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles UserMessages.ItemCommand
        If e.CommandName = "View" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            Dim control As HiddenField = e.Item.FindControl("MessageID")
            Session.Add("MessageID", control.Value)
            Server.Transfer("ViewMessage.aspx")
        End If
        If e.CommandName = "Delete" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            Dim db As New DBManager
            Dim control As HiddenField = e.Item.FindControl("MessageID")
            db.deleteMessage(control.Value)
            MsgBox("Message Deleted")
        End If
    End Sub

    Private Sub Compose_ServerClick(sender As Object, e As EventArgs) Handles Compose.Click
        Server.Transfer("SendMessage.aspx")
    End Sub

End Class