 MOV CX, 0AH
INP: 
MOV AH,1
INT 21H             
SUB AL,30H
MOV DH,10
MUL DH              
MOV BL,AL      
MOV AH,1
INT 21H
SUB AL,30H
ADD BL,AL    
COMP: 
  xor bh,bh  
   CMP Bl, 4
   JL  Error
   CMP BL, 99
   JG Error
    mov bh,0
   JMP condition
Error:
 MOV DL, 'F'
    MOV AH, 2 
  INT 21H
   JMP INP    
condition:
mov dx,0 
mov ax,bx   
mov cx,0002h 
div cx
ADD DX,30H
mov bx,dx
cmp bx,30h 
je Error  
EXIT:   


   

   
 



   

 