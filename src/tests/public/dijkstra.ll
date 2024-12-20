declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@INF = global i32 65535
%array2D = type { [16 x i32 ] }
@e = global [ 16 x %array2D ] zeroinitializer
@book = global [ 16 x i32 ] zeroinitializer
@dis = global [ 16 x i32 ] zeroinitializer
@n = global i32 0
@m = global i32 0
@v1 = global i32 0
@v2 = global i32 0
@w = global i32 0
define void @Dijkstra( ) {
Dijkstra:
  %r250 = add i32 0, 0
  %r251 = add i32 0, 0
  %r252 = add i32 0, 0
  %r253 = add i32 0, 0
  %r254 = add i32 0, 0
  %r255 = add i32 0, 0
  %r256 = add i32 0, 0
  %r257 = add i32 1, 0
  br label %bb1

bb1:
  %r258 = phi i32 [ %r257, %Dijkstra ], [ %r315, %bb2 ]
  %r259 = load i32, i32* @n
  %r260 = icmp sle i32 %r258, %r259
  br i1 %r260, label %bb2, label %bb3

bb2:
  %r104 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r258
  %r106 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1
  %r107 = getelementptr %array2D, %array2D* %r106, i32 0, i32 0
  %r108 = getelementptr [16 x i32 ], [16 x i32 ]* %r107, i32 0, i32 %r258
  %r313 = load i32, i32* %r108
  store i32 %r313, i32* %r104
  %r111 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r258
  store i32 0, i32* %r111
  %r314 = add i32 %r258, 1
  %r315 = add i32 %r314, 0
  br label %bb1

bb3:
  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1
  store i32 1, i32* %r115
  %r261 = add i32 1, 0
  br label %bb4

bb4:
  %r262 = phi i32 [ %r261, %bb3 ], [ %r280, %bb22 ]
  %r263 = load i32, i32* @n
  %r264 = sub i32 %r263, 1
  %r265 = icmp sle i32 %r262, %r264
  br i1 %r265, label %bb5, label %bb6

bb5:
  %r266 = load i32, i32* @INF
  %r267 = add i32 %r266, 0
  %r268 = add i32 0, 0
  %r269 = add i32 1, 0
  br label %bb7

bb7:
  %r270 = phi i32 [ %r268, %bb5 ], [ %r298, %bb12 ]
  %r271 = phi i32 [ %r269, %bb5 ], [ %r301, %bb12 ]
  %r272 = phi i32 [ %r267, %bb5 ], [ %r299, %bb12 ]
  %r273 = load i32, i32* @n
  %r274 = icmp sle i32 %r271, %r273
  br i1 %r274, label %bb8, label %bb9

bb8:
  %r130 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r271
  %r294 = load i32, i32* %r130
  %r295 = icmp sgt i32 %r272, %r294
  br i1 %r295, label %bb13, label %bb14

bb13:
  %r312 = add i32 1, 0
  br label %bb15

bb14:
  %r311 = add i32 0, 0
  br label %bb15

bb15:
  %r296 = phi i32 [ %r312, %bb13 ], [ %r311, %bb14 ]
  %r297 = icmp ne i32 %r296, 0
  br i1 %r297, label %bb16, label %bb12

bb16:
  %r137 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r271
  %r302 = load i32, i32* %r137
  %r303 = icmp eq i32 %r302, 0
  br i1 %r303, label %bb17, label %bb18

bb17:
  %r310 = add i32 1, 0
  br label %bb19

bb18:
  %r309 = add i32 0, 0
  br label %bb19

bb19:
  %r304 = phi i32 [ %r310, %bb17 ], [ %r309, %bb18 ]
  %r305 = icmp ne i32 %r304, 0
  br i1 %r305, label %bb10, label %bb12

bb10:
  %r142 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r271
  %r306 = load i32, i32* %r142
  %r307 = add i32 %r306, 0
  %r308 = add i32 %r271, 0
  br label %bb12

bb12:
  %r298 = phi i32 [ %r270, %bb15 ], [ %r270, %bb19 ], [ %r308, %bb10 ]
  %r299 = phi i32 [ %r272, %bb15 ], [ %r272, %bb19 ], [ %r307, %bb10 ]
  %r300 = add i32 %r271, 1
  %r301 = add i32 %r300, 0
  br label %bb7

bb9:
  %r148 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r270
  store i32 1, i32* %r148
  %r275 = add i32 1, 0
  br label %bb20

bb20:
  %r276 = phi i32 [ %r275, %bb9 ], [ %r285, %bb25 ]
  %r277 = load i32, i32* @n
  %r278 = icmp sle i32 %r276, %r277
  br i1 %r278, label %bb21, label %bb22

bb21:
  %r155 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r270
  %r157 = getelementptr %array2D, %array2D* %r155, i32 0, i32 0
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r157, i32 0, i32 %r276
  %r281 = load i32, i32* %r158
  %r282 = load i32, i32* @INF
  %r283 = icmp slt i32 %r281, %r282
  br i1 %r283, label %bb23, label %bb25

bb23:
  %r163 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r276
  %r286 = load i32, i32* %r163
  %r166 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r270
  %r168 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r270
  %r170 = getelementptr %array2D, %array2D* %r168, i32 0, i32 0
  %r171 = getelementptr [16 x i32 ], [16 x i32 ]* %r170, i32 0, i32 %r276
  %r287 = load i32, i32* %r166
  %r288 = load i32, i32* %r171
  %r289 = add i32 %r287, %r288
  %r290 = icmp sgt i32 %r286, %r289
  br i1 %r290, label %bb26, label %bb25

bb26:
  %r176 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r276
  %r178 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r270
  %r180 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r270
  %r182 = getelementptr %array2D, %array2D* %r180, i32 0, i32 0
  %r183 = getelementptr [16 x i32 ], [16 x i32 ]* %r182, i32 0, i32 %r276
  %r291 = load i32, i32* %r178
  %r292 = load i32, i32* %r183
  %r293 = add i32 %r291, %r292
  store i32 %r293, i32* %r176
  br label %bb25

bb25:
  %r284 = add i32 %r276, 1
  %r285 = add i32 %r284, 0
  br label %bb20

bb22:
  %r279 = add i32 %r262, 1
  %r280 = add i32 %r279, 0
  br label %bb4

bb6:
  ret void
}

define i32 @main( ) {
main:
  %r320 = add i32 0, 0
  %r321 = add i32 0, 0
  %r322 = add i32 0, 0
  call void @_sysy_starttime(i32 53)
  %r323 = add i32 0, 0
  %r324 = call i32 @getint()
  store i32 %r324, i32* @n
  %r325 = call i32 @getint()
  store i32 %r325, i32* @m
  %r326 = add i32 1, 0
  br label %bb29

bb29:
  %r327 = phi i32 [ %r326, %main ], [ %r353, %bb34 ]
  %r328 = load i32, i32* @n
  %r329 = icmp sle i32 %r327, %r328
  br i1 %r329, label %bb30, label %bb31

bb30:
  %r348 = add i32 1, 0
  br label %bb32

bb32:
  %r349 = phi i32 [ %r348, %bb30 ], [ %r356, %bb37 ]
  %r350 = load i32, i32* @n
  %r351 = icmp sle i32 %r349, %r350
  br i1 %r351, label %bb33, label %bb34

bb33:
  %r354 = icmp eq i32 %r327, %r349
  br i1 %r354, label %bb35, label %bb36

bb35:
  %r205 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r327
  %r207 = getelementptr %array2D, %array2D* %r205, i32 0, i32 0
  %r208 = getelementptr [16 x i32 ], [16 x i32 ]* %r207, i32 0, i32 %r349
  store i32 0, i32* %r208
  br label %bb37

bb36:
  %r210 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r327
  %r212 = getelementptr %array2D, %array2D* %r210, i32 0, i32 0
  %r213 = getelementptr [16 x i32 ], [16 x i32 ]* %r212, i32 0, i32 %r349
  %r357 = load i32, i32* @INF
  store i32 %r357, i32* %r213
  br label %bb37

bb37:
  %r355 = add i32 %r349, 1
  %r356 = add i32 %r355, 0
  br label %bb32

bb34:
  %r352 = add i32 %r327, 1
  %r353 = add i32 %r352, 0
  br label %bb29

bb31:
  %r330 = add i32 1, 0
  br label %bb38

bb38:
  %r331 = phi i32 [ %r330, %bb31 ], [ %r347, %bb39 ]
  %r332 = load i32, i32* @m
  %r333 = icmp sle i32 %r331, %r332
  br i1 %r333, label %bb39, label %bb40

bb39:
  %r341 = call i32 @getint()
  %r342 = add i32 %r341, 0
  %r343 = call i32 @getint()
  %r344 = add i32 %r343, 0
  %r227 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r342
  %r229 = getelementptr %array2D, %array2D* %r227, i32 0, i32 0
  %r230 = getelementptr [16 x i32 ], [16 x i32 ]* %r229, i32 0, i32 %r344
  %r345 = call i32 @getint()
  store i32 %r345, i32* %r230
  %r346 = add i32 %r331, 1
  %r347 = add i32 %r346, 0
  br label %bb38

bb40:
  call void @Dijkstra()
  %r334 = add i32 1, 0
  br label %bb41

bb41:
  %r335 = phi i32 [ %r334, %bb40 ], [ %r340, %bb42 ]
  %r336 = load i32, i32* @n
  %r337 = icmp sle i32 %r335, %r336
  br i1 %r337, label %bb42, label %bb43

bb42:
  %r238 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r335
  %r338 = load i32, i32* %r238
  call void @putint(i32 %r338)
  call void @putch(i32 32)
  %r339 = add i32 %r335, 1
  %r340 = add i32 %r339, 0
  br label %bb41

bb43:
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 91)
  ret i32 0
}

