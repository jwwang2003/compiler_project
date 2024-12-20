.section .data
.global    max
.global    a
.global    b
.global    kernelid
max:
        .quad   1073741824
a:
        .zero   80000000
b:
        .zero   80000000
kernelid:
        .zero   80000
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global checkrange
.global mod
.global reduce
.global getvalue
.global convn
.global memmove
.global main
checkrange:

checkrange:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x9, x9
        mov     x11, x9
        b     bb1
bb1:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        cmp     x11, x9
        mov     x10, x11
        b.gt     bb2
        b     bb4
bb2:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        sub     x9, x11, x9
        mov     x9, x9
        mov     x11, x9
        b     bb1
bb4:

        mov     x9, #0
        cmp     x10, x9
        b.lt     bb5
        b     bb6
bb5:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        add     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb4
bb6:

        mov     x0, x10
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
reduce:

reduce:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #80
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        mov     x16, x11
        str     x16, [sp]
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #0
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb7
        b     bb9
bb7:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        add     x9, x16, x17
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     checkrange
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
bb9:

        mov     x9, #1
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb10
        b     bb12
bb10:

        mov     x10, #0
        mov     x9, #1
        mov     x16, x10
        str     x16, [sp,#56]
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb13
bb13:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        ldr     x16, [sp,#64]
        cmp     x16, x9
        b.lt     bb14
        b     bb15
bb14:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#64]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        mov     x16, x0
        str     x16, [sp,#72]
        ldr     x16, [sp,#16]
        ldr     x17, [sp,#64]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        ldr     x16, [sp,#72]
        cmp     x16, x9
        b.eq     bb16
        b     bb17
bb16:

        mov     x9, #2
        ldr     x16, [sp,#56]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x10, x9
        b     bb18
bb17:

        mov     x9, #2
        ldr     x16, [sp,#56]
        mul     x10, x16, x9
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb18
bb18:

        mov     x9, #2
        ldr     x16, [sp,#64]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#56]
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb13
bb15:

        ldr     x16, [sp,#56]
        mov     x0, x16
        mov     sp, x29
        ret
bb12:

        mov     x9, #2
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb19
        b     bb21
bb19:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        cmp     x16, x17
        b.gt     bb22
        b     bb23
bb22:

        ldr     x16, [sp,#8]
        mov     x0, x16
        mov     sp, x29
        ret
bb23:

        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     sp, x29
        ret
bb21:

        mov     x9, #3
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb25
        b     bb27
bb25:

        mov     x10, #0
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x16, x10
        str     x16, [sp,#48]
        b     bb28
bb28:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        ldr     x16, [sp,#40]
        cmp     x16, x9
        b.lt     bb29
        b     bb30
bb29:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#40]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        mov     x9, #1
        cmp     x10, x9
        b.eq     bb34
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
        b.ne     bb31
        b     bb37
bb37:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#40]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        mov     x9, #1
        cmp     x10, x9
        b.eq     bb38
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
        b.ne     bb31
        b     bb32
bb31:

        mov     x9, #2
        ldr     x16, [sp,#48]
        mul     x10, x16, x9
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb33
bb32:

        mov     x9, #2
        ldr     x16, [sp,#48]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x10, x9
        b     bb33
bb33:

        mov     x9, #2
        ldr     x16, [sp,#40]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x16, x10
        str     x16, [sp,#48]
        b     bb28
bb30:

        ldr     x16, [sp,#48]
        mov     x0, x16
        mov     sp, x29
        ret
bb27:

        mov     x9, #4
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb41
        b     bb43
bb41:

        mov     x10, #0
        mov     x9, #1
        mov     x16, x10
        str     x16, [sp,#24]
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb44
bb44:

        adrp     x9, max
        add     x9, x9, #:lo12:max
        ldr     x9, [x9]
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.lt     bb45
        b     bb46
bb45:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#32]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        mov     x9, #1
        cmp     x10, x9
        b.eq     bb50
        b     bb51
bb50:

        mov     x9, #1
        mov     x10, x9
        b     bb52
bb51:

        mov     x9, #0
        mov     x10, x9
        b     bb52
bb52:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb53
        b     bb48
bb53:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#32]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     x9, #2
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
        mov     x9, #1
        cmp     x10, x9
        b.eq     bb54
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
        b.ne     bb47
        b     bb48
bb47:

        mov     x9, #2
        ldr     x16, [sp,#24]
        mul     x10, x16, x9
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb49
bb48:

        mov     x9, #2
        ldr     x16, [sp,#24]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x10, x9
        b     bb49
bb49:

        mov     x9, #2
        ldr     x16, [sp,#32]
        mul     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#24]
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb44
bb46:

        ldr     x16, [sp,#24]
        mov     x0, x16
        mov     sp, x29
        ret
bb43:

        mov     x0, #0
        mov     sp, x29
        ret
getvalue:

getvalue:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #48
        mov     x16, x0
        str     x16, [sp]
        mov     x11, x1
        mov     x10, x2
        mov     x9, x3
        mov     x16, x4
        str     x16, [sp,#8]
        mov     x16, x11
        str     x16, [sp,#16]
        mov     x16, x10
        str     x16, [sp,#24]
        mov     x16, x9
        str     x16, [sp,#32]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x9, #0
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.lt     bb66
        b     bb67
bb66:

        mov     x9, #1
        mov     x10, x9
        b     bb68
bb67:

        mov     x9, #0
        mov     x10, x9
        b     bb68
bb68:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb63
        b     bb69
bb69:

        mov     x9, #0
        ldr     x16, [sp,#40]
        cmp     x16, x9
        b.lt     bb70
        b     bb71
bb70:

        mov     x9, #1
        mov     x10, x9
        b     bb72
bb71:

        mov     x9, #0
        mov     x10, x9
        b     bb72
bb72:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb63
        b     bb64
bb63:

        mov     x9, #1
        mov     x10, x9
        b     bb65
bb64:

        mov     x9, #0
        mov     x10, x9
        b     bb65
bb65:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb60
        b     bb73
bb73:

        ldr     x16, [sp,#32]
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
        b.ne     bb60
        b     bb61
bb60:

        mov     x9, #1
        mov     x10, x9
        b     bb62
bb61:

        mov     x9, #0
        mov     x10, x9
        b     bb62
bb62:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb57
        b     bb77
bb77:

        ldr     x16, [sp,#40]
        ldr     x17, [sp,#24]
        cmp     x16, x17
        b.ge     bb78
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
        b.ne     bb57
        b     bb59
bb57:

        mov     x0, #0
        mov     sp, x29
        ret
bb59:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#24]
        mul     x9, x16, x17
        ldr     x16, [sp,#40]
        add     x9, x9, x16
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
convn:

convn:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #488
        mov     x10, x0
        mov     x16, x1
        str     x16, [sp]
        mov     x16, x2
        str     x16, [sp,#8]
        mov     x9, x3
        mov     x16, x4
        str     x16, [sp,#16]
        mov     x16, x5
        str     x16, [sp,#24]
        mov     x16, x10
        str     x16, [sp,#48]
        mov     x16, x9
        str     x16, [sp,#56]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#64]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#72]
        mov     x16, #0
        str     x16, [sp,#80]
        mov     x16, #1
        str     x16, [sp,#88]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#96]
        b     bb81
bb81:

        ldr     x16, [sp,#88]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        b.eq     bb82
        b     bb83
bb82:

        mov     x16, #0
        str     x16, [sp,#104]
        ldr     x16, [sp,#104]
        mov     x17, x16
        str     x17, [sp,#112]
        b     bb84
bb84:

        ldr     x16, [sp,#88]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        b.eq     bb85
        b     bb86
bb85:

        mov     x16, #0
        str     x16, [sp,#136]
        mov     x16, #2
        str     x16, [sp,#368]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#368]
        sdiv     x18, x16, x17
        str     x18, [sp,#144]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#144]
        sub     x18, x16, x17
        str     x18, [sp,#152]
        ldr     x16, [sp,#152]
        mov     x17, x16
        str     x17, [sp,#160]
        ldr     x16, [sp,#160]
        mov     x17, x16
        str     x17, [sp,#168]
        ldr     x16, [sp,#136]
        mov     x17, x16
        str     x17, [sp,#176]
        b     bb87
bb87:

        ldr     x16, [sp,#88]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        ldr     x16, [sp,#176]
        mov     x17, x16
        str     x17, [sp,#184]
        b.eq     bb88
        b     bb89
bb88:

        mov     x16, #2
        str     x16, [sp,#376]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#376]
        sdiv     x18, x16, x17
        str     x18, [sp,#232]
        ldr     x16, [sp,#112]
        ldr     x17, [sp,#232]
        sub     x18, x16, x17
        str     x18, [sp,#240]
        ldr     x16, [sp,#240]
        mov     x17, x16
        str     x17, [sp,#248]
        ldr     x16, [sp,#176]
        mov     x17, x16
        str     x17, [sp,#256]
        ldr     x16, [sp,#248]
        mov     x17, x16
        str     x17, [sp,#264]
        b     bb90
bb90:

        ldr     x16, [sp,#88]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        ldr     x16, [sp,#256]
        mov     x17, x16
        str     x17, [sp,#272]
        b.eq     bb91
        b     bb92
bb91:

        mov     x16, #0
        str     x16, [sp,#384]
        mov     x16, #8
        str     x16, [sp,#408]
        ldr     x16, [sp,#408]
        mov     x17, x16
        str     x17, [sp,#392]
        ldr     x16, [sp,#392]
        ldr     x17, [sp,#384]
        mul     x18, x16, x17
        str     x18, [sp,#400]
        ldr     x16, [sp]
        ldr     x17, [sp,#400]
        add     x18, x16, x17
        str     x18, [sp,#32]
        ldr     x16, [sp,#32]
        mov     x0, x16
        ldr     x16, [sp,#56]
        mov     x1, x16
        ldr     x16, [sp,#64]
        mov     x2, x16
        ldr     x16, [sp,#168]
        mov     x3, x16
        ldr     x16, [sp,#264]
        mov     x4, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getvalue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#312]
        ldr     x16, [sp,#48]
        mov     x0, x16
        ldr     x16, [sp,#256]
        mov     x1, x16
        ldr     x16, [sp,#312]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     reduce
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#320]
        ldr     x16, [sp,#320]
        mov     x17, x16
        str     x17, [sp,#328]
        mov     x16, #1
        str     x16, [sp,#416]
        ldr     x16, [sp,#264]
        ldr     x17, [sp,#416]
        add     x18, x16, x17
        str     x18, [sp,#336]
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#344]
        mov     x16, #2
        str     x16, [sp,#424]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#424]
        sdiv     x18, x16, x17
        str     x18, [sp,#352]
        ldr     x16, [sp,#112]
        ldr     x17, [sp,#352]
        add     x18, x16, x17
        str     x18, [sp,#360]
        ldr     x16, [sp,#344]
        ldr     x17, [sp,#360]
        cmp     x16, x17
        ldr     x16, [sp,#328]
        mov     x17, x16
        str     x17, [sp,#256]
        ldr     x16, [sp,#344]
        mov     x17, x16
        str     x17, [sp,#264]
        ldr     x16, [sp,#328]
        mov     x17, x16
        str     x17, [sp,#272]
        b.ge     bb92
        b     bb90
bb92:

        mov     x16, #1
        str     x16, [sp,#432]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#432]
        add     x18, x16, x17
        str     x18, [sp,#280]
        ldr     x16, [sp,#280]
        mov     x17, x16
        str     x17, [sp,#288]
        mov     x16, #2
        str     x16, [sp,#440]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#440]
        sdiv     x18, x16, x17
        str     x18, [sp,#296]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#296]
        add     x18, x16, x17
        str     x18, [sp,#304]
        ldr     x16, [sp,#288]
        ldr     x17, [sp,#304]
        cmp     x16, x17
        ldr     x16, [sp,#288]
        mov     x17, x16
        str     x17, [sp,#168]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#176]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#184]
        b.ge     bb89
        b     bb87
bb89:

        ldr     x16, [sp,#96]
        ldr     x17, [sp,#64]
        mul     x18, x16, x17
        str     x18, [sp,#192]
        ldr     x16, [sp,#192]
        ldr     x17, [sp,#112]
        add     x18, x16, x17
        str     x18, [sp,#200]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#208]
        mov     x16, #8
        str     x16, [sp,#464]
        ldr     x16, [sp,#464]
        mov     x17, x16
        str     x17, [sp,#448]
        ldr     x16, [sp,#448]
        ldr     x17, [sp,#208]
        mul     x18, x16, x17
        str     x18, [sp,#456]
        ldr     x16, [sp,#8]
        ldr     x17, [sp,#456]
        add     x18, x16, x17
        str     x18, [sp,#40]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#40]
        str     x16, [x17]
        mov     x16, #1
        str     x16, [sp,#472]
        ldr     x16, [sp,#112]
        ldr     x17, [sp,#472]
        add     x18, x16, x17
        str     x18, [sp,#216]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#224]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#64]
        cmp     x16, x17
        ldr     x16, [sp,#224]
        mov     x17, x16
        str     x17, [sp,#112]
        b.ge     bb86
        b     bb84
bb86:

        mov     x16, #1
        str     x16, [sp,#480]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#480]
        add     x18, x16, x17
        str     x18, [sp,#120]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#56]
        cmp     x16, x17
        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#96]
        b.ge     bb83
        b     bb81
bb83:

        mov     x0, #0
        mov     sp, x29
        ret
memmove:

memmove:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x16, x0
        str     x16, [sp]
        mov     x16, x1
        str     x16, [sp,#8]
        mov     x9, x2
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb105
bb105:

        ldr     x16, [sp,#32]
        ldr     x17, [sp,#24]
        cmp     x16, x17
        b.lt     bb106
        b     bb107
bb106:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb105
bb107:

        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #248
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
        str     x16, [sp,#32]
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
        str     x16, [sp,#40]
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
        str     x16, [sp,#48]
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
        str     x16, [sp,#56]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb108
bb108:

        ldr     x16, [sp,#64]
        ldr     x17, [sp,#56]
        cmp     x16, x17
        b.lt     bb109
        b     bb110
bb109:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
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
        ldr     x16, [sp,#64]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb108
bb110:

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
        str     x16, [sp,#72]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#80]
        b     bb111
bb111:

        ldr     x16, [sp,#80]
        ldr     x17, [sp,#72]
        cmp     x16, x17
        b.lt     bb112
        b     bb113
bb112:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        adrp     x10, kernelid
        add     x10, x10, #:lo12:kernelid
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
        ldr     x16, [sp,#80]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#80]
        b     bb111
bb113:

        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#88]
        mov     x9, #209
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
        str     x16, [sp,#96]
        b     bb114
bb114:

        ldr     x16, [sp,#96]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        b.lt     bb115
        b     bb116
bb115:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
        mul     x9, x9, x16
        adrp     x10, kernelid
        add     x10, x10, #:lo12:kernelid
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#104]
        mov     x16, #0
        str     x16, [sp,#120]
        mov     x16, #8
        str     x16, [sp,#152]
        ldr     x16, [sp,#152]
        mov     x17, x16
        str     x17, [sp,#136]
        ldr     x16, [sp,#136]
        ldr     x17, [sp,#120]
        mul     x18, x16, x17
        str     x18, [sp,#144]
        adrp     x16, a
        add     x16, x16, #:lo12:a
        str     x16, [sp,#128]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#144]
        add     x18, x16, x17
        str     x18, [sp]
        mov     x16, #0
        str     x16, [sp,#160]
        mov     x16, #8
        str     x16, [sp,#192]
        ldr     x16, [sp,#192]
        mov     x17, x16
        str     x17, [sp,#176]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#160]
        mul     x18, x16, x17
        str     x18, [sp,#184]
        adrp     x16, b
        add     x16, x16, #:lo12:b
        str     x16, [sp,#168]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#184]
        add     x18, x16, x17
        str     x18, [sp,#8]
        ldr     x16, [sp,#104]
        mov     x0, x16
        ldr     x16, [sp]
        mov     x1, x16
        ldr     x16, [sp,#8]
        mov     x2, x16
        ldr     x16, [sp,#40]
        mov     x3, x16
        ldr     x16, [sp,#48]
        mov     x4, x16
        ldr     x16, [sp,#32]
        mov     x5, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     convn
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, #0
        str     x16, [sp,#200]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#200]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x16, x10, x9
        str     x16, [sp,#16]
        mov     x16, #0
        str     x16, [sp,#208]
        mov     x16, #8
        str     x16, [sp,#240]
        ldr     x16, [sp,#240]
        mov     x17, x16
        str     x17, [sp,#224]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#208]
        mul     x18, x16, x17
        str     x18, [sp,#232]
        adrp     x16, b
        add     x16, x16, #:lo12:b
        str     x16, [sp,#216]
        ldr     x16, [sp,#216]
        ldr     x17, [sp,#232]
        add     x18, x16, x17
        str     x18, [sp,#24]
        ldr     x16, [sp,#40]
        ldr     x17, [sp,#48]
        mul     x18, x16, x17
        str     x18, [sp,#112]
        ldr     x16, [sp,#16]
        mov     x0, x16
        ldr     x16, [sp,#24]
        mov     x1, x16
        ldr     x16, [sp,#112]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     memmove
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #1
        ldr     x16, [sp,#96]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#96]
        b     bb114
bb116:

        mov     x9, #312
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
        ldr     x16, [sp,#40]
        ldr     x17, [sp,#48]
        mul     x11, x16, x17
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x9, x10, x9
        mov     x0, x11
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putarray
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x0, #0
        mov     sp, x29
        ret
