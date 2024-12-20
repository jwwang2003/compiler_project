declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @mod( i32 %r100, i32 %r102 ) {
mod:
  %r145 = add i32 0, 0
  %r146 = add i32 %r100, 0
  %r147 = add i32 0, 0
  %r148 = add i32 %r102, 0
  %r149 = sdiv i32 %r146, %r148
  %r150 = mul i32 %r149, %r148
  %r151 = sub i32 %r146, %r150
  ret i32 %r151
}

define i32 @split( i32 %r111, i32* %r113 ) {
split:
  %r154 = add i32 0, 0
  %r155 = add i32 %r111, 0
  %r156 = add i32 0, 0
  %r157 = load i32, i32* @N
  %r158 = sub i32 %r157, 1
  %r159 = add i32 %r158, 0
  br label %bb1

bb1:
  %r160 = phi i32 [ %r159, %split ], [ %r167, %bb2 ]
  %r161 = phi i32 [ %r155, %split ], [ %r165, %bb2 ]
  %r162 = icmp ne i32 %r160, -1
  br i1 %r162, label %bb2, label %bb3

bb2:
  %r119 = getelementptr i32, i32* %r113, i32 %r160
  %r163 = call i32 @mod(i32 %r161, i32 10)
  store i32 %r163, i32* %r119
  %r164 = sdiv i32 %r161, 10
  %r165 = add i32 %r164, 0
  %r166 = sub i32 %r160, 1
  %r167 = add i32 %r166, 0
  br label %bb1

bb3:
  ret i32 0
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 26)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r171 = add i32 0, 0
  %r172 = add i32 0, 0
  %r129 = alloca [ 4 x i32 ]
  %r173 = add i32 1478, 0
  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r129, i32 0, i32 0
  %r174 = call i32 @split(i32 %r173, i32* %r132)
  %r175 = add i32 %r174, 0
  %r176 = add i32 0, 0
  %r177 = add i32 0, 0
  br label %bb4

bb4:
  %r178 = phi i32 [ %r177, %main ], [ %r184, %bb5 ]
  %r179 = icmp slt i32 %r178, 4
  br i1 %r179, label %bb5, label %bb6

bb5:
  %r136 = getelementptr [4 x i32 ], [4 x i32 ]* %r129, i32 0, i32 %r178
  %r180 = load i32, i32* %r136
  %r181 = add i32 %r180, 0
  call void @putint(i32 %r181)
  %r182 = load i32, i32* @newline
  call void @putch(i32 %r182)
  %r183 = add i32 %r178, 1
  %r184 = add i32 %r183, 0
  br label %bb4

bb6:
  call void @_sysy_stoptime(i32 42)
  ret i32 0
}

