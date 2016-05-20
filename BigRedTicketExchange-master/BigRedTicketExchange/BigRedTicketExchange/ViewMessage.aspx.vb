Public Class ViewMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim db As New DBManager
        Dim id As Integer
        Dim msg As New Message
        Dim u As User
        id = Session("MessageID")
        msg = db.getSingleMessageById(id)
        u = db.getUserByID(msg.SenderID)
        If Not IsNothing(u) Then
            Session.Add("Sender", u)
            SenderName.InnerText = "From: " & u.FirstName & " " & u.LastName
        End If
        If Not IsNothing(msg) Then
            Session.Add("Message", msg)
            Dim sMsg = Session("Message")
            MsgBox(sMsg.Subject)
            Subject.InnerText = "Subject: " & msg.Subject
            DateSent.InnerText = "Date: " & msg.DateSent
            Message.InnerText = msg.Message
        End If

    End Sub

    Private Sub Reply_ServerClick(sender As Object, e As EventArgs) Handles Reply.Click
        Server.Transfer("SendMessage.aspx")
    End Sub

    Private Sub Delete_ServerClick(sender As Object, e As EventArgs) Handles Delete.Click
        Dim messageID As Integer
        Dim db As New DBManager
        messageID = Session("MessageID")
        db.deleteMessage(messageID)
        Server.Transfer("MessageCenter.aspx")
    End Sub

End Class