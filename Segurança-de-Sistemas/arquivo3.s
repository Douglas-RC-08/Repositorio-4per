.section .text
.globl _start
_start:
    movq $5, %rax
    movq $4, %rbx
    cmpq %rbx, %rax
    jg if
    jmp else   

if:
    addq %rax, %rbx
    jmp fim

else:
    subq %rax, %rbx

fim:
    movq %rax, %rdi
    movq %60, %rax
    syscall
    
