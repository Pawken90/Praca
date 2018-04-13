;Program writen by @Pawken 
;ALL RIGHTS RESERVED !!



#SingleInstance force

#Include Mess.ahk
#Include ZbierzDane.ahk
#Include Funkcje.ahk
#Include FunkcjeOperacyjne.ahk
#Include BazaDanych.ahk
#Include Gui.ahk
#include BazaDanychData.ahk



global sP = 6500
global sT = 1000
global sB = 300
global sS = 100
global poprawnaData1
global poprawnaData2
global poprawnaData3
global rondo
global DDL





MsgBox, Program wczytany wcisnij "OK" aby rozpocząć
	gui.guiTakNie()






	
^x::
ExitApp

	MsgBox, % zbierzDane.numerKlienta[1]
	MsgBox, % customer[zbierzDane.numerKlienta[1]]
	MsgBox, % zbierzDane.ilosc[1]
	MsgBox, % zbierzDane.batch[1]
	MsgBox, % zbierzDane.batch[2]
	MsgBox, % zbierzDane.hubatch[1]	
	MsgBox, % zbierzDane.hubatch[2]
	MsgBox, % zbierzDane.index[1]	

