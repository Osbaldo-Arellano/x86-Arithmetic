TITLE Project 1 - Basic Logic and Arithmetic Program  (Proj1_arellano.asm)

; Author:			Osbaldo Arellano
; Last Modified:	10/24/2022
; OSU email address: 
; Course number/section:   CS271 Section 400
; Project Number: 1            
; Due Date:	Oct 16, 2022 by 11:59pm 	
; Description: 
;				1. Displays my name and program title on the output screen.
;				2. Displays instructions for the user.
;				3. Prompts the user to enter three numbers (A, B, C) in strictly descending order.
;				4. Calculates and display the sum and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
;				5. Displays a closing message.
;				note: does not handle negative numbers and does not test input that would generate negative output. 

INCLUDE Irvine32.inc

.data
input1		DWORD	?
input2		DWORD	?
input3		DWORD	?
sum	        DWORD	?

intro		BYTE	"Basic Logic and Arithmetic Program. Author: Osbaldo Arellano",0 
gameRules	BYTE	"Enter three numbers in descending order and I'll show you the sums and differences.",0
text1		BYTE	"Input 1: ",0
text2		BYTE	"Input 2: ",0
text3		BYTE	"Input 3: ",0
plus		BYTE	" + ",0
minus		BYTE	" - ",0
equals		BYTE	" = ",0
goodbye		BYTE	"Thanks for playing!",0

sum1		BYTE	"A+B   = ",0 
difference1	BYTE	"A-B   = ",0
sum2		BYTE	"A+C   = ",0
difference2	BYTE	"A-C   = ",0
sum3		BYTE	"B+C   = ",0
difference3	BYTE	"B-C   = ",0
total		BYTE	"A+B+C = ",0

.code
main PROC
	mov     edx, OFFSET intro
	call	WriteString
	call	Crlf

	mov     edx, OFFSET gameRules
	call	WriteString
	call	Crlf

	mov     edx, OFFSET text1
	call	WriteString

	call    ReadDec
	mov     input1, eax

	mov     edx, OFFSET text2
	call	WriteString

	call	ReadDec
	mov     input2, eax

	mov     edx, OFFSET text3
	call	WriteString

	call	ReadDec
	mov     input3, eax

; A+B
	mov     ebx, input1
	add     ebx, input2
	mov     eax, input1
	call	WriteDec
	mov     edx, OFFSET plus
	call	WriteString
	mov     eax, input2	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; A-B
	mov     ebx, input1
	sub     ebx, input2
	mov     eax, input1
	call	WriteDec
	mov     edx, OFFSET minus
	call	WriteString
	mov     eax, input2	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov	    eax, ebx
	call	WriteDec
	call	Crlf

; A+C
	mov     ebx, input1
	add     ebx, input3
	mov     eax, input1
	call	WriteDec
	mov		edx, OFFSET plus
	call	WriteString
	mov		eax, input3	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; A-C
	mov     ebx, input1
	sub     ebx, input3
	mov     eax, input1
	call	WriteDec
	mov     edx, OFFSET minus
	call	WriteString
	mov     eax, input3	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; B+C
	mov     ebx, input2
	add     ebx, input3
	mov     eax, input2
	call	WriteDec
	mov     edx, OFFSET plus
	call	WriteString
	mov     eax, input3	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; B-C
	mov     ebx, input2
	sub     ebx, input3
	mov     eax, input2
	call	WriteDec
	mov     edx, OFFSET minus
	call	WriteString
	mov     eax, input3	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; A+B+C
	mov     ebx, input1
	add     ebx, input2
	add     ebx, input3
	mov     eax, input1
	call	WriteDec
	mov     edx, OFFSET plus
	call	WriteString
	mov     eax, input2	
	call	WriteDec
	mov     edx, OFFSET plus
	call	WriteString
	mov     eax, input3	
	call	WriteDec
	mov     edx, OFFSET equals
	call	WriteString
	mov     eax, ebx
	call	WriteDec
	call	Crlf

; goodbye
	mov     edx, OFFSET goodbye
	call	WriteString

	Invoke ExitProcess,0	; exit to operating system
main ENDP

END main
