;Program writen by @Pawken 
;ALL RIGHTS RESERVED !!
;Main script to fill Mess data

#SingleInstance force

#Include Mess.ahk
#Include ZbierzDane.ahk
#Include Funkcje.ahk
#Include FunkcjeOperacyjne.ahk
#Include BazaDanych.ahk
#Include Gui.ahk
#include BazaDanychData.ahk



Class Funkcje
{

;petla pgup
		pgup(y)
		{
			while(x<y)
			{
				Sleep, sB
				Send, {PGUP}
				x++
			}
		}


		tab(y)
		{
			while(x<y)
			{
				Sleep, sB
				Send, {Tab}
				x++
			}
		}
;Wciska Tab	
	
	down(y)
		{
			while(x<y)
			{
				Send, {Down}
				x++
			}
		}
		
;Wciska Strzałkę w Dół
	left(y)
	{
			while(x<y)
			{
				Send, {Left}
				x++
			}
	}	
;Wciska Strzałke w dół

	right(y)
	{
			while(x<y)
			{
				Send, {Right}
				x++
			}
	}
;Wciska Strzałkę w Prawo

	atab()
		{
		Send, !{Tab}
		}
;Alt+Tab		

	copy()
		{
		Send,^c
		}
;CTRL + C

	paste()
		{
		Send,^v
		}
;CTRL + V

	enter()
		{
		Send, {Enter}
		}
;Wciska ENTER	
	
	drukuj()
		{
		MsgBox,dziła
		}
;MSG BOX

	sap()
		{
		Run, "C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon.exe"
		WinWaitActive,SAP Logon 740
		Sleep, sT
		WinMaximize	
		Sleep,sB
		}
;Odpala Sapa
	
	mess()
		{
		Run, C:\Program Files (x86)\Internet Explorer\iexplore.exe https://mes-wroclaw-sh.mmm.com/LabelMaterialPrinting
		WinWaitActive,Zaloguj, , 8
		WinMaximize
		Funkcje.enter()
		WinWaitActive,3M MES - US - Wydruk etykiet po numerze indeksu,Wydruk etykiet po numerze indeksu,10
		WinMaximize
		rondo++
		}
;Odpala IE z Messem

	lpm(x,y)
	{
		MouseClick,left,x,y
	}
;Klikniecie lewym przyciskiem w wskazane coordynaty	
	
		lpmZaznacz(x,y)
	{
		Send {Ctrl Down}
		Sleep, sB
		MouseClick,left,x,y
		Sleep, sT
		Send {Ctrl Up}
	}
;Zaznacza z Ctrl tekst	

	zapisSchowekKlient(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.numerKlienta[i] := Clipboard
	}
;zapisuje dane ze schowka ADRES

	kopiujAdres(x,y)
	{
		Send, {Ctrl Down}
		funkcje.lpm(x,y)
		Send, {Ctrl Up}
	}
;Zaznacza adres
	wklejHu()
	{
		funkcje.paste()
	}
	
	zapisSchowekHu(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.hu[i] := Clipboard
	}

	zapisSchowekBatch(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.batch[i] := Clipboard
	}
;Zapisuje Batche do tablic	
	
		zapisSchowekHuBatch(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.huBatch[i] := Clipboard
	}
;Zapisuje Hu do tablic
	
	zapisSchowekIlosc(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.ilosc[i] := Clipboard
	}
;Zapisuje ilość do tablicy

		zapisSchowekIndex(i)
	{
		clipboard =  
		funkcje.copy()
		Sleep, sT
		zbierzDane.index[i] := Clipboard
	}
;Zapisuje index do tablicy	

	wypiszIndex()
	{	
		Sleep, sB
		Sleep, sB
		Send, % zbierzDane.index[1]
		Sleep, sB
		Sleep, sB
	}
;Wpisuje Index do tabelki
	
	wypiszNazweEtykiety()
	{
		Sleep, sB
		Sleep, sB
		Send,  PLCD_150X
		Sleep, sB
		Send, 210_aero2
		Sleep, sB
		Sleep, sB
	}
;Wpisuje Nazwe Etykiety do Tabeli
	
	wypiszNazweDrukarki()
	{
		Send, 02-f00-a12fr-3
	}
;Wpisuje nazwe drukarki do tabelki
	
	wypelnijPolaEtykiety(k)
	{
		Send, zbierzDane.hubatch[k]
		Sleep, sb
	}
	
	
	

	wypiszAdresDoTabeli(x)
	{
		kupa := customer[x]
		dudu := StrLen(kupa)
	
	
		if (dudu > 0)
		{
			

			funkcje.tab(1)
			StringMid,kupa1,kupa,0,30 
			StringMid,kupa2,kupa,30,30
			StringMid,kupa3,kupa,60,30
			Send, %kupa1%
			Sleep, sT
			funkcje.tab(1)
			Sleep, sB
			Send, %kupa2%
			Sleep, sT
			funkcje.tab(1)
			Sleep, sB
			Send, {BackSpace}
			Sleep, sB
			Send, {Space}
			Sleep, sB
			Send, %kupa3%
			Sleep, sT
			funkcje.tab(7)
			Sleep, sB
			zbierzDane.uzyjObd()
			Sleep, sT
			funkcje.tab(4)
			Sleep, sB
			Send, % zbierzDane.ilosc[1]
			Sleep, sT
			funkcje.tab(2)
			Sleep, sB
		}
	}
	
	zrobDate(x)
	{
		poprawnaData:= x
		
		
	
		StringMid,poprawnaData1,poprawnaData,1,2
		stringMid,poprawnaData2,poprawnaData,3,3
		
		poprawnaData3 := data[poprawnadata2]
	
	}

    
	
	wpiszHuIBatch(x,k,y)
	{
		
		while (zbierzDane.hubatch[(x + 1)] = zbierzdane.hubatch[(k + 1)])
		{
		
			y++
			k++
			Send, % zbierzDane.batch[k]
			Sleep, sT
			funkcje.tab(1)
			Sleep, sB
			Send, {Backspace}
			Sleep, sB
			;Send, {Space}
			Sleep, sB
			j++
			
			
		}
			zbierzDane.schowek[1] := y
	
	
		if(zbierzDane.hubatch[x] != zbierzdane.hubatch[k])
		{
			
	
			x++
			funkcje.lpm(1895, 971)
			Sleep, sB
			Send, {Home}
			Sleep, sT
			funkcje.lpm(256, 755)
			Sleep, sB
			Send, % zbierzDane.hubatch[x]
			Sleep, sB
			funkcje.Tab(4)
			Sleep, sB
			Send, % DDL
			Sleep, sB
			funkcje.Tab(1)
			Sleep, sB
			Send, Store at -18 Degrees or Below
			Sleep, sB
			funkcje.Tab(2)
			Sleep, sB
			Send, %j%
			Sleep, sT
			funkcje.tab(1)
			Send, 1
			Sleep, sB
			Sleep, sT
			funkcje.tab(1)
			Sleep, sT
			Send, %j%
			Sleep, sB															
			funkcje.tab(6)
			Send, %rondo%/%iloscPalet%
			Sleep, sT
			funkcje.tab(17)
	    }
		else
		{}

			m := 0
			zbierzDane.schowek[2] := z
		while (m<j)
			
		{
			z++
			Sleep, sB
			funkcje.zrobDate(zbierzDane.batch[y-j+z])
			Send, %poprawnaData1%%poprawnaData3%
			Sleep, sB
			funkcje.tab(1)
			Sleep sT
			
			m++
		}
			z := zbierzDane.schowek[2]
		Sleep, sB
		funkcje.lpm(1895, 971)
		Sleep, sB
		Send, {End}
		Sleep, sT
		Sleep, sB
		funkcje.lpm(1001, 918)
		Sleep, sP
		
		
	}
	
	
	PolaEtykiety()
	{
		while (iloscPetli < 1)
		{
			funkcje.wpiszHuIBatch(zbierzDane.schowek[1],zbierzDane.schowek[1],zbierzDane.schowek[1])
			iloscPetli++
		}
	}
	
	nastepnePalety()
	{	a++
		if (a <= iloscPalet)
		{
			while(a <= iloscPalet)
			{
				funkcje.mess()
				sleep sP
				funkcjeOperacyjne.daneDrukarki()
				sleep, sP
				funkcje.wypiszAdresDoTabeli(zbierzDane.numerKlienta[1])
				Sleep, sP
				funkcje.PolaEtykiety()
				a++
				;gui.guiTakNie()
				;KeyWait, Enter , D
			}
		}
		else
		{
		}
	}	
	
	
	
funkcje := New Funkcje
;Stworzenie nowego obiektu	
	
	
	
}