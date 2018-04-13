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


global numerObd
global iloscPalet
global iloscRolek
global zmiennaZWartosciaZero

zmiennaZWartosciaZero := 0

;Ustawiamy zmienna by była widoczna w kazdej cześci programu.

class ZbierzDane
{

	
		obd()
	{
		InputBox,numerObd,Podaj Numer OBD, Wpisz numer OBD
	}
	
		liczbaPalet()
	{
		InputBox,iloscPalet,Ile bedzie palet, Wpisz ilosc palet
	}
	
		liczbaRolekWKartonie()
	{
		InputBox,iloscRolek,Ile Rolek W Kartonie, Wpisz Ilosc Rolek W Kartonie
	}

	uzyjObd()
	{
		Send, % numerObd
	}
;Wyciagamy OBD z pamieci
	
		przechowajhu()
	{
		global hu = []
		
		hu[1]
	}
	
	
	przechowajAdres()
	{
		global numerKlienta = []
		
		numerKlienta[1]
	}	
	
	przechowajSchowek()
	{
		global schowek = []
		
		schowek[1] 
		schowek[2] 
	
	}
	
	przechowajIlosc()
	{
		global ilosc = []
		
		ilosc[1]
	}
	
	przechowajIndex()
	{
		global index = []
		
		index[1]
	}


	
	przechowajBatch()
	{
		global batch = []
		
		batch[1]
		batch[2]
		batch[3]
		batch[4]
		batch[5]
		batch[6]
		batch[7]
		batch[8]
		batch[9]
		batch[10]
		batch[11]
		batch[12]
		batch[13]
		batch[14]
		batch[15]
		batch[16]
		batch[17]
		batch[18]
		batch[19]
		batch[20]
		batch[21]
		batch[22]
		batch[23]
		batch[24]
		batch[25]
		batch[26]
		batch[27]
		batch[28]
		batch[29]
		batch[30]
		batch[31]
		batch[32]
		batch[33]
		batch[34]
		batch[35]
		batch[36]
		batch[37]
		batch[38]
		batch[39]
		batch[40]
		batch[41]
		batch[42]
		batch[43]
		batch[44]
		batch[45]
		batch[46]
		batch[47]
		batch[48]
		batch[49]
		batch[50]
		batch[51]
		batch[52]
		batch[53]
		batch[54]
		batch[55]
		batch[56]
		batch[57]
		batch[58]
		batch[59]
		batch[60]
		batch[61]
		batch[62]
		batch[63]
		batch[64]
		batch[65]
		batch[66]
		batch[67]
		batch[68]
		batch[69]
		batch[70]
		batch[71]
		batch[72]
		batch[73]
		batch[74]
		batch[75]
		batch[76]
		batch[77]
		batch[78]
		batch[79]
		batch[80]
		batch[81]
		batch[82]
		batch[83]
		batch[84]
		batch[85]
		batch[86]
		batch[87]
		batch[88]
		batch[89]
		batch[90]
		batch[91]
		batch[92]
		batch[93]
		batch[94]
		batch[95]
		batch[96]
		batch[97]
		batch[98]
		batch[99]
		batch[100]
	}
	
	przypiszBatch()
	{
		global hubatch = []
	
		hubatch[1]
		hubatch[2]
		hubatch[3]
		hubatch[4]
		hubatch[5]
		hubatch[6]
		hubatch[7]
		hubatch[8]
		hubatch[9]
		hubatch[10]
		hubatch[11]
		hubatch[12]
		hubatch[13]
		hubatch[14]
		hubatch[15]
		hubatch[16]
		hubatch[17]
		hubatch[18]
		hubatch[19]
		hubatch[20]
		hubatch[21]
		hubatch[22]
		hubatch[23]
		hubatch[24]
		hubatch[25]
		hubatch[26]
		hubatch[27]
		hubatch[28]
		hubatch[29]
		hubatch[30]
		hubatch[31]
		hubatch[32]
		hubatch[33]
		hubatch[34]
		hubatch[35]
		hubatch[36]
		hubatch[37]
		hubatch[38]
		hubatch[39]
		hubatch[40]
		hubatch[41]
		hubatch[42]
		hubatch[43]
		hubatch[44]
		hubatch[45]
		hubatch[46]
		hubatch[47]
		hubatch[48]
		hubatch[49]
		hubatch[50]
		hubatch[51]
		hubatch[52]
		hubatch[53]
		hubatch[54]
		hubatch[55]
		hubatch[56]
		hubatch[57]
		hubatch[58]
		hubatch[59]
		hubatch[60]
		hubatch[61]
		hubatch[62]
		hubatch[63]
		hubatch[64]
		hubatch[65]
		hubatch[66]
		hubatch[67]
		hubatch[68]
		hubatch[69]
		hubatch[70]
		hubatch[71]
		hubatch[72]
		hubatch[73]
		hubatch[74]
		hubatch[75]
		hubatch[76]
		hubatch[77]
		hubatch[78]
		hubatch[79]
		hubatch[80]
		hubatch[81]
		hubatch[82]
		hubatch[83]
		hubatch[84]
		hubatch[85]
		hubatch[86]
		hubatch[87]
		hubatch[88]
		hubatch[89]
		hubatch[90]
		hubatch[91]
		hubatch[92]
		hubatch[93]
		hubatch[94]
		hubatch[95]
		hubatch[96]
		hubatch[97]
		hubatch[98]
		hubatch[99]
		hubatch[100]	
	}
	
}

	
	
	
	
	
	
	
	
	
zbierzdane.schowek[1] := zmiennaZWartosciaZero
zbierzDane := New ZbierzDane



;Stworzenie nowego obiektu

