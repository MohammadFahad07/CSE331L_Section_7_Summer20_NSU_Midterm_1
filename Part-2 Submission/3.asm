.MODEL SMALL
.STACK 100H
.DATA
 PROMPT_1 DB \'Enter the 1st digit : $\'
 PROMPT_2 DB \'Enter the 2nd digit : $\'  
  PROMPT_3 DB \'Enter the 3rd digit : $\'
   PROMPT_4 DB \'Enter the 4th digit : $\'
 PROMPT_5 DB \'Enter the 5th digit : $\'  
  PROMPT_6 DB \'Enter the 6th digit : $\'
   PROMPT_7 DB \'Enter the 7th digit : $\'
 PROMPT_8 DB \'Enter the 8th digit : $\'  
  PROMPT_9 DB \'Enter the 9th digit : $\'
  
 PROMPT_10 DB \'Sum of all digit : $\'
 VALUE_1 DB ?
 VALUE_2 DB ?
 VALUE_3 DB ?
 VALUE_4 DB ?
 VALUE_5 DB ?
 VALUE_6 DB ?
 VALUE_7 DB ?
 VALUE_8 DB ?
 VALUE_9 DB ?
 
 
 
 
.CODE    




 MAIN PROC
 MOV AX, @DATA 
 MOV DS, AX
 LEA DX, PROMPT_1 
 MOV AH, 9
 INT 21H
 MOV AH, 1 
 INT 21H


 SUB AL, 30H 
 MOV VALUE_1,AL
 MOV AH, 2 
 MOV DL, 0DH
 INT 21H
 MOV DL, 0AH 
 INT 21H
 LEA DX, PROMPT_2 
 MOV AH, 9
 INT 21H
 MOV AH, 1 
 INT 21H   
            
            
 SUB AL, 30H 
 MOV VALUE_2,AL
 MOV AH, 2 
 MOV DL, 0DH
 INT 21H
 MOV DL, 0AH 
 INT 21H
 LEA DX, PROMPT_3 
 MOV AH, 9
 INT 21H
 MOV AL, VALUE_1 
 ADD AL, VALUE_2
 ADD AL, 30H 
 MOV AH, 2 
 MOV DL, AL
 INT 21H
 MOV AH, 4CH 
 INT 21H
 MAIN ENDP