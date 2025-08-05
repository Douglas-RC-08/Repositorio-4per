.section .text
.globl _start
_start:
    movq $4, %rax
    movq $5, %rbx
    cmpq %rbx, %rax
    jg if
    jmp else   

if:
    addq %rbx, %rax
    jmp fim

else:
    subq %rbx, %rax

fim:
    movq %rax, %rdi
    movq %60, %rdi
    syscall
    
