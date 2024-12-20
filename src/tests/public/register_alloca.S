.section .data
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
a1:
        .quad   1
a2:
        .quad   2
a3:
        .quad   3
a4:
        .quad   4
a5:
        .quad   5
a6:
        .quad   6
a7:
        .quad   7
a8:
        .quad   8
a9:
        .quad   9
a10:
        .quad   10
a11:
        .quad   11
a12:
        .quad   12
a13:
        .quad   13
a14:
        .quad   14
a15:
        .quad   15
a16:
        .quad   16
a17:
        .quad   1
a18:
        .quad   2
a19:
        .quad   3
a20:
        .quad   4
a21:
        .quad   5
a22:
        .quad   6
a23:
        .quad   7
a24:
        .quad   8
a25:
        .quad   9
a26:
        .quad   10
a27:
        .quad   11
a28:
        .quad   12
a29:
        .quad   13
a30:
        .quad   14
a31:
        .quad   15
a32:
        .quad   16
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func
.global main
func:

func:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #3496
        mov     x10, x0
        mov     x9, x1
        mov     x16, x10
        str     x16, [sp]
        mov     x16, x9
        str     x16, [sp,#8]
        ldr     x16, [sp]
        ldr     x17, [sp,#8]
        add     x9, x16, x17
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
        mov     x9, #1
        ldr     x16, [sp,#16]
        add     x17, x9, x16
        str     x17, [sp,#48]
        adrp     x16, a1
        add     x16, x16, #:lo12:a1
        str     x16, [sp,#2408]
        ldr     x16, [x16]
        str     x16, [sp,#56]
        ldr     x16, [sp,#48]
        ldr     x17, [sp,#56]
        add     x9, x16, x17
        mov     x16, x9
        str     x16, [sp,#64]
        mov     x16, #2
        str     x16, [sp,#2416]
        ldr     x16, [sp,#2416]
        ldr     x17, [sp,#24]
        add     x18, x16, x17
        str     x18, [sp,#72]
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        str     x16, [sp,#2424]
        ldr     x16, [x16]
        str     x16, [sp,#80]
        ldr     x16, [sp,#72]
        ldr     x17, [sp,#80]
        add     x18, x16, x17
        str     x18, [sp,#88]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#96]
        mov     x16, #3
        str     x16, [sp,#2432]
        ldr     x16, [sp,#2432]
        ldr     x17, [sp,#32]
        add     x18, x16, x17
        str     x18, [sp,#104]
        adrp     x16, a3
        add     x16, x16, #:lo12:a3
        str     x16, [sp,#2440]
        ldr     x16, [x16]
        str     x16, [sp,#112]
        ldr     x16, [sp,#104]
        ldr     x17, [sp,#112]
        add     x18, x16, x17
        str     x18, [sp,#120]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#128]
        mov     x16, #4
        str     x16, [sp,#2448]
        ldr     x16, [sp,#2448]
        ldr     x17, [sp,#40]
        add     x18, x16, x17
        str     x18, [sp,#136]
        adrp     x16, a4
        add     x16, x16, #:lo12:a4
        str     x16, [sp,#2456]
        ldr     x16, [x16]
        str     x16, [sp,#144]
        ldr     x16, [sp,#136]
        ldr     x17, [sp,#144]
        add     x18, x16, x17
        str     x18, [sp,#152]
        ldr     x16, [sp,#152]
        mov     x17, x16
        str     x17, [sp,#160]
        mov     x16, #1
        str     x16, [sp,#2464]
        ldr     x16, [sp,#2464]
        ldr     x17, [sp,#64]
        add     x18, x16, x17
        str     x18, [sp,#168]
        adrp     x16, a5
        add     x16, x16, #:lo12:a5
        str     x16, [sp,#2472]
        ldr     x16, [x16]
        str     x16, [sp,#176]
        ldr     x16, [sp,#168]
        ldr     x17, [sp,#176]
        add     x18, x16, x17
        str     x18, [sp,#184]
        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp,#192]
        mov     x16, #2
        str     x16, [sp,#2480]
        ldr     x16, [sp,#2480]
        ldr     x17, [sp,#96]
        add     x18, x16, x17
        str     x18, [sp,#200]
        adrp     x16, a6
        add     x16, x16, #:lo12:a6
        str     x16, [sp,#2488]
        ldr     x16, [x16]
        str     x16, [sp,#208]
        ldr     x16, [sp,#200]
        ldr     x17, [sp,#208]
        add     x18, x16, x17
        str     x18, [sp,#216]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#224]
        mov     x16, #3
        str     x16, [sp,#2496]
        ldr     x16, [sp,#2496]
        ldr     x17, [sp,#128]
        add     x18, x16, x17
        str     x18, [sp,#232]
        adrp     x16, a7
        add     x16, x16, #:lo12:a7
        str     x16, [sp,#2504]
        ldr     x16, [x16]
        str     x16, [sp,#240]
        ldr     x16, [sp,#232]
        ldr     x17, [sp,#240]
        add     x18, x16, x17
        str     x18, [sp,#248]
        ldr     x16, [sp,#248]
        mov     x17, x16
        str     x17, [sp,#256]
        mov     x16, #4
        str     x16, [sp,#2512]
        ldr     x16, [sp,#2512]
        ldr     x17, [sp,#160]
        add     x18, x16, x17
        str     x18, [sp,#264]
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        str     x16, [sp,#2520]
        ldr     x16, [x16]
        str     x16, [sp,#272]
        ldr     x16, [sp,#264]
        ldr     x17, [sp,#272]
        add     x18, x16, x17
        str     x18, [sp,#280]
        ldr     x16, [sp,#280]
        mov     x17, x16
        str     x17, [sp,#288]
        mov     x16, #1
        str     x16, [sp,#2528]
        ldr     x16, [sp,#2528]
        ldr     x17, [sp,#192]
        add     x18, x16, x17
        str     x18, [sp,#296]
        adrp     x16, a9
        add     x16, x16, #:lo12:a9
        str     x16, [sp,#2536]
        ldr     x16, [x16]
        str     x16, [sp,#304]
        ldr     x16, [sp,#296]
        ldr     x17, [sp,#304]
        add     x18, x16, x17
        str     x18, [sp,#312]
        ldr     x16, [sp,#312]
        mov     x17, x16
        str     x17, [sp,#320]
        mov     x16, #2
        str     x16, [sp,#2544]
        ldr     x16, [sp,#2544]
        ldr     x17, [sp,#224]
        add     x18, x16, x17
        str     x18, [sp,#328]
        adrp     x16, a10
        add     x16, x16, #:lo12:a10
        str     x16, [sp,#2552]
        ldr     x16, [x16]
        str     x16, [sp,#336]
        ldr     x16, [sp,#328]
        ldr     x17, [sp,#336]
        add     x18, x16, x17
        str     x18, [sp,#344]
        ldr     x16, [sp,#344]
        mov     x17, x16
        str     x17, [sp,#352]
        mov     x16, #3
        str     x16, [sp,#2560]
        ldr     x16, [sp,#2560]
        ldr     x17, [sp,#256]
        add     x18, x16, x17
        str     x18, [sp,#360]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        str     x16, [sp,#2568]
        ldr     x16, [x16]
        str     x16, [sp,#368]
        ldr     x16, [sp,#360]
        ldr     x17, [sp,#368]
        add     x18, x16, x17
        str     x18, [sp,#376]
        ldr     x16, [sp,#376]
        mov     x17, x16
        str     x17, [sp,#384]
        mov     x16, #4
        str     x16, [sp,#2576]
        ldr     x16, [sp,#2576]
        ldr     x17, [sp,#288]
        add     x18, x16, x17
        str     x18, [sp,#392]
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        str     x16, [sp,#2584]
        ldr     x16, [x16]
        str     x16, [sp,#400]
        ldr     x16, [sp,#392]
        ldr     x17, [sp,#400]
        add     x18, x16, x17
        str     x18, [sp,#408]
        ldr     x16, [sp,#408]
        mov     x17, x16
        str     x17, [sp,#416]
        mov     x16, #1
        str     x16, [sp,#2592]
        ldr     x16, [sp,#2592]
        ldr     x17, [sp,#320]
        add     x18, x16, x17
        str     x18, [sp,#424]
        adrp     x16, a13
        add     x16, x16, #:lo12:a13
        str     x16, [sp,#2600]
        ldr     x16, [x16]
        str     x16, [sp,#432]
        ldr     x16, [sp,#424]
        ldr     x17, [sp,#432]
        add     x18, x16, x17
        str     x18, [sp,#440]
        ldr     x16, [sp,#440]
        mov     x17, x16
        str     x17, [sp,#448]
        mov     x16, #2
        str     x16, [sp,#2608]
        ldr     x16, [sp,#2608]
        ldr     x17, [sp,#352]
        add     x18, x16, x17
        str     x18, [sp,#456]
        adrp     x16, a14
        add     x16, x16, #:lo12:a14
        str     x16, [sp,#2616]
        ldr     x16, [x16]
        str     x16, [sp,#464]
        ldr     x16, [sp,#456]
        ldr     x17, [sp,#464]
        add     x18, x16, x17
        str     x18, [sp,#472]
        ldr     x16, [sp,#472]
        mov     x17, x16
        str     x17, [sp,#480]
        mov     x16, #3
        str     x16, [sp,#2624]
        ldr     x16, [sp,#2624]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#488]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        str     x16, [sp,#2632]
        ldr     x16, [x16]
        str     x16, [sp,#496]
        ldr     x16, [sp,#488]
        ldr     x17, [sp,#496]
        add     x18, x16, x17
        str     x18, [sp,#504]
        ldr     x16, [sp,#504]
        mov     x17, x16
        str     x17, [sp,#512]
        mov     x16, #4
        str     x16, [sp,#2640]
        ldr     x16, [sp,#2640]
        ldr     x17, [sp,#416]
        add     x18, x16, x17
        str     x18, [sp,#520]
        adrp     x16, a16
        add     x16, x16, #:lo12:a16
        str     x16, [sp,#2648]
        ldr     x16, [x16]
        str     x16, [sp,#528]
        ldr     x16, [sp,#520]
        ldr     x17, [sp,#528]
        add     x18, x16, x17
        str     x18, [sp,#536]
        ldr     x16, [sp,#536]
        mov     x17, x16
        str     x17, [sp,#544]
        mov     x16, #1
        str     x16, [sp,#2656]
        ldr     x16, [sp,#2656]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#552]
        adrp     x16, a17
        add     x16, x16, #:lo12:a17
        str     x16, [sp,#2664]
        ldr     x16, [x16]
        str     x16, [sp,#560]
        ldr     x16, [sp,#552]
        ldr     x17, [sp,#560]
        add     x18, x16, x17
        str     x18, [sp,#568]
        ldr     x16, [sp,#568]
        mov     x17, x16
        str     x17, [sp,#576]
        mov     x16, #2
        str     x16, [sp,#2672]
        ldr     x16, [sp,#2672]
        ldr     x17, [sp,#480]
        add     x18, x16, x17
        str     x18, [sp,#584]
        adrp     x16, a18
        add     x16, x16, #:lo12:a18
        str     x16, [sp,#2680]
        ldr     x16, [x16]
        str     x16, [sp,#592]
        ldr     x16, [sp,#584]
        ldr     x17, [sp,#592]
        add     x18, x16, x17
        str     x18, [sp,#600]
        ldr     x16, [sp,#600]
        mov     x17, x16
        str     x17, [sp,#608]
        mov     x16, #3
        str     x16, [sp,#2688]
        ldr     x16, [sp,#2688]
        ldr     x17, [sp,#512]
        add     x18, x16, x17
        str     x18, [sp,#616]
        adrp     x16, a19
        add     x16, x16, #:lo12:a19
        str     x16, [sp,#2696]
        ldr     x16, [x16]
        str     x16, [sp,#624]
        ldr     x16, [sp,#616]
        ldr     x17, [sp,#624]
        add     x18, x16, x17
        str     x18, [sp,#632]
        ldr     x16, [sp,#632]
        mov     x17, x16
        str     x17, [sp,#640]
        mov     x16, #4
        str     x16, [sp,#2704]
        ldr     x16, [sp,#2704]
        ldr     x17, [sp,#544]
        add     x18, x16, x17
        str     x18, [sp,#648]
        adrp     x16, a20
        add     x16, x16, #:lo12:a20
        str     x16, [sp,#2712]
        ldr     x16, [x16]
        str     x16, [sp,#656]
        ldr     x16, [sp,#648]
        ldr     x17, [sp,#656]
        add     x18, x16, x17
        str     x18, [sp,#664]
        ldr     x16, [sp,#664]
        mov     x17, x16
        str     x17, [sp,#672]
        mov     x16, #1
        str     x16, [sp,#2720]
        ldr     x16, [sp,#2720]
        ldr     x17, [sp,#576]
        add     x18, x16, x17
        str     x18, [sp,#680]
        adrp     x16, a21
        add     x16, x16, #:lo12:a21
        str     x16, [sp,#2728]
        ldr     x16, [x16]
        str     x16, [sp,#688]
        ldr     x16, [sp,#680]
        ldr     x17, [sp,#688]
        add     x18, x16, x17
        str     x18, [sp,#696]
        ldr     x16, [sp,#696]
        mov     x17, x16
        str     x17, [sp,#704]
        mov     x16, #2
        str     x16, [sp,#2736]
        ldr     x16, [sp,#2736]
        ldr     x17, [sp,#608]
        add     x18, x16, x17
        str     x18, [sp,#712]
        adrp     x16, a22
        add     x16, x16, #:lo12:a22
        str     x16, [sp,#2744]
        ldr     x16, [x16]
        str     x16, [sp,#720]
        ldr     x16, [sp,#712]
        ldr     x17, [sp,#720]
        add     x18, x16, x17
        str     x18, [sp,#728]
        ldr     x16, [sp,#728]
        mov     x17, x16
        str     x17, [sp,#736]
        mov     x16, #3
        str     x16, [sp,#2752]
        ldr     x16, [sp,#2752]
        ldr     x17, [sp,#640]
        add     x18, x16, x17
        str     x18, [sp,#744]
        adrp     x16, a23
        add     x16, x16, #:lo12:a23
        str     x16, [sp,#2760]
        ldr     x16, [x16]
        str     x16, [sp,#752]
        ldr     x16, [sp,#744]
        ldr     x17, [sp,#752]
        add     x18, x16, x17
        str     x18, [sp,#760]
        ldr     x16, [sp,#760]
        mov     x17, x16
        str     x17, [sp,#768]
        mov     x16, #4
        str     x16, [sp,#2768]
        ldr     x16, [sp,#2768]
        ldr     x17, [sp,#672]
        add     x18, x16, x17
        str     x18, [sp,#776]
        adrp     x16, a24
        add     x16, x16, #:lo12:a24
        str     x16, [sp,#2776]
        ldr     x16, [x16]
        str     x16, [sp,#784]
        ldr     x16, [sp,#776]
        ldr     x17, [sp,#784]
        add     x18, x16, x17
        str     x18, [sp,#792]
        ldr     x16, [sp,#792]
        mov     x17, x16
        str     x17, [sp,#800]
        mov     x16, #1
        str     x16, [sp,#2784]
        ldr     x16, [sp,#2784]
        ldr     x17, [sp,#704]
        add     x18, x16, x17
        str     x18, [sp,#808]
        adrp     x16, a25
        add     x16, x16, #:lo12:a25
        str     x16, [sp,#2792]
        ldr     x16, [x16]
        str     x16, [sp,#816]
        ldr     x16, [sp,#808]
        ldr     x17, [sp,#816]
        add     x18, x16, x17
        str     x18, [sp,#824]
        ldr     x16, [sp,#824]
        mov     x17, x16
        str     x17, [sp,#832]
        mov     x16, #2
        str     x16, [sp,#2800]
        ldr     x16, [sp,#2800]
        ldr     x17, [sp,#736]
        add     x18, x16, x17
        str     x18, [sp,#840]
        adrp     x16, a26
        add     x16, x16, #:lo12:a26
        str     x16, [sp,#2808]
        ldr     x16, [x16]
        str     x16, [sp,#848]
        ldr     x16, [sp,#840]
        ldr     x17, [sp,#848]
        add     x18, x16, x17
        str     x18, [sp,#856]
        ldr     x16, [sp,#856]
        mov     x17, x16
        str     x17, [sp,#864]
        mov     x16, #3
        str     x16, [sp,#2816]
        ldr     x16, [sp,#2816]
        ldr     x17, [sp,#768]
        add     x18, x16, x17
        str     x18, [sp,#872]
        adrp     x16, a27
        add     x16, x16, #:lo12:a27
        str     x16, [sp,#2824]
        ldr     x16, [x16]
        str     x16, [sp,#880]
        ldr     x16, [sp,#872]
        ldr     x17, [sp,#880]
        add     x18, x16, x17
        str     x18, [sp,#888]
        ldr     x16, [sp,#888]
        mov     x17, x16
        str     x17, [sp,#896]
        mov     x16, #4
        str     x16, [sp,#2832]
        ldr     x16, [sp,#2832]
        ldr     x17, [sp,#800]
        add     x18, x16, x17
        str     x18, [sp,#904]
        adrp     x16, a28
        add     x16, x16, #:lo12:a28
        str     x16, [sp,#2840]
        ldr     x16, [x16]
        str     x16, [sp,#912]
        ldr     x16, [sp,#904]
        ldr     x17, [sp,#912]
        add     x18, x16, x17
        str     x18, [sp,#920]
        ldr     x16, [sp,#920]
        mov     x17, x16
        str     x17, [sp,#928]
        mov     x16, #1
        str     x16, [sp,#2848]
        ldr     x16, [sp,#2848]
        ldr     x17, [sp,#832]
        add     x18, x16, x17
        str     x18, [sp,#936]
        adrp     x16, a29
        add     x16, x16, #:lo12:a29
        str     x16, [sp,#2856]
        ldr     x16, [x16]
        str     x16, [sp,#944]
        ldr     x16, [sp,#936]
        ldr     x17, [sp,#944]
        add     x18, x16, x17
        str     x18, [sp,#952]
        mov     x16, #2
        str     x16, [sp,#2864]
        ldr     x16, [sp,#2864]
        ldr     x17, [sp,#864]
        add     x18, x16, x17
        str     x18, [sp,#960]
        adrp     x16, a30
        add     x16, x16, #:lo12:a30
        str     x16, [sp,#2872]
        ldr     x16, [x16]
        str     x16, [sp,#968]
        ldr     x16, [sp,#960]
        ldr     x17, [sp,#968]
        add     x18, x16, x17
        str     x18, [sp,#976]
        mov     x16, #3
        str     x16, [sp,#2880]
        ldr     x16, [sp,#2880]
        ldr     x17, [sp,#896]
        add     x18, x16, x17
        str     x18, [sp,#984]
        adrp     x16, a31
        add     x16, x16, #:lo12:a31
        str     x16, [sp,#2888]
        ldr     x16, [x16]
        str     x16, [sp,#992]
        ldr     x16, [sp,#984]
        ldr     x17, [sp,#992]
        add     x18, x16, x17
        str     x18, [sp,#1000]
        mov     x16, #4
        str     x16, [sp,#2896]
        ldr     x16, [sp,#2896]
        ldr     x17, [sp,#928]
        add     x18, x16, x17
        str     x18, [sp,#1008]
        adrp     x16, a32
        add     x16, x16, #:lo12:a32
        str     x16, [sp,#2904]
        ldr     x16, [x16]
        str     x16, [sp,#1016]
        ldr     x16, [sp,#1008]
        ldr     x17, [sp,#1016]
        add     x18, x16, x17
        str     x18, [sp,#1024]
        ldr     x16, [sp]
        ldr     x17, [sp,#8]
        sub     x18, x16, x17
        str     x18, [sp,#1032]
        mov     x16, #10
        str     x16, [sp,#2912]
        ldr     x16, [sp,#1032]
        ldr     x17, [sp,#2912]
        add     x18, x16, x17
        str     x18, [sp,#1040]
        ldr     x16, [sp,#1040]
        mov     x17, x16
        str     x17, [sp,#1048]
        mov     x16, #1
        str     x16, [sp,#2920]
        ldr     x16, [sp,#2920]
        ldr     x17, [sp,#832]
        add     x18, x16, x17
        str     x18, [sp,#1056]
        adrp     x16, a29
        add     x16, x16, #:lo12:a29
        str     x16, [sp,#2928]
        ldr     x16, [x16]
        str     x16, [sp,#1064]
        ldr     x16, [sp,#1056]
        ldr     x17, [sp,#1064]
        add     x18, x16, x17
        str     x18, [sp,#1072]
        ldr     x16, [sp,#1072]
        mov     x17, x16
        str     x17, [sp,#1080]
        mov     x16, #2
        str     x16, [sp,#2936]
        ldr     x16, [sp,#2936]
        ldr     x17, [sp,#864]
        add     x18, x16, x17
        str     x18, [sp,#1088]
        adrp     x16, a30
        add     x16, x16, #:lo12:a30
        str     x16, [sp,#2944]
        ldr     x16, [x16]
        str     x16, [sp,#1096]
        ldr     x16, [sp,#1088]
        ldr     x17, [sp,#1096]
        add     x18, x16, x17
        str     x18, [sp,#1104]
        ldr     x16, [sp,#1104]
        mov     x17, x16
        str     x17, [sp,#1112]
        mov     x16, #3
        str     x16, [sp,#2952]
        ldr     x16, [sp,#2952]
        ldr     x17, [sp,#896]
        add     x18, x16, x17
        str     x18, [sp,#1120]
        adrp     x16, a31
        add     x16, x16, #:lo12:a31
        str     x16, [sp,#2960]
        ldr     x16, [x16]
        str     x16, [sp,#1128]
        ldr     x16, [sp,#1120]
        ldr     x17, [sp,#1128]
        add     x18, x16, x17
        str     x18, [sp,#1136]
        ldr     x16, [sp,#1136]
        mov     x17, x16
        str     x17, [sp,#1144]
        mov     x16, #4
        str     x16, [sp,#2968]
        ldr     x16, [sp,#2968]
        ldr     x17, [sp,#928]
        add     x18, x16, x17
        str     x18, [sp,#1152]
        adrp     x16, a32
        add     x16, x16, #:lo12:a32
        str     x16, [sp,#2976]
        ldr     x16, [x16]
        str     x16, [sp,#1160]
        ldr     x16, [sp,#1152]
        ldr     x17, [sp,#1160]
        add     x18, x16, x17
        str     x18, [sp,#1168]
        ldr     x16, [sp,#1168]
        mov     x17, x16
        str     x17, [sp,#1176]
        mov     x16, #1
        str     x16, [sp,#2984]
        ldr     x16, [sp,#2984]
        ldr     x17, [sp,#704]
        add     x18, x16, x17
        str     x18, [sp,#1184]
        adrp     x16, a25
        add     x16, x16, #:lo12:a25
        str     x16, [sp,#2992]
        ldr     x16, [x16]
        str     x16, [sp,#1192]
        ldr     x16, [sp,#1184]
        ldr     x17, [sp,#1192]
        add     x18, x16, x17
        str     x18, [sp,#1200]
        ldr     x16, [sp,#1200]
        mov     x17, x16
        str     x17, [sp,#1208]
        mov     x16, #2
        str     x16, [sp,#3000]
        ldr     x16, [sp,#3000]
        ldr     x17, [sp,#736]
        add     x18, x16, x17
        str     x18, [sp,#1216]
        adrp     x16, a26
        add     x16, x16, #:lo12:a26
        str     x16, [sp,#3008]
        ldr     x16, [x16]
        str     x16, [sp,#1224]
        ldr     x16, [sp,#1216]
        ldr     x17, [sp,#1224]
        add     x18, x16, x17
        str     x18, [sp,#1232]
        ldr     x16, [sp,#1232]
        mov     x17, x16
        str     x17, [sp,#1240]
        mov     x16, #3
        str     x16, [sp,#3016]
        ldr     x16, [sp,#3016]
        ldr     x17, [sp,#768]
        add     x18, x16, x17
        str     x18, [sp,#1248]
        adrp     x16, a27
        add     x16, x16, #:lo12:a27
        str     x16, [sp,#3024]
        ldr     x16, [x16]
        str     x16, [sp,#1256]
        ldr     x16, [sp,#1248]
        ldr     x17, [sp,#1256]
        add     x18, x16, x17
        str     x18, [sp,#1264]
        ldr     x16, [sp,#1264]
        mov     x17, x16
        str     x17, [sp,#1272]
        mov     x16, #4
        str     x16, [sp,#3032]
        ldr     x16, [sp,#3032]
        ldr     x17, [sp,#800]
        add     x18, x16, x17
        str     x18, [sp,#1280]
        adrp     x16, a28
        add     x16, x16, #:lo12:a28
        str     x16, [sp,#3040]
        ldr     x16, [x16]
        str     x16, [sp,#1288]
        ldr     x16, [sp,#1280]
        ldr     x17, [sp,#1288]
        add     x18, x16, x17
        str     x18, [sp,#1296]
        ldr     x16, [sp,#1296]
        mov     x17, x16
        str     x17, [sp,#1304]
        mov     x16, #1
        str     x16, [sp,#3048]
        ldr     x16, [sp,#3048]
        ldr     x17, [sp,#576]
        add     x18, x16, x17
        str     x18, [sp,#1312]
        adrp     x16, a21
        add     x16, x16, #:lo12:a21
        str     x16, [sp,#3056]
        ldr     x16, [x16]
        str     x16, [sp,#1320]
        ldr     x16, [sp,#1312]
        ldr     x17, [sp,#1320]
        add     x18, x16, x17
        str     x18, [sp,#1328]
        ldr     x16, [sp,#1328]
        mov     x17, x16
        str     x17, [sp,#1336]
        mov     x16, #2
        str     x16, [sp,#3064]
        ldr     x16, [sp,#3064]
        ldr     x17, [sp,#608]
        add     x18, x16, x17
        str     x18, [sp,#1344]
        adrp     x16, a22
        add     x16, x16, #:lo12:a22
        str     x16, [sp,#3072]
        ldr     x16, [x16]
        str     x16, [sp,#1352]
        ldr     x16, [sp,#1344]
        ldr     x17, [sp,#1352]
        add     x18, x16, x17
        str     x18, [sp,#1360]
        ldr     x16, [sp,#1360]
        mov     x17, x16
        str     x17, [sp,#1368]
        mov     x16, #3
        str     x16, [sp,#3080]
        ldr     x16, [sp,#3080]
        ldr     x17, [sp,#640]
        add     x18, x16, x17
        str     x18, [sp,#1376]
        adrp     x16, a23
        add     x16, x16, #:lo12:a23
        str     x16, [sp,#3088]
        ldr     x16, [x16]
        str     x16, [sp,#1384]
        ldr     x16, [sp,#1376]
        ldr     x17, [sp,#1384]
        add     x18, x16, x17
        str     x18, [sp,#1392]
        ldr     x16, [sp,#1392]
        mov     x17, x16
        str     x17, [sp,#1400]
        mov     x16, #4
        str     x16, [sp,#3096]
        ldr     x16, [sp,#3096]
        ldr     x17, [sp,#672]
        add     x18, x16, x17
        str     x18, [sp,#1408]
        adrp     x16, a24
        add     x16, x16, #:lo12:a24
        str     x16, [sp,#3104]
        ldr     x16, [x16]
        str     x16, [sp,#1416]
        ldr     x16, [sp,#1408]
        ldr     x17, [sp,#1416]
        add     x18, x16, x17
        str     x18, [sp,#1424]
        ldr     x16, [sp,#1424]
        mov     x17, x16
        str     x17, [sp,#1432]
        mov     x16, #1
        str     x16, [sp,#3112]
        ldr     x16, [sp,#3112]
        ldr     x17, [sp,#448]
        add     x18, x16, x17
        str     x18, [sp,#1440]
        adrp     x16, a17
        add     x16, x16, #:lo12:a17
        str     x16, [sp,#3120]
        ldr     x16, [x16]
        str     x16, [sp,#1448]
        ldr     x16, [sp,#1440]
        ldr     x17, [sp,#1448]
        add     x18, x16, x17
        str     x18, [sp,#1456]
        ldr     x16, [sp,#1456]
        mov     x17, x16
        str     x17, [sp,#1464]
        mov     x16, #2
        str     x16, [sp,#3128]
        ldr     x16, [sp,#3128]
        ldr     x17, [sp,#480]
        add     x18, x16, x17
        str     x18, [sp,#1472]
        adrp     x16, a18
        add     x16, x16, #:lo12:a18
        str     x16, [sp,#3136]
        ldr     x16, [x16]
        str     x16, [sp,#1480]
        ldr     x16, [sp,#1472]
        ldr     x17, [sp,#1480]
        add     x18, x16, x17
        str     x18, [sp,#1488]
        ldr     x16, [sp,#1488]
        mov     x17, x16
        str     x17, [sp,#1496]
        mov     x16, #3
        str     x16, [sp,#3144]
        ldr     x16, [sp,#3144]
        ldr     x17, [sp,#512]
        add     x18, x16, x17
        str     x18, [sp,#1504]
        adrp     x16, a19
        add     x16, x16, #:lo12:a19
        str     x16, [sp,#3152]
        ldr     x16, [x16]
        str     x16, [sp,#1512]
        ldr     x16, [sp,#1504]
        ldr     x17, [sp,#1512]
        add     x18, x16, x17
        str     x18, [sp,#1520]
        ldr     x16, [sp,#1520]
        mov     x17, x16
        str     x17, [sp,#1528]
        mov     x16, #4
        str     x16, [sp,#3160]
        ldr     x16, [sp,#3160]
        ldr     x17, [sp,#544]
        add     x18, x16, x17
        str     x18, [sp,#1536]
        adrp     x16, a20
        add     x16, x16, #:lo12:a20
        str     x16, [sp,#3168]
        ldr     x16, [x16]
        str     x16, [sp,#1544]
        ldr     x16, [sp,#1536]
        ldr     x17, [sp,#1544]
        add     x18, x16, x17
        str     x18, [sp,#1552]
        ldr     x16, [sp,#1552]
        mov     x17, x16
        str     x17, [sp,#1560]
        mov     x16, #1
        str     x16, [sp,#3176]
        ldr     x16, [sp,#3176]
        ldr     x17, [sp,#320]
        add     x18, x16, x17
        str     x18, [sp,#1568]
        adrp     x16, a13
        add     x16, x16, #:lo12:a13
        str     x16, [sp,#3184]
        ldr     x16, [x16]
        str     x16, [sp,#1576]
        ldr     x16, [sp,#1568]
        ldr     x17, [sp,#1576]
        add     x18, x16, x17
        str     x18, [sp,#1584]
        ldr     x16, [sp,#1584]
        mov     x17, x16
        str     x17, [sp,#1592]
        mov     x16, #2
        str     x16, [sp,#3192]
        ldr     x16, [sp,#3192]
        ldr     x17, [sp,#352]
        add     x18, x16, x17
        str     x18, [sp,#1600]
        adrp     x16, a14
        add     x16, x16, #:lo12:a14
        str     x16, [sp,#3200]
        ldr     x16, [x16]
        str     x16, [sp,#1608]
        ldr     x16, [sp,#1600]
        ldr     x17, [sp,#1608]
        add     x18, x16, x17
        str     x18, [sp,#1616]
        ldr     x16, [sp,#1616]
        mov     x17, x16
        str     x17, [sp,#1624]
        mov     x16, #3
        str     x16, [sp,#3208]
        ldr     x16, [sp,#3208]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#1632]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        str     x16, [sp,#3216]
        ldr     x16, [x16]
        str     x16, [sp,#1640]
        ldr     x16, [sp,#1632]
        ldr     x17, [sp,#1640]
        add     x18, x16, x17
        str     x18, [sp,#1648]
        ldr     x16, [sp,#1648]
        mov     x17, x16
        str     x17, [sp,#1656]
        mov     x16, #4
        str     x16, [sp,#3224]
        ldr     x16, [sp,#3224]
        ldr     x17, [sp,#416]
        add     x18, x16, x17
        str     x18, [sp,#1664]
        adrp     x16, a16
        add     x16, x16, #:lo12:a16
        str     x16, [sp,#3232]
        ldr     x16, [x16]
        str     x16, [sp,#1672]
        ldr     x16, [sp,#1664]
        ldr     x17, [sp,#1672]
        add     x18, x16, x17
        str     x18, [sp,#1680]
        ldr     x16, [sp,#1680]
        mov     x17, x16
        str     x17, [sp,#1688]
        mov     x16, #1
        str     x16, [sp,#3240]
        ldr     x16, [sp,#3240]
        ldr     x17, [sp,#192]
        add     x18, x16, x17
        str     x18, [sp,#1696]
        adrp     x16, a9
        add     x16, x16, #:lo12:a9
        str     x16, [sp,#3248]
        ldr     x16, [x16]
        str     x16, [sp,#1704]
        ldr     x16, [sp,#1696]
        ldr     x17, [sp,#1704]
        add     x18, x16, x17
        str     x18, [sp,#1712]
        ldr     x16, [sp,#1712]
        mov     x17, x16
        str     x17, [sp,#1720]
        mov     x16, #2
        str     x16, [sp,#3256]
        ldr     x16, [sp,#3256]
        ldr     x17, [sp,#224]
        add     x18, x16, x17
        str     x18, [sp,#1728]
        adrp     x16, a10
        add     x16, x16, #:lo12:a10
        str     x16, [sp,#3264]
        ldr     x16, [x16]
        str     x16, [sp,#1736]
        ldr     x16, [sp,#1728]
        ldr     x17, [sp,#1736]
        add     x18, x16, x17
        str     x18, [sp,#1744]
        ldr     x16, [sp,#1744]
        mov     x17, x16
        str     x17, [sp,#1752]
        mov     x16, #3
        str     x16, [sp,#3272]
        ldr     x16, [sp,#3272]
        ldr     x17, [sp,#256]
        add     x18, x16, x17
        str     x18, [sp,#1760]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        str     x16, [sp,#3280]
        ldr     x16, [x16]
        str     x16, [sp,#1768]
        ldr     x16, [sp,#1760]
        ldr     x17, [sp,#1768]
        add     x18, x16, x17
        str     x18, [sp,#1776]
        ldr     x16, [sp,#1776]
        mov     x17, x16
        str     x17, [sp,#1784]
        mov     x16, #4
        str     x16, [sp,#3288]
        ldr     x16, [sp,#3288]
        ldr     x17, [sp,#288]
        add     x18, x16, x17
        str     x18, [sp,#1792]
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        str     x16, [sp,#3296]
        ldr     x16, [x16]
        str     x16, [sp,#1800]
        ldr     x16, [sp,#1792]
        ldr     x17, [sp,#1800]
        add     x18, x16, x17
        str     x18, [sp,#1808]
        ldr     x16, [sp,#1808]
        mov     x17, x16
        str     x17, [sp,#1816]
        mov     x16, #1
        str     x16, [sp,#3304]
        ldr     x16, [sp,#3304]
        ldr     x17, [sp,#64]
        add     x18, x16, x17
        str     x18, [sp,#1824]
        adrp     x16, a5
        add     x16, x16, #:lo12:a5
        str     x16, [sp,#3312]
        ldr     x16, [x16]
        str     x16, [sp,#1832]
        ldr     x16, [sp,#1824]
        ldr     x17, [sp,#1832]
        add     x18, x16, x17
        str     x18, [sp,#1840]
        ldr     x16, [sp,#1840]
        mov     x17, x16
        str     x17, [sp,#1848]
        mov     x16, #2
        str     x16, [sp,#3320]
        ldr     x16, [sp,#3320]
        ldr     x17, [sp,#96]
        add     x18, x16, x17
        str     x18, [sp,#1856]
        adrp     x16, a6
        add     x16, x16, #:lo12:a6
        str     x16, [sp,#3328]
        ldr     x16, [x16]
        str     x16, [sp,#1864]
        ldr     x16, [sp,#1856]
        ldr     x17, [sp,#1864]
        add     x18, x16, x17
        str     x18, [sp,#1872]
        ldr     x16, [sp,#1872]
        mov     x17, x16
        str     x17, [sp,#1880]
        mov     x16, #3
        str     x16, [sp,#3336]
        ldr     x16, [sp,#3336]
        ldr     x17, [sp,#128]
        add     x18, x16, x17
        str     x18, [sp,#1888]
        adrp     x16, a7
        add     x16, x16, #:lo12:a7
        str     x16, [sp,#3344]
        ldr     x16, [x16]
        str     x16, [sp,#1896]
        ldr     x16, [sp,#1888]
        ldr     x17, [sp,#1896]
        add     x18, x16, x17
        str     x18, [sp,#1904]
        ldr     x16, [sp,#1904]
        mov     x17, x16
        str     x17, [sp,#1912]
        mov     x16, #4
        str     x16, [sp,#3352]
        ldr     x16, [sp,#3352]
        ldr     x17, [sp,#160]
        add     x18, x16, x17
        str     x18, [sp,#1920]
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        str     x16, [sp,#3360]
        ldr     x16, [x16]
        str     x16, [sp,#1928]
        ldr     x16, [sp,#1920]
        ldr     x17, [sp,#1928]
        add     x18, x16, x17
        str     x18, [sp,#1936]
        ldr     x16, [sp,#1936]
        mov     x17, x16
        str     x17, [sp,#1944]
        mov     x16, #1
        str     x16, [sp,#3368]
        ldr     x16, [sp,#3368]
        ldr     x17, [sp,#16]
        add     x18, x16, x17
        str     x18, [sp,#1952]
        adrp     x16, a1
        add     x16, x16, #:lo12:a1
        str     x16, [sp,#3376]
        ldr     x16, [x16]
        str     x16, [sp,#1960]
        ldr     x16, [sp,#1952]
        ldr     x17, [sp,#1960]
        add     x18, x16, x17
        str     x18, [sp,#1968]
        mov     x16, #2
        str     x16, [sp,#3384]
        ldr     x16, [sp,#3384]
        ldr     x17, [sp,#24]
        add     x18, x16, x17
        str     x18, [sp,#1976]
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        str     x16, [sp,#3392]
        ldr     x16, [x16]
        str     x16, [sp,#1984]
        ldr     x16, [sp,#1976]
        ldr     x17, [sp,#1984]
        add     x18, x16, x17
        str     x18, [sp,#1992]
        mov     x16, #3
        str     x16, [sp,#3400]
        ldr     x16, [sp,#3400]
        ldr     x17, [sp,#32]
        add     x18, x16, x17
        str     x18, [sp,#2000]
        adrp     x16, a3
        add     x16, x16, #:lo12:a3
        str     x16, [sp,#3408]
        ldr     x16, [x16]
        str     x16, [sp,#2008]
        ldr     x16, [sp,#2000]
        ldr     x17, [sp,#2008]
        add     x18, x16, x17
        str     x18, [sp,#2016]
        mov     x16, #4
        str     x16, [sp,#3416]
        ldr     x16, [sp,#3416]
        ldr     x17, [sp,#40]
        add     x18, x16, x17
        str     x18, [sp,#2024]
        adrp     x16, a4
        add     x16, x16, #:lo12:a4
        str     x16, [sp,#3424]
        ldr     x16, [x16]
        str     x16, [sp,#2032]
        ldr     x16, [sp,#2024]
        ldr     x17, [sp,#2032]
        add     x18, x16, x17
        str     x18, [sp,#2040]
        mov     x16, #1
        str     x16, [sp,#3432]
        ldr     x16, [sp,#3432]
        ldr     x17, [sp,#16]
        add     x18, x16, x17
        str     x18, [sp,#2048]
        adrp     x16, a1
        add     x16, x16, #:lo12:a1
        str     x16, [sp,#3440]
        ldr     x16, [x16]
        str     x16, [sp,#2056]
        ldr     x16, [sp,#2048]
        ldr     x17, [sp,#2056]
        add     x18, x16, x17
        str     x18, [sp,#2064]
        ldr     x16, [sp,#2064]
        mov     x17, x16
        str     x17, [sp,#2072]
        mov     x16, #2
        str     x16, [sp,#3448]
        ldr     x16, [sp,#3448]
        ldr     x17, [sp,#24]
        add     x18, x16, x17
        str     x18, [sp,#2080]
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        str     x16, [sp,#3456]
        ldr     x16, [x16]
        str     x16, [sp,#2088]
        ldr     x16, [sp,#2080]
        ldr     x17, [sp,#2088]
        add     x18, x16, x17
        str     x18, [sp,#2096]
        ldr     x16, [sp,#2096]
        mov     x17, x16
        str     x17, [sp,#2104]
        mov     x16, #3
        str     x16, [sp,#3464]
        ldr     x16, [sp,#3464]
        ldr     x17, [sp,#32]
        add     x18, x16, x17
        str     x18, [sp,#2112]
        adrp     x16, a3
        add     x16, x16, #:lo12:a3
        str     x16, [sp,#3472]
        ldr     x16, [x16]
        str     x16, [sp,#2120]
        ldr     x16, [sp,#2112]
        ldr     x17, [sp,#2120]
        add     x18, x16, x17
        str     x18, [sp,#2128]
        ldr     x16, [sp,#2128]
        mov     x17, x16
        str     x17, [sp,#2136]
        mov     x16, #4
        str     x16, [sp,#3480]
        ldr     x16, [sp,#3480]
        ldr     x17, [sp,#40]
        add     x18, x16, x17
        str     x18, [sp,#2144]
        adrp     x16, a4
        add     x16, x16, #:lo12:a4
        str     x16, [sp,#3488]
        ldr     x16, [x16]
        str     x16, [sp,#2152]
        ldr     x16, [sp,#2144]
        ldr     x17, [sp,#2152]
        add     x18, x16, x17
        str     x18, [sp,#2160]
        ldr     x16, [sp,#2160]
        mov     x17, x16
        str     x17, [sp,#2168]
        ldr     x16, [sp,#1048]
        ldr     x17, [sp,#16]
        add     x18, x16, x17
        str     x18, [sp,#2176]
        ldr     x16, [sp,#2176]
        ldr     x17, [sp,#24]
        add     x18, x16, x17
        str     x18, [sp,#2184]
        ldr     x16, [sp,#2184]
        ldr     x17, [sp,#32]
        add     x18, x16, x17
        str     x18, [sp,#2192]
        ldr     x16, [sp,#2192]
        ldr     x17, [sp,#40]
        add     x18, x16, x17
        str     x18, [sp,#2200]
        ldr     x16, [sp,#2200]
        ldr     x17, [sp,#2072]
        sub     x18, x16, x17
        str     x18, [sp,#2208]
        ldr     x16, [sp,#2208]
        ldr     x17, [sp,#2104]
        sub     x18, x16, x17
        str     x18, [sp,#2216]
        ldr     x16, [sp,#2216]
        ldr     x17, [sp,#2136]
        sub     x18, x16, x17
        str     x18, [sp,#2224]
        ldr     x16, [sp,#2224]
        ldr     x17, [sp,#2168]
        sub     x18, x16, x17
        str     x18, [sp,#2232]
        ldr     x16, [sp,#2232]
        ldr     x17, [sp,#1848]
        add     x18, x16, x17
        str     x18, [sp,#2240]
        ldr     x16, [sp,#2240]
        ldr     x17, [sp,#1880]
        add     x18, x16, x17
        str     x18, [sp,#2248]
        ldr     x16, [sp,#2248]
        ldr     x17, [sp,#1912]
        add     x18, x16, x17
        str     x18, [sp,#2256]
        ldr     x16, [sp,#2256]
        ldr     x17, [sp,#1944]
        add     x18, x16, x17
        str     x18, [sp,#2264]
        ldr     x16, [sp,#2264]
        ldr     x17, [sp,#1720]
        sub     x18, x16, x17
        str     x18, [sp,#2272]
        ldr     x16, [sp,#2272]
        ldr     x17, [sp,#1752]
        sub     x18, x16, x17
        str     x18, [sp,#2280]
        ldr     x16, [sp,#2280]
        ldr     x17, [sp,#1784]
        sub     x18, x16, x17
        str     x18, [sp,#2288]
        ldr     x16, [sp,#2288]
        ldr     x17, [sp,#1816]
        sub     x18, x16, x17
        str     x18, [sp,#2296]
        ldr     x16, [sp,#2296]
        ldr     x17, [sp,#1592]
        add     x18, x16, x17
        str     x18, [sp,#2304]
        ldr     x16, [sp,#2304]
        ldr     x17, [sp,#1624]
        add     x18, x16, x17
        str     x18, [sp,#2312]
        ldr     x16, [sp,#2312]
        ldr     x17, [sp,#1656]
        add     x18, x16, x17
        str     x18, [sp,#2320]
        ldr     x16, [sp,#2320]
        ldr     x17, [sp,#1688]
        add     x18, x16, x17
        str     x18, [sp,#2328]
        ldr     x16, [sp,#2328]
        ldr     x17, [sp,#1464]
        sub     x18, x16, x17
        str     x18, [sp,#2336]
        ldr     x16, [sp,#2336]
        ldr     x17, [sp,#1496]
        sub     x18, x16, x17
        str     x18, [sp,#2344]
        ldr     x16, [sp,#2344]
        ldr     x17, [sp,#1528]
        sub     x18, x16, x17
        str     x18, [sp,#2352]
        ldr     x16, [sp,#2352]
        ldr     x17, [sp,#1560]
        sub     x18, x16, x17
        str     x18, [sp,#2360]
        ldr     x16, [sp,#2360]
        ldr     x17, [sp,#1336]
        add     x18, x16, x17
        str     x18, [sp,#2368]
        ldr     x16, [sp,#2368]
        ldr     x17, [sp,#1368]
        add     x18, x16, x17
        str     x18, [sp,#2376]
        ldr     x16, [sp,#2376]
        ldr     x17, [sp,#1400]
        add     x18, x16, x17
        str     x18, [sp,#2384]
        ldr     x16, [sp,#2384]
        ldr     x17, [sp,#1432]
        add     x18, x16, x17
        str     x18, [sp,#2392]
        ldr     x16, [sp,#2392]
        ldr     x17, [sp,#1208]
        sub     x18, x16, x17
        str     x18, [sp,#2400]
        ldr     x16, [sp,#2400]
        ldr     x17, [sp,#1240]
        sub     x9, x16, x17
        ldr     x16, [sp,#1272]
        sub     x9, x9, x16
        ldr     x16, [sp,#1304]
        sub     x9, x9, x16
        ldr     x16, [sp,#1080]
        add     x9, x9, x16
        ldr     x16, [sp,#1112]
        add     x9, x9, x16
        ldr     x16, [sp,#1144]
        add     x9, x9, x16
        ldr     x16, [sp,#1176]
        add     x10, x9, x16
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a20
        add     x9, x9, #:lo12:a20
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        ldr     x9, [x9]
        sub     x10, x10, x9
        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        ldr     x9, [x9]
        add     x10, x10, x9
        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        ldr     x9, [x9]
        sub     x9, x10, x9
        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #87
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
        mov     x11, x9
        mov     x10, #2
        mov     x9, #9
        mul     x9, x10, x9
        add     x9, x11, x9
        mov     x9, x9
        mov     x0, x11
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x10, x9
        mov     x0, x10
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
        mov     x9, #93
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
