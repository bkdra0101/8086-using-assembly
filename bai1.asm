;1ST NUMBER
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
;2ND NUMBER
MOV AH,1
INT 21H  
SUB AL,30H  
MOV DH,10
MUL DH              
MOV BH,AL    
MOV AH,1
INT 21H
SUB AL,30H
ADD BH,AL 
mov cl,bh
mov ch,0
push cx
mov cx,0    
;CHECKMIN
CMP BL,BH
Jl SOMINBL
JG SOMINBH
SOMINBL:
MOV DX,10
XOR AX,AX 
MOV AL,BL
DIV DL    
MOV CL ,AH
MOV AH,2
MOV DL, AL
OR DL,30H
INT 21H  
MOV AH,2
MOV DL, CL 
OR DL,30H
INT 21H  
jmp ra 
SOMINBH: 
MOV DX,10
XOR AX,AX 
MOV AL,Bh
DIV DL    
MOV CL ,AH
MOV AH,2
MOV DL, AL
OR DL,30H
INT 21H  

MOV AH,2
MOV DL, CL 
OR DL,30H
INT 21H

ra:
;sum of digit a
MOV DX,10

XOR AX,AX 
MOV AL,Bl
DIV DL 

add al,ah
mov ah,0
div dl

MOV CL ,AH
MOV AH,2
MOV DL, AL
OR DL,30H
INT 21H  

MOV AH,2
MOV DL, CL 
OR DL,30H
INT 21H    

;binay
mov cx,16
pop bx   
rol bx,8
binary: Rol bx,1
MOV DL,01H 
mov dh,0
AND DX,BX
OR DL,30H 

 MOV AH,2
 INT 21H
DEC CX

cmp CX,8
jne binary 
comp:

 

       

