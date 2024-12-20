declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
@m = global i32 0
@to = global [ 5005 x i32 ] zeroinitializer
@next = global [ 5005 x i32 ] zeroinitializer
@head = global [ 1005 x i32 ] zeroinitializer
@cnt = global i32 0
@que = global [ 1005 x i32 ] zeroinitializer
@h = global i32 0
@tail = global i32 0
@inq = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
quickread:
  %r277 = add i32 0, 0
  %r278 = add i32 0, 0
  %r279 = add i32 0, 0
  %r280 = add i32 0, 0
  %r281 = call i32 @getch()
  %r282 = add i32 0, 0
  %r283 = add i32 %r281, 0
  %r284 = add i32 0, 0
  %r285 = add i32 0, 0
  %r286 = add i32 0, 0
  %r287 = add i32 0, 0
  br label %bb1

bb1:
  %r288 = phi i32 [ %r283, %quickread ], [ %r296, %bb13 ]
  %r289 = phi i32 [ %r287, %quickread ], [ %r294, %bb13 ]
  %r290 = icmp slt i32 %r288, 48
  br i1 %r290, label %bb4, label %bb5

bb4:
  %r324 = add i32 1, 0
  br label %bb6

bb5:
  %r323 = add i32 0, 0
  br label %bb6

bb6:
  %r291 = phi i32 [ %r324, %bb4 ], [ %r323, %bb5 ]
  %r292 = icmp ne i32 %r291, 0
  br i1 %r292, label %bb2, label %bb7

bb7:
  %r298 = icmp sgt i32 %r288, 57
  br i1 %r298, label %bb8, label %bb9

bb8:
  %r322 = add i32 1, 0
  br label %bb10

bb9:
  %r321 = add i32 0, 0
  br label %bb10

bb10:
  %r299 = phi i32 [ %r322, %bb8 ], [ %r321, %bb9 ]
  %r300 = icmp ne i32 %r299, 0
  br i1 %r300, label %bb2, label %bb14

bb2:
  %r293 = icmp eq i32 %r288, 45
  br i1 %r293, label %bb11, label %bb13

bb11:
  %r297 = add i32 1, 0
  br label %bb13

bb13:
  %r294 = phi i32 [ %r289, %bb2 ], [ %r297, %bb11 ]
  %r295 = call i32 @getch()
  %r296 = add i32 %r295, 0
  br label %bb1

bb14:
  %r301 = phi i32 [ %r288, %bb10 ], [ %r316, %bb15 ]
  %r302 = phi i32 [ %r285, %bb10 ], [ %r314, %bb15 ]
  %r303 = icmp sge i32 %r301, 48
  br i1 %r303, label %bb17, label %bb18

bb17:
  %r320 = add i32 1, 0
  br label %bb19

bb18:
  %r319 = add i32 0, 0
  br label %bb19

bb19:
  %r304 = phi i32 [ %r320, %bb17 ], [ %r319, %bb18 ]
  %r305 = icmp ne i32 %r304, 0
  br i1 %r305, label %bb20, label %bb16

bb20:
  %r308 = icmp sle i32 %r301, 57
  br i1 %r308, label %bb21, label %bb22

bb21:
  %r318 = add i32 1, 0
  br label %bb23

bb22:
  %r317 = add i32 0, 0
  br label %bb23

bb23:
  %r309 = phi i32 [ %r318, %bb21 ], [ %r317, %bb22 ]
  %r310 = icmp ne i32 %r309, 0
  br i1 %r310, label %bb15, label %bb16

bb15:
  %r311 = mul i32 %r302, 10
  %r312 = add i32 %r311, %r301
  %r313 = sub i32 %r312, 48
  %r314 = add i32 %r313, 0
  %r315 = call i32 @getch()
  %r316 = add i32 %r315, 0
  br label %bb14

bb16:
  %r306 = icmp ne i32 %r289, 0
  br i1 %r306, label %bb24, label %bb25

bb24:
  %r307 = sub i32 0, %r302
  ret i32 %r307
bb25:
  ret i32 %r302
}

define void @addedge( i32 %r138, i32 %r140 ) {
addedge:
  %r327 = add i32 0, 0
  %r328 = add i32 %r138, 0
  %r329 = add i32 0, 0
  %r330 = add i32 %r140, 0
  %r331 = load i32, i32* @cnt
  %r142 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r331
  store i32 %r330, i32* %r142
  %r332 = load i32, i32* @cnt
  %r145 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r332
  %r147 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r328
  %r333 = load i32, i32* %r147
  store i32 %r333, i32* %r145
  %r150 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r328
  %r334 = load i32, i32* @cnt
  store i32 %r334, i32* %r150
  %r335 = load i32, i32* @cnt
  %r336 = add i32 %r335, 1
  store i32 %r336, i32* @cnt
  %r337 = load i32, i32* @cnt
  %r155 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r337
  store i32 %r328, i32* %r155
  %r338 = load i32, i32* @cnt
  %r158 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r338
  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r330
  %r339 = load i32, i32* %r160
  store i32 %r339, i32* %r158
  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r330
  %r340 = load i32, i32* @cnt
  store i32 %r340, i32* %r163
  %r341 = load i32, i32* @cnt
  %r342 = add i32 %r341, 1
  store i32 %r342, i32* @cnt
  ret void
}

define void @init( ) {
init:
  %r344 = add i32 0, 0
  %r345 = add i32 0, 0
  br label %bb27

bb27:
  %r346 = phi i32 [ %r345, %init ], [ %r349, %bb28 ]
  %r347 = icmp slt i32 %r346, 1005
  br i1 %r347, label %bb28, label %bb29

bb28:
  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r346
  store i32 -1, i32* %r171
  %r348 = add i32 %r346, 1
  %r349 = add i32 %r348, 0
  br label %bb27

bb29:
  ret void
}

define void @inqueue( i32 %r175 ) {
inqueue:
  %r351 = add i32 0, 0
  %r352 = add i32 %r175, 0
  %r177 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r352
  store i32 1, i32* %r177
  %r353 = load i32, i32* @tail
  %r354 = add i32 %r353, 1
  store i32 %r354, i32* @tail
  %r355 = load i32, i32* @tail
  %r181 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r355
  store i32 %r352, i32* %r181
  ret void
}

define i32 @popqueue( ) {
popqueue:
  %r357 = load i32, i32* @h
  %r358 = add i32 %r357, 1
  store i32 %r358, i32* @h
  %r359 = load i32, i32* @h
  %r186 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r359
  %r360 = load i32, i32* %r186
  %r361 = add i32 0, 0
  %r362 = add i32 %r360, 0
  %r363 = load i32, i32* @h
  %r190 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r363
  %r364 = load i32, i32* %r190
  ret i32 %r364
}

define i32 @same( i32 %r193, i32 %r195 ) {
same:
  %r371 = add i32 0, 0
  %r372 = add i32 %r193, 0
  %r373 = add i32 0, 0
  %r374 = add i32 %r195, 0
  store i32 0, i32* @h
  store i32 0, i32* @tail
  call void @inqueue(i32 %r372)
  %r375 = add i32 0, 0
  %r376 = add i32 0, 0
  %r377 = add i32 0, 0
  %r378 = add i32 0, 0
  %r379 = add i32 0, 0
  %r380 = add i32 0, 0
  %r381 = add i32 0, 0
  %r382 = add i32 0, 0
  br label %bb30

bb30:
  %r383 = phi i32 [ %r376, %same ], [ %r398, %bb36 ]
  %r384 = load i32, i32* @h
  %r385 = load i32, i32* @tail
  %r386 = icmp slt i32 %r384, %r385
  br i1 %r386, label %bb31, label %bb32

bb31:
  %r395 = call i32 @popqueue()
  %r396 = add i32 %r395, 0
  %r397 = icmp eq i32 %r396, %r374
  br i1 %r397, label %bb33, label %bb35

bb33:
  %r410 = add i32 1, 0
  br label %bb35

bb35:
  %r398 = phi i32 [ %r383, %bb31 ], [ %r410, %bb33 ]
  %r209 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r396
  %r399 = load i32, i32* %r209
  %r400 = add i32 %r399, 0
  br label %bb36

bb36:
  %r401 = phi i32 [ %r400, %bb35 ], [ %r408, %bb41 ]
  %r402 = icmp ne i32 %r401, -1
  br i1 %r402, label %bb37, label %bb30

bb37:
  %r214 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r401
  %r403 = load i32, i32* %r214
  %r404 = add i32 %r403, 0
  %r218 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r404
  %r405 = load i32, i32* %r218
  %r406 = icmp eq i32 %r405, 0
  br i1 %r406, label %bb39, label %bb41

bb39:
  %r221 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r401
  %r409 = load i32, i32* %r221
  call void @inqueue(i32 %r409)
  br label %bb41

bb41:
  %r224 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r401
  %r407 = load i32, i32* %r224
  %r408 = add i32 %r407, 0
  br label %bb36

bb32:
  %r387 = add i32 0, 0
  br label %bb42

bb42:
  %r388 = phi i32 [ %r387, %bb32 ], [ %r394, %bb43 ]
  %r389 = load i32, i32* @tail
  %r390 = icmp sle i32 %r388, %r389
  br i1 %r390, label %bb43, label %bb44

bb43:
  %r230 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r388
  %r391 = load i32, i32* %r230
  %r392 = add i32 %r391, 0
  %r233 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r392
  store i32 0, i32* %r233
  %r393 = add i32 %r388, 1
  %r394 = add i32 %r393, 0
  br label %bb42

bb44:
  ret i32 %r383
}

define i32 @main( ) {
main:
  %r416 = add i32 0, 0
  %r417 = add i32 0, 0
  %r418 = call i32 @quickread()
  store i32 %r418, i32* @n
  %r419 = call i32 @quickread()
  store i32 %r419, i32* @m
  call void @_sysy_starttime(i32 97)
  call void @init()
  %r420 = add i32 0, 0
  %r421 = add i32 0, 0
  %r422 = add i32 0, 0
  %r423 = add i32 0, 0
  %r424 = add i32 0, 0
  %r425 = add i32 0, 0
  br label %bb45

bb45:
  %r426 = load i32, i32* @m
  %r427 = icmp ne i32 %r426, 0
  br i1 %r427, label %bb46, label %bb47

bb46:
  %r428 = call i32 @getch()
  %r429 = add i32 %r428, 0
  br label %bb48

bb48:
  %r430 = phi i32 [ %r429, %bb46 ], [ %r450, %bb49 ]
  %r431 = icmp ne i32 %r430, 81
  br i1 %r431, label %bb51, label %bb52

bb51:
  %r454 = add i32 1, 0
  br label %bb53

bb52:
  %r453 = add i32 0, 0
  br label %bb53

bb53:
  %r432 = phi i32 [ %r454, %bb51 ], [ %r453, %bb52 ]
  %r433 = icmp ne i32 %r432, 0
  br i1 %r433, label %bb54, label %bb50

bb54:
  %r446 = icmp ne i32 %r430, 85
  br i1 %r446, label %bb55, label %bb56

bb55:
  %r452 = add i32 1, 0
  br label %bb57

bb56:
  %r451 = add i32 0, 0
  br label %bb57

bb57:
  %r447 = phi i32 [ %r452, %bb55 ], [ %r451, %bb56 ]
  %r448 = icmp ne i32 %r447, 0
  br i1 %r448, label %bb49, label %bb50

bb49:
  %r449 = call i32 @getch()
  %r450 = add i32 %r449, 0
  br label %bb48

bb50:
  %r434 = icmp eq i32 %r430, 81
  br i1 %r434, label %bb58, label %bb59

bb58:
  %r441 = call i32 @quickread()
  %r442 = add i32 %r441, 0
  %r443 = call i32 @quickread()
  %r444 = add i32 %r443, 0
  %r445 = call i32 @same(i32 %r442, i32 %r444)
  call void @putint(i32 %r445)
  call void @putch(i32 10)
  br label %bb60

bb59:
  %r437 = call i32 @quickread()
  %r438 = add i32 %r437, 0
  %r439 = call i32 @quickread()
  %r440 = add i32 %r439, 0
  call void @addedge(i32 %r438, i32 %r440)
  br label %bb60

bb60:
  %r435 = load i32, i32* @m
  %r436 = sub i32 %r435, 1
  store i32 %r436, i32* @m
  br label %bb45

bb47:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

