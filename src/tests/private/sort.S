.section .data
.global    base
.global    a
.global    ans
base:
        .quad   16
a:
        .zero   240000080
ans:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global getMaxNum
.global getNumPos
.global radixSort
.global main
getMaxNum:

getMaxNum:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
        mov     x9, x0
        mov     x16, x1
        str     x16, [sp]
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x10, #0
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb1
bb1:

        ldr     x16, [sp,#24]
        ldr     x17, [sp,#8]
        cmp     x16, x17
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#16]
        cmp     x9, x16
        ldr     x16, [sp,#16]
        mov     x10, x16
        b.gt     bb4
        b     bb6
bb4:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x9, x9
        mov     x10, x9
        b     bb6
bb6:

        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb1
bb3:

        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     sp, x29
        ret
getNumPos:

getNumPos:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x10, x0
        mov     x9, x1
        mov     x10, x10
        mov     x16, x9
        str     x16, [sp]
        mov     x9, #0
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb7
bb7:

        ldr     x16, [sp,#16]
        ldr     x17, [sp]
        cmp     x16, x17
        b.lt     bb8
        b     bb9
bb8:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        sdiv     x9, x16, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb7
bb9:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        sdiv     x10, x16, x9
        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        mul     x9, x10, x9
        ldr     x16, [sp,#8]
        sub     x9, x16, x9
        mov     x0, x9
        mov     sp, x29
        ret
radixSort:

radixSort:

        mov     x9, #384
        sub     sp, sp, x9
        sub     sp, sp, #936
        mov     x11, x0
        mov     x16, x1
        str     x16, [sp]
        mov     x10, x2
        mov     x9, x3
        mov     x16, x11
        str     x16, [sp,#136]
        mov     x16, x10
        str     x16, [sp,#144]
        mov     x16, x9
        str     x16, [sp,#152]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#160]
        b     bb10
bb10:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#160]
        cmp     x16, x9
        b.lt     bb11
        b     bb12
bb11:

        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#360]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#160]
        mul     x9, x9, x16
        ldr     x16, [sp,#360]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x9, #0
        mov     x9, x9
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#368]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#160]
        mul     x9, x9, x16
        ldr     x16, [sp,#368]
        add     x17, x16, x9
        str     x17, [sp,#16]
        mov     x9, #0
        mov     x9, x9
        ldr     x16, [sp,#16]
        str     x9, [x16]
        mov     x9, #-384
        add     x16, x29, x9
        str     x16, [sp,#376]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#160]
        mul     x9, x9, x16
        ldr     x16, [sp,#376]
        add     x17, x16, x9
        str     x17, [sp,#24]
        mov     x9, #0
        mov     x9, x9
        ldr     x16, [sp,#24]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#160]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#160]
        b     bb10
bb12:

        mov     x9, #-1
        ldr     x16, [sp,#136]
        cmp     x16, x9
        b.eq     bb16
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
        b.ne     bb13
        b     bb19
bb19:

        mov     x9, #1
        ldr     x16, [sp,#144]
        add     x9, x16, x9
        ldr     x16, [sp,#152]
        cmp     x9, x16
        b.ge     bb20
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
        b.ne     bb13
        b     bb15
bb13:

        mov     sp, x29
        ret
bb15:

        ldr     x16, [sp,#144]
        mov     x9, x16
        mov     x16, x9
        str     x16, [sp,#168]
        b     bb23
bb23:

        ldr     x16, [sp,#168]
        ldr     x17, [sp,#152]
        cmp     x16, x17
        b.lt     bb24
        b     bb25
bb24:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#168]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#336]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#168]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#344]
        mov     x16, #-384
        str     x16, [sp,#392]
        ldr     x16, [sp,#392]
        add     x17, x29, x16
        str     x17, [sp,#384]
        mov     x16, #8
        str     x16, [sp,#416]
        ldr     x16, [sp,#416]
        mov     x17, x16
        str     x17, [sp,#400]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#344]
        mul     x18, x16, x17
        str     x18, [sp,#408]
        ldr     x16, [sp,#384]
        ldr     x17, [sp,#408]
        add     x18, x16, x17
        str     x18, [sp,#32]
        mov     x16, #-384
        str     x16, [sp,#432]
        ldr     x16, [sp,#432]
        add     x17, x29, x16
        str     x17, [sp,#424]
        mov     x16, #8
        str     x16, [sp,#456]
        ldr     x16, [sp,#456]
        mov     x17, x16
        str     x17, [sp,#440]
        ldr     x16, [sp,#440]
        ldr     x17, [sp,#336]
        mul     x18, x16, x17
        str     x18, [sp,#448]
        ldr     x16, [sp,#424]
        ldr     x17, [sp,#448]
        add     x9, x16, x17
        ldr     x16, [x9]
        str     x16, [sp,#352]
        mov     x16, #1
        str     x16, [sp,#464]
        ldr     x16, [sp,#352]
        ldr     x17, [sp,#464]
        add     x9, x16, x17
        ldr     x16, [sp,#32]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#168]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#168]
        b     bb23
bb25:

        mov     x16, #0
        str     x16, [sp,#472]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#480]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#472]
        mul     x9, x9, x16
        ldr     x16, [sp,#480]
        add     x9, x16, x9
        ldr     x16, [sp,#144]
        str     x16, [x9]
        mov     x16, #0
        str     x16, [sp,#488]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#496]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#488]
        mul     x9, x9, x16
        ldr     x16, [sp,#496]
        add     x17, x16, x9
        str     x17, [sp,#40]
        mov     x16, #0
        str     x16, [sp,#504]
        mov     x9, #-384
        add     x16, x29, x9
        str     x16, [sp,#512]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#504]
        mul     x9, x9, x16
        ldr     x16, [sp,#512]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#144]
        add     x9, x16, x9
        ldr     x16, [sp,#40]
        str     x9, [x16]
        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#176]
        b     bb26
bb26:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#176]
        cmp     x16, x9
        b.lt     bb27
        b     bb28
bb27:

        mov     x9, #1
        ldr     x16, [sp,#176]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#320]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#520]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#176]
        mul     x9, x9, x16
        ldr     x16, [sp,#520]
        add     x17, x16, x9
        str     x17, [sp,#48]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#528]
        mov     x16, #8
        str     x16, [sp,#544]
        ldr     x16, [sp,#544]
        mov     x17, x16
        str     x17, [sp,#536]
        ldr     x16, [sp,#536]
        ldr     x17, [sp,#320]
        mul     x9, x16, x17
        ldr     x16, [sp,#528]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#48]
        str     x9, [x16]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#552]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#176]
        mul     x9, x9, x16
        ldr     x16, [sp,#552]
        add     x17, x16, x9
        str     x17, [sp,#56]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#560]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#176]
        mul     x9, x9, x16
        ldr     x16, [sp,#560]
        add     x17, x16, x9
        str     x17, [sp,#64]
        mov     x9, #-384
        add     x16, x29, x9
        str     x16, [sp,#568]
        mov     x16, #8
        str     x16, [sp,#592]
        ldr     x16, [sp,#592]
        mov     x17, x16
        str     x17, [sp,#576]
        ldr     x16, [sp,#576]
        ldr     x17, [sp,#176]
        mul     x18, x16, x17
        str     x18, [sp,#584]
        ldr     x16, [sp,#568]
        ldr     x17, [sp,#584]
        add     x18, x16, x17
        str     x18, [sp,#72]
        ldr     x16, [sp,#64]
        ldr     x17, [x16]
        str     x17, [sp,#328]
        ldr     x16, [sp,#72]
        ldr     x9, [x16]
        ldr     x16, [sp,#328]
        add     x9, x16, x9
        ldr     x16, [sp,#56]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#176]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#176]
        b     bb26
bb28:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#184]
        b     bb29
bb29:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#184]
        cmp     x16, x9
        b.lt     bb32
        b     bb31
bb32:

        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#600]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#600]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#224]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#608]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#608]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#224]
        cmp     x16, x9
        b.lt     bb33
        b     bb34
bb33:

        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#616]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#616]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#232]
        b     bb35
bb35:

        ldr     x16, [sp,#232]
        mov     x0, x16
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#184]
        cmp     x9, x16
        b.ne     bb36
        b     bb37
bb36:

        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#248]
        ldr     x16, [sp,#248]
        mov     x0, x16
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#256]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#624]
        mov     x16, #8
        str     x16, [sp,#640]
        ldr     x16, [sp,#640]
        mov     x17, x16
        str     x17, [sp,#632]
        ldr     x16, [sp,#632]
        ldr     x17, [sp,#256]
        mul     x9, x16, x17
        ldr     x16, [sp,#624]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#264]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#264]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#272]
        ldr     x16, [sp,#248]
        mov     x0, x16
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#280]
        mov     x16, #-128
        str     x16, [sp,#656]
        ldr     x16, [sp,#656]
        add     x17, x29, x16
        str     x17, [sp,#648]
        mov     x16, #8
        str     x16, [sp,#680]
        ldr     x16, [sp,#680]
        mov     x17, x16
        str     x17, [sp,#664]
        ldr     x16, [sp,#664]
        ldr     x17, [sp,#280]
        mul     x18, x16, x17
        str     x18, [sp,#672]
        ldr     x16, [sp,#648]
        ldr     x17, [sp,#672]
        add     x9, x16, x17
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#288]
        mov     x16, #8
        str     x16, [sp,#696]
        ldr     x16, [sp,#696]
        mov     x17, x16
        str     x17, [sp,#688]
        ldr     x16, [sp,#688]
        ldr     x17, [sp,#288]
        mul     x9, x16, x17
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#248]
        str     x16, [x9]
        ldr     x16, [sp,#248]
        mov     x0, x16
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#296]
        ldr     x16, [sp,#248]
        mov     x0, x16
        ldr     x16, [sp,#136]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getNumPos
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#304]
        mov     x16, #-128
        str     x16, [sp,#712]
        ldr     x16, [sp,#712]
        add     x17, x29, x16
        str     x17, [sp,#704]
        mov     x16, #8
        str     x16, [sp,#736]
        ldr     x16, [sp,#736]
        mov     x17, x16
        str     x17, [sp,#720]
        ldr     x16, [sp,#720]
        ldr     x17, [sp,#304]
        mul     x18, x16, x17
        str     x18, [sp,#728]
        ldr     x16, [sp,#704]
        ldr     x17, [sp,#728]
        add     x18, x16, x17
        str     x18, [sp,#80]
        mov     x16, #-128
        str     x16, [sp,#752]
        ldr     x16, [sp,#752]
        add     x17, x29, x16
        str     x17, [sp,#744]
        mov     x16, #8
        str     x16, [sp,#776]
        ldr     x16, [sp,#776]
        mov     x17, x16
        str     x17, [sp,#760]
        ldr     x16, [sp,#760]
        ldr     x17, [sp,#296]
        mul     x18, x16, x17
        str     x18, [sp,#768]
        ldr     x16, [sp,#744]
        ldr     x17, [sp,#768]
        add     x9, x16, x17
        ldr     x16, [x9]
        str     x16, [sp,#312]
        mov     x16, #1
        str     x16, [sp,#784]
        ldr     x16, [sp,#312]
        ldr     x17, [sp,#784]
        add     x9, x16, x17
        ldr     x16, [sp,#80]
        str     x9, [x16]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#232]
        b     bb35
bb37:

        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#792]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#792]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#240]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#240]
        mul     x9, x9, x16
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#232]
        str     x16, [x9]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#800]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#800]
        add     x17, x16, x9
        str     x17, [sp,#88]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#808]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#184]
        mul     x9, x9, x16
        ldr     x16, [sp,#808]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #1
        add     x9, x10, x9
        ldr     x16, [sp,#88]
        str     x9, [x16]
        b     bb32
bb34:

        mov     x9, #1
        ldr     x16, [sp,#184]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#184]
        b     bb29
bb31:

        mov     x16, #0
        str     x16, [sp,#816]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#824]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#816]
        mul     x9, x9, x16
        ldr     x16, [sp,#824]
        add     x9, x16, x9
        ldr     x16, [sp,#144]
        str     x16, [x9]
        mov     x16, #0
        str     x16, [sp,#832]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#840]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#832]
        mul     x9, x9, x16
        ldr     x16, [sp,#840]
        add     x17, x16, x9
        str     x17, [sp,#96]
        mov     x16, #0
        str     x16, [sp,#848]
        mov     x9, #-384
        add     x16, x29, x9
        str     x16, [sp,#856]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#848]
        mul     x9, x9, x16
        ldr     x16, [sp,#856]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#144]
        add     x9, x16, x9
        ldr     x16, [sp,#96]
        str     x9, [x16]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#192]
        b     bb38
bb38:

        adrp     x9, base
        add     x9, x9, #:lo12:base
        ldr     x9, [x9]
        ldr     x16, [sp,#192]
        cmp     x16, x9
        b.lt     bb39
        b     bb40
bb39:

        mov     x9, #0
        ldr     x16, [sp,#192]
        cmp     x16, x9
        b.gt     bb41
        b     bb43
bb41:

        mov     x9, #1
        ldr     x16, [sp,#192]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#216]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#864]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#192]
        mul     x9, x9, x16
        ldr     x16, [sp,#864]
        add     x17, x16, x9
        str     x17, [sp,#104]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#872]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#216]
        mul     x9, x9, x16
        ldr     x16, [sp,#872]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#104]
        str     x9, [x16]
        mov     x9, #-256
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#192]
        mul     x9, x9, x16
        add     x16, x10, x9
        str     x16, [sp,#112]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#880]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#192]
        mul     x9, x9, x16
        ldr     x16, [sp,#880]
        add     x17, x16, x9
        str     x17, [sp,#120]
        mov     x9, #-384
        add     x16, x29, x9
        str     x16, [sp,#888]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#192]
        mul     x9, x9, x16
        ldr     x16, [sp,#888]
        add     x9, x16, x9
        ldr     x16, [sp,#120]
        ldr     x10, [x16]
        ldr     x9, [x9]
        add     x9, x10, x9
        ldr     x16, [sp,#112]
        str     x9, [x16]
        b     bb43
bb43:

        mov     x9, #1
        ldr     x16, [sp,#136]
        sub     x17, x16, x9
        str     x17, [sp,#200]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#128]
        mov     x9, #-128
        add     x16, x29, x9
        str     x16, [sp,#896]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#192]
        mul     x9, x9, x16
        ldr     x16, [sp,#896]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#208]
        mov     x9, #-256
        add     x16, x29, x9
        str     x16, [sp,#904]
        mov     x16, #8
        str     x16, [sp,#928]
        ldr     x16, [sp,#928]
        mov     x17, x16
        str     x17, [sp,#912]
        ldr     x16, [sp,#912]
        ldr     x17, [sp,#192]
        mul     x18, x16, x17
        str     x18, [sp,#920]
        ldr     x16, [sp,#904]
        ldr     x17, [sp,#920]
        add     x9, x16, x17
        ldr     x9, [x9]
        ldr     x16, [sp,#200]
        mov     x0, x16
        ldr     x16, [sp,#128]
        mov     x1, x16
        ldr     x16, [sp,#208]
        mov     x2, x16
        mov     x3, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     radixSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #1
        ldr     x16, [sp,#192]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#192]
        b     bb38
bb40:

        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #32
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
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb44
bb44:

        ldr     x16, [sp,#16]
        ldr     x17, [sp,#8]
        cmp     x16, x17
        b.lt     bb45
        b     bb46
bb45:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#16]
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
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#16]
        b     bb44
bb46:

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
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x10, x10, x9
        mov     x9, #8
        mov     x0, x9
        mov     x1, x10
        mov     x9, #0
        mov     x2, x9
        ldr     x16, [sp,#8]
        mov     x3, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     radixSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb47
bb47:

        ldr     x16, [sp,#24]
        ldr     x17, [sp,#8]
        cmp     x16, x17
        b.lt     bb48
        b     bb49
bb48:

        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x16, x10, x9
        str     x16, [sp]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#24]
        mul     x9, x9, x16
        adrp     x10, a
        add     x10, x10, #:lo12:a
        add     x11, x10, x9
        mov     x9, #2
        ldr     x16, [sp,#24]
        add     x10, x9, x16
        ldr     x9, [x11]
        sdiv     x10, x9, x10
        mov     x9, #2
        ldr     x16, [sp,#24]
        add     x9, x9, x16
        mul     x10, x10, x9
        ldr     x16, [sp]
        ldr     x9, [x16]
        sub     x9, x9, x10
        ldr     x16, [sp,#24]
        mul     x10, x16, x9
        adrp     x9, ans
        add     x9, x9, #:lo12:ans
        ldr     x9, [x9]
        add     x10, x9, x10
        adrp     x9, ans
        add     x9, x9, #:lo12:ans
        str     x10, [x9]
        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#24]
        b     bb47
bb49:

        adrp     x9, ans
        add     x9, x9, #:lo12:ans
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.lt     bb50
        b     bb52
bb50:

        adrp     x9, ans
        add     x9, x9, #:lo12:ans
        ldr     x10, [x9]
        mov     x9, #0
        sub     x10, x9, x10
        adrp     x9, ans
        add     x9, x9, #:lo12:ans
        str     x10, [x9]
        b     bb52
bb52:

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
        adrp     x9, ans
        add     x9, x9, #:lo12:ans
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
        mov     x0, #0
        mov     sp, x29
        ret
