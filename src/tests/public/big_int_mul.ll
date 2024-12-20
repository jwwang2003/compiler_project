declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@len = global i32 20
define i32 @main( ) {
main:
  %r298 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r105 = alloca [ 20 x i32 ]
  %r106 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 0
  store i32 1, i32* %r106
  %r107 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 1
  store i32 2, i32* %r107
  %r108 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 2
  store i32 3, i32* %r108
  %r109 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 3
  store i32 4, i32* %r109
  %r110 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 4
  store i32 5, i32* %r110
  %r111 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 5
  store i32 6, i32* %r111
  %r112 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 6
  store i32 7, i32* %r112
  %r113 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 7
  store i32 8, i32* %r113
  %r114 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 8
  store i32 9, i32* %r114
  %r115 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 9
  store i32 0, i32* %r115
  %r116 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 10
  store i32 1, i32* %r116
  %r117 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 11
  store i32 2, i32* %r117
  %r118 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 12
  store i32 3, i32* %r118
  %r119 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 13
  store i32 4, i32* %r119
  %r120 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 14
  store i32 5, i32* %r120
  %r121 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 15
  store i32 6, i32* %r121
  %r122 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 16
  store i32 7, i32* %r122
  %r123 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 17
  store i32 8, i32* %r123
  %r124 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 18
  store i32 9, i32* %r124
  %r125 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 19
  store i32 0, i32* %r125
  %r126 = alloca [ 20 x i32 ]
  %r127 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 0
  store i32 2, i32* %r127
  %r128 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 1
  store i32 3, i32* %r128
  %r129 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 2
  store i32 4, i32* %r129
  %r130 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 3
  store i32 2, i32* %r130
  %r131 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 4
  store i32 5, i32* %r131
  %r132 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 5
  store i32 7, i32* %r132
  %r133 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 6
  store i32 9, i32* %r133
  %r134 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 7
  store i32 9, i32* %r134
  %r135 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 8
  store i32 0, i32* %r135
  %r136 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 9
  store i32 1, i32* %r136
  %r137 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 10
  store i32 9, i32* %r137
  %r138 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 11
  store i32 8, i32* %r138
  %r139 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 12
  store i32 7, i32* %r139
  %r140 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 13
  store i32 6, i32* %r140
  %r141 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 14
  store i32 4, i32* %r141
  %r142 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 15
  store i32 3, i32* %r142
  %r143 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 16
  store i32 2, i32* %r143
  %r144 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 17
  store i32 1, i32* %r144
  %r145 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 18
  store i32 2, i32* %r145
  %r146 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 19
  store i32 2, i32* %r146
  %r304 = load i32, i32* @len
  %r305 = add i32 0, 0
  %r306 = add i32 %r304, 0
  %r307 = load i32, i32* @len
  %r308 = add i32 0, 0
  %r309 = add i32 %r307, 0
  %r151 = alloca [ 25 x i32 ]
  %r152 = alloca [ 25 x i32 ]
  %r153 = alloca [ 40 x i32 ]
  %r154 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  store i32 0, i32* %r154
  %r155 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 1
  store i32 0, i32* %r155
  %r156 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 2
  store i32 0, i32* %r156
  %r157 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 3
  store i32 0, i32* %r157
  %r158 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 4
  store i32 0, i32* %r158
  %r159 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 5
  store i32 0, i32* %r159
  %r160 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 6
  store i32 0, i32* %r160
  %r161 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 7
  store i32 0, i32* %r161
  %r162 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 8
  store i32 0, i32* %r162
  %r163 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 9
  store i32 0, i32* %r163
  %r164 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 10
  store i32 0, i32* %r164
  %r165 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 11
  store i32 0, i32* %r165
  %r166 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 12
  store i32 0, i32* %r166
  %r167 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 13
  store i32 0, i32* %r167
  %r168 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 14
  store i32 0, i32* %r168
  %r169 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 15
  store i32 0, i32* %r169
  %r170 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 16
  store i32 0, i32* %r170
  %r171 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 17
  store i32 0, i32* %r171
  %r172 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 18
  store i32 0, i32* %r172
  %r173 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 19
  store i32 0, i32* %r173
  %r174 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 20
  store i32 0, i32* %r174
  %r175 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 21
  store i32 0, i32* %r175
  %r176 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 22
  store i32 0, i32* %r176
  %r177 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 23
  store i32 0, i32* %r177
  %r178 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 24
  store i32 0, i32* %r178
  %r179 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 25
  store i32 0, i32* %r179
  %r180 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 26
  store i32 0, i32* %r180
  %r181 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 27
  store i32 0, i32* %r181
  %r182 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 28
  store i32 0, i32* %r182
  %r183 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 29
  store i32 0, i32* %r183
  %r184 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 30
  store i32 0, i32* %r184
  %r185 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 31
  store i32 0, i32* %r185
  %r186 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 32
  store i32 0, i32* %r186
  %r187 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 33
  store i32 0, i32* %r187
  %r188 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 34
  store i32 0, i32* %r188
  %r189 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 35
  store i32 0, i32* %r189
  %r190 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 36
  store i32 0, i32* %r190
  %r191 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 37
  store i32 0, i32* %r191
  %r192 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 38
  store i32 0, i32* %r192
  %r193 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 39
  store i32 0, i32* %r193
  %r310 = add i32 0, 0
  br label %bb1

bb1:
  %r311 = phi i32 [ %r310, %main ], [ %r373, %bb2 ]
  %r312 = icmp slt i32 %r311, %r306
  br i1 %r312, label %bb2, label %bb3

bb2:
  %r197 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r311
  %r199 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 %r311
  %r371 = load i32, i32* %r199
  store i32 %r371, i32* %r197
  %r372 = add i32 %r311, 1
  %r373 = add i32 %r372, 0
  br label %bb1

bb3:
  %r313 = add i32 0, 0
  br label %bb4

bb4:
  %r314 = phi i32 [ %r313, %bb3 ], [ %r370, %bb5 ]
  %r315 = icmp slt i32 %r314, %r309
  br i1 %r315, label %bb5, label %bb6

bb5:
  %r207 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r314
  %r209 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 %r314
  %r368 = load i32, i32* %r209
  store i32 %r368, i32* %r207
  %r369 = add i32 %r314, 1
  %r370 = add i32 %r369, 0
  br label %bb4

bb6:
  %r316 = add i32 %r306, %r309
  %r317 = sub i32 %r316, 1
  %r318 = add i32 %r317, 0
  %r319 = add i32 0, 0
  br label %bb7

bb7:
  %r320 = phi i32 [ %r319, %bb6 ], [ %r367, %bb8 ]
  %r321 = icmp sle i32 %r320, %r318
  br i1 %r321, label %bb8, label %bb9

bb8:
  %r221 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r320
  store i32 0, i32* %r221
  %r366 = add i32 %r320, 1
  %r367 = add i32 %r366, 0
  br label %bb7

bb9:
  %r322 = add i32 0, 0
  %r323 = sub i32 %r309, 1
  %r324 = add i32 %r323, 0
  br label %bb10

bb10:
  %r325 = phi i32 [ %r318, %bb9 ], [ %r348, %bb15 ]
  %r326 = phi i32 [ %r324, %bb9 ], [ %r350, %bb15 ]
  %r327 = icmp sgt i32 %r326, -1
  br i1 %r327, label %bb11, label %bb12

bb11:
  %r229 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r326
  %r339 = load i32, i32* %r229
  %r340 = add i32 %r339, 0
  %r341 = sub i32 %r306, 1
  %r342 = add i32 %r341, 0
  br label %bb13

bb13:
  %r343 = phi i32 [ %r325, %bb11 ], [ %r360, %bb18 ]
  %r344 = phi i32 [ %r342, %bb11 ], [ %r358, %bb18 ]
  %r345 = icmp sgt i32 %r344, -1
  br i1 %r345, label %bb14, label %bb15

bb14:
  %r236 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r343
  %r238 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r344
  %r351 = load i32, i32* %r238
  %r352 = mul i32 %r340, %r351
  %r353 = load i32, i32* %r236
  %r354 = add i32 %r353, %r352
  %r355 = add i32 %r354, 0
  %r356 = icmp sge i32 %r355, 10
  br i1 %r356, label %bb16, label %bb17

bb16:
  %r247 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r343
  store i32 %r355, i32* %r247
  %r361 = sub i32 %r343, 1
  %r362 = add i32 %r361, 0
  %r253 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r362
  %r255 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r362
  %r363 = sdiv i32 %r355, 10
  %r364 = load i32, i32* %r255
  %r365 = add i32 %r364, %r363
  store i32 %r365, i32* %r253
  br label %bb18

bb17:
  %r261 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r343
  store i32 %r355, i32* %r261
  br label %bb18

bb18:
  %r357 = sub i32 %r344, 1
  %r358 = add i32 %r357, 0
  %r359 = sub i32 %r343, 1
  %r360 = add i32 %r359, 0
  br label %bb13

bb15:
  %r346 = add i32 %r343, %r306
  %r347 = sub i32 %r346, 1
  %r348 = add i32 %r347, 0
  %r349 = sub i32 %r326, 1
  %r350 = add i32 %r349, 0
  br label %bb10

bb12:
  %r275 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r328 = load i32, i32* %r275
  %r329 = icmp ne i32 %r328, 0
  br i1 %r329, label %bb19, label %bb21

bb19:
  %r277 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r338 = load i32, i32* %r277
  call void @putint(i32 %r338)
  br label %bb21

bb21:
  %r330 = add i32 1, 0
  br label %bb22

bb22:
  %r331 = phi i32 [ %r330, %bb21 ], [ %r337, %bb23 ]
  %r332 = add i32 %r306, %r309
  %r333 = sub i32 %r332, 1
  %r334 = icmp sle i32 %r331, %r333
  br i1 %r334, label %bb23, label %bb24

bb23:
  %r285 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r331
  %r335 = load i32, i32* %r285
  call void @putint(i32 %r335)
  %r336 = add i32 %r331, 1
  %r337 = add i32 %r336, 0
  br label %bb22

bb24:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

