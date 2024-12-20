declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @canJump( i32* %r100, i32 %r101 ) {
canJump:
  %r182 = add i32 0, 0
  %r183 = add i32 0, 0
  %r184 = add i32 0, 0
  %r110 = alloca [ 10 x i32 ]
  %r185 = add i32 0, 0
  %r186 = add i32 %r101, 0
  %r187 = icmp eq i32 %r186, 1
  br i1 %r187, label %bb1, label %bb3

bb1:
  ret i32 1
bb3:
  %r106 = getelementptr i32, i32* %r100, i32 0
  %r188 = load i32, i32* %r106
  %r189 = sub i32 %r186, 2
  %r190 = icmp sgt i32 %r188, %r189
  br i1 %r190, label %bb4, label %bb6

bb4:
  ret i32 1
bb6:
  %r191 = add i32 0, 0
  br label %bb7

bb7:
  %r192 = phi i32 [ %r191, %bb6 ], [ %r222, %bb8 ]
  %r193 = sub i32 %r186, 1
  %r194 = icmp slt i32 %r192, %r193
  br i1 %r194, label %bb8, label %bb9

bb8:
  %r116 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r192
  store i32 0, i32* %r116
  %r221 = add i32 %r192, 1
  %r222 = add i32 %r221, 0
  br label %bb7

bb9:
  %r195 = sub i32 %r186, 1
  %r196 = add i32 %r195, 0
  %r123 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r196
  store i32 1, i32* %r123
  %r197 = sub i32 %r186, 2
  %r198 = add i32 %r197, 0
  br label %bb10

bb10:
  %r199 = phi i32 [ %r198, %bb9 ], [ %r209, %bb18 ]
  %r200 = icmp sgt i32 %r199, -1
  br i1 %r200, label %bb11, label %bb12

bb11:
  %r131 = getelementptr i32, i32* %r100, i32 %r199
  %r202 = load i32, i32* %r131
  %r203 = sub i32 %r186, 1
  %r204 = sub i32 %r203, %r199
  %r205 = icmp slt i32 %r202, %r204
  br i1 %r205, label %bb13, label %bb14

bb13:
  %r138 = getelementptr i32, i32* %r100, i32 %r199
  %r219 = load i32, i32* %r138
  %r220 = add i32 %r219, 0
  br label %bb16

bb14:
  %r216 = sub i32 %r186, 1
  %r217 = sub i32 %r216, %r199
  %r218 = add i32 %r217, 0
  br label %bb16

bb16:
  %r206 = phi i32 [ %r220, %bb13 ], [ %r218, %bb14 ], [ %r215, %bb21 ]
  %r207 = icmp sgt i32 %r206, -1
  br i1 %r207, label %bb17, label %bb18

bb17:
  %r210 = add i32 %r199, %r206
  %r211 = add i32 %r210, 0
  %r151 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r211
  %r212 = load i32, i32* %r151
  %r213 = icmp ne i32 %r212, 0
  br i1 %r213, label %bb19, label %bb21

bb19:
  %r154 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r199
  store i32 1, i32* %r154
  br label %bb21

bb21:
  %r214 = sub i32 %r206, 1
  %r215 = add i32 %r214, 0
  br label %bb16

bb18:
  %r208 = sub i32 %r199, 1
  %r209 = add i32 %r208, 0
  br label %bb10

bb12:
  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0
  %r201 = load i32, i32* %r160
  ret i32 %r201
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 42)
  %r224 = add i32 0, 0
  %r163 = alloca [ 10 x i32 ]
  %r164 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 0
  store i32 3, i32* %r164
  %r165 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 1
  store i32 3, i32* %r165
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 2
  store i32 9, i32* %r166
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 3
  store i32 0, i32* %r167
  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 4
  store i32 0, i32* %r168
  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 5
  store i32 1, i32* %r169
  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 6
  store i32 1, i32* %r170
  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 7
  store i32 5, i32* %r171
  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 8
  store i32 7, i32* %r172
  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 9
  store i32 8, i32* %r173
  %r225 = add i32 10, 0
  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r163, i32 0, i32 0
  %r226 = call i32 @canJump(i32* %r175, i32 %r225)
  %r227 = add i32 %r226, 0
  call void @_sysy_stoptime(i32 49)
  ret i32 %r227
}

