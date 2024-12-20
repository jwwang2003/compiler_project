.section .data
.global    n
n:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global swap
.global heap_ajust
.global heap_sort
.global main
swap:

swap:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x16, x0
        str     x16, [sp]
        mov     x10, x1
        mov     x9, x2
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#32]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#32]
        str     x16, [x9]
        mov     x0, #0
        mov     sp, x29
        ret
heap_ajust:

heap_ajust:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #80
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x10, x2
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #2
        ldr     x16, [sp,#16]
        mul     x10, x16, x9
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#32]
        b     bb1
bb1:

        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#40]
        ldr     x16, [sp,#24]
        ldr     x17, [sp,#8]
        cmp     x16, x17
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
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#48]
        b.ne     bb10
        b     bb6
bb10:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#72]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#72]
        cmp     x16, x9
        b.lt     bb11
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
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#48]
        b.ne     bb4
        b     bb6
bb4:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb6
bb6:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#56]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#48]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#56]
        cmp     x16, x9
        b.gt     bb14
        b     bb15
bb14:

        mov     x0, #0
        mov     sp, x29
        ret
bb15:

        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#32]
        mov     x1, x16
        ldr     x16, [sp,#48]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#64]
        mov     x9, #2
        ldr     x16, [sp,#64]
        mul     x10, x16, x9
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#32]
        b     bb1
bb3:

        mov     x0, #0
        mov     sp, x29
        ret
heap_sort:

heap_sort:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #56
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x9, #2
        ldr     x16, [sp,#8]
        sdiv     x10, x16, x9
        mov     x9, #1
        sub     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb17
bb17:

        mov     x9, #-1
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.gt     bb18
        b     bb19
bb18:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#48]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#16]
        mov     x1, x16
        ldr     x16, [sp,#48]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #1
        ldr     x16, [sp,#16]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb17
bb19:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb20
bb20:

        mov     x9, #0
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.gt     bb21
        b     bb22
bb21:

        mov     x16, #0
        str     x16, [sp,#32]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#32]
        mov     x1, x16
        ldr     x16, [sp,#24]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #1
        ldr     x16, [sp,#24]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#32]
        mov     x1, x16
        ldr     x16, [sp,#40]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #1
        ldr     x16, [sp,#24]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb20
bb22:

        mov     x0, #0
        mov     sp, x29
        ret
main:

main:

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x9, #50
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
        mov     x9, #10
        mov     x10, x9
        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        mov     x11, #0
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #6
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_sort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb23
bb23:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp]
        cmp     x16, x9
        b.lt     bb24
        b     bb25
bb24:

        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
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
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb23
bb25:

        mov     x9, #66
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
