; Instrucțiunea MOV copiază al doilea operand (sursa) în primul operand (destinație). Operanzi
; suportați de instrucțiunea MOV:

MOV AX, 0B800h ; încarcă în AX valoarea B800h.
MOV DS, AX ; copiază conținutul lui AX în DS.
MOV CL, 'A' ; încarcă în CL codul ASCII al literei 'A' (41h).
MOV CH, 1101_1111b ; încarcă în CH valoarea binară 11011111.
MOV BX, 15Eh ; încarcă în BX valoarea 15Eh.
MOV [BX], CX ; copiază conținutul lui CX la adresa B800:015E.

;------------------------------------------------------------------------------------------------

; Variabilele în limbaj de asamblare sunt alias-uri pentru adrese de memorie, menite să ușureze
; scrierea și înțelegerea programelor. EMU8086 suportă două tipuri de variabile: BYTE (8 biți) și
; WORD (16 biți). Declararea unei variabile se face în felul următor (byte respectiv word):
; nume DB valoare
; nume DW valoare

MOV AL, var1
MOV BX, var2
HLT ; are rolul de a opri simularea
var1 DB 7
var2 DW 1234h

;-----------------------------------------------------------------------------------------------

; Instrucțiunea ADD are ca efect adunarea a doi operanzi și depunerea rezultatului în primul
; operand. În mod similar funcționează și instrucțiunea SUB pentru operația de scădere.
; Instrucțiunile INC și DEC permit incrementarea și decrementarea unei valori conținute într-un
; registru sau într-o locație de memorie.

MOV AX, 5
MOV BX, 10
INC AX
DEC BX
ADD AX, BX
SUB AX, 1

;-----------------------------------------------------------------------------------------------

Instrucțiunea LOOP permite implementarea unor secvențe repetitive și își bazează funcționarea
pe testarea conținutului registrului CX – la fiecare execuție a instrucțiunii se decrementează CX
și se testează dacă este egal cu zero.

MOV AX, 0
MOV CX, 10
bucla: ; eticheta de salt
 INC AX ; AX se va incrementa de 10 ori
 LOOP bucla
HLT


