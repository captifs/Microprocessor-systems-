; Exemplu de program – factorialul unui număr:


; salt peste declarațiile de variabile
; (altfel, acestea vor fi interpretate ca fiind cod executabil,
; cu rezultate greu de anticipat)
jmp start
; numărul al cărui factorial îl vom calcula
num DW 5
; factorialul va fi memorat aici
fact DW ?
start:
 mov CX, num
 mov AX, 1
 cmp CX, 0
 je gata
 mov AX, 1
 mov BX, 1
calc:
 mul BX ; (DX AX) = AX * BX
 cmp DX, 0
 jne overflow
 inc BX
 loop calc
gata:
 mov fact, AX
 ; se poate completa cu afișarea numărului
 hlt
overflow:
 ; se poate afișa un mesaj de eroare
 hlt
