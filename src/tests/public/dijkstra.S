.section .data
.global    INF
.global    e
.global    book
.global    dis
.global    n
.global    m
.global    v1
.global    v2
.global    w
INF:
        .quad   65535
e:
        .zero   2048
book:
        .zero   128
dis:
        .zero   128
n:
        .quad   0
m:
        .quad   0
v1:
        .quad   0
v2:
        .quad   0
w:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global Dijkstra
.global main
Dijkstra:

Dijkstra:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #136
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb1
bb1:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#64]
        cmp     x16, x9
        b.le     bb2
        b     bb3
bb2:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x16, x10, x9
        str     x16, [sp]
        mov     x10, #1
        mov     x9, #128
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
        mul     x9, x9, x16
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp]
        str     x9, [x16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
        mul     x9, x9, x16
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#64]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb1
bb3:

        mov     x10, #1
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#72]
        b     bb4
bb4:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#72]
        cmp     x16, x9
        b.le     bb5
        b     bb6
bb5:

        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        mov     x11, x9
        mov     x10, #0
        mov     x9, #1
        mov     x16, x10
        str     x16, [sp,#80]
        mov     x16, x9
        str     x16, [sp,#88]
        mov     x16, x11
        str     x16, [sp,#96]
        b     bb7
bb7:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#88]
        cmp     x16, x9
        b.le     bb8
        b     bb9
bb8:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#96]
        cmp     x16, x9
        b.gt     bb13
        b     bb14
bb13:

        mov     x9, #1
        mov     x10, x9
        b     bb15
bb14:

        mov     x9, #0
        mov     x10, x9
        b     bb15
bb15:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#120]
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#128]
        b.ne     bb16
        b     bb12
bb16:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.eq     bb17
        b     bb18
bb17:

        mov     x9, #1
        mov     x10, x9
        b     bb19
bb18:

        mov     x9, #0
        mov     x10, x9
        b     bb19
bb19:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#120]
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#128]
        b.ne     bb10
        b     bb12
bb10:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x10, x9
        ldr     x16, [sp,#88]
        mov     x9, x16
        mov     x16, x9
        str     x16, [sp,#120]
        mov     x16, x10
        str     x16, [sp,#128]
        b     bb12
bb12:

        mov     x9, #1
        ldr     x16, [sp,#88]
        add     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#80]
        mov     x16, x9
        str     x16, [sp,#88]
        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#96]
        b     bb7
bb9:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb20
bb20:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#104]
        cmp     x16, x9
        b.le     bb21
        b     bb22
bb21:

        mov     x9, #128
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        add     x9, x10, x9
        ldr     x10, [x9]
        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        cmp     x10, x9
        b.lt     bb23
        b     bb25
bb23:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#112]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x16, x10, x9
        str     x16, [sp,#8]
        mov     x9, #128
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x16, x10, x9
        str     x16, [sp,#16]
        mov     x9, #0
        mov     x9, x9
        ldr     x16, [sp,#16]
        add     x17, x16, x9
        str     x17, [sp,#24]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        ldr     x16, [sp,#8]
        ldr     x10, [x16]
        ldr     x9, [x9]
        add     x9, x10, x9
        ldr     x16, [sp,#112]
        cmp     x16, x9
        b.gt     bb26
        b     bb25
bb26:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x16, x10, x9
        str     x16, [sp,#32]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x16, x10, x9
        str     x16, [sp,#40]
        mov     x9, #128
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x16, x10, x9
        str     x16, [sp,#48]
        mov     x9, #0
        mov     x9, x9
        ldr     x16, [sp,#48]
        add     x17, x16, x9
        str     x17, [sp,#56]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        ldr     x16, [sp,#56]
        add     x9, x16, x9
        ldr     x16, [sp,#40]
        ldr     x10, [x16]
        ldr     x9, [x9]
        add     x9, x10, x9
        ldr     x16, [sp,#32]
        str     x9, [x16]
        b     bb25
bb25:

        mov     x9, #1
        ldr     x16, [sp,#104]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb20
bb22:

        mov     x9, #1
        ldr     x16, [sp,#72]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#72]
        b     bb4
bb6:

        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x9, #53
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
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, m
        add     x9, x9, #:lo12:m
        str     x10, [x9]
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp]
        b     bb29
bb29:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp]
        cmp     x16, x9
        b.le     bb30
        b     bb31
bb30:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb32
bb32:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.le     bb33
        b     bb34
bb33:

        ldr     x16, [sp]
        ldr     x17, [sp,#32]
        cmp     x16, x17
        b.eq     bb35
        b     bb36
bb35:

        mov     x9, #128
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        b     bb37
bb36:

        mov     x9, #128
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        add     x10, x10, x9
        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        str     x9, [x10]
        b     bb37
bb37:

        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb32
bb34:

        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb29
bb31:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb38
bb38:

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.le     bb39
        b     bb40
bb39:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #128
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        add     x10, x10, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb38
bb40:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Dijkstra
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb41
bb41:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.le     bb42
        b     bb43
bb42:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
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
        mov     x9, #32
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
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb41
bb43:

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
        mov     x9, #91
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
