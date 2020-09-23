VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0000C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "A K&K Production"
   ClientHeight    =   7215
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   7710
   FillStyle       =   0  'Solid
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":030A
   ScaleHeight     =   7215
   ScaleWidth      =   7710
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDivide 
      BackColor       =   &H00008000&
      Caption         =   "Divide"
      Height          =   615
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5520
      Width           =   855
   End
   Begin VB.CommandButton cmdSubtract 
      BackColor       =   &H00008000&
      Caption         =   "Subtract"
      Height          =   615
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5520
      Width           =   855
   End
   Begin VB.CommandButton cmdMultiply 
      BackColor       =   &H00008000&
      Caption         =   "Multiply"
      Height          =   615
      Left            =   1080
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4920
      Width           =   855
   End
   Begin VB.CommandButton cmdAddition 
      BackColor       =   &H00008000&
      Caption         =   "Additon"
      Height          =   615
      Left            =   240
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtB 
      Height          =   285
      Left            =   1560
      TabIndex        =   4
      Top             =   2400
      Width           =   2655
   End
   Begin VB.TextBox txtA 
      Height          =   285
      Left            =   1560
      TabIndex        =   1
      Top             =   1800
      Width           =   2655
   End
   Begin VB.Label lblAnswer 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tall Paul"
         Size            =   59.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1695
      Left            =   1080
      TabIndex        =   9
      Top             =   2880
      Width           =   4815
   End
   Begin VB.Label lblNum2 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter another number here"
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   0
      TabIndex        =   3
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblNum1 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter a number here"
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   0
      TabIndex        =   2
      Top             =   1800
      Width           =   3495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "A K&&K Production"
      BeginProperty Font 
         Name            =   "Dauphin"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1455
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   7335
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu MnuEnd 
         Caption         =   "End"
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "View"
      Begin VB.Menu mnuBack 
         Caption         =   "Background"
         Begin VB.Menu mnuMars 
            Caption         =   "Mars"
         End
         Begin VB.Menu MnuSun 
            Caption         =   "Sun"
            Begin VB.Menu MnuGreen 
               Caption         =   "Green"
            End
            Begin VB.Menu MnuBlue 
               Caption         =   "Blue"
            End
            Begin VB.Menu MnuOrange 
               Caption         =   "Orange"
            End
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdAddition_Click()
Dim add As Long
add = Val(txtA) + Val(txtB)
lblAnswer.Caption = add

End Sub

Private Sub cmdDivide_Click()
Dim divide As Long
divide = Val(txtA) / Val(txtB)
lblAnswer.Caption = divide
End Sub

Private Sub cmdMultiply_Click()
Dim multiply As Long
multiply = Val(txtA) * Val(txtB)
lblAnswer.Caption = multiply
End Sub

Private Sub cmdSubtract_Click()
Dim subtract As Long
subtract = Val(txtA) - Val(txtB)
lblAnswer.Caption = subtract
End Sub

Private Sub MnuBlue_Click()
cmdAddition.BackColor = &HC00000
cmdMultiply.BackColor = &HC00000
cmdSubtract.BackColor = &HC00000
cmdDivide.BackColor = &HC00000

Form1.Height = 7995
Form1.Left = 105
Form1.Top = 105
Form1.Width = 7800
Form1.Picture = LoadPicture("C:\Documents and Settings\Keith Hammond\My Documents\My Pictures\Blue.bmp")
End Sub

Private Sub MnuEnd_Click()
End
End Sub

Private Sub MnuGreen_Click()
cmdAddition.BackColor = &H8000&
cmdMultiply.BackColor = &H8000&
cmdSubtract.BackColor = &H8000&
cmdDivide.BackColor = &H8000&
Form1.Picture = LoadPicture("C:\Documents and Settings\Keith Hammond\My Documents\My Pictures\Green.bmp")
Form1.Height = 7995
Form1.Left = 105
Form1.Top = 105
Form1.Width = 7800
End Sub

Private Sub mnuMars_Click()
cmdAddition.BackColor = &H404080
cmdMultiply.BackColor = &H404080
cmdDivide.BackColor = &H404080
cmdSubtract.BackColor = &H404080
Form1.Height = 7995
Form1.Left = 105
Form1.Top = 105
Form1.Width = 9720
Form1.Picture = LoadPicture("C:\Documents and Settings\Keith Hammond\My Documents\My Pictures\marssystem.jpg")
End Sub

Private Sub MnuOrange_Click()
cmdAddition.BackColor = &HC0C0&
cmdMultiply.BackColor = &HC0C0&
cmdSubtract.BackColor = &HC0C0&
cmdDivide.BackColor = &HC0C0&
Form1.Height = 7995
Form1.Left = 105
Form1.Top = 105
Form1.Width = 7800
Form1.Picture = LoadPicture("C:\Documents and Settings\Keith Hammond\My Documents\My Pictures\Sun.bmp")
End Sub

