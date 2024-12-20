.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
main:

main:

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #80
        mov     x9, #3
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
        mov     x16, x9
        str     x16, [sp]
        b     bb1
bb1:

        mov     x9, #10
        ldr     x16, [sp]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        add     x10, x10, x9
        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb1
bb3:

        mov     x10, #10
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
        mov     x9, #1
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x16, #0
        str     x16, [sp,#24]
        ldr     x16, [sp,#16]
        ldr     x17, [sp,#24]
        add     x10, x16, x17
        mov     x9, #2
        sdiv     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#40]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#48]
        b     bb4
bb4:

        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#64]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp,#64]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        cmp     x9, x16
        b.ne     bb7
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
        b.ne     bb10
        b     bb6
bb10:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#48]
        cmp     x16, x17
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
        b.ne     bb5
        b     bb6
bb5:

        ldr     x16, [sp,#48]
        ldr     x17, [sp,#40]
        add     x10, x16, x17
        mov     x9, #2
        sdiv     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#56]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#72]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
        mul     x9, x9, x16
        ldr     x16, [sp,#72]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.lt     bb14
        b     bb15
bb14:

        mov     x9, #1
        ldr     x16, [sp,#56]
        sub     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#32]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb4
bb15:

        mov     x9, #1
        ldr     x16, [sp,#56]
        add     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#32]
        mov     x16, x9
        str     x16, [sp,#40]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#48]
        b     bb4
bb6:

        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.eq     bb17
        b     bb18
bb17:

        ldr     x16, [sp,#8]
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
        b     bb19
bb18:

        mov     x9, #0
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
        b     bb19
bb19:

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
        mov     x9, #49
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
