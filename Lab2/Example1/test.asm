MOV AX, 0B800h ; încarcă în AX valoarea B800h.
MOV DS, AX ; copiază conținutul lui AX în DS.
MOV CL, 'A' ; încarcă în CL codul ASCII al literei 'A' (41h).
MOV CH, 1101_1111b ; încarcă în CH valoarea binară 11011111.
MOV BX, 15Eh ; încarcă în BX valoarea 15Eh.
MOV [BX], CX ; copiază conținutul lui CX la adresa B800:015E.
