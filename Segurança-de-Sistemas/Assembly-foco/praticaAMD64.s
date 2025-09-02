.section .text
.globl _start

_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq $0, -8(%rbp)

    pushq -8(%rbp)   # Aqui alocamos mais um valor, esse será o parâmetro da função
    call contador



