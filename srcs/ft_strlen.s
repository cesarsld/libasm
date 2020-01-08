segment .text
    global _ft_strlen

_ft_strlen:
	mov rcx, 0
	cmp rdi, 0
	je exit
	call while

while:
	cmp BYTE [rdi], 0
	je exit
	inc rdi
	inc rcx
	jmp while

exit:
	mov rax, rcx
	ret