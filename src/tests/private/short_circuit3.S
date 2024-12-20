.section .data
.global    a
.global    b
.global    d
a:
        .quad   0
b:
        .quad   0
d:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global set_a
.global set_b
.global set_d
.global main
set_a:

set_a:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x10, x9
        adrp     x9, a
        add     x9, x9, #:lo12:a
        str     x10, [x9]
        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
set_b:

set_b:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x10, x9
        adrp     x9, b
        add     x9, x9, #:lo12:b
        str     x10, [x9]
        adrp     x9, b
        add     x9, x9, #:lo12:b
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
set_d:

set_d:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x10, x9
        adrp     x9, d
        add     x9, x9, #:lo12:d
        str     x10, [x9]
        adrp     x9, d
        add     x9, x9, #:lo12:d
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #48
        mov     x9, #97
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
        mov     x9, #2
        mov     x10, x9
        adrp     x9, a
        add     x9, x9, #:lo12:a
        str     x10, [x9]
        mov     x9, #3
        mov     x10, x9
        adrp     x9, b
        add     x9, x9, #:lo12:b
        str     x10, [x9]
        mov     x9, #0
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_a
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb4
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

        mov     x9, #1
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_b
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb8
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
        b.ne     bb3
        b     bb3
bb3:

        adrp     x9, a
        add     x9, x9, #:lo12:a
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
        adrp     x9, b
        add     x9, x9, #:lo12:b
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
        mov     x9, #2
        mov     x10, x9
        adrp     x9, a
        add     x9, x9, #:lo12:a
        str     x10, [x9]
        mov     x9, #3
        mov     x10, x9
        adrp     x9, b
        add     x9, x9, #:lo12:b
        str     x10, [x9]
        mov     x9, #0
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_a
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb14
        b     bb15
bb14:

        mov     x9, #1
        mov     x10, x9
        b     bb16
bb15:

        mov     x9, #0
        mov     x10, x9
        b     bb16
bb16:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb17
        b     bb13
bb17:

        mov     x9, #1
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_b
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb18
        b     bb19
bb18:

        mov     x9, #1
        mov     x10, x9
        b     bb20
bb19:

        mov     x9, #0
        mov     x10, x9
        b     bb20
bb20:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb13
        b     bb13
bb13:

        adrp     x9, a
        add     x9, x9, #:lo12:a
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
        adrp     x9, b
        add     x9, x9, #:lo12:b
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
        mov     x16, #1
        str     x16, [sp]
        mov     x9, #2
        mov     x10, x9
        adrp     x9, d
        add     x9, x9, #:lo12:d
        str     x10, [x9]
        mov     x9, #1
        ldr     x16, [sp]
        cmp     x16, x9
        b.ge     bb24
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
        b.ne     bb27
        b     bb23
bb27:

        mov     x9, #3
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_d
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb28
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
        b.ne     bb23
        b     bb23
bb23:

        adrp     x9, d
        add     x9, x9, #:lo12:d
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
        ldr     x16, [sp]
        cmp     x16, x9
        b.le     bb34
        b     bb35
bb34:

        mov     x9, #1
        mov     x10, x9
        b     bb36
bb35:

        mov     x9, #0
        mov     x10, x9
        b     bb36
bb36:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb33
        b     bb37
bb37:

        mov     x9, #4
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_d
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb38
        b     bb39
bb38:

        mov     x9, #1
        mov     x10, x9
        b     bb40
bb39:

        mov     x9, #0
        mov     x10, x9
        b     bb40
bb40:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb33
        b     bb33
bb33:

        adrp     x9, d
        add     x9, x9, #:lo12:d
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
        mov     x16, #0
        str     x16, [sp,#8]
        mov     x16, #1
        str     x16, [sp,#16]
        mov     x16, #2
        str     x16, [sp,#24]
        mov     x16, #3
        str     x16, [sp,#32]
        mov     x16, #4
        str     x16, [sp,#40]
        b     bb41
bb41:

        mov     x9, #0
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.ne     bb44
        b     bb45
bb44:

        mov     x9, #1
        mov     x10, x9
        b     bb46
bb45:

        mov     x9, #0
        mov     x10, x9
        b     bb46
bb46:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb47
        b     bb43
bb47:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb48
        b     bb49
bb48:

        mov     x9, #1
        mov     x10, x9
        b     bb50
bb49:

        mov     x9, #0
        mov     x10, x9
        b     bb50
bb50:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb42
        b     bb43
bb42:

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
        b     bb41
bb43:

        mov     x9, #0
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.ne     bb54
        b     bb55
bb54:

        mov     x9, #1
        mov     x10, x9
        b     bb56
bb55:

        mov     x9, #0
        mov     x10, x9
        b     bb56
bb56:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb51
        b     bb57
bb57:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb58
        b     bb59
bb58:

        mov     x9, #1
        mov     x10, x9
        b     bb60
bb59:

        mov     x9, #0
        mov     x10, x9
        b     bb60
bb60:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb51
        b     bb53
bb51:

        mov     x9, #67
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
        b     bb53
bb53:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        cmp     x16, x17
        b.ge     bb64
        b     bb65
bb64:

        mov     x9, #1
        mov     x10, x9
        b     bb66
bb65:

        mov     x9, #0
        mov     x10, x9
        b     bb66
bb66:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb61
        b     bb67
bb67:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#8]
        cmp     x16, x17
        b.le     bb68
        b     bb69
bb68:

        mov     x9, #1
        mov     x10, x9
        b     bb70
bb69:

        mov     x9, #0
        mov     x10, x9
        b     bb70
bb70:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb61
        b     bb63
bb61:

        mov     x9, #72
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
        b     bb63
bb63:

        ldr     x16, [sp,#24]
        ldr     x17, [sp,#16]
        cmp     x16, x17
        b.ge     bb74
        b     bb75
bb74:

        mov     x9, #1
        mov     x10, x9
        b     bb76
bb75:

        mov     x9, #0
        mov     x10, x9
        b     bb76
bb76:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb77
        b     bb73
bb77:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#32]
        cmp     x16, x17
        b.ne     bb78
        b     bb79
bb78:

        mov     x9, #1
        mov     x10, x9
        b     bb80
bb79:

        mov     x9, #0
        mov     x10, x9
        b     bb80
bb80:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb71
        b     bb73
bb71:

        mov     x9, #73
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
        b     bb73
bb73:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb88
        b     bb87
bb87:

        mov     x9, #1
        mov     x10, x9
        b     bb89
bb88:

        mov     x9, #0
        mov     x10, x9
        b     bb89
bb89:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb90
        b     bb85
bb90:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#32]
        cmp     x16, x17
        b.lt     bb91
        b     bb92
bb91:

        mov     x9, #1
        mov     x10, x9
        b     bb93
bb92:

        mov     x9, #0
        mov     x10, x9
        b     bb93
bb93:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb84
        b     bb85
bb84:

        mov     x9, #1
        mov     x10, x9
        b     bb86
bb85:

        mov     x9, #0
        mov     x10, x9
        b     bb86
bb86:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb81
        b     bb94
bb94:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#40]
        cmp     x16, x17
        b.ge     bb95
        b     bb96
bb95:

        mov     x9, #1
        mov     x10, x9
        b     bb97
bb96:

        mov     x9, #0
        mov     x10, x9
        b     bb97
bb97:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb81
        b     bb83
bb81:

        mov     x9, #74
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
        b     bb83
bb83:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb102
        b     bb101
bb101:

        mov     x9, #1
        mov     x10, x9
        b     bb103
bb102:

        mov     x9, #0
        mov     x10, x9
        b     bb103
bb103:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb98
        b     bb104
bb104:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#32]
        cmp     x16, x17
        b.lt     bb108
        b     bb109
bb108:

        mov     x9, #1
        mov     x10, x9
        b     bb110
bb109:

        mov     x9, #0
        mov     x10, x9
        b     bb110
bb110:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb111
        b     bb106
bb111:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#40]
        cmp     x16, x17
        b.ge     bb112
        b     bb113
bb112:

        mov     x9, #1
        mov     x10, x9
        b     bb114
bb113:

        mov     x9, #0
        mov     x10, x9
        b     bb114
bb114:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb105
        b     bb106
bb105:

        mov     x9, #1
        mov     x10, x9
        b     bb107
bb106:

        mov     x9, #0
        mov     x10, x9
        b     bb107
bb107:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb98
        b     bb100
bb98:

        mov     x9, #75
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
        b     bb100
bb100:

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
        mov     x9, #117
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
