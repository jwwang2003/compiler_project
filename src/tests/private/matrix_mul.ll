declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@M = global i32 0
@L = global i32 0
@N = global i32 0
define i32 @mul( i32* %r100, i32* %r101, i32* %r102, i32* %r103, i32* %r104, i32* %r105, i32* %r106, i32* %r107, i32* %r108 ) {
mul:
  %r347 = add i32 0, 0
  %r348 = add i32 0, 0
  %r110 = getelementptr i32, i32* %r106, i32 0
  %r111 = getelementptr i32, i32* %r100, i32 0
  %r112 = getelementptr i32, i32* %r103, i32 0
  %r349 = load i32, i32* %r111
  %r350 = load i32, i32* %r112
  %r351 = mul i32 %r349, %r350
  %r116 = getelementptr i32, i32* %r100, i32 1
  %r117 = getelementptr i32, i32* %r104, i32 0
  %r352 = load i32, i32* %r116
  %r353 = load i32, i32* %r117
  %r354 = mul i32 %r352, %r353
  %r355 = add i32 %r351, %r354
  %r122 = getelementptr i32, i32* %r100, i32 2
  %r123 = getelementptr i32, i32* %r105, i32 0
  %r356 = load i32, i32* %r122
  %r357 = load i32, i32* %r123
  %r358 = mul i32 %r356, %r357
  %r359 = add i32 %r355, %r358
  store i32 %r359, i32* %r110
  %r128 = getelementptr i32, i32* %r106, i32 1
  %r129 = getelementptr i32, i32* %r100, i32 0
  %r130 = getelementptr i32, i32* %r103, i32 1
  %r360 = load i32, i32* %r129
  %r361 = load i32, i32* %r130
  %r362 = mul i32 %r360, %r361
  %r134 = getelementptr i32, i32* %r100, i32 1
  %r135 = getelementptr i32, i32* %r104, i32 1
  %r363 = load i32, i32* %r134
  %r364 = load i32, i32* %r135
  %r365 = mul i32 %r363, %r364
  %r366 = add i32 %r362, %r365
  %r140 = getelementptr i32, i32* %r100, i32 2
  %r141 = getelementptr i32, i32* %r105, i32 1
  %r367 = load i32, i32* %r140
  %r368 = load i32, i32* %r141
  %r369 = mul i32 %r367, %r368
  %r370 = add i32 %r366, %r369
  store i32 %r370, i32* %r128
  %r146 = getelementptr i32, i32* %r106, i32 2
  %r147 = getelementptr i32, i32* %r100, i32 0
  %r148 = getelementptr i32, i32* %r103, i32 2
  %r371 = load i32, i32* %r147
  %r372 = load i32, i32* %r148
  %r373 = mul i32 %r371, %r372
  %r152 = getelementptr i32, i32* %r100, i32 1
  %r153 = getelementptr i32, i32* %r104, i32 2
  %r374 = load i32, i32* %r152
  %r375 = load i32, i32* %r153
  %r376 = mul i32 %r374, %r375
  %r377 = add i32 %r373, %r376
  %r158 = getelementptr i32, i32* %r100, i32 2
  %r159 = getelementptr i32, i32* %r105, i32 2
  %r378 = load i32, i32* %r158
  %r379 = load i32, i32* %r159
  %r380 = mul i32 %r378, %r379
  %r381 = add i32 %r377, %r380
  store i32 %r381, i32* %r146
  %r164 = getelementptr i32, i32* %r107, i32 0
  %r165 = getelementptr i32, i32* %r101, i32 0
  %r166 = getelementptr i32, i32* %r103, i32 0
  %r382 = load i32, i32* %r165
  %r383 = load i32, i32* %r166
  %r384 = mul i32 %r382, %r383
  %r170 = getelementptr i32, i32* %r101, i32 1
  %r171 = getelementptr i32, i32* %r104, i32 0
  %r385 = load i32, i32* %r170
  %r386 = load i32, i32* %r171
  %r387 = mul i32 %r385, %r386
  %r388 = add i32 %r384, %r387
  %r176 = getelementptr i32, i32* %r101, i32 2
  %r177 = getelementptr i32, i32* %r105, i32 0
  %r389 = load i32, i32* %r176
  %r390 = load i32, i32* %r177
  %r391 = mul i32 %r389, %r390
  %r392 = add i32 %r388, %r391
  store i32 %r392, i32* %r164
  %r182 = getelementptr i32, i32* %r107, i32 1
  %r183 = getelementptr i32, i32* %r101, i32 0
  %r184 = getelementptr i32, i32* %r103, i32 1
  %r393 = load i32, i32* %r183
  %r394 = load i32, i32* %r184
  %r395 = mul i32 %r393, %r394
  %r188 = getelementptr i32, i32* %r101, i32 1
  %r189 = getelementptr i32, i32* %r104, i32 1
  %r396 = load i32, i32* %r188
  %r397 = load i32, i32* %r189
  %r398 = mul i32 %r396, %r397
  %r399 = add i32 %r395, %r398
  %r194 = getelementptr i32, i32* %r101, i32 2
  %r195 = getelementptr i32, i32* %r105, i32 1
  %r400 = load i32, i32* %r194
  %r401 = load i32, i32* %r195
  %r402 = mul i32 %r400, %r401
  %r403 = add i32 %r399, %r402
  store i32 %r403, i32* %r182
  %r200 = getelementptr i32, i32* %r107, i32 2
  %r201 = getelementptr i32, i32* %r101, i32 0
  %r202 = getelementptr i32, i32* %r103, i32 2
  %r404 = load i32, i32* %r201
  %r405 = load i32, i32* %r202
  %r406 = mul i32 %r404, %r405
  %r206 = getelementptr i32, i32* %r101, i32 1
  %r207 = getelementptr i32, i32* %r104, i32 2
  %r407 = load i32, i32* %r206
  %r408 = load i32, i32* %r207
  %r409 = mul i32 %r407, %r408
  %r410 = add i32 %r406, %r409
  %r212 = getelementptr i32, i32* %r101, i32 2
  %r213 = getelementptr i32, i32* %r105, i32 2
  %r411 = load i32, i32* %r212
  %r412 = load i32, i32* %r213
  %r413 = mul i32 %r411, %r412
  %r414 = add i32 %r410, %r413
  store i32 %r414, i32* %r200
  %r218 = getelementptr i32, i32* %r108, i32 0
  %r219 = getelementptr i32, i32* %r102, i32 0
  %r220 = getelementptr i32, i32* %r103, i32 0
  %r415 = load i32, i32* %r219
  %r416 = load i32, i32* %r220
  %r417 = mul i32 %r415, %r416
  %r224 = getelementptr i32, i32* %r102, i32 1
  %r225 = getelementptr i32, i32* %r104, i32 0
  %r418 = load i32, i32* %r224
  %r419 = load i32, i32* %r225
  %r420 = mul i32 %r418, %r419
  %r421 = add i32 %r417, %r420
  %r230 = getelementptr i32, i32* %r102, i32 2
  %r231 = getelementptr i32, i32* %r105, i32 0
  %r422 = load i32, i32* %r230
  %r423 = load i32, i32* %r231
  %r424 = mul i32 %r422, %r423
  %r425 = add i32 %r421, %r424
  store i32 %r425, i32* %r218
  %r236 = getelementptr i32, i32* %r108, i32 1
  %r237 = getelementptr i32, i32* %r102, i32 0
  %r238 = getelementptr i32, i32* %r103, i32 1
  %r426 = load i32, i32* %r237
  %r427 = load i32, i32* %r238
  %r428 = mul i32 %r426, %r427
  %r242 = getelementptr i32, i32* %r102, i32 1
  %r243 = getelementptr i32, i32* %r104, i32 1
  %r429 = load i32, i32* %r242
  %r430 = load i32, i32* %r243
  %r431 = mul i32 %r429, %r430
  %r432 = add i32 %r428, %r431
  %r248 = getelementptr i32, i32* %r102, i32 2
  %r249 = getelementptr i32, i32* %r105, i32 1
  %r433 = load i32, i32* %r248
  %r434 = load i32, i32* %r249
  %r435 = mul i32 %r433, %r434
  %r436 = add i32 %r432, %r435
  store i32 %r436, i32* %r236
  %r254 = getelementptr i32, i32* %r108, i32 2
  %r255 = getelementptr i32, i32* %r102, i32 0
  %r256 = getelementptr i32, i32* %r103, i32 2
  %r437 = load i32, i32* %r255
  %r438 = load i32, i32* %r256
  %r439 = mul i32 %r437, %r438
  %r260 = getelementptr i32, i32* %r102, i32 1
  %r261 = getelementptr i32, i32* %r104, i32 2
  %r440 = load i32, i32* %r260
  %r441 = load i32, i32* %r261
  %r442 = mul i32 %r440, %r441
  %r443 = add i32 %r439, %r442
  %r266 = getelementptr i32, i32* %r102, i32 2
  %r267 = getelementptr i32, i32* %r105, i32 2
  %r444 = load i32, i32* %r266
  %r445 = load i32, i32* %r267
  %r446 = mul i32 %r444, %r445
  %r447 = add i32 %r443, %r446
  store i32 %r447, i32* %r254
  ret i32 0
}

define i32 @main( ) {
main:
  %r450 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 3, i32* @N
  store i32 3, i32* @M
  store i32 3, i32* @L
  %r272 = alloca [ 3 x i32 ]
  %r273 = alloca [ 3 x i32 ]
  %r274 = alloca [ 3 x i32 ]
  %r275 = alloca [ 3 x i32 ]
  %r276 = alloca [ 3 x i32 ]
  %r277 = alloca [ 3 x i32 ]
  %r278 = alloca [ 6 x i32 ]
  %r279 = alloca [ 3 x i32 ]
  %r280 = alloca [ 3 x i32 ]
  %r451 = add i32 0, 0
  %r452 = add i32 0, 0
  br label %bb1

bb1:
  %r453 = phi i32 [ %r452, %main ], [ %r485, %bb2 ]
  %r454 = load i32, i32* @M
  %r455 = icmp slt i32 %r453, %r454
  br i1 %r455, label %bb2, label %bb3

bb2:
  %r285 = getelementptr [3 x i32 ], [3 x i32 ]* %r272, i32 0, i32 %r453
  store i32 %r453, i32* %r285
  %r288 = getelementptr [3 x i32 ], [3 x i32 ]* %r273, i32 0, i32 %r453
  store i32 %r453, i32* %r288
  %r291 = getelementptr [3 x i32 ], [3 x i32 ]* %r274, i32 0, i32 %r453
  store i32 %r453, i32* %r291
  %r294 = getelementptr [3 x i32 ], [3 x i32 ]* %r275, i32 0, i32 %r453
  store i32 %r453, i32* %r294
  %r297 = getelementptr [3 x i32 ], [3 x i32 ]* %r276, i32 0, i32 %r453
  store i32 %r453, i32* %r297
  %r300 = getelementptr [3 x i32 ], [3 x i32 ]* %r277, i32 0, i32 %r453
  store i32 %r453, i32* %r300
  %r484 = add i32 %r453, 1
  %r485 = add i32 %r484, 0
  br label %bb1

bb3:
  %r306 = getelementptr [3 x i32 ], [3 x i32 ]* %r272, i32 0, i32 0
  %r307 = getelementptr [3 x i32 ], [3 x i32 ]* %r273, i32 0, i32 0
  %r308 = getelementptr [3 x i32 ], [3 x i32 ]* %r274, i32 0, i32 0
  %r309 = getelementptr [3 x i32 ], [3 x i32 ]* %r275, i32 0, i32 0
  %r310 = getelementptr [3 x i32 ], [3 x i32 ]* %r276, i32 0, i32 0
  %r311 = getelementptr [3 x i32 ], [3 x i32 ]* %r277, i32 0, i32 0
  %r312 = getelementptr [6 x i32 ], [6 x i32 ]* %r278, i32 0, i32 0
  %r313 = getelementptr [3 x i32 ], [3 x i32 ]* %r279, i32 0, i32 0
  %r314 = getelementptr [3 x i32 ], [3 x i32 ]* %r280, i32 0, i32 0
  %r456 = call i32 @mul(i32* %r306, i32* %r307, i32* %r308, i32* %r309, i32* %r310, i32* %r311, i32* %r312, i32* %r313, i32* %r314)
  %r457 = add i32 %r456, 0
  br label %bb4

bb4:
  %r458 = phi i32 [ %r457, %bb3 ], [ %r483, %bb5 ]
  %r459 = load i32, i32* @N
  %r460 = icmp slt i32 %r458, %r459
  br i1 %r460, label %bb5, label %bb6

bb5:
  %r319 = getelementptr [6 x i32 ], [6 x i32 ]* %r278, i32 0, i32 %r458
  %r480 = load i32, i32* %r319
  %r481 = add i32 %r480, 0
  call void @putint(i32 %r481)
  %r482 = add i32 %r458, 1
  %r483 = add i32 %r482, 0
  br label %bb4

bb6:
  %r461 = add i32 10, 0
  %r462 = add i32 0, 0
  call void @putch(i32 %r461)
  br label %bb7

bb7:
  %r463 = phi i32 [ %r462, %bb6 ], [ %r479, %bb8 ]
  %r464 = load i32, i32* @N
  %r465 = icmp slt i32 %r463, %r464
  br i1 %r465, label %bb8, label %bb9

bb8:
  %r329 = getelementptr [3 x i32 ], [3 x i32 ]* %r279, i32 0, i32 %r463
  %r476 = load i32, i32* %r329
  %r477 = add i32 %r476, 0
  call void @putint(i32 %r477)
  %r478 = add i32 %r463, 1
  %r479 = add i32 %r478, 0
  br label %bb7

bb9:
  %r466 = add i32 10, 0
  %r467 = add i32 0, 0
  call void @putch(i32 %r466)
  br label %bb10

bb10:
  %r468 = phi i32 [ %r467, %bb9 ], [ %r475, %bb11 ]
  %r469 = load i32, i32* @N
  %r470 = icmp slt i32 %r468, %r469
  br i1 %r470, label %bb11, label %bb12

bb11:
  %r339 = getelementptr [3 x i32 ], [3 x i32 ]* %r280, i32 0, i32 %r468
  %r472 = load i32, i32* %r339
  %r473 = add i32 %r472, 0
  call void @putint(i32 %r473)
  %r474 = add i32 %r468, 1
  %r475 = add i32 %r474, 0
  br label %bb10

bb12:
  %r471 = add i32 10, 0
  call void @putch(i32 %r471)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

