	.include "macros/function.inc"
	.include "include/ov23_0225128C.inc"

	

	.text


	thumb_func_start ov23_0225128C
ov23_0225128C: ; 0x0225128C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, r7
	ble _022512D2
	cmp r4, #0
	ldr r0, [r5, #8]
	beq _022512AA
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
	b _022512B2
_022512AA:
	mov r1, #0
	add r2, r1, #0
	bl sub_0206A8C4
_022512B2:
	add r0, r4, r7
	cmp r6, r0
	ldr r0, [r5, #8]
	beq _022512C4
	mov r1, #1
	add r2, r1, #0
	bl sub_0206A8C4
	b _022512CC
_022512C4:
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022512CC:
	ldr r0, [r5, #8]
	bl sub_0206A870
_022512D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0225128C

	thumb_func_start ov23_022512D4
ov23_022512D4: ; 0x022512D4
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022512E8
	cmp r1, #0
	beq _022512E8
	mov r0, #0xff
	bx lr
_022512E8:
	cmp r3, #0xc
	bne _022512F0
	mov r3, #0
	b _022512FC
_022512F0:
	cmp r3, #0x2c
	bne _022512F8
	mov r3, #8
	b _022512FC
_022512F8:
	mov r0, #0xff
	bx lr
_022512FC:
	add r0, r2, #0
	sub r0, #0xf
	cmp r0, #1
	bhi _02251308
	mov r0, #0
	bx lr
_02251308:
	mov r1, #0
_0225130A:
	add r0, r2, #0
	sub r0, #0x2f
	cmp r0, #1
	bhi _02251316
	add r0, r1, r3
	bx lr
_02251316:
	add r1, r1, #1
	sub r2, #0x20
	cmp r1, #8
	blt _0225130A
	mov r0, #0xff
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022512D4

	thumb_func_start ov23_02251324
ov23_02251324: ; 0x02251324
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02058F80
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_022512D4
	add r4, r0, #0
	bl sub_02058F50
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02251346
	mov r4, #0xff
_02251346:
	cmp r4, #0xff
	beq _022513A0
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, sp, #0
	strb r4, [r0, #2]
	strb r5, [r0, #1]
	mov r1, #0
	strb r1, [r0, #3]
	cmp r4, r5
	beq _02251372
	add r0, r5, #0
	bl ov23_0224AEA4
	cmp r0, #0
	bne _02251392
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #3]
	b _02251392
_02251372:
	add r0, r5, #0
	bl ov23_0224AEA4
	cmp r0, #0
	beq _02251392
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl ov23_0224A570
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251392:
	add r1, sp, #0
	mov r0, #0x53
	add r1, #1
	bl sub_02035B48
	mov r0, #1
	pop {r3, r4, r5, pc}
_022513A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02251324

	thumb_func_start ov23_022513A4
ov23_022513A4: ; 0x022513A4
	ldr r3, _022513AC ; =sub_0205948C
	mov r0, #0x40
	bx r3
	nop
_022513AC: .word sub_0205948C
	thumb_func_end ov23_022513A4

	thumb_func_start ov23_022513B0
ov23_022513B0: ; 0x022513B0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035EE0
	cmp r0, #0
	beq _02251408
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _02251408
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _022513E4
	ldr r0, _0225140C ; =0x0000060C
	bl sub_02005748
	bl sub_020594FC
	add r0, r4, #0
	bl ov23_02251F94
	pop {r3, r4, r5, pc}
_022513E4:
	mov r0, #0x40
	bl sub_02059464
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _022513FA
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_022520E8
	pop {r3, r4, r5, pc}
_022513FA:
	bl ov23_022421AC
	ldr r3, _02251410 ; =ov23_022513A4
	mov r1, #9
	mov r2, #1
	bl ov23_02253F40
_02251408:
	pop {r3, r4, r5, pc}
	nop
_0225140C: .word 0x0000060C
_02251410: .word ov23_022513A4
	thumb_func_end ov23_022513B0

	thumb_func_start ov23_02251414
ov23_02251414: ; 0x02251414
	mov r0, #3
	bx lr
	thumb_func_end ov23_02251414

	thumb_func_start ov23_02251418
ov23_02251418: ; 0x02251418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	add r1, r5, #0
	bl sub_02028B88
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202895C
	cmp r0, #0
	beq _02251446
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02028B94
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251446:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02251418

	thumb_func_start ov23_0225144C
ov23_0225144C: ; 0x0225144C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02028AFC
	cmp r0, #0
	beq _0225146C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0225146C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020289B8
	bl ov23_0224F744
	cmp r0, #0
	beq _02251488
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020289C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251488:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0225144C

	thumb_func_start ov23_0225148C
ov23_0225148C: ; 0x0225148C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022514A0
	mov r4, #5
_022514A0:
	bl ov23_022421BC
	mov r2, #0
	add r1, r4, #6
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	thumb_func_end ov23_0225148C

	thumb_func_start ov23_022514B0
ov23_022514B0: ; 0x022514B0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022514C4
	mov r4, #3
_022514C4:
	bl ov23_022421BC
	add r4, #0x2c
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_022514B0

	thumb_func_start ov23_022514D8
ov23_022514D8: ; 0x022514D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #0
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x17
	bl ov23_022430E0
	add r0, r4, #0
	bl ov23_022521C8
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _02251526
	bhs _02251532
	cmp r5, #4
	bhi _022515C6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225151C: ; jump table
	.short _02251540 - _0225151C - 2 ; case 0
	.short _022515AC - _0225151C - 2 ; case 1
	.short _022515BA - _0225151C - 2 ; case 2
	.short _0225159E - _0225151C - 2 ; case 3
	.short _02251590 - _0225151C - 2 ; case 4
_02251526:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022515C6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251532:
	ldr r0, _022515CC ; =0x0000060E
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #2
	strb r1, [r4, r0]
	b _022515C6
_02251540:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0
	bne _02251566
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x17
	strb r1, [r4, r0]
	b _022515C6
_02251566:
	bl sub_02033DFC
	cmp r0, #0
	beq _0225157A
	bl ov23_02243204
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #3
	strb r1, [r4, r0]
	b _022515C6
_0225157A:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x38
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x17
	strb r1, [r4, r0]
	b _022515C6
_02251590:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #8
	strb r1, [r4, r0]
	b _022515C6
_0225159E:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #6
	strb r1, [r4, r0]
	b _022515C6
_022515AC:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x11
	strb r1, [r4, r0]
	b _022515C6
_022515BA:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x14
	strb r1, [r4, r0]
_022515C6:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022515CC: .word 0x0000060E
_022515D0: .word 0x00000246
_022515D4: .word 0x000005DC
	thumb_func_end ov23_022514D8

	thumb_func_start ov23_022515D8
ov23_022515D8: ; 0x022515D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, r2, #1
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	ldr r0, [r0, #0xc]
	str r3, [sp, #0x14]
	bl sub_020298A0
	bl sub_0202958C
	cmp r0, #3
	bge _022515FC
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
_022515FC:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, [sp, #0x18]
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, #0x10
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x11
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022516E0 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _022516E4 ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _02251682
	sub r0, r0, #1
	str r0, [sp, #0x1c]
_0225165A:
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	ldr r0, [r5, #0x40]
	bne _02251670
	mov r3, #1
	add r1, r7, #0
	add r2, r6, #5
	mvn r3, r3
	bl sub_02013A4C
	b _0225167A
_02251670:
	add r1, r7, #0
	add r2, r6, r4
	add r3, r4, #0
	bl sub_02013A4C
_0225167A:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0225165A
_02251682:
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x20
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x20
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022516B2
	str r0, [sp, #0x24]
_022516B2:
	str r5, [sp, #0x3c]
	add r2, sp, #0x20
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022516E0: .word 0x000003D9
_022516E4: .word 0x0000027F
	thumb_func_end ov23_022515D8

	thumb_func_start ov23_022516E8
ov23_022516E8: ; 0x022516E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r1, r2, #0
	add r1, r1, #1
	str r1, [sp, #0x1c]
	add r5, r0, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl ov23_0224FB7C
	ldr r0, [sp, #0x1c]
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, #0x10
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xe2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x11
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022517D8 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _022517DC ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _0225177A
_02251752:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	ldr r0, [r5, #0x40]
	bne _02251768
	mov r3, #1
	add r1, r7, #0
	add r2, r6, r4
	mvn r3, r3
	bl sub_02013A4C
	b _02251772
_02251768:
	add r1, r7, #0
	add r2, r6, r4
	add r3, r4, #0
	bl sub_02013A4C
_02251772:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _02251752
_0225177A:
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x20
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp, #0x14]
	add r1, sp, #0x20
	add r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	strh r0, [r1, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022517AA
	str r0, [sp, #0x24]
_022517AA:
	str r5, [sp, #0x3c]
	add r2, sp, #0x20
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022517D8: .word 0x000003D9
_022517DC: .word 0x0000027F
	thumb_func_end ov23_022516E8

	thumb_func_start ov23_022517E0
ov23_022517E0: ; 0x022517E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x48]
	bl sub_02001288
	add r4, r0, #0
	add r1, sp, #0
	ldr r0, [r5, #0x48]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x16
	bl ov23_022430E0
	add r0, r5, #0
	bl ov23_022521C8
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bhi _02251826
	bhs _02251830
	cmp r4, #2
	bhi _02251880
	cmp r4, #0
	beq _0225183E
	cmp r4, #1
	beq _02251854
	cmp r4, #2
	beq _0225186A
	b _02251880
_02251826:
	add r0, r0, #1
	cmp r4, r0
	bne _02251880
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251830:
	ldr r0, _0225188C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02251890 ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251886
_0225183E:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _0225184E
	mov r1, #0xb
	strb r1, [r5, r0]
	b _02251886
_0225184E:
	mov r1, #0xa
	strb r1, [r5, r0]
	b _02251886
_02251854:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _02251864
	mov r1, #0xd
	strb r1, [r5, r0]
	b _02251886
_02251864:
	mov r1, #0xc
	strb r1, [r5, r0]
	b _02251886
_0225186A:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _0225187A
	mov r1, #0xf
	strb r1, [r5, r0]
	b _02251886
_0225187A:
	mov r1, #0xe
	strb r1, [r5, r0]
	b _02251886
_02251880:
	ldr r0, _02251890 ; =0x00000246
	mov r1, #2
	strb r1, [r5, r0]
_02251886:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0225188C: .word 0x000005DC
_02251890: .word 0x00000246
	thumb_func_end ov23_022517E0

	thumb_func_start ov23_02251894
ov23_02251894: ; 0x02251894
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #2
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022518C6
	add r4, r0, #0
_022518C6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022518F2
	add r0, r0, #1
	cmp r4, r0
	bne _02251902
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022518F2:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _0225195C ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251954
_02251902:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F61C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02251418
	cmp r0, #0
	beq _0225193A
	bl ov23_022421BC
	add r1, r6, #0
	bl ov23_022540F4
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x25
	add r3, r2, #0
	bl ov23_02253F40
	b _02251948
_0225193A:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x26
	add r3, r2, #0
	bl ov23_02253F40
_02251948:
	ldr r0, _0225195C ; =0x00000246
	mov r1, #0x13
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov23_0224FB7C
_02251954:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225195C: .word 0x00000246
	thumb_func_end ov23_02251894

	thumb_func_start ov23_02251960
ov23_02251960: ; 0x02251960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #6
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02251992
	add r4, r0, #0
_02251992:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022519BE
	add r0, r0, #1
	cmp r4, r0
	bne _022519CE
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022519BE:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02251A54 ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251A38
_022519CE:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F5F0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0225144C
	cmp r0, #1
	bne _02251A06
	bl ov23_022421BC
	add r1, r6, #0
	bl ov23_022540F4
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x24
	add r3, r2, #0
	bl ov23_02253F40
	b _02251A2C
_02251A06:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02251A1E
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x37
	add r3, r2, #0
	bl ov23_02253F40
	b _02251A2C
_02251A1E:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x27
	add r3, r2, #0
	bl ov23_02253F40
_02251A2C:
	ldr r0, _02251A54 ; =0x00000246
	mov r1, #0x16
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov23_0224FB7C
_02251A38:
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02251A54: .word 0x00000246
	thumb_func_end ov23_02251960

	thumb_func_start ov23_02251A58
ov23_02251A58: ; 0x02251A58
	push {r3, lr}
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02251A7C
	ldr r0, _02251A80 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02251A7C
	bl ov23_022421BC
	bl ov23_02254044
	mov r0, #1
	pop {r3, pc}
_02251A7C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02251A80: .word 0x021BF67C
	thumb_func_end ov23_02251A58

	thumb_func_start ov23_02251A84
ov23_02251A84: ; 0x02251A84
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	lsl r1, r0, #0x10
	mov r0, #0xf
	lsl r0, r0, #0x10
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	lsl r1, r0, #0x10
	mov r0, #0x11
	lsl r0, r0, #0x10
	sub r1, r0, r1
	str r1, [sp, #8]
	cmp r5, #0
	bne _02251ABE
	ldr r0, [sp]
	neg r0, r0
	str r0, [sp]
	neg r0, r1
	str r0, [sp, #8]
_02251ABE:
	ldr r1, [r4, #0x24]
	add r0, sp, #0
	bl sub_02020990
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02251A84

	thumb_func_start ov23_02251ACC
ov23_02251ACC: ; 0x02251ACC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #5
	bhi _02251BAA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251AF2: ; jump table
	.short _02251AFE - _02251AF2 - 2 ; case 0
	.short _02251B22 - _02251AF2 - 2 ; case 1
	.short _02251B40 - _02251AF2 - 2 ; case 2
	.short _02251B4E - _02251AF2 - 2 ; case 3
	.short _02251B54 - _02251AF2 - 2 ; case 4
	.short _02251B80 - _02251AF2 - 2 ; case 5
_02251AFE:
	ldr r0, _02251BB0 ; =0x0000060D
	bl sub_02005748
	mov r1, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #0]
	b _02251BAA
_02251B22:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02251BAA
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0205EB18
	mov r0, #1
	add r1, r4, #0
	bl ov23_02251A84
	mov r0, #2
	str r0, [r5, #0]
	b _02251BAA
_02251B40:
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02254D98
	mov r0, #3
	str r0, [r5, #0]
	b _02251BAA
_02251B4E:
	mov r0, #4
	str r0, [r5, #0]
	b _02251BAA
_02251B54:
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0205EB18
	mov r0, #0
	add r1, r4, #0
	bl ov23_02251A84
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _02251BAA
_02251B80:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02251BAA
	add r0, r4, #0
	bl ov23_0224B2C8
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AA30
	add r0, r4, #0
	bl ov23_02251F94
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02251BAA:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02251BB0: .word 0x0000060D
	thumb_func_end ov23_02251ACC

	thumb_func_start ov23_02251BB4
ov23_02251BB4: ; 0x02251BB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_0200B3F0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02251BDA
	mov r0, #0
	blx r1
_02251BDA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02251BE8
	bl sub_0206A844
	mov r0, #0
	str r0, [r4, #8]
_02251BE8:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_022421BC
	bl ov23_02254044
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02251BB4

	thumb_func_start ov23_02251C04
ov23_02251C04: ; 0x02251C04
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _02251F80 ; =0x00000246
	add r4, r1, #0
	ldrb r3, [r4, r2]
	add r6, r0, #0
	cmp r3, #0x17
	bhi _02251CF8
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02251C20: ; jump table
	.short _02251C50 - _02251C20 - 2 ; case 0
	.short _02251C8E - _02251C20 - 2 ; case 1
	.short _02251C96 - _02251C20 - 2 ; case 2
	.short _02251E9E - _02251C20 - 2 ; case 3
	.short _02251F7C - _02251C20 - 2 ; case 4
	.short _02251F7C - _02251C20 - 2 ; case 5
	.short _02251CAA - _02251C20 - 2 ; case 6
	.short _02251CEE - _02251C20 - 2 ; case 7
	.short _02251D12 - _02251C20 - 2 ; case 8
	.short _02251D54 - _02251C20 - 2 ; case 9
	.short _02251D5C - _02251C20 - 2 ; case 10
	.short _02251D90 - _02251C20 - 2 ; case 11
	.short _02251DA8 - _02251C20 - 2 ; case 12
	.short _02251DDC - _02251C20 - 2 ; case 13
	.short _02251DF4 - _02251C20 - 2 ; case 14
	.short _02251E28 - _02251C20 - 2 ; case 15
	.short _02251E40 - _02251C20 - 2 ; case 16
	.short _02251ED4 - _02251C20 - 2 ; case 17
	.short _02251F04 - _02251C20 - 2 ; case 18
	.short _02251F0C - _02251C20 - 2 ; case 19
	.short _02251F20 - _02251C20 - 2 ; case 20
	.short _02251F50 - _02251C20 - 2 ; case 21
	.short _02251F58 - _02251C20 - 2 ; case 22
	.short _02251F6C - _02251C20 - 2 ; case 23
_02251C50:
	add r0, r4, #0
	bl ov23_02252E18
	mov r0, #0x17
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x17
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1a
	strh r0, [r4, r1]
	mov r1, #0
	ldr r3, _02251F84 ; =ov23_0225148C
	add r0, r4, #0
	mov r2, #5
	str r1, [sp]
	bl ov23_022515D8
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #1
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251C8E:
	bl ov23_022514D8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251C96:
	bl sub_02059514
	bl ov23_02243204
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02251BB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251CAA:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_022421BC
	bl ov23_02254044
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	mov r3, #0
	str r3, [sp]
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl ov23_02253C64
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #7
	add r1, #0x3a
	add sp, #4
	strb r0, [r4, r1]
	pop {r3, r4, r5, r6, pc}
_02251CEE:
	ldr r0, _02251F88 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02251CFA
_02251CF8:
	b _02251F7C
_02251CFA:
	sub r2, #0x3a
	ldr r0, [r4, r2]
	bl ov23_02253D10
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x3a
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D12:
	bl ov23_022421BC
	bl ov23_02254044
	mov r0, #0x16
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x16
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1a
	strh r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	ldr r3, _02251F8C ; =ov23_022514B0
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #3
	bl ov23_022516E8
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #9
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D54:
	bl ov23_022517E0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251D5C:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FF8
	bl ov23_022412F0
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x30
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D90:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x39
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DA8:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FD0
	bl ov23_02241E6C
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x31
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DDC:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3a
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DF4:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FE4
	bl ov23_02245728
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x32
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E28:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3b
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E40:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02251E56
	ldr r0, _02251F88 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02251E58
_02251E56:
	b _02251F7C
_02251E58:
	bl sub_02033DFC
	cmp r0, #0
	bne _02251E6E
	mov r0, #1
	mov r1, #0
	sub r2, r1, #6
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
_02251E6E:
	bl ov23_022421BC
	bl ov23_02254044
	bl sub_02033DFC
	cmp r0, #0
	beq _02251E84
	bl ov23_02242FA8
	b _02251E88
_02251E84:
	bl ov23_02242FBC
_02251E88:
	bl ov23_02245784
	bl ov23_02241364
	bl ov23_02241ED0
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #8
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E9E:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02251EC8
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	ldr r1, _02251F90 ; =ov23_02251ACC
	add r2, r5, #0
	bl sub_02050904
_02251EC8:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02251BB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251ED4:
	mov r0, #2
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250D2C
	add r0, r4, #0
	mov r1, #0x1c
	bl ov23_02252D74
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x12
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F04:
	bl ov23_02251894
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251F0C:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x11
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F20:
	mov r0, #6
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #6
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250D5C
	add r0, r4, #0
	mov r1, #0x20
	bl ov23_02252D74
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x15
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F50:
	bl ov23_02251960
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251F58:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x14
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F6C:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
_02251F7C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02251F80: .word 0x00000246
_02251F84: .word ov23_0225148C
_02251F88: .word 0x021BF67C
_02251F8C: .word ov23_022514B0
_02251F90: .word ov23_02251ACC
	thumb_func_end ov23_02251C04

	thumb_func_start ov23_02251F94
ov23_02251F94: ; 0x02251F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	str r5, [r4, #0xc]
	bl ov23_022421BC
	ldr r1, _02252024 ; =0x0000027F
	mov r2, #1
	bl ov23_02253DFC
	ldr r0, _02252028 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	mov r0, #4
	bl sub_0206A780
	str r0, [r4, #8]
	mov r1, #0xc8
	mov r2, #0x14
	mov r3, #0x7a
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	ldr r0, _0225202C ; =ov23_02251C04
	ldr r2, _02252030 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02252034 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r3, r4, r5, pc}
	nop
_02252024: .word 0x0000027F
_02252028: .word 0x00000246
_0225202C: .word ov23_02251C04
_02252030: .word 0x00002710
_02252034: .word ov23_02251270
	thumb_func_end ov23_02251F94

	thumb_func_start ov23_02252038
ov23_02252038: ; 0x02252038
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0225204E
	cmp r0, #1
	beq _02252074
	cmp r0, #2
	beq _022520AC
	pop {r3, r4, r5, pc}
_0225204E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _022520BC
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _022520C0 ; =0x022569C8
	ldr r0, [r0, #8]
	ldr r2, _022520C4 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02252074:
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022520BC
	cmp r0, #0
	bne _02252094
	add r1, r4, #0
	mov r0, #0x59
	add r1, #0xc
	bl sub_020360D0
	b _022520A2
_02252094:
	mov r0, #0x40
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
_022520A2:
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_022520AC:
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	add r0, r5, #0
	bl sub_0200DA58
_022520BC:
	pop {r3, r4, r5, pc}
	nop
_022520C0: .word 0x022569C8
_022520C4: .word 0x000003D9
	thumb_func_end ov23_02252038

	thumb_func_start ov23_022520C8
ov23_022520C8: ; 0x022520C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _022520DA
	mov r1, #4
	bl sub_02002154
_022520DA:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_022520C8

	thumb_func_start ov23_022520E8
ov23_022520E8: ; 0x022520E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x25
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _02252150 ; =ov23_02252038
	ldr r2, _02252154 ; =0x00002710
	str r6, [r4, #4]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	bl ov23_0224219C
	add r6, r0, #0
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r6, #0
	bl ov23_02254068
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x43
	add r3, r2, #0
	bl ov23_02253F40
	ldrb r0, [r5]
	ldr r2, _02252158 ; =ov23_022520C8
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0xe]
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	nop
_02252150: .word ov23_02252038
_02252154: .word 0x00002710
_02252158: .word ov23_022520C8
	thumb_func_end ov23_022520E8

	thumb_func_start ov23_0225215C
ov23_0225215C: ; 0x0225215C
	push {r4, lr}
	add r4, r2, #0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224AEC4
	cmp r0, #0
	beq _02252174
	mov r0, #0x5a
	add r1, r4, #0
	bl sub_02035B48
_02252174:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225215C

	thumb_func_start ov23_02252178
ov23_02252178: ; 0x02252178
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022521AE
	bl ov23_022421AC
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_022421AC
	ldr r3, _022521C0 ; =ov23_022513A4
	mov r1, #8
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _022521C4 ; =0x00000425
	bl sub_0200549C
_022521AE:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224AEC4
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224D500
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022521C0: .word ov23_022513A4
_022521C4: .word 0x00000425
	thumb_func_end ov23_02252178

	thumb_func_start ov23_022521C8
ov23_022521C8: ; 0x022521C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, _022521E8 ; =0x0000024A
	ldr r0, [r5, #0x48]
	ldrh r4, [r5, r1]
	add r1, r5, r1
	bl sub_020014D0
	ldr r0, _022521E8 ; =0x0000024A
	ldrh r0, [r5, r0]
	cmp r4, r0
	beq _022521E6
	ldr r0, _022521EC ; =0x000005DC
	bl sub_02005748
_022521E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022521E8: .word 0x0000024A
_022521EC: .word 0x000005DC
	thumb_func_end ov23_022521C8

	.rodata


	.global Unk_ov23_022569C4
Unk_ov23_022569C4: ; 0x022569C4
	.incbin "incbin/overlay23_rodata.bin", 0x6B8, 0x6BC - 0x6B8

	.global Unk_ov23_022569C8
Unk_ov23_022569C8: ; 0x022569C8
	.incbin "incbin/overlay23_rodata.bin", 0x6BC, 0x8

