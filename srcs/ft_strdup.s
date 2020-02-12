segment .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup: ; rdi hold value
    cmp rdi, 0
    je null
    push rbp		; store rbp in stack
    mov rbp, rsp	; move rsp value in now saves rbp
    push rdi		; store rdi in stack
    call _ft_strlen	; calc str length
    inc rax			; inc func return value for /0
    push rax		; store return
    call _malloc
    cmp rax, 0		; exit if malloc fails
    je fail
    mov rdi, rax	; store malloc address in rdi
    pop rcx			; pop len in rcx used in rep
    pop rsi			; pop rdi back in rsi used in movsb
    cld				; set dir flag to 0 to proceed string from low to hi address
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