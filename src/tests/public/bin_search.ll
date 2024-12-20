declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
main:
  %r167 = add i32 0, 0
  %r168 = add i32 0, 0
  %r169 = add i32 0, 0
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  %r172 = add i32 0, 0
  %r173 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r174 = add i32 0, 0
  %r175 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r176 = add i32 0, 0
  %r177 = add i32 0, 0
  br label %bb1

bb1:
  %r178 = phi i32 [ %r177, %main ], [ %r218, %bb2 ]
  %r179 = icmp slt i32 %r178, 10
  br i1 %r179, label %bb2, label %bb3

bb2:
  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r178
  %r216 = add i32 %r178, 1
  store i32 %r216, i32* %r105
  %r217 = add i32 %r178, 1
  %r218 = add i32 %r217, 0
  br label %bb1

bb3:
  %r180 = add i32 10, 0
  %r181 = call i32 @getint()
  %r182 = add i32 %r181, 0
  %r183 = sub i32 %r180, 1
  %r184 = add i32 %r183, 0
  %r185 = add i32 0, 0
  %r186 = add i32 %r184, %r185
  %r187 = sdiv i32 %r186, 2
  %r188 = add i32 %r187, 0
  br label %bb4

bb4:
  %r189 = phi i32 [ %r188, %bb3 ], [ %r205, %bb14 ], [ %r205, %bb15 ]
  %r190 = phi i32 [ %r185, %bb3 ], [ %r190, %bb14 ], [ %r209, %bb15 ]
  %r191 = phi i32 [ %r184, %bb3 ], [ %r211, %bb14 ], [ %r191, %bb15 ]
  %r125 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r189
  %r192 = load i32, i32* %r125
  %r193 = icmp ne i32 %r192, %r182
  br i1 %r193, label %bb7, label %bb8

bb7:
  %r215 = add i32 1, 0
  br label %bb9

bb8:
  %r214 = add i32 0, 0
  br label %bb9

bb9:
  %r194 = phi i32 [ %r215, %bb7 ], [ %r214, %bb8 ]
  %r195 = icmp ne i32 %r194, 0
  br i1 %r195, label %bb10, label %bb6

bb10:
  %r200 = icmp slt i32 %r190, %r191
  br i1 %r200, label %bb11, label %bb12

bb11:
  %r213 = add i32 1, 0
  br label %bb13

bb12:
  %r212 = add i32 0, 0
  br label %bb13

bb13:
  %r201 = phi i32 [ %r213, %bb11 ], [ %r212, %bb12 ]
  %r202 = icmp ne i32 %r201, 0
  br i1 %r202, label %bb5, label %bb6

bb5:
  %r203 = add i32 %r191, %r190
  %r204 = sdiv i32 %r203, 2
  %r205 = add i32 %r204, 0
  %r143 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r205
  %r206 = load i32, i32* %r143
  %r207 = icmp slt i32 %r182, %r206
  br i1 %r207, label %bb14, label %bb15

bb14:
  %r210 = sub i32 %r205, 1
  %r211 = add i32 %r210, 0
  br label %bb4

bb15:
  %r208 = add i32 %r205, 1
  %r209 = add i32 %r208, 0
  br label %bb4

bb6:
  %r152 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r189
  %r196 = load i32, i32* %r152
  %r197 = icmp eq i32 %r182, %r196
  br i1 %r197, label %bb17, label %bb18

bb17:
  call void @putint(i32 %r182)
  br label %bb19

bb18:
  %r199 = add i32 0, 0
  call void @putint(i32 %r199)
  br label %bb19

bb19:
  %r198 = add i32 10, 0
  call void @putch(i32 %r198)
  call void @_sysy_stoptime(i32 49)
  ret i32 0
}

