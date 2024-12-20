declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@base = global i32 16
@a = global [ 30000010 x i32 ] zeroinitializer
@ans = global i32 0
define i32 @getMaxNum( i32 %r100, i32* %r102 ) {
getMaxNum:
  %r385 = add i32 0, 0
  %r386 = add i32 %r100, 0
  %r387 = add i32 0, 0
  %r388 = add i32 0, 0
  %r389 = add i32 0, 0
  %r390 = add i32 0, 0
  br label %bb1

bb1:
  %r391 = phi i32 [ %r388, %getMaxNum ], [ %r396, %bb6 ]
  %r392 = phi i32 [ %r390, %getMaxNum ], [ %r398, %bb6 ]
  %r393 = icmp slt i32 %r392, %r386
  br i1 %r393, label %bb2, label %bb3

bb2:
  %r109 = getelementptr i32, i32* %r102, i32 %r392
  %r394 = load i32, i32* %r109
  %r395 = icmp sgt i32 %r394, %r391
  br i1 %r395, label %bb4, label %bb6

bb4:
  %r113 = getelementptr i32, i32* %r102, i32 %r392
  %r399 = load i32, i32* %r113
  %r400 = add i32 %r399, 0
  br label %bb6

bb6:
  %r396 = phi i32 [ %r391, %bb2 ], [ %r400, %bb4 ]
  %r397 = add i32 %r392, 1
  %r398 = add i32 %r397, 0
  br label %bb1

bb3:
  ret i32 %r391
}

define i32 @getNumPos( i32 %r119, i32 %r121 ) {
getNumPos:
  %r405 = add i32 0, 0
  %r406 = add i32 %r119, 0
  %r407 = add i32 0, 0
  %r408 = add i32 %r121, 0
  %r409 = add i32 0, 0
  %r410 = add i32 1, 0
  %r411 = add i32 0, 0
  %r412 = add i32 0, 0
  br label %bb7

bb7:
  %r413 = phi i32 [ %r406, %getNumPos ], [ %r423, %bb8 ]
  %r414 = phi i32 [ %r412, %getNumPos ], [ %r425, %bb8 ]
  %r415 = icmp slt i32 %r414, %r408
  br i1 %r415, label %bb8, label %bb9

bb8:
  %r421 = load i32, i32* @base
  %r422 = sdiv i32 %r413, %r421
  %r423 = add i32 %r422, 0
  %r424 = add i32 %r414, 1
  %r425 = add i32 %r424, 0
  br label %bb7

bb9:
  %r416 = load i32, i32* @base
  %r417 = sdiv i32 %r413, %r416
  %r418 = load i32, i32* @base
  %r419 = mul i32 %r417, %r418
  %r420 = sub i32 %r413, %r419
  ret i32 %r420
}

define void @radixSort( i32 %r140, i32* %r142, i32 %r143, i32 %r145 ) {
radixSort:
  %r443 = add i32 0, 0
  %r444 = add i32 0, 0
  %r445 = add i32 0, 0
  %r446 = add i32 0, 0
  %r447 = add i32 0, 0
  %r448 = add i32 0, 0
  %r449 = add i32 0, 0
  %r450 = add i32 0, 0
  %r451 = add i32 0, 0
  %r452 = add i32 0, 0
  %r453 = add i32 0, 0
  %r454 = add i32 0, 0
  %r455 = add i32 0, 0
  %r456 = add i32 0, 0
  %r457 = add i32 %r140, 0
  %r458 = add i32 0, 0
  %r459 = add i32 %r143, 0
  %r460 = add i32 0, 0
  %r461 = add i32 %r145, 0
  %r147 = alloca [ 16 x i32 ]
  %r148 = alloca [ 16 x i32 ]
  %r149 = alloca [ 16 x i32 ]
  %r462 = add i32 0, 0
  %r463 = add i32 0, 0
  br label %bb10

bb10:
  %r464 = phi i32 [ %r463, %radixSort ], [ %r562, %bb11 ]
  %r465 = load i32, i32* @base
  %r466 = icmp slt i32 %r464, %r465
  br i1 %r466, label %bb11, label %bb12

bb11:
  %r154 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r464
  store i32 0, i32* %r154
  %r156 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r464
  store i32 0, i32* %r156
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r464
  store i32 0, i32* %r158
  %r561 = add i32 %r464, 1
  %r562 = add i32 %r561, 0
  br label %bb10

bb12:
  %r467 = icmp eq i32 %r457, -1
  br i1 %r467, label %bb16, label %bb17

bb16:
  %r560 = add i32 1, 0
  br label %bb18

bb17:
  %r559 = add i32 0, 0
  br label %bb18

bb18:
  %r468 = phi i32 [ %r560, %bb16 ], [ %r559, %bb17 ]
  %r469 = icmp ne i32 %r468, 0
  br i1 %r469, label %bb13, label %bb19

bb19:
  %r470 = add i32 %r459, 1
  %r471 = icmp sge i32 %r470, %r461
  br i1 %r471, label %bb20, label %bb21

bb20:
  %r558 = add i32 1, 0
  br label %bb22

bb21:
  %r557 = add i32 0, 0
  br label %bb22

bb22:
  %r472 = phi i32 [ %r558, %bb20 ], [ %r557, %bb21 ]
  %r473 = icmp ne i32 %r472, 0
  br i1 %r473, label %bb13, label %bb15

bb13:
  ret void
bb15:
  %r474 = add i32 %r459, 0
  br label %bb23

bb23:
  %r475 = phi i32 [ %r474, %bb15 ], [ %r556, %bb24 ]
  %r476 = icmp slt i32 %r475, %r461
  br i1 %r476, label %bb24, label %bb25

bb24:
  %r180 = getelementptr i32, i32* %r142, i32 %r475
  %r547 = load i32, i32* %r180
  %r548 = call i32 @getNumPos(i32 %r547, i32 %r457)
  %r549 = add i32 %r548, 0
  %r186 = getelementptr i32, i32* %r142, i32 %r475
  %r550 = load i32, i32* %r186
  %r551 = call i32 @getNumPos(i32 %r550, i32 %r457)
  %r552 = add i32 %r551, 0
  %r191 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r552
  %r193 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r549
  %r553 = load i32, i32* %r193
  %r554 = add i32 %r553, 1
  store i32 %r554, i32* %r191
  %r555 = add i32 %r475, 1
  %r556 = add i32 %r555, 0
  br label %bb23

bb25:
  %r199 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r459, i32* %r199
  %r201 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  %r202 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r477 = load i32, i32* %r202
  %r478 = add i32 %r459, %r477
  store i32 %r478, i32* %r201
  %r479 = add i32 1, 0
  br label %bb26

bb26:
  %r480 = phi i32 [ %r479, %bb25 ], [ %r546, %bb27 ]
  %r481 = load i32, i32* @base
  %r482 = icmp slt i32 %r480, %r481
  br i1 %r482, label %bb27, label %bb28

bb27:
  %r539 = sub i32 %r480, 1
  %r540 = add i32 %r539, 0
  %r212 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r480
  %r214 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r540
  %r541 = load i32, i32* %r214
  store i32 %r541, i32* %r212
  %r217 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r480
  %r219 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r480
  %r221 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r480
  %r542 = load i32, i32* %r219
  %r543 = load i32, i32* %r221
  %r544 = add i32 %r542, %r543
  store i32 %r544, i32* %r217
  %r545 = add i32 %r480, 1
  %r546 = add i32 %r545, 0
  br label %bb26

bb28:
  %r483 = add i32 0, 0
  br label %bb29

bb29:
  %r484 = phi i32 [ %r483, %bb28 ], [ %r510, %bb34 ]
  %r485 = load i32, i32* @base
  %r486 = icmp slt i32 %r484, %r485
  br i1 %r486, label %bb32, label %bb31

bb32:
  %r232 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r484
  %r506 = load i32, i32* %r232
  %r235 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r484
  %r507 = load i32, i32* %r235
  %r508 = icmp slt i32 %r506, %r507
  br i1 %r508, label %bb33, label %bb34

bb33:
  %r238 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r484
  %r511 = load i32, i32* %r238
  %r512 = add i32 %r511, 0
  %r242 = getelementptr i32, i32* %r142, i32 %r512
  %r513 = load i32, i32* %r242
  %r514 = add i32 %r513, 0
  br label %bb35

bb35:
  %r515 = phi i32 [ %r514, %bb33 ], [ %r528, %bb36 ]
  %r516 = call i32 @getNumPos(i32 %r515, i32 %r457)
  %r517 = icmp ne i32 %r516, %r484
  br i1 %r517, label %bb36, label %bb37

bb36:
  %r522 = add i32 %r515, 0
  %r523 = call i32 @getNumPos(i32 %r522, i32 %r457)
  %r524 = add i32 %r523, 0
  %r257 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r524
  %r525 = load i32, i32* %r257
  %r526 = add i32 %r525, 0
  %r260 = getelementptr i32, i32* %r142, i32 %r526
  %r527 = load i32, i32* %r260
  %r528 = add i32 %r527, 0
  %r529 = call i32 @getNumPos(i32 %r522, i32 %r457)
  %r530 = add i32 %r529, 0
  %r266 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r530
  %r531 = load i32, i32* %r266
  %r532 = add i32 %r531, 0
  %r269 = getelementptr i32, i32* %r142, i32 %r532
  store i32 %r522, i32* %r269
  %r533 = call i32 @getNumPos(i32 %r522, i32 %r457)
  %r534 = add i32 %r533, 0
  %r535 = call i32 @getNumPos(i32 %r522, i32 %r457)
  %r536 = add i32 %r535, 0
  %r279 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r536
  %r281 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r534
  %r537 = load i32, i32* %r281
  %r538 = add i32 %r537, 1
  store i32 %r538, i32* %r279
  br label %bb35

bb37:
  %r285 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r484
  %r518 = load i32, i32* %r285
  %r519 = add i32 %r518, 0
  %r289 = getelementptr i32, i32* %r142, i32 %r519
  store i32 %r515, i32* %r289
  %r292 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r484
  %r294 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r484
  %r520 = load i32, i32* %r294
  %r521 = add i32 %r520, 1
  store i32 %r521, i32* %r292
  br label %bb32

bb34:
  %r509 = add i32 %r484, 1
  %r510 = add i32 %r509, 0
  br label %bb29

bb31:
  %r487 = add i32 %r459, 0
  %r301 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r459, i32* %r301
  %r303 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  %r304 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r488 = load i32, i32* %r304
  %r489 = add i32 %r459, %r488
  store i32 %r489, i32* %r303
  %r490 = add i32 0, 0
  br label %bb38

bb38:
  %r491 = phi i32 [ %r490, %bb31 ], [ %r499, %bb43 ]
  %r492 = load i32, i32* @base
  %r493 = icmp slt i32 %r491, %r492
  br i1 %r493, label %bb39, label %bb40

bb39:
  %r494 = icmp sgt i32 %r491, 0
  br i1 %r494, label %bb41, label %bb43

bb41:
  %r500 = sub i32 %r491, 1
  %r501 = add i32 %r500, 0
  %r316 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r491
  %r318 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r501
  %r502 = load i32, i32* %r318
  store i32 %r502, i32* %r316
  %r321 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r491
  %r323 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r491
  %r325 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r491
  %r503 = load i32, i32* %r323
  %r504 = load i32, i32* %r325
  %r505 = add i32 %r503, %r504
  store i32 %r505, i32* %r321
  br label %bb43

bb43:
  %r495 = sub i32 %r457, 1
  %r332 = getelementptr i32, i32* %r142, i32 0
  %r333 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r491
  %r496 = load i32, i32* %r333
  %r336 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r491
  %r497 = load i32, i32* %r336
  call void @radixSort(i32 %r495, i32* %r332, i32 %r496, i32 %r497)
  %r498 = add i32 %r491, 1
  %r499 = add i32 %r498, 0
  br label %bb38

bb40:
  ret void
}

define i32 @main( ) {
main:
  %r566 = add i32 0, 0
  %r567 = call i32 @getint()
  %r568 = add i32 0, 0
  %r569 = add i32 %r567, 0
  %r570 = add i32 0, 0
  %r571 = add i32 0, 0
  br label %bb44

bb44:
  %r572 = phi i32 [ %r571, %main ], [ %r596, %bb45 ]
  %r573 = icmp slt i32 %r572, %r569
  br i1 %r573, label %bb45, label %bb46

bb45:
  %r347 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r572
  %r594 = call i32 @getint()
  store i32 %r594, i32* %r347
  %r595 = add i32 %r572, 1
  %r596 = add i32 %r595, 0
  br label %bb44

bb46:
  call void @_sysy_starttime(i32 97)
  %r352 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 0
  call void @radixSort(i32 8, i32* %r352, i32 0, i32 %r569)
  %r574 = add i32 0, 0
  br label %bb47

bb47:
  %r575 = phi i32 [ %r574, %bb46 ], [ %r593, %bb48 ]
  %r576 = icmp slt i32 %r575, %r569
  br i1 %r576, label %bb48, label %bb49

bb48:
  %r358 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r575
  %r360 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r575
  %r582 = add i32 2, %r575
  %r583 = load i32, i32* %r360
  %r584 = sdiv i32 %r583, %r582
  %r585 = add i32 2, %r575
  %r586 = mul i32 %r584, %r585
  %r587 = load i32, i32* %r358
  %r588 = sub i32 %r587, %r586
  %r589 = mul i32 %r575, %r588
  %r590 = load i32, i32* @ans
  %r591 = add i32 %r590, %r589
  store i32 %r591, i32* @ans
  %r592 = add i32 %r575, 1
  %r593 = add i32 %r592, 0
  br label %bb47

bb49:
  %r577 = load i32, i32* @ans
  %r578 = icmp slt i32 %r577, 0
  br i1 %r578, label %bb50, label %bb52

bb50:
  %r580 = load i32, i32* @ans
  %r581 = sub i32 0, %r580
  store i32 %r581, i32* @ans
  br label %bb52

bb52:
  call void @_sysy_stoptime(i32 117)
  %r579 = load i32, i32* @ans
  call void @putint(i32 %r579)
  call void @putch(i32 10)
  ret i32 0
}

