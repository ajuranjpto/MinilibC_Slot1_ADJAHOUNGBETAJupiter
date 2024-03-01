section .text
global my_add

my_add:
    xor rcx, rcx
    mov al, BYTE[rsi + rcx]
    jmp loop

loop:
    cmp BYTE[rdi + rcx], 0
    je null
    cmp BYTE[rdi + rcx], al
    je done
    inc rcx
    jmp loop

done:
    inc rcx
    mov al, BYTE[rdi + rcx]
    add al, 1
    movsx rax, al
    ret

null:
    ret
