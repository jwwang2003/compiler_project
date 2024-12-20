.section .data
.global    a0
.global    a1
.global    a2
.global    a3
.global    a4
.global    a5
.global    a6
.global    a7
.global    a8
.global    a9
.global    a10
.global    a11
.global    a12
.global    a13
.global    a14
.global    a15
.global    a16
.global    a17
.global    a18
.global    a19
.global    a20
.global    a21
.global    a22
.global    a23
.global    a24
.global    a25
.global    a26
.global    a27
.global    a28
.global    a29
.global    a30
.global    a31
.global    a32
.global    a33
.global    a34
.global    a35
.global    a36
.global    a37
.global    a38
.global    a39
a0:
        .quad   0
a1:
        .quad   0
a2:
        .quad   0
a3:
        .quad   0
a4:
        .quad   0
a5:
        .quad   0
a6:
        .quad   0
a7:
        .quad   0
a8:
        .quad   0
a9:
        .quad   0
a10:
        .quad   0
a11:
        .quad   0
a12:
        .quad   0
a13:
        .quad   0
a14:
        .quad   0
a15:
        .quad   0
a16:
        .quad   0
a17:
        .quad   0
a18:
        .quad   0
a19:
        .quad   0
a20:
        .quad   0
a21:
        .quad   0
a22:
        .quad   0
a23:
        .quad   0
a24:
        .quad   0
a25:
        .quad   0
a26:
        .quad   0
a27:
        .quad   0
a28:
        .quad   0
a29:
        .quad   0
a30:
        .quad   0
a31:
        .quad   0
a32:
        .quad   0
a33:
        .quad   0
a34:
        .quad   0
a35:
        .quad   0
a36:
        .quad   0
a37:
        .quad   0
a38:
        .quad   0
a39:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global testParam8
.global testParam16
.global testParam32
.global main
testParam8:

testParam8:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #128
        mov     x16, x0
        str     x16, [sp]
        mov     x16, x1
        str     x16, [sp,#8]
        mov     x16, x2
        str     x16, [sp,#16]
        mov     x16, x3
        str     x16, [sp,#24]
        mov     x16, x4
        str     x16, [sp,#32]
        mov     x16, x5
        str     x16, [sp,#40]
        mov     x16, x6
        str     x16, [sp,#48]
        mov     x16, x7
        str     x16, [sp,#56]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#64]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#72]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#80]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#88]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#96]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#104]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#112]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#120]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#72]
        add     x9, x16, x17
        ldr     x16, [sp,#80]
        add     x9, x9, x16
        ldr     x16, [sp,#88]
        add     x9, x9, x16
        ldr     x16, [sp,#96]
        add     x9, x9, x16
        ldr     x16, [sp,#104]
        add     x9, x9, x16
        ldr     x16, [sp,#112]
        add     x9, x9, x16
        ldr     x16, [sp,#120]
        add     x9, x9, x16
        mov     x0, x9
        mov     sp, x29
        ret
testParam16:

testParam16:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #320
        mov     x16, x0
        str     x16, [sp]
        mov     x16, x1
        str     x16, [sp,#8]
        mov     x16, x2
        str     x16, [sp,#16]
        mov     x16, x3
        str     x16, [sp,#24]
        mov     x16, x4
        str     x16, [sp,#32]
        mov     x16, x5
        str     x16, [sp,#40]
        mov     x16, x6
        str     x16, [sp,#48]
        mov     x16, x7
        str     x16, [sp,#56]
        ldr     x16, [x29]
        str     x16, [sp,#64]
        ldr     x16, [x29,#8]
        str     x16, [sp,#72]
        ldr     x16, [x29,#16]
        str     x16, [sp,#80]
        ldr     x16, [x29,#24]
        str     x16, [sp,#88]
        ldr     x16, [x29,#32]
        str     x16, [sp,#96]
        ldr     x16, [x29,#40]
        str     x16, [sp,#104]
        ldr     x16, [x29,#48]
        str     x16, [sp,#112]
        ldr     x16, [x29,#56]
        str     x16, [sp,#120]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#136]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#144]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#152]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#160]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#168]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#176]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#184]
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#192]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#208]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#216]
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#224]
        ldr     x16, [sp,#104]
        mov     x17, x16
        str     x17, [sp,#232]
        ldr     x16, [sp,#112]
        mov     x17, x16
        str     x17, [sp,#240]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#248]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#136]
        add     x18, x16, x17
        str     x18, [sp,#256]
        ldr     x16, [sp,#256]
        ldr     x17, [sp,#144]
        add     x18, x16, x17
        str     x18, [sp,#264]
        ldr     x16, [sp,#264]
        ldr     x17, [sp,#152]
        sub     x18, x16, x17
        str     x18, [sp,#272]
        ldr     x16, [sp,#272]
        ldr     x17, [sp,#160]
        sub     x18, x16, x17
        str     x18, [sp,#280]
        ldr     x16, [sp,#280]
        ldr     x17, [sp,#168]
        sub     x18, x16, x17
        str     x18, [sp,#288]
        ldr     x16, [sp,#288]
        ldr     x17, [sp,#176]
        sub     x18, x16, x17
        str     x18, [sp,#296]
        ldr     x16, [sp,#296]
        ldr     x17, [sp,#184]
        sub     x18, x16, x17
        str     x18, [sp,#304]
        ldr     x16, [sp,#304]
        ldr     x17, [sp,#192]
        add     x18, x16, x17
        str     x18, [sp,#312]
        ldr     x16, [sp,#312]
        ldr     x17, [sp,#200]
        add     x9, x16, x17
        ldr     x16, [sp,#208]
        add     x9, x9, x16
        ldr     x16, [sp,#216]
        add     x9, x9, x16
        ldr     x16, [sp,#224]
        add     x9, x9, x16
        ldr     x16, [sp,#232]
        add     x9, x9, x16
        ldr     x16, [sp,#240]
        add     x9, x9, x16
        ldr     x16, [sp,#248]
        add     x9, x9, x16
        mov     x0, x9
        mov     sp, x29
        ret
testParam32:

testParam32:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #704
        mov     x16, x0
        str     x16, [sp]
        mov     x16, x1
        str     x16, [sp,#8]
        mov     x16, x2
        str     x16, [sp,#16]
        mov     x16, x3
        str     x16, [sp,#24]
        mov     x16, x4
        str     x16, [sp,#32]
        mov     x16, x5
        str     x16, [sp,#40]
        mov     x16, x6
        str     x16, [sp,#48]
        mov     x16, x7
        str     x16, [sp,#56]
        ldr     x16, [x29]
        str     x16, [sp,#64]
        ldr     x16, [x29,#8]
        str     x16, [sp,#72]
        ldr     x16, [x29,#16]
        str     x16, [sp,#80]
        ldr     x16, [x29,#24]
        str     x16, [sp,#88]
        ldr     x16, [x29,#32]
        str     x16, [sp,#96]
        ldr     x16, [x29,#40]
        str     x16, [sp,#104]
        ldr     x16, [x29,#48]
        str     x16, [sp,#112]
        ldr     x16, [x29,#56]
        str     x16, [sp,#120]
        ldr     x16, [x29,#64]
        str     x16, [sp,#128]
        ldr     x16, [x29,#72]
        str     x16, [sp,#136]
        ldr     x16, [x29,#80]
        str     x16, [sp,#144]
        ldr     x16, [x29,#88]
        str     x16, [sp,#152]
        ldr     x16, [x29,#96]
        str     x16, [sp,#160]
        ldr     x16, [x29,#104]
        str     x16, [sp,#168]
        ldr     x16, [x29,#112]
        str     x16, [sp,#176]
        ldr     x16, [x29,#120]
        str     x16, [sp,#184]
        ldr     x16, [x29,#128]
        str     x16, [sp,#192]
        ldr     x16, [x29,#136]
        str     x16, [sp,#200]
        ldr     x16, [x29,#144]
        str     x16, [sp,#208]
        ldr     x16, [x29,#152]
        str     x16, [sp,#216]
        ldr     x16, [x29,#160]
        str     x16, [sp,#224]
        ldr     x16, [x29,#168]
        str     x16, [sp,#232]
        ldr     x16, [x29,#176]
        str     x16, [sp,#240]
        ldr     x16, [x29,#184]
        str     x16, [sp,#248]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#256]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#264]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#272]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#288]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#296]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#304]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#312]
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#320]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#328]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#336]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#344]
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#352]
        ldr     x16, [sp,#104]
        mov     x17, x16
        str     x17, [sp,#360]
        ldr     x16, [sp,#112]
        mov     x17, x16
        str     x17, [sp,#368]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#376]
        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#384]
        ldr     x16, [sp,#136]
        mov     x17, x16
        str     x17, [sp,#392]
        ldr     x16, [sp,#144]
        mov     x17, x16
        str     x17, [sp,#400]
        ldr     x16, [sp,#152]
        mov     x17, x16
        str     x17, [sp,#408]
        ldr     x16, [sp,#160]
        mov     x17, x16
        str     x17, [sp,#416]
        ldr     x16, [sp,#168]
        mov     x17, x16
        str     x17, [sp,#424]
        ldr     x16, [sp,#176]
        mov     x17, x16
        str     x17, [sp,#432]
        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp,#440]
        ldr     x16, [sp,#192]
        mov     x17, x16
        str     x17, [sp,#448]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#456]
        ldr     x16, [sp,#208]
        mov     x17, x16
        str     x17, [sp,#464]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#472]
        ldr     x16, [sp,#224]
        mov     x17, x16
        str     x17, [sp,#480]
        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#488]
        ldr     x16, [sp,#240]
        mov     x17, x16
        str     x17, [sp,#496]
        ldr     x16, [sp,#248]
        mov     x17, x16
        str     x17, [sp,#504]
        ldr     x16, [sp,#256]
        ldr     x17, [sp,#264]
        add     x18, x16, x17
        str     x18, [sp,#512]
        ldr     x16, [sp,#512]
        ldr     x17, [sp,#272]
        add     x18, x16, x17
        str     x18, [sp,#520]
        ldr     x16, [sp,#520]
        ldr     x17, [sp,#280]
        add     x18, x16, x17
        str     x18, [sp,#528]
        ldr     x16, [sp,#528]
        ldr     x17, [sp,#288]
        add     x18, x16, x17
        str     x18, [sp,#536]
        ldr     x16, [sp,#536]
        ldr     x17, [sp,#296]
        add     x18, x16, x17
        str     x18, [sp,#544]
        ldr     x16, [sp,#544]
        ldr     x17, [sp,#304]
        add     x18, x16, x17
        str     x18, [sp,#552]
        ldr     x16, [sp,#552]
        ldr     x17, [sp,#312]
        add     x18, x16, x17
        str     x18, [sp,#560]
        ldr     x16, [sp,#560]
        ldr     x17, [sp,#320]
        add     x18, x16, x17
        str     x18, [sp,#568]
        ldr     x16, [sp,#568]
        ldr     x17, [sp,#328]
        add     x18, x16, x17
        str     x18, [sp,#576]
        ldr     x16, [sp,#576]
        ldr     x17, [sp,#336]
        add     x18, x16, x17
        str     x18, [sp,#584]
        ldr     x16, [sp,#584]
        ldr     x17, [sp,#344]
        add     x18, x16, x17
        str     x18, [sp,#592]
        ldr     x16, [sp,#592]
        ldr     x17, [sp,#352]
        add     x18, x16, x17
        str     x18, [sp,#600]
        ldr     x16, [sp,#600]
        ldr     x17, [sp,#360]
        add     x18, x16, x17
        str     x18, [sp,#608]
        ldr     x16, [sp,#608]
        ldr     x17, [sp,#368]
        add     x18, x16, x17
        str     x18, [sp,#616]
        ldr     x16, [sp,#616]
        ldr     x17, [sp,#376]
        add     x18, x16, x17
        str     x18, [sp,#624]
        ldr     x16, [sp,#624]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#632]
        ldr     x16, [sp,#632]
        ldr     x17, [sp,#392]
        add     x18, x16, x17
        str     x18, [sp,#640]
        ldr     x16, [sp,#640]
        ldr     x17, [sp,#400]
        sub     x18, x16, x17
        str     x18, [sp,#648]
        ldr     x16, [sp,#648]
        ldr     x17, [sp,#408]
        sub     x18, x16, x17
        str     x18, [sp,#656]
        ldr     x16, [sp,#656]
        ldr     x17, [sp,#416]
        sub     x18, x16, x17
        str     x18, [sp,#664]
        ldr     x16, [sp,#664]
        ldr     x17, [sp,#424]
        sub     x18, x16, x17
        str     x18, [sp,#672]
        ldr     x16, [sp,#672]
        ldr     x17, [sp,#432]
        sub     x18, x16, x17
        str     x18, [sp,#680]
        ldr     x16, [sp,#680]
        ldr     x17, [sp,#440]
        add     x18, x16, x17
        str     x18, [sp,#688]
        ldr     x16, [sp,#688]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#696]
        ldr     x16, [sp,#696]
        ldr     x17, [sp,#456]
        add     x9, x16, x17
        ldr     x16, [sp,#464]
        add     x9, x9, x16
        ldr     x16, [sp,#472]
        add     x9, x9, x16
        ldr     x16, [sp,#480]
        add     x9, x9, x16
        ldr     x16, [sp,#488]
        add     x9, x9, x16
        ldr     x16, [sp,#496]
        add     x9, x9, x16
        ldr     x16, [sp,#504]
        add     x9, x9, x16
        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #728
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
        mov     x9, #0
        mov     x10, x9
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        mov     x9, #1
        mov     x10, x9
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        str     x10, [x9]
        mov     x9, #2
        mov     x10, x9
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        str     x10, [x9]
        mov     x9, #3
        mov     x10, x9
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        str     x10, [x9]
        mov     x9, #4
        mov     x10, x9
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        str     x10, [x9]
        mov     x9, #5
        mov     x10, x9
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        str     x10, [x9]
        mov     x9, #6
        mov     x10, x9
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        str     x10, [x9]
        mov     x9, #7
        mov     x10, x9
        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        str     x10, [x9]
        mov     x9, #8
        mov     x10, x9
        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        str     x10, [x9]
        mov     x9, #9
        mov     x10, x9
        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        str     x10, [x9]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        str     x10, [x9]
        mov     x9, #1
        mov     x10, x9
        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        str     x10, [x9]
        mov     x9, #2
        mov     x10, x9
        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        str     x10, [x9]
        mov     x9, #3
        mov     x10, x9
        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        str     x10, [x9]
        mov     x9, #4
        mov     x10, x9
        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        str     x10, [x9]
        mov     x9, #5
        mov     x10, x9
        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        str     x10, [x9]
        mov     x9, #6
        mov     x10, x9
        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        str     x10, [x9]
        mov     x9, #7
        mov     x10, x9
        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        str     x10, [x9]
        mov     x9, #8
        mov     x10, x9
        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        str     x10, [x9]
        mov     x9, #9
        mov     x10, x9
        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        str     x10, [x9]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, a20
        add     x9, x9, #:lo12:a20
        str     x10, [x9]
        mov     x9, #1
        mov     x10, x9
        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        str     x10, [x9]
        mov     x9, #2
        mov     x10, x9
        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        str     x10, [x9]
        mov     x9, #3
        mov     x10, x9
        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        str     x10, [x9]
        mov     x9, #4
        mov     x10, x9
        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        str     x10, [x9]
        mov     x9, #5
        mov     x10, x9
        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        str     x10, [x9]
        mov     x9, #6
        mov     x10, x9
        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        str     x10, [x9]
        mov     x9, #7
        mov     x10, x9
        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        str     x10, [x9]
        mov     x9, #8
        mov     x10, x9
        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        str     x10, [x9]
        mov     x9, #9
        mov     x10, x9
        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        str     x10, [x9]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        str     x10, [x9]
        mov     x9, #1
        mov     x10, x9
        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        str     x10, [x9]
        mov     x9, #4
        mov     x10, x9
        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        str     x10, [x9]
        mov     x9, #5
        mov     x10, x9
        adrp     x9, a33
        add     x9, x9, #:lo12:a33
        str     x10, [x9]
        mov     x9, #6
        mov     x10, x9
        adrp     x9, a34
        add     x9, x9, #:lo12:a34
        str     x10, [x9]
        mov     x9, #7
        mov     x10, x9
        adrp     x9, a35
        add     x9, x9, #:lo12:a35
        str     x10, [x9]
        mov     x9, #8
        mov     x10, x9
        adrp     x9, a36
        add     x9, x9, #:lo12:a36
        str     x10, [x9]
        mov     x9, #9
        mov     x10, x9
        adrp     x9, a37
        add     x9, x9, #:lo12:a37
        str     x10, [x9]
        mov     x9, #0
        mov     x10, x9
        adrp     x9, a38
        add     x9, x9, #:lo12:a38
        str     x10, [x9]
        mov     x9, #1
        mov     x10, x9
        adrp     x9, a39
        add     x9, x9, #:lo12:a39
        str     x10, [x9]
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x16, [x9]
        str     x16, [sp]
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x16, [x9]
        str     x16, [sp,#8]
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        ldr     x16, [x9]
        str     x16, [sp,#16]
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        ldr     x16, [x9]
        str     x16, [sp,#24]
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        ldr     x16, [x9]
        str     x16, [sp,#32]
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        ldr     x16, [x9]
        str     x16, [sp,#40]
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        ldr     x16, [x9]
        str     x16, [sp,#48]
        adrp     x16, a7
        add     x16, x16, #:lo12:a7
        str     x16, [sp,#448]
        ldr     x16, [x16]
        str     x16, [sp,#56]
        ldr     x16, [sp]
        mov     x0, x16
        ldr     x16, [sp,#8]
        mov     x1, x16
        ldr     x16, [sp,#16]
        mov     x2, x16
        ldr     x16, [sp,#24]
        mov     x3, x16
        ldr     x16, [sp,#32]
        mov     x4, x16
        ldr     x16, [sp,#40]
        mov     x5, x16
        ldr     x16, [sp,#48]
        mov     x6, x16
        ldr     x16, [sp,#56]
        mov     x7, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     testParam8
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
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
        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        ldr     x16, [x9]
        str     x16, [sp,#64]
        adrp     x9, a33
        add     x9, x9, #:lo12:a33
        ldr     x16, [x9]
        str     x16, [sp,#72]
        adrp     x9, a34
        add     x9, x9, #:lo12:a34
        ldr     x16, [x9]
        str     x16, [sp,#80]
        adrp     x9, a35
        add     x9, x9, #:lo12:a35
        ldr     x16, [x9]
        str     x16, [sp,#88]
        adrp     x9, a36
        add     x9, x9, #:lo12:a36
        ldr     x16, [x9]
        str     x16, [sp,#96]
        adrp     x9, a37
        add     x9, x9, #:lo12:a37
        ldr     x16, [x9]
        str     x16, [sp,#104]
        adrp     x9, a38
        add     x9, x9, #:lo12:a38
        ldr     x16, [x9]
        str     x16, [sp,#112]
        adrp     x16, a39
        add     x16, x16, #:lo12:a39
        str     x16, [sp,#456]
        ldr     x16, [x16]
        str     x16, [sp,#120]
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        str     x16, [sp,#464]
        ldr     x16, [x16]
        str     x16, [sp,#128]
        adrp     x16, a9
        add     x16, x16, #:lo12:a9
        str     x16, [sp,#472]
        ldr     x16, [x16]
        str     x16, [sp,#136]
        adrp     x16, a10
        add     x16, x16, #:lo12:a10
        str     x16, [sp,#480]
        ldr     x16, [x16]
        str     x16, [sp,#144]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        str     x16, [sp,#488]
        ldr     x16, [x16]
        str     x16, [sp,#152]
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        str     x16, [sp,#496]
        ldr     x16, [x16]
        str     x16, [sp,#160]
        adrp     x16, a13
        add     x16, x16, #:lo12:a13
        str     x16, [sp,#504]
        ldr     x16, [x16]
        str     x16, [sp,#168]
        adrp     x16, a14
        add     x16, x16, #:lo12:a14
        str     x16, [sp,#512]
        ldr     x16, [x16]
        str     x16, [sp,#176]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        str     x16, [sp,#520]
        ldr     x16, [x16]
        str     x16, [sp,#184]
        ldr     x16, [sp,#64]
        mov     x0, x16
        ldr     x16, [sp,#72]
        mov     x1, x16
        ldr     x16, [sp,#80]
        mov     x2, x16
        ldr     x16, [sp,#88]
        mov     x3, x16
        ldr     x16, [sp,#96]
        mov     x4, x16
        ldr     x16, [sp,#104]
        mov     x5, x16
        ldr     x16, [sp,#112]
        mov     x6, x16
        ldr     x16, [sp,#120]
        mov     x7, x16
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        ldr     x16, [sp,#184]
        str     x16, [sp,#-80]
        ldr     x16, [sp,#176]
        str     x16, [sp,#-88]
        ldr     x16, [sp,#168]
        str     x16, [sp,#-96]
        ldr     x16, [sp,#160]
        str     x16, [sp,#-104]
        ldr     x16, [sp,#152]
        str     x16, [sp,#-112]
        ldr     x16, [sp,#144]
        str     x16, [sp,#-120]
        ldr     x16, [sp,#136]
        str     x16, [sp,#-128]
        ldr     x16, [sp,#128]
        str     x16, [sp,#-136]
        mov     x9, #136
        sub     sp, sp, x9
        mov     x29, sp
        bl     testParam16
        add     sp, sp, #64
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
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
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x16, [x9]
        str     x16, [sp,#192]
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x16, [x9]
        str     x16, [sp,#200]
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        ldr     x16, [x9]
        str     x16, [sp,#208]
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        ldr     x16, [x9]
        str     x16, [sp,#216]
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        ldr     x16, [x9]
        str     x16, [sp,#224]
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        ldr     x16, [x9]
        str     x16, [sp,#232]
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        ldr     x16, [x9]
        str     x16, [sp,#240]
        adrp     x16, a7
        add     x16, x16, #:lo12:a7
        str     x16, [sp,#528]
        ldr     x16, [x16]
        str     x16, [sp,#248]
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        str     x16, [sp,#536]
        ldr     x16, [x16]
        str     x16, [sp,#256]
        adrp     x16, a9
        add     x16, x16, #:lo12:a9
        str     x16, [sp,#544]
        ldr     x16, [x16]
        str     x16, [sp,#264]
        adrp     x16, a10
        add     x16, x16, #:lo12:a10
        str     x16, [sp,#552]
        ldr     x16, [x16]
        str     x16, [sp,#272]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        str     x16, [sp,#560]
        ldr     x16, [x16]
        str     x16, [sp,#280]
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        str     x16, [sp,#568]
        ldr     x16, [x16]
        str     x16, [sp,#288]
        adrp     x16, a13
        add     x16, x16, #:lo12:a13
        str     x16, [sp,#576]
        ldr     x16, [x16]
        str     x16, [sp,#296]
        adrp     x16, a14
        add     x16, x16, #:lo12:a14
        str     x16, [sp,#584]
        ldr     x16, [x16]
        str     x16, [sp,#304]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        str     x16, [sp,#592]
        ldr     x16, [x16]
        str     x16, [sp,#312]
        adrp     x16, a16
        add     x16, x16, #:lo12:a16
        str     x16, [sp,#600]
        ldr     x16, [x16]
        str     x16, [sp,#320]
        adrp     x16, a17
        add     x16, x16, #:lo12:a17
        str     x16, [sp,#608]
        ldr     x16, [x16]
        str     x16, [sp,#328]
        adrp     x16, a18
        add     x16, x16, #:lo12:a18
        str     x16, [sp,#616]
        ldr     x16, [x16]
        str     x16, [sp,#336]
        adrp     x16, a19
        add     x16, x16, #:lo12:a19
        str     x16, [sp,#624]
        ldr     x16, [x16]
        str     x16, [sp,#344]
        adrp     x16, a20
        add     x16, x16, #:lo12:a20
        str     x16, [sp,#632]
        ldr     x16, [x16]
        str     x16, [sp,#352]
        adrp     x16, a21
        add     x16, x16, #:lo12:a21
        str     x16, [sp,#640]
        ldr     x16, [x16]
        str     x16, [sp,#360]
        adrp     x16, a22
        add     x16, x16, #:lo12:a22
        str     x16, [sp,#648]
        ldr     x16, [x16]
        str     x16, [sp,#368]
        adrp     x16, a23
        add     x16, x16, #:lo12:a23
        str     x16, [sp,#656]
        ldr     x16, [x16]
        str     x16, [sp,#376]
        adrp     x16, a24
        add     x16, x16, #:lo12:a24
        str     x16, [sp,#664]
        ldr     x16, [x16]
        str     x16, [sp,#384]
        adrp     x16, a25
        add     x16, x16, #:lo12:a25
        str     x16, [sp,#672]
        ldr     x16, [x16]
        str     x16, [sp,#392]
        adrp     x16, a26
        add     x16, x16, #:lo12:a26
        str     x16, [sp,#680]
        ldr     x16, [x16]
        str     x16, [sp,#400]
        adrp     x16, a27
        add     x16, x16, #:lo12:a27
        str     x16, [sp,#688]
        ldr     x16, [x16]
        str     x16, [sp,#408]
        adrp     x16, a28
        add     x16, x16, #:lo12:a28
        str     x16, [sp,#696]
        ldr     x16, [x16]
        str     x16, [sp,#416]
        adrp     x16, a29
        add     x16, x16, #:lo12:a29
        str     x16, [sp,#704]
        ldr     x16, [x16]
        str     x16, [sp,#424]
        adrp     x16, a30
        add     x16, x16, #:lo12:a30
        str     x16, [sp,#712]
        ldr     x16, [x16]
        str     x16, [sp,#432]
        adrp     x16, a31
        add     x16, x16, #:lo12:a31
        str     x16, [sp,#720]
        ldr     x16, [x16]
        str     x16, [sp,#440]
        ldr     x16, [sp,#192]
        mov     x0, x16
        ldr     x16, [sp,#200]
        mov     x1, x16
        ldr     x16, [sp,#208]
        mov     x2, x16
        ldr     x16, [sp,#216]
        mov     x3, x16
        ldr     x16, [sp,#224]
        mov     x4, x16
        ldr     x16, [sp,#232]
        mov     x5, x16
        ldr     x16, [sp,#240]
        mov     x6, x16
        ldr     x16, [sp,#248]
        mov     x7, x16
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        ldr     x16, [sp,#440]
        str     x16, [sp,#-80]
        ldr     x16, [sp,#432]
        str     x16, [sp,#-88]
        ldr     x16, [sp,#424]
        str     x16, [sp,#-96]
        ldr     x16, [sp,#416]
        str     x16, [sp,#-104]
        ldr     x16, [sp,#408]
        str     x16, [sp,#-112]
        ldr     x16, [sp,#400]
        str     x16, [sp,#-120]
        ldr     x16, [sp,#392]
        str     x16, [sp,#-128]
        ldr     x16, [sp,#384]
        str     x16, [sp,#-136]
        ldr     x16, [sp,#376]
        str     x16, [sp,#-144]
        ldr     x16, [sp,#368]
        str     x16, [sp,#-152]
        ldr     x16, [sp,#360]
        str     x16, [sp,#-160]
        ldr     x16, [sp,#352]
        str     x16, [sp,#-168]
        ldr     x16, [sp,#344]
        str     x16, [sp,#-176]
        ldr     x16, [sp,#336]
        str     x16, [sp,#-184]
        ldr     x16, [sp,#328]
        str     x16, [sp,#-192]
        ldr     x16, [sp,#320]
        str     x16, [sp,#-200]
        ldr     x16, [sp,#312]
        str     x16, [sp,#-208]
        ldr     x16, [sp,#304]
        str     x16, [sp,#-216]
        ldr     x16, [sp,#296]
        str     x16, [sp,#-224]
        ldr     x16, [sp,#288]
        str     x16, [sp,#-232]
        ldr     x16, [sp,#280]
        str     x16, [sp,#-240]
        ldr     x16, [sp,#272]
        str     x16, [sp,#-248]
        ldr     x16, [sp,#264]
        str     x16, [sp,#-256]
        mov     x9, #-264
        mov     x27, x9
        ldr     x16, [sp,#256]
        str     x16, [sp,x27]
        mov     x9, #264
        sub     sp, sp, x9
        mov     x29, sp
        bl     testParam32
        add     sp, sp, #192
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
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
