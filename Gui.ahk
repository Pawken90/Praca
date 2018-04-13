
#SingleInstance force


#Include Mess.ahk
#Include ZbierzDane.ahk
#Include Funkcje.ahk
#Include FunkcjeOperacyjne.ahk
#Include BazaDanych.ahk
#Include Gui.ahk
#include BazaDanychData.ahk



class Gui
{
	guiTakNie()
	{
			List := " 299-947-121, REV. AH, TYPE I | 299-947-121, REV. AH, TYPE II | 299-947-320, REV.L, TY I | 299-947-320, REV.L, TY III | 299-947-320, REV.L, TY IV | 3M Standard | AWMS08-001, Issue B, Type I, Form 146U | AWMS08-001, Issue B, Type I, Form 220K | AWMS08-001, Issue B, Type I, Form 292K | AWMS08-001, Issue B, Type I, Form 292M1 | AWMS08-001, Issue B, Type I, Form 292U | BMS 5-101M, PL 114A6030, REV. D, TYPE II, GRADE 10 | BMS 5-101M, TYPE II, GRADE 10 | BMS 5-129L, TYPE 2, CLASS IA, GRADE 5 | BMS 5-129L, TYPE 4, CLASS IID, GRADE 10  | BMS 5-129L, TYPE 4, CLASS IID, GRADE 5 | ECS 6109-1005, Issue B | ECS 6109-1078, Issue B | IPS05-12-011-02, Issue 3, ABS5161 AH 02 | IPS05-12-011-02, Issue 3, ABS5161 AJ 02 | IPS10-06-001-05, Issue 3 | MAT 5701, ISSUE 6, Type 1 | MEP 09-063, REV. N, TYPE III, CLASS 2  |"



		Gui,Color,green
		Gui, Margin, +20, +20

		Gui, Add, DropDownList,xm ym w320 r6 sort vDDL gSubmit_All,% List

		Gui, Add, Button, xm w100 h40 gDo_Something, OK!

		Gui,Show , ,Wybierz SPEC ID

		return




		Submit_All:
			Gui, Submit,NoHide
			return
			
		Do_Something:
			Gui,Submit,Hide
			zbierzDane.liczbaPalet()
			zbierzDane.obd()
			MsgBox, Po zamknięciu tego okna proszę nie używać myszki oraz klawiatury
			Sleep, sS
			funkcjeOperacyjne.prdo()
			Sleep, sS
			funkcjeOperacyjne.otworzAdres()
			Sleep, sS
			funkcjeOperacyjne.zapiszHu()
			Sleep, sS
			funkcjeOperacyjne.otworzMonitor()
			Sleep, sS
			funkcjeOperacyjne.zmienLayout()
			Sleep, sS
			funkcjeOperacyjne.zapiszBatchTablica()
			Sleep, sS
			funkcjeOperacyjne.przejdzDoHuTablica()
			Sleep, sS
			funkcjeOperacyjne.zapiszHuTablica()
			Sleep, sS
			funkcjeOperacyjne.przywrocLayout()
			Sleep, sS
			funkcje.nastepnePalety()
			Sleep, sT
			MsgBox, Program zakonczył działanie pomyślnie! Można już używać myszki oraz klawiatury.
				
				ExitApp
	
	}
}

gui := new Gui

