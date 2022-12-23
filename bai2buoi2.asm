mov ah,1
int 21h
 mov bl,al

repeat: 
    cmp bl,30h
    jl continue
    cmp bl,39h
    jg continue 
    
 mov ah,2
       mov dl ,54h
       int 21h 
       jmp exit  
         
        continue:  
        mov ah,2
        mov dl ,46h
        int 21h  
            mov ah,1
            int 21h
            
        jmp repeat
 exit:   
 
 
   mov cl, bl
   cmp bl,'5'
   jle nto9 
   cmp cl, '5'
   jg ra
   
   ;cmp al,5
   ;jg nto0
   
   nto9:   
        
        mov ah,2  
        mov dl, bl
        int 21h
         cmp bl,'9' 
         je ra
         inc bl
           
    jmp nto9
    
    ra:

    
    mov ah,2
    mov dl, cl
    int 21h
    cmp cl, '0'
    je finish
    dec cl
   jmp ra
                
  finish: