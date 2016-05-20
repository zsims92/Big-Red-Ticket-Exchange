Public Class SendMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim db As New DBManager
        Dim message As New Message
        Dim u As User = Session("Sender")
        message = Session("Message")
        If IsNothing(message) Then
            'If Not IsNothing(Session("MsgRecipient")) Then
            recipient.Text = u.FirstName & " " & u.LastName
            Session.Remove("MsgRecipient")
            userEmail.Value = u.Email
            'End If
        Else
        recipient.Text = u.FirstName & " " & u.LastName
        subject.Text = message.Subject
            Session.Remove("Message")
            userEmail.Value = u.Email
        End If
    End Sub

    Private Sub Send_ServerClick(sender As Object, e As EventArgs) Handles Send.Click
        Dim send As New User
        send = Session("LoggedInUser")

        If IsNothing(send) Then
            Server.Transfer("Login.aspx")
        End If

        Dim db As New DBManager
        Dim mess As New Message
        Dim receiver As New User
        receiver = db.getUserByUsername(userEmail.Value)
        mess.SenderID = send.UserID
        mess.SenderEmail = send.Email
        mess.ReceiverID = receiver.UserID
        mess.ReceiverEmail = receiver.Email
        mess.Subject = subject.Text
        mess.Message = message.Text
        mess.DateSent = Now
        db.addMessage(mess)
        MsgBox("Message has been sent!")
        Server.Transfer("MessageCenter.aspx")
    End Sub

End Class