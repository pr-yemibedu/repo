VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Person"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True

Private m_name As String
Private m_age As Integer

Public Property Get Name() As Variant
    Name = m_name
End Property

Public Property Let Name(ByVal vNewValue As Variant)
    m_name = vNewValue
End Property

Public Property Get Age() As Variant
    Age = m_age
End Property

Public Property Let Age(ByVal vNewValue As Variant)
    m_age = vNewValue
End Property
