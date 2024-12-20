.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    que
.global    h
.global    tail
.global    inq
n:
        .quad   0
m:
        .quad   0
to:
        .zero   40040
next:
        .zero   40040
head:
        .zero   8040
cnt:
        .quad   0
que:
        .zero   8040
h:
        .quad   0
tail:
        .quad   0
inq:
        .zero   8040
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global quickread
.global addedge
.global init
.global inqueue
.global popqueue
.global same
.global main
quickread:

quickread:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
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
        mov     x10, x9
        mov     x16, #0
        str     x16, [sp]
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb1
bb1:

        mov     x9, #48
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.lt     bb4
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
        b.ne     bb2
        b     bb7
bb7:

        mov     x9, #57
        ldr     x16, [sp,#8]
        cmp     x16, x9
        b.gt     bb8
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
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#24]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#32]
        b.ne     bb2
        b     bb14
bb2:

        mov     x9, #45
        ldr     x16, [sp,#8]
        cmp     x16, x9
        ldr     x16, [sp,#16]
        mov     x10, x16
        b.eq     bb11
        b     bb13
bb11:

        mov     x9, #1
        mov     x10, x9
        b     bb13
bb13:

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
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp,#16]
        b     bb1
bb14:

        mov     x9, #48
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.ge     bb17
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
        b.ne     bb20
        b     bb16
bb20:

        mov     x9, #57
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.le     bb21
        b     bb22
bb21:

        mov     x9, #1
        mov     x10, x9
        b     bb23
bb22:

        mov     x9, #0
        mov     x10, x9
        b     bb23
bb23:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb15
        b     bb16
bb15:

        mov     x9, #10
        ldr     x16, [sp,#32]
        mul     x9, x16, x9
        ldr     x16, [sp,#24]
        add     x10, x9, x16
        mov     x9, #48
        sub     x9, x10, x9
        mov     x10, x9
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
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x16, x10
        str     x16, [sp,#32]
        b     bb14
bb16:

        mov     x9, #0
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.ne     bb24
        b     bb25
bb24:

        mov     x9, #0
        ldr     x16, [sp,#32]
        sub     x9, x9, x16
        mov     x0, x9
        mov     sp, x29
        ret
bb25:

        ldr     x16, [sp,#32]
        mov     x0, x16
        mov     sp, x29
        ret
addedge:

addedge:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x10, x0
        mov     x9, x1
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x9, x10, x9
        ldr     x16, [sp,#24]
        str     x16, [x9]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x16, x10, x9
        str     x16, [sp]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp]
        str     x9, [x16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x9
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x9, [x9]
        str     x9, [x10]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #1
        add     x10, x10, x9
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        str     x10, [x9]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x9, x10, x9
        ldr     x16, [sp,#16]
        str     x16, [x9]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x16, x10, x9
        str     x16, [sp,#8]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x9
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x9, [x9]
        str     x9, [x10]
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        mov     x9, #1
        add     x10, x10, x9
        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        str     x10, [x9]
        mov     sp, x29
        ret
init:

init:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp]
        b     bb27
bb27:

        mov     x9, #1005
        ldr     x16, [sp]
        cmp     x16, x9
        b.lt     bb28
        b     bb29
bb28:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x9
        mov     x9, #-1
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb27
bb29:

        mov     sp, x29
        ret
inqueue:

inqueue:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        adrp     x10, inq
        add     x10, x10, #:lo12:inq
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x10, [x9]
        mov     x9, #1
        add     x10, x10, x9
        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        str     x10, [x9]
        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        ldr     x16, [sp]
        str     x16, [x9]
        mov     sp, x29
        ret
popqueue:

popqueue:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, [x9]
        mov     x9, #1
        add     x10, x10, x9
        adrp     x9, h
        add     x9, x9, #:lo12:h
        str     x10, [x9]
        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        ldr     x9, [x9]
        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, [x9]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
same:

same:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #48
        mov     x10, x0
        mov     x9, x1
        mov     x16, x10
        str     x16, [sp]
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, h
        add     x9, x9, #:lo12:h
        str     x10, [x9]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        str     x10, [x9]
        ldr     x16, [sp]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb30
bb30:

        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, [x9]
        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, [x9]
        cmp     x10, x9
        b.lt     bb31
        b     bb32
bb31:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     popqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
        ldr     x16, [sp,#8]
        cmp     x10, x16
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#32]
        b.eq     bb33
        b     bb35
bb33:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb35
bb35:

        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb36
bb36:

        mov     x9, #-1
        ldr     x16, [sp,#40]
        cmp     x16, x9
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#16]
        b.ne     bb37
        b     bb30
bb37:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, inq
        add     x10, x10, #:lo12:inq
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.eq     bb39
        b     bb41
bb39:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb41
bb41:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb36
bb32:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb42
bb42:

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.le     bb43
        b     bb44
bb43:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, inq
        add     x10, x10, #:lo12:inq
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb42
bb44:

        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
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
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, m
        add     x9, x9, #:lo12:m
        str     x10, [x9]
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
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     init
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb45
bb45:

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb46
        b     bb47
bb46:

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
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb48
bb48:

        mov     x9, #81
        ldr     x16, [sp]
        cmp     x16, x9
        b.ne     bb51
        b     bb52
bb51:

        mov     x9, #1
        mov     x10, x9
        b     bb53
bb52:

        mov     x9, #0
        mov     x10, x9
        b     bb53
bb53:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb54
        b     bb50
bb54:

        mov     x9, #85
        ldr     x16, [sp]
        cmp     x16, x9
        b.ne     bb55
        b     bb56
bb55:

        mov     x9, #1
        mov     x10, x9
        b     bb57
bb56:

        mov     x9, #0
        mov     x10, x9
        b     bb57
bb57:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb49
        b     bb50
bb49:

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
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb48
bb50:

        mov     x9, #81
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb58
        b     bb59
bb58:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
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
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     same
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
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
        b     bb60
bb59:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
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
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     addedge
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb60
bb60:

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x10, [x9]
        mov     x9, #1
        sub     x10, x10, x9
        adrp     x9, m
        add     x9, x9, #:lo12:m
        str     x10, [x9]
        b     bb45
bb47:

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
