global _start

section .text

_start:
  ; write
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, msglen
  syscall

  ; exit
  mov rax, 60
  mov rdi, 0
  syscall

section .rodata
  msg: db "ASS-embly!", 10
  msglen: equ $ - msg
