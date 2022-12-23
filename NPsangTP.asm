  mov cx,-1   
  mov bx,0 
 
mu: 
    mov dx,2
  shl dx,1
  

lap:  
 
mov ah,1
int 21h 
cmp  al,'1'
jg false
cmp  al,'0' 
jl false   
inc cx   
xor ah,ah

       cmp al,'1'
       je xuli1 
       cmp al,'0'
       je xuli0
       cmp al,13
       je exit 
xuli1: 
      cmp cx,0
      je continou
      mul dx     
      
      continou: 
      mov ax,1
      or bx,ax
      s
      
      
xuli0:    
   False:   

exit:
  
     ;
;       mov dx,0
;       push dx
; number1: 
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
;  loop number1
; 
;  ;pop bx
;  ;pop cx 
;  ;push bx   
;  
;  xor cx,cx
;  nhiphan:
;  mov dx,0  
;  mov bx ,2
;  div bx 
;  push dx 
;  
;  inc cx
;  
;  cmp ax,0
;  jle thoat
;  
;  jmp nhiphan
;  
;  thoat:  
;  pop dx 
;  add dx,30h
;  mov ah,2
;  int 21h
;  loop thoat
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