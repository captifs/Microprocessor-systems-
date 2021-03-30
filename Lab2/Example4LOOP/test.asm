; Instrucțiunea LOOP permite implementarea unor secvențe repetitive și își bazează funcționarea
; pe testarea conținutului registrului CX – la fiecare execuție a instrucțiunii se decrementează CX
; și se testează dacă este egal cu zero.

MOV AX, 0
MOV CX, 10
bucla: ; eticheta de salt
 INC AX ; AX se va incrementa de 10 ori
 LOOP bucla
HLT
