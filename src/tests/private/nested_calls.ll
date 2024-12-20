declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @func1( i32 %r100, i32 %r102, i32 %r104 ) {
func1:
  %r280 = add i32 0, 0
  %r281 = add i32 %r100, 0
  %r282 = add i32 0, 0
  %r283 = add i32 %r102, 0
  %r284 = add i32 0, 0
  %r285 = add i32 %r104, 0
  %r286 = icmp eq i32 %r285, 0
  br i1 %r286, label %bb1, label %bb2

bb1:
  %r289 = mul i32 %r281, %r283
  ret i32 %r289
bb2:
  %r287 = sub i32 %r283, %r285
  %r288 = call i32 @func1(i32 %r281, i32 %r287, i32 0)
  ret i32 %r288
}

define i32 @func2( i32 %r116, i32 %r118 ) {
func2:
  %r292 = add i32 0, 0
  %r293 = add i32 %r116, 0
  %r294 = add i32 0, 0
  %r295 = add i32 %r118, 0
  %r296 = icmp ne i32 %r295, 0
  br i1 %r296, label %bb4, label %bb5

bb4:
  %r297 = sdiv i32 %r293, %r295
  %r298 = mul i32 %r297, %r295
  %r299 = sub i32 %r293, %r298
  %r300 = call i32 @func2(i32 %r299, i32 0)
  ret i32 %r300
bb5:
  ret i32 %r293
}

define i32 @func3( i32 %r131, i32 %r133 ) {
func3:
  %r303 = add i32 0, 0
  %r304 = add i32 %r131, 0
  %r305 = add i32 0, 0
  %r306 = add i32 %r133, 0
  %r307 = icmp eq i32 %r306, 0
  br i1 %r307, label %bb7, label %bb8

bb7:
  %r310 = add i32 %r304, 1
  ret i32 %r310
bb8:
  %r308 = add i32 %r304, %r306
  %r309 = call i32 @func3(i32 %r308, i32 0)
  ret i32 %r309
}

define i32 @func4( i32 %r143, i32 %r145, i32 %r147 ) {
func4:
  %r314 = add i32 0, 0
  %r315 = add i32 %r143, 0
  %r316 = add i32 0, 0
  %r317 = add i32 %r145, 0
  %r318 = add i32 0, 0
  %r319 = add i32 %r147, 0
  %r320 = icmp ne i32 %r315, 0
  br i1 %r320, label %bb10, label %bb11

bb10:
  ret i32 %r317
bb11:
  ret i32 %r319
}

define i32 @func5( i32 %r153 ) {
func5:
  %r322 = add i32 0, 0
  %r323 = add i32 %r153, 0
  %r324 = sub i32 0, %r323
  ret i32 %r324
}

define i32 @func6( i32 %r157, i32 %r159 ) {
func6:
  %r329 = add i32 0, 0
  %r330 = add i32 0, 0
  %r331 = add i32 %r157, 0
  %r332 = add i32 0, 0
  %r333 = add i32 %r159, 0
  %r334 = add i32 0, 0
  %r335 = icmp ne i32 %r331, 0
  br i1 %r335, label %bb16, label %bb17

bb16:
  %r344 = add i32 1, 0
  br label %bb18

bb17:
  %r343 = add i32 0, 0
  br label %bb18

bb18:
  %r336 = phi i32 [ %r344, %bb16 ], [ %r343, %bb17 ]
  %r337 = icmp ne i32 %r336, 0
  br i1 %r337, label %bb19, label %bb14

bb19:
  %r338 = icmp ne i32 %r333, 0
  br i1 %r338, label %bb20, label %bb21

bb20:
  %r342 = add i32 1, 0
  br label %bb22

bb21:
  %r341 = add i32 0, 0
  br label %bb22

bb22:
  %r339 = phi i32 [ %r342, %bb20 ], [ %r341, %bb21 ]
  %r340 = icmp ne i32 %r339, 0
  br i1 %r340, label %bb13, label %bb14

bb13:
  ret i32 1
bb14:
  ret i32 0
}

define i32 @func7( i32 %r171 ) {
func7:
  %r346 = add i32 0, 0
  %r347 = add i32 %r171, 0
  %r348 = icmp ne i32 %r347, 0
  br i1 %r348, label %bb24, label %bb23

bb23:
  ret i32 1
bb24:
  ret i32 0
}

define i32 @main( ) {
main:
  %r355 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r356 = call i32 @getint()
  %r357 = add i32 0, 0
  %r358 = add i32 %r356, 0
  %r359 = call i32 @getint()
  %r360 = add i32 0, 0
  %r361 = add i32 %r359, 0
  %r362 = call i32 @getint()
  %r363 = add i32 0, 0
  %r364 = add i32 %r362, 0
  %r365 = call i32 @getint()
  %r366 = add i32 0, 0
  %r367 = add i32 %r365, 0
  %r183 = alloca [ 10 x i32 ]
  %r368 = add i32 0, 0
  %r369 = add i32 0, 0
  br label %bb26

bb26:
  %r370 = phi i32 [ %r369, %main ], [ %r429, %bb27 ]
  %r371 = icmp slt i32 %r370, 10
  br i1 %r371, label %bb27, label %bb28

bb27:
  %r187 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 %r370
  %r427 = call i32 @getint()
  store i32 %r427, i32* %r187
  %r428 = add i32 %r370, 1
  %r429 = add i32 %r428, 0
  br label %bb26

bb28:
  %r372 = call i32 @func7(i32 %r358)
  %r373 = call i32 @func5(i32 %r361)
  %r374 = call i32 @func6(i32 %r372, i32 %r373)
  %r375 = call i32 @func2(i32 %r374, i32 %r364)
  %r376 = call i32 @func3(i32 %r375, i32 %r367)
  %r377 = call i32 @func5(i32 %r376)
  %r207 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 0
  %r378 = load i32, i32* %r207
  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 1
  %r379 = load i32, i32* %r214
  %r380 = call i32 @func5(i32 %r379)
  %r217 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 2
  %r381 = load i32, i32* %r217
  %r220 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 3
  %r382 = load i32, i32* %r220
  %r383 = call i32 @func7(i32 %r382)
  %r384 = call i32 @func6(i32 %r381, i32 %r383)
  %r223 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 4
  %r385 = load i32, i32* %r223
  %r226 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 5
  %r386 = load i32, i32* %r226
  %r387 = call i32 @func7(i32 %r386)
  %r388 = call i32 @func2(i32 %r385, i32 %r387)
  %r389 = call i32 @func4(i32 %r380, i32 %r384, i32 %r388)
  %r228 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 6
  %r390 = load i32, i32* %r228
  %r391 = call i32 @func3(i32 %r389, i32 %r390)
  %r230 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 7
  %r392 = load i32, i32* %r230
  %r393 = call i32 @func2(i32 %r391, i32 %r392)
  %r233 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 8
  %r394 = load i32, i32* %r233
  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 9
  %r395 = load i32, i32* %r236
  %r396 = call i32 @func7(i32 %r395)
  %r397 = call i32 @func3(i32 %r394, i32 %r396)
  %r398 = call i32 @func1(i32 %r393, i32 %r397, i32 %r358)
  %r399 = call i32 @func4(i32 %r377, i32 %r378, i32 %r398)
  %r400 = call i32 @func7(i32 %r364)
  %r401 = call i32 @func3(i32 %r400, i32 %r367)
  %r402 = call i32 @func2(i32 %r361, i32 %r401)
  %r403 = call i32 @func3(i32 %r399, i32 %r402)
  %r245 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 0
  %r404 = load i32, i32* %r245
  %r247 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 1
  %r405 = load i32, i32* %r247
  %r406 = call i32 @func1(i32 %r403, i32 %r404, i32 %r405)
  %r249 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 2
  %r407 = load i32, i32* %r249
  %r408 = call i32 @func2(i32 %r406, i32 %r407)
  %r251 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 3
  %r409 = load i32, i32* %r251
  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 4
  %r410 = load i32, i32* %r258
  %r261 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 5
  %r411 = load i32, i32* %r261
  %r412 = call i32 @func5(i32 %r411)
  %r413 = call i32 @func3(i32 %r410, i32 %r412)
  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 6
  %r414 = load i32, i32* %r264
  %r415 = call i32 @func5(i32 %r414)
  %r416 = call i32 @func2(i32 %r413, i32 %r415)
  %r266 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 7
  %r417 = load i32, i32* %r266
  %r269 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 8
  %r418 = load i32, i32* %r269
  %r419 = call i32 @func7(i32 %r418)
  %r420 = call i32 @func1(i32 %r416, i32 %r417, i32 %r419)
  %r272 = getelementptr [10 x i32 ], [10 x i32 ]* %r183, i32 0, i32 9
  %r421 = load i32, i32* %r272
  %r422 = call i32 @func5(i32 %r421)
  %r423 = call i32 @func2(i32 %r420, i32 %r422)
  %r424 = call i32 @func3(i32 %r423, i32 %r358)
  %r425 = call i32 @func1(i32 %r408, i32 %r409, i32 %r424)
  %r426 = add i32 %r425, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r426
}

