declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
define i32 @insert( i32* %r100, i32 %r101 ) {
insert:
  %r171 = add i32 0, 0
  %r172 = add i32 0, 0
  %r173 = add i32 0, 0
  %r174 = add i32 0, 0
  %r175 = add i32 %r101, 0
  %r176 = add i32 0, 0
  %r177 = add i32 0, 0
  %r178 = add i32 0, 0
  br label %bb1

bb1:
  %r179 = phi i32 [ %r178, %insert ], [ %r198, %bb2 ]
  %r108 = getelementptr i32, i32* %r100, i32 %r179
  %r180 = load i32, i32* %r108
  %r181 = icmp sgt i32 %r175, %r180
  br i1 %r181, label %bb4, label %bb5

bb4:
  %r202 = add i32 1, 0
  br label %bb6

bb5:
  %r201 = add i32 0, 0
  br label %bb6

bb6:
  %r182 = phi i32 [ %r202, %bb4 ], [ %r201, %bb5 ]
  %r183 = icmp ne i32 %r182, 0
  br i1 %r183, label %bb7, label %bb3

bb7:
  %r193 = load i32, i32* @N
  %r194 = icmp slt i32 %r179, %r193
  br i1 %r194, label %bb8, label %bb9

bb8:
  %r200 = add i32 1, 0
  br label %bb10

bb9:
  %r199 = add i32 0, 0
  br label %bb10

bb10:
  %r195 = phi i32 [ %r200, %bb8 ], [ %r199, %bb9 ]
  %r196 = icmp ne i32 %r195, 0
  br i1 %r196, label %bb2, label %bb3

bb2:
  %r197 = add i32 %r179, 1
  %r198 = add i32 %r197, 0
  br label %bb1

bb3:
  %r184 = load i32, i32* @N
  %r185 = add i32 %r184, 0
  br label %bb11

bb11:
  %r186 = phi i32 [ %r185, %bb3 ], [ %r192, %bb12 ]
  %r187 = icmp sgt i32 %r186, %r179
  br i1 %r187, label %bb12, label %bb13

bb12:
  %r188 = sub i32 %r186, 1
  %r189 = add i32 %r188, 0
  %r128 = getelementptr i32, i32* %r100, i32 %r186
  %r130 = getelementptr i32, i32* %r100, i32 %r189
  %r190 = load i32, i32* %r130
  store i32 %r190, i32* %r128
  %r133 = getelementptr i32, i32* %r100, i32 %r179
  store i32 %r175, i32* %r133
  %r191 = sub i32 %r186, 1
  %r192 = add i32 %r191, 0
  br label %bb11

bb13:
  ret i32 0
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 27)
  store i32 10, i32* @N
  %r138 = alloca [ 11 x i32 ]
  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 0
  store i32 1, i32* %r139
  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 1
  store i32 3, i32* %r140
  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 2
  store i32 4, i32* %r141
  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 3
  store i32 7, i32* %r142
  %r143 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 4
  store i32 8, i32* %r143
  %r144 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 5
  store i32 11, i32* %r144
  %r145 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 6
  store i32 13, i32* %r145
  %r146 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 7
  store i32 18, i32* %r146
  %r147 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 8
  store i32 56, i32* %r147
  %r148 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 9
  store i32 78, i32* %r148
  %r205 = add i32 0, 0
  %r206 = add i32 0, 0
  %r207 = add i32 0, 0
  %r208 = call i32 @getint()
  %r209 = add i32 %r208, 0
  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 0
  %r210 = call i32 @insert(i32* %r153, i32 %r209)
  %r211 = add i32 %r210, 0
  br label %bb14

bb14:
  %r212 = phi i32 [ %r207, %main ], [ %r219, %bb15 ]
  %r213 = load i32, i32* @N
  %r214 = icmp slt i32 %r212, %r213
  br i1 %r214, label %bb15, label %bb16

bb15:
  %r158 = getelementptr [11 x i32 ], [11 x i32 ]* %r138, i32 0, i32 %r212
  %r215 = load i32, i32* %r158
  %r216 = add i32 %r215, 0
  call void @putint(i32 %r216)
  %r217 = add i32 10, 0
  call void @putch(i32 %r217)
  %r218 = add i32 %r212, 1
  %r219 = add i32 %r218, 0
  br label %bb14

bb16:
  call void @_sysy_stoptime(i32 54)
  ret i32 0
}

