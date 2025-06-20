section .text
    global _start

_start:
    ; Exit syscall with status code 42
    mov rax, 60     ; syscall number for exit
    mov rdi, 42     ; exit code 42
    syscall         ; invoke kernel