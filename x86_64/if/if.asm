section .data
    msg1 db "menor",10
    msglen1 equ $ - msg1

    msg2 db "maior",10
    msglen2 equ $ - msg2

    msg3 db "igual",10
    msglen3 equ $ - msg3

    valor_a: dd 11
    valor_b: dd 10

section .text
    global _start

    _start:
        mov eax, dword [valor_a] 
        cmp eax, dword [valor_b] 

        jl menor
        jg maior
        je iguais

    menor:
        mov rax, 1
        mov rdi, 1
        mov rsi, msg1
        mov rdx, msglen1
        syscall
        jmp _end

    maior:
        mov rax, 1
        mov rdi, 1
        mov rsi, msg2
        mov rdx, msglen2
        syscall
        jmp _end

    iguais:
        mov rax, 1
        mov rdi, 1
        mov rsi, msg3
        mov rdx, msglen3
        syscall
        jmp _end

    _end:
        mov rax, 60
        mov rdi, 0
        syscall
