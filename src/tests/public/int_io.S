.section .data
.global    ascii_0
ascii_0:
        .quad   48
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global my_getint
.global mod
.global my_putint
.global main
my_getint:

my_getint:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x9, #0
        mov     x11, x9
        b     bb1
bb1:

        mov     x10, #1
        mov     x9, #0
        cmp     x10, x9
        mov     x9, x11
        b.gt     bb2
        b     bb3
bb2:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, ascii_0
        add     x9, x9, #:lo12:ascii_0
        ldr     x9, [x9]
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb7
        b     bb8
bb7:

        mov     x9, #1
        mov     x10, x9
        b     bb9
bb8:

        mov     x9, #0
        mov     x10, x9
        b     bb9
bb9:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#16]
        mov     x11, x16
        b.ne     bb1
        b     bb10
bb10:

        mov     x9, #9
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.gt     bb11
        b     bb12
bb11:

        mov     x9, #1
        mov     x10, x9
        b     bb13
bb12:

        mov     x9, #0
        mov     x10, x9
        b     bb13
bb13:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#16]
        mov     x11, x16
        ldr     x16, [sp,#16]
        mov     x9, x16
        b.ne     bb1
        b     bb3
bb3:

        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb14
bb14:

        mov     x10, #1
        mov     x9, #0
        cmp     x10, x9
        b.gt     bb15
        b     bb16
bb15:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, ascii_0
        add     x9, x9, #:lo12:ascii_0
        ldr     x9, [x9]
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x9, #0
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.ge     bb20
        b     bb21
bb20:

        mov     x9, #1
        mov     x10, x9
        b     bb22
bb21:

        mov     x9, #0
        mov     x10, x9
        b     bb22
bb22:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb23
        b     bb16
bb23:

        mov     x9, #9
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.le     bb24
        b     bb25
bb24:

        mov     x9, #1
        mov     x10, x9
        b     bb26
bb25:

        mov     x9, #0
        mov     x10, x9
        b     bb26
bb26:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb17
        b     bb16
bb17:

        mov     x9, #10
        ldr     x16, [sp]
        mul     x9, x16, x9
        ldr     x16, [sp,#8]
        add     x9, x9, x16
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb14
bb16:

        ldr     x16, [sp]
        mov     x0, x16
        mov     sp, x29
        ret
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
my_putint:

my_putint:

        mov     x9, #128
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x9, x0
        mov     x10, x9
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp,#16]
        b     bb27
bb27:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        ldr     x16, [sp,#8]
        mov     x10, x16
        b.gt     bb28
        b     bb30
bb28:

        mov     x9, #-128
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        add     x16, x10, x9
        str     x16, [sp]
        ldr     x16, [sp,#16]
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
        mov     x10, x0
        adrp     x9, ascii_0
        add     x9, x9, #:lo12:ascii_0
        ldr     x9, [x9]
        add     x9, x10, x9
        ldr     x16, [sp]
        str     x9, [x16]
        mov     x9, #10
        ldr     x16, [sp,#16]
        sdiv     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp,#16]
        b     bb27
bb30:

        mov     x9, #0
        cmp     x10, x9
        b.gt     bb31
        b     bb32
bb31:

        mov     x9, #1
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #-128
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        add     x9, x10, x9
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
        ldr     x16, [sp,#24]
        mov     x10, x16
        b     bb30
bb32:

        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #51
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
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x10, x9
        b     bb33
bb33:

        mov     x9, #0
        cmp     x10, x9
        b.gt     bb34
        b     bb35
bb34:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #10
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
        sub     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb33
bb35:

        mov     x9, #58
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
