Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub registerButton_Click(sender As Object, e As EventArgs) Handles registerButton.Click
        Dim db As New DBManager

        Dim newUser As New User
        newUser.FirstName = firstname.Text
        newUser.LastName = lastname.Text
        newUser.Password = password.Text
        newUser.Email = email.Text
        newUser.NUID = nuid.Text
        If Not String.IsNullOrEmpty(phonenumber.Text) Then
            newUser.PhoneNumber = phonenumber.Text
        End If

        db.addUser(newUser)

        newUser = db.getUserByUsername(newUser.Email)

        Session.Add("LoggedInUser", newUser)

        Server.Transfer("Home.aspx")
    End Sub
End Class