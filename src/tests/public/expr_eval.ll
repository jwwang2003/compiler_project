declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
define i32 @next_char( ) {
next_char:
  %r350 = call i32 @getch()
  store i32 %r350, i32* @last_char
  %r351 = load i32, i32* @last_char
  ret i32 %r351
}

define i32 @is_space( i32 %r102 ) {
is_space:
  %r355 = add i32 0, 0
  %r356 = add i32 0, 0
  %r357 = add i32 %r102, 0
  %r358 = add i32 0, 0
  %r359 = icmp eq i32 %r357, 32
  br i1 %r359, label %bb4, label %bb5

bb4:
  %r368 = add i32 1, 0
  br label %bb6

bb5:
  %r367 = add i32 0, 0
  br label %bb6

bb6:
  %r360 = phi i32 [ %r368, %bb4 ], [ %r367, %bb5 ]
  %r361 = icmp ne i32 %r360, 0
  br i1 %r361, label %bb1, label %bb7

bb7:
  %r362 = icmp eq i32 %r357, 10
  br i1 %r362, label %bb8, label %bb9

bb8:
  %r366 = add i32 1, 0
  br label %bb10

bb9:
  %r365 = add i32 0, 0
  br label %bb10

bb10:
  %r363 = phi i32 [ %r366, %bb8 ], [ %r365, %bb9 ]
  %r364 = icmp ne i32 %r363, 0
  br i1 %r364, label %bb1, label %bb2

bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @is_num( i32 %r114 ) {
is_num:
  %r372 = add i32 0, 0
  %r373 = add i32 0, 0
  %r374 = add i32 %r114, 0
  %r375 = add i32 0, 0
  %r376 = icmp sge i32 %r374, 48
  br i1 %r376, label %bb14, label %bb15

bb14:
  %r385 = add i32 1, 0
  br label %bb16

bb15:
  %r384 = add i32 0, 0
  br label %bb16

bb16:
  %r377 = phi i32 [ %r385, %bb14 ], [ %r384, %bb15 ]
  %r378 = icmp ne i32 %r377, 0
  br i1 %r378, label %bb17, label %bb12

bb17:
  %r379 = icmp sle i32 %r374, 57
  br i1 %r379, label %bb18, label %bb19

bb18:
  %r383 = add i32 1, 0
  br label %bb20

bb19:
  %r382 = add i32 0, 0
  br label %bb20

bb20:
  %r380 = phi i32 [ %r383, %bb18 ], [ %r382, %bb19 ]
  %r381 = icmp ne i32 %r380, 0
  br i1 %r381, label %bb11, label %bb12

bb11:
  ret i32 1
bb12:
  ret i32 0
}

define i32 @next_token( ) {
next_token:
  br label %bb21

bb21:
  %r386 = load i32, i32* @last_char
  %r387 = call i32 @is_space(i32 %r386)
  %r388 = icmp ne i32 %r387, 0
  br i1 %r388, label %bb22, label %bb23

bb22:
  %r407 = call i32 @next_char()
  br label %bb21

bb23:
  %r389 = load i32, i32* @last_char
  %r390 = call i32 @is_num(i32 %r389)
  %r391 = icmp ne i32 %r390, 0
  br i1 %r391, label %bb24, label %bb25

bb24:
  %r396 = load i32, i32* @last_char
  %r397 = sub i32 %r396, 48
  store i32 %r397, i32* @num
  br label %bb27

bb27:
  %r398 = call i32 @next_char()
  %r399 = call i32 @is_num(i32 %r398)
  %r400 = icmp ne i32 %r399, 0
  br i1 %r400, label %bb28, label %bb29

bb28:
  %r402 = load i32, i32* @num
  %r403 = mul i32 %r402, 10
  %r404 = load i32, i32* @last_char
  %r405 = add i32 %r403, %r404
  %r406 = sub i32 %r405, 48
  store i32 %r406, i32* @num
  br label %bb27

bb29:
  %r401 = load i32, i32* @TOKEN_NUM
  store i32 %r401, i32* @cur_token
  br label %bb26

bb25:
  %r393 = load i32, i32* @last_char
  store i32 %r393, i32* @other
  %r394 = call i32 @next_char()
  %r395 = load i32, i32* @TOKEN_OTHER
  store i32 %r395, i32* @cur_token
  br label %bb26

bb26:
  %r392 = load i32, i32* @cur_token
  ret i32 %r392
}

define i32 @panic( ) {
panic:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  ret i32 -1
}

define i32 @get_op_prec( i32 %r148 ) {
get_op_prec:
  %r415 = add i32 0, 0
  %r416 = add i32 0, 0
  %r417 = add i32 0, 0
  %r418 = add i32 0, 0
  %r419 = add i32 0, 0
  %r420 = add i32 0, 0
  %r421 = add i32 %r148, 0
  %r422 = add i32 0, 0
  %r423 = icmp eq i32 %r421, 43
  br i1 %r423, label %bb33, label %bb34

bb33:
  %r451 = add i32 1, 0
  br label %bb35

bb34:
  %r450 = add i32 0, 0
  br label %bb35

bb35:
  %r424 = phi i32 [ %r451, %bb33 ], [ %r450, %bb34 ]
  %r425 = icmp ne i32 %r424, 0
  br i1 %r425, label %bb30, label %bb36

bb36:
  %r426 = icmp eq i32 %r421, 45
  br i1 %r426, label %bb37, label %bb38

bb37:
  %r449 = add i32 1, 0
  br label %bb39

bb38:
  %r448 = add i32 0, 0
  br label %bb39

bb39:
  %r427 = phi i32 [ %r449, %bb37 ], [ %r448, %bb38 ]
  %r428 = icmp ne i32 %r427, 0
  br i1 %r428, label %bb30, label %bb32

bb30:
  ret i32 10
bb32:
  %r429 = icmp eq i32 %r421, 42
  br i1 %r429, label %bb46, label %bb47

bb46:
  %r447 = add i32 1, 0
  br label %bb48

bb47:
  %r446 = add i32 0, 0
  br label %bb48

bb48:
  %r430 = phi i32 [ %r447, %bb46 ], [ %r446, %bb47 ]
  %r431 = icmp ne i32 %r430, 0
  br i1 %r431, label %bb43, label %bb49

bb49:
  %r440 = icmp eq i32 %r421, 47
  br i1 %r440, label %bb50, label %bb51

bb50:
  %r445 = add i32 1, 0
  br label %bb52

bb51:
  %r444 = add i32 0, 0
  br label %bb52

bb52:
  %r441 = phi i32 [ %r445, %bb50 ], [ %r444, %bb51 ]
  %r442 = icmp ne i32 %r441, 0
  br i1 %r442, label %bb43, label %bb44

bb43:
  %r439 = add i32 1, 0
  br label %bb45

bb44:
  %r443 = add i32 0, 0
  br label %bb45

bb45:
  %r432 = phi i32 [ %r439, %bb43 ], [ %r443, %bb44 ]
  %r433 = icmp ne i32 %r432, 0
  br i1 %r433, label %bb40, label %bb53

bb53:
  %r434 = icmp eq i32 %r421, 37
  br i1 %r434, label %bb54, label %bb55

bb54:
  %r438 = add i32 1, 0
  br label %bb56

bb55:
  %r437 = add i32 0, 0
  br label %bb56

bb56:
  %r435 = phi i32 [ %r438, %bb54 ], [ %r437, %bb55 ]
  %r436 = icmp ne i32 %r435, 0
  br i1 %r436, label %bb40, label %bb42

bb40:
  ret i32 20
bb42:
  ret i32 0
}

define void @stack_push( i32* %r178, i32 %r179 ) {
stack_push:
  %r454 = add i32 0, 0
  %r455 = add i32 %r179, 0
  %r181 = getelementptr i32, i32* %r178, i32 0
  %r182 = getelementptr i32, i32* %r178, i32 0
  %r456 = load i32, i32* %r182
  %r457 = add i32 %r456, 1
  store i32 %r457, i32* %r181
  %r185 = getelementptr i32, i32* %r178, i32 0
  %r458 = load i32, i32* %r185
  %r459 = add i32 0, 0
  %r460 = add i32 %r458, 0
  %r188 = getelementptr i32, i32* %r178, i32 %r460
  store i32 %r455, i32* %r188
  ret void
}

define i32 @stack_pop( i32* %r191 ) {
stack_pop:
  %r192 = getelementptr i32, i32* %r191, i32 0
  %r463 = load i32, i32* %r192
  %r464 = add i32 0, 0
  %r465 = add i32 %r463, 0
  %r195 = getelementptr i32, i32* %r191, i32 %r465
  %r466 = load i32, i32* %r195
  %r467 = add i32 0, 0
  %r468 = add i32 %r466, 0
  %r199 = getelementptr i32, i32* %r191, i32 0
  %r200 = getelementptr i32, i32* %r191, i32 0
  %r469 = load i32, i32* %r200
  %r470 = sub i32 %r469, 1
  store i32 %r470, i32* %r199
  ret i32 %r468
}

define i32 @stack_peek( i32* %r204 ) {
stack_peek:
  %r205 = getelementptr i32, i32* %r204, i32 0
  %r472 = load i32, i32* %r205
  %r473 = add i32 0, 0
  %r474 = add i32 %r472, 0
  %r208 = getelementptr i32, i32* %r204, i32 %r474
  %r475 = load i32, i32* %r208
  ret i32 %r475
}

define i32 @stack_size( i32* %r211 ) {
stack_size:
  %r212 = getelementptr i32, i32* %r211, i32 0
  %r476 = load i32, i32* %r212
  ret i32 %r476
}

define i32 @mod( i32 %r214, i32 %r216 ) {
mod:
  %r479 = add i32 0, 0
  %r480 = add i32 %r214, 0
  %r481 = add i32 0, 0
  %r482 = add i32 %r216, 0
  %r483 = sdiv i32 %r480, %r482
  %r484 = mul i32 %r483, %r482
  %r485 = sub i32 %r480, %r484
  ret i32 %r485
}

define i32 @eval_op( i32 %r225, i32 %r227, i32 %r229 ) {
eval_op:
  %r489 = add i32 0, 0
  %r490 = add i32 %r225, 0
  %r491 = add i32 0, 0
  %r492 = add i32 %r227, 0
  %r493 = add i32 0, 0
  %r494 = add i32 %r229, 0
  %r495 = icmp eq i32 %r490, 43
  br i1 %r495, label %bb57, label %bb59

bb57:
  %r504 = add i32 %r492, %r494
  ret i32 %r504
bb59:
  %r496 = icmp eq i32 %r490, 45
  br i1 %r496, label %bb60, label %bb62

bb60:
  %r503 = sub i32 %r492, %r494
  ret i32 %r503
bb62:
  %r497 = icmp eq i32 %r490, 42
  br i1 %r497, label %bb63, label %bb65

bb63:
  %r502 = mul i32 %r492, %r494
  ret i32 %r502
bb65:
  %r498 = icmp eq i32 %r490, 47
  br i1 %r498, label %bb66, label %bb68

bb66:
  %r501 = sdiv i32 %r492, %r494
  ret i32 %r501
bb68:
  %r499 = icmp eq i32 %r490, 37
  br i1 %r499, label %bb69, label %bb71

bb69:
  %r500 = call i32 @mod(i32 %r492, i32 %r494)
  ret i32 %r500
bb71:
  ret i32 0
}

define i32 @eval( ) {
eval:
  %r515 = add i32 0, 0
  %r516 = add i32 0, 0
  %r517 = add i32 0, 0
  %r518 = add i32 0, 0
  %r519 = add i32 0, 0
  %r520 = add i32 0, 0
  %r521 = add i32 0, 0
  %r522 = add i32 0, 0
  %r523 = add i32 0, 0
  %r256 = alloca [ 256 x i32 ]
  %r257 = alloca [ 256 x i32 ]
  %r524 = add i32 0, 0
  %r525 = add i32 0, 0
  br label %bb72

bb72:
  %r526 = phi i32 [ %r525, %eval ], [ %r581, %bb73 ]
  %r527 = icmp slt i32 %r526, 256
  br i1 %r527, label %bb73, label %bb74

bb73:
  %r261 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 %r526
  store i32 0, i32* %r261
  %r263 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 %r526
  store i32 0, i32* %r263
  %r580 = add i32 %r526, 1
  %r581 = add i32 %r580, 0
  br label %bb72

bb74:
  %r528 = load i32, i32* @cur_token
  %r529 = load i32, i32* @TOKEN_NUM
  %r530 = icmp ne i32 %r528, %r529
  br i1 %r530, label %bb75, label %bb77

bb75:
  %r579 = call i32 @panic()
  ret i32 %r579
bb77:
  %r271 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r531 = load i32, i32* @num
  call void @stack_push(i32* %r271, i32 %r531)
  %r532 = call i32 @next_token()
  br label %bb78

bb78:
  %r533 = load i32, i32* @cur_token
  %r534 = load i32, i32* @TOKEN_OTHER
  %r535 = icmp eq i32 %r533, %r534
  br i1 %r535, label %bb79, label %bb80

bb79:
  %r547 = load i32, i32* @other
  %r548 = add i32 %r547, 0
  %r549 = call i32 @get_op_prec(i32 %r548)
  %r550 = icmp eq i32 %r549, 0
  br i1 %r550, label %bb80, label %bb83

bb83:
  %r551 = call i32 @next_token()
  br label %bb84

bb84:
  %r286 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  %r552 = call i32 @stack_size(i32* %r286)
  %r553 = icmp ne i32 %r552, 0
  br i1 %r553, label %bb87, label %bb88

bb87:
  %r578 = add i32 1, 0
  br label %bb89

bb88:
  %r577 = add i32 0, 0
  br label %bb89

bb89:
  %r554 = phi i32 [ %r578, %bb87 ], [ %r577, %bb88 ]
  %r555 = icmp ne i32 %r554, 0
  br i1 %r555, label %bb90, label %bb86

bb90:
  %r293 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  %r562 = call i32 @stack_peek(i32* %r293)
  %r563 = call i32 @get_op_prec(i32 %r562)
  %r564 = call i32 @get_op_prec(i32 %r548)
  %r565 = icmp sge i32 %r563, %r564
  br i1 %r565, label %bb91, label %bb92

bb91:
  %r576 = add i32 1, 0
  br label %bb93

bb92:
  %r575 = add i32 0, 0
  br label %bb93

bb93:
  %r566 = phi i32 [ %r576, %bb91 ], [ %r575, %bb92 ]
  %r567 = icmp ne i32 %r566, 0
  br i1 %r567, label %bb85, label %bb86

bb85:
  %r299 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  %r568 = call i32 @stack_pop(i32* %r299)
  %r569 = add i32 %r568, 0
  %r302 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r570 = call i32 @stack_pop(i32* %r302)
  %r571 = add i32 %r570, 0
  %r305 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r572 = call i32 @stack_pop(i32* %r305)
  %r573 = add i32 %r572, 0
  %r307 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r574 = call i32 @eval_op(i32 %r569, i32 %r573, i32 %r571)
  call void @stack_push(i32* %r307, i32 %r574)
  br label %bb84

bb86:
  %r312 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  call void @stack_push(i32* %r312, i32 %r548)
  %r556 = load i32, i32* @cur_token
  %r557 = load i32, i32* @TOKEN_NUM
  %r558 = icmp ne i32 %r556, %r557
  br i1 %r558, label %bb94, label %bb96

bb94:
  %r561 = call i32 @panic()
  ret i32 %r561
bb96:
  %r318 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r559 = load i32, i32* @num
  call void @stack_push(i32* %r318, i32 %r559)
  %r560 = call i32 @next_token()
  br label %bb78

bb80:
  %r536 = call i32 @next_token()
  br label %bb97

bb97:
  %r324 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  %r537 = call i32 @stack_size(i32* %r324)
  %r538 = icmp ne i32 %r537, 0
  br i1 %r538, label %bb98, label %bb99

bb98:
  %r326 = getelementptr [256 x i32 ], [256 x i32 ]* %r257, i32 0, i32 0
  %r540 = call i32 @stack_pop(i32* %r326)
  %r541 = add i32 %r540, 0
  %r329 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r542 = call i32 @stack_pop(i32* %r329)
  %r543 = add i32 %r542, 0
  %r332 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r544 = call i32 @stack_pop(i32* %r332)
  %r545 = add i32 %r544, 0
  %r334 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r546 = call i32 @eval_op(i32 %r541, i32 %r545, i32 %r543)
  call void @stack_push(i32* %r334, i32 %r546)
  br label %bb97

bb99:
  %r340 = getelementptr [256 x i32 ], [256 x i32 ]* %r256, i32 0, i32 0
  %r539 = call i32 @stack_peek(i32* %r340)
  ret i32 %r539
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 205)
  %r583 = call i32 @getint()
  %r584 = add i32 0, 0
  %r585 = add i32 %r583, 0
  %r586 = call i32 @getch()
  %r587 = call i32 @next_token()
  br label %bb100

bb100:
  %r588 = phi i32 [ %r585, %main ], [ %r592, %bb101 ]
  %r589 = icmp ne i32 %r588, 0
  br i1 %r589, label %bb101, label %bb102

bb101:
  %r590 = call i32 @eval()
  call void @putint(i32 %r590)
  call void @putch(i32 10)
  %r591 = sub i32 %r588, 1
  %r592 = add i32 %r591, 0
  br label %bb100

bb102:
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

