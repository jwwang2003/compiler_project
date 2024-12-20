declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
swap:
  %r232 = add i32 0, 0
  %r233 = add i32 %r101, 0
  %r234 = add i32 0, 0
  %r235 = add i32 %r103, 0
  %r236 = add i32 0, 0
  %r106 = getelementptr i32, i32* %r100, i32 %r233
  %r237 = load i32, i32* %r106
  %r238 = add i32 %r237, 0
  %r109 = getelementptr i32, i32* %r100, i32 %r233
  %r111 = getelementptr i32, i32* %r100, i32 %r235
  %r239 = load i32, i32* %r111
  store i32 %r239, i32* %r109
  %r114 = getelementptr i32, i32* %r100, i32 %r235
  store i32 %r238, i32* %r114
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
heap_ajust:
  %r247 = add i32 0, 0
  %r248 = add i32 0, 0
  %r249 = add i32 0, 0
  %r250 = add i32 0, 0
  %r251 = add i32 %r118, 0
  %r252 = add i32 0, 0
  %r253 = add i32 %r120, 0
  %r254 = add i32 0, 0
  %r255 = add i32 %r251, 0
  %r256 = add i32 0, 0
  %r257 = mul i32 %r255, 2
  %r258 = add i32 %r257, 1
  %r259 = add i32 %r258, 0
  br label %bb1

bb1:
  %r260 = phi i32 [ %r259, %heap_ajust ], [ %r278, %bb15 ]
  %r261 = phi i32 [ %r255, %heap_ajust ], [ %r275, %bb15 ]
  %r262 = add i32 %r253, 1
  %r263 = icmp slt i32 %r260, %r262
  br i1 %r263, label %bb2, label %bb3

bb2:
  %r264 = add i32 %r260, 1
  %r265 = add i32 %r264, 0
  %r266 = icmp slt i32 %r260, %r253
  br i1 %r266, label %bb7, label %bb8

bb7:
  %r289 = add i32 1, 0
  br label %bb9

bb8:
  %r288 = add i32 0, 0
  br label %bb9

bb9:
  %r267 = phi i32 [ %r289, %bb7 ], [ %r288, %bb8 ]
  %r268 = icmp ne i32 %r267, 0
  br i1 %r268, label %bb10, label %bb6

bb10:
  %r143 = getelementptr i32, i32* %r117, i32 %r260
  %r279 = load i32, i32* %r143
  %r146 = getelementptr i32, i32* %r117, i32 %r265
  %r280 = load i32, i32* %r146
  %r281 = icmp slt i32 %r279, %r280
  br i1 %r281, label %bb11, label %bb12

bb11:
  %r287 = add i32 1, 0
  br label %bb13

bb12:
  %r286 = add i32 0, 0
  br label %bb13

bb13:
  %r282 = phi i32 [ %r287, %bb11 ], [ %r286, %bb12 ]
  %r283 = icmp ne i32 %r282, 0
  br i1 %r283, label %bb4, label %bb6

bb4:
  %r284 = add i32 %r260, 1
  %r285 = add i32 %r284, 0
  br label %bb6

bb6:
  %r269 = phi i32 [ %r260, %bb9 ], [ %r260, %bb13 ], [ %r285, %bb4 ]
  %r154 = getelementptr i32, i32* %r117, i32 %r261
  %r270 = load i32, i32* %r154
  %r157 = getelementptr i32, i32* %r117, i32 %r269
  %r271 = load i32, i32* %r157
  %r272 = icmp sgt i32 %r270, %r271
  br i1 %r272, label %bb14, label %bb15

bb14:
  ret i32 0
bb15:
  %r161 = getelementptr i32, i32* %r117, i32 0
  %r273 = call i32 @swap(i32* %r161, i32 %r261, i32 %r269)
  %r274 = add i32 %r273, 0
  %r275 = add i32 %r269, 0
  %r276 = mul i32 %r275, 2
  %r277 = add i32 %r276, 1
  %r278 = add i32 %r277, 0
  br label %bb1

bb3:
  ret i32 0
}

define i32 @heap_sort( i32* %r168, i32 %r169 ) {
heap_sort:
  %r294 = add i32 0, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r169, 0
  %r297 = add i32 0, 0
  %r298 = add i32 0, 0
  %r299 = sdiv i32 %r296, 2
  %r300 = sub i32 %r299, 1
  %r301 = add i32 %r300, 0
  br label %bb17

bb17:
  %r302 = phi i32 [ %r301, %heap_sort ], [ %r322, %bb18 ]
  %r303 = icmp sgt i32 %r302, -1
  br i1 %r303, label %bb18, label %bb19

bb18:
  %r317 = sub i32 %r296, 1
  %r318 = add i32 %r317, 0
  %r181 = getelementptr i32, i32* %r168, i32 0
  %r319 = call i32 @heap_ajust(i32* %r181, i32 %r302, i32 %r318)
  %r320 = add i32 %r319, 0
  %r321 = sub i32 %r302, 1
  %r322 = add i32 %r321, 0
  br label %bb17

bb19:
  %r304 = sub i32 %r296, 1
  %r305 = add i32 %r304, 0
  br label %bb20

bb20:
  %r306 = phi i32 [ %r305, %bb19 ], [ %r316, %bb21 ]
  %r307 = icmp sgt i32 %r306, 0
  br i1 %r307, label %bb21, label %bb22

bb21:
  %r308 = add i32 0, 0
  %r192 = getelementptr i32, i32* %r168, i32 0
  %r309 = call i32 @swap(i32* %r192, i32 %r308, i32 %r306)
  %r310 = add i32 %r309, 0
  %r311 = sub i32 %r306, 1
  %r312 = add i32 %r311, 0
  %r198 = getelementptr i32, i32* %r168, i32 0
  %r313 = call i32 @heap_ajust(i32* %r198, i32 %r308, i32 %r312)
  %r314 = add i32 %r313, 0
  %r315 = sub i32 %r306, 1
  %r316 = add i32 %r315, 0
  br label %bb20

bb22:
  ret i32 0
}

define i32 @main( ) {
main:
  %r325 = add i32 0, 0
  call void @_sysy_starttime(i32 50)
  store i32 10, i32* @n
  %r203 = alloca [ 10 x i32 ]
  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 0
  store i32 4, i32* %r204
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 1
  store i32 3, i32* %r205
  %r206 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 2
  store i32 9, i32* %r206
  %r207 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 3
  store i32 2, i32* %r207
  %r208 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 4
  store i32 0, i32* %r208
  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 5
  store i32 1, i32* %r209
  %r210 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 6
  store i32 6, i32* %r210
  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 7
  store i32 5, i32* %r211
  %r212 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 8
  store i32 7, i32* %r212
  %r213 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 9
  store i32 8, i32* %r213
  %r326 = add i32 0, 0
  %r327 = add i32 0, 0
  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 0
  %r328 = load i32, i32* @n
  %r329 = call i32 @heap_sort(i32* %r216, i32 %r328)
  %r330 = add i32 %r329, 0
  br label %bb23

bb23:
  %r331 = phi i32 [ %r330, %main ], [ %r338, %bb24 ]
  %r332 = load i32, i32* @n
  %r333 = icmp slt i32 %r331, %r332
  br i1 %r333, label %bb24, label %bb25

bb24:
  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r203, i32 0, i32 %r331
  %r334 = load i32, i32* %r222
  %r335 = add i32 %r334, 0
  call void @putint(i32 %r335)
  %r336 = add i32 10, 0
  call void @putch(i32 %r336)
  %r337 = add i32 %r331, 1
  %r338 = add i32 %r337, 0
  br label %bb23

bb25:
  call void @_sysy_stoptime(i32 66)
  ret i32 0
}

