; RE4B p.949  6.1.7 Modifying arguments

push    456     ; will be b
push    123     ; will be a
call    f       ; f() modifies its first argument
pop     eax
add     esp, 4
; EAX=1st argument of f() modified in f()
