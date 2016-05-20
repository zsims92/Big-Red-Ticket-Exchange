Public Class BRTE
    Inherits System.Web.UI.MasterPage

    Public userFirstName As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsNothing(Session.Contents("LoggedInUser")) Then
            Dim user As User = Session.Contents("LoggedInUser")
            userFirstName = user.FirstName

            LoginHeader.Attributes.Add("style", "Display:None")
            RegisterHeader.Attributes.Add("style", "Display:None")
        Else
            WelcomeMessageHeader.Attributes.Add("style", "Display:None")
            LogoutHeader.Attributes.Add("style", "Display:None")
        End If

        Page.DataBind()
    End Sub

    Private Sub LogoutAnchor_ServerClick(sender As Object, e As EventArgs) Handles LogoutAnchor.ServerClick
        Session.RemoveAll()
        Server.Transfer("Home.aspx")
    End Sub
End Class