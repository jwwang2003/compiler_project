.section .data
.global    arr1
.global    arr2
arr1:
        .zero   537600
arr2:
        .zero   537600
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global loop1
.global loop2
.global loop3
.global main
loop1:

loop1:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #608
        mov     x10, x0
        mov     x9, x1
        mov     x16, x10
        str     x16, [sp,#104]
        mov     x16, x9
        str     x16, [sp,#112]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb1
bb1:

        ldr     x16, [sp,#120]
        ldr     x17, [sp,#104]
        cmp     x16, x17
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
        b.ne     bb7
        b     bb3
bb7:

        ldr     x16, [sp,#120]
        ldr     x17, [sp,#112]
        cmp     x16, x17
        b.lt     bb8
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
        b.ne     bb2
        b     bb3
bb2:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb11
bb11:

        mov     x9, #2
        ldr     x16, [sp,#128]
        cmp     x16, x9
        b.lt     bb12
        b     bb13
bb12:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb14
bb14:

        mov     x9, #3
        ldr     x16, [sp,#136]
        cmp     x16, x9
        b.lt     bb15
        b     bb16
bb15:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#144]
        b     bb17
bb17:

        mov     x9, #4
        ldr     x16, [sp,#144]
        cmp     x16, x9
        b.lt     bb18
        b     bb19
bb18:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb20
bb20:

        mov     x16, #5
        str     x16, [sp,#288]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#288]
        cmp     x16, x17
        b.lt     bb21
        b     bb22
bb21:

        mov     x16, #0
        str     x16, [sp,#160]
        ldr     x16, [sp,#160]
        mov     x17, x16
        str     x17, [sp,#168]
        b     bb23
bb23:

        mov     x16, #6
        str     x16, [sp,#296]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#296]
        cmp     x16, x17
        b.lt     bb24
        b     bb25
bb24:

        mov     x16, #0
        str     x16, [sp,#176]
        ldr     x16, [sp,#176]
        mov     x17, x16
        str     x17, [sp,#184]
        b     bb26
bb26:

        mov     x16, #2
        str     x16, [sp,#304]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#304]
        cmp     x16, x17
        b.lt     bb27
        b     bb28
bb27:

        movz     x16, #0, LSL #16
        str     x16, [sp,#336]
        movk     x16, #53760, LSL #0
        str     x16, [sp,#336]
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#320]
        ldr     x16, [sp,#320]
        ldr     x17, [sp,#120]
        mul     x18, x16, x17
        str     x18, [sp,#328]
        adrp     x16, arr1
        add     x16, x16, #:lo12:arr1
        str     x16, [sp,#312]
        ldr     x16, [sp,#312]
        ldr     x17, [sp,#328]
        add     x18, x16, x17
        str     x18, [sp]
        mov     x16, #0
        str     x16, [sp,#352]
        ldr     x16, [sp,#352]
        mov     x17, x16
        str     x17, [sp,#344]
        ldr     x16, [sp]
        ldr     x17, [sp,#344]
        add     x18, x16, x17
        str     x18, [sp,#8]
        movz     x16, #0, LSL #16
        str     x16, [sp,#376]
        movk     x16, #26880, LSL #0
        str     x16, [sp,#376]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#360]
        ldr     x16, [sp,#360]
        ldr     x17, [sp,#128]
        mul     x18, x16, x17
        str     x18, [sp,#368]
        ldr     x16, [sp,#8]
        ldr     x17, [sp,#368]
        add     x18, x16, x17
        str     x18, [sp,#16]
        mov     x16, #0
        str     x16, [sp,#392]
        ldr     x16, [sp,#392]
        mov     x17, x16
        str     x17, [sp,#384]
        ldr     x16, [sp,#16]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#24]
        movz     x16, #0, LSL #16
        str     x16, [sp,#416]
        movk     x16, #8960, LSL #0
        str     x16, [sp,#416]
        ldr     x16, [sp,#416]
        mov     x17, x16
        str     x17, [sp,#400]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#136]
        mul     x18, x16, x17
        str     x18, [sp,#408]
        ldr     x16, [sp,#24]
        ldr     x17, [sp,#408]
        add     x18, x16, x17
        str     x18, [sp,#32]
        mov     x16, #0
        str     x16, [sp,#432]
        ldr     x16, [sp,#432]
        mov     x17, x16
        str     x17, [sp,#424]
        ldr     x16, [sp,#32]
        ldr     x17, [sp,#424]
        add     x18, x16, x17
        str     x18, [sp,#40]
        mov     x16, #2240
        str     x16, [sp,#456]
        ldr     x16, [sp,#456]
        mov     x17, x16
        str     x17, [sp,#440]
        ldr     x16, [sp,#440]
        ldr     x17, [sp,#144]
        mul     x18, x16, x17
        str     x18, [sp,#448]
        ldr     x16, [sp,#40]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#48]
        mov     x16, #0
        str     x16, [sp,#472]
        ldr     x16, [sp,#472]
        mov     x17, x16
        str     x17, [sp,#464]
        ldr     x16, [sp,#48]
        ldr     x17, [sp,#464]
        add     x18, x16, x17
        str     x18, [sp,#56]
        mov     x16, #448
        str     x16, [sp,#496]
        ldr     x16, [sp,#496]
        mov     x17, x16
        str     x17, [sp,#480]
        ldr     x16, [sp,#480]
        ldr     x17, [sp,#152]
        mul     x18, x16, x17
        str     x18, [sp,#488]
        ldr     x16, [sp,#56]
        ldr     x17, [sp,#488]
        add     x18, x16, x17
        str     x18, [sp,#64]
        mov     x16, #0
        str     x16, [sp,#512]
        ldr     x16, [sp,#512]
        mov     x17, x16
        str     x17, [sp,#504]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#504]
        add     x18, x16, x17
        str     x18, [sp,#72]
        mov     x16, #56
        str     x16, [sp,#536]
        ldr     x16, [sp,#536]
        mov     x17, x16
        str     x17, [sp,#520]
        ldr     x16, [sp,#520]
        ldr     x17, [sp,#168]
        mul     x18, x16, x17
        str     x18, [sp,#528]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#528]
        add     x18, x16, x17
        str     x18, [sp,#80]
        mov     x16, #0
        str     x16, [sp,#552]
        ldr     x16, [sp,#552]
        mov     x17, x16
        str     x17, [sp,#544]
        ldr     x16, [sp,#80]
        ldr     x17, [sp,#544]
        add     x18, x16, x17
        str     x18, [sp,#88]
        mov     x16, #8
        str     x16, [sp,#576]
        ldr     x16, [sp,#576]
        mov     x17, x16
        str     x17, [sp,#560]
        ldr     x16, [sp,#560]
        ldr     x17, [sp,#184]
        mul     x18, x16, x17
        str     x18, [sp,#568]
        ldr     x16, [sp,#88]
        ldr     x17, [sp,#568]
        add     x18, x16, x17
        str     x18, [sp,#96]
        ldr     x16, [sp,#120]
        ldr     x17, [sp,#128]
        add     x18, x16, x17
        str     x18, [sp,#208]
        ldr     x16, [sp,#208]
        ldr     x17, [sp,#136]
        add     x18, x16, x17
        str     x18, [sp,#216]
        ldr     x16, [sp,#216]
        ldr     x17, [sp,#144]
        add     x18, x16, x17
        str     x18, [sp,#224]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#152]
        add     x18, x16, x17
        str     x18, [sp,#232]
        ldr     x16, [sp,#232]
        ldr     x17, [sp,#168]
        add     x18, x16, x17
        str     x18, [sp,#240]
        ldr     x16, [sp,#240]
        ldr     x17, [sp,#184]
        add     x18, x16, x17
        str     x18, [sp,#248]
        ldr     x16, [sp,#248]
        ldr     x17, [sp,#104]
        add     x18, x16, x17
        str     x18, [sp,#256]
        ldr     x16, [sp,#256]
        ldr     x17, [sp,#112]
        add     x18, x16, x17
        str     x18, [sp,#264]
        ldr     x16, [sp,#264]
        ldr     x17, [sp,#96]
        str     x16, [x17]
        mov     x16, #1
        str     x16, [sp,#584]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#584]
        add     x18, x16, x17
        str     x18, [sp,#272]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#280]
        mov     x17, x16
        str     x17, [sp,#184]
        b     bb26
bb28:

        mov     x16, #1
        str     x16, [sp,#592]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#592]
        add     x18, x16, x17
        str     x18, [sp,#192]
        ldr     x16, [sp,#192]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#168]
        b     bb23
bb25:

        mov     x16, #1
        str     x16, [sp,#600]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#600]
        add     x9, x16, x17
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb20
bb22:

        mov     x9, #1
        ldr     x16, [sp,#144]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#144]
        b     bb17
bb19:

        mov     x9, #1
        ldr     x16, [sp,#136]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb14
bb16:

        mov     x9, #1
        ldr     x16, [sp,#128]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb11
bb13:

        mov     x9, #1
        ldr     x16, [sp,#120]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb1
bb3:

        mov     x0, #0
        mov     sp, x29
        ret
loop2:

loop2:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #472
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb29
bb29:

        mov     x9, #10
        ldr     x16, [sp,#104]
        cmp     x16, x9
        b.lt     bb30
        b     bb31
bb30:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#112]
        b     bb32
bb32:

        mov     x9, #2
        ldr     x16, [sp,#112]
        cmp     x16, x9
        b.lt     bb33
        b     bb34
bb33:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb35
bb35:

        mov     x9, #3
        ldr     x16, [sp,#120]
        cmp     x16, x9
        b.lt     bb36
        b     bb37
bb36:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb38
bb38:

        mov     x9, #2
        ldr     x16, [sp,#128]
        cmp     x16, x9
        b.lt     bb39
        b     bb40
bb39:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb41
bb41:

        mov     x9, #4
        ldr     x16, [sp,#136]
        cmp     x16, x9
        b.lt     bb42
        b     bb43
bb42:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#144]
        b     bb44
bb44:

        mov     x9, #8
        ldr     x16, [sp,#144]
        cmp     x16, x9
        b.lt     bb45
        b     bb46
bb45:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb47
bb47:

        mov     x16, #7
        str     x16, [sp,#184]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#184]
        cmp     x16, x17
        b.lt     bb48
        b     bb49
bb48:

        movz     x16, #0, LSL #16
        str     x16, [sp,#216]
        movk     x16, #53760, LSL #0
        str     x16, [sp,#216]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp,#200]
        ldr     x17, [sp,#104]
        mul     x18, x16, x17
        str     x18, [sp,#208]
        adrp     x16, arr2
        add     x16, x16, #:lo12:arr2
        str     x16, [sp,#192]
        ldr     x16, [sp,#192]
        ldr     x17, [sp,#208]
        add     x18, x16, x17
        str     x18, [sp]
        mov     x16, #0
        str     x16, [sp,#232]
        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#224]
        ldr     x16, [sp]
        ldr     x17, [sp,#224]
        add     x18, x16, x17
        str     x18, [sp,#8]
        movz     x16, #0, LSL #16
        str     x16, [sp,#256]
        movk     x16, #26880, LSL #0
        str     x16, [sp,#256]
        ldr     x16, [sp,#256]
        mov     x17, x16
        str     x17, [sp,#240]
        ldr     x16, [sp,#240]
        ldr     x17, [sp,#112]
        mul     x18, x16, x17
        str     x18, [sp,#248]
        ldr     x16, [sp,#8]
        ldr     x17, [sp,#248]
        add     x18, x16, x17
        str     x18, [sp,#16]
        mov     x16, #0
        str     x16, [sp,#272]
        ldr     x16, [sp,#272]
        mov     x17, x16
        str     x17, [sp,#264]
        ldr     x16, [sp,#16]
        ldr     x17, [sp,#264]
        add     x18, x16, x17
        str     x18, [sp,#24]
        movz     x16, #0, LSL #16
        str     x16, [sp,#296]
        movk     x16, #8960, LSL #0
        str     x16, [sp,#296]
        ldr     x16, [sp,#296]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#280]
        ldr     x17, [sp,#120]
        mul     x18, x16, x17
        str     x18, [sp,#288]
        ldr     x16, [sp,#24]
        ldr     x17, [sp,#288]
        add     x18, x16, x17
        str     x18, [sp,#32]
        mov     x16, #0
        str     x16, [sp,#312]
        ldr     x16, [sp,#312]
        mov     x17, x16
        str     x17, [sp,#304]
        ldr     x16, [sp,#32]
        ldr     x17, [sp,#304]
        add     x18, x16, x17
        str     x18, [sp,#40]
        mov     x16, #2240
        str     x16, [sp,#336]
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#320]
        ldr     x16, [sp,#320]
        ldr     x17, [sp,#128]
        mul     x18, x16, x17
        str     x18, [sp,#328]
        ldr     x16, [sp,#40]
        ldr     x17, [sp,#328]
        add     x18, x16, x17
        str     x18, [sp,#48]
        mov     x16, #0
        str     x16, [sp,#352]
        ldr     x16, [sp,#352]
        mov     x17, x16
        str     x17, [sp,#344]
        ldr     x16, [sp,#48]
        ldr     x17, [sp,#344]
        add     x18, x16, x17
        str     x18, [sp,#56]
        mov     x16, #448
        str     x16, [sp,#376]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#360]
        ldr     x16, [sp,#360]
        ldr     x17, [sp,#136]
        mul     x18, x16, x17
        str     x18, [sp,#368]
        ldr     x16, [sp,#56]
        ldr     x17, [sp,#368]
        add     x18, x16, x17
        str     x18, [sp,#64]
        mov     x16, #0
        str     x16, [sp,#392]
        ldr     x16, [sp,#392]
        mov     x17, x16
        str     x17, [sp,#384]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#72]
        mov     x16, #56
        str     x16, [sp,#416]
        ldr     x16, [sp,#416]
        mov     x17, x16
        str     x17, [sp,#400]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#144]
        mul     x18, x16, x17
        str     x18, [sp,#408]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#408]
        add     x18, x16, x17
        str     x18, [sp,#80]
        mov     x16, #0
        str     x16, [sp,#432]
        ldr     x16, [sp,#432]
        mov     x17, x16
        str     x17, [sp,#424]
        ldr     x16, [sp,#80]
        ldr     x17, [sp,#424]
        add     x18, x16, x17
        str     x18, [sp,#88]
        mov     x16, #8
        str     x16, [sp,#456]
        ldr     x16, [sp,#456]
        mov     x17, x16
        str     x17, [sp,#440]
        ldr     x16, [sp,#440]
        ldr     x17, [sp,#152]
        mul     x18, x16, x17
        str     x18, [sp,#448]
        ldr     x16, [sp,#88]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#96]
        ldr     x16, [sp,#104]
        ldr     x17, [sp,#112]
        add     x18, x16, x17
        str     x18, [sp,#160]
        ldr     x16, [sp,#160]
        ldr     x17, [sp,#128]
        add     x18, x16, x17
        str     x18, [sp,#168]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#152]
        add     x18, x16, x17
        str     x18, [sp,#176]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#96]
        str     x16, [x17]
        mov     x16, #1
        str     x16, [sp,#464]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#464]
        add     x9, x16, x17
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb47
bb49:

        mov     x9, #1
        ldr     x16, [sp,#144]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#144]
        b     bb44
bb46:

        mov     x9, #1
        ldr     x16, [sp,#136]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#136]
        b     bb41
bb43:

        mov     x9, #1
        ldr     x16, [sp,#128]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb38
bb40:

        mov     x9, #1
        ldr     x16, [sp,#120]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb35
bb37:

        mov     x9, #1
        ldr     x16, [sp,#112]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#112]
        b     bb32
bb34:

        mov     x9, #1
        ldr     x16, [sp,#104]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb29
bb31:

        mov     x0, #0
        mov     sp, x29
        ret
loop3:

loop3:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #1392
        mov     x9, x0
        mov     x16, x1
        str     x16, [sp]
        mov     x16, x2
        str     x16, [sp,#8]
        mov     x16, x3
        str     x16, [sp,#16]
        mov     x16, x4
        str     x16, [sp,#24]
        mov     x16, x5
        str     x16, [sp,#32]
        mov     x16, x6
        str     x16, [sp,#40]
        mov     x16, x9
        str     x16, [sp,#256]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#264]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#272]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#288]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#296]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#304]
        mov     x16, #0
        str     x16, [sp,#312]
        mov     x16, #0
        str     x16, [sp,#320]
        ldr     x16, [sp,#320]
        mov     x17, x16
        str     x17, [sp,#328]
        ldr     x16, [sp,#312]
        mov     x17, x16
        str     x17, [sp,#336]
        b     bb50
bb50:

        mov     x16, #10
        str     x16, [sp,#720]
        ldr     x16, [sp,#328]
        ldr     x17, [sp,#720]
        cmp     x16, x17
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#344]
        b.lt     bb51
        b     bb52
bb51:

        mov     x16, #0
        str     x16, [sp,#352]
        ldr     x16, [sp,#352]
        mov     x17, x16
        str     x17, [sp,#360]
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#368]
        b     bb53
bb53:

        mov     x16, #100
        str     x16, [sp,#728]
        ldr     x16, [sp,#360]
        ldr     x17, [sp,#728]
        cmp     x16, x17
        ldr     x16, [sp,#368]
        mov     x17, x16
        str     x17, [sp,#376]
        b.lt     bb54
        b     bb55
bb54:

        mov     x16, #0
        str     x16, [sp,#400]
        ldr     x16, [sp,#368]
        mov     x17, x16
        str     x17, [sp,#408]
        ldr     x16, [sp,#400]
        mov     x17, x16
        str     x17, [sp,#416]
        b     bb56
bb56:

        mov     x16, #1000
        str     x16, [sp,#736]
        ldr     x16, [sp,#416]
        ldr     x17, [sp,#736]
        cmp     x16, x17
        ldr     x16, [sp,#408]
        mov     x17, x16
        str     x17, [sp,#424]
        b.lt     bb57
        b     bb58
bb57:

        mov     x16, #0
        str     x16, [sp,#448]
        ldr     x16, [sp,#408]
        mov     x17, x16
        str     x17, [sp,#456]
        ldr     x16, [sp,#448]
        mov     x17, x16
        str     x17, [sp,#464]
        b     bb59
bb59:

        movz     x16, #0, LSL #16
        str     x16, [sp,#744]
        movk     x16, #10000, LSL #0
        str     x16, [sp,#744]
        ldr     x16, [sp,#464]
        ldr     x17, [sp,#744]
        cmp     x16, x17
        ldr     x16, [sp,#456]
        mov     x17, x16
        str     x17, [sp,#472]
        b.lt     bb60
        b     bb61
bb60:

        mov     x16, #0
        str     x16, [sp,#496]
        ldr     x16, [sp,#456]
        mov     x17, x16
        str     x17, [sp,#504]
        ldr     x16, [sp,#496]
        mov     x17, x16
        str     x17, [sp,#512]
        b     bb62
bb62:

        movz     x16, #1, LSL #16
        str     x16, [sp,#752]
        movk     x16, #34464, LSL #0
        str     x16, [sp,#752]
        ldr     x16, [sp,#512]
        ldr     x17, [sp,#752]
        cmp     x16, x17
        ldr     x16, [sp,#504]
        mov     x17, x16
        str     x17, [sp,#520]
        b.lt     bb63
        b     bb64
bb63:

        mov     x16, #0
        str     x16, [sp,#544]
        ldr     x16, [sp,#504]
        mov     x17, x16
        str     x17, [sp,#552]
        ldr     x16, [sp,#544]
        mov     x17, x16
        str     x17, [sp,#560]
        b     bb65
bb65:

        movz     x16, #15, LSL #16
        str     x16, [sp,#760]
        movk     x16, #16960, LSL #0
        str     x16, [sp,#760]
        ldr     x16, [sp,#560]
        ldr     x17, [sp,#760]
        cmp     x16, x17
        ldr     x16, [sp,#552]
        mov     x17, x16
        str     x17, [sp,#568]
        b.lt     bb66
        b     bb67
bb66:

        mov     x16, #0
        str     x16, [sp,#592]
        ldr     x16, [sp,#592]
        mov     x17, x16
        str     x17, [sp,#600]
        ldr     x16, [sp,#552]
        mov     x17, x16
        str     x17, [sp,#608]
        b     bb68
bb68:

        movz     x16, #152, LSL #16
        str     x16, [sp,#768]
        movk     x16, #38528, LSL #0
        str     x16, [sp,#768]
        ldr     x16, [sp,#600]
        ldr     x17, [sp,#768]
        cmp     x16, x17
        ldr     x16, [sp,#608]
        mov     x17, x16
        str     x17, [sp,#616]
        b.lt     bb69
        b     bb70
bb69:

        mov     x16, #817
        str     x16, [sp,#776]
        ldr     x16, [sp,#608]
        ldr     x17, [sp,#776]
        sdiv     x18, x16, x17
        str     x18, [sp,#640]
        mov     x16, #817
        str     x16, [sp,#784]
        ldr     x16, [sp,#640]
        ldr     x17, [sp,#784]
        mul     x18, x16, x17
        str     x18, [sp,#648]
        ldr     x16, [sp,#608]
        ldr     x17, [sp,#648]
        sub     x18, x16, x17
        str     x18, [sp,#656]
        movz     x16, #0, LSL #16
        str     x16, [sp,#816]
        movk     x16, #53760, LSL #0
        str     x16, [sp,#816]
        ldr     x16, [sp,#816]
        mov     x17, x16
        str     x17, [sp,#800]
        ldr     x16, [sp,#800]
        ldr     x17, [sp,#328]
        mul     x18, x16, x17
        str     x18, [sp,#808]
        adrp     x16, arr1
        add     x16, x16, #:lo12:arr1
        str     x16, [sp,#792]
        ldr     x16, [sp,#792]
        ldr     x17, [sp,#808]
        add     x18, x16, x17
        str     x18, [sp,#48]
        mov     x16, #0
        str     x16, [sp,#832]
        ldr     x16, [sp,#832]
        mov     x17, x16
        str     x17, [sp,#824]
        ldr     x16, [sp,#48]
        ldr     x17, [sp,#824]
        add     x18, x16, x17
        str     x18, [sp,#56]
        movz     x16, #0, LSL #16
        str     x16, [sp,#856]
        movk     x16, #26880, LSL #0
        str     x16, [sp,#856]
        ldr     x16, [sp,#856]
        mov     x17, x16
        str     x17, [sp,#840]
        ldr     x16, [sp,#840]
        ldr     x17, [sp,#360]
        mul     x18, x16, x17
        str     x18, [sp,#848]
        ldr     x16, [sp,#56]
        ldr     x17, [sp,#848]
        add     x18, x16, x17
        str     x18, [sp,#64]
        mov     x16, #0
        str     x16, [sp,#872]
        ldr     x16, [sp,#872]
        mov     x17, x16
        str     x17, [sp,#864]
        ldr     x16, [sp,#64]
        ldr     x17, [sp,#864]
        add     x18, x16, x17
        str     x18, [sp,#72]
        movz     x16, #0, LSL #16
        str     x16, [sp,#896]
        movk     x16, #8960, LSL #0
        str     x16, [sp,#896]
        ldr     x16, [sp,#896]
        mov     x17, x16
        str     x17, [sp,#880]
        ldr     x16, [sp,#880]
        ldr     x17, [sp,#416]
        mul     x18, x16, x17
        str     x18, [sp,#888]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#888]
        add     x18, x16, x17
        str     x18, [sp,#80]
        mov     x16, #0
        str     x16, [sp,#912]
        ldr     x16, [sp,#912]
        mov     x17, x16
        str     x17, [sp,#904]
        ldr     x16, [sp,#80]
        ldr     x17, [sp,#904]
        add     x18, x16, x17
        str     x18, [sp,#88]
        mov     x16, #2240
        str     x16, [sp,#936]
        ldr     x16, [sp,#936]
        mov     x17, x16
        str     x17, [sp,#920]
        ldr     x16, [sp,#920]
        ldr     x17, [sp,#464]
        mul     x18, x16, x17
        str     x18, [sp,#928]
        ldr     x16, [sp,#88]
        ldr     x17, [sp,#928]
        add     x18, x16, x17
        str     x18, [sp,#96]
        mov     x16, #0
        str     x16, [sp,#952]
        ldr     x16, [sp,#952]
        mov     x17, x16
        str     x17, [sp,#944]
        ldr     x16, [sp,#96]
        ldr     x17, [sp,#944]
        add     x18, x16, x17
        str     x18, [sp,#104]
        mov     x16, #448
        str     x16, [sp,#976]
        ldr     x16, [sp,#976]
        mov     x17, x16
        str     x17, [sp,#960]
        ldr     x16, [sp,#960]
        ldr     x17, [sp,#512]
        mul     x18, x16, x17
        str     x18, [sp,#968]
        ldr     x16, [sp,#104]
        ldr     x17, [sp,#968]
        add     x18, x16, x17
        str     x18, [sp,#112]
        mov     x16, #0
        str     x16, [sp,#992]
        ldr     x16, [sp,#992]
        mov     x17, x16
        str     x17, [sp,#984]
        ldr     x16, [sp,#112]
        ldr     x17, [sp,#984]
        add     x18, x16, x17
        str     x18, [sp,#120]
        mov     x16, #56
        str     x16, [sp,#1016]
        ldr     x16, [sp,#1016]
        mov     x17, x16
        str     x17, [sp,#1000]
        ldr     x16, [sp,#1000]
        ldr     x17, [sp,#560]
        mul     x18, x16, x17
        str     x18, [sp,#1008]
        ldr     x16, [sp,#120]
        ldr     x17, [sp,#1008]
        add     x18, x16, x17
        str     x18, [sp,#128]
        mov     x16, #0
        str     x16, [sp,#1032]
        ldr     x16, [sp,#1032]
        mov     x17, x16
        str     x17, [sp,#1024]
        ldr     x16, [sp,#128]
        ldr     x17, [sp,#1024]
        add     x18, x16, x17
        str     x18, [sp,#136]
        mov     x16, #8
        str     x16, [sp,#1056]
        ldr     x16, [sp,#1056]
        mov     x17, x16
        str     x17, [sp,#1040]
        ldr     x16, [sp,#1040]
        ldr     x17, [sp,#600]
        mul     x18, x16, x17
        str     x18, [sp,#1048]
        ldr     x16, [sp,#136]
        ldr     x17, [sp,#1048]
        add     x18, x16, x17
        str     x18, [sp,#144]
        ldr     x16, [sp,#144]
        ldr     x17, [x16]
        str     x17, [sp,#664]
        ldr     x16, [sp,#656]
        ldr     x17, [sp,#664]
        add     x18, x16, x17
        str     x18, [sp,#672]
        movz     x16, #0, LSL #16
        str     x16, [sp,#1088]
        movk     x16, #53760, LSL #0
        str     x16, [sp,#1088]
        ldr     x16, [sp,#1088]
        mov     x17, x16
        str     x17, [sp,#1072]
        ldr     x16, [sp,#1072]
        ldr     x17, [sp,#328]
        mul     x18, x16, x17
        str     x18, [sp,#1080]
        adrp     x16, arr2
        add     x16, x16, #:lo12:arr2
        str     x16, [sp,#1064]
        ldr     x16, [sp,#1064]
        ldr     x17, [sp,#1080]
        add     x18, x16, x17
        str     x18, [sp,#152]
        mov     x16, #0
        str     x16, [sp,#1104]
        ldr     x16, [sp,#1104]
        mov     x17, x16
        str     x17, [sp,#1096]
        ldr     x16, [sp,#152]
        ldr     x17, [sp,#1096]
        add     x18, x16, x17
        str     x18, [sp,#160]
        movz     x16, #0, LSL #16
        str     x16, [sp,#1128]
        movk     x16, #26880, LSL #0
        str     x16, [sp,#1128]
        ldr     x16, [sp,#1128]
        mov     x17, x16
        str     x17, [sp,#1112]
        ldr     x16, [sp,#1112]
        ldr     x17, [sp,#360]
        mul     x18, x16, x17
        str     x18, [sp,#1120]
        ldr     x16, [sp,#160]
        ldr     x17, [sp,#1120]
        add     x18, x16, x17
        str     x18, [sp,#168]
        mov     x16, #0
        str     x16, [sp,#1144]
        ldr     x16, [sp,#1144]
        mov     x17, x16
        str     x17, [sp,#1136]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#1136]
        add     x18, x16, x17
        str     x18, [sp,#176]
        movz     x16, #0, LSL #16
        str     x16, [sp,#1168]
        movk     x16, #8960, LSL #0
        str     x16, [sp,#1168]
        ldr     x16, [sp,#1168]
        mov     x17, x16
        str     x17, [sp,#1152]
        ldr     x16, [sp,#1152]
        ldr     x17, [sp,#416]
        mul     x18, x16, x17
        str     x18, [sp,#1160]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#1160]
        add     x18, x16, x17
        str     x18, [sp,#184]
        mov     x16, #0
        str     x16, [sp,#1184]
        ldr     x16, [sp,#1184]
        mov     x17, x16
        str     x17, [sp,#1176]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#1176]
        add     x18, x16, x17
        str     x18, [sp,#192]
        mov     x16, #2240
        str     x16, [sp,#1208]
        ldr     x16, [sp,#1208]
        mov     x17, x16
        str     x17, [sp,#1192]
        ldr     x16, [sp,#1192]
        ldr     x17, [sp,#464]
        mul     x18, x16, x17
        str     x18, [sp,#1200]
        ldr     x16, [sp,#192]
        ldr     x17, [sp,#1200]
        add     x18, x16, x17
        str     x18, [sp,#200]
        mov     x16, #0
        str     x16, [sp,#1224]
        ldr     x16, [sp,#1224]
        mov     x17, x16
        str     x17, [sp,#1216]
        ldr     x16, [sp,#200]
        ldr     x17, [sp,#1216]
        add     x18, x16, x17
        str     x18, [sp,#208]
        mov     x16, #448
        str     x16, [sp,#1248]
        ldr     x16, [sp,#1248]
        mov     x17, x16
        str     x17, [sp,#1232]
        ldr     x16, [sp,#1232]
        ldr     x17, [sp,#512]
        mul     x18, x16, x17
        str     x18, [sp,#1240]
        ldr     x16, [sp,#208]
        ldr     x17, [sp,#1240]
        add     x18, x16, x17
        str     x18, [sp,#216]
        mov     x16, #0
        str     x16, [sp,#1264]
        ldr     x16, [sp,#1264]
        mov     x17, x16
        str     x17, [sp,#1256]
        ldr     x16, [sp,#216]
        ldr     x17, [sp,#1256]
        add     x18, x16, x17
        str     x18, [sp,#224]
        mov     x16, #56
        str     x16, [sp,#1288]
        ldr     x16, [sp,#1288]
        mov     x17, x16
        str     x17, [sp,#1272]
        ldr     x16, [sp,#1272]
        ldr     x17, [sp,#560]
        mul     x18, x16, x17
        str     x18, [sp,#1280]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#1280]
        add     x18, x16, x17
        str     x18, [sp,#232]
        mov     x16, #0
        str     x16, [sp,#1304]
        ldr     x16, [sp,#1304]
        mov     x17, x16
        str     x17, [sp,#1296]
        ldr     x16, [sp,#232]
        ldr     x17, [sp,#1296]
        add     x18, x16, x17
        str     x18, [sp,#240]
        mov     x16, #8
        str     x16, [sp,#1328]
        ldr     x16, [sp,#1328]
        mov     x17, x16
        str     x17, [sp,#1312]
        ldr     x16, [sp,#1312]
        ldr     x17, [sp,#600]
        mul     x18, x16, x17
        str     x18, [sp,#1320]
        ldr     x16, [sp,#240]
        ldr     x17, [sp,#1320]
        add     x18, x16, x17
        str     x18, [sp,#248]
        ldr     x16, [sp,#248]
        ldr     x17, [x16]
        str     x17, [sp,#680]
        ldr     x16, [sp,#672]
        ldr     x17, [sp,#680]
        add     x18, x16, x17
        str     x18, [sp,#688]
        ldr     x16, [sp,#688]
        mov     x17, x16
        str     x17, [sp,#696]
        mov     x16, #1
        str     x16, [sp,#1336]
        ldr     x16, [sp,#600]
        ldr     x17, [sp,#1336]
        add     x18, x16, x17
        str     x18, [sp,#704]
        ldr     x16, [sp,#704]
        mov     x17, x16
        str     x17, [sp,#712]
        ldr     x16, [sp,#712]
        ldr     x17, [sp,#304]
        cmp     x16, x17
        ldr     x16, [sp,#712]
        mov     x17, x16
        str     x17, [sp,#600]
        ldr     x16, [sp,#696]
        mov     x17, x16
        str     x17, [sp,#608]
        ldr     x16, [sp,#696]
        mov     x17, x16
        str     x17, [sp,#616]
        b.ge     bb70
        b     bb68
bb70:

        mov     x16, #1
        str     x16, [sp,#1344]
        ldr     x16, [sp,#560]
        ldr     x17, [sp,#1344]
        add     x18, x16, x17
        str     x18, [sp,#624]
        ldr     x16, [sp,#624]
        mov     x17, x16
        str     x17, [sp,#632]
        ldr     x16, [sp,#632]
        ldr     x17, [sp,#296]
        cmp     x16, x17
        ldr     x16, [sp,#616]
        mov     x17, x16
        str     x17, [sp,#552]
        ldr     x16, [sp,#632]
        mov     x17, x16
        str     x17, [sp,#560]
        ldr     x16, [sp,#616]
        mov     x17, x16
        str     x17, [sp,#568]
        b.ge     bb67
        b     bb65
bb67:

        mov     x16, #1
        str     x16, [sp,#1352]
        ldr     x16, [sp,#512]
        ldr     x17, [sp,#1352]
        add     x18, x16, x17
        str     x18, [sp,#576]
        ldr     x16, [sp,#576]
        mov     x17, x16
        str     x17, [sp,#584]
        ldr     x16, [sp,#584]
        ldr     x17, [sp,#288]
        cmp     x16, x17
        ldr     x16, [sp,#568]
        mov     x17, x16
        str     x17, [sp,#504]
        ldr     x16, [sp,#584]
        mov     x17, x16
        str     x17, [sp,#512]
        ldr     x16, [sp,#568]
        mov     x17, x16
        str     x17, [sp,#520]
        b.ge     bb64
        b     bb62
bb64:

        mov     x16, #1
        str     x16, [sp,#1360]
        ldr     x16, [sp,#464]
        ldr     x17, [sp,#1360]
        add     x18, x16, x17
        str     x18, [sp,#528]
        ldr     x16, [sp,#528]
        mov     x17, x16
        str     x17, [sp,#536]
        ldr     x16, [sp,#536]
        ldr     x17, [sp,#280]
        cmp     x16, x17
        ldr     x16, [sp,#520]
        mov     x17, x16
        str     x17, [sp,#456]
        ldr     x16, [sp,#536]
        mov     x17, x16
        str     x17, [sp,#464]
        ldr     x16, [sp,#520]
        mov     x17, x16
        str     x17, [sp,#472]
        b.ge     bb61
        b     bb59
bb61:

        mov     x16, #1
        str     x16, [sp,#1368]
        ldr     x16, [sp,#416]
        ldr     x17, [sp,#1368]
        add     x18, x16, x17
        str     x18, [sp,#480]
        ldr     x16, [sp,#480]
        mov     x17, x16
        str     x17, [sp,#488]
        ldr     x16, [sp,#488]
        ldr     x17, [sp,#272]
        cmp     x16, x17
        ldr     x16, [sp,#472]
        mov     x17, x16
        str     x17, [sp,#408]
        ldr     x16, [sp,#488]
        mov     x17, x16
        str     x17, [sp,#416]
        ldr     x16, [sp,#472]
        mov     x17, x16
        str     x17, [sp,#424]
        b.ge     bb58
        b     bb56
bb58:

        mov     x16, #1
        str     x16, [sp,#1376]
        ldr     x16, [sp,#360]
        ldr     x17, [sp,#1376]
        add     x18, x16, x17
        str     x18, [sp,#432]
        ldr     x16, [sp,#432]
        mov     x17, x16
        str     x17, [sp,#440]
        ldr     x16, [sp,#440]
        ldr     x17, [sp,#264]
        cmp     x16, x17
        ldr     x16, [sp,#440]
        mov     x17, x16
        str     x17, [sp,#360]
        ldr     x16, [sp,#424]
        mov     x17, x16
        str     x17, [sp,#368]
        ldr     x16, [sp,#424]
        mov     x17, x16
        str     x17, [sp,#376]
        b.ge     bb55
        b     bb53
bb55:

        mov     x16, #1
        str     x16, [sp,#1384]
        ldr     x16, [sp,#328]
        ldr     x17, [sp,#1384]
        add     x18, x16, x17
        str     x18, [sp,#384]
        ldr     x16, [sp,#384]
        mov     x17, x16
        str     x17, [sp,#392]
        ldr     x16, [sp,#392]
        ldr     x17, [sp,#256]
        cmp     x16, x17
        ldr     x16, [sp,#392]
        mov     x17, x16
        str     x17, [sp,#328]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#336]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#344]
        b.ge     bb52
        b     bb50
bb52:

        ldr     x16, [sp,#344]
        mov     x0, x16
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #88
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
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp]
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
        str     x16, [sp,#16]
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
        str     x16, [sp,#24]
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
        mov     x16, x0
        str     x16, [sp,#56]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#64]
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
        mov     x16, x0
        str     x16, [sp,#72]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#80]
        ldr     x16, [sp]
        mov     x0, x16
        ldr     x16, [sp,#8]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     loop1
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
        bl     loop2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        ldr     x16, [sp,#16]
        mov     x0, x16
        ldr     x16, [sp,#24]
        mov     x1, x16
        ldr     x16, [sp,#32]
        mov     x2, x16
        ldr     x16, [sp,#40]
        mov     x3, x16
        ldr     x16, [sp,#48]
        mov     x4, x16
        ldr     x16, [sp,#64]
        mov     x5, x16
        ldr     x16, [sp,#80]
        mov     x6, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     loop3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
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
        mov     x0, x10
        mov     sp, x29
        ret
