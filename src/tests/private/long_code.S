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
.global bubblesort
.global insertsort
.global QuickSort
.global getMid
.global getMost
.global revert
.global arrCopy
.global calSum
.global avgPooling
.global main
bubblesort:

bubblesort:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #64
        mov     x16, x0
        str     x16, [sp]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb1
bb1:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb4
bb4:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        sub     x10, x9, x16
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb5
        b     bb6
bb5:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#32]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#40]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#40]
        cmp     x16, x9
        b.gt     bb7
        b     bb9
bb7:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#48]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#48]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#56]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#48]
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
        ldr     x16, [sp,#56]
        str     x16, [x9]
        b     bb9
bb9:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb4
bb6:

        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb1
bb3:

        mov     x0, #0
        mov     sp, x29
        ret
insertsort:

insertsort:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x16, x0
        str     x16, [sp]
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb10
bb10:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x16, x9
        b.lt     bb11
        b     bb12
bb11:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #1
        ldr     x16, [sp,#16]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb13
bb13:

        mov     x9, #-1
        ldr     x16, [sp,#32]
        cmp     x16, x9
        b.gt     bb16
        b     bb17
bb16:

        mov     x9, #1
        mov     x10, x9
        b     bb18
bb17:

        mov     x9, #0
        mov     x10, x9
        b     bb18
bb18:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb19
        b     bb15
bb19:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb20
        b     bb21
bb20:

        mov     x9, #1
        mov     x10, x9
        b     bb22
bb21:

        mov     x9, #0
        mov     x10, x9
        b     bb22
bb22:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb14
        b     bb15
bb14:

        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#32]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#32]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb13
bb15:

        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#24]
        str     x16, [x9]
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb10
bb12:

        mov     x0, #0
        mov     sp, x29
        ret
QuickSort:

QuickSort:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #288
        mov     x16, x0
        str     x16, [sp]
        mov     x10, x1
        mov     x9, x2
        mov     x16, x10
        str     x16, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#48]
        ldr     x16, [sp,#40]
        ldr     x17, [sp,#48]
        cmp     x16, x17
        b.lt     bb23
        b     bb25
bb23:

        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#56]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#64]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#72]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#80]
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#88]
        b     bb26
bb26:

        ldr     x16, [sp,#80]
        ldr     x17, [sp,#88]
        cmp     x16, x17
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#112]
        b.lt     bb29
        b     bb28
bb29:

        ldr     x16, [sp,#80]
        ldr     x17, [sp,#112]
        cmp     x16, x17
        b.lt     bb32
        b     bb33
bb32:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb34
bb33:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb34
bb34:

        mov     x16, #0
        str     x16, [sp,#192]
        ldr     x16, [sp,#120]
        ldr     x17, [sp,#192]
        cmp     x16, x17
        b.ne     bb35
        b     bb31
bb35:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#112]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#168]
        mov     x16, #1
        str     x16, [sp,#200]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#200]
        sub     x18, x16, x17
        str     x18, [sp,#176]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#176]
        cmp     x16, x17
        b.gt     bb36
        b     bb37
bb36:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#184]
        b     bb38
bb37:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#184]
        b     bb38
bb38:

        mov     x16, #0
        str     x16, [sp,#208]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#208]
        cmp     x16, x17
        b.ne     bb30
        b     bb31
bb30:

        mov     x9, #1
        ldr     x16, [sp,#112]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#112]
        b     bb29
bb31:

        ldr     x16, [sp,#80]
        ldr     x17, [sp,#112]
        cmp     x16, x17
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#128]
        b.lt     bb39
        b     bb42
bb39:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x16, #8
        str     x16, [sp,#232]
        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#216]
        ldr     x16, [sp,#216]
        ldr     x17, [sp,#112]
        mul     x18, x16, x17
        str     x18, [sp,#224]
        ldr     x16, [sp]
        ldr     x17, [sp,#224]
        add     x18, x16, x17
        str     x18, [sp,#16]
        ldr     x16, [sp,#16]
        ldr     x17, [x16]
        str     x17, [sp,#160]
        ldr     x16, [sp,#160]
        ldr     x17, [sp,#8]
        str     x16, [x17]
        mov     x9, #1
        ldr     x16, [sp,#80]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb42
bb42:

        ldr     x16, [sp,#128]
        ldr     x17, [sp,#112]
        cmp     x16, x17
        b.lt     bb45
        b     bb46
bb45:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb47
bb46:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb47
bb47:

        mov     x16, #0
        str     x16, [sp,#240]
        ldr     x16, [sp,#136]
        ldr     x17, [sp,#240]
        cmp     x16, x17
        b.ne     bb48
        b     bb44
bb48:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#128]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#72]
        cmp     x9, x16
        b.lt     bb49
        b     bb50
bb49:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb51
bb50:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb51
bb51:

        mov     x16, #0
        str     x16, [sp,#248]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#248]
        cmp     x16, x17
        b.ne     bb43
        b     bb44
bb43:

        mov     x9, #1
        ldr     x16, [sp,#128]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb42
bb44:

        ldr     x16, [sp,#128]
        ldr     x17, [sp,#112]
        cmp     x16, x17
        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#80]
        ldr     x16, [sp,#112]
        mov     x17, x16
        str     x17, [sp,#88]
        b.lt     bb52
        b     bb26
bb52:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#112]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#24]
        mov     x16, #8
        str     x16, [sp,#272]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#256]
        ldr     x16, [sp,#256]
        ldr     x17, [sp,#128]
        mul     x18, x16, x17
        str     x18, [sp,#264]
        ldr     x16, [sp]
        ldr     x17, [sp,#264]
        add     x18, x16, x17
        str     x18, [sp,#32]
        ldr     x16, [sp,#32]
        ldr     x17, [x16]
        str     x17, [sp,#144]
        ldr     x16, [sp,#144]
        ldr     x17, [sp,#24]
        str     x16, [x17]
        mov     x9, #1
        ldr     x16, [sp,#112]
        sub     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#80]
        mov     x16, x9
        str     x16, [sp,#88]
        b     bb26
bb28:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#72]
        str     x16, [x9]
        mov     x9, #1
        ldr     x16, [sp,#80]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#96]
        mov     x16, #0
        str     x16, [sp,#280]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#280]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#40]
        mov     x1, x16
        ldr     x16, [sp,#96]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #1
        ldr     x16, [sp,#80]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#104]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x0, x9
        ldr     x16, [sp,#104]
        mov     x1, x16
        ldr     x16, [sp,#48]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        b     bb25
bb25:

        mov     x0, #0
        mov     sp, x29
        ret
getMid:

getMid:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #16
        mov     x16, x0
        str     x16, [sp]
        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        mov     x9, #2
        sdiv     x10, x10, x9
        mov     x9, #2
        mul     x10, x10, x9
        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        cmp     x10, x9
        b.eq     bb55
        b     bb56
bb55:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        mov     x9, #2
        sdiv     x9, x10, x9
        mov     x10, x9
        mov     x9, #1
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x10, x16, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x10]
        ldr     x9, [x9]
        add     x10, x10, x9
        mov     x9, #2
        sdiv     x9, x10, x9
        mov     x0, x9
        mov     sp, x29
        ret
bb56:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        mov     x9, #2
        sdiv     x9, x10, x9
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
getMost:

getMost:

        movz     x9, #0, LSL #16
        movk     x9, #8000, LSL #0
        sub     sp, sp, x9
        sub     sp, sp, #144
        mov     x16, x0
        str     x16, [sp]
        mov     x16, #0
        str     x16, [sp,#16]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb58
bb58:

        mov     x9, #1000
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb59
        b     bb60
bb59:

        mov     x9, #-8000
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
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
        b     bb58
bb60:

        mov     x10, #0
        mov     x9, #0
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#32]
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x16, x10
        str     x16, [sp,#48]
        b     bb61
bb61:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#48]
        cmp     x16, x9
        b.lt     bb62
        b     bb63
bb62:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#48]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#56]
        mov     x9, #-8000
        add     x16, x29, x9
        str     x16, [sp,#88]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
        mul     x9, x9, x16
        ldr     x16, [sp,#88]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #-8000
        add     x16, x29, x9
        str     x16, [sp,#96]
        mov     x16, #8
        str     x16, [sp,#120]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#104]
        ldr     x16, [sp,#104]
        ldr     x17, [sp,#56]
        mul     x18, x16, x17
        str     x18, [sp,#112]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#112]
        add     x9, x16, x17
        ldr     x16, [x9]
        str     x16, [sp,#64]
        mov     x16, #1
        str     x16, [sp,#128]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#128]
        add     x9, x16, x17
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #-8000
        add     x16, x29, x9
        str     x16, [sp,#136]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
        mul     x9, x9, x16
        ldr     x16, [sp,#136]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#40]
        cmp     x9, x16
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#72]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#80]
        b.gt     bb64
        b     bb66
bb64:

        mov     x9, #-8000
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
        mul     x9, x9, x16
        add     x9, x10, x9
        ldr     x9, [x9]
        mov     x10, x9
        ldr     x16, [sp,#56]
        mov     x9, x16
        mov     x16, x9
        str     x16, [sp,#72]
        mov     x16, x10
        str     x16, [sp,#80]
        b     bb66
bb66:

        mov     x9, #1
        ldr     x16, [sp,#48]
        add     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#32]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb61
bb63:

        ldr     x16, [sp,#32]
        mov     x0, x16
        mov     sp, x29
        ret
revert:

revert:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x16, x0
        str     x16, [sp]
        mov     x10, #0
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb67
bb67:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#24]
        cmp     x16, x17
        b.lt     bb68
        b     bb69
bb68:

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
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#24]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb67
bb69:

        mov     x0, #0
        mov     sp, x29
        ret
arrCopy:

arrCopy:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x16, x0
        str     x16, [sp]
        mov     x16, x1
        str     x16, [sp,#8]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb70
bb70:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb71
        b     bb72
bb71:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp,#8]
        add     x17, x16, x9
        str     x17, [sp,#16]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb70
bb72:

        mov     x0, #0
        mov     sp, x29
        ret
calSum:

calSum:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #40
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x10, #0
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb73
bb73:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb74
        b     bb75
bb74:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#32]
        ldr     x16, [sp,#24]
        ldr     x17, [sp,#8]
        sdiv     x9, x16, x17
        ldr     x16, [sp,#8]
        mul     x9, x9, x16
        ldr     x16, [sp,#24]
        sub     x10, x16, x9
        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        cmp     x10, x9
        b.ne     bb76
        b     bb77
bb76:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x10, x16, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        ldr     x16, [sp,#32]
        mov     x10, x16
        b     bb78
bb77:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#32]
        str     x16, [x9]
        mov     x9, #0
        mov     x10, x9
        b     bb78
bb78:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb73
bb75:

        mov     x0, #0
        mov     sp, x29
        ret
avgPooling:

avgPooling:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #104
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x11, #0
        mov     x10, #0
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x11
        str     x16, [sp,#24]
        mov     x16, x9
        str     x16, [sp,#32]
        b     bb79
bb79:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb80
        b     bb81
bb80:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.lt     bb82
        b     bb83
bb82:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#48]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#56]
        b     bb84
bb83:

        mov     x9, #1
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        ldr     x16, [sp,#24]
        cmp     x16, x9
        b.eq     bb85
        b     bb86
bb85:

        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#88]
        mov     x16, #0
        str     x16, [sp,#96]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x10, x16, x9
        ldr     x16, [sp,#16]
        ldr     x17, [sp,#8]
        sdiv     x9, x16, x17
        str     x9, [x10]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#48]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#56]
        b     bb84
bb86:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        ldr     x16, [sp,#32]
        sub     x9, x9, x16
        mov     x16, x9
        str     x16, [sp,#64]
        ldr     x16, [sp,#24]
        ldr     x17, [sp,#8]
        sub     x10, x16, x17
        mov     x9, #1
        add     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#72]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#72]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#80]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#72]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x10, x16, x9
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#8]
        sdiv     x9, x16, x17
        str     x9, [x10]
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#48]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#56]
        b     bb84
bb84:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#32]
        b     bb79
bb81:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        sub     x10, x9, x16
        mov     x9, #1
        add     x9, x10, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb88
bb88:

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        ldr     x16, [sp,#40]
        cmp     x16, x9
        b.lt     bb89
        b     bb90
bb89:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#40]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x10, x16, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#40]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#40]
        b     bb88
bb90:

        mov     x0, #0
        mov     sp, x29
        ret
main:

main:

        mov     x9, #512
        sub     sp, sp, x9
        sub     sp, sp, #120
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
        mov     x9, #32
        mov     x10, x9
        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #23
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #89
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #26
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #282
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #254
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #27
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #83
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #273
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #10
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #574
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #11
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #905
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #12
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #354
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #13
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #657
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #14
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #935
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #15
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #264
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #16
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #639
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #17
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #459
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #18
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #29
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #19
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #68
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #20
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #929
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #21
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #756
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #22
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #452
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #23
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #279
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #24
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #58
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #25
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #87
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #26
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #96
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #27
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #36
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #28
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #39
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #29
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #28
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #30
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #31
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #290
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     revert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb91
bb91:

        mov     x9, #32
        ldr     x16, [sp,#48]
        cmp     x16, x9
        b.lt     bb92
        b     bb93
bb92:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#48]
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
        mov     x9, #1
        ldr     x16, [sp,#48]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#48]
        b     bb91
bb93:

        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#56]
        b     bb94
bb94:

        mov     x9, #32
        ldr     x16, [sp,#56]
        cmp     x16, x9
        b.lt     bb95
        b     bb96
bb95:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#56]
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
        mov     x9, #1
        ldr     x16, [sp,#56]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#56]
        b     bb94
bb96:

        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMid
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
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
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMost
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
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
        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp,#8]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp,#8]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb97
bb97:

        mov     x9, #32
        ldr     x16, [sp,#64]
        cmp     x16, x9
        b.lt     bb98
        b     bb99
bb98:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
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
        mov     x9, #1
        ldr     x16, [sp,#64]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#64]
        b     bb97
bb99:

        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp,#16]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insertsort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#72]
        b     bb100
bb100:

        mov     x9, #32
        ldr     x16, [sp,#72]
        cmp     x16, x9
        b.lt     bb101
        b     bb102
bb101:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#72]
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
        mov     x9, #1
        ldr     x16, [sp,#72]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#72]
        b     bb100
bb102:

        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp,#24]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp,#24]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, #0
        str     x16, [sp,#80]
        mov     x16, #31
        str     x16, [sp,#88]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        ldr     x16, [sp,#80]
        mov     x1, x16
        ldr     x16, [sp,#88]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#96]
        b     bb103
bb103:

        mov     x9, #32
        ldr     x16, [sp,#96]
        cmp     x16, x9
        b.lt     bb104
        b     bb105
bb104:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
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
        mov     x9, #1
        ldr     x16, [sp,#96]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#96]
        b     bb103
bb105:

        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp,#32]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp,#32]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        mov     x9, #4
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     calSum
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb106
bb106:

        mov     x9, #32
        ldr     x16, [sp,#104]
        cmp     x16, x9
        b.lt     bb107
        b     bb108
bb107:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
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
        mov     x9, #1
        ldr     x16, [sp,#104]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb106
bb108:

        mov     x11, #0
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x16, x10, x9
        str     x16, [sp,#40]
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [sp,#40]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x11, #0
        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        mov     x9, #3
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     avgPooling
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#112]
        b     bb109
bb109:

        mov     x9, #32
        ldr     x16, [sp,#112]
        cmp     x16, x9
        b.lt     bb110
        b     bb111
bb110:

        mov     x9, #-512
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#112]
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
        mov     x9, #1
        ldr     x16, [sp,#112]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#112]
        b     bb109
bb111:

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
        mov     x0, #0
        mov     sp, x29
        ret
