.section .data
.global    TAPE_LEN
.global    BUFFER_LEN
.global    tape
.global    program
.global    ptr
TAPE_LEN:
        .quad   65536
BUFFER_LEN:
        .quad   32768
tape:
        .zero   524288
program:
        .zero   262144
ptr:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global read_program
.global interpret
.global main
read_program:

read_program:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #16
        mov     x10, #0
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
        str     x16, [sp]
        mov     x16, x10
        str     x16, [sp,#8]
        b     bb1
bb1:

        ldr     x16, [sp,#8]
        ldr     x17, [sp]
        cmp     x16, x17
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        adrp     x10, program
        add     x10, x10, #:lo12:program
        add     x10, x10, x9
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
        mov     x9, x0
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        b     bb1
bb3:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        adrp     x10, program
        add     x10, x10, #:lo12:program
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     sp, x29
        ret
interpret:

interpret:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #80
        mov     x16, x0
        str     x16, [sp]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb4
bb4:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb5
        b     bb6
bb5:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#32]
        mov     x9, #62
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb7
        b     bb9
bb7:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #1
        add     x10, x10, x9
        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        str     x10, [x9]
        b     bb9
bb9:

        mov     x9, #60
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb10
        b     bb12
bb10:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #1
        sub     x10, x10, x9
        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        str     x10, [x9]
        b     bb12
bb12:

        mov     x9, #43
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb13
        b     bb15
bb13:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x16, x10, x9
        str     x16, [sp,#8]
        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #1
        add     x9, x10, x9
        ldr     x16, [sp,#8]
        str     x9, [x16]
        b     bb15
bb15:

        mov     x9, #45
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb16
        b     bb18
bb16:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x16, x10, x9
        str     x16, [sp,#16]
        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#16]
        str     x9, [x16]
        b     bb18
bb18:

        mov     x9, #46
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb19
        b     bb21
bb19:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
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
        b     bb21
bb21:

        mov     x9, #44
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb22
        b     bb24
bb22:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x10, x10, x9
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
        mov     x9, x0
        str     x9, [x10]
        b     bb24
bb24:

        mov     x9, #93
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.eq     bb28
        b     bb29
bb28:

        mov     x9, #1
        mov     x10, x9
        b     bb30
bb29:

        mov     x9, #0
        mov     x10, x9
        b     bb30
bb30:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#24]
        mov     x10, x16
        b.ne     bb31
        b     bb27
bb31:

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, tape
        add     x10, x10, #:lo12:tape
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb32
        b     bb33
bb32:

        mov     x9, #1
        mov     x10, x9
        b     bb34
bb33:

        mov     x9, #0
        mov     x10, x9
        b     bb34
bb34:

        mov     x9, #0
        cmp     x10, x9
        ldr     x16, [sp,#24]
        mov     x10, x16
        b.ne     bb25
        b     bb27
bb25:

        mov     x9, #1
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb35
bb35:

        mov     x9, #0
        ldr     x16, [sp,#48]
        cmp     x16, x9
        ldr     x16, [sp,#40]
        mov     x10, x16
        b.gt     bb36
        b     bb27
bb36:

        mov     x9, #1
        ldr     x16, [sp,#40]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#56]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#64]
        mov     x9, #91
        ldr     x16, [sp,#64]
        cmp     x16, x9
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#72]
        b.eq     bb38
        b     bb40
bb38:

        mov     x9, #1
        ldr     x16, [sp,#48]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#72]
        b     bb40
bb40:

        mov     x9, #93
        ldr     x16, [sp,#64]
        cmp     x16, x9
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#40]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#48]
        b.eq     bb41
        b     bb35
bb41:

        mov     x9, #1
        ldr     x16, [sp,#72]
        add     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb35
bb27:

        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb4
bb6:

        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #76
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
        bl     read_program
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, program
        add     x10, x10, #:lo12:program
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     interpret
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
        mov     x9, #80
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
