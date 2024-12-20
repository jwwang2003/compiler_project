declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%my_struct_1 = type { [7 x i32 ] }
%my_struct_2 = type { [8 x %my_struct_1 ] }
%my_struct_3 = type { [5 x %my_struct_2 ] }
%my_struct_4 = type { [4 x %my_struct_3 ] }
%my_struct_5 = type { [3 x %my_struct_4 ] }
%my_struct_6 = type { [2 x %my_struct_5 ] }
@arr1 = global [ 10 x %my_struct_6 ] zeroinitializer
@arr2 = global [ 10 x %my_struct_6 ] zeroinitializer
define i32 @loop1( i32 %r100, i32 %r102 ) {
loop1:
  %r411 = add i32 0, 0
  %r412 = add i32 0, 0
  %r413 = add i32 0, 0
  %r414 = add i32 %r100, 0
  %r415 = add i32 0, 0
  %r416 = add i32 %r102, 0
  %r417 = add i32 0, 0
  %r418 = add i32 0, 0
  %r419 = add i32 0, 0
  %r420 = add i32 0, 0
  %r421 = add i32 0, 0
  %r422 = add i32 0, 0
  %r423 = add i32 0, 0
  %r424 = add i32 0, 0
  br label %bb1

bb1:
  %r425 = phi i32 [ %r424, %loop1 ], [ %r436, %bb13 ]
  %r426 = icmp slt i32 %r425, %r414
  br i1 %r426, label %bb4, label %bb5

bb4:
  %r475 = add i32 1, 0
  br label %bb6

bb5:
  %r474 = add i32 0, 0
  br label %bb6

bb6:
  %r427 = phi i32 [ %r475, %bb4 ], [ %r474, %bb5 ]
  %r428 = icmp ne i32 %r427, 0
  br i1 %r428, label %bb7, label %bb3

bb7:
  %r429 = icmp slt i32 %r425, %r416
  br i1 %r429, label %bb8, label %bb9

bb8:
  %r473 = add i32 1, 0
  br label %bb10

bb9:
  %r472 = add i32 0, 0
  br label %bb10

bb10:
  %r430 = phi i32 [ %r473, %bb8 ], [ %r472, %bb9 ]
  %r431 = icmp ne i32 %r430, 0
  br i1 %r431, label %bb2, label %bb3

bb2:
  %r432 = add i32 0, 0
  br label %bb11

bb11:
  %r433 = phi i32 [ %r432, %bb2 ], [ %r441, %bb16 ]
  %r434 = icmp slt i32 %r433, 2
  br i1 %r434, label %bb12, label %bb13

bb12:
  %r437 = add i32 0, 0
  br label %bb14

bb14:
  %r438 = phi i32 [ %r437, %bb12 ], [ %r446, %bb19 ]
  %r439 = icmp slt i32 %r438, 3
  br i1 %r439, label %bb15, label %bb16

bb15:
  %r442 = add i32 0, 0
  br label %bb17

bb17:
  %r443 = phi i32 [ %r442, %bb15 ], [ %r451, %bb22 ]
  %r444 = icmp slt i32 %r443, 4
  br i1 %r444, label %bb18, label %bb19

bb18:
  %r447 = add i32 0, 0
  br label %bb20

bb20:
  %r448 = phi i32 [ %r447, %bb18 ], [ %r456, %bb25 ]
  %r449 = icmp slt i32 %r448, 5
  br i1 %r449, label %bb21, label %bb22

bb21:
  %r452 = add i32 0, 0
  br label %bb23

bb23:
  %r453 = phi i32 [ %r452, %bb21 ], [ %r461, %bb28 ]
  %r454 = icmp slt i32 %r453, 6
  br i1 %r454, label %bb24, label %bb25

bb24:
  %r457 = add i32 0, 0
  br label %bb26

bb26:
  %r458 = phi i32 [ %r457, %bb24 ], [ %r471, %bb27 ]
  %r459 = icmp slt i32 %r458, 2
  br i1 %r459, label %bb27, label %bb28

bb27:
  %r135 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r425
  %r137 = getelementptr %my_struct_6, %my_struct_6* %r135, i32 0, i32 0
  %r138 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r137, i32 0, i32 %r433
  %r140 = getelementptr %my_struct_5, %my_struct_5* %r138, i32 0, i32 0
  %r141 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r140, i32 0, i32 %r438
  %r143 = getelementptr %my_struct_4, %my_struct_4* %r141, i32 0, i32 0
  %r144 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r143, i32 0, i32 %r443
  %r146 = getelementptr %my_struct_3, %my_struct_3* %r144, i32 0, i32 0
  %r147 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r146, i32 0, i32 %r448
  %r149 = getelementptr %my_struct_2, %my_struct_2* %r147, i32 0, i32 0
  %r150 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r149, i32 0, i32 %r453
  %r152 = getelementptr %my_struct_1, %my_struct_1* %r150, i32 0, i32 0
  %r153 = getelementptr [7 x i32 ], [7 x i32 ]* %r152, i32 0, i32 %r458
  %r462 = add i32 %r425, %r433
  %r463 = add i32 %r462, %r438
  %r464 = add i32 %r463, %r443
  %r465 = add i32 %r464, %r448
  %r466 = add i32 %r465, %r453
  %r467 = add i32 %r466, %r458
  %r468 = add i32 %r467, %r414
  %r469 = add i32 %r468, %r416
  store i32 %r469, i32* %r153
  %r470 = add i32 %r458, 1
  %r471 = add i32 %r470, 0
  br label %bb26

bb28:
  %r460 = add i32 %r453, 1
  %r461 = add i32 %r460, 0
  br label %bb23

bb25:
  %r455 = add i32 %r448, 1
  %r456 = add i32 %r455, 0
  br label %bb20

bb22:
  %r450 = add i32 %r443, 1
  %r451 = add i32 %r450, 0
  br label %bb17

bb19:
  %r445 = add i32 %r438, 1
  %r446 = add i32 %r445, 0
  br label %bb14

bb16:
  %r440 = add i32 %r433, 1
  %r441 = add i32 %r440, 0
  br label %bb11

bb13:
  %r435 = add i32 %r425, 1
  %r436 = add i32 %r435, 0
  br label %bb1

bb3:
  ret i32 0
}

define i32 @loop2( ) {
loop2:
  %r483 = add i32 0, 0
  %r484 = add i32 0, 0
  %r485 = add i32 0, 0
  %r486 = add i32 0, 0
  %r487 = add i32 0, 0
  %r488 = add i32 0, 0
  %r489 = add i32 0, 0
  %r490 = add i32 0, 0
  br label %bb29

bb29:
  %r491 = phi i32 [ %r490, %loop2 ], [ %r497, %bb34 ]
  %r492 = icmp slt i32 %r491, 10
  br i1 %r492, label %bb30, label %bb31

bb30:
  %r493 = add i32 0, 0
  br label %bb32

bb32:
  %r494 = phi i32 [ %r493, %bb30 ], [ %r502, %bb37 ]
  %r495 = icmp slt i32 %r494, 2
  br i1 %r495, label %bb33, label %bb34

bb33:
  %r498 = add i32 0, 0
  br label %bb35

bb35:
  %r499 = phi i32 [ %r498, %bb33 ], [ %r507, %bb40 ]
  %r500 = icmp slt i32 %r499, 3
  br i1 %r500, label %bb36, label %bb37

bb36:
  %r503 = add i32 0, 0
  br label %bb38

bb38:
  %r504 = phi i32 [ %r503, %bb36 ], [ %r512, %bb43 ]
  %r505 = icmp slt i32 %r504, 2
  br i1 %r505, label %bb39, label %bb40

bb39:
  %r508 = add i32 0, 0
  br label %bb41

bb41:
  %r509 = phi i32 [ %r508, %bb39 ], [ %r517, %bb46 ]
  %r510 = icmp slt i32 %r509, 4
  br i1 %r510, label %bb42, label %bb43

bb42:
  %r513 = add i32 0, 0
  br label %bb44

bb44:
  %r514 = phi i32 [ %r513, %bb42 ], [ %r522, %bb49 ]
  %r515 = icmp slt i32 %r514, 8
  br i1 %r515, label %bb45, label %bb46

bb45:
  %r518 = add i32 0, 0
  br label %bb47

bb47:
  %r519 = phi i32 [ %r518, %bb45 ], [ %r527, %bb48 ]
  %r520 = icmp slt i32 %r519, 7
  br i1 %r520, label %bb48, label %bb49

bb48:
  %r207 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r491
  %r209 = getelementptr %my_struct_6, %my_struct_6* %r207, i32 0, i32 0
  %r210 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r209, i32 0, i32 %r494
  %r212 = getelementptr %my_struct_5, %my_struct_5* %r210, i32 0, i32 0
  %r213 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r212, i32 0, i32 %r499
  %r215 = getelementptr %my_struct_4, %my_struct_4* %r213, i32 0, i32 0
  %r216 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r215, i32 0, i32 %r504
  %r218 = getelementptr %my_struct_3, %my_struct_3* %r216, i32 0, i32 0
  %r219 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r218, i32 0, i32 %r509
  %r221 = getelementptr %my_struct_2, %my_struct_2* %r219, i32 0, i32 0
  %r222 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r221, i32 0, i32 %r514
  %r224 = getelementptr %my_struct_1, %my_struct_1* %r222, i32 0, i32 0
  %r225 = getelementptr [7 x i32 ], [7 x i32 ]* %r224, i32 0, i32 %r519
  %r523 = add i32 %r491, %r494
  %r524 = add i32 %r523, %r504
  %r525 = add i32 %r524, %r519
  store i32 %r525, i32* %r225
  %r526 = add i32 %r519, 1
  %r527 = add i32 %r526, 0
  br label %bb47

bb49:
  %r521 = add i32 %r514, 1
  %r522 = add i32 %r521, 0
  br label %bb44

bb46:
  %r516 = add i32 %r509, 1
  %r517 = add i32 %r516, 0
  br label %bb41

bb43:
  %r511 = add i32 %r504, 1
  %r512 = add i32 %r511, 0
  br label %bb38

bb40:
  %r506 = add i32 %r499, 1
  %r507 = add i32 %r506, 0
  br label %bb35

bb37:
  %r501 = add i32 %r494, 1
  %r502 = add i32 %r501, 0
  br label %bb32

bb34:
  %r496 = add i32 %r491, 1
  %r497 = add i32 %r496, 0
  br label %bb29

bb31:
  ret i32 0
}

define i32 @loop3( i32 %r248, i32 %r250, i32 %r252, i32 %r254, i32 %r256, i32 %r258, i32 %r260 ) {
loop3:
  %r543 = add i32 0, 0
  %r544 = add i32 %r248, 0
  %r545 = add i32 0, 0
  %r546 = add i32 %r250, 0
  %r547 = add i32 0, 0
  %r548 = add i32 %r252, 0
  %r549 = add i32 0, 0
  %r550 = add i32 %r254, 0
  %r551 = add i32 0, 0
  %r552 = add i32 %r256, 0
  %r553 = add i32 0, 0
  %r554 = add i32 %r258, 0
  %r555 = add i32 0, 0
  %r556 = add i32 %r260, 0
  %r557 = add i32 0, 0
  %r558 = add i32 0, 0
  %r559 = add i32 0, 0
  %r560 = add i32 0, 0
  %r561 = add i32 0, 0
  %r562 = add i32 0, 0
  %r563 = add i32 0, 0
  %r564 = add i32 0, 0
  %r565 = add i32 0, 0
  %r566 = add i32 0, 0
  br label %bb50

bb50:
  %r567 = phi i32 [ %r566, %loop3 ], [ %r577, %bb55 ]
  %r568 = phi i32 [ %r565, %loop3 ], [ %r575, %bb55 ]
  %r569 = icmp slt i32 %r567, 10
  br i1 %r569, label %bb51, label %bb52

bb51:
  %r571 = add i32 0, 0
  br label %bb53

bb53:
  %r572 = phi i32 [ %r571, %bb51 ], [ %r585, %bb58 ]
  %r573 = phi i32 [ %r568, %bb51 ], [ %r583, %bb58 ]
  %r574 = icmp slt i32 %r572, 100
  br i1 %r574, label %bb54, label %bb55

bb54:
  %r579 = add i32 0, 0
  br label %bb56

bb56:
  %r580 = phi i32 [ %r573, %bb54 ], [ %r591, %bb61 ]
  %r581 = phi i32 [ %r579, %bb54 ], [ %r593, %bb61 ]
  %r582 = icmp slt i32 %r581, 1000
  br i1 %r582, label %bb57, label %bb58

bb57:
  %r587 = add i32 0, 0
  br label %bb59

bb59:
  %r588 = phi i32 [ %r580, %bb57 ], [ %r599, %bb64 ]
  %r589 = phi i32 [ %r587, %bb57 ], [ %r601, %bb64 ]
  %r590 = icmp slt i32 %r589, 10000
  br i1 %r590, label %bb60, label %bb61

bb60:
  %r595 = add i32 0, 0
  br label %bb62

bb62:
  %r596 = phi i32 [ %r588, %bb60 ], [ %r607, %bb67 ]
  %r597 = phi i32 [ %r595, %bb60 ], [ %r609, %bb67 ]
  %r598 = icmp slt i32 %r597, 100000
  br i1 %r598, label %bb63, label %bb64

bb63:
  %r603 = add i32 0, 0
  br label %bb65

bb65:
  %r604 = phi i32 [ %r596, %bb63 ], [ %r615, %bb70 ]
  %r605 = phi i32 [ %r603, %bb63 ], [ %r617, %bb70 ]
  %r606 = icmp slt i32 %r605, 1000000
  br i1 %r606, label %bb66, label %bb67

bb66:
  %r611 = add i32 0, 0
  br label %bb68

bb68:
  %r612 = phi i32 [ %r611, %bb66 ], [ %r628, %bb69 ]
  %r613 = phi i32 [ %r604, %bb66 ], [ %r626, %bb69 ]
  %r614 = icmp slt i32 %r612, 10000000
  br i1 %r614, label %bb69, label %bb70

bb69:
  %r619 = sdiv i32 %r613, 817
  %r620 = mul i32 %r619, 817
  %r621 = sub i32 %r613, %r620
  %r289 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r567
  %r291 = getelementptr %my_struct_6, %my_struct_6* %r289, i32 0, i32 0
  %r292 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r291, i32 0, i32 %r572
  %r294 = getelementptr %my_struct_5, %my_struct_5* %r292, i32 0, i32 0
  %r295 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r294, i32 0, i32 %r581
  %r297 = getelementptr %my_struct_4, %my_struct_4* %r295, i32 0, i32 0
  %r298 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r297, i32 0, i32 %r589
  %r300 = getelementptr %my_struct_3, %my_struct_3* %r298, i32 0, i32 0
  %r301 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r300, i32 0, i32 %r597
  %r303 = getelementptr %my_struct_2, %my_struct_2* %r301, i32 0, i32 0
  %r304 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r303, i32 0, i32 %r605
  %r306 = getelementptr %my_struct_1, %my_struct_1* %r304, i32 0, i32 0
  %r307 = getelementptr [7 x i32 ], [7 x i32 ]* %r306, i32 0, i32 %r612
  %r622 = load i32, i32* %r307
  %r623 = add i32 %r621, %r622
  %r311 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r567
  %r313 = getelementptr %my_struct_6, %my_struct_6* %r311, i32 0, i32 0
  %r314 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r313, i32 0, i32 %r572
  %r316 = getelementptr %my_struct_5, %my_struct_5* %r314, i32 0, i32 0
  %r317 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r316, i32 0, i32 %r581
  %r319 = getelementptr %my_struct_4, %my_struct_4* %r317, i32 0, i32 0
  %r320 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r319, i32 0, i32 %r589
  %r322 = getelementptr %my_struct_3, %my_struct_3* %r320, i32 0, i32 0
  %r323 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r322, i32 0, i32 %r597
  %r325 = getelementptr %my_struct_2, %my_struct_2* %r323, i32 0, i32 0
  %r326 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r325, i32 0, i32 %r605
  %r328 = getelementptr %my_struct_1, %my_struct_1* %r326, i32 0, i32 0
  %r329 = getelementptr [7 x i32 ], [7 x i32 ]* %r328, i32 0, i32 %r612
  %r624 = load i32, i32* %r329
  %r625 = add i32 %r623, %r624
  %r626 = add i32 %r625, 0
  %r627 = add i32 %r612, 1
  %r628 = add i32 %r627, 0
  %r629 = icmp sge i32 %r628, %r556
  br i1 %r629, label %bb70, label %bb68

bb70:
  %r615 = phi i32 [ %r613, %bb68 ], [ %r626, %bb69 ]
  %r616 = add i32 %r605, 1
  %r617 = add i32 %r616, 0
  %r618 = icmp sge i32 %r617, %r554
  br i1 %r618, label %bb67, label %bb65

bb67:
  %r607 = phi i32 [ %r604, %bb65 ], [ %r615, %bb70 ]
  %r608 = add i32 %r597, 1
  %r609 = add i32 %r608, 0
  %r610 = icmp sge i32 %r609, %r552
  br i1 %r610, label %bb64, label %bb62

bb64:
  %r599 = phi i32 [ %r596, %bb62 ], [ %r607, %bb67 ]
  %r600 = add i32 %r589, 1
  %r601 = add i32 %r600, 0
  %r602 = icmp sge i32 %r601, %r550
  br i1 %r602, label %bb61, label %bb59

bb61:
  %r591 = phi i32 [ %r588, %bb59 ], [ %r599, %bb64 ]
  %r592 = add i32 %r581, 1
  %r593 = add i32 %r592, 0
  %r594 = icmp sge i32 %r593, %r548
  br i1 %r594, label %bb58, label %bb56

bb58:
  %r583 = phi i32 [ %r580, %bb56 ], [ %r591, %bb61 ]
  %r584 = add i32 %r572, 1
  %r585 = add i32 %r584, 0
  %r586 = icmp sge i32 %r585, %r546
  br i1 %r586, label %bb55, label %bb53

bb55:
  %r575 = phi i32 [ %r573, %bb53 ], [ %r583, %bb58 ]
  %r576 = add i32 %r567, 1
  %r577 = add i32 %r576, 0
  %r578 = icmp sge i32 %r577, %r544
  br i1 %r578, label %bb52, label %bb50

bb52:
  %r570 = phi i32 [ %r568, %bb50 ], [ %r575, %bb55 ]
  ret i32 %r570
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 97)
  %r639 = call i32 @getint()
  %r640 = add i32 0, 0
  %r641 = add i32 %r639, 0
  %r642 = call i32 @getint()
  %r643 = add i32 0, 0
  %r644 = add i32 %r642, 0
  %r645 = call i32 @getint()
  %r646 = add i32 0, 0
  %r647 = add i32 %r645, 0
  %r648 = call i32 @getint()
  %r649 = add i32 0, 0
  %r650 = add i32 %r648, 0
  %r651 = call i32 @getint()
  %r652 = add i32 0, 0
  %r653 = add i32 %r651, 0
  %r654 = call i32 @getint()
  %r655 = add i32 0, 0
  %r656 = add i32 %r654, 0
  %r657 = call i32 @getint()
  %r658 = add i32 0, 0
  %r659 = add i32 %r657, 0
  %r660 = call i32 @getint()
  %r661 = add i32 0, 0
  %r662 = add i32 %r660, 0
  %r663 = call i32 @getint()
  %r664 = add i32 0, 0
  %r665 = add i32 %r663, 0
  %r666 = call i32 @loop1(i32 %r641, i32 %r644)
  %r667 = call i32 @loop2()
  %r668 = call i32 @loop3(i32 %r647, i32 %r650, i32 %r653, i32 %r656, i32 %r659, i32 %r662, i32 %r665)
  %r669 = add i32 %r668, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r669
}

