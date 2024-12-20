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
.global main
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #632
        mov     x9, #4
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
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb1
bb1:

        mov     x9, #5
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb2
        b     bb3
bb2:

        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb1
bb3:

        mov     x16, #0
        str     x16, [sp,#8]
        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x9, #1
        ldr     x16, [sp,#24]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#32]
        mov     x9, #1
        ldr     x16, [sp,#32]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x9, #1
        ldr     x16, [sp,#40]
        add     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#48]
        mov     x16, #1
        str     x16, [sp,#440]
        ldr     x16, [sp,#48]
        ldr     x17, [sp,#440]
        add     x18, x16, x17
        str     x18, [sp,#56]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#64]
        mov     x16, #1
        str     x16, [sp,#448]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#72]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#80]
        mov     x16, #1
        str     x16, [sp,#456]
        ldr     x16, [sp,#80]
        ldr     x17, [sp,#456]
        add     x18, x16, x17
        str     x18, [sp,#88]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#96]
        mov     x16, #1
        str     x16, [sp,#464]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#464]
        add     x18, x16, x17
        str     x18, [sp,#104]
        ldr     x16, [sp,#104]
        mov     x17, x16
        str     x17, [sp,#112]
        mov     x16, #1
        str     x16, [sp,#472]
        ldr     x16, [sp,#112]
        ldr     x17, [sp,#472]
        add     x18, x16, x17
        str     x18, [sp,#120]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#128]
        mov     x16, #1
        str     x16, [sp,#480]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#480]
        add     x18, x16, x17
        str     x18, [sp,#136]
        ldr     x16, [sp,#136]
        mov     x17, x16
        str     x17, [sp,#144]
        mov     x16, #1
        str     x16, [sp,#488]
        ldr     x16, [sp,#144]
        ldr     x17, [sp,#488]
        add     x18, x16, x17
        str     x18, [sp,#152]
        ldr     x16, [sp,#152]
        mov     x17, x16
        str     x17, [sp,#160]
        mov     x16, #1
        str     x16, [sp,#496]
        ldr     x16, [sp,#160]
        ldr     x17, [sp,#496]
        add     x18, x16, x17
        str     x18, [sp,#168]
        ldr     x16, [sp,#168]
        mov     x17, x16
        str     x17, [sp,#176]
        mov     x16, #1
        str     x16, [sp,#504]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#504]
        add     x18, x16, x17
        str     x18, [sp,#184]
        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp,#192]
        mov     x16, #1
        str     x16, [sp,#512]
        ldr     x16, [sp,#192]
        ldr     x17, [sp,#512]
        add     x18, x16, x17
        str     x18, [sp,#200]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#208]
        mov     x16, #1
        str     x16, [sp,#520]
        ldr     x16, [sp,#208]
        ldr     x17, [sp,#520]
        add     x18, x16, x17
        str     x18, [sp,#216]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#224]
        mov     x16, #1
        str     x16, [sp,#528]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#528]
        add     x18, x16, x17
        str     x18, [sp,#232]
        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#240]
        mov     x16, #1
        str     x16, [sp,#536]
        ldr     x16, [sp,#240]
        ldr     x17, [sp,#536]
        add     x18, x16, x17
        str     x18, [sp,#248]
        ldr     x16, [sp,#248]
        mov     x17, x16
        str     x17, [sp,#256]
        mov     x16, #1
        str     x16, [sp,#544]
        ldr     x16, [sp,#256]
        ldr     x17, [sp,#544]
        add     x18, x16, x17
        str     x18, [sp,#264]
        ldr     x16, [sp,#264]
        mov     x17, x16
        str     x17, [sp,#272]
        mov     x16, #1
        str     x16, [sp,#552]
        ldr     x16, [sp,#272]
        ldr     x17, [sp,#552]
        add     x18, x16, x17
        str     x18, [sp,#280]
        ldr     x16, [sp,#280]
        mov     x17, x16
        str     x17, [sp,#288]
        mov     x16, #1
        str     x16, [sp,#560]
        ldr     x16, [sp,#288]
        ldr     x17, [sp,#560]
        add     x18, x16, x17
        str     x18, [sp,#296]
        ldr     x16, [sp,#296]
        mov     x17, x16
        str     x17, [sp,#304]
        mov     x16, #1
        str     x16, [sp,#568]
        ldr     x16, [sp,#304]
        ldr     x17, [sp,#568]
        add     x18, x16, x17
        str     x18, [sp,#312]
        ldr     x16, [sp,#312]
        mov     x17, x16
        str     x17, [sp,#320]
        mov     x16, #1
        str     x16, [sp,#576]
        ldr     x16, [sp,#320]
        ldr     x17, [sp,#576]
        add     x18, x16, x17
        str     x18, [sp,#328]
        ldr     x16, [sp,#328]
        mov     x17, x16
        str     x17, [sp,#336]
        mov     x16, #1
        str     x16, [sp,#584]
        ldr     x16, [sp,#336]
        ldr     x17, [sp,#584]
        add     x18, x16, x17
        str     x18, [sp,#344]
        ldr     x16, [sp,#344]
        mov     x17, x16
        str     x17, [sp,#352]
        mov     x16, #1
        str     x16, [sp,#592]
        ldr     x16, [sp,#352]
        ldr     x17, [sp,#592]
        add     x18, x16, x17
        str     x18, [sp,#360]
        ldr     x16, [sp,#360]
        mov     x17, x16
        str     x17, [sp,#368]
        mov     x16, #1
        str     x16, [sp,#600]
        ldr     x16, [sp,#368]
        ldr     x17, [sp,#600]
        add     x18, x16, x17
        str     x18, [sp,#376]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#384]
        mov     x16, #1
        str     x16, [sp,#608]
        ldr     x16, [sp,#384]
        ldr     x17, [sp,#608]
        add     x18, x16, x17
        str     x18, [sp,#392]
        ldr     x16, [sp,#392]
        mov     x17, x16
        str     x17, [sp,#400]
        mov     x16, #1
        str     x16, [sp,#616]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#616]
        add     x18, x16, x17
        str     x18, [sp,#408]
        ldr     x16, [sp,#408]
        mov     x17, x16
        str     x17, [sp,#416]
        mov     x16, #1
        str     x16, [sp,#624]
        ldr     x16, [sp,#416]
        ldr     x17, [sp,#624]
        add     x18, x16, x17
        str     x18, [sp,#424]
        ldr     x16, [sp,#424]
        mov     x17, x16
        str     x17, [sp,#432]
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
        ldr     x16, [sp,#16]
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
        ldr     x16, [sp,#24]
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
        ldr     x16, [sp,#32]
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
        ldr     x16, [sp,#40]
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
        ldr     x16, [sp,#48]
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
        ldr     x16, [sp,#64]
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
        ldr     x16, [sp,#80]
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
        ldr     x16, [sp,#96]
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
        ldr     x16, [sp,#112]
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
        ldr     x16, [sp,#128]
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
        ldr     x16, [sp,#144]
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
        ldr     x16, [sp,#160]
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
        ldr     x16, [sp,#176]
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
        ldr     x16, [sp,#192]
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
        ldr     x16, [sp,#208]
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
        ldr     x16, [sp,#224]
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
        ldr     x16, [sp,#240]
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
        ldr     x16, [sp,#256]
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
        ldr     x16, [sp,#272]
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
        ldr     x16, [sp,#288]
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
        ldr     x16, [sp,#304]
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
        ldr     x16, [sp,#320]
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
        ldr     x16, [sp,#336]
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
        ldr     x16, [sp,#352]
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
        ldr     x16, [sp,#368]
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
        ldr     x16, [sp,#384]
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
        ldr     x16, [sp,#400]
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
        ldr     x16, [sp,#416]
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
        ldr     x16, [sp,#432]
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
        ldr     x16, [sp]
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
        ldr     x16, [sp,#368]
        mov     x0, x16
        mov     sp, x29
        ret
