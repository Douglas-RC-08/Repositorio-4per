.section .data
    A: .quad 0
    B: .quad 0
.section .text
globl _start

soma:
    pushq %rbp               # Coloca o valor no topo da pilha e incrementa o RSP
    movq %rsp, %rbp          
    subq $16, %rsp           #Alocamos as duas Variaveis globais (A e B) na pilha. Subtriando por 16 = 8.2 "Está no topo da pilha?"
    movq A, %rax             
    movq %rax, -8(%rbp)
    movq B, %rbx
    movq %rbx, -16(%rbp)
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    addq %rbx, %rax
    popq %rbp
    ret

_start: 
    movq $4, A
    movq $5, B

    call soma
    movq %rax, %rdi     # RIP fica apontando para esse endereço na hora do call
    movq $60, %rax
    syscall