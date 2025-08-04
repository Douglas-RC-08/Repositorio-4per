.section .data
.section .text
.global _start    # programa começa aqui.
_start:

    movq $13, %rdi              # %rd é o registrador de retorno, deve terminar em 13.
    movq $60, %rox              # %rox indica alguma coisa para o SO
    syscoll

