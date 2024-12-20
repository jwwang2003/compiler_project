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
.global mod
.global split
.global main
mod:

mod:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x10, x0
        mov     x9, x1
        mov     x11, x10
        mov     x10, x9
        sdiv     x9, x11, x10
        mul     x9, x9, x10
        sub     x9, x11, x9
        mov     x0, x9
        mov     sp, x29
        ret
split:

split:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x9, x0
        mov     x16, x1
        str     x16, [sp]
        mov     x16, x9
        str     x16, [sp,#8]
        adrp     x9, N
        add     x9, x9, #:lo12:N
        ldr     x10, [x9]
        mov     x9, #1
        sub     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#24]
        b     bb1
bb1:

        mov     x9, #-1
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb2
        b     bb3
bb2:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x10, x16, x9
        ldr     x16, [sp,#24]
        mov     x0, x16
        mov     x9, #10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        str     x9, [x10]
        mov     x9, #10
        ldr     x16, [sp,#24]
        sdiv     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#16]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x16, x10
        str     x16, [sp,#24]
        b     bb1
bb3:

        mov     x0, #0
        mov     sp, x29
        ret
main:

main:

        mov     x9, #32
        sub     sp, sp, x9
        sub     sp, sp, #16
        mov     x9, #26
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
        mov     x16, #1478
        str     x16, [sp]
        mov     x11, #0
        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     split
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb4
bb4:

        mov     x9, #4
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.lt     bb5
        b     bb6
bb5:

        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x9, x9
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
        adrp     x9, newline
        add     x9, x9, #:lo12:newline
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb4
bb6:

        mov     x9, #42
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
