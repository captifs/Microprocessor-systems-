; Instrucțiunea CMP este o instrucțiune aritmetică care permite compararea a două valori prin
; scăderea celui de al doilea operand din primul. Instrucțiunea nu are nici un efect asupra celor
; doi operanzi, spre deosebire de instrucțiunea SUB, dar efectul ei se regăsește în registrul
; FLAGS. Instrucțiunea TEST funcționează după același principiu (nu are efect asupra
; operanzilor) dar efectuează AND la nivel de biți între cei doi operanzi iar efectul execuției se
; regăsește în registrul FLAGS.

MOV AH, 4
MOV AL, 4
CMP AH, AL
NOP
MOV AH, 4
MOV AL, 3
CMP AH, AL
NOP
MOV AH, 1
MOV AL, -5
CMP AH, AL ; 1 - (-5 modulo 256) = 1 – 251
NOP
MOV AH, 1
MOV AL, 251
CMP AH, AL
NOP
MOV AH, -3
MOV AL, -2
CMP AH, AL
NOP
MOV AH, -2
MOV AL, -3
CMP AH, AL
NOP
MOV AH, 255
MOV AL, 1
CMP AH, AL
NOP
HLT

;--------------------------------------------------------------------------


; Exemple pentru instrucțiunea JMP:
JMP eticheta ; salt necondiționat la eticheta
JMP $ ; $ indică adresa instrucțiunii curente
; instrucțiunea conduce la o buclă infinită
JMP $-5 ; salt la o adresă cu cinci octeți înainte de adresa curentă
; atenție!!! dimensiunea instrucțiunilor este variabilă

; Exemple de instrucțiuni de salt condiționat:
; JE, JZ (jump equal, jump zero) – efectuează saltul dacă ZF = 1
; JNE, JNZ (jump not equal, jump not zero) – efectuează saltul dacă ZF = 0
; JG, JNLE (jump greater, jump not less or equal) – ZF=0 și SF = OF (numere cu semn)
; JA, JNBE (jump above, jump not below or equal) – CF=0 și ZF=0 (numere fără semn)
; JL, JNGE (jump lower, jump not greater or equal) – SF<>OF (numere cu semn)
; JB, JNAE (jump below, jump not above of equal) – CF=1 (numere fără semn).

