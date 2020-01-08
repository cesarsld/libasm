segment .text
    global _ft_strcpy
    extern _ft_strlen

_ft_strcpy:
    cmp rsi, 0 ; compare if source is empty
    je exit
    push rdi ; stacks rdi address on top of stack
    mov rdi, rsi ; assign rsi pointer to rdi
    call _ft_strlen
    pop rdi ;put back information of stack in rdi
    cld
    rep movsb
    mov BYTE[rdi], 0
    sub rdi, rcx
    mov rax, rdi
    ret

exit:
    mov BYTE[rdi], 0
    mov rax, rdi
    ret