
GRADER PROC
	PUSH	AX
	PUSH	DX

	CMP	AX, 90
	JNAE	ELSE_80
 	MOV	AH, 2
	MOV	DL, '-'
	INT	21H
	MOV	DL, 65
	JMP	DISPLAY
ELSE_80:
	CMP	AX, 80
	JNAE	ELSE_70
	MOV	AH, 2
	MOV	DL, '-'
	INT	21H
	MOV	DL, 66
	JMP	DISPLAY
ELSE_70:	
	CMP	AX, 70
	JNAE	ELSE_60
	MOV	AH, 2
	MOV	DL, '-'
	INT	21H
	MOV	DL, 67
	JMP	DISPLAY
ELSE_60:
	CMP	AX, 60
	JNAE	ELSE_
	MOV	AH, 2
	MOV	DL, '-'
	INT	21H
	MOV	DL, 68
	JMP	DISPLAY
ELSE_:
	MOV	AH, 2
	MOV	DL, '-'
	INT	21H
	MOV	DL, 70

DISPLAY:
	MOV	AH, 2
	INT	21H
	POP	AX
	POP	DX

	RET

GRADER	ENDP