.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global uniquePaths
.global main
uniquePaths:

uniquePaths:

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #192
        mov     x10, x0
        mov     x9, x1
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #1
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.eq     bb4
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
        b.ne     bb1
        b     bb7
bb7:

        mov     x9, #1
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.eq     bb8
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
        b.ne     bb1
        b     bb3
bb1:

        mov     x0, #1
        mov     sp, x29
        ret
bb3:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb11
bb11:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#16]
        cmp     x16, x17
        b.lt     bb12
        b     bb13
bb12:

        mov     x9, #3
        ldr     x16, [sp,#32]
        mul     x9, x16, x9
        ldr     x16, [sp,#24]
        add     x10, x9, x16
        mov     x9, #1
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#96]
        mov     x9, #-72
        add     x16, x29, x9
        str     x16, [sp,#104]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
        mul     x9, x9, x16
        ldr     x16, [sp,#104]
        add     x10, x16, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb11
bb13:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb14
bb14:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#24]
        cmp     x16, x17
        b.lt     bb15
        b     bb16
bb15:

        mov     x9, #1
        ldr     x16, [sp,#16]
        sub     x10, x16, x9
        mov     x9, #3
        mul     x9, x10, x9
        ldr     x16, [sp,#40]
        add     x9, x9, x16
        mov     x16, x9
        str     x16, [sp,#88]
        mov     x9, #-72
        add     x16, x29, x9
        str     x16, [sp,#112]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        ldr     x16, [sp,#112]
        add     x10, x16, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#40]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb14
bb16:

        mov     x9, #2
        ldr     x16, [sp,#16]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb17
bb17:

        mov     x9, #-1
        ldr     x16, [sp,#48]
        cmp     x16, x9
        b.gt     bb18
        b     bb19
bb18:

        mov     x9, #2
        ldr     x16, [sp,#24]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#56]
        b     bb20
bb20:

        mov     x9, #-1
        ldr     x16, [sp,#56]
        cmp     x16, x9
        b.gt     bb21
        b     bb22
bb21:

        mov     x9, #3
        ldr     x16, [sp,#48]
        mul     x9, x16, x9
        ldr     x16, [sp,#56]
        add     x9, x9, x16
        mov     x16, x9
        str     x16, [sp,#64]
        mov     x9, #1
        ldr     x16, [sp,#48]
        add     x10, x16, x9
        mov     x9, #3
        mul     x9, x10, x9
        ldr     x16, [sp,#56]
        add     x9, x9, x16
        mov     x16, x9
        str     x16, [sp,#72]
        mov     x9, #3
        ldr     x16, [sp,#48]
        mul     x9, x16, x9
        ldr     x16, [sp,#56]
        add     x10, x9, x16
        mov     x9, #1
        add     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#80]
        mov     x9, #-72
        add     x16, x29, x9
        str     x16, [sp,#120]
        mov     x16, #8
        str     x16, [sp,#136]
        ldr     x16, [sp,#136]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#64]
        mul     x9, x16, x17
        ldr     x16, [sp,#120]
        add     x17, x16, x9
        str     x17, [sp]
        mov     x9, #-72
        add     x16, x29, x9
        str     x16, [sp,#144]
        mov     x16, #8
        str     x16, [sp,#160]
        ldr     x16, [sp,#160]
        mov     x17, x16
        str     x17, [sp,#152]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#72]
        mul     x9, x16, x17
        ldr     x16, [sp,#144]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #-72
        add     x16, x29, x9
        str     x16, [sp,#168]
        mov     x16, #8
        str     x16, [sp,#184]
        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp,#176]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#80]
        mul     x9, x16, x17
        ldr     x16, [sp,#168]
        add     x9, x16, x9
        ldr     x16, [sp,#8]
        ldr     x10, [x16]
        ldr     x9, [x9]
        add     x9, x10, x9
        ldr     x16, [sp]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#56]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#56]
        b     bb20
bb22:

        mov     x9, #1
        ldr     x16, [sp,#48]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb17
bb19:

        mov     x11, #0
        mov     x9, #-72
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #40
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
        mov     x9, #3
        mov     x0, x9
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     uniquePaths
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
        mov     x9, #45
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
        mov     sp, x29
        ret
