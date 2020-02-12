segment .text
    global _ft_write

_ft_write:
    cmp rsi, BYTE 0
    je exit
	mov r8, rsi
    mov rsi, 0
    mov rax, 0x20000BD
    syscall
    cmp rax, 9
    je exit
    mov rsi, r8
    mov rax, 0x2000004
    syscall
	jc exit
    ret

exit:
    mov rax, -1
    ret