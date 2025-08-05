.section .data                # Variavel Global (data)
    A: .quad 0
    B: .quad 0
.section .text                # instrução (text)
.global _start                # programa começa aqui.
_start:
    movq $7, A
    movq $6, B
    movq A, %rax
    movq B, %rbx

    addq %rax, %rbx

    movq $rbx, %rdi              # %rd é o registrador de retorno
    movq $60, %rax               # %rax indica alguma coisa para o SO
    syscall

