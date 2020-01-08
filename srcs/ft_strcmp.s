segment .text
    global _ft_strcmp

_ft_strcmp:
    mov al, BYTE [rdi]
    mov bl, BYTE [rsi]
    cmp al, 0
    je final
    cmp bl, 0
    je final
    cmp al, bl
    jne final
    inc rdi
    inc rsi
    jmp _ft_strcmp


final:
    movzx rax, al
    movzx rbx, bl
    sub rax, rbx
    ret