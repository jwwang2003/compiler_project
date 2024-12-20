.section .data
.global    N
.global    newline
N:
        .quad   0
newline:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global factor
.global main
factor:

factor:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp]
        mov     x10, #0
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp,#16]
        b     bb1
bb1:

        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        ldr     x16, [sp]
        ldr     x17, [sp,#8]
        sdiv     x9, x16, x17
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        ldr     x16, [sp]
        cmp     x9, x16
        ldr     x16, [sp,#16]
        mov     x10, x16
        b.eq     bb4
        b     bb6
bb4:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#8]
        add     x9, x16, x17
        mov     x9, x9
        mov     x10, x9
        b     bb6
bb6:

        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp,#16]
        b     bb1
bb3:

        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #24
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
        mov     x9, #4
        mov     x10, x9
        adrp     x9, N
        add     x9, x9, #:lo12:N
        str     x10, [x9]
        mov     x9, #10
        mov     x10, x9
        adrp     x9, newline
        add     x9, x9, #:lo12:newline
        str     x10, [x9]
        mov     x10, #1478
        mov     x9, #31
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
        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     factor
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
