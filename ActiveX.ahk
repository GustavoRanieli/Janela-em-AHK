; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


PrimeiroButtonX := A_ScreenWidth * 0.005
UltimoButtonX := A_ScreenWidth * 0.97
MinimizeButtonX := UltimoButtonX - 50
TextWidth := A_ScreenWidth * 0.41

Gui Add, ActiveX, x0 y52 w%A_ScreenWidth% h%A_ScreenHeight% vWB, Shell.Explorer


Gui, Add, Picture, gVoltar x%PrimeiroButtonX% ym w40 h40 , %A_ScriptDir%\Voltar.png
Gui, Add, Picture, gIr x+10 ym w40 h40 , %A_ScriptDir%\Avançar.png
Gui, Add, Picture, gAtualizar x+40 ym w40 h40 , %A_ScriptDir%\Refresh.png
Gui, Add, Picture, gMinimizar x%MinimizeButtonX% ym w40 h40 , %A_ScriptDir%\Minimize.png
Gui, Add, Picture, gGuiClose x%UltimoButtonX% ym w40 h40 , %A_ScriptDir%\Close.png


Gui, Font, S25, Verdana
Gui, Font, cffffff
Gui, Add, Text, x%TextWidth% ym, TuaTia


Gui, +ToolWindow -Caption +Border
Gui, Color, 333333
Gui Show
WB.Navigate("https://Google.com.br")
return

Voltar:
try WB.GoBack()
return

Ir:
try WB.GoForWard()
return

Atualizar:
try WB.Refresh()
return

Minimizar:
Gui Show, Minimize
return



GuiClose:
ExitApp
