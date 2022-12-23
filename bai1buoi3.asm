mov ah,1
int 21h    
lap:
cmp  al,'7'
jg continue
cmp  al,'1' 
jl continue
    mov ah,0
    mov cx,ax   
    sub cx, 30h     
     jmp exit
    continue:
          mov ah,1
          int 21h  
          jmp lap 
exit: 
       mov ax,2
       sub cx,1
lap1:   
    shl ax ,1    
    loop lap1 
hienthi:  
     mov dx,0  
    mov bx,10
    div bx 
     push dx 
     inc cx     
     cmp ax,0
     jle manhinh
jmp hienthi
manhinh: 
  mov ah,2 
  pop dx 
  add dx,30h
  int 21h 
  loop manhinh  
  

  
  
    
    
    
    
    
