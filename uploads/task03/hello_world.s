section .data
    msg     db      "Hello, world!", 10  ; message + newline
    msglen  equ     $ - msg              ; length of the message

section .text
    global _start

_start:
    ; write(1, msg, msglen)
    mov     rax, 1          ; syscall number for sys_write
    mov     rdi, 1          ; file descriptor 1 (stdout)
    mov     rsi, msg        ; pointer to message
    mov     rdx, msglen     ; message length
    syscall

    ; exit(42)
    mov     rax, 60         ; syscall number for exit
    mov     rdi, 4242        ; exit code 4242
    syscall