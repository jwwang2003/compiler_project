declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @bubblesort( i32* %r100 ) {
bubblesort:
  %r597 = add i32 0, 0
  %r598 = add i32 0, 0
  %r599 = add i32 0, 0
  %r600 = add i32 0, 0
  %r601 = add i32 0, 0
  %r602 = add i32 0, 0
  br label %bb1

bb1:
  %r603 = phi i32 [ %r602, %bubblesort ], [ %r614, %bb6 ]
  %r604 = load i32, i32* @n
  %r605 = sub i32 %r604, 1
  %r606 = icmp slt i32 %r603, %r605
  br i1 %r606, label %bb2, label %bb3

bb2:
  %r607 = add i32 0, 0
  br label %bb4

bb4:
  %r608 = phi i32 [ %r607, %bb2 ], [ %r621, %bb9 ]
  %r609 = load i32, i32* @n
  %r610 = sub i32 %r609, %r603
  %r611 = sub i32 %r610, 1
  %r612 = icmp slt i32 %r608, %r611
  br i1 %r612, label %bb5, label %bb6

bb5:
  %r615 = add i32 %r608, 1
  %r616 = add i32 %r615, 0
  %r117 = getelementptr i32, i32* %r100, i32 %r608
  %r617 = load i32, i32* %r117
  %r120 = getelementptr i32, i32* %r100, i32 %r616
  %r618 = load i32, i32* %r120
  %r619 = icmp sgt i32 %r617, %r618
  br i1 %r619, label %bb7, label %bb9

bb7:
  %r622 = add i32 %r608, 1
  %r623 = add i32 %r622, 0
  %r127 = getelementptr i32, i32* %r100, i32 %r623
  %r624 = load i32, i32* %r127
  %r625 = add i32 %r624, 0
  %r130 = getelementptr i32, i32* %r100, i32 %r623
  %r132 = getelementptr i32, i32* %r100, i32 %r608
  %r626 = load i32, i32* %r132
  store i32 %r626, i32* %r130
  %r135 = getelementptr i32, i32* %r100, i32 %r608
  store i32 %r625, i32* %r135
  br label %bb9

bb9:
  %r620 = add i32 %r608, 1
  %r621 = add i32 %r620, 0
  br label %bb4

bb6:
  %r613 = add i32 %r603, 1
  %r614 = add i32 %r613, 0
  br label %bb1

bb3:
  ret i32 0
}

define i32 @insertsort( i32* %r142 ) {
insertsort:
  %r634 = add i32 0, 0
  %r635 = add i32 0, 0
  %r636 = add i32 0, 0
  %r637 = add i32 0, 0
  %r638 = add i32 0, 0
  %r639 = add i32 0, 0
  %r640 = add i32 0, 0
  %r641 = add i32 1, 0
  br label %bb10

bb10:
  %r642 = phi i32 [ %r641, %insertsort ], [ %r656, %bb15 ]
  %r643 = load i32, i32* @n
  %r644 = icmp slt i32 %r642, %r643
  br i1 %r644, label %bb11, label %bb12

bb11:
  %r148 = getelementptr i32, i32* %r142, i32 %r642
  %r645 = load i32, i32* %r148
  %r646 = add i32 %r645, 0
  %r647 = sub i32 %r642, 1
  %r648 = add i32 %r647, 0
  br label %bb13

bb13:
  %r649 = phi i32 [ %r648, %bb11 ], [ %r665, %bb14 ]
  %r650 = icmp sgt i32 %r649, -1
  br i1 %r650, label %bb16, label %bb17

bb16:
  %r669 = add i32 1, 0
  br label %bb18

bb17:
  %r668 = add i32 0, 0
  br label %bb18

bb18:
  %r651 = phi i32 [ %r669, %bb16 ], [ %r668, %bb17 ]
  %r652 = icmp ne i32 %r651, 0
  br i1 %r652, label %bb19, label %bb15

bb19:
  %r162 = getelementptr i32, i32* %r142, i32 %r649
  %r657 = load i32, i32* %r162
  %r658 = icmp slt i32 %r646, %r657
  br i1 %r658, label %bb20, label %bb21

bb20:
  %r667 = add i32 1, 0
  br label %bb22

bb21:
  %r666 = add i32 0, 0
  br label %bb22

bb22:
  %r659 = phi i32 [ %r667, %bb20 ], [ %r666, %bb21 ]
  %r660 = icmp ne i32 %r659, 0
  br i1 %r660, label %bb14, label %bb15

bb14:
  %r661 = add i32 %r649, 1
  %r662 = add i32 %r661, 0
  %r170 = getelementptr i32, i32* %r142, i32 %r662
  %r172 = getelementptr i32, i32* %r142, i32 %r649
  %r663 = load i32, i32* %r172
  store i32 %r663, i32* %r170
  %r664 = sub i32 %r649, 1
  %r665 = add i32 %r664, 0
  br label %bb13

bb15:
  %r653 = add i32 %r649, 1
  %r654 = add i32 %r653, 0
  %r180 = getelementptr i32, i32* %r142, i32 %r654
  store i32 %r646, i32* %r180
  %r655 = add i32 %r642, 1
  %r656 = add i32 %r655, 0
  br label %bb10

bb12:
  ret i32 0
}

define i32 @QuickSort( i32* %r185, i32 %r186, i32 %r188 ) {
QuickSort:
  %r680 = add i32 0, 0
  %r681 = add i32 0, 0
  %r682 = add i32 0, 0
  %r683 = add i32 0, 0
  %r684 = add i32 0, 0
  %r685 = add i32 0, 0
  %r686 = add i32 0, 0
  %r687 = add i32 0, 0
  %r688 = add i32 0, 0
  %r689 = add i32 %r186, 0
  %r690 = add i32 0, 0
  %r691 = add i32 %r188, 0
  %r692 = icmp slt i32 %r689, %r691
  br i1 %r692, label %bb23, label %bb25

bb23:
  %r693 = add i32 %r689, 0
  %r694 = add i32 %r691, 0
  %r198 = getelementptr i32, i32* %r185, i32 %r689
  %r695 = load i32, i32* %r198
  %r696 = add i32 %r695, 0
  br label %bb26

bb26:
  %r697 = phi i32 [ %r693, %bb23 ], [ %r713, %bb44 ], [ %r713, %bb52 ]
  %r698 = phi i32 [ %r694, %bb23 ], [ %r708, %bb44 ], [ %r720, %bb52 ]
  %r699 = icmp slt i32 %r697, %r698
  br i1 %r699, label %bb29, label %bb28

bb29:
  %r708 = phi i32 [ %r698, %bb26 ], [ %r740, %bb30 ]
  %r709 = icmp slt i32 %r697, %r708
  br i1 %r709, label %bb32, label %bb33

bb32:
  %r744 = add i32 1, 0
  br label %bb34

bb33:
  %r743 = add i32 0, 0
  br label %bb34

bb34:
  %r710 = phi i32 [ %r744, %bb32 ], [ %r743, %bb33 ]
  %r711 = icmp ne i32 %r710, 0
  br i1 %r711, label %bb35, label %bb31

bb35:
  %r212 = getelementptr i32, i32* %r185, i32 %r708
  %r734 = load i32, i32* %r212
  %r735 = sub i32 %r696, 1
  %r736 = icmp sgt i32 %r734, %r735
  br i1 %r736, label %bb36, label %bb37

bb36:
  %r742 = add i32 1, 0
  br label %bb38

bb37:
  %r741 = add i32 0, 0
  br label %bb38

bb38:
  %r737 = phi i32 [ %r742, %bb36 ], [ %r741, %bb37 ]
  %r738 = icmp ne i32 %r737, 0
  br i1 %r738, label %bb30, label %bb31

bb30:
  %r739 = sub i32 %r708, 1
  %r740 = add i32 %r739, 0
  br label %bb29

bb31:
  %r712 = icmp slt i32 %r697, %r708
  br i1 %r712, label %bb39, label %bb42

bb39:
  %r224 = getelementptr i32, i32* %r185, i32 %r697
  %r226 = getelementptr i32, i32* %r185, i32 %r708
  %r731 = load i32, i32* %r226
  store i32 %r731, i32* %r224
  %r732 = add i32 %r697, 1
  %r733 = add i32 %r732, 0
  br label %bb42

bb42:
  %r713 = phi i32 [ %r697, %bb31 ], [ %r733, %bb39 ], [ %r726, %bb43 ]
  %r714 = icmp slt i32 %r713, %r708
  br i1 %r714, label %bb45, label %bb46

bb45:
  %r730 = add i32 1, 0
  br label %bb47

bb46:
  %r729 = add i32 0, 0
  br label %bb47

bb47:
  %r715 = phi i32 [ %r730, %bb45 ], [ %r729, %bb46 ]
  %r716 = icmp ne i32 %r715, 0
  br i1 %r716, label %bb48, label %bb44

bb48:
  %r239 = getelementptr i32, i32* %r185, i32 %r713
  %r721 = load i32, i32* %r239
  %r722 = icmp slt i32 %r721, %r696
  br i1 %r722, label %bb49, label %bb50

bb49:
  %r728 = add i32 1, 0
  br label %bb51

bb50:
  %r727 = add i32 0, 0
  br label %bb51

bb51:
  %r723 = phi i32 [ %r728, %bb49 ], [ %r727, %bb50 ]
  %r724 = icmp ne i32 %r723, 0
  br i1 %r724, label %bb43, label %bb44

bb43:
  %r725 = add i32 %r713, 1
  %r726 = add i32 %r725, 0
  br label %bb42

bb44:
  %r717 = icmp slt i32 %r713, %r708
  br i1 %r717, label %bb52, label %bb26

bb52:
  %r250 = getelementptr i32, i32* %r185, i32 %r708
  %r252 = getelementptr i32, i32* %r185, i32 %r713
  %r718 = load i32, i32* %r252
  store i32 %r718, i32* %r250
  %r719 = sub i32 %r708, 1
  %r720 = add i32 %r719, 0
  br label %bb26

bb28:
  %r257 = getelementptr i32, i32* %r185, i32 %r697
  store i32 %r696, i32* %r257
  %r700 = sub i32 %r697, 1
  %r701 = add i32 %r700, 0
  %r264 = getelementptr i32, i32* %r185, i32 0
  %r702 = call i32 @QuickSort(i32* %r264, i32 %r689, i32 %r701)
  %r703 = add i32 %r702, 0
  %r704 = add i32 %r697, 1
  %r705 = add i32 %r704, 0
  %r270 = getelementptr i32, i32* %r185, i32 0
  %r706 = call i32 @QuickSort(i32* %r270, i32 %r705, i32 %r691)
  %r707 = add i32 %r706, 0
  br label %bb25

bb25:
  ret i32 0
}

define i32 @getMid( i32* %r273 ) {
getMid:
  %r747 = add i32 0, 0
  %r748 = add i32 0, 0
  %r749 = load i32, i32* @n
  %r750 = sdiv i32 %r749, 2
  %r751 = mul i32 %r750, 2
  %r752 = load i32, i32* @n
  %r753 = icmp eq i32 %r751, %r752
  br i1 %r753, label %bb55, label %bb56

bb55:
  %r758 = load i32, i32* @n
  %r759 = sdiv i32 %r758, 2
  %r760 = add i32 %r759, 0
  %r761 = sub i32 %r760, 1
  %r762 = add i32 %r761, 0
  %r285 = getelementptr i32, i32* %r273, i32 %r760
  %r287 = getelementptr i32, i32* %r273, i32 %r762
  %r763 = load i32, i32* %r285
  %r764 = load i32, i32* %r287
  %r765 = add i32 %r763, %r764
  %r766 = sdiv i32 %r765, 2
  ret i32 %r766
bb56:
  %r754 = load i32, i32* @n
  %r755 = sdiv i32 %r754, 2
  %r756 = add i32 %r755, 0
  %r295 = getelementptr i32, i32* %r273, i32 %r756
  %r757 = load i32, i32* %r295
  ret i32 %r757
}

define i32 @getMost( i32* %r298 ) {
getMost:
  %r771 = add i32 0, 0
  %r772 = add i32 0, 0
  %r773 = add i32 0, 0
  %r299 = alloca [ 1000 x i32 ]
  %r774 = add i32 0, 0
  %r775 = add i32 0, 0
  br label %bb58

bb58:
  %r776 = phi i32 [ %r775, %getMost ], [ %r799, %bb59 ]
  %r777 = icmp slt i32 %r776, 1000
  br i1 %r777, label %bb59, label %bb60

bb59:
  %r303 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r299, i32 0, i32 %r776
  store i32 0, i32* %r303
  %r798 = add i32 %r776, 1
  %r799 = add i32 %r798, 0
  br label %bb58

bb60:
  %r778 = add i32 0, 0
  %r779 = add i32 0, 0
  br label %bb61

bb61:
  %r780 = phi i32 [ %r772, %bb60 ], [ %r791, %bb66 ]
  %r781 = phi i32 [ %r779, %bb60 ], [ %r792, %bb66 ]
  %r782 = phi i32 [ %r778, %bb60 ], [ %r794, %bb66 ]
  %r783 = load i32, i32* @n
  %r784 = icmp slt i32 %r782, %r783
  br i1 %r784, label %bb62, label %bb63

bb62:
  %r313 = getelementptr i32, i32* %r298, i32 %r782
  %r785 = load i32, i32* %r313
  %r786 = add i32 %r785, 0
  %r316 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r299, i32 0, i32 %r786
  %r318 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r299, i32 0, i32 %r786
  %r787 = load i32, i32* %r318
  %r788 = add i32 %r787, 1
  store i32 %r788, i32* %r316
  %r323 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r299, i32 0, i32 %r786
  %r789 = load i32, i32* %r323
  %r790 = icmp sgt i32 %r789, %r781
  br i1 %r790, label %bb64, label %bb66

bb64:
  %r327 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r299, i32 0, i32 %r786
  %r795 = load i32, i32* %r327
  %r796 = add i32 %r795, 0
  %r797 = add i32 %r786, 0
  br label %bb66

bb66:
  %r791 = phi i32 [ %r780, %bb62 ], [ %r797, %bb64 ]
  %r792 = phi i32 [ %r781, %bb62 ], [ %r796, %bb64 ]
  %r793 = add i32 %r782, 1
  %r794 = add i32 %r793, 0
  br label %bb61

bb63:
  ret i32 %r780
}

define i32 @revert( i32* %r334 ) {
revert:
  %r803 = add i32 0, 0
  %r804 = add i32 0, 0
  %r805 = add i32 0, 0
  %r806 = add i32 0, 0
  %r807 = add i32 0, 0
  br label %bb67

bb67:
  %r808 = phi i32 [ %r806, %revert ], [ %r815, %bb68 ]
  %r809 = phi i32 [ %r807, %revert ], [ %r817, %bb68 ]
  %r810 = icmp slt i32 %r808, %r809
  br i1 %r810, label %bb68, label %bb69

bb68:
  %r341 = getelementptr i32, i32* %r334, i32 %r808
  %r811 = load i32, i32* %r341
  %r812 = add i32 %r811, 0
  %r344 = getelementptr i32, i32* %r334, i32 %r808
  %r346 = getelementptr i32, i32* %r334, i32 %r809
  %r813 = load i32, i32* %r346
  store i32 %r813, i32* %r344
  %r349 = getelementptr i32, i32* %r334, i32 %r809
  store i32 %r812, i32* %r349
  %r814 = add i32 %r808, 1
  %r815 = add i32 %r814, 0
  %r816 = sub i32 %r809, 1
  %r817 = add i32 %r816, 0
  br label %bb67

bb69:
  ret i32 0
}

define i32 @arrCopy( i32* %r356, i32* %r357 ) {
arrCopy:
  %r819 = add i32 0, 0
  %r820 = add i32 0, 0
  br label %bb70

bb70:
  %r821 = phi i32 [ %r820, %arrCopy ], [ %r826, %bb71 ]
  %r822 = load i32, i32* @n
  %r823 = icmp slt i32 %r821, %r822
  br i1 %r823, label %bb71, label %bb72

bb71:
  %r362 = getelementptr i32, i32* %r357, i32 %r821
  %r364 = getelementptr i32, i32* %r356, i32 %r821
  %r824 = load i32, i32* %r364
  store i32 %r824, i32* %r362
  %r825 = add i32 %r821, 1
  %r826 = add i32 %r825, 0
  br label %bb70

bb72:
  ret i32 0
}

define i32 @calSum( i32* %r369, i32 %r370 ) {
calSum:
  %r830 = add i32 0, 0
  %r831 = add i32 %r370, 0
  %r832 = add i32 0, 0
  %r833 = add i32 0, 0
  %r834 = add i32 0, 0
  %r835 = add i32 0, 0
  br label %bb73

bb73:
  %r836 = phi i32 [ %r833, %calSum ], [ %r848, %bb78 ]
  %r837 = phi i32 [ %r835, %calSum ], [ %r850, %bb78 ]
  %r838 = load i32, i32* @n
  %r839 = icmp slt i32 %r837, %r838
  br i1 %r839, label %bb74, label %bb75

bb74:
  %r377 = getelementptr i32, i32* %r369, i32 %r837
  %r840 = load i32, i32* %r377
  %r841 = add i32 %r836, %r840
  %r842 = add i32 %r841, 0
  %r843 = sdiv i32 %r837, %r831
  %r844 = mul i32 %r843, %r831
  %r845 = sub i32 %r837, %r844
  %r846 = sub i32 %r831, 1
  %r847 = icmp ne i32 %r845, %r846
  br i1 %r847, label %bb76, label %bb77

bb76:
  %r392 = getelementptr i32, i32* %r369, i32 %r837
  store i32 0, i32* %r392
  br label %bb78

bb77:
  %r394 = getelementptr i32, i32* %r369, i32 %r837
  store i32 %r842, i32* %r394
  %r851 = add i32 0, 0
  br label %bb78

bb78:
  %r848 = phi i32 [ %r842, %bb76 ], [ %r851, %bb77 ]
  %r849 = add i32 %r837, 1
  %r850 = add i32 %r849, 0
  br label %bb73

bb75:
  ret i32 0
}

define i32 @avgPooling( i32* %r399, i32 %r400 ) {
avgPooling:
  %r857 = add i32 0, 0
  %r858 = add i32 0, 0
  %r859 = add i32 %r400, 0
  %r860 = add i32 0, 0
  %r861 = add i32 0, 0
  %r862 = add i32 0, 0
  %r863 = add i32 0, 0
  %r864 = add i32 0, 0
  br label %bb79

bb79:
  %r865 = phi i32 [ %r863, %avgPooling ], [ %r881, %bb84 ]
  %r866 = phi i32 [ %r862, %avgPooling ], [ %r884, %bb84 ]
  %r867 = phi i32 [ %r864, %avgPooling ], [ %r882, %bb84 ]
  %r868 = load i32, i32* @n
  %r869 = icmp slt i32 %r866, %r868
  br i1 %r869, label %bb80, label %bb81

bb80:
  %r879 = sub i32 %r859, 1
  %r880 = icmp slt i32 %r866, %r879
  br i1 %r880, label %bb82, label %bb83

bb82:
  %r412 = getelementptr i32, i32* %r399, i32 %r866
  %r900 = load i32, i32* %r412
  %r901 = add i32 %r865, %r900
  %r902 = add i32 %r901, 0
  br label %bb84

bb83:
  %r885 = sub i32 %r859, 1
  %r886 = icmp eq i32 %r866, %r885
  br i1 %r886, label %bb85, label %bb86

bb85:
  %r421 = getelementptr i32, i32* %r399, i32 0
  %r897 = load i32, i32* %r421
  %r898 = add i32 %r897, 0
  %r423 = getelementptr i32, i32* %r399, i32 0
  %r899 = sdiv i32 %r865, %r859
  store i32 %r899, i32* %r423
  br label %bb84

bb86:
  %r427 = getelementptr i32, i32* %r399, i32 %r866
  %r887 = load i32, i32* %r427
  %r888 = add i32 %r865, %r887
  %r889 = sub i32 %r888, %r867
  %r890 = add i32 %r889, 0
  %r891 = sub i32 %r866, %r859
  %r892 = add i32 %r891, 1
  %r893 = add i32 %r892, 0
  %r439 = getelementptr i32, i32* %r399, i32 %r893
  %r894 = load i32, i32* %r439
  %r895 = add i32 %r894, 0
  %r442 = getelementptr i32, i32* %r399, i32 %r893
  %r896 = sdiv i32 %r890, %r859
  store i32 %r896, i32* %r442
  br label %bb84

bb84:
  %r881 = phi i32 [ %r902, %bb82 ], [ %r865, %bb85 ], [ %r890, %bb86 ]
  %r882 = phi i32 [ %r867, %bb82 ], [ %r898, %bb85 ], [ %r895, %bb86 ]
  %r883 = add i32 %r866, 1
  %r884 = add i32 %r883, 0
  br label %bb79

bb81:
  %r870 = load i32, i32* @n
  %r871 = sub i32 %r870, %r859
  %r872 = add i32 %r871, 1
  %r873 = add i32 %r872, 0
  br label %bb88

bb88:
  %r874 = phi i32 [ %r873, %bb81 ], [ %r878, %bb89 ]
  %r875 = load i32, i32* @n
  %r876 = icmp slt i32 %r874, %r875
  br i1 %r876, label %bb89, label %bb90

bb89:
  %r456 = getelementptr i32, i32* %r399, i32 %r874
  store i32 0, i32* %r456
  %r877 = add i32 %r874, 1
  %r878 = add i32 %r877, 0
  br label %bb88

bb90:
  ret i32 0
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 209)
  store i32 32, i32* @n
  %r460 = alloca [ 32 x i32 ]
  %r461 = alloca [ 32 x i32 ]
  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  store i32 7, i32* %r462
  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 1
  store i32 23, i32* %r463
  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 2
  store i32 89, i32* %r464
  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 3
  store i32 26, i32* %r465
  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 4
  store i32 282, i32* %r466
  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 5
  store i32 254, i32* %r467
  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 6
  store i32 27, i32* %r468
  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 7
  store i32 5, i32* %r469
  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 8
  store i32 83, i32* %r470
  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 9
  store i32 273, i32* %r471
  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 10
  store i32 574, i32* %r472
  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 11
  store i32 905, i32* %r473
  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 12
  store i32 354, i32* %r474
  %r475 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 13
  store i32 657, i32* %r475
  %r476 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 14
  store i32 935, i32* %r476
  %r477 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 15
  store i32 264, i32* %r477
  %r478 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 16
  store i32 639, i32* %r478
  %r479 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 17
  store i32 459, i32* %r479
  %r480 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 18
  store i32 29, i32* %r480
  %r481 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 19
  store i32 68, i32* %r481
  %r482 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 20
  store i32 929, i32* %r482
  %r483 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 21
  store i32 756, i32* %r483
  %r484 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 22
  store i32 452, i32* %r484
  %r485 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 23
  store i32 279, i32* %r485
  %r486 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 24
  store i32 58, i32* %r486
  %r487 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 25
  store i32 87, i32* %r487
  %r488 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 26
  store i32 96, i32* %r488
  %r489 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 27
  store i32 36, i32* %r489
  %r490 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 28
  store i32 39, i32* %r490
  %r491 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 29
  store i32 28, i32* %r491
  %r492 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 30
  store i32 1, i32* %r492
  %r493 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 31
  store i32 290, i32* %r493
  %r905 = add i32 0, 0
  %r496 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r497 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r906 = call i32 @arrCopy(i32* %r496, i32* %r497)
  %r907 = add i32 %r906, 0
  %r499 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r908 = call i32 @revert(i32* %r499)
  %r909 = add i32 %r908, 0
  %r910 = add i32 0, 0
  %r911 = add i32 0, 0
  br label %bb91

bb91:
  %r912 = phi i32 [ %r911, %main ], [ %r986, %bb92 ]
  %r913 = icmp slt i32 %r912, 32
  br i1 %r913, label %bb92, label %bb93

bb92:
  %r503 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r912
  %r983 = load i32, i32* %r503
  %r984 = add i32 %r983, 0
  call void @putint(i32 %r984)
  %r985 = add i32 %r912, 1
  %r986 = add i32 %r985, 0
  br label %bb91

bb93:
  %r510 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r914 = call i32 @bubblesort(i32* %r510)
  %r915 = add i32 %r914, 0
  %r916 = add i32 0, 0
  br label %bb94

bb94:
  %r917 = phi i32 [ %r916, %bb93 ], [ %r982, %bb95 ]
  %r918 = icmp slt i32 %r917, 32
  br i1 %r918, label %bb95, label %bb96

bb95:
  %r513 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r917
  %r979 = load i32, i32* %r513
  %r980 = add i32 %r979, 0
  call void @putint(i32 %r980)
  %r981 = add i32 %r917, 1
  %r982 = add i32 %r981, 0
  br label %bb94

bb96:
  %r520 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r919 = call i32 @getMid(i32* %r520)
  %r920 = add i32 %r919, 0
  call void @putint(i32 %r920)
  %r523 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r921 = call i32 @getMost(i32* %r523)
  %r922 = add i32 %r921, 0
  call void @putint(i32 %r922)
  %r526 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r527 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r923 = call i32 @arrCopy(i32* %r526, i32* %r527)
  %r924 = add i32 %r923, 0
  %r529 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r925 = call i32 @bubblesort(i32* %r529)
  %r926 = add i32 %r925, 0
  %r927 = add i32 0, 0
  br label %bb97

bb97:
  %r928 = phi i32 [ %r927, %bb96 ], [ %r978, %bb98 ]
  %r929 = icmp slt i32 %r928, 32
  br i1 %r929, label %bb98, label %bb99

bb98:
  %r532 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r928
  %r975 = load i32, i32* %r532
  %r976 = add i32 %r975, 0
  call void @putint(i32 %r976)
  %r977 = add i32 %r928, 1
  %r978 = add i32 %r977, 0
  br label %bb97

bb99:
  %r539 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r540 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r930 = call i32 @arrCopy(i32* %r539, i32* %r540)
  %r931 = add i32 %r930, 0
  %r542 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r932 = call i32 @insertsort(i32* %r542)
  %r933 = add i32 %r932, 0
  %r934 = add i32 0, 0
  br label %bb100

bb100:
  %r935 = phi i32 [ %r934, %bb99 ], [ %r974, %bb101 ]
  %r936 = icmp slt i32 %r935, 32
  br i1 %r936, label %bb101, label %bb102

bb101:
  %r545 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r935
  %r971 = load i32, i32* %r545
  %r972 = add i32 %r971, 0
  call void @putint(i32 %r972)
  %r973 = add i32 %r935, 1
  %r974 = add i32 %r973, 0
  br label %bb100

bb102:
  %r552 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r553 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r937 = call i32 @arrCopy(i32* %r552, i32* %r553)
  %r938 = add i32 %r937, 0
  %r939 = add i32 0, 0
  %r940 = add i32 31, 0
  %r555 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r941 = call i32 @QuickSort(i32* %r555, i32 %r939, i32 %r940)
  %r942 = add i32 %r941, 0
  br label %bb103

bb103:
  %r943 = phi i32 [ %r939, %bb102 ], [ %r970, %bb104 ]
  %r944 = icmp slt i32 %r943, 32
  br i1 %r944, label %bb104, label %bb105

bb104:
  %r560 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r943
  %r967 = load i32, i32* %r560
  %r968 = add i32 %r967, 0
  call void @putint(i32 %r968)
  %r969 = add i32 %r943, 1
  %r970 = add i32 %r969, 0
  br label %bb103

bb105:
  %r567 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r568 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r945 = call i32 @arrCopy(i32* %r567, i32* %r568)
  %r946 = add i32 %r945, 0
  %r570 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r947 = call i32 @calSum(i32* %r570, i32 4)
  %r948 = add i32 %r947, 0
  %r949 = add i32 0, 0
  br label %bb106

bb106:
  %r950 = phi i32 [ %r949, %bb105 ], [ %r966, %bb107 ]
  %r951 = icmp slt i32 %r950, 32
  br i1 %r951, label %bb107, label %bb108

bb107:
  %r573 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r950
  %r963 = load i32, i32* %r573
  %r964 = add i32 %r963, 0
  call void @putint(i32 %r964)
  %r965 = add i32 %r950, 1
  %r966 = add i32 %r965, 0
  br label %bb106

bb108:
  %r580 = getelementptr [32 x i32 ], [32 x i32 ]* %r460, i32 0, i32 0
  %r581 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r952 = call i32 @arrCopy(i32* %r580, i32* %r581)
  %r953 = add i32 %r952, 0
  %r583 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 0
  %r954 = call i32 @avgPooling(i32* %r583, i32 3)
  %r955 = add i32 %r954, 0
  %r956 = add i32 0, 0
  br label %bb109

bb109:
  %r957 = phi i32 [ %r956, %bb108 ], [ %r962, %bb110 ]
  %r958 = icmp slt i32 %r957, 32
  br i1 %r958, label %bb110, label %bb111

bb110:
  %r586 = getelementptr [32 x i32 ], [32 x i32 ]* %r461, i32 0, i32 %r957
  %r959 = load i32, i32* %r586
  %r960 = add i32 %r959, 0
  call void @putint(i32 %r960)
  %r961 = add i32 %r957, 1
  %r962 = add i32 %r961, 0
  br label %bb109

bb111:
  call void @_sysy_stoptime(i32 312)
  ret i32 0
}

