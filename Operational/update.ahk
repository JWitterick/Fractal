#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
#NoTrayIcon
MsgBox Cum
FileDelete, local_version.txt
FileAppend, 1, local_version.txt
; Changes the local vesion on the computer
