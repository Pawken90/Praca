#SingleInstance force

 kupa := []
 kupa[1] := 1
 Sleep , 1000
 MsgBox, % (kupa[1] + 1)

 ^Numpad1::
 clipboard =  
 Send ^c
 ClipWait  
 kupa := Clipboard
 MsgBox, %kupa%
 sleep 5000
 clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
 Send ^c
 ClipWait  ; Wait for the clipboard to contain text.
 kupa2 := Clipboard
 MsgBox,%kupa% , %kupa2%
 return
 	MsgBox, % zbierzDane.adres[1]" " zbierzDane.adres[2]" " zbierzDane.adres[3]" " zbierzDane.adres[4]" "
	