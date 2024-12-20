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
@vis = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
quickread:
  %r258 = add i32 0, 0
  %r259 = add i32 0, 0
  %r260 = add i32 0, 0
  %r261 = add i32 0, 0
  %r262 = call i32 @getch()
  %r263 = add i32 0, 0
  %r264 = add i32 %r262, 0
  %r265 = add i32 0, 0
  %r266 = add i32 0, 0
  %r267 = add i32 0, 0
  %r268 = add i32 0, 0
  br label %bb1

bb1:
  %r269 = phi i32 [ %r268, %quickread ], [ %r275, %bb13 ]
  %r270 = phi i32 [ %r264, %quickread ], [ %r277, %bb13 ]
  %r271 = icmp slt i32 %r270, 48
  br i1 %r271, label %bb4, label %bb5

bb4:
  %r305 = add i32 1, 0
  br label %bb6

bb5:
  %r304 = add i32 0, 0
  br label %bb6

bb6:
  %r272 = phi i32 [ %r305, %bb4 ], [ %r304, %bb5 ]
  %r273 = icmp ne i32 %r272, 0
  br i1 %r273, label %bb2, label %bb7

bb7:
  %r279 = icmp sgt i32 %r270, 57
  br i1 %r279, label %bb8, label %bb9

bb8:
  %r303 = add i32 1, 0
  br label %bb10

bb9:
  %r302 = add i32 0, 0
  br label %bb10

bb10:
  %r280 = phi i32 [ %r303, %bb8 ], [ %r302, %bb9 ]
  %r281 = icmp ne i32 %r280, 0
  br i1 %r281, label %bb2, label %bb14

bb2:
  %r274 = icmp eq i32 %r270, 45
  br i1 %r274, label %bb11, label %bb13

bb11:
  %r278 = add i32 1, 0
  br label %bb13

bb13:
  %r275 = phi i32 [ %r269, %bb2 ], [ %r278, %bb11 ]
  %r276 = call i32 @getch()
  %r277 = add i32 %r276, 0
  br label %bb1

bb14:
  %r282 = phi i32 [ %r266, %bb10 ], [ %r295, %bb15 ]
  %r283 = phi i32 [ %r270, %bb10 ], [ %r297, %bb15 ]
  %r284 = icmp sge i32 %r283, 48
  br i1 %r284, label %bb17, label %bb18

bb17:
  %r301 = add i32 1, 0
  br label %bb19

bb18:
  %r300 = add i32 0, 0
  br label %bb19

bb19:
  %r285 = phi i32 [ %r301, %bb17 ], [ %r300, %bb18 ]
  %r286 = icmp ne i32 %r285, 0
  br i1 %r286, label %bb20, label %bb16

bb20:
  %r289 = icmp sle i32 %r283, 57
  br i1 %r289, label %bb21, label %bb22

bb21:
  %r299 = add i32 1, 0
  br label %bb23

bb22:
  %r298 = add i32 0, 0
  br label %bb23

bb23:
  %r290 = phi i32 [ %r299, %bb21 ], [ %r298, %bb22 ]
  %r291 = icmp ne i32 %r290, 0
  br i1 %r291, label %bb15, label %bb16

bb15:
  %r292 = mul i32 %r282, 10
  %r293 = add i32 %r292, %r283
  %r294 = sub i32 %r293, 48
  %r295 = add i32 %r294, 0
  %r296 = call i32 @getch()
  %r297 = add i32 %r296, 0
  br label %bb14

bb16:
  %r287 = icmp ne i32 %r269, 0
  br i1 %r287, label %bb24, label %bb25

bb24:
  %r288 = sub i32 0, %r282
  ret i32 %r288
bb25:
  ret i32 %r282
}

define void @addedge( i32 %r138, i32 %r140 ) {
addedge:
  %r308 = add i32 0, 0
  %r309 = add i32 %r138, 0
  %r310 = add i32 0, 0
  %r311 = add i32 %r140, 0
  %r312 = load i32, i32* @cnt
  %r142 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r312
  store i32 %r311, i32* %r142
  %r313 = load i32, i32* @cnt
  %r145 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r313
  %r147 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r309
  %r314 = load i32, i32* %r147
  store i32 %r314, i32* %r145
  %r150 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r309
  %r315 = load i32, i32* @cnt
  store i32 %r315, i32* %r150
  %r316 = load i32, i32* @cnt
  %r317 = add i32 %r316, 1
  store i32 %r317, i32* @cnt
  %r318 = load i32, i32* @cnt
  %r155 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r318
  store i32 %r309, i32* %r155
  %r319 = load i32, i32* @cnt
  %r158 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r319
  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r311
  %r320 = load i32, i32* %r160
  store i32 %r320, i32* %r158
  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r311
  %r321 = load i32, i32* @cnt
  store i32 %r321, i32* %r163
  %r322 = load i32, i32* @cnt
  %r323 = add i32 %r322, 1
  store i32 %r323, i32* @cnt
  ret void
}

define void @init( ) {
init:
  %r325 = add i32 0, 0
  %r326 = add i32 0, 0
  br label %bb27

bb27:
  %r327 = phi i32 [ %r326, %init ], [ %r330, %bb28 ]
  %r328 = icmp slt i32 %r327, 1005
  br i1 %r328, label %bb28, label %bb29

bb28:
  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r327
  store i32 -1, i32* %r171
  %r329 = add i32 %r327, 1
  %r330 = add i32 %r329, 0
  br label %bb27

bb29:
  ret void
}

define void @clear( ) {
clear:
  %r332 = add i32 0, 0
  %r333 = add i32 1, 0
  br label %bb30

bb30:
  %r334 = phi i32 [ %r333, %clear ], [ %r338, %bb31 ]
  %r335 = load i32, i32* @n
  %r336 = icmp sle i32 %r334, %r335
  br i1 %r336, label %bb31, label %bb32

bb31:
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r334
  store i32 0, i32* %r179
  %r337 = add i32 %r334, 1
  %r338 = add i32 %r337, 0
  br label %bb30

bb32:
  ret void
}

define i32 @same( i32 %r183, i32 %r185 ) {
same:
  %r345 = add i32 0, 0
  %r346 = add i32 0, 0
  %r347 = add i32 0, 0
  %r348 = add i32 0, 0
  %r349 = add i32 0, 0
  %r350 = add i32 %r183, 0
  %r351 = add i32 0, 0
  %r352 = add i32 %r185, 0
  %r187 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r350
  store i32 1, i32* %r187
  %r353 = icmp eq i32 %r350, %r352
  br i1 %r353, label %bb33, label %bb35

bb33:
  ret i32 1
bb35:
  %r192 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r350
  %r354 = load i32, i32* %r192
  %r355 = add i32 %r354, 0
  br label %bb36

bb36:
  %r356 = phi i32 [ %r355, %bb35 ], [ %r365, %bb41 ]
  %r357 = icmp ne i32 %r356, -1
  br i1 %r357, label %bb37, label %bb38

bb37:
  %r198 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r356
  %r358 = load i32, i32* %r198
  %r359 = add i32 %r358, 0
  %r204 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r359
  %r360 = load i32, i32* %r204
  %r361 = icmp eq i32 %r360, 0
  br i1 %r361, label %bb42, label %bb43

bb42:
  %r373 = add i32 1, 0
  br label %bb44

bb43:
  %r372 = add i32 0, 0
  br label %bb44

bb44:
  %r362 = phi i32 [ %r373, %bb42 ], [ %r372, %bb43 ]
  %r363 = icmp ne i32 %r362, 0
  br i1 %r363, label %bb45, label %bb41

bb45:
  %r366 = call i32 @same(i32 %r359, i32 %r352)
  %r367 = icmp ne i32 %r366, 0
  br i1 %r367, label %bb46, label %bb47

bb46:
  %r371 = add i32 1, 0
  br label %bb48

bb47:
  %r370 = add i32 0, 0
  br label %bb48

bb48:
  %r368 = phi i32 [ %r371, %bb46 ], [ %r370, %bb47 ]
  %r369 = icmp ne i32 %r368, 0
  br i1 %r369, label %bb39, label %bb41

bb39:
  ret i32 1
bb41:
  %r216 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r356
  %r364 = load i32, i32* %r216
  %r365 = add i32 %r364, 0
  br label %bb36

bb38:
  ret i32 0
}

define i32 @main( ) {
main:
  %r379 = add i32 0, 0
  %r380 = add i32 0, 0
  call void @_sysy_starttime(i32 74)
  %r381 = call i32 @quickread()
  store i32 %r381, i32* @n
  %r382 = call i32 @quickread()
  store i32 %r382, i32* @m
  call void @init()
  %r383 = add i32 0, 0
  %r384 = add i32 0, 0
  %r385 = add i32 0, 0
  %r386 = add i32 0, 0
  %r387 = add i32 0, 0
  %r388 = add i32 0, 0
  br label %bb49

bb49:
  %r389 = load i32, i32* @m
  %r390 = icmp ne i32 %r389, 0
  br i1 %r390, label %bb50, label %bb51

bb50:
  %r391 = call i32 @getch()
  %r392 = add i32 %r391, 0
  br label %bb52

bb52:
  %r393 = phi i32 [ %r392, %bb50 ], [ %r413, %bb53 ]
  %r394 = icmp ne i32 %r393, 81
  br i1 %r394, label %bb55, label %bb56

bb55:
  %r417 = add i32 1, 0
  br label %bb57

bb56:
  %r416 = add i32 0, 0
  br label %bb57

bb57:
  %r395 = phi i32 [ %r417, %bb55 ], [ %r416, %bb56 ]
  %r396 = icmp ne i32 %r395, 0
  br i1 %r396, label %bb58, label %bb54

bb58:
  %r409 = icmp ne i32 %r393, 85
  br i1 %r409, label %bb59, label %bb60

bb59:
  %r415 = add i32 1, 0
  br label %bb61

bb60:
  %r414 = add i32 0, 0
  br label %bb61

bb61:
  %r410 = phi i32 [ %r415, %bb59 ], [ %r414, %bb60 ]
  %r411 = icmp ne i32 %r410, 0
  br i1 %r411, label %bb53, label %bb54

bb53:
  %r412 = call i32 @getch()
  %r413 = add i32 %r412, 0
  br label %bb52

bb54:
  %r397 = icmp eq i32 %r393, 81
  br i1 %r397, label %bb62, label %bb63

bb62:
  %r404 = call i32 @quickread()
  %r405 = add i32 %r404, 0
  %r406 = call i32 @quickread()
  %r407 = add i32 %r406, 0
  call void @clear()
  %r408 = call i32 @same(i32 %r405, i32 %r407)
  call void @putint(i32 %r408)
  call void @putch(i32 10)
  br label %bb64

bb63:
  %r400 = call i32 @quickread()
  %r401 = add i32 %r400, 0
  %r402 = call i32 @quickread()
  %r403 = add i32 %r402, 0
  call void @addedge(i32 %r401, i32 %r403)
  br label %bb64

bb64:
  %r398 = load i32, i32* @m
  %r399 = sub i32 %r398, 1
  store i32 %r399, i32* @m
  br label %bb49

bb51:
  call void @_sysy_stoptime(i32 96)
  ret i32 0
}

