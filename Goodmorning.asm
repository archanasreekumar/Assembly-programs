BITS 32

extern printf
extern scanf

section .data
    out_string: db "Good Morning ", 0
    in_string: db "Enter your name:", 10, 0
    name : times 4 db 0
    user_in : db "%s",0
    user_out : db "%s",0

section .text
	global main
	global printf
	global scanf

main:

	push ebp
	mov ebp,esp		;stack frame

	push in_string
	call printf
	add esp,4		

	push name		;push parameter
	push user_in	;push format specifier
	call scanf		;call function
	add esp,8		;clearing the stack

	
	push out_string
	call printf
	add esp,8

	push name
	call printf
	add esp,8		; print output

	mov eax, 0
    mov esp, ebp
    pop ebp
    ret



