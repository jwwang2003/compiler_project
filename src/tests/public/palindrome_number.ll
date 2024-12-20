declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
mod:
  %r154 = add i32 0, 0
  %r155 = add i32 %r100, 0
  %r156 = add i32 0, 0
  %r157 = add i32 %r102, 0
  %r158 = sdiv i32 %r155, %r157
  %r159 = mul i32 %r158, %r157
  %r160 = sub i32 %r155, %r159
  ret i32 %r160
}

define i32 @palindrome( i32 %r111 ) {
palindrome:
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  %r168 = add i32 0, 0
  %r169 = add i32 %r111, 0
  %r113 = alloca [ 4 x i32 ]
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  %r172 = add i32 0, 0
  br label %bb1

bb1:
  %r173 = phi i32 [ %r172, %palindrome ], [ %r197, %bb2 ]
  %r174 = phi i32 [ %r169, %palindrome ], [ %r195, %bb2 ]
  %r175 = icmp slt i32 %r173, 4
  br i1 %r175, label %bb2, label %bb3

bb2:
  %r118 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r173
  %r193 = call i32 @mod(i32 %r174, i32 10)
  store i32 %r193, i32* %r118
  %r194 = sdiv i32 %r174, 10
  %r195 = add i32 %r194, 0
  %r196 = add i32 %r173, 1
  %r197 = add i32 %r196, 0
  br label %bb1

bb3:
  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r176 = load i32, i32* %r128
  %r130 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r177 = load i32, i32* %r130
  %r178 = icmp eq i32 %r176, %r177
  br i1 %r178, label %bb7, label %bb8

bb7:
  %r192 = add i32 1, 0
  br label %bb9

bb8:
  %r191 = add i32 0, 0
  br label %bb9

bb9:
  %r179 = phi i32 [ %r192, %bb7 ], [ %r191, %bb8 ]
  %r180 = icmp ne i32 %r179, 0
  br i1 %r180, label %bb10, label %bb5

bb10:
  %r136 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r183 = load i32, i32* %r136
  %r138 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r184 = load i32, i32* %r138
  %r185 = icmp eq i32 %r183, %r184
  br i1 %r185, label %bb11, label %bb12

bb11:
  %r190 = add i32 1, 0
  br label %bb13

bb12:
  %r189 = add i32 0, 0
  br label %bb13

bb13:
  %r186 = phi i32 [ %r190, %bb11 ], [ %r189, %bb12 ]
  %r187 = icmp ne i32 %r186, 0
  br i1 %r187, label %bb4, label %bb5

bb4:
  %r188 = add i32 1, 0
  br label %bb6

bb5:
  %r181 = add i32 0, 0
  br label %bb6

bb6:
  %r182 = phi i32 [ %r188, %bb4 ], [ %r181, %bb5 ]
  ret i32 %r182
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 30)
  %r200 = add i32 0, 0
  %r201 = add i32 1221, 0
  %r202 = add i32 0, 0
  %r203 = call i32 @palindrome(i32 %r201)
  %r204 = add i32 %r203, 0
  %r205 = icmp eq i32 %r204, 1
  br i1 %r205, label %bb14, label %bb15

bb14:
  call void @putint(i32 %r201)
  br label %bb16

bb15:
  %r207 = add i32 0, 0
  call void @putint(i32 %r207)
  br label %bb16

bb16:
  %r206 = add i32 10, 0
  call void @putch(i32 %r206)
  call void @_sysy_stoptime(i32 47)
  ret i32 0
}

