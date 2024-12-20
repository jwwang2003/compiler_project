declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [ 65536 x i32 ] zeroinitializer
@program = global [ 32768 x i32 ] zeroinitializer
@ptr = global i32 0
define void @read_program( ) {
read_program:
  %r190 = add i32 0, 0
  %r191 = add i32 0, 0
  %r192 = call i32 @getint()
  %r193 = add i32 0, 0
  %r194 = add i32 %r192, 0
  br label %bb1

bb1:
  %r195 = phi i32 [ %r191, %read_program ], [ %r199, %bb2 ]
  %r196 = icmp slt i32 %r195, %r194
  br i1 %r196, label %bb2, label %bb3

bb2:
  %r106 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r195
  %r197 = call i32 @getch()
  store i32 %r197, i32* %r106
  %r198 = add i32 %r195, 1
  %r199 = add i32 %r198, 0
  br label %bb1

bb3:
  %r111 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r195
  store i32 0, i32* %r111
  ret void
}

define void @interpret( i32* %r113 ) {
interpret:
  %r205 = add i32 0, 0
  %r206 = add i32 0, 0
  %r207 = add i32 0, 0
  %r208 = add i32 0, 0
  %r209 = add i32 0, 0
  %r210 = add i32 0, 0
  br label %bb4

bb4:
  %r211 = phi i32 [ %r210, %interpret ], [ %r227, %bb27 ]
  %r118 = getelementptr i32, i32* %r113, i32 %r211
  %r212 = load i32, i32* %r118
  %r213 = icmp ne i32 %r212, 0
  br i1 %r213, label %bb5, label %bb6

bb5:
  %r121 = getelementptr i32, i32* %r113, i32 %r211
  %r214 = load i32, i32* %r121
  %r215 = add i32 %r214, 0
  %r216 = icmp eq i32 %r215, 62
  br i1 %r216, label %bb7, label %bb9

bb7:
  %r266 = load i32, i32* @ptr
  %r267 = add i32 %r266, 1
  store i32 %r267, i32* @ptr
  br label %bb9

bb9:
  %r217 = icmp eq i32 %r215, 60
  br i1 %r217, label %bb10, label %bb12

bb10:
  %r264 = load i32, i32* @ptr
  %r265 = sub i32 %r264, 1
  store i32 %r265, i32* @ptr
  br label %bb12

bb12:
  %r218 = icmp eq i32 %r215, 43
  br i1 %r218, label %bb13, label %bb15

bb13:
  %r260 = load i32, i32* @ptr
  %r134 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r260
  %r261 = load i32, i32* @ptr
  %r136 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r261
  %r262 = load i32, i32* %r136
  %r263 = add i32 %r262, 1
  store i32 %r263, i32* %r134
  br label %bb15

bb15:
  %r219 = icmp eq i32 %r215, 45
  br i1 %r219, label %bb16, label %bb18

bb16:
  %r256 = load i32, i32* @ptr
  %r142 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r256
  %r257 = load i32, i32* @ptr
  %r144 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r257
  %r258 = load i32, i32* %r144
  %r259 = sub i32 %r258, 1
  store i32 %r259, i32* %r142
  br label %bb18

bb18:
  %r220 = icmp eq i32 %r215, 46
  br i1 %r220, label %bb19, label %bb21

bb19:
  %r254 = load i32, i32* @ptr
  %r150 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r254
  %r255 = load i32, i32* %r150
  call void @putch(i32 %r255)
  br label %bb21

bb21:
  %r221 = icmp eq i32 %r215, 44
  br i1 %r221, label %bb22, label %bb24

bb22:
  %r252 = load i32, i32* @ptr
  %r155 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r252
  %r253 = call i32 @getch()
  store i32 %r253, i32* %r155
  br label %bb24

bb24:
  %r222 = icmp eq i32 %r215, 93
  br i1 %r222, label %bb28, label %bb29

bb28:
  %r251 = add i32 1, 0
  br label %bb30

bb29:
  %r250 = add i32 0, 0
  br label %bb30

bb30:
  %r223 = phi i32 [ %r251, %bb28 ], [ %r250, %bb29 ]
  %r224 = icmp ne i32 %r223, 0
  br i1 %r224, label %bb31, label %bb27

bb31:
  %r228 = load i32, i32* @ptr
  %r165 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r228
  %r229 = load i32, i32* %r165
  %r230 = icmp ne i32 %r229, 0
  br i1 %r230, label %bb32, label %bb33

bb32:
  %r249 = add i32 1, 0
  br label %bb34

bb33:
  %r248 = add i32 0, 0
  br label %bb34

bb34:
  %r231 = phi i32 [ %r249, %bb32 ], [ %r248, %bb33 ]
  %r232 = icmp ne i32 %r231, 0
  br i1 %r232, label %bb25, label %bb27

bb25:
  %r233 = add i32 1, 0
  br label %bb35

bb35:
  %r234 = phi i32 [ %r211, %bb25 ], [ %r238, %bb40 ], [ %r238, %bb41 ]
  %r235 = phi i32 [ %r233, %bb25 ], [ %r242, %bb40 ], [ %r245, %bb41 ]
  %r236 = icmp sgt i32 %r235, 0
  br i1 %r236, label %bb36, label %bb27

bb36:
  %r237 = sub i32 %r234, 1
  %r238 = add i32 %r237, 0
  %r174 = getelementptr i32, i32* %r113, i32 %r238
  %r239 = load i32, i32* %r174
  %r240 = add i32 %r239, 0
  %r241 = icmp eq i32 %r240, 91
  br i1 %r241, label %bb38, label %bb40

bb38:
  %r246 = sub i32 %r235, 1
  %r247 = add i32 %r246, 0
  br label %bb40

bb40:
  %r242 = phi i32 [ %r235, %bb36 ], [ %r247, %bb38 ]
  %r243 = icmp eq i32 %r240, 93
  br i1 %r243, label %bb41, label %bb35

bb41:
  %r244 = add i32 %r242, 1
  %r245 = add i32 %r244, 0
  br label %bb35

bb27:
  %r225 = phi i32 [ %r211, %bb30 ], [ %r211, %bb34 ], [ %r234, %bb35 ]
  %r226 = add i32 %r225, 1
  %r227 = add i32 %r226, 0
  br label %bb4

bb6:
  ret void
}

define i32 @main( ) {
main:
  call void @_sysy_starttime(i32 76)
  call void @read_program()
  %r187 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0
  call void @interpret(i32* %r187)
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 80)
  ret i32 0
}

