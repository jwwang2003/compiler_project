declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@ascii_0 = global i32 48
define i32 @my_getint( ) {
my_getint:
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r187 = add i32 0, 0
  %r188 = add i32 0, 0
  %r189 = add i32 0, 0
  %r190 = add i32 0, 0
  %r191 = add i32 0, 0
  br label %bb1

bb1:
  %r192 = phi i32 [ %r191, %my_getint ], [ %r218, %bb9 ], [ %r218, %bb13 ]
  %r193 = icmp sgt i32 1, 0
  br i1 %r193, label %bb2, label %bb3

bb2:
  %r215 = call i32 @getch()
  %r216 = load i32, i32* @ascii_0
  %r217 = sub i32 %r215, %r216
  %r218 = add i32 %r217, 0
  %r219 = icmp slt i32 %r218, 0
  br i1 %r219, label %bb7, label %bb8

bb7:
  %r228 = add i32 1, 0
  br label %bb9

bb8:
  %r227 = add i32 0, 0
  br label %bb9

bb9:
  %r220 = phi i32 [ %r228, %bb7 ], [ %r227, %bb8 ]
  %r221 = icmp ne i32 %r220, 0
  br i1 %r221, label %bb1, label %bb10

bb10:
  %r222 = icmp sgt i32 %r218, 9
  br i1 %r222, label %bb11, label %bb12

bb11:
  %r226 = add i32 1, 0
  br label %bb13

bb12:
  %r225 = add i32 0, 0
  br label %bb13

bb13:
  %r223 = phi i32 [ %r226, %bb11 ], [ %r225, %bb12 ]
  %r224 = icmp ne i32 %r223, 0
  br i1 %r224, label %bb1, label %bb3

bb3:
  %r194 = phi i32 [ %r192, %bb1 ], [ %r218, %bb13 ]
  %r195 = add i32 %r194, 0
  br label %bb14

bb14:
  %r196 = phi i32 [ %r195, %bb3 ], [ %r210, %bb17 ]
  %r197 = icmp sgt i32 1, 0
  br i1 %r197, label %bb15, label %bb16

bb15:
  %r198 = call i32 @getch()
  %r199 = load i32, i32* @ascii_0
  %r200 = sub i32 %r198, %r199
  %r201 = add i32 %r200, 0
  %r202 = icmp sge i32 %r201, 0
  br i1 %r202, label %bb20, label %bb21

bb20:
  %r214 = add i32 1, 0
  br label %bb22

bb21:
  %r213 = add i32 0, 0
  br label %bb22

bb22:
  %r203 = phi i32 [ %r214, %bb20 ], [ %r213, %bb21 ]
  %r204 = icmp ne i32 %r203, 0
  br i1 %r204, label %bb23, label %bb16

bb23:
  %r205 = icmp sle i32 %r201, 9
  br i1 %r205, label %bb24, label %bb25

bb24:
  %r212 = add i32 1, 0
  br label %bb26

bb25:
  %r211 = add i32 0, 0
  br label %bb26

bb26:
  %r206 = phi i32 [ %r212, %bb24 ], [ %r211, %bb25 ]
  %r207 = icmp ne i32 %r206, 0
  br i1 %r207, label %bb17, label %bb16

bb17:
  %r208 = mul i32 %r196, 10
  %r209 = add i32 %r208, %r201
  %r210 = add i32 %r209, 0
  br label %bb14

bb16:
  ret i32 %r196
}

define i32 @mod( i32 %r136, i32 %r138 ) {
mod:
  %r231 = add i32 0, 0
  %r232 = add i32 %r136, 0
  %r233 = add i32 0, 0
  %r234 = add i32 %r138, 0
  %r235 = sdiv i32 %r232, %r234
  %r236 = mul i32 %r235, %r234
  %r237 = sub i32 %r232, %r236
  ret i32 %r237
}

define void @my_putint( i32 %r147 ) {
my_putint:
  %r240 = add i32 0, 0
  %r241 = add i32 %r147, 0
  %r149 = alloca [ 16 x i32 ]
  %r242 = add i32 0, 0
  %r243 = add i32 0, 0
  br label %bb27

bb27:
  %r244 = phi i32 [ %r243, %my_putint ], [ %r258, %bb28 ]
  %r245 = phi i32 [ %r241, %my_putint ], [ %r256, %bb28 ]
  %r246 = icmp sgt i32 %r245, 0
  br i1 %r246, label %bb28, label %bb30

bb28:
  %r153 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r244
  %r252 = call i32 @mod(i32 %r245, i32 10)
  %r253 = load i32, i32* @ascii_0
  %r254 = add i32 %r252, %r253
  store i32 %r254, i32* %r153
  %r255 = sdiv i32 %r245, 10
  %r256 = add i32 %r255, 0
  %r257 = add i32 %r244, 1
  %r258 = add i32 %r257, 0
  br label %bb27

bb30:
  %r247 = phi i32 [ %r244, %bb27 ], [ %r250, %bb31 ]
  %r248 = icmp sgt i32 %r247, 0
  br i1 %r248, label %bb31, label %bb32

bb31:
  %r249 = sub i32 %r247, 1
  %r250 = add i32 %r249, 0
  %r167 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r250
  %r251 = load i32, i32* %r167
  call void @putch(i32 %r251)
  br label %bb30

bb32:
  ret void
}

define i32 @main( ) {
main:
  %r261 = add i32 0, 0
  call void @_sysy_starttime(i32 51)
  %r262 = call i32 @my_getint()
  %r263 = add i32 0, 0
  %r264 = add i32 %r262, 0
  br label %bb33

bb33:
  %r265 = phi i32 [ %r264, %main ], [ %r270, %bb34 ]
  %r266 = icmp sgt i32 %r265, 0
  br i1 %r266, label %bb34, label %bb35

bb34:
  %r267 = call i32 @my_getint()
  %r268 = add i32 %r267, 0
  call void @my_putint(i32 %r268)
  call void @putch(i32 10)
  %r269 = sub i32 %r265, 1
  %r270 = add i32 %r269, 0
  br label %bb33

bb35:
  call void @_sysy_stoptime(i32 58)
  ret i32 0
}

