NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; AutoHotKey Script(s)
;
; 2/11/15
; For pasting a list of tasks into Nirvana
; got from http://autohotkey.com/board/topic/102339-copy-lines-and-paste-one-line-at-a-time/
; IT WORKS! ??
; Simply copy a list of items, click on the rapid entry section in Nirvana and press F1
; Note: A ! character in the text seems to mess things up. It seems to call up Launchy!

F1::
	Loop, parse, clipboard , `r%A_Tab%
	{
		send, %A_LoopField%
		sleep, 800
	}
	
	MsgBox, Done.
	
	return
