 mov ah, 1
 int 21h
 sub al, 30h
 mov ah, 0
 push ax
 mov ch, al
 mov bx, 0
 mov cl, 1
 jmp input
 
 repeat:
       pop ch  
       dec cl   
       push bx  
       mov bx, 0
 input:   
       sub ch, 1
       mov al, 10
       mul bx
       mov bx, ax 
       mov ah, 1
       int 21h
       sub al, 30h
       mov ah, 0
       add bx, ax
       cmp ch, 0
       jg input
       cmp cl, 0
       jg repeat
 adder: 
        pop cx
        pop bx
        add cx, bx  
