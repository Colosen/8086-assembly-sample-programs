; initialise  
MOV AX,0300H
MOV DS,AX 

MOV DI,0000H  

MOV [DI],0002H 
INC DI
MOV [DI],0004H 
INC DI
MOV [DI],0006H
INC DI
MOV [DI],0007H
INC DI

MOV CL,0004H    
MOV DI,0000H          
MOV AL,[DI]
; main    
ABC: CMP AL,[DI]
JNC LABEL
MOV AL,[DI]
LABEL: INC DI
LOOP ABC

; store final result
MOV [DI],AL
 