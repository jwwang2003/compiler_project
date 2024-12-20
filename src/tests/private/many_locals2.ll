declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @main( ) {
main:
  %r263 = add i32 0, 0
  %r264 = add i32 0, 0
  call void @_sysy_starttime(i32 4)
  %r265 = add i32 0, 0
  %r266 = add i32 0, 0
  %r267 = add i32 0, 0
  %r268 = add i32 0, 0
  %r269 = add i32 0, 0
  %r270 = add i32 0, 0
  %r271 = add i32 0, 0
  %r272 = add i32 0, 0
  %r273 = add i32 0, 0
  %r274 = add i32 0, 0
  %r275 = add i32 0, 0
  %r276 = add i32 0, 0
  %r277 = add i32 0, 0
  %r278 = add i32 0, 0
  %r279 = add i32 0, 0
  %r280 = add i32 0, 0
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  %r284 = add i32 0, 0
  %r285 = add i32 0, 0
  %r286 = add i32 0, 0
  %r287 = add i32 0, 0
  %r288 = add i32 0, 0
  %r289 = add i32 0, 0
  %r290 = add i32 0, 0
  %r291 = add i32 0, 0
  %r292 = add i32 0, 0
  %r293 = add i32 0, 0
  %r294 = add i32 0, 0
  %r295 = add i32 0, 0
  %r296 = call i32 @getint()
  %r297 = add i32 %r296, 0
  br label %bb1

bb1:
  %r298 = phi i32 [ %r297, %main ], [ %r361, %bb2 ]
  %r299 = icmp eq i32 %r298, 5
  br i1 %r299, label %bb2, label %bb3

bb2:
  %r360 = add i32 %r298, 1
  %r361 = add i32 %r360, 0
  br label %bb1

bb3:
  %r300 = add i32 0, 0
  %r301 = add i32 %r300, 1
  %r302 = add i32 %r301, 0
  %r303 = add i32 %r302, 1
  %r304 = add i32 %r303, 0
  %r305 = add i32 %r304, 1
  %r306 = add i32 %r305, 0
  %r307 = add i32 %r306, 1
  %r308 = add i32 %r307, 0
  %r309 = add i32 %r308, 1
  %r310 = add i32 %r309, 0
  %r311 = add i32 %r310, 1
  %r312 = add i32 %r311, 0
  %r313 = add i32 %r312, 1
  %r314 = add i32 %r313, 0
  %r315 = add i32 %r314, 1
  %r316 = add i32 %r315, 0
  %r317 = add i32 %r316, 1
  %r318 = add i32 %r317, 0
  %r319 = add i32 %r318, 1
  %r320 = add i32 %r319, 0
  %r321 = add i32 %r320, 1
  %r322 = add i32 %r321, 0
  %r323 = add i32 %r322, 1
  %r324 = add i32 %r323, 0
  %r325 = add i32 %r324, 1
  %r326 = add i32 %r325, 0
  %r327 = add i32 %r326, 1
  %r328 = add i32 %r327, 0
  %r329 = add i32 %r328, 1
  %r330 = add i32 %r329, 0
  %r331 = add i32 %r330, 1
  %r332 = add i32 %r331, 0
  %r333 = add i32 %r332, 1
  %r334 = add i32 %r333, 0
  %r335 = add i32 %r334, 1
  %r336 = add i32 %r335, 0
  %r337 = add i32 %r336, 1
  %r338 = add i32 %r337, 0
  %r339 = add i32 %r338, 1
  %r340 = add i32 %r339, 0
  %r341 = add i32 %r340, 1
  %r342 = add i32 %r341, 0
  %r343 = add i32 %r342, 1
  %r344 = add i32 %r343, 0
  %r345 = add i32 %r344, 1
  %r346 = add i32 %r345, 0
  %r347 = add i32 %r346, 1
  %r348 = add i32 %r347, 0
  %r349 = add i32 %r348, 1
  %r350 = add i32 %r349, 0
  %r351 = add i32 %r350, 1
  %r352 = add i32 %r351, 0
  %r353 = add i32 %r352, 1
  %r354 = add i32 %r353, 0
  %r355 = add i32 %r354, 1
  %r356 = add i32 %r355, 0
  %r357 = add i32 %r356, 1
  %r358 = add i32 %r357, 0
  call void @putint(i32 %r300)
  call void @putint(i32 %r302)
  call void @putint(i32 %r304)
  call void @putint(i32 %r306)
  call void @putint(i32 %r308)
  call void @putint(i32 %r310)
  call void @putint(i32 %r312)
  call void @putint(i32 %r314)
  call void @putint(i32 %r316)
  call void @putint(i32 %r318)
  call void @putint(i32 %r320)
  call void @putint(i32 %r322)
  call void @putint(i32 %r324)
  call void @putint(i32 %r326)
  call void @putint(i32 %r328)
  call void @putint(i32 %r330)
  call void @putint(i32 %r332)
  call void @putint(i32 %r334)
  call void @putint(i32 %r336)
  call void @putint(i32 %r338)
  call void @putint(i32 %r340)
  call void @putint(i32 %r342)
  call void @putint(i32 %r344)
  call void @putint(i32 %r346)
  call void @putint(i32 %r348)
  call void @putint(i32 %r350)
  call void @putint(i32 %r352)
  call void @putint(i32 %r354)
  call void @putint(i32 %r356)
  call void @putint(i32 %r358)
  %r359 = add i32 10, 0
  call void @putch(i32 %r359)
  call void @putint(i32 %r298)
  call void @putch(i32 %r359)
  call void @_sysy_stoptime(i32 312)
  ret i32 %r350
}

