'******************************************************************************
' desc: inventories the laptop sample directories
' author: Brian Pfeil
'******************************************************************************
Const SMPL_DIR_ROOT = "C:\Data\SampleRecs"
Const SMPL_INV_LOG_DIR = "C:\Upload"
Const SMPL_INV_LOG_NAME = "LtSmplInv.log"
Dim fso, rootFldr, folders, folder, files, file, inventoryString
Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FolderExists(SMPL_DIR_ROOT) Then
    Set rootFldr = fso.GetFolder(SMPL_DIR_ROOT)
    Set folders = rootFldr.SubFolders
    For Each folder in folders
        Set files = folder.Files
        For Each file in files
            inventoryString = inventoryString & _
                Quote(FormatDateTime(Now, vbGeneralDate)) & "," & _
                Quote(file.ParentFolder.path) & "," & _
                Quote(file.name) & "," & _
                Quote(file.size) & "," & _
                Quote(FormatDateTime(file.DateCreated, vbGeneralDate)) & "," & _
                Quote(FormatDateTime(file.DateLastModified, vbGeneralDate)) & "," & _
                Quote(FormatDateTime(file.DateLastAccessed, vbGeneralDate)) & vbCrLf
        Next
    Next
    If inventoryString <> "" Then
        If Not(fso.FolderExists(SMPL_INV_LOG_DIR)) Then
            fso.CreateFolder(SMPL_INV_LOG_DIR)
        End if
        AppendStringToFile SMPL_INV_LOG_DIR & "\" & SMPL_INV_LOG_NAME, inventoryString
    End If
    Dim dt
    dt = Now
    'Wscript.Echo dt.getUTCDate()
End If

Sub AppendStringToFile(path, s)
    Dim fso, fileStream
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set fileStream = fso.OpenTextFile(path, 8, True)
    fileStream.Write s
End Sub

Function Quote(s)
    Quote = Chr(34) & s & Chr(34)
End Function