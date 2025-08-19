.section .data
    A: .quad 0
    B: .quad 0
.section .text
globl _start

soma:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp          #Alocou espaço para a variavel 
    movq 16(%rbp), %rax 
    movq 24(%rbp), %rbx
    addq %rbx, %rax
    movq %rax, -8(%rbp)
    addq &8, %rsp        #Ao adcionar a pilha vai para baixo. Ao subtrair o a pilha vai para cima
    popq %rbp
    ret

_start: 
    movq $4, A
    movq $5, B
    pushq B              #empilhei na main
    pushq A
    
    call soma     # Ao criar o RIP para armazenar a proxima variavel, voce tambem empilha o RIP e pega o valor futuramente
    addq $16, %rsp
    movq %rax, %rdi
    movq $60, %rax
    syscall
