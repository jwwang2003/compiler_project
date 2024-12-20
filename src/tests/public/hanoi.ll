declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define void @move( i32 %r100, i32 %r102 ) {
move:
  %r139 = add i32 0, 0
  %r140 = add i32 %r100, 0
  %r141 = add i32 0, 0
  %r142 = add i32 %r102, 0
  call void @putint(i32 %r140)
  call void @putch(i32 32)
  call void @putint(i32 %r142)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi( i32 %r106, i32 %r108, i32 %r110, i32 %r112 ) {
hanoi:
  %r147 = add i32 0, 0
  %r148 = add i32 %r106, 0
  %r149 = add i32 0, 0
  %r150 = add i32 %r108, 0
  %r151 = add i32 0, 0
  %r152 = add i32 %r110, 0
  %r153 = add i32 0, 0
  %r154 = add i32 %r112, 0
  %r155 = icmp eq i32 %r148, 1
  br i1 %r155, label %bb1, label %bb2

bb1:
  call void @move(i32 %r150, i32 %r154)
  br label %bb3

bb2:
  %r156 = sub i32 %r148, 1
  call void @hanoi(i32 %r156, i32 %r150, i32 %r154, i32 %r152)
  call void @move(i32 %r150, i32 %r154)
  %r157 = sub i32 %r148, 1
  call void @hanoi(i32 %r157, i32 %r152, i32 %r150, i32 %r154)
  br label %bb3

bb3:
  ret void
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 21)
  %r159 = call i32 @getint()
  %r160 = add i32 0, 0
  %r161 = add i32 %r159, 0
  br label %bb4

bb4:
  %r162 = phi i32 [ %r161, %main ], [ %r166, %bb5 ]
  %r163 = icmp sgt i32 %r162, 0
  br i1 %r163, label %bb5, label %bb6

bb5:
  %r164 = call i32 @getint()
  call void @hanoi(i32 %r164, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %r165 = sub i32 %r162, 1
  %r166 = add i32 %r165, 0
  br label %bb4

bb6:
  call void @_sysy_stoptime(i32 28)
  ret i32 0
}

