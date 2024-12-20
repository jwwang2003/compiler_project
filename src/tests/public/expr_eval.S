.section .data
.global    TOKEN_NUM
.global    TOKEN_OTHER
.global    last_char
.global    num
.global    other
.global    cur_token
TOKEN_NUM:
        .quad   0
TOKEN_OTHER:
        .quad   1
last_char:
        .quad   32
num:
        .quad   0
other:
        .quad   0
cur_token:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global next_char
.global is_space
.global is_num
.global next_token
.global panic
.global get_op_prec
.global stack_push
.global stack_pop
.global stack_peek
.global stack_size
.global mod
.global eval_op
.global eval
.global main
next_char:

next_char:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
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
        mov     x10, x0
        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        str     x10, [x9]
        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
is_space:

is_space:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x11, x9
        mov     x9, #32
        cmp     x11, x9
        b.eq     bb4
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
        b.ne     bb1
        b     bb7
bb7:

        mov     x9, #10
        cmp     x11, x9
        b.eq     bb8
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
        b.ne     bb1
        b     bb2
bb1:

        mov     x0, #1
        mov     sp, x29
        ret
bb2:

        mov     x0, #0
        mov     sp, x29
        ret
is_num:

is_num:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, x0
        mov     x11, x9
        mov     x9, #48
        cmp     x11, x9
        b.ge     bb14
        b     bb15
bb14:

        mov     x9, #1
        mov     x10, x9
        b     bb16
bb15:

        mov     x9, #0
        mov     x10, x9
        b     bb16
bb16:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb17
        b     bb12
bb17:

        mov     x9, #57
        cmp     x11, x9
        b.le     bb18
        b     bb19
bb18:

        mov     x9, #1
        mov     x10, x9
        b     bb20
bb19:

        mov     x9, #0
        mov     x10, x9
        b     bb20
bb20:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb11
        b     bb12
bb11:

        mov     x0, #1
        mov     sp, x29
        ret
bb12:

        mov     x0, #0
        mov     sp, x29
        ret
next_token:

next_token:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        b     bb21
bb21:

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_space
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb22
        b     bb23
bb22:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb21
bb23:

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb24
        b     bb25
bb24:

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x10, [x9]
        mov     x9, #48
        sub     x10, x10, x9
        adrp     x9, num
        add     x9, x9, #:lo12:num
        str     x10, [x9]
        b     bb27
bb27:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
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
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb28
        b     bb29
bb28:

        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x10, [x9]
        mov     x9, #10
        mul     x10, x10, x9
        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        add     x10, x10, x9
        mov     x9, #48
        sub     x10, x10, x9
        adrp     x9, num
        add     x9, x9, #:lo12:num
        str     x10, [x9]
        b     bb27
bb29:

        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x10, [x9]
        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        str     x10, [x9]
        b     bb26
bb25:

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x10, [x9]
        adrp     x9, other
        add     x9, x9, #:lo12:other
        str     x10, [x9]
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        adrp     x9, TOKEN_OTHER
        add     x9, x9, #:lo12:TOKEN_OTHER
        ldr     x10, [x9]
        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        str     x10, [x9]
        b     bb26
bb26:

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x9, [x9]
        mov     x0, x9
        mov     sp, x29
        ret
panic:

panic:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #112
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
        mov     x9, #97
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
        mov     x9, #110
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
        mov     x9, #105
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
        mov     x9, #99
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
        mov     x9, #33
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
        mov     x0, #-1
        mov     sp, x29
        ret
get_op_prec:

get_op_prec:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp]
        mov     x9, #43
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb33
        b     bb34
bb33:

        mov     x9, #1
        mov     x10, x9
        b     bb35
bb34:

        mov     x9, #0
        mov     x10, x9
        b     bb35
bb35:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb30
        b     bb36
bb36:

        mov     x9, #45
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb37
        b     bb38
bb37:

        mov     x9, #1
        mov     x10, x9
        b     bb39
bb38:

        mov     x9, #0
        mov     x10, x9
        b     bb39
bb39:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb30
        b     bb32
bb30:

        mov     x0, #10
        mov     sp, x29
        ret
bb32:

        mov     x9, #42
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb46
        b     bb47
bb46:

        mov     x9, #1
        mov     x10, x9
        b     bb48
bb47:

        mov     x9, #0
        mov     x10, x9
        b     bb48
bb48:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb43
        b     bb49
bb49:

        mov     x9, #47
        ldr     x16, [sp]
        cmp     x16, x9
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
        b.ne     bb43
        b     bb44
bb43:

        mov     x9, #1
        mov     x10, x9
        b     bb45
bb44:

        mov     x9, #0
        mov     x10, x9
        b     bb45
bb45:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb40
        b     bb53
bb53:

        mov     x9, #37
        ldr     x16, [sp]
        cmp     x16, x9
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
        b.ne     bb40
        b     bb42
bb40:

        mov     x0, #20
        mov     sp, x29
        ret
bb42:

        mov     x0, #0
        mov     sp, x29
        ret
stack_push:

stack_push:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x16, x0
        str     x16, [sp]
        mov     x9, x1
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #1
        add     x9, x10, x9
        ldr     x16, [sp,#8]
        str     x9, [x16]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x16, [sp,#16]
        str     x16, [x9]
        mov     sp, x29
        ret
stack_pop:

stack_pop:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x16, x0
        str     x16, [sp]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x10, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x17, x16, x9
        str     x17, [sp,#8]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x10, [x9]
        mov     x9, #1
        sub     x9, x10, x9
        ldr     x16, [sp,#8]
        str     x9, [x16]
        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     sp, x29
        ret
stack_peek:

stack_peek:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #8
        mov     x16, x0
        str     x16, [sp]
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        ldr     x16, [sp]
        add     x9, x16, x9
        ldr     x9, [x9]
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
stack_size:

stack_size:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x11, x0
        mov     x10, #0
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x10
        add     x9, x11, x9
        ldr     x9, [x9]
        mov     x0, x9
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
eval_op:

eval_op:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #24
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        mov     x16, x11
        str     x16, [sp]
        mov     x16, x10
        str     x16, [sp,#8]
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x9, #43
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb57
        b     bb59
bb57:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        add     x9, x16, x17
        mov     x0, x9
        mov     sp, x29
        ret
bb59:

        mov     x9, #45
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb60
        b     bb62
bb60:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        sub     x9, x16, x17
        mov     x0, x9
        mov     sp, x29
        ret
bb62:

        mov     x9, #42
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb63
        b     bb65
bb63:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        mul     x9, x16, x17
        mov     x0, x9
        mov     sp, x29
        ret
bb65:

        mov     x9, #47
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb66
        b     bb68
bb66:

        ldr     x16, [sp,#8]
        ldr     x17, [sp,#16]
        sdiv     x9, x16, x17
        mov     x0, x9
        mov     sp, x29
        ret
bb68:

        mov     x9, #37
        ldr     x16, [sp]
        cmp     x16, x9
        b.eq     bb69
        b     bb71
bb69:

        ldr     x16, [sp,#8]
        mov     x0, x16
        ldr     x16, [sp,#16]
        mov     x1, x16
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
        mov     x0, x9
        mov     sp, x29
        ret
bb71:

        mov     x0, #0
        mov     sp, x29
        ret
eval:

eval:

        mov     x9, #4096
        sub     sp, sp, x9
        sub     sp, sp, #112
        mov     x9, #0
        mov     x16, x9
        str     x16, [sp]
        b     bb72
bb72:

        mov     x9, #256
        ldr     x16, [sp]
        cmp     x16, x9
        b.lt     bb73
        b     bb74
bb73:

        mov     x9, #-2048
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #-4096
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp]
        mul     x9, x9, x16
        add     x10, x10, x9
        mov     x9, #0
        mov     x9, x9
        str     x9, [x10]
        mov     x9, #1
        ldr     x16, [sp]
        add     x9, x16, x9
        mov     x9, x9
        mov     x16, x9
        str     x16, [sp]
        b     bb72
bb74:

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x10, [x9]
        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x9, [x9]
        cmp     x10, x9
        b.ne     bb75
        b     bb77
bb75:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
bb77:

        mov     x11, #0
        mov     x9, #-2048
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x9, [x9]
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
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
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb78
bb78:

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x10, [x9]
        adrp     x9, TOKEN_OTHER
        add     x9, x9, #:lo12:TOKEN_OTHER
        ldr     x9, [x9]
        cmp     x10, x9
        b.eq     bb79
        b     bb80
bb79:

        adrp     x9, other
        add     x9, x9, #:lo12:other
        ldr     x9, [x9]
        mov     x16, x9
        str     x16, [sp,#32]
        ldr     x16, [sp,#32]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.eq     bb80
        b     bb83
bb83:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb84
bb84:

        mov     x11, #0
        mov     x9, #-4096
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
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb87
        b     bb88
bb87:

        mov     x9, #1
        mov     x10, x9
        b     bb89
bb88:

        mov     x9, #0
        mov     x10, x9
        b     bb89
bb89:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb90
        b     bb86
bb90:

        mov     x11, #0
        mov     x9, #-4096
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
        bl     stack_peek
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
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        ldr     x16, [sp,#32]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        cmp     x10, x9
        b.ge     bb91
        b     bb92
bb91:

        mov     x9, #1
        mov     x10, x9
        b     bb93
bb92:

        mov     x9, #0
        mov     x10, x9
        b     bb93
bb93:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb85
        b     bb86
bb85:

        mov     x11, #0
        mov     x9, #-4096
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
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#40]
        mov     x11, #0
        mov     x9, #-2048
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
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#48]
        mov     x16, #0
        str     x16, [sp,#64]
        mov     x9, #-2048
        add     x16, x29, x9
        str     x16, [sp,#72]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#64]
        mul     x9, x9, x16
        ldr     x16, [sp,#72]
        add     x9, x16, x9
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#56]
        mov     x16, #0
        str     x16, [sp,#80]
        mov     x9, #-2048
        add     x16, x29, x9
        str     x16, [sp,#88]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#80]
        mul     x9, x9, x16
        ldr     x16, [sp,#88]
        add     x10, x16, x9
        ldr     x16, [sp,#40]
        mov     x0, x16
        ldr     x16, [sp,#56]
        mov     x1, x16
        ldr     x16, [sp,#48]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
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
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb84
bb86:

        mov     x11, #0
        mov     x9, #-4096
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x9, x10, x9
        mov     x0, x9
        ldr     x16, [sp,#32]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x10, [x9]
        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x9, [x9]
        cmp     x10, x9
        b.ne     bb94
        b     bb96
bb94:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
bb96:

        mov     x11, #0
        mov     x9, #-2048
        add     x10, x29, x9
        mov     x9, #8
        mov     x9, x9
        mul     x9, x9, x11
        add     x10, x10, x9
        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x9, [x9]
        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
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
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb78
bb80:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb97
bb97:

        mov     x11, #0
        mov     x9, #-4096
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
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        mov     x9, #0
        cmp     x10, x9
        b.ne     bb98
        b     bb99
bb98:

        mov     x11, #0
        mov     x9, #-4096
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
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#8]
        mov     x11, #0
        mov     x9, #-2048
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
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x11, #0
        mov     x9, #-2048
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
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x16, x9
        str     x16, [sp,#24]
        mov     x16, #0
        str     x16, [sp,#96]
        mov     x9, #-2048
        add     x16, x29, x9
        str     x16, [sp,#104]
        mov     x9, #8
        mov     x9, x9
        ldr     x16, [sp,#96]
        mul     x9, x9, x16
        ldr     x16, [sp,#104]
        add     x10, x16, x9
        ldr     x16, [sp,#8]
        mov     x0, x16
        ldr     x16, [sp,#24]
        mov     x1, x16
        ldr     x16, [sp,#16]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
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
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        b     bb97
bb99:

        mov     x11, #0
        mov     x9, #-2048
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
        bl     stack_peek
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        mov     x0, x9
        mov     sp, x29
        ret
main:

main:

        mov     x9, #0
        sub     sp, sp, x9
        sub     sp, sp, #0
        mov     x9, #205
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
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x9
        b     bb100
bb100:

        mov     x9, #0
        cmp     x10, x9
        b.ne     bb101
        b     bb102
bb101:

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval
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
        mov     x9, #1
        sub     x9, x10, x9
        mov     x9, x9
        mov     x10, x9
        b     bb100
bb102:

        mov     x9, #214
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
