segment .text
    global _ft_strcpy
    extern _ft_strlen

_ft_strcpy:
    cmp rsi, 0		; compare if source is empty
    je exit
	cmp rdi, 0
	je exit
    push rdi		; stacks rdi address on top of stack
    mov rdi, rsi	; assign rsi pointer to rdi
    call _ft_strlen
	mov rcx, rax
    pop rdi			;put back information of stack in rdi
	mov rax, rdi
    cld
    rep movsb
    mov BYTE[rdi], 0
    ret

exit:
    mov rax, rdi
    ret