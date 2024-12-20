.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func1
.global func2
.global func3
.global func4
.global func5
.global func6
.global func7
.global main
func1:

func1:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        mov     x12, x11
        mov     x11, x10
        mov     x10, x9
        mov     x9, #0
        cmp     x10, x9
        b.eq     bb1
        b     bb2
bb1:

        mul     x9, x12, x11
        mov     x0, x9
        mov     sp, x29
        ret
bb2:

        sub     x9, x11, x10
        mov     x0, x12
        mov     x1, x9
        mov     x9, #0
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
func2:

func2:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x10, x0
        mov     x9, x1
        mov     x11, x10
        mov     x10, x9
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb4
        b     bb5
bb4:

        sdiv     x9, x11, x10
        mul     x9, x9, x10
        sub     x9, x11, x9
        mov     x0, x9
        mov     x9, #0
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
bb5:

        mov     x0, x11
        mov     sp, x29
        ret
func3:

func3:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x10, x0
        mov     x9, x1
        mov     x11, x10
        mov     x10, x9
        mov     x9, #0
        cmp     x10, x9
        b.eq     bb7
        b     bb8
bb7:

        mov     x9, #1
        add     x9, x11, x9
        mov     x0, x9
        mov     sp, x29
        ret
bb8:

        add     x9, x11, x10
        mov     x0, x9
        mov     x9, #0
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
func4:

func4:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        mov     x12, x11
        mov     x11, x10
        mov     x10, x9
        mov     x9, #0
        cmp     x12, x9
        b.ne     bb10
        b     bb11
bb10:

        mov     x0, x11
        mov     sp, x29
        ret
bb11:

        mov     x0, x10
        mov     sp, x29
        ret
func5:

func5:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x10, x9
        mov     x9, #0
        sub     x9, x9, x10
        mov     x0, x9
        mov     sp, x29
        ret
func6:

func6:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x10, x0
        mov     x9, x1
        mov     x10, x10
        mov     x16, x9
        str     x16, [sp]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb16
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
        b     bb14
bb19:

        mov     x9, #0
        ldr     x16, [sp]
        cmp     x16, x9
        b.ne     bb20
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
        b     bb14
bb13:

        mov     x0, #1
        mov     sp, x29
        ret
bb14:

        mov     x0, #0
        mov     sp, x29
        ret
func7:

func7:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x10, x9
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb24
        b     bb23
bb23:

        mov     x0, #1
        mov     sp, x29
        ret
bb24:

        mov     x0, #0
        mov     sp, x29
        ret
main:

main:

        mov     x9, #80
        sub     sp, sp, x9
        sub     sp, sp, #952
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
        str     x16, [sp,#64]
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
        str     x16, [sp,#80]
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
        str     x16, [sp,#88]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#96]
        b     bb26
bb26:

        mov     x9, #10
        ldr     x16, [sp,#96]
        cmp     x16, x9
        b.lt     bb27
        b     bb28
bb27:

        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#352]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
        mul     x9, x9, x16
        ldr     x16, [sp,#352]
        add     x10, x16, x9
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
        ldr     x16, [sp,#96]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#96]
        b     bb26
bb28:

        ldr     x16, [sp,#64]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        ldr     x16, [sp,#72]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        ldr     x16, [sp,#80]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        ldr     x16, [sp,#88]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
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
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#104]
        mov     x16, #0
        str     x16, [sp,#360]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#368]
        mov     x16, #8
        str     x16, [sp,#384]
        ldr     x16, [sp,#384]
        mov     x17, x16
        str     x17, [sp,#376]
        ldr     x16, [sp,#376]
        ldr     x17, [sp,#360]
        mul     x9, x16, x17
        ldr     x16, [sp,#368]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#112]
        mov     x16, #1
        str     x16, [sp,#392]
        mov     x16, #-80
        str     x16, [sp,#408]
        ldr     x16, [sp,#408]
        add     x17, x29, x16
        str     x17, [sp,#400]
        mov     x16, #8
        str     x16, [sp,#432]
        ldr     x16, [sp,#432]
        mov     x17, x16
        str     x17, [sp,#416]
        ldr     x16, [sp,#416]
        ldr     x17, [sp,#392]
        mul     x18, x16, x17
        str     x18, [sp,#424]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#424]
        add     x9, x16, x17
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#120]
        mov     x16, #2
        str     x16, [sp,#440]
        mov     x16, #-80
        str     x16, [sp,#456]
        ldr     x16, [sp,#456]
        add     x17, x29, x16
        str     x17, [sp,#448]
        mov     x16, #8
        str     x16, [sp,#480]
        ldr     x16, [sp,#480]
        mov     x17, x16
        str     x17, [sp,#464]
        ldr     x16, [sp,#464]
        ldr     x17, [sp,#440]
        mul     x18, x16, x17
        str     x18, [sp,#472]
        ldr     x16, [sp,#448]
        ldr     x17, [sp,#472]
        add     x18, x16, x17
        str     x18, [sp]
        ldr     x16, [sp]
        ldr     x17, [x16]
        str     x17, [sp,#128]
        mov     x16, #3
        str     x16, [sp,#488]
        mov     x16, #-80
        str     x16, [sp,#504]
        ldr     x16, [sp,#504]
        add     x17, x29, x16
        str     x17, [sp,#496]
        mov     x16, #8
        str     x16, [sp,#528]
        ldr     x16, [sp,#528]
        mov     x17, x16
        str     x17, [sp,#512]
        ldr     x16, [sp,#512]
        ldr     x17, [sp,#488]
        mul     x18, x16, x17
        str     x18, [sp,#520]
        ldr     x16, [sp,#496]
        ldr     x17, [sp,#520]
        add     x18, x16, x17
        str     x18, [sp,#8]
        ldr     x16, [sp,#8]
        ldr     x17, [x16]
        str     x17, [sp,#136]
        ldr     x16, [sp,#136]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#144]
        ldr     x16, [sp,#128]
        mov     x0, x16
        ldr     x16, [sp,#144]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#152]
        mov     x16, #4
        str     x16, [sp,#536]
        mov     x16, #-80
        str     x16, [sp,#552]
        ldr     x16, [sp,#552]
        add     x17, x29, x16
        str     x17, [sp,#544]
        mov     x16, #8
        str     x16, [sp,#576]
        ldr     x16, [sp,#576]
        mov     x17, x16
        str     x17, [sp,#560]
        ldr     x16, [sp,#560]
        ldr     x17, [sp,#536]
        mul     x18, x16, x17
        str     x18, [sp,#568]
        ldr     x16, [sp,#544]
        ldr     x17, [sp,#568]
        add     x18, x16, x17
        str     x18, [sp,#16]
        ldr     x16, [sp,#16]
        ldr     x17, [x16]
        str     x17, [sp,#160]
        mov     x16, #5
        str     x16, [sp,#584]
        mov     x16, #-80
        str     x16, [sp,#600]
        ldr     x16, [sp,#600]
        add     x17, x29, x16
        str     x17, [sp,#592]
        mov     x16, #8
        str     x16, [sp,#624]
        ldr     x16, [sp,#624]
        mov     x17, x16
        str     x17, [sp,#608]
        ldr     x16, [sp,#608]
        ldr     x17, [sp,#584]
        mul     x18, x16, x17
        str     x18, [sp,#616]
        ldr     x16, [sp,#592]
        ldr     x17, [sp,#616]
        add     x18, x16, x17
        str     x18, [sp,#24]
        ldr     x16, [sp,#24]
        ldr     x17, [x16]
        str     x17, [sp,#168]
        ldr     x16, [sp,#168]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#176]
        ldr     x16, [sp,#160]
        mov     x0, x16
        ldr     x16, [sp,#176]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#184]
        ldr     x16, [sp,#120]
        mov     x0, x16
        ldr     x16, [sp,#152]
        mov     x1, x16
        ldr     x16, [sp,#184]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#192]
        mov     x16, #6
        str     x16, [sp,#632]
        mov     x16, #-80
        str     x16, [sp,#648]
        ldr     x16, [sp,#648]
        add     x17, x29, x16
        str     x17, [sp,#640]
        mov     x16, #8
        str     x16, [sp,#672]
        ldr     x16, [sp,#672]
        mov     x17, x16
        str     x17, [sp,#656]
        ldr     x16, [sp,#656]
        ldr     x17, [sp,#632]
        mul     x18, x16, x17
        str     x18, [sp,#664]
        ldr     x16, [sp,#640]
        ldr     x17, [sp,#664]
        add     x18, x16, x17
        str     x18, [sp,#32]
        ldr     x16, [sp,#32]
        ldr     x17, [x16]
        str     x17, [sp,#200]
        ldr     x16, [sp,#192]
        mov     x0, x16
        ldr     x16, [sp,#200]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#208]
        mov     x16, #7
        str     x16, [sp,#680]
        mov     x16, #-80
        str     x16, [sp,#696]
        ldr     x16, [sp,#696]
        add     x17, x29, x16
        str     x17, [sp,#688]
        mov     x16, #8
        str     x16, [sp,#720]
        ldr     x16, [sp,#720]
        mov     x17, x16
        str     x17, [sp,#704]
        ldr     x16, [sp,#704]
        ldr     x17, [sp,#680]
        mul     x18, x16, x17
        str     x18, [sp,#712]
        ldr     x16, [sp,#688]
        ldr     x17, [sp,#712]
        add     x18, x16, x17
        str     x18, [sp,#40]
        ldr     x16, [sp,#40]
        ldr     x17, [x16]
        str     x17, [sp,#216]
        ldr     x16, [sp,#208]
        mov     x0, x16
        ldr     x16, [sp,#216]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#224]
        mov     x16, #8
        str     x16, [sp,#728]
        mov     x16, #-80
        str     x16, [sp,#744]
        ldr     x16, [sp,#744]
        add     x17, x29, x16
        str     x17, [sp,#736]
        mov     x16, #8
        str     x16, [sp,#768]
        ldr     x16, [sp,#768]
        mov     x17, x16
        str     x17, [sp,#752]
        ldr     x16, [sp,#752]
        ldr     x17, [sp,#728]
        mul     x18, x16, x17
        str     x18, [sp,#760]
        ldr     x16, [sp,#736]
        ldr     x17, [sp,#760]
        add     x18, x16, x17
        str     x18, [sp,#48]
        ldr     x16, [sp,#48]
        ldr     x17, [x16]
        str     x17, [sp,#232]
        mov     x16, #9
        str     x16, [sp,#776]
        mov     x16, #-80
        str     x16, [sp,#792]
        ldr     x16, [sp,#792]
        add     x17, x29, x16
        str     x17, [sp,#784]
        mov     x16, #8
        str     x16, [sp,#816]
        ldr     x16, [sp,#816]
        mov     x17, x16
        str     x17, [sp,#800]
        ldr     x16, [sp,#800]
        ldr     x17, [sp,#776]
        mul     x18, x16, x17
        str     x18, [sp,#808]
        ldr     x16, [sp,#784]
        ldr     x17, [sp,#808]
        add     x18, x16, x17
        str     x18, [sp,#56]
        ldr     x16, [sp,#56]
        ldr     x17, [x16]
        str     x17, [sp,#240]
        ldr     x16, [sp,#240]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#248]
        ldr     x16, [sp,#232]
        mov     x0, x16
        ldr     x16, [sp,#248]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#256]
        ldr     x16, [sp,#224]
        mov     x0, x16
        ldr     x16, [sp,#256]
        mov     x1, x16
        ldr     x16, [sp,#64]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#104]
        mov     x0, x16
        ldr     x16, [sp,#112]
        mov     x1, x16
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#264]
        ldr     x16, [sp,#80]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        ldr     x16, [sp,#88]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#72]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#264]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#272]
        mov     x11, #0
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#280]
        mov     x16, #1
        str     x16, [sp,#824]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#832]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#824]
        mul     x9, x9, x16
        ldr     x16, [sp,#832]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#272]
        mov     x0, x16
        ldr     x16, [sp,#280]
        mov     x1, x16
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#288]
        mov     x11, #2
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#288]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#296]
        mov     x11, #3
        mov     x9, #-80
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x16, [x9]
        str     x16, [sp,#304]
        mov     x16, #4
        str     x16, [sp,#840]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#848]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#840]
        mul     x9, x9, x16
        ldr     x16, [sp,#848]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#312]
        mov     x16, #5
        str     x16, [sp,#856]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#864]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#856]
        mul     x9, x9, x16
        ldr     x16, [sp,#864]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#312]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#320]
        mov     x16, #6
        str     x16, [sp,#872]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#880]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#872]
        mul     x9, x9, x16
        ldr     x16, [sp,#880]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#320]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#328]
        mov     x16, #7
        str     x16, [sp,#888]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#896]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#888]
        mul     x9, x9, x16
        ldr     x16, [sp,#896]
        add     x9, x16, x9
        ldr     x16, [x9]
        str     x16, [sp,#336]
        mov     x16, #8
        str     x16, [sp,#904]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#912]
        mov     x16, #8
        str     x16, [sp,#928]
        ldr     x16, [sp,#928]
        mov     x17, x16
        str     x17, [sp,#920]
        ldr     x16, [sp,#920]
        ldr     x17, [sp,#904]
        mul     x9, x16, x17
        ldr     x16, [sp,#912]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#328]
        mov     x0, x16
        ldr     x16, [sp,#336]
        mov     x1, x16
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        str     x16, [sp,#344]
        mov     x16, #9
        str     x16, [sp,#936]
        mov     x9, #-80
        add     x16, x29, x9
        str     x16, [sp,#944]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#936]
        mul     x9, x9, x16
        ldr     x16, [sp,#944]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#344]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        ldr     x16, [sp,#64]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        ldr     x16, [sp,#296]
        mov     x0, x16
        ldr     x16, [sp,#304]
        mov     x1, x16
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
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
