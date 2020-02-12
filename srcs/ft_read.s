segment .text
    global _ft_read

_ft_read: ; rdi = fd  | rsi = buf pointer | rdx = size
    cmp edi, 0
    jl exit
    cmp rsi, 0
    je exit
    mov r8, rsi
    mov rsi, 0
    mov rax, 0x20000BD
    syscall
    cmp rax, 9
    je exit
	mov rsi, r8
    mov rax, 0x2000003
    syscall
	jc exit
    ret

exit:
    mov rax, -1
    ret