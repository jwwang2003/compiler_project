.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global canJump
.global main
canJump:

canJump:

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #64
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x9, #1
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.eq     bb1
        b     bb3
bb1:

        mov     x0, #1
        mov     sp, x29
        ret
bb3:

        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #2
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        cmp     x10, x9
        b.gt     bb4
        b     bb6
bb4:

        mov     x0, #1
        mov     sp, x29
        ret
bb6:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb7
bb7:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb8
        b     bb9
bb8:

        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb7
bb9:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        mov     x11, x9
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #2
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb10
bb10:

        mov     x9, #-1
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.gt     bb11
        b     bb12
bb11:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        ldr     x16, [sp,#24]
        sub     x9, x9, x16
        cmp     x10, x9
        b.lt     bb13
        b     bb14
bb13:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb16
bb14:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        ldr     x16, [sp,#24]
        sub     x9, x9, x16
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb16
bb16:

        mov     x9, #-1
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.gt     bb17
        b     bb18
bb17:

        ldr     x16, [sp,#24]
        ldr     x17, [sp,#32]
        add     x9, x16, x17
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#48]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        ldr     x16, [sp,#48]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb19
        b     bb21
bb19:

        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#56]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp,#56]
        add     x10, x16, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        b     bb21
bb21:

        mov     x9, #1
        ldr     x16, [sp,#32]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb16
bb18:

        mov     x9, #1
        ldr     x16, [sp,#24]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb10
bb12:

        mov     x11, #0
        mov     x9, #-80
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

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x9, #42
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
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
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
        mov     x9, #0
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
        mov     x9, #1
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
        mov     x16, #10
        str     x16, [sp]
        mov     x11, #0
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        ldr     x16, [sp]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     canJump
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
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
        mov     x0, x10
        mov     sp, x29
        ret
