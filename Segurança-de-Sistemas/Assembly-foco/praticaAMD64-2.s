.section .text
.globl _start

contador:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    


_start: 
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp

    movq $0, -8(%rbp)         # Talvez não seja necessário realizar um movq, pois o pushq do inicio já aloca o valor do parâmetro (nao tem valor inicialmente)
    movq -8(%rbp), %rax       # A ideia seria deixar o %rax no endereço de memoria do valor X e ir alterando somente o valor do endereço de memória

    call contador 



