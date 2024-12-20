.section .data
.global    a
.global    b
a:
        .zero   80
b:
        .quad   27
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global getch
.global getint
.global putint
.global putch
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x9, #4
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
        mov     x9, #0
        mov     x16, #0
        str     x16, [sp]
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb1
bb1:

        mov     x9, #10
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x9, x10, x9
        ldr     x16, [sp,#8]
        str     x16, [x9]
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb1
bb3:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#16]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#24]
        b     bb4
bb4:

        mov     x9, #10
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb5
        b     bb6
bb5:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x16, x10
        str     x16, [sp,#24]
        b     bb4
bb6:

        adrp     x9, b
        add     x9, x9, #:lo12:b
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
        ldr     x16, [sp,#24]
        mov     x0, x16
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
        mov     x9, #19
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
