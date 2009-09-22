Const srcPath = "c:\temp\a.doc"
Const destPath = "c:\temp\a.doc.html"
Const wdSaveFormat = 10

' save as html
Set objWord = CreateObject("Word.Application") 
objWord.Documents.Open srcPath
objWord.Visible = False
Set oDoc = objWord.ActiveDocument
oDoc.SaveAs destPath, wdSaveFormat
oDoc.Close
Set oDoc = Nothing

' read html file into string
Dim oFS, oTextStream, sFileContents
Set oFS = CreateObject("Scripting.FileSystemObject") 
Set oTextStream = oFS.OpenTextFile(destPath,1) 
sFileContents = oTextStream.ReadAll

' parse string logic here

' show file contents for demontration
MsgBox sFileContents

' show file contents in notepad
Set oShell = CreateObject("WScript.Shell")
oShell.Run("notepad " & destPath)
Set oShell = Nothing
