Imports MySql.Data.MySqlClient


Public Class DBManager

    Public Function ConnectToDB() As MySqlConnection

        Dim MysqlConn As MySqlConnection

        MysqlConn = New MySqlConnection()

        MysqlConn.ConnectionString = "server=cse.unl.edu;" _
        & "user id=dvonsegg;" _
        & "password=MT4xJJ;" _
        & "database=dvonsegg"

        Return MysqlConn

    End Function

    Public Function getFootballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim footballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=1", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim footballGame As New Game
                footballGame.GameID = row.Item("GameID")
                footballGame.GameDate = row.Item("Date")
                footballGame.Opponent = row.Item("Opponent")
                footballGame.IsActive = row.Item("IsActive")
                footballGame.SportID = row.Item("SportID")

                footballGameList.Add(footballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return footballGameList

    End Function

    Public Function getVolleyballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim volleyballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=2", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim volleyballGame As New Game
                volleyballGame.GameID = row.Item("GameID")
                volleyballGame.GameDate = row.Item("Date")
                volleyballGame.Opponent = row.Item("Opponent")
                volleyballGame.IsActive = row.Item("IsActive")
                volleyballGame.SportID = row.Item("SportID")

                volleyballGameList.Add(volleyballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return volleyballGameList

    End Function

    Public Function getBasketballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim basketballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=3", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim basketballGame As New Game
                basketballGame.GameID = row.Item("GameID")
                basketballGame.GameDate = row.Item("Date")
                basketballGame.Opponent = row.Item("Opponent")
                basketballGame.IsActive = row.Item("IsActive")
                basketballGame.SportID = row.Item("SportID")

                basketballGameList.Add(basketballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return basketballGameList

    End Function


    Public Function getUserByUsernameAndPassword(ByVal email As String, ByVal Password As String) As User

        Dim userList As List(Of User) = getFullUsersList()

        For Each user As User In userList
            If email = user.Email AndAlso Password = user.Password Then
                Return user
            End If
        Next


    End Function


    Public Function getUserByID(ByVal id As Integer) As User

        Dim userList As List(Of User) = getFullUsersList()

        For Each user As User In userList
            If id = user.UserID Then
                Return user
            End If
        Next


    End Function

    Public Function getUserByUsername(ByVal email As String) As User

        Dim userList As List(Of User) = getFullUsersList()

        For Each user As User In userList
            If email = user.Email Then
                Return user
            End If
        Next


    End Function

    Public Function getFullUsersList() As List(Of User)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim usersList As New List(Of User)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from User", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "User")

            For Each row As DataRow In ds.Tables("User").Rows
                Dim user As New User
                user.UserID = row.Item("UserID")
                user.FirstName = row.Item("FirstName")
                user.LastName = row.Item("LastName")
                user.Email = row.Item("Email")
                user.NUID = row.Item("NUID")
                user.PhoneNumber = row.Item("PhoneNumber")
                user.Password = row.Item("Password")

                usersList.Add(user)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return usersList

    End Function

    Public Function addUser(ByVal user As User)


        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim usersList As New List(Of User)


        Try

            mySQLConn.Open()

            ' INSERT INTO `dvonsegg`.`User` (`UserID`, `FirstName`, `LastName`, `Email`, `NUID`, `PhoneNumber`, `Password`) VALUES ('1', 'Derek', 'Von Seggern', 'dvon@email.com', '12345678', '402-555-5555', '123');

            Dim sqlCommand As String = String.Format("insert into dvonsegg.User (FirstName, LastName, Email, NUID, PhoneNumber, Password) Values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')", user.FirstName, user.LastName, user.Email, user.NUID, user.PhoneNumber, user.Password)

            Dim cmd As New MySqlCommand(sqlCommand, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "User")

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return usersList

    End Function

    Public Function getSingleMessageById(ByVal id As Integer) As Message

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim message As New Message
        Dim user As New User


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Message WHERE MessageID=" & id, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Message")

            For Each row As DataRow In ds.Tables("Message").Rows
                message.SenderID = row.Item("SenderID")
                message.ReceiverID = row.Item("ReceiverID")
                message.MessageID = row.Item("MessageID")
                message.Subject = row.Item("Subject")
                message.Message = row.Item("Message")
                message.DateSent = row.Item("DateSent")
            Next

            mySQLConn.Close()

            

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return message

    End Function

    Public Function getMessagesByReceiverId(ByVal userId As Integer) As List(Of Message)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim messageList As New List(Of Message)

        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Message WHERE ReceiverID=" & userId, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Message")

            For Each row As DataRow In ds.Tables("Message").Rows
                Dim message As New Message
                message.SenderID = row.Item("SenderID")
                message.ReceiverID = row.Item("ReceiverID")
                message.MessageID = row.Item("MessageID")
                message.Subject = row.Item("Subject")
                message.Message = row.Item("Message")
                message.DateSent = row.Item("DateSent")

                messageList.Add(message)
            Next

            mySQLConn.Close()

            For Each msg As Message In messageList
                Dim user As New User
                user = getUserByID(msg.SenderID)
                msg.SenderEmail = user.Email
            Next

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return messageList

    End Function

    Public Function getTicketsByGameID(ByVal gameId As Integer) As List(Of Ticket)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim ticketList As New List(Of Ticket)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Tickets WHERE GameID=" & gameId, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Tickets")

            For Each row As DataRow In ds.Tables("Tickets").Rows
                Dim ticket As New Ticket
                ticket.GameID = row.Item("GameID")
                ticket.TicketID = row.Item("TicketID")
                ticket.UserID = row.Item("UserID")
                ticket.IsAvailable = row.Item("IsAvailable")
                ticket.Visible = row.Item("Visible")
                ticket.Comments = row.Item("Comments")
                ticket.User = ticket.getUser()
                ticket.UserName = ticket.User.FirstName & " " & ticket.User.LastName
                ticket.UserEmail = ticket.User.Email

                ticketList.Add(ticket)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return ticketList

    End Function

    Public Sub addMessage(ByVal message As Message)


        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim sender As New User
        Dim receiver As New User
        sender = getUserByUsername(message.SenderEmail)
        receiver = getUserByUsername(message.ReceiverEmail)


        Try

            mySQLConn.Open()

            ' INSERT INTO `dvonsegg`.`User` (`UserID`, `FirstName`, `LastName`, `Email`, `NUID`, `PhoneNumber`, `Password`) VALUES ('1', 'Derek', 'Von Seggern', 'dvon@email.com', '12345678', '402-555-5555', '123');

            Dim sqlCommand As String = String.Format("insert into dvonsegg.Message (SenderID, ReceiverID, Subject, Message, DateSent) Values ('{0}', '{1}', '{2}', '{3}', '{4}')", sender.UserID, receiver.UserID, message.Subject, message.Message, message.DateSent.ToString("yyyy-MM-dd HH:mm:ss"))

            Dim cmd As New MySqlCommand(sqlCommand, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Message")

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

    End Sub

    Public Sub deleteMessage(ByVal messageID As Integer)


        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet


        Try

            mySQLConn.Open()

            ' INSERT INTO `dvonsegg`.`User` (`UserID`, `FirstName`, `LastName`, `Email`, `NUID`, `PhoneNumber`, `Password`) VALUES ('1', 'Derek', 'Von Seggern', 'dvon@email.com', '12345678', '402-555-5555', '123');

            Dim sqlCommand As String = String.Format("delete from dvonsegg.Message where MessageID = " & messageID)

            Dim cmd As New MySqlCommand(sqlCommand, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Message")

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

    End Sub

    Public Function addTicket(ByVal ticket As Ticket)


        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim usersList As New List(Of User)


        Try

            mySQLConn.Open()

            ' INSERT INTO `dvonsegg`.`User` (`UserID`, `FirstName`, `LastName`, `Email`, `NUID`, `PhoneNumber`, `Password`) VALUES ('1', 'Derek', 'Von Seggern', 'dvon@email.com', '12345678', '402-555-5555', '123');

            Dim sqlCommand As String = String.Format("insert into dvonsegg.Tickets (GameID, UserID, IsAvailable, Visible, Comments) Values ('{0}', '{1}', '{2}', '{3}', '{4}')", ticket.GameID, ticket.UserID, ticket.IsAvailable, ticket.Visible, ticket.Comments)

            Dim cmd As New MySqlCommand(sqlCommand, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Tickets")

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return usersList

    End Function

End Class