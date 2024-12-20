declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 0
@b = global i32 0
@d = global i32 0
define i32 @set_a( i32 %r100 ) {
set_a:
  %r249 = add i32 0, 0
  %r250 = add i32 %r100, 0
  store i32 %r250, i32* @a
  %r251 = load i32, i32* @a
  ret i32 %r251
}

define i32 @set_b( i32 %r104 ) {
set_b:
  %r253 = add i32 0, 0
  %r254 = add i32 %r104, 0
  store i32 %r254, i32* @b
  %r255 = load i32, i32* @b
  ret i32 %r255
}

define i32 @set_d( i32 %r108 ) {
set_d:
  %r257 = add i32 0, 0
  %r258 = add i32 %r108, 0
  store i32 %r258, i32* @d
  %r259 = load i32, i32* @d
  ret i32 %r259
}

define i32 @main( ) {
main:
  %r290 = add i32 0, 0
  %r291 = add i32 0, 0
  %r292 = add i32 0, 0
  %r293 = add i32 0, 0
  %r294 = add i32 0, 0
  %r295 = add i32 0, 0
  %r296 = add i32 0, 0
  %r297 = add i32 0, 0
  %r298 = add i32 0, 0
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r304 = add i32 0, 0
  %r305 = add i32 0, 0
  %r306 = add i32 0, 0
  %r307 = add i32 0, 0
  %r308 = add i32 0, 0
  %r309 = add i32 0, 0
  %r310 = add i32 0, 0
  %r311 = add i32 0, 0
  %r312 = add i32 0, 0
  %r313 = add i32 0, 0
  %r314 = add i32 0, 0
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r317 = add i32 0, 0
  %r318 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r319 = add i32 0, 0
  %r320 = call i32 @set_a(i32 0)
  %r321 = icmp ne i32 %r320, 0
  br i1 %r321, label %bb4, label %bb5

bb4:
  %r455 = add i32 1, 0
  br label %bb6

bb5:
  %r454 = add i32 0, 0
  br label %bb6

bb6:
  %r322 = phi i32 [ %r455, %bb4 ], [ %r454, %bb5 ]
  %r323 = icmp ne i32 %r322, 0
  br i1 %r323, label %bb7, label %bb3

bb7:
  %r448 = call i32 @set_b(i32 1)
  %r449 = icmp ne i32 %r448, 0
  br i1 %r449, label %bb8, label %bb9

bb8:
  %r453 = add i32 1, 0
  br label %bb10

bb9:
  %r452 = add i32 0, 0
  br label %bb10

bb10:
  %r450 = phi i32 [ %r453, %bb8 ], [ %r452, %bb9 ]
  %r451 = icmp ne i32 %r450, 0
  br i1 %r451, label %bb3, label %bb3

bb3:
  %r324 = load i32, i32* @a
  call void @putint(i32 %r324)
  call void @putch(i32 32)
  %r325 = load i32, i32* @b
  call void @putint(i32 %r325)
  call void @putch(i32 32)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r326 = call i32 @set_a(i32 0)
  %r327 = icmp ne i32 %r326, 0
  br i1 %r327, label %bb14, label %bb15

bb14:
  %r447 = add i32 1, 0
  br label %bb16

bb15:
  %r446 = add i32 0, 0
  br label %bb16

bb16:
  %r328 = phi i32 [ %r447, %bb14 ], [ %r446, %bb15 ]
  %r329 = icmp ne i32 %r328, 0
  br i1 %r329, label %bb17, label %bb13

bb17:
  %r440 = call i32 @set_b(i32 1)
  %r441 = icmp ne i32 %r440, 0
  br i1 %r441, label %bb18, label %bb19

bb18:
  %r445 = add i32 1, 0
  br label %bb20

bb19:
  %r444 = add i32 0, 0
  br label %bb20

bb20:
  %r442 = phi i32 [ %r445, %bb18 ], [ %r444, %bb19 ]
  %r443 = icmp ne i32 %r442, 0
  br i1 %r443, label %bb13, label %bb13

bb13:
  %r330 = load i32, i32* @a
  call void @putint(i32 %r330)
  call void @putch(i32 32)
  %r331 = load i32, i32* @b
  call void @putint(i32 %r331)
  call void @putch(i32 10)
  %r332 = add i32 1, 0
  store i32 2, i32* @d
  %r333 = icmp sge i32 %r332, 1
  br i1 %r333, label %bb24, label %bb25

bb24:
  %r439 = add i32 1, 0
  br label %bb26

bb25:
  %r438 = add i32 0, 0
  br label %bb26

bb26:
  %r334 = phi i32 [ %r439, %bb24 ], [ %r438, %bb25 ]
  %r335 = icmp ne i32 %r334, 0
  br i1 %r335, label %bb27, label %bb23

bb27:
  %r432 = call i32 @set_d(i32 3)
  %r433 = icmp ne i32 %r432, 0
  br i1 %r433, label %bb28, label %bb29

bb28:
  %r437 = add i32 1, 0
  br label %bb30

bb29:
  %r436 = add i32 0, 0
  br label %bb30

bb30:
  %r434 = phi i32 [ %r437, %bb28 ], [ %r436, %bb29 ]
  %r435 = icmp ne i32 %r434, 0
  br i1 %r435, label %bb23, label %bb23

bb23:
  %r336 = load i32, i32* @d
  call void @putint(i32 %r336)
  call void @putch(i32 32)
  %r337 = icmp sle i32 %r332, 1
  br i1 %r337, label %bb34, label %bb35

bb34:
  %r431 = add i32 1, 0
  br label %bb36

bb35:
  %r430 = add i32 0, 0
  br label %bb36

bb36:
  %r338 = phi i32 [ %r431, %bb34 ], [ %r430, %bb35 ]
  %r339 = icmp ne i32 %r338, 0
  br i1 %r339, label %bb33, label %bb37

bb37:
  %r424 = call i32 @set_d(i32 4)
  %r425 = icmp ne i32 %r424, 0
  br i1 %r425, label %bb38, label %bb39

bb38:
  %r429 = add i32 1, 0
  br label %bb40

bb39:
  %r428 = add i32 0, 0
  br label %bb40

bb40:
  %r426 = phi i32 [ %r429, %bb38 ], [ %r428, %bb39 ]
  %r427 = icmp ne i32 %r426, 0
  br i1 %r427, label %bb33, label %bb33

bb33:
  %r340 = load i32, i32* @d
  call void @putint(i32 %r340)
  call void @putch(i32 10)
  call void @putch(i32 10)
  %r341 = add i32 0, 0
  %r342 = add i32 1, 0
  %r343 = add i32 2, 0
  %r344 = add i32 3, 0
  %r345 = add i32 4, 0
  br label %bb41

bb41:
  %r346 = icmp ne i32 %r341, 0
  br i1 %r346, label %bb44, label %bb45

bb44:
  %r423 = add i32 1, 0
  br label %bb46

bb45:
  %r422 = add i32 0, 0
  br label %bb46

bb46:
  %r347 = phi i32 [ %r423, %bb44 ], [ %r422, %bb45 ]
  %r348 = icmp ne i32 %r347, 0
  br i1 %r348, label %bb47, label %bb43

bb47:
  %r417 = icmp ne i32 %r342, 0
  br i1 %r417, label %bb48, label %bb49

bb48:
  %r421 = add i32 1, 0
  br label %bb50

bb49:
  %r420 = add i32 0, 0
  br label %bb50

bb50:
  %r418 = phi i32 [ %r421, %bb48 ], [ %r420, %bb49 ]
  %r419 = icmp ne i32 %r418, 0
  br i1 %r419, label %bb42, label %bb43

bb42:
  call void @putch(i32 32)
  br label %bb41

bb43:
  %r349 = icmp ne i32 %r341, 0
  br i1 %r349, label %bb54, label %bb55

bb54:
  %r416 = add i32 1, 0
  br label %bb56

bb55:
  %r415 = add i32 0, 0
  br label %bb56

bb56:
  %r350 = phi i32 [ %r416, %bb54 ], [ %r415, %bb55 ]
  %r351 = icmp ne i32 %r350, 0
  br i1 %r351, label %bb51, label %bb57

bb57:
  %r410 = icmp ne i32 %r342, 0
  br i1 %r410, label %bb58, label %bb59

bb58:
  %r414 = add i32 1, 0
  br label %bb60

bb59:
  %r413 = add i32 0, 0
  br label %bb60

bb60:
  %r411 = phi i32 [ %r414, %bb58 ], [ %r413, %bb59 ]
  %r412 = icmp ne i32 %r411, 0
  br i1 %r412, label %bb51, label %bb53

bb51:
  call void @putch(i32 67)
  br label %bb53

bb53:
  %r352 = icmp sge i32 %r341, %r342
  br i1 %r352, label %bb64, label %bb65

bb64:
  %r409 = add i32 1, 0
  br label %bb66

bb65:
  %r408 = add i32 0, 0
  br label %bb66

bb66:
  %r353 = phi i32 [ %r409, %bb64 ], [ %r408, %bb65 ]
  %r354 = icmp ne i32 %r353, 0
  br i1 %r354, label %bb61, label %bb67

bb67:
  %r403 = icmp sle i32 %r342, %r341
  br i1 %r403, label %bb68, label %bb69

bb68:
  %r407 = add i32 1, 0
  br label %bb70

bb69:
  %r406 = add i32 0, 0
  br label %bb70

bb70:
  %r404 = phi i32 [ %r407, %bb68 ], [ %r406, %bb69 ]
  %r405 = icmp ne i32 %r404, 0
  br i1 %r405, label %bb61, label %bb63

bb61:
  call void @putch(i32 72)
  br label %bb63

bb63:
  %r355 = icmp sge i32 %r343, %r342
  br i1 %r355, label %bb74, label %bb75

bb74:
  %r402 = add i32 1, 0
  br label %bb76

bb75:
  %r401 = add i32 0, 0
  br label %bb76

bb76:
  %r356 = phi i32 [ %r402, %bb74 ], [ %r401, %bb75 ]
  %r357 = icmp ne i32 %r356, 0
  br i1 %r357, label %bb77, label %bb73

bb77:
  %r396 = icmp ne i32 %r345, %r344
  br i1 %r396, label %bb78, label %bb79

bb78:
  %r400 = add i32 1, 0
  br label %bb80

bb79:
  %r399 = add i32 0, 0
  br label %bb80

bb80:
  %r397 = phi i32 [ %r400, %bb78 ], [ %r399, %bb79 ]
  %r398 = icmp ne i32 %r397, 0
  br i1 %r398, label %bb71, label %bb73

bb71:
  call void @putch(i32 73)
  br label %bb73

bb73:
  %r358 = icmp ne i32 %r342, 0
  br i1 %r358, label %bb88, label %bb87

bb87:
  %r395 = add i32 1, 0
  br label %bb89

bb88:
  %r394 = add i32 0, 0
  br label %bb89

bb89:
  %r359 = phi i32 [ %r395, %bb87 ], [ %r394, %bb88 ]
  %r360 = icmp ne i32 %r359, 0
  br i1 %r360, label %bb90, label %bb85

bb90:
  %r388 = icmp slt i32 %r344, %r344
  br i1 %r388, label %bb91, label %bb92

bb91:
  %r393 = add i32 1, 0
  br label %bb93

bb92:
  %r392 = add i32 0, 0
  br label %bb93

bb93:
  %r389 = phi i32 [ %r393, %bb91 ], [ %r392, %bb92 ]
  %r390 = icmp ne i32 %r389, 0
  br i1 %r390, label %bb84, label %bb85

bb84:
  %r391 = add i32 1, 0
  br label %bb86

bb85:
  %r387 = add i32 0, 0
  br label %bb86

bb86:
  %r361 = phi i32 [ %r391, %bb84 ], [ %r387, %bb85 ]
  %r362 = icmp ne i32 %r361, 0
  br i1 %r362, label %bb81, label %bb94

bb94:
  %r382 = icmp sge i32 %r345, %r345
  br i1 %r382, label %bb95, label %bb96

bb95:
  %r386 = add i32 1, 0
  br label %bb97

bb96:
  %r385 = add i32 0, 0
  br label %bb97

bb97:
  %r383 = phi i32 [ %r386, %bb95 ], [ %r385, %bb96 ]
  %r384 = icmp ne i32 %r383, 0
  br i1 %r384, label %bb81, label %bb83

bb81:
  call void @putch(i32 74)
  br label %bb83

bb83:
  %r363 = icmp ne i32 %r342, 0
  br i1 %r363, label %bb102, label %bb101

bb101:
  %r381 = add i32 1, 0
  br label %bb103

bb102:
  %r380 = add i32 0, 0
  br label %bb103

bb103:
  %r364 = phi i32 [ %r381, %bb101 ], [ %r380, %bb102 ]
  %r365 = icmp ne i32 %r364, 0
  br i1 %r365, label %bb98, label %bb104

bb104:
  %r366 = icmp slt i32 %r344, %r344
  br i1 %r366, label %bb108, label %bb109

bb108:
  %r379 = add i32 1, 0
  br label %bb110

bb109:
  %r378 = add i32 0, 0
  br label %bb110

bb110:
  %r367 = phi i32 [ %r379, %bb108 ], [ %r378, %bb109 ]
  %r368 = icmp ne i32 %r367, 0
  br i1 %r368, label %bb111, label %bb106

bb111:
  %r372 = icmp sge i32 %r345, %r345
  br i1 %r372, label %bb112, label %bb113

bb112:
  %r377 = add i32 1, 0
  br label %bb114

bb113:
  %r376 = add i32 0, 0
  br label %bb114

bb114:
  %r373 = phi i32 [ %r377, %bb112 ], [ %r376, %bb113 ]
  %r374 = icmp ne i32 %r373, 0
  br i1 %r374, label %bb105, label %bb106

bb105:
  %r375 = add i32 1, 0
  br label %bb107

bb106:
  %r371 = add i32 0, 0
  br label %bb107

bb107:
  %r369 = phi i32 [ %r375, %bb105 ], [ %r371, %bb106 ]
  %r370 = icmp ne i32 %r369, 0
  br i1 %r370, label %bb98, label %bb100

bb98:
  call void @putch(i32 75)
  br label %bb100

bb100:
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

