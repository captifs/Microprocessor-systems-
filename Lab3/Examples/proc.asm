; Procedurile reprezintă porțiuni de cod care pot fi apelate din program pentru a efectua anumite
; operații. Procedurile permit structurarea programului și permit înțelegerea lui mai ușoară.
; La finalul execuției unei proceduri programul se va întoarce în punctul imediat următor apelului acesteia.
; O procedură se poate apela cu ajutorul instrucțiunii CALL; această instrucțiune va salva pe stivă
; adresa de întoarcere (adresa instrucțiunii care urmează imediat după CALL). Instrucțiunea RET
; va efectua un salt la adresa de întoarcere (extrasă de pe stivă).

exemplu PROC
 MOV AL, 1
 MOV BL, 2
 CALL m2
 CALL m2
 CALL m2
 CALL m2
 HLT
exemplu ENDP
m2 PROC
 MUL BL ; AX = AL * BL
 RET
m2 ENDP

;-----------------------------------------------------------------------------------------------------

; Stiva este o zonă de memorie utilă pentru păstrarea
; temporară a datelor. Stiva este utilizată de instrucțiunea
; CALL pentru a ține minte adresa de întoarcere la execuția instrucțiunii RET. 
; Stiva poate fi utilizată și pentru a salva orice alt tip de date (registru,
; registru de segment, adresă de memorie sau operand imediat) cu ajutorul instrucțiunilor PUSH și POP
;
; Stiva poate fi folosită, de exemplu, pentru a salva un registru și a restaura valoare lui ulterior:

MOV AX, 1234h
PUSH AX ; salvare conținut AX
MOV AX, 5678h ; modificare registru AX
POP AX ; restaurare conținut registru AX

; Sau pentru a interschimba valorile a două registre:

MOV AX, 1212h
MOV BX, 3434h
PUSH AX
PUSH BX
POP AX
POP BX

;---------------------------------------------------------------------------------------------------------

; Exemple de program:

MOV AX, 1234h
PUSH AX
MOV DX, 5678h
PUSH DX
POP BX
POP CX
CALL tfunc
MOV AX, 7890h
PUSH AX
POP BX
HLT
tfunc PROC NEAR
XOR BX, BX
XOR CX, CX
RET
tfunc ENDP
;---------------------------------------------------------

MOV AX, 0B800h
PUSH AX
POP DS
MOV [170h], 'H'
MOV [172h], 'i'
MOV [171h], 11001110b
MOV [173h], 10011110b
HLT




