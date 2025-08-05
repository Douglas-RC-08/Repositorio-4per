.section .text
.globl _start
_start:
    movq $0, $rax
    movq $10, $rbx

loop:
    cmpq %rbx, %rax           #sempre compara o segundo com o primeiro
    jg fim_loop
    add $l, %rax
    jmp loop

fim_loop: 
    movq %rax, %rdi
    movq %60, %rax
    syscall