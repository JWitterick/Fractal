﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
#NoTrayIcon
Loop 
{
FileReadLine, a, local_version.txt, 1
v := "https://github.com/JWitterick/Test/blob/main/current_version.txt?raw=true"
FileDelete, current_version.txt 
URLDownloadToFile %v%, current_version.txt 
FileReadLine, b, current_version.txt, 1
If (a <>  b) 
{
v := "https://github.com/JWitterick/Test/blob/main/update.exe?raw=true"
FileDelete, update.exe
URLDownloadToFile %v%, update.exe
Run, update.exe
}
Sleep, 1800000 
}
