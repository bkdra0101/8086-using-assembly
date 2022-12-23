mov ah,1
int 21h


repeat: 
    cmp al,30h
    jl continue
    cmp al,39h
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
   
 
 