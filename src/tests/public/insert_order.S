.section .data
.global    N
N:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global insert
.global main
insert:

insert:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #48
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb1
bb1:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.gt     bb4
        b     bb5
bb4:

        mov     x9, #1
        mov     x10, x9
        b     bb6
bb5:

        mov     x9, #0
        mov     x10, x9
        b     bb6
bb6:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb7
        b     bb3
bb7:

        adrp     x9, N
        add     x9, x9, #:lo12:N
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb8
        b     bb9
bb8:

        mov     x9, #1
        mov     x10, x9
        b     bb10
bb9:

        mov     x9, #0
        mov     x10, x9
        b     bb10
bb10:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb2
        b     bb3
bb2:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb1
bb3:

        adrp     x9, N
        add     x9, x9, #:lo12:N
        ldr     x9, [x9]
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb11
bb11:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#24]
        cmp     x16, x17
        b.gt     bb12
        b     bb13
bb12:

        mov     x9, #1
        ldr     x16, [sp,#32]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
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
        ldr     x16, [sp,#16]
        str     x16, [x9]
        mov     x9, #1
        ldr     x16, [sp,#32]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb11
bb13:

        mov     x0, #0
        mov     sp, x29
        ret
main:

main:

        mov     x9, #96
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x9, #27
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
        adrp     x9, N
        add     x9, x9, #:lo12:N
        str     x10, [x9]
        mov     x11, #0
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #11
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #13
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #18
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #56
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #78
        mov     x9, x9
        str     x9, [x10]
        mov     x16, #0
        str     x16, [sp]
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
        str     x16, [sp,#8]
        mov     x11, #0
        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        ldr     x16, [sp,#8]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#16]
        b     bb14
bb14:

        adrp     x9, N
        add     x9, x9, #:lo12:N
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb15
        b     bb16
bb15:

        mov     x9, #-88
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
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
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb14
bb16:

        mov     x9, #54
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
