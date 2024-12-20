declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @Merge( i32* %r100, i32 %r101, i32 %r103, i32 %r105 ) {
Merge:
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  %r284 = add i32 0, 0
  %r285 = add i32 %r101, 0
  %r286 = add i32 0, 0
  %r287 = add i32 %r103, 0
  %r288 = add i32 0, 0
  %r289 = add i32 %r105, 0
  %r290 = add i32 0, 0
  %r291 = sub i32 %r287, %r285
  %r292 = add i32 %r291, 1
  %r293 = add i32 %r292, 0
  %r294 = add i32 0, 0
  %r295 = sub i32 %r289, %r287
  %r296 = add i32 %r295, 0
  %r116 = alloca [ 10 x i32 ]
  %r117 = alloca [ 10 x i32 ]
  %r297 = add i32 0, 0
  %r298 = add i32 0, 0
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  br label %bb1

bb1:
  %r302 = phi i32 [ %r298, %Merge ], [ %r362, %bb2 ]
  %r303 = icmp slt i32 %r302, %r293
  br i1 %r303, label %bb2, label %bb4

bb2:
  %r358 = add i32 %r302, %r285
  %r359 = add i32 %r358, 0
  %r127 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r302
  %r129 = getelementptr i32, i32* %r100, i32 %r359
  %r360 = load i32, i32* %r129
  store i32 %r360, i32* %r127
  %r361 = add i32 %r302, 1
  %r362 = add i32 %r361, 0
  br label %bb1

bb4:
  %r304 = phi i32 [ %r300, %bb1 ], [ %r357, %bb5 ]
  %r305 = icmp slt i32 %r304, %r296
  br i1 %r305, label %bb5, label %bb6

bb5:
  %r352 = add i32 %r304, %r287
  %r353 = add i32 %r352, 1
  %r354 = add i32 %r353, 0
  %r141 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r304
  %r143 = getelementptr i32, i32* %r100, i32 %r354
  %r355 = load i32, i32* %r143
  store i32 %r355, i32* %r141
  %r356 = add i32 %r304, 1
  %r357 = add i32 %r356, 0
  br label %bb4

bb6:
  %r306 = add i32 0, 0
  %r307 = add i32 0, 0
  %r308 = add i32 %r285, 0
  br label %bb7

bb7:
  %r309 = phi i32 [ %r307, %bb6 ], [ %r309, %bb17 ], [ %r342, %bb18 ]
  %r310 = phi i32 [ %r308, %bb6 ], [ %r345, %bb17 ], [ %r340, %bb18 ]
  %r311 = phi i32 [ %r306, %bb6 ], [ %r347, %bb17 ], [ %r311, %bb18 ]
  %r312 = icmp ne i32 %r311, %r293
  br i1 %r312, label %bb10, label %bb11

bb10:
  %r351 = add i32 1, 0
  br label %bb12

bb11:
  %r350 = add i32 0, 0
  br label %bb12

bb12:
  %r313 = phi i32 [ %r351, %bb10 ], [ %r350, %bb11 ]
  %r314 = icmp ne i32 %r313, 0
  br i1 %r314, label %bb13, label %bb20

bb13:
  %r331 = icmp ne i32 %r309, %r296
  br i1 %r331, label %bb14, label %bb15

bb14:
  %r349 = add i32 1, 0
  br label %bb16

bb15:
  %r348 = add i32 0, 0
  br label %bb16

bb16:
  %r332 = phi i32 [ %r349, %bb14 ], [ %r348, %bb15 ]
  %r333 = icmp ne i32 %r332, 0
  br i1 %r333, label %bb8, label %bb20

bb8:
  %r163 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r311
  %r334 = load i32, i32* %r163
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r309
  %r335 = load i32, i32* %r166
  %r336 = add i32 %r335, 1
  %r337 = icmp slt i32 %r334, %r336
  br i1 %r337, label %bb17, label %bb18

bb17:
  %r170 = getelementptr i32, i32* %r100, i32 %r310
  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r311
  %r343 = load i32, i32* %r172
  store i32 %r343, i32* %r170
  %r344 = add i32 %r310, 1
  %r345 = add i32 %r344, 0
  %r346 = add i32 %r311, 1
  %r347 = add i32 %r346, 0
  br label %bb7

bb18:
  %r179 = getelementptr i32, i32* %r100, i32 %r310
  %r181 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r309
  %r338 = load i32, i32* %r181
  store i32 %r338, i32* %r179
  %r339 = add i32 %r310, 1
  %r340 = add i32 %r339, 0
  %r341 = add i32 %r309, 1
  %r342 = add i32 %r341, 0
  br label %bb7

bb20:
  %r315 = phi i32 [ %r310, %bb12 ], [ %r310, %bb16 ], [ %r328, %bb21 ]
  %r316 = phi i32 [ %r311, %bb12 ], [ %r311, %bb16 ], [ %r330, %bb21 ]
  %r317 = icmp slt i32 %r316, %r293
  br i1 %r317, label %bb21, label %bb23

bb21:
  %r191 = getelementptr i32, i32* %r100, i32 %r315
  %r193 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r316
  %r326 = load i32, i32* %r193
  store i32 %r326, i32* %r191
  %r327 = add i32 %r315, 1
  %r328 = add i32 %r327, 0
  %r329 = add i32 %r316, 1
  %r330 = add i32 %r329, 0
  br label %bb20

bb23:
  %r318 = phi i32 [ %r309, %bb20 ], [ %r325, %bb24 ]
  %r319 = phi i32 [ %r315, %bb20 ], [ %r323, %bb24 ]
  %r320 = icmp slt i32 %r318, %r296
  br i1 %r320, label %bb24, label %bb25

bb24:
  %r203 = getelementptr i32, i32* %r100, i32 %r319
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r318
  %r321 = load i32, i32* %r205
  store i32 %r321, i32* %r203
  %r322 = add i32 %r319, 1
  %r323 = add i32 %r322, 0
  %r324 = add i32 %r318, 1
  %r325 = add i32 %r324, 0
  br label %bb23

bb25:
  ret i32 0
}

define i32 @MergeSort( i32* %r212, i32 %r213, i32 %r215 ) {
MergeSort:
  %r367 = add i32 0, 0
  %r368 = add i32 0, 0
  %r369 = add i32 0, 0
  %r370 = add i32 %r213, 0
  %r371 = add i32 0, 0
  %r372 = add i32 %r215, 0
  %r373 = icmp slt i32 %r370, %r372
  br i1 %r373, label %bb26, label %bb28

bb26:
  %r374 = add i32 %r370, %r372
  %r375 = sdiv i32 %r374, 2
  %r376 = add i32 %r375, 0
  %r227 = getelementptr i32, i32* %r212, i32 0
  %r377 = call i32 @MergeSort(i32* %r227, i32 %r370, i32 %r376)
  %r378 = add i32 %r377, 0
  %r379 = add i32 %r376, 1
  %r380 = add i32 %r379, 0
  %r233 = getelementptr i32, i32* %r212, i32 0
  %r381 = call i32 @MergeSort(i32* %r233, i32 %r380, i32 %r372)
  %r382 = add i32 %r381, 0
  %r237 = getelementptr i32, i32* %r212, i32 0
  %r383 = call i32 @Merge(i32* %r237, i32 %r370, i32 %r376, i32 %r372)
  %r384 = add i32 %r383, 0
  br label %bb28

bb28:
  ret i32 0
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 71)
  store i32 10, i32* @n
  %r241 = alloca [ 10 x i32 ]
  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 0
  store i32 4, i32* %r242
  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 1
  store i32 3, i32* %r243
  %r244 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 2
  store i32 9, i32* %r244
  %r245 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 3
  store i32 2, i32* %r245
  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 4
  store i32 0, i32* %r246
  %r247 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 5
  store i32 1, i32* %r247
  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 6
  store i32 6, i32* %r248
  %r249 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 7
  store i32 5, i32* %r249
  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 8
  store i32 7, i32* %r250
  %r251 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 9
  store i32 8, i32* %r251
  %r387 = add i32 0, 0
  %r388 = add i32 0, 0
  %r389 = add i32 0, 0
  %r390 = load i32, i32* @n
  %r391 = sub i32 %r390, 1
  %r392 = add i32 %r391, 0
  %r257 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 0
  %r393 = call i32 @MergeSort(i32* %r257, i32 %r388, i32 %r392)
  %r394 = add i32 %r393, 0
  br label %bb29

bb29:
  %r395 = phi i32 [ %r394, %main ], [ %r402, %bb30 ]
  %r396 = load i32, i32* @n
  %r397 = icmp slt i32 %r395, %r396
  br i1 %r397, label %bb30, label %bb31

bb30:
  %r263 = getelementptr [10 x i32 ], [10 x i32 ]* %r241, i32 0, i32 %r395
  %r398 = load i32, i32* %r263
  %r399 = add i32 %r398, 0
  call void @putint(i32 %r399)
  %r400 = add i32 10, 0
  call void @putch(i32 %r400)
  %r401 = add i32 %r395, 1
  %r402 = add i32 %r401, 0
  br label %bb29

bb31:
  call void @_sysy_stoptime(i32 97)
  ret i32 0
}

