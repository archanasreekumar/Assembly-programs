BITS 32

extern printf


section .data
	out : db "Even Numbers are:",10,0
	format : db "%d",10,0
    

section .text
	global main
	global printf
	
main:
	push ebp
	mov ebp,esp

	push out		
	call printf
	add esp,4
	mov ebx,0

loop:
	inc ebx			;loop to find the even number
	inc ebx
	push ebx
	push format
	call printf
	add esp,8
	cmp ebx,100		;comparing result with the value 100
	jl loop			

	
    mov eax, 0
    mov esp, ebp
    pop ebp
    ret

    

