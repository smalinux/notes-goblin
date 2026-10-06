; RE4B p.68  1.9.2 What is the stack used for?

mov ah, 3ch       ; create file
lea dx, filename
mov cl, 1
int 21h
jc  error
mov file_handle, ax
...
error:
...
