.section .text
.globl _start

troca:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp

    movq 16(%rbp), %rax
    movq (%rax), %rbx
    movq (%rbx), -8(%rbp)

    movq 24(%rbp), %rax
    movq (%rax), %rbx

    movq 16(%rbp), %rax
    movq %rbx, (%rax)

    movq 24(%rbp), %rax
    movq -8(%rbp), %rbx
    movq %rbx, (%rax)

    addq $8, %rsp

    popq %rbp
    ret

_start: 
    pushq %rbp                # Começa dando um pushq no RBP pois precisa saber direcionar ele
    movq %rsp, %rbp           # Aqui voce coloca o RBP no topo da pilha
    subq $16, %rsp            # Aqui voce subtrai o RSP pois é necessario abrir um espaço na memório para duas variaveis locais
    movq $1, -8(%rbp)         # Aqui voce coloca o valor 1 no endereço "anterior" -8 que seria um espaço inteiro da memoria para o valor
    movq $2, -16(%rbp)        # Aqui voce coloca o valor 2 no -16 pois ele ficara "Atras" do valor 1 na pilha

    movq %rbp, %rax           # RBP ainda esta no valor inicial do RSP (Seria antes de adcionar os valores com -8(%rbp) )
    subq $8, %rax             # Agora %RAX vai "voltar" um endereço na memória recebendo o valor de 1 que é o anterior

    movq %rbp, %rbx           # Mesmo processo e logica do anterior. RBX está recebendo o valor inicial de RSP (não é o valor atual de RSP)
    subq $16, %rbx            # Diminuimos 16 para "voltar" duas casas na memória e receber o valor de 2  
    pushq %rbx                # Aloca os valores do RAX na memoria (????) 
    pushq %rax                # Aloca os valores do RBX na memória (????)
    call troca                # RIP aponta para a proxima instrução, RIP tambem é impilhado, usado para recuperar futuramente o endereço da proxima instrução

    movq -16(%rbp), %rdi
    addq $16, %RSP

    movq $60, %rax
    syscall
