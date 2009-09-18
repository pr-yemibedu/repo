Option Compare Text
Imports System.Net
Imports System.IO
Imports System.Text.RegularExpressions
Module Module1
    Sub Main()
        SiteSweep("http://www.asp.net/whidbey/pdc.aspx?tabindex=0&tabid=1", "c:\PDC")
        SiteSweep("http://msdn.microsoft.com/events/pdc/agendaandsessions/sessions/default.aspx", "c:\PDC")
        Console.WriteLine("Done")
        Console.ReadLine()
    End Sub
    Public Sub SiteSweep(ByVal source As String, ByVal dest As String)
        ' needed to deal with relative paths
        Dim root As String = Left(source, source.IndexOf("/", 7))
        Dim current As String = Left(source, source.LastIndexOf("/") + 1)
        ' pull page
        Dim w As New WebClient
        Dim sr As New StreamReader(w.OpenRead(source))
        Dim s As String = sr.ReadToEnd()
        ' find hrefs
        Dim r As New Regex("href\s*=\s*(?:""(?<1>[^""]*)""|(?<1>S+))", _
            RegexOptions.IgnoreCase Or RegexOptions.Compiled)
        ' get rid of dups
        Dim d As New Hashtable
        For Each m As Match In r.Matches(s)
            Dim url As String = m.Groups(1).Value
            ' find only certain file types.  This could have been done with the 
            ' previous regex, except (1) I ripped that regex off of MSDN, and (2)
            ' I plan on running the app all of one time, so who cares.
            If Right(url, 4) = ".ppt" Or Right(url, 4) = ".zip" Or Right(url, 4) = ".doc" Then
                If Left(url, 7) <> "http://" Then
                    If url.StartsWith("/") Then
                        url = root & url
                    Else
                        url = current & url
                    End If
                End If
                d(url) = Right(url, Len(url) - url.LastIndexOf("/") - 1)
            End If
        Next
        If Not Directory.Exists(dest) Then
            Directory.CreateDirectory(dest)
        End If
        ' download each file.  If the download bombs, try again, unless you get
        ' a 415 or 404 because there appears to be a problem with one some of the 
        ' files, or they are hrefs that are commented out, and my regex ain't smart
        ' enough to figure that out.
        For Each s In d.Keys
            Dim isDownloaded As Boolean = False
            While Not isDownloaded
                Try
                    Console.WriteLine("Downloading:" & s)
                    If Not File.Exists(dest & "\" & d(s)) Then
                        w.DownloadFile(s, dest & "\" & d(s))
                    End If
                    isDownloaded = True
                Catch exc As Exception
                    Console.WriteLine(exc.Message)
                    If exc.Message.IndexOf("(415)") >= 0 Or exc.Message.IndexOf("(404)") Then
                        isDownloaded = True
                    End If
                End Try
            End While
        Next
    End Sub
End Module

