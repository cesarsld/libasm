segment .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup: ; rdi hold value
    cmp rdi, 0
    je null
    push rbp
    mov rbp, rsp
    push rdi
    call _ft_strlen
    inc rax
    push rax
    call _malloc
    cmp rax, 0
    je fail
    mov rdi, rax
    pop rcx
    pop rsi
    cld
    rep movsb
    mov rsp, rbp
    pop rbp
    ret

null:
	mov rax, 0
    ret

fail:
	mov rsp, rbp
	pop rbp
	mov rax, 0
	ret