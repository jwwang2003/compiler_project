declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @uniquePaths( i32 %r100, i32 %r102 ) {
uniquePaths:
  %r196 = add i32 0, 0
  %r197 = add i32 0, 0
  %r198 = add i32 0, 0
  %r199 = add i32 0, 0
  %r200 = add i32 0, 0
  %r114 = alloca [ 9 x i32 ]
  %r201 = add i32 0, 0
  %r202 = add i32 0, 0
  %r203 = add i32 %r100, 0
  %r204 = add i32 0, 0
  %r205 = add i32 %r102, 0
  %r206 = add i32 0, 0
  %r207 = icmp eq i32 %r203, 1
  br i1 %r207, label %bb4, label %bb5

bb4:
  %r261 = add i32 1, 0
  br label %bb6

bb5:
  %r260 = add i32 0, 0
  br label %bb6

bb6:
  %r208 = phi i32 [ %r261, %bb4 ], [ %r260, %bb5 ]
  %r209 = icmp ne i32 %r208, 0
  br i1 %r209, label %bb1, label %bb7

bb7:
  %r210 = icmp eq i32 %r205, 1
  br i1 %r210, label %bb8, label %bb9

bb8:
  %r259 = add i32 1, 0
  br label %bb10

bb9:
  %r258 = add i32 0, 0
  br label %bb10

bb10:
  %r211 = phi i32 [ %r259, %bb8 ], [ %r258, %bb9 ]
  %r212 = icmp ne i32 %r211, 0
  br i1 %r212, label %bb1, label %bb3

bb1:
  ret i32 1
bb3:
  %r213 = add i32 0, 0
  br label %bb11

bb11:
  %r214 = phi i32 [ %r213, %bb3 ], [ %r257, %bb12 ]
  %r215 = icmp slt i32 %r214, %r203
  br i1 %r215, label %bb12, label %bb13

bb12:
  %r252 = mul i32 %r214, 3
  %r253 = add i32 %r252, %r205
  %r254 = sub i32 %r253, 1
  %r255 = add i32 %r254, 0
  %r128 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 %r255
  store i32 1, i32* %r128
  %r256 = add i32 %r214, 1
  %r257 = add i32 %r256, 0
  br label %bb11

bb13:
  %r216 = add i32 0, 0
  br label %bb14

bb14:
  %r217 = phi i32 [ %r216, %bb13 ], [ %r251, %bb15 ]
  %r218 = icmp slt i32 %r217, %r205
  br i1 %r218, label %bb15, label %bb16

bb15:
  %r246 = sub i32 %r203, 1
  %r247 = mul i32 %r246, 3
  %r248 = add i32 %r247, %r217
  %r249 = add i32 %r248, 0
  %r140 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 %r249
  store i32 1, i32* %r140
  %r250 = add i32 %r217, 1
  %r251 = add i32 %r250, 0
  br label %bb14

bb16:
  %r219 = sub i32 %r203, 2
  %r220 = add i32 %r219, 0
  br label %bb17

bb17:
  %r221 = phi i32 [ %r220, %bb16 ], [ %r229, %bb22 ]
  %r222 = icmp sgt i32 %r221, -1
  br i1 %r222, label %bb18, label %bb19

bb18:
  %r224 = sub i32 %r205, 2
  %r225 = add i32 %r224, 0
  br label %bb20

bb20:
  %r226 = phi i32 [ %r225, %bb18 ], [ %r245, %bb21 ]
  %r227 = icmp sgt i32 %r226, -1
  br i1 %r227, label %bb21, label %bb22

bb21:
  %r230 = mul i32 %r221, 3
  %r231 = add i32 %r230, %r226
  %r232 = add i32 %r231, 0
  %r233 = add i32 %r221, 1
  %r234 = mul i32 %r233, 3
  %r235 = add i32 %r234, %r226
  %r236 = add i32 %r235, 0
  %r237 = mul i32 %r221, 3
  %r238 = add i32 %r237, %r226
  %r239 = add i32 %r238, 1
  %r240 = add i32 %r239, 0
  %r166 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 %r232
  %r168 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 %r236
  %r170 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 %r240
  %r241 = load i32, i32* %r168
  %r242 = load i32, i32* %r170
  %r243 = add i32 %r241, %r242
  store i32 %r243, i32* %r166
  %r244 = sub i32 %r226, 1
  %r245 = add i32 %r244, 0
  br label %bb20

bb22:
  %r228 = sub i32 %r221, 1
  %r229 = add i32 %r228, 0
  br label %bb17

bb19:
  %r179 = getelementptr [9 x i32 ], [9 x i32 ]* %r114, i32 0, i32 0
  %r223 = load i32, i32* %r179
  ret i32 %r223
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 40)
  %r264 = add i32 0, 0
  %r265 = add i32 0, 0
  %r266 = add i32 3, 0
  %r267 = call i32 @uniquePaths(i32 %r266, i32 %r266)
  %r268 = add i32 %r267, 0
  call void @_sysy_stoptime(i32 45)
  ret i32 %r268
}

