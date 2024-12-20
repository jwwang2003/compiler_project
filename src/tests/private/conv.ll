declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@max = global i32 1073741824
@a = global [ 10000000 x i32 ] zeroinitializer
@b = global [ 10000000 x i32 ] zeroinitializer
@kernelid = global [ 10000 x i32 ] zeroinitializer
define i32 @checkrange( i32 %r100 ) {
checkrange:
  %r424 = add i32 0, 0
  %r425 = add i32 %r100, 0
  br label %bb1

bb1:
  %r426 = phi i32 [ %r425, %checkrange ], [ %r436, %bb2 ]
  %r427 = load i32, i32* @max
  %r428 = icmp sgt i32 %r426, %r427
  br i1 %r428, label %bb2, label %bb4

bb2:
  %r434 = load i32, i32* @max
  %r435 = sub i32 %r426, %r434
  %r436 = add i32 %r435, 0
  br label %bb1

bb4:
  %r429 = phi i32 [ %r426, %bb1 ], [ %r433, %bb5 ]
  %r430 = icmp slt i32 %r429, 0
  br i1 %r430, label %bb5, label %bb6

bb5:
  %r431 = load i32, i32* @max
  %r432 = add i32 %r429, %r431
  %r433 = add i32 %r432, 0
  br label %bb4

bb6:
  ret i32 %r429
}

define i32 @mod( i32 %r114, i32 %r116 ) {
mod:
  %r439 = add i32 0, 0
  %r440 = add i32 %r114, 0
  %r441 = add i32 0, 0
  %r442 = add i32 %r116, 0
  %r443 = sdiv i32 %r440, %r442
  %r444 = mul i32 %r443, %r442
  %r445 = sub i32 %r440, %r444
  ret i32 %r445
}

define i32 @reduce( i32 %r125, i32 %r127, i32 %r129 ) {
reduce:
  %r459 = add i32 0, 0
  %r460 = add i32 0, 0
  %r461 = add i32 0, 0
  %r462 = add i32 0, 0
  %r463 = add i32 0, 0
  %r464 = add i32 0, 0
  %r465 = add i32 0, 0
  %r466 = add i32 0, 0
  %r467 = add i32 0, 0
  %r468 = add i32 0, 0
  %r469 = add i32 0, 0
  %r470 = add i32 %r125, 0
  %r471 = add i32 0, 0
  %r472 = add i32 %r127, 0
  %r473 = add i32 0, 0
  %r474 = add i32 %r129, 0
  %r475 = icmp eq i32 %r470, 0
  br i1 %r475, label %bb7, label %bb9

bb7:
  %r556 = add i32 %r472, %r474
  %r557 = call i32 @checkrange(i32 %r556)
  ret i32 %r557
bb9:
  %r476 = icmp eq i32 %r470, 1
  br i1 %r476, label %bb10, label %bb12

bb10:
  %r537 = add i32 0, 0
  %r538 = add i32 1, 0
  br label %bb13

bb13:
  %r539 = phi i32 [ %r537, %bb10 ], [ %r548, %bb18 ]
  %r540 = phi i32 [ %r538, %bb10 ], [ %r550, %bb18 ]
  %r541 = load i32, i32* @max
  %r542 = icmp slt i32 %r540, %r541
  br i1 %r542, label %bb14, label %bb15

bb14:
  %r543 = sdiv i32 %r472, %r540
  %r544 = call i32 @mod(i32 %r543, i32 2)
  %r545 = sdiv i32 %r474, %r540
  %r546 = call i32 @mod(i32 %r545, i32 2)
  %r547 = icmp eq i32 %r544, %r546
  br i1 %r547, label %bb16, label %bb17

bb16:
  %r554 = mul i32 %r539, 2
  %r555 = add i32 %r554, 0
  br label %bb18

bb17:
  %r551 = mul i32 %r539, 2
  %r552 = add i32 %r551, 1
  %r553 = add i32 %r552, 0
  br label %bb18

bb18:
  %r548 = phi i32 [ %r555, %bb16 ], [ %r553, %bb17 ]
  %r549 = mul i32 %r540, 2
  %r550 = add i32 %r549, 0
  br label %bb13

bb15:
  ret i32 %r539
bb12:
  %r477 = icmp eq i32 %r470, 2
  br i1 %r477, label %bb19, label %bb21

bb19:
  %r536 = icmp sgt i32 %r472, %r474
  br i1 %r536, label %bb22, label %bb23

bb22:
  ret i32 %r472
bb23:
  ret i32 %r474
bb21:
  %r478 = icmp eq i32 %r470, 3
  br i1 %r478, label %bb25, label %bb27

bb25:
  %r508 = add i32 0, 0
  %r509 = add i32 1, 0
  br label %bb28

bb28:
  %r510 = phi i32 [ %r509, %bb25 ], [ %r521, %bb33 ]
  %r511 = phi i32 [ %r508, %bb25 ], [ %r519, %bb33 ]
  %r512 = load i32, i32* @max
  %r513 = icmp slt i32 %r510, %r512
  br i1 %r513, label %bb29, label %bb30

bb29:
  %r514 = sdiv i32 %r472, %r510
  %r515 = call i32 @mod(i32 %r514, i32 2)
  %r516 = icmp eq i32 %r515, 1
  br i1 %r516, label %bb34, label %bb35

bb34:
  %r535 = add i32 1, 0
  br label %bb36

bb35:
  %r534 = add i32 0, 0
  br label %bb36

bb36:
  %r517 = phi i32 [ %r535, %bb34 ], [ %r534, %bb35 ]
  %r518 = icmp ne i32 %r517, 0
  br i1 %r518, label %bb31, label %bb37

bb37:
  %r525 = sdiv i32 %r474, %r510
  %r526 = call i32 @mod(i32 %r525, i32 2)
  %r527 = icmp eq i32 %r526, 1
  br i1 %r527, label %bb38, label %bb39

bb38:
  %r533 = add i32 1, 0
  br label %bb40

bb39:
  %r532 = add i32 0, 0
  br label %bb40

bb40:
  %r528 = phi i32 [ %r533, %bb38 ], [ %r532, %bb39 ]
  %r529 = icmp ne i32 %r528, 0
  br i1 %r529, label %bb31, label %bb32

bb31:
  %r522 = mul i32 %r511, 2
  %r523 = add i32 %r522, 1
  %r524 = add i32 %r523, 0
  br label %bb33

bb32:
  %r530 = mul i32 %r511, 2
  %r531 = add i32 %r530, 0
  br label %bb33

bb33:
  %r519 = phi i32 [ %r524, %bb31 ], [ %r531, %bb32 ]
  %r520 = mul i32 %r510, 2
  %r521 = add i32 %r520, 0
  br label %bb28

bb30:
  ret i32 %r511
bb27:
  %r479 = icmp eq i32 %r470, 4
  br i1 %r479, label %bb41, label %bb43

bb41:
  %r480 = add i32 0, 0
  %r481 = add i32 1, 0
  br label %bb44

bb44:
  %r482 = phi i32 [ %r480, %bb41 ], [ %r491, %bb49 ]
  %r483 = phi i32 [ %r481, %bb41 ], [ %r493, %bb49 ]
  %r484 = load i32, i32* @max
  %r485 = icmp slt i32 %r483, %r484
  br i1 %r485, label %bb45, label %bb46

bb45:
  %r486 = sdiv i32 %r472, %r483
  %r487 = call i32 @mod(i32 %r486, i32 2)
  %r488 = icmp eq i32 %r487, 1
  br i1 %r488, label %bb50, label %bb51

bb50:
  %r507 = add i32 1, 0
  br label %bb52

bb51:
  %r506 = add i32 0, 0
  br label %bb52

bb52:
  %r489 = phi i32 [ %r507, %bb50 ], [ %r506, %bb51 ]
  %r490 = icmp ne i32 %r489, 0
  br i1 %r490, label %bb53, label %bb48

bb53:
  %r496 = sdiv i32 %r474, %r483
  %r497 = call i32 @mod(i32 %r496, i32 2)
  %r498 = icmp eq i32 %r497, 1
  br i1 %r498, label %bb54, label %bb55

bb54:
  %r505 = add i32 1, 0
  br label %bb56

bb55:
  %r504 = add i32 0, 0
  br label %bb56

bb56:
  %r499 = phi i32 [ %r505, %bb54 ], [ %r504, %bb55 ]
  %r500 = icmp ne i32 %r499, 0
  br i1 %r500, label %bb47, label %bb48

bb47:
  %r501 = mul i32 %r482, 2
  %r502 = add i32 %r501, 1
  %r503 = add i32 %r502, 0
  br label %bb49

bb48:
  %r494 = mul i32 %r482, 2
  %r495 = add i32 %r494, 0
  br label %bb49

bb49:
  %r491 = phi i32 [ %r503, %bb47 ], [ %r495, %bb48 ]
  %r492 = mul i32 %r483, 2
  %r493 = add i32 %r492, 0
  br label %bb44

bb46:
  ret i32 %r482
bb43:
  ret i32 0
}

define i32 @getvalue( i32* %r230, i32 %r231, i32 %r233, i32 %r235, i32 %r237 ) {
getvalue:
  %r569 = add i32 0, 0
  %r570 = add i32 0, 0
  %r571 = add i32 0, 0
  %r572 = add i32 0, 0
  %r573 = add i32 0, 0
  %r574 = add i32 %r231, 0
  %r575 = add i32 0, 0
  %r576 = add i32 %r233, 0
  %r577 = add i32 0, 0
  %r578 = add i32 %r235, 0
  %r579 = add i32 0, 0
  %r580 = add i32 %r237, 0
  %r581 = add i32 0, 0
  %r582 = add i32 0, 0
  %r583 = add i32 0, 0
  %r584 = icmp slt i32 %r578, 0
  br i1 %r584, label %bb66, label %bb67

bb66:
  %r615 = add i32 1, 0
  br label %bb68

bb67:
  %r614 = add i32 0, 0
  br label %bb68

bb68:
  %r585 = phi i32 [ %r615, %bb66 ], [ %r614, %bb67 ]
  %r586 = icmp ne i32 %r585, 0
  br i1 %r586, label %bb63, label %bb69

bb69:
  %r608 = icmp slt i32 %r580, 0
  br i1 %r608, label %bb70, label %bb71

bb70:
  %r613 = add i32 1, 0
  br label %bb72

bb71:
  %r612 = add i32 0, 0
  br label %bb72

bb72:
  %r609 = phi i32 [ %r613, %bb70 ], [ %r612, %bb71 ]
  %r610 = icmp ne i32 %r609, 0
  br i1 %r610, label %bb63, label %bb64

bb63:
  %r607 = add i32 1, 0
  br label %bb65

bb64:
  %r611 = add i32 0, 0
  br label %bb65

bb65:
  %r587 = phi i32 [ %r607, %bb63 ], [ %r611, %bb64 ]
  %r588 = icmp ne i32 %r587, 0
  br i1 %r588, label %bb60, label %bb73

bb73:
  %r601 = icmp sge i32 %r578, %r574
  br i1 %r601, label %bb74, label %bb75

bb74:
  %r606 = add i32 1, 0
  br label %bb76

bb75:
  %r605 = add i32 0, 0
  br label %bb76

bb76:
  %r602 = phi i32 [ %r606, %bb74 ], [ %r605, %bb75 ]
  %r603 = icmp ne i32 %r602, 0
  br i1 %r603, label %bb60, label %bb61

bb60:
  %r600 = add i32 1, 0
  br label %bb62

bb61:
  %r604 = add i32 0, 0
  br label %bb62

bb62:
  %r589 = phi i32 [ %r600, %bb60 ], [ %r604, %bb61 ]
  %r590 = icmp ne i32 %r589, 0
  br i1 %r590, label %bb57, label %bb77

bb77:
  %r591 = icmp sge i32 %r580, %r576
  br i1 %r591, label %bb78, label %bb79

bb78:
  %r599 = add i32 1, 0
  br label %bb80

bb79:
  %r598 = add i32 0, 0
  br label %bb80

bb80:
  %r592 = phi i32 [ %r599, %bb78 ], [ %r598, %bb79 ]
  %r593 = icmp ne i32 %r592, 0
  br i1 %r593, label %bb57, label %bb59

bb57:
  ret i32 0
bb59:
  %r594 = mul i32 %r578, %r576
  %r595 = add i32 %r594, %r580
  %r596 = add i32 %r595, 0
  %r273 = getelementptr i32, i32* %r230, i32 %r596
  %r597 = load i32, i32* %r273
  ret i32 %r597
}

define i32 @convn( i32 %r276, i32* %r278, i32* %r279, i32 %r280, i32 %r282, i32 %r284 ) {
convn:
  %r627 = add i32 0, 0
  %r628 = add i32 0, 0
  %r629 = add i32 %r276, 0
  %r630 = add i32 0, 0
  %r631 = add i32 %r280, 0
  %r632 = add i32 0, 0
  %r633 = add i32 %r282, 0
  %r634 = add i32 0, 0
  %r635 = add i32 %r284, 0
  %r636 = add i32 0, 0
  %r637 = add i32 0, 0
  %r638 = add i32 0, 0
  %r639 = add i32 0, 0
  %r640 = add i32 0, 0
  %r641 = add i32 0, 0
  %r642 = add i32 0, 0
  %r643 = add i32 0, 0
  %r644 = add i32 1, 0
  br label %bb81

bb81:
  %r645 = phi i32 [ %r637, %convn ], [ %r651, %bb86 ]
  %r646 = icmp eq i32 %r644, %r644
  br i1 %r646, label %bb82, label %bb83

bb82:
  %r647 = add i32 0, 0
  br label %bb84

bb84:
  %r648 = phi i32 [ %r647, %bb82 ], [ %r665, %bb89 ]
  %r649 = icmp eq i32 %r644, %r644
  br i1 %r649, label %bb85, label %bb86

bb85:
  %r653 = add i32 0, 0
  %r654 = sdiv i32 %r635, 2
  %r655 = sub i32 %r645, %r654
  %r656 = add i32 %r655, 0
  br label %bb87

bb87:
  %r657 = phi i32 [ %r656, %bb85 ], [ %r675, %bb92 ]
  %r658 = phi i32 [ %r653, %bb85 ], [ %r673, %bb92 ]
  %r659 = icmp eq i32 %r644, %r644
  br i1 %r659, label %bb88, label %bb89

bb88:
  %r667 = sdiv i32 %r635, 2
  %r668 = sub i32 %r648, %r667
  %r669 = add i32 %r668, 0
  br label %bb90

bb90:
  %r670 = phi i32 [ %r658, %bb88 ], [ %r681, %bb91 ]
  %r671 = phi i32 [ %r669, %bb88 ], [ %r683, %bb91 ]
  %r672 = icmp eq i32 %r644, %r644
  br i1 %r672, label %bb91, label %bb92

bb91:
  %r316 = getelementptr i32, i32* %r278, i32 0
  %r679 = call i32 @getvalue(i32* %r316, i32 %r631, i32 %r633, i32 %r657, i32 %r671)
  %r680 = call i32 @reduce(i32 %r629, i32 %r670, i32 %r679)
  %r681 = add i32 %r680, 0
  %r682 = add i32 %r671, 1
  %r683 = add i32 %r682, 0
  %r684 = sdiv i32 %r635, 2
  %r685 = add i32 %r648, %r684
  %r686 = icmp sge i32 %r683, %r685
  br i1 %r686, label %bb92, label %bb90

bb92:
  %r673 = phi i32 [ %r670, %bb90 ], [ %r681, %bb91 ]
  %r674 = add i32 %r657, 1
  %r675 = add i32 %r674, 0
  %r676 = sdiv i32 %r635, 2
  %r677 = add i32 %r645, %r676
  %r678 = icmp sge i32 %r675, %r677
  br i1 %r678, label %bb89, label %bb87

bb89:
  %r660 = phi i32 [ %r658, %bb87 ], [ %r673, %bb92 ]
  %r661 = mul i32 %r645, %r633
  %r662 = add i32 %r661, %r648
  %r663 = add i32 %r662, 0
  %r343 = getelementptr i32, i32* %r279, i32 %r663
  store i32 %r660, i32* %r343
  %r664 = add i32 %r648, 1
  %r665 = add i32 %r664, 0
  %r666 = icmp sge i32 %r665, %r633
  br i1 %r666, label %bb86, label %bb84

bb86:
  %r650 = add i32 %r645, 1
  %r651 = add i32 %r650, 0
  %r652 = icmp sge i32 %r651, %r631
  br i1 %r652, label %bb83, label %bb81

bb83:
  ret i32 0
}

define void @memmove( i32* %r356, i32* %r357, i32 %r358 ) {
memmove:
  %r689 = add i32 0, 0
  %r690 = add i32 %r358, 0
  %r691 = add i32 0, 0
  %r692 = add i32 0, 0
  br label %bb105

bb105:
  %r693 = phi i32 [ %r692, %memmove ], [ %r697, %bb106 ]
  %r694 = icmp slt i32 %r693, %r690
  br i1 %r694, label %bb106, label %bb107

bb106:
  %r364 = getelementptr i32, i32* %r356, i32 %r693
  %r366 = getelementptr i32, i32* %r357, i32 %r693
  %r695 = load i32, i32* %r366
  store i32 %r695, i32* %r364
  %r696 = add i32 %r693, 1
  %r697 = add i32 %r696, 0
  br label %bb105

bb107:
  ret void
}

define i32 @main( ) {
main:
  %r705 = add i32 0, 0
  %r706 = add i32 0, 0
  %r707 = call i32 @getint()
  %r708 = add i32 0, 0
  %r709 = add i32 %r707, 0
  %r710 = call i32 @getint()
  %r711 = add i32 0, 0
  %r712 = add i32 %r710, 0
  %r713 = call i32 @getint()
  %r714 = add i32 0, 0
  %r715 = add i32 %r713, 0
  %r716 = add i32 0, 0
  %r717 = call i32 @getint()
  %r718 = add i32 %r717, 0
  %r719 = add i32 0, 0
  %r720 = add i32 0, 0
  br label %bb108

bb108:
  %r721 = phi i32 [ %r720, %main ], [ %r743, %bb109 ]
  %r722 = icmp slt i32 %r721, %r718
  br i1 %r722, label %bb109, label %bb110

bb109:
  %r383 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 %r721
  %r741 = call i32 @getint()
  store i32 %r741, i32* %r383
  %r742 = add i32 %r721, 1
  %r743 = add i32 %r742, 0
  br label %bb108

bb110:
  %r723 = call i32 @getint()
  %r724 = add i32 %r723, 0
  %r725 = add i32 0, 0
  br label %bb111

bb111:
  %r726 = phi i32 [ %r725, %bb110 ], [ %r740, %bb112 ]
  %r727 = icmp slt i32 %r726, %r724
  br i1 %r727, label %bb112, label %bb113

bb112:
  %r392 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r726
  %r738 = call i32 @getint()
  store i32 %r738, i32* %r392
  %r739 = add i32 %r726, 1
  %r740 = add i32 %r739, 0
  br label %bb111

bb113:
  %r728 = add i32 %r724, 0
  call void @_sysy_starttime(i32 209)
  %r729 = add i32 0, 0
  br label %bb114

bb114:
  %r730 = phi i32 [ %r729, %bb113 ], [ %r737, %bb115 ]
  %r731 = icmp slt i32 %r730, %r728
  br i1 %r731, label %bb115, label %bb116

bb115:
  %r403 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r730
  %r733 = load i32, i32* %r403
  %r406 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r407 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r734 = call i32 @convn(i32 %r733, i32* %r406, i32* %r407, i32 %r712, i32 %r715, i32 %r709)
  %r412 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r413 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r735 = mul i32 %r712, %r715
  call void @memmove(i32* %r412, i32* %r413, i32 %r735)
  %r736 = add i32 %r730, 1
  %r737 = add i32 %r736, 0
  br label %bb114

bb116:
  call void @_sysy_stoptime(i32 312)
  %r732 = mul i32 %r712, %r715
  %r422 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  call void @putarray(i32 %r732, i32* %r422)
  ret i32 0
}

