.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global main
foo:

foo:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x11, x0
        mov     x10, #1
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #176
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #3
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     sp, x29
        ret
main:

main:

        mov     x9, #2560
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #18
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #16
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #2
        mov     x9, #16
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #16
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #2
        mov     x9, #16
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #8
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #16
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #2
        mov     x9, #16
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #0
        mov     x9, x9
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #0
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #16
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #2
        mov     x9, #16
        mov     x9, x9
        mul     x9, x9, x10
        add     x10, x11, x9
        mov     x9, #8
        mov     x9, x9
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, #1
        mov     x9, #-2560
        add     x10, x29, x9
        mov     x9, #256
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #176
        mov     x9, x9
        add     x11, x10, x9
        mov     x10, #3
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        add     x9, x11, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #30
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x0, #0
        mov     sp, x29
        ret
