segment .text
    global _ft_strlen

_ft_strlen:
	mov rcx, 0
	cmp rdi, 0
	mov rax, 0
	je exit
	call while

while:
	cmp BYTE [rdi + rax], 0
	je exit
	inc rax
	jmp while

exit:
	ret