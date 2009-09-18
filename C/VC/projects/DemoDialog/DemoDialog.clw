; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDemoDialogDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "DemoDialog.h"

ClassCount=3
Class1=CDemoDialogApp
Class2=CDemoDialogDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_DEMODIALOG_DIALOG

[CLS:CDemoDialogApp]
Type=0
HeaderFile=DemoDialog.h
ImplementationFile=DemoDialog.cpp
Filter=N

[CLS:CDemoDialogDlg]
Type=0
HeaderFile=DemoDialogDlg.h
ImplementationFile=DemoDialogDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_BUTTON_ADD_MESSAGE

[CLS:CAboutDlg]
Type=0
HeaderFile=DemoDialogDlg.h
ImplementationFile=DemoDialogDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_DEMODIALOG_DIALOG]
Type=1
Class=CDemoDialogDlg
ControlCount=8
Control1=IDC_OPERAND_1,edit,1350631552
Control2=IDC_STATIC,static,1342308352
Control3=IDC_OPERAND_2,edit,1350631552
Control4=IDC_STATIC,static,1342308352
Control5=IDC_RESULT,edit,1350631552
Control6=IDC_BUTTON_CALCULATE,button,1342242816
Control7=IDC_LIST_MESSAGE,listbox,1352728835
Control8=IDC_BUTTON_ADD_MESSAGE,button,1342242816

