


#Singleinstance,force

#Include Mess.ahk
#Include ZbierzDane.ahk
#Include Funkcje.ahk
#Include FunkcjeOperacyjne.ahk
#Include BazaDanych.ahk
#Include Gui.ahk
#include BazaDanychData.ahk



class FunkcjeOperacyjne
{
	
	prdo()
	{
		funkcje.sap()
		Sleep, sT
		funkcje.lpm(1857, 47)
		Sleep, sB
		Send, ewm
		Sleep, sB
		funkcje.lpm(779, 86)
		Sleep, sT
		funkcje.enter()
		WinWaitActive,SAP Easy Access
		Sleep, sT
		Send,/n/scwm/prdo
		Sleep, sB
		funkcje.enter()
		WinWaitActive, Maintain Outb. Deliv. Order - Warehouse No. 0172 (Time Zone CET)
	}
;Otwiera sapa, wchodzi do prdo
	
	otworzAdres()
	{
		funkcje.lpm(496, 160)
		Sleep, sT
		funkcje.lpm(492, 196)
		Sleep, sT
		funkcje.lpm(620, 162)
		Sleep, sT
		Send, % zbierzDane.uzyjObd()
		Sleep, sT
		Send, {f8}
		Sleep, sP
		funkcje.lpm(40, 496)
		Sleep, sT
		funkcje.lpm(96, 450)
		Sleep, sT
		Sleep, sB
		funkcje.lpmZaznacz(205, 556)
		Sleep, sT
		funkcje.zapisSchowekIlosc(1)
		Sleep, sB
		funkcje.lpm(370, 409)	
		Sleep, sT
		funkcje.lpm(34, 500)
		Sleep, sT		
		funkcje.lpm(89, 453)
		Sleep, sT		
		funkcje.lpm(61, 453)
		Sleep, sB
		funkcje.lpm(61, 453)
		Sleep, sT
		funkcje.lpmZaznacz(170, 511)
		Sleep, sT
		funkcje.zapisSchowekKlient(1)
		Sleep, sT
	}
;Otwiera master data adres

	zapiszHu()
	{
		funkcje.lpm(754, 405)
		Sleep, sT
		funkcje.lpm(113, 494)
		Sleep, sT
		funkcje.zapisSchowekHu(1)
	}

	otworzMonitor()
	{
		funkcje.lpm(115,52)
		Sleep, sT
		Send, /n/scwm/mon
		Sleep, sT
		funkcje.enter()
		Sleep, sT
		sleep, sT
		ifWinActive,Warehouse Management Monitor
		{
			Sleep, sT
			Send, 0172
			Sleep, sT
			funkcje.enter()
			Sleep, sT
			Sleep, sT
			Send, zsap
			Sleep, sT
			Send, {f8}
		}
		else{}
		WinWaitActive,Warehouse Management Monitor ZSAP - Warehouse Number 0172
		Sleep, sB
		funkcje.lpm(80, 320)
		Sleep, sB
		funkcje.right(1)
		Sleep, sB
		funkcje.lpm(108, 483)
		Sleep, sB
		funkcje.right(1)
		Sleep, sB
		funkcje.lpm(134, 499)		
		funkcje.lpm(134, 499)
		Sleep, sT
		Sleep, sT
		funkcje.lpm(560,61)
		Sleep, sT
		funkcje.wklejHu()
		Sleep, sB
		Send, {f8}
		Sleep, sT
		Send, {f8}
		Sleep, sT
		Sleep, sT

	}
;Otwiera monitor i wyswietla HU

	zmienLayout()
	{
		funkcje.lpm(940, 161)
		Sleep, sT
		funkcje.lpm(985, 249)
		Sleep, sT
		Sleep, sT
		funkcje.lpm(53, 127)
		Sleep, sT
		Sleep, sT
		funkcje.lpm(28, 216)
		Sleep, sB
		Send, {Shift Down}
		Sleep, sB
		Send, {f8}
		Sleep, sB
		Send, {Shift Up}
		Sleep, sB
		Send, {Ctrl Down}
		Sleep, sB
		Send, s
		Sleep, sB
		Send, {Ctrl Up}
		sleep, sB
		Send, {f3}
		Sleep, sT
		funkcje.lpm(134, 499)		
		funkcje.lpm(134, 499)
		Sleep, sB
		Send, {f8}
		Sleep, sT
		Sleep, sT
		funkcje.lpm(869, 206)
		Sleep, sT
		Sleep, sB
		funkcje.lpm(588, 163)
		Sleep, sT
		Sleep, sB
		funkcje.lpm(534, 227)
		Sleep, sB
		funkcje.left(1)
		Sleep, sB
		funkcje.zapisSchowekIndex(1)
		Sleep, sB
		funkcje.right(3)
		Sleep, sT
	}
;Zmienia LayOut na potrzebny

	zapiszBatchTablica()
	{
		zmiennaZero := 0
		i := 1	
		
	while (zmiennaZero <= zbierzDane.ilosc[1] - 1 )
	{
		
		funkcje.zapisSchowekBatch(i)
		Send, {down}
		Sleep, sB
		zmiennaZero ++
		i++
	}
    }
;Kopiuje wszystkie batche max 100

	przejdzDoHuTablica()
	{	
		Sleep, sB
		funkcje.lpm(534, 227)
		Sleep, sB
		funkcje.right(3)
		Sleep, sB
	}

	zapiszHuTablica()
	{
		zmiennaZero := 0
		i := 1	
		funkcje.pgup(10)
	while (zmiennaZero <= zbierzDane.ilosc[1] - 1 )
	{
		
		funkcje.zapisSchowekHuBatch(i)
		Send, {down}
		Sleep, sB
		zmiennaZero ++
		i++
	}
    }

	przywrocLayout()
	{
		funkcje.lpm(940, 161)
		Sleep, sT
		funkcje.lpm(985, 249)
		Sleep, sT
		Sleep, sT
		funkcje.lpm(28, 216)
		Sleep, sB
		Send, {Shift Down}
		Sleep, sB
		Send, {f8}
		Sleep, sB
		Send, {Shift Up}
		Sleep, sB
		Send, {Ctrl Down}
		Sleep, sB
		Send, s
		Sleep, sB
		Send, {Ctrl Up}
		sleep, sB
		Send, {f3}
		Sleep, sT
	}
;Przywraca pierwotny Layout:

;===========================================================================================
; Tutaj są funkcje w użyuwane w Mesie

	daneDrukarki()
	{
		Sleep , sT
		funkcje.tab(1)
		Sleep, sB
		funkcje.wypiszIndex()
		Sleep, sP
		Sleep, sT
		funkcje.enter()
		Sleep, sT
		Sleep, sT
		funkcje.tab(1)
		Sleep, sB
		funkcje.wypiszNazweEtykiety()
		Sleep, sT		
		Sleep, sT
		Sleep, sB
		funkcje.enter()
		Sleep, sB
		Sleep, sT		
		funkcje.tab(2)
		Sleep, sT
		Sleep, sB
		funkcje.wypiszNazweDrukarki()
		Sleep, sB
		Sleep, sT		
		Sleep, sT
		Sleep, sB
		funkcje.enter()
		Sleep, sB
		funkcje.tab(3)
		Sleep, sB
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	FunkcjeOperacyjne := new funkcjeOperacyjne
	
}