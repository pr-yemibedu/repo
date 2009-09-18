VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CreateWordDoc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Private m_path As String
Public Property Get Path() As Variant
    Path = CVar(m_path)
End Property

Public Property Let Path(ByVal paramPath As Variant)
    m_path = CStr(paramPath)
End Property

Sub Run()
    Dim wordAppObj As New Word.Application
    Dim wordDoc As Word.Document
    Set wordDoc = wordAppObj.Documents.Add
    wordDoc.SaveAs m_path
    wordDoc.Close
End Sub
