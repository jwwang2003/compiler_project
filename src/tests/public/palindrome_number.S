.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global mod
.global palindrome
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
palindrome:

palindrome:

        mov     x9, #32
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x9, x0
        mov     x10, x9
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp]
        mov     x16, x10
        str     x16, [sp,#8]
        b     bb1
bb1:

        mov     x9, #4
        ldr     x16, [sp]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        add     x10, x10, x9
        ldr     x16, [sp,#8]
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
        ldr     x16, [sp,#8]
        sdiv     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        mov     x16, x10
        str     x16, [sp,#8]
        b     bb1
bb3:

        mov     x11, #0
        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#16]
        mov     x11, #3
        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.eq     bb7
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
        b     bb5
bb10:

        mov     x11, #1
        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#24]
        mov     x11, #2
        mov     x9, #-32
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.eq     bb11
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
        b.ne     bb4
        b     bb5
bb4:

        mov     x9, #1
        mov     x9, x9
        b     bb6
bb5:

        mov     x9, #0
        mov     x9, x9
        b     bb6
bb6:

        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #30
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
        mov     x11, #1221
        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     palindrome
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
        mov     x9, #1
        cmp     x10, x9
        b.eq     bb14
        b     bb15
bb14:

        mov     x0, x11
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
        b     bb16
bb15:

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
        b     bb16
bb16:

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
        mov     x9, #47
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
