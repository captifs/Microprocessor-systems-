; Trebuie să afișați mesajul 'AdrianBejenaru'
; începând cu locația (26,5).

org 100h

 mov AX, 0B800h 
 mov DS,AX 
 mov [00354h], 'A'
 mov [00356h], 'd'
 mov [00358h], 'r'
 mov [0035Ah], 'i'
 mov [0035Ch], 'a'
 mov [0035Eh], 'n'
 mov [00360h], 'B'
 mov [00362h], 'e'
 mov [00364h], 'j'
 mov [00366h], 'e'
 mov [00368h], 'n'
 mov [0036Ah], 'a'
 mov [0036Ch], 'r'
 mov [0036Eh], 'u'
       
 
  

ret
