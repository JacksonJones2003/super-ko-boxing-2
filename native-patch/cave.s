    .syntax unified
    .arm
    .text
cave:
e_play:
    ldr r2, lit_theme
1:  add r2, pc, r2
    sub r0, r0, r2
    lsl r0, r0, #1
    and r1, r1, #1
    orr r0, r0, r1
    add r0, r0, #0x10000
    b send
e_stop:
    mov r0, #100
    b send
e_pause:
    mov r0, #101
    b send
e_resume:
    mov r0, #102
    b send
e_vol:
    lsr r0, r0, #2
    orr r0, r0, #0x40000000
    b send
send:
    ldr r3, lit_got
2:  add r3, pc, r3
    ldr r3, [r3]
    ldr r3, [r3]
    cmp r3, #0
    bxeq lr
    bx r3
lit_theme: .word (0x14ed90 - 0xa8eb4) - (1b + 8 - cave)
lit_got:   .word (0x16a960 - 0xa8eb4) - (2b + 8 - cave)
