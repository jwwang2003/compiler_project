declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
main:
  %r159 = add i32 0, 0
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  %r164 = add i32 0, 0
  %r165 = add i32 0, 0
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r168 = add i32 0, 0
  %r169 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  br label %bb1

bb1:
  %r172 = phi i32 [ %r171, %main ], [ %r212, %bb2 ]
  %r173 = icmp slt i32 %r172, 10
  br i1 %r173, label %bb2, label %bb3

bb2:
  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r172
  %r210 = add i32 %r172, 1
  store i32 %r210, i32* %r105
  %r211 = add i32 %r172, 1
  %r212 = add i32 %r211, 0
  br label %bb1

bb3:
  %r174 = add i32 10, 0
  %r175 = call i32 @getint()
  %r176 = add i32 %r175, 0
  %r177 = sub i32 %r174, 1
  %r178 = add i32 %r177, 0
  %r179 = add i32 0, 0
  %r180 = add i32 %r178, %r179
  %r181 = sdiv i32 %r180, 2
  %r182 = add i32 %r181, 0
  %r183 = add i32 0, 0
  %r184 = add i32 0, 0
  %r185 = add i32 0, 0
  br label %bb4

bb4:
  %r186 = phi i32 [ %r184, %bb3 ], [ %r203, %bb16 ]
  %r187 = phi i32 [ %r185, %bb3 ], [ %r200, %bb16 ]
  %r188 = phi i32 [ %r183, %bb3 ], [ %r201, %bb16 ]
  %r189 = icmp slt i32 %r186, 10
  br i1 %r189, label %bb7, label %bb8

bb7:
  %r209 = add i32 1, 0
  br label %bb9

bb8:
  %r208 = add i32 0, 0
  br label %bb9

bb9:
  %r190 = phi i32 [ %r209, %bb7 ], [ %r208, %bb8 ]
  %r191 = icmp ne i32 %r190, 0
  br i1 %r191, label %bb10, label %bb6

bb10:
  %r195 = icmp eq i32 %r188, 0
  br i1 %r195, label %bb11, label %bb12

bb11:
  %r207 = add i32 1, 0
  br label %bb13

bb12:
  %r206 = add i32 0, 0
  br label %bb13

bb13:
  %r196 = phi i32 [ %r207, %bb11 ], [ %r206, %bb12 ]
  %r197 = icmp ne i32 %r196, 0
  br i1 %r197, label %bb5, label %bb6

bb5:
  %r136 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r186
  %r198 = load i32, i32* %r136
  %r199 = icmp eq i32 %r198, %r176
  br i1 %r199, label %bb14, label %bb16

bb14:
  %r204 = add i32 1, 0
  %r205 = add i32 %r186, 0
  br label %bb16

bb16:
  %r200 = phi i32 [ %r187, %bb5 ], [ %r205, %bb14 ]
  %r201 = phi i32 [ %r188, %bb5 ], [ %r204, %bb14 ]
  %r202 = add i32 %r186, 1
  %r203 = add i32 %r202, 0
  br label %bb4

bb6:
  %r192 = icmp eq i32 %r188, 1
  br i1 %r192, label %bb17, label %bb18

bb17:
  call void @putint(i32 %r187)
  br label %bb19

bb18:
  %r194 = add i32 0, 0
  call void @putint(i32 %r194)
  br label %bb19

bb19:
  %r193 = add i32 10, 0
  call void @putch(i32 %r193)
  call void @_sysy_stoptime(i32 53)
  ret i32 0
}

