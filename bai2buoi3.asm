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
    push ax
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
  
  pop  ax
  

  nhiphan:
  mov dx,0  
  mov bx ,2
  div bx 
  push dx 
  
  inc cx
  
  cmp ax,0
  jle thoat
  
  jmp nhiphan
  
  thoat:  
  pop dx 
  add dx,30h
  mov ah,2
  int 21h
  loop thoat
;             
;             
;       mov dx,0
;       push dx
; number2: 
;     
;;    mov bx,0  
;;    
;;    mov ah,1
;;    int 21h 
;;    sub al,'0' 
;;    mov ah,0  
;;    
;;    
;;    mov dl,10
;;    mul dl 
;
;  
;;    add bx,ax
;;    cmp cx,0
;;    je break
;;    loop number1  
;    
;;break: 
;
; mov ah,1
; int 21h
; sub al,'0'
; mov ah,0
; mov bx, ax
;  
;  
;  
;  pop ax  
;  ;mov dl,10
;  ;mov dh,0
;  ;mul dl 
;  mov dx,10
;  mul dx
;  add ax,bx
;  push ax
;  loop number2      
;  
;; lay so ra stack  
;  pop dx ;so 2
;  pop bx  ; so 1 
;  
;  
;  push bx  ; luu so 1
;  push dx   ; luu so 2
;  
;  add bx,dx
;     mov cx,0
;    
;    mov ax,bx 
;  lap1:
;     
;    mov dx,0
;    mov bx,10
;    div bx
;    push dx
;    inc cx
;    cmp ax,0
;    jg lap1  
;    
;   hienthi1:
;    pop dx
;    add dl,30h
;    mov ah,2
;    int 21h
;    loop hienthi1
;    
;  
;  pop dx ;so 2
;  pop bx  ; so 1
; 
;  
;  sub bx,dx
;     mov cx,0
;    
;    mov ax,bx 
;  lap2:
;     
;    mov dx,0
;    mov bx,10
;    div bx
;    push dx
;    inc cx
;    cmp ax,0
;    jg lap2  
;    
;   hienthi2:
;    pop dx
;    add dl,30h
;    mov ah,2
;    int 21h
;    loop hienthi2