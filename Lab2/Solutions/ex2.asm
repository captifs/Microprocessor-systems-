; Scrieți un program care calculează suma unui vector de numere întregi,
; fără semn, pe 8 biți (uint8_t), aflat în memorie la o adresă prestabilită.
; Rezultatul se va calcula pe 16 biți și va fi stocat în registrul AX.
;
; Pentru a afla adresa de început și dimensiunea vectorului, clic pe Evaluate.
; Fiecare student va primi un set unic de parametri (adresă + dimensiune).
; 
; Elementele vectorului vor fi alese aleator, astfel încât suma lor să fie
; strict mai mică decât 65536, dar mai mare decât 256.
;
; Indicație: puteți folosi segmentul DS sau ES pentru adresarea elementelor
; din vector.
;------------------------------------------------------------------------------

; Trebuie să calculați suma numerelor dintr-un vector
; cu dimensiunea de 246 octeți, aflat la adresa de memorie 0x9BF79.


org 100h

  ; scrieti codul dvs. aici
  mov AX, 09BF7h
  mov DS, AX
  xor Ax,AX 
  mov BX, 09h
  mov CX, 246
  xor DX, DX
  bucla:
    mov DL, [BX]
    add AX, DX
    inc BX
    LOOP bucla
    HLT

ret
