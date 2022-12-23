INPUT:  MOV AH, 1H
        INT 21H
        CMP AL, 31H
        JE SAVE    
        CMP AL, 30H
        JE SAVE    
        CMP AL, 'b'
        JE OUTPUT
        JMP DEL 
SAVE:   AND AL, 0FH
        XOR AH, AH
        SHL DX, 1
        or DX, AX
        JMP INPUT
DEL:    XOR DX, DX
        JMP INPUT
OUTPUT: MOV AX, DX 
        ;JMP OUT1        
OUT1:   MOV BX, 10
        XOR DX, DX
        DIV BX
        PUSH DX
        INC CL
        CMP AX, 0 
        JE PRINT
        JMP OUT1 
PRINT:  POP DX
        OR DL, 30H
        MOV AH, 2
        INT 21H
        DEC CL
        CMP CL, 0
        JE EXIT
        JMP PRINT
EXIT:
