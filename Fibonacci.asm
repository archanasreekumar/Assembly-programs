BITS 32

extern printf
extern scanf


section .data
	out_1 : db "Enter the number:",0
	out_2 : db "Fibonacci series:",10,0
	format : db "%d",0
	format_out:db "%d ",0
	n : times 4 db 0
    

section .text
	global main
	global printf
	global scanf

main:
	push ebp
	mov ebp,esp

	sub esp,0xc 			;allocating buffer

	lea eax,[ebp-0xc]		;reading user input
	push eax
	push format
	call scanf
	add esp,8

	mov ebx,0				;moving 0
	mov [ebp-4],ebx

	inc ebx 				;moving 1
	mov [ebp-8],ebx

	mov eax,[ebp-4]			;print 0
	push eax
	push format_out
	call printf
	add esp,8

	mov eax,[ebp-8]			;print 1
	push eax
	push format_out
	call printf
	add esp,8

loop:
	
	mov eax,[ebp-4]			;move first value to eax
	add eax,[ebp-8]			;add two numbers
	mov ebx,eax				;move result to ebx
	push ebx 				;print the result
	push format_out
	call printf
	add esp,8
	mov eax,[ebp-4]			;swapping the values
	mov [ebp-8],eax
	mov [ebp-4],ebx
	
	cmp ebx,[ebp-0xc]		;comparing the result with input value
	jl loop





	mov eax, 0
    mov esp, ebp
    pop ebp
    ret





