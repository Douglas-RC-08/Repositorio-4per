.section .data
    A: .quad 0
.section .text
.globl _start

contador: 
    pushq %rbp
    movq %rsp, %rbp
    
    movq $A, %rax
    addq $1, A

    popq %rbp
    ret

_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq $0, -8(%rbp)

    call contador
    call contador
    call contador
    call contador

    call contador
    movq %rax, -8(%rbp)

    movq -8(%rbp), %rdi

    addq $8, %rsp             #Liberar memoria
    popq %rbp                 #Liberar memoria

    movq $60, %rax
    syscall




