.section .data
.global    len
len:
        .quad   20
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

        mov     x9, #1040
        sub     sp, sp, x9
        sub     sp, sp, #528
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
        mov     x11, #0
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #6
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #10
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #11
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #12
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #13
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #14
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #15
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #6
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #16
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #17
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #18
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #19
        mov     x9, #-160
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #0
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #5
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #10
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #9
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #11
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #8
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #12
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #7
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #13
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #6
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #14
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #4
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #15
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #3
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #16
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #17
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #1
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #18
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #19
        mov     x9, #-320
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #2
        mov     x9, x9
        str     x9, [x10]
        adrp     x9, len
        add     x9, x9, #:lo12:len
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#64]
        adrp     x9, len
        add     x9, x9, #:lo12:len
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#72]
        mov     x11, #0
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #1
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #2
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #3
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #4
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #5
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #6
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #7
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #8
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #9
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #10
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #11
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #12
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #13
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #14
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #15
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #16
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #17
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #18
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #19
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #20
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #21
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #22
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #23
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #24
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #25
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #26
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #27
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #28
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #29
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #30
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #31
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #32
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #33
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #34
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #35
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #36
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #37
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #38
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x11, #39
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#80]
        b     bb1
bb1:

        ldr     x16, [sp,#80]
        ldr     x17, [sp,#64]
        cmp     x16, x17
        b.lt     bb2
        b     bb3
bb2:

        mov     x9, #-520
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        add     x16, x10, x9
        str     x16, [sp]
        mov     x9, #-160
        add     x16, x29, x9
        str     x16, [sp,#240]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        ldr     x16, [sp,#240]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#80]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#80]
        b     bb1
bb3:

        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#88]
        b     bb4
bb4:

        ldr     x16, [sp,#88]
        ldr     x17, [sp,#72]
        cmp     x16, x17
        b.lt     bb5
        b     bb6
bb5:

        mov     x9, #-720
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        add     x16, x10, x9
        str     x16, [sp,#8]
        mov     x9, #-320
        add     x16, x29, x9
        str     x16, [sp,#248]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#88]
        mul     x9, x9, x16
        ldr     x16, [sp,#248]
        add     x9, x16, x9
        ldr     x9, [x9]
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x9, #1
        ldr     x16, [sp,#88]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#88]
        b     bb4
bb6:

        ldr     x16, [sp,#64]
        ldr     x17, [sp,#72]
        add     x10, x16, x17
        mov     x9, #1
        sub     x9, x10, x9
        mov     x16, x9
        str     x16, [sp,#96]
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb7
bb7:

        ldr     x16, [sp,#104]
        ldr     x17, [sp,#96]
        cmp     x16, x17
        b.le     bb8
        b     bb9
bb8:

        mov     x9, #-1040
        add     x16, x29, x9
        str     x16, [sp,#256]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#104]
        mul     x9, x9, x16
        ldr     x16, [sp,#256]
        add     x10, x16, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp,#104]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#104]
        b     bb7
bb9:

        mov     x9, #1
        ldr     x16, [sp,#72]
        sub     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#112]
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb10
bb10:

        mov     x9, #-1
        ldr     x16, [sp,#120]
        cmp     x16, x9
        b.gt     bb11
        b     bb12
bb11:

        mov     x9, #-720
        add     x16, x29, x9
        str     x16, [sp,#264]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#120]
        mul     x9, x9, x16
        ldr     x16, [sp,#264]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#136]
        mov     x9, #1
        ldr     x16, [sp,#64]
        sub     x9, x16, x9
        mov     x9, x9
        ldr     x16, [sp,#112]
        mov     x17, x16
        str     x17, [sp,#144]
        mov     x16, x9
        str     x16, [sp,#152]
        b     bb13
bb13:

        mov     x9, #-1
        ldr     x16, [sp,#152]
        cmp     x16, x9
        b.gt     bb14
        b     bb15
bb14:

        mov     x9, #-1040
        add     x16, x29, x9
        str     x16, [sp,#272]
        mov     x16, #8
        str     x16, [sp,#296]
        ldr     x16, [sp,#296]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#280]
        ldr     x17, [sp,#144]
        mul     x18, x16, x17
        str     x18, [sp,#288]
        ldr     x16, [sp,#272]
        ldr     x17, [sp,#288]
        add     x18, x16, x17
        str     x18, [sp,#16]
        mov     x16, #-520
        str     x16, [sp,#312]
        ldr     x16, [sp,#312]
        add     x17, x29, x16
        str     x17, [sp,#304]
        mov     x16, #8
        str     x16, [sp,#336]
        ldr     x16, [sp,#336]
        mov     x17, x16
        str     x17, [sp,#320]
        ldr     x16, [sp,#320]
        ldr     x17, [sp,#152]
        mul     x18, x16, x17
        str     x18, [sp,#328]
        ldr     x16, [sp,#304]
        ldr     x17, [sp,#328]
        add     x18, x16, x17
        str     x18, [sp,#24]
        ldr     x16, [sp,#24]
        ldr     x17, [x16]
        str     x17, [sp,#160]
        ldr     x16, [sp,#136]
        ldr     x17, [sp,#160]
        mul     x18, x16, x17
        str     x18, [sp,#168]
        ldr     x16, [sp,#16]
        ldr     x17, [x16]
        str     x17, [sp,#176]
        ldr     x16, [sp,#176]
        ldr     x17, [sp,#168]
        add     x9, x16, x17
        mov     x16, x9
        str     x16, [sp,#184]
        mov     x16, #10
        str     x16, [sp,#344]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#344]
        cmp     x16, x17
        b.ge     bb16
        b     bb17
bb16:

        mov     x16, #-1040
        str     x16, [sp,#360]
        ldr     x16, [sp,#360]
        add     x17, x29, x16
        str     x17, [sp,#352]
        mov     x16, #8
        str     x16, [sp,#384]
        ldr     x16, [sp,#384]
        mov     x17, x16
        str     x17, [sp,#368]
        ldr     x16, [sp,#368]
        ldr     x17, [sp,#144]
        mul     x18, x16, x17
        str     x18, [sp,#376]
        ldr     x16, [sp,#352]
        ldr     x17, [sp,#376]
        add     x18, x16, x17
        str     x18, [sp,#32]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#32]
        str     x16, [x17]
        mov     x16, #1
        str     x16, [sp,#392]
        ldr     x16, [sp,#144]
        ldr     x17, [sp,#392]
        sub     x18, x16, x17
        str     x18, [sp,#200]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#208]
        mov     x16, #-1040
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
        ldr     x17, [sp,#208]
        mul     x18, x16, x17
        str     x18, [sp,#424]
        ldr     x16, [sp,#400]
        ldr     x17, [sp,#424]
        add     x18, x16, x17
        str     x18, [sp,#40]
        mov     x16, #-1040
        str     x16, [sp,#448]
        ldr     x16, [sp,#448]
        add     x17, x29, x16
        str     x17, [sp,#440]
        mov     x16, #8
        str     x16, [sp,#472]
        ldr     x16, [sp,#472]
        mov     x17, x16
        str     x17, [sp,#456]
        ldr     x16, [sp,#456]
        ldr     x17, [sp,#208]
        mul     x18, x16, x17
        str     x18, [sp,#464]
        ldr     x16, [sp,#440]
        ldr     x17, [sp,#464]
        add     x18, x16, x17
        str     x18, [sp,#48]
        mov     x16, #10
        str     x16, [sp,#480]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#480]
        sdiv     x18, x16, x17
        str     x18, [sp,#216]
        ldr     x16, [sp,#48]
        ldr     x17, [x16]
        str     x17, [sp,#224]
        ldr     x16, [sp,#224]
        ldr     x17, [sp,#216]
        add     x18, x16, x17
        str     x18, [sp,#232]
        ldr     x16, [sp,#232]
        ldr     x17, [sp,#40]
        str     x16, [x17]
        b     bb18
bb17:

        mov     x16, #-1040
        str     x16, [sp,#496]
        ldr     x16, [sp,#496]
        add     x17, x29, x16
        str     x17, [sp,#488]
        mov     x16, #8
        str     x16, [sp,#520]
        ldr     x16, [sp,#520]
        mov     x17, x16
        str     x17, [sp,#504]
        ldr     x16, [sp,#504]
        ldr     x17, [sp,#144]
        mul     x18, x16, x17
        str     x18, [sp,#512]
        ldr     x16, [sp,#488]
        ldr     x17, [sp,#512]
        add     x18, x16, x17
        str     x18, [sp,#56]
        ldr     x16, [sp,#184]
        ldr     x17, [sp,#56]
        str     x16, [x17]
        b     bb18
bb18:

        mov     x9, #1
        ldr     x16, [sp,#152]
        sub     x9, x16, x9
        mov     x16, x9
        str     x16, [sp,#192]
        mov     x9, #1
        ldr     x16, [sp,#144]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#144]
        ldr     x16, [sp,#192]
        mov     x17, x16
        str     x17, [sp,#152]
        b     bb13
bb15:

        ldr     x16, [sp,#144]
        ldr     x17, [sp,#64]
        add     x10, x16, x17
        mov     x9, #1
        sub     x9, x10, x9
        mov     x10, x9
        mov     x9, #1
        ldr     x16, [sp,#120]
        sub     x9, x16, x9
        mov     x9, x9
        mov     x16, x10
        str     x16, [sp,#112]
        mov     x16, x9
        str     x16, [sp,#120]
        b     bb10
bb12:

        mov     x11, #0
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        ldr     x10, [x9]
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb19
        b     bb21
bb19:

        mov     x11, #0
        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
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
        b     bb21
bb21:

        mov     x9, #1
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb22
bb22:

        ldr     x16, [sp,#64]
        ldr     x17, [sp,#72]
        add     x10, x16, x17
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#128]
        cmp     x16, x9
        b.le     bb23
        b     bb24
bb23:

        mov     x9, #-1040
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#128]
        mul     x9, x9, x16
        add     x9, x10, x9
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
        mov     x9, #1
        ldr     x16, [sp,#128]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp,#128]
        b     bb22
bb24:

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
