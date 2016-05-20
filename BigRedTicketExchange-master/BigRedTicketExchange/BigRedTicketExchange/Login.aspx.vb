Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub RegisterButton_ServerClick(sender As Object, e As EventArgs) Handles RegisterButton.Click
        Server.Transfer("Register.aspx")
    End Sub

    Private Sub signinButton_Click(sender As Object, e As EventArgs) Handles signinButton.Click
        Dim db As New DBManager
        Dim user As User = db.getUserByUsernameAndPassword(email.Text, password.Text)

        If Not IsNothing(user) Then
            Session.Add("LoggedInUser", user)
            Response.Redirect("Home.aspx")
            'Server.Transfer("Home.aspx")
        End If
    End Sub
End Class