; Macro-urile sunt secvențe de instrucțiuni grupate după un identificator (nume) care pot fi referite
; în program de oricâte ori dorim. Spre deosebire de proceduri, macro-urile nu necesită
; instrucțiunea CALL pentru apel, ele fiind de fapt înlocuite în program cu secvența de instrucțiuni
; echivalentă în cadrul procesului de asamblare.
; Spre deosebire de proceduri, macro-urile acceptă și parametri. În cazul procedurilor, parametrii
; pot fi indicați fie pe stivă, fie în registre.

MyMacro MACRO p1, p2, p3
 MOV AX, p1
 MOV BX, p2
 MOV CX, p3
ENDM
MyMacro 1, 2, 3
MyMacro 4, 5, DX
HLT
