	.include "macros/function.inc"
	.include "include/ov62_02235278.inc"

	

	.text


	thumb_func_start ov62_02235278
ov62_02235278: ; 0x02235278
	push {r4, lr}
	add r4, r0, #0
	bl sub_02022798
	cmp r0, #0
	beq _02235292
	ldr r0, _022352D4 ; =0x0000089C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235292
	add r0, r4, #0
	bl ov62_02231A1C
_02235292:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _022352CA
	bl ov62_022352DC
	cmp r0, #1
	beq _022352A6
	cmp r0, #2
	beq _022352B8
	b _022352CA
_022352A6:
	ldr r0, _022352D8 ; =0x00000563
	bl sub_02005748
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
	mov r0, #0
	pop {r4, pc}
_022352B8:
	ldr r0, _022352D8 ; =0x00000563
	bl sub_02005748
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
	mov r0, #0
	pop {r4, pc}
_022352CA:
	add r0, r4, #0
	bl ov62_02230054
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022352D4: .word 0x0000089C
_022352D8: .word 0x00000563
	thumb_func_end ov62_02235278

	thumb_func_start ov62_022352DC
ov62_022352DC: ; 0x022352DC
	push {r3, lr}
	ldr r0, _02235300 ; =0x02248BE8
	bl sub_02022734
	cmp r0, #0
	beq _022352EC
	mov r0, #1
	pop {r3, pc}
_022352EC:
	ldr r0, _02235304 ; =0x02248BEC
	bl sub_02022734
	cmp r0, #0
	beq _022352FA
	mov r0, #2
	pop {r3, pc}
_022352FA:
	mov r0, #0
	pop {r3, pc}
	nop
_02235300: .word 0x02248BE8
_02235304: .word 0x02248BEC
	thumb_func_end ov62_022352DC

	thumb_func_start ov62_02235308
ov62_02235308: ; 0x02235308
	push {r4, lr}
	add r4, r0, #0
	bl sub_02022974
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB60
	add r0, r4, #0
	bl ov62_02235278
	pop {r4, pc}
	thumb_func_end ov62_02235308

	thumb_func_start ov62_02235324
ov62_02235324: ; 0x02235324
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223533A
	cmp r1, #1
	beq _02235364
	cmp r1, #2
	beq _022353EA
	b _02235416
_0223533A:
	mov r1, #0
	str r1, [r4, #0x54]
	mov r0, #0x6f
	str r1, [r4, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	ldr r0, _02235434 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_02235364:
	ldr r1, [r4, #0xc]
	cmp r1, #0x10
	beq _022353DE
	add r1, r1, #2
	str r1, [r4, #0xc]
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02235438 ; =0x0000FFFE
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _0223543C ; =0x0000FFFF
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02235440 ; =0x00003FFE
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _0223543C ; =0x0000FFFF
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223542C
_022353DE:
	mov r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_022353EA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022353F6
	sub r0, r0, #4
	str r0, [r4, #0xc]
	b _0223542C
_022353F6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_02235416:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223542C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223542C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02235434: .word 0x000006F4
_02235438: .word 0x0000FFFE
_0223543C: .word 0x0000FFFF
_02235440: .word 0x00003FFE
	thumb_func_end ov62_02235324

	thumb_func_start ov62_02235444
ov62_02235444: ; 0x02235444
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02235008
	cmp r0, #0
	beq _02235474
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0223546C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB60
	b _02235474
_0223546C:
	add r0, r4, #0
	mov r1, #1
	bl ov62_0222FB60
_02235474:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02235444

	thumb_func_start ov62_02235478
ov62_02235478: ; 0x02235478
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x44]
	cmp r1, #1
	bne _02235498
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB60
	b _0223549E
_02235498:
	mov r1, #1
	bl ov62_0222FB60
_0223549E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02235478

	thumb_func_start ov62_022354A4
ov62_022354A4: ; 0x022354A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _022354B6
	cmp r0, #1
	beq _022354E0
	b _02235570
_022354B6:
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #0
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	ldrb r1, [r4, #0x1c]
	bl sub_020E1F6C
	strh r0, [r4, #8]
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	ldrb r1, [r4, #0x1c]
	bl sub_020E1F6C
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
_022354E0:
	add r1, sp, #0
	ldr r0, [r4, #0x20]
	add r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	ldrb r0, [r4, #0x1c]
	add r1, sp, #0
	sub r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0223550E
	mov r0, #4
	ldrsh r0, [r4, r0]
	strh r0, [r1, #2]
	mov r0, #6
	ldrsh r0, [r4, r0]
	strh r0, [r1]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _02235526
_0223550E:
	mov r0, #2
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r1]
_02235526:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223554C
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0208B8B8
	ldrb r0, [r4, #0x1c]
	cmp r0, #2
	bne _0223554C
	ldr r0, [r4, #0x30]
	mov r1, #1
	str r1, [r0, #0]
_0223554C:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x20]
	bl ov62_02230E68
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x24]
	sub r2, #0x2c
	bl sub_020128C4
	ldr r0, [r4, #0x2c]
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_02235570:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_022354A4

	thumb_func_start ov62_02235580
ov62_02235580: ; 0x02235580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02235598
	cmp r1, #1
	beq _02235676
	cmp r1, #2
	bne _02235596
	b _02235800
_02235596:
	b _02235830
_02235598:
	mov r0, #0x66
	mov r1, #0x10
	bl sub_02018144
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r1, #0x86
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r7, #0
	str r7, [r0, #8]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02235668
	ldr r0, [sp, #4]
	add r6, r4, #0
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
_022355D0:
	mov r0, #0x66
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, _02235838 ; =0x000005FC
	add r1, r5, #0
	ldr r0, [r6, r0]
	add r2, r5, #2
	bl ov62_02230E74
	ldr r0, _02235838 ; =0x000005FC
	ldr r0, [r6, r0]
	str r0, [r5, #0x20]
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x30]
	ldr r0, _0223583C ; =0x000006E4
	ldr r0, [r4, r0]
	cmp r7, r0
	bne _02235626
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [r5, #0x28]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	mov r0, #0x2f
	mvn r0, r0
	strh r0, [r5, #6]
	mov r0, #8
	strb r0, [r5, #0x1c]
	b _0223564E
_02235626:
	mov r0, #0
	str r0, [r5, #0x28]
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #5
	sub r0, r0, r1
	lsl r0, r0, #4
	add r0, #0xcd
	strh r0, [r5, #6]
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r0, #0xdd
	blt _0223564A
	mov r0, #0xdd
	strh r0, [r5, #6]
_0223564A:
	mov r0, #8
	strb r0, [r5, #0x1c]
_0223564E:
	mov r2, #2
	ldr r0, _02235840 ; =ov62_022354A4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r7, r7, #1
	add r6, #0x28
	cmp r7, r0
	blt _022355D0
_02235668:
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235830
_02235676:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	cmp r0, #0x10
	beq _022356A4
	add r1, r0, #2
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	str r1, [r0, #0]
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r3, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_022356A4:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _022356AE
	b _022357B8
_022356AE:
	ldr r0, [sp, #8]
	mov r7, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _022357AE
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #8]
	ldr r0, _02235844 ; =0x00000534
	add r6, r4, #0
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #0x14]
_022356CC:
	mov r0, #0x66
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, _02235844 ; =0x00000534
	add r1, r5, #0
	ldr r0, [r6, r0]
	add r2, r5, #2
	bl ov62_02230E74
	ldr r0, _02235844 ; =0x00000534
	ldr r0, [r6, r0]
	str r0, [r5, #0x20]
	ldr r0, _02235848 ; =0x00000548
	ldr r0, [r6, r0]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x2c]
	mov r0, #0
	str r0, [r5, #0x28]
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	ldr r0, _0223584C ; =0x000006D8
	ldr r0, [r4, r0]
	cmp r0, r7
	bne _02235774
	mov r0, #0
	ldrsh r0, [r5, r0]
	ldr r1, _02235850 ; =0x00000818
	strh r0, [r5, #4]
	mov r0, #0xa9
	strh r0, [r5, #6]
	ldr r3, [r4, r1]
	ldr r1, _0223583C ; =0x000006E4
	ldr r0, _02235844 ; =0x00000534
	ldr r2, [r4, r1]
	mov r1, #0x24
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r6, r0]
	ldr r1, [r1, #0xc]
	bl sub_0200D364
	ldr r0, _0223583C ; =0x000006E4
	mov r2, #0x28
	ldr r1, [r4, r0]
	mov r0, #0x24
	add r3, r1, #0
	ldr r1, _0223584C ; =0x000006D8
	mul r3, r0
	ldr r0, _02235850 ; =0x00000818
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	mul r2, r1
	ldr r1, [sp, #0x18]
	mov ip, r0
	add r1, r1, r2
	mov r2, ip
	add r3, r2, r3
	ldr r2, [r3, #8]
	add r0, r4, #0
	bl ov62_02230FC8
	ldr r0, _0223584C ; =0x000006D8
	ldr r1, [r4, r0]
	mov r0, #0x28
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02235848 ; =0x00000548
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_020129D0
	ldr r0, _02235844 ; =0x00000534
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0200D3F4
	b _02235792
_02235774:
	mov r0, #0
	ldrsh r0, [r5, r0]
	mov r1, #4
	sub r0, r0, #4
	strh r0, [r5, #4]
	ldr r0, _0223584C ; =0x000006D8
	ldr r0, [r4, r0]
	sub r2, r0, r7
	lsl r0, r2, #4
	sub r2, r1, r2
	mov r1, #0x24
	mul r1, r2
	add r1, #0x19
	add r0, r0, r1
	strh r0, [r5, #6]
_02235792:
	mov r0, #4
	strb r0, [r5, #0x1c]
	mov r2, #2
	ldr r0, _02235840 ; =ov62_022354A4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r0, _0223584C ; =0x000006D8
	add r7, r7, #1
	ldr r0, [r4, r0]
	add r6, #0x28
	cmp r7, r0
	ble _022356CC
_022357AE:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0xc]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
_022357B8:
	ldr r0, _0223584C ; =0x000006D8
	mov r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _022357EA
	ldr r7, _02235844 ; =0x00000534
	add r6, r4, #0
_022357C6:
	cmp r5, r0
	bne _022357D4
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_0200D430
	b _022357DE
_022357D4:
	ldr r0, _02235844 ; =0x00000534
	mov r1, #2
	ldr r0, [r6, r0]
	bl sub_0200D430
_022357DE:
	ldr r0, _0223584C ; =0x000006D8
	add r5, r5, #1
	ldr r0, [r4, r0]
	add r6, #0x28
	cmp r5, r0
	blt _022357C6
_022357EA:
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022357F8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022357F8:
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0, #4]
	b _02235830
_02235800:
	ldr r1, _02235850 ; =0x00000818
	ldr r3, [r4, r1]
	ldr r1, _0223583C ; =0x000006E4
	ldr r2, [r4, r1]
	mov r1, #0x24
	mul r1, r2
	add r1, r3, r1
	ldr r1, [r1, #0x20]
	cmp r1, #0
	bne _0223581A
	bl ov62_0222FC1C
	b _02235820
_0223581A:
	mov r1, #5
	bl ov62_0222FB60
_02235820:
	add r0, r4, #0
	bl ov62_0222FB90
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
_02235830:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02235838: .word 0x000005FC
_0223583C: .word 0x000006E4
_02235840: .word ov62_022354A4
_02235844: .word 0x00000534
_02235848: .word 0x00000548
_0223584C: .word 0x000006D8
_02235850: .word 0x00000818
	thumb_func_end ov62_02235580

	thumb_func_start ov62_02235854
ov62_02235854: ; 0x02235854
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223586C
	cmp r1, #1
	beq _0223592E
	cmp r1, #2
	bne _0223586A
	b _02235A14
_0223586A:
	b _02235A4E
_0223586C:
	mov r0, #0x66
	mov r1, #0x10
	bl sub_02018144
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r1, #0x86
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r6, #0
	add r0, #0xc
	add r7, r5, #0
	str r0, [sp, #8]
_02235894:
	mov r0, #0x66
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _02235A6C ; =0x00000534
	add r1, r4, #0
	ldr r0, [r7, r0]
	add r2, r4, #2
	bl ov62_02230E74
	ldr r0, _02235A6C ; =0x00000534
	ldr r0, [r7, r0]
	str r0, [r4, #0x20]
	ldr r0, _02235A70 ; =0x00000548
	ldr r0, [r7, r0]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x28]
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	ldr r0, _02235A74 ; =0x000006D8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	cmp r0, r6
	bne _022358EA
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [r4, #0x28]
	mov r0, #0
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	mov r0, #0xd9
	b _02235906
_022358EA:
	mov r0, #0
	ldrsh r0, [r4, r0]
	mov r1, #0x24
	add r0, r0, #4
	strh r0, [r4, #4]
	ldr r0, _02235A74 ; =0x000006D8
	ldr r0, [r5, r0]
	sub r2, r0, r6
	mov r0, #5
	sub r0, r0, r2
	mul r1, r0
	add r1, #0x1d
	lsl r0, r2, #4
	add r0, r1, r0
_02235906:
	strh r0, [r4, #6]
	mov r0, #4
	strb r0, [r4, #0x1c]
	mov r2, #2
	ldr r0, _02235A78 ; =ov62_022354A4
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r0, _02235A74 ; =0x000006D8
	add r6, r6, #1
	ldr r0, [r5, r0]
	add r7, #0x28
	sub r0, r0, #1
	cmp r6, r0
	ble _02235894
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02235A64
_0223592E:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _02235A12
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r7, #0
	cmp r0, #0
	ble _022359CE
	ldr r0, [sp, #4]
	add r6, r5, #0
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
_02235958:
	mov r0, #0x66
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _02235A7C ; =0x000005FC
	add r1, r4, #0
	ldr r0, [r6, r0]
	add r2, r4, #2
	bl ov62_02230E74
	ldr r0, _02235A7C ; =0x000005FC
	ldr r0, [r6, r0]
	str r0, [r4, #0x20]
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x28]
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #5
	sub r0, r0, r1
	lsl r0, r0, #4
	add r0, #0xcd
	strh r0, [r4, #6]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0xdd
	blt _022359B0
	mov r0, #0xdd
	strh r0, [r4, #6]
_022359B0:
	mov r0, #8
	strb r0, [r4, #0x1c]
	mov r2, #2
	ldr r0, _02235A78 ; =ov62_022354A4
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r7, r7, #1
	add r6, #0x28
	cmp r7, r0
	blt _02235958
_022359CE:
	ldr r0, [sp, #4]
	mov r4, #0
	str r4, [r0, #0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _02235A74 ; =0x000006D8
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _02235A64
	ldr r7, _02235A6C ; =0x00000534
	add r6, r5, #0
_022359EC:
	sub r0, r0, #1
	cmp r4, r0
	bne _022359FC
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_0200D430
	b _02235A06
_022359FC:
	ldr r0, _02235A6C ; =0x00000534
	mov r1, #2
	ldr r0, [r6, r0]
	bl sub_0200D430
_02235A06:
	ldr r0, _02235A74 ; =0x000006D8
	add r4, r4, #1
	ldr r0, [r5, r0]
	add r6, #0x28
	cmp r4, r0
	blt _022359EC
_02235A12:
	b _02235A64
_02235A14:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r4, #0]
	cmp r0, #0x10
	beq _02235A3C
	add r0, r0, #2
	str r0, [r4, #0]
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02235A3C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02235A48
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02235A48:
	mov r0, #0
	str r0, [r4, #4]
	b _02235A64
_02235A4E:
	bl ov62_0222FBF8
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
_02235A64:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235A6C: .word 0x00000534
_02235A70: .word 0x00000548
_02235A74: .word 0x000006D8
_02235A78: .word ov62_022354A4
_02235A7C: .word 0x000005FC
	thumb_func_end ov62_02235854

	thumb_func_start ov62_02235A80
ov62_02235A80: ; 0x02235A80
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02235A8E
	b _02235C5C
_02235A8E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235A9A: ; jump table
	.short _02235AA4 - _02235A9A - 2 ; case 0
	.short _02235AD4 - _02235A9A - 2 ; case 1
	.short _02235B4A - _02235A9A - 2 ; case 2
	.short _02235BCE - _02235A9A - 2 ; case 3
	.short _02235BE6 - _02235A9A - 2 ; case 4
_02235AA4:
	mov r0, #0
	str r0, [r4, #0x54]
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02235ABC
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	sub r1, r0, #1
	b _02235ABE
_02235ABC:
	mov r1, #6
_02235ABE:
	add r0, r4, #0
	add r0, #0x5c
	strb r1, [r0]
	add r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235AD4:
	add r0, r4, #0
	add r0, #0x54
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235AE8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02235AE8:
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02235C64
_02235B4A:
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov62_022317CC
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235BCE:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235BE6:
	add r0, r4, #0
	add r0, #0x54
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02235BFA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02235BFA:
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02235C64
_02235C5C:
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB60
_02235C64:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02235C6C: .word 0x0000FFFF
	thumb_func_end ov62_02235A80

	thumb_func_start ov62_02235C70
ov62_02235C70: ; 0x02235C70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02235C7E
	b _02235E50
_02235C7E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235C8A: ; jump table
	.short _02235C94 - _02235C8A - 2 ; case 0
	.short _02235CC8 - _02235C8A - 2 ; case 1
	.short _02235D3E - _02235C8A - 2 ; case 2
	.short _02235DC2 - _02235C8A - 2 ; case 3
	.short _02235DDA - _02235C8A - 2 ; case 4
_02235C94:
	mov r0, #0
	str r0, [r4, #0x54]
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x5c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	mov r1, #7
	bl sub_020E1F6C
	add r0, r4, #0
	add r0, #0x5c
	strb r1, [r0]
	add r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235CC8:
	add r0, r4, #0
	add r0, #0x54
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235CDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02235CDC:
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02235E5A
_02235D3E:
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov62_022317CC
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235DC2:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235DDA:
	add r0, r4, #0
	add r0, #0x54
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02235DEE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02235DEE:
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02235E5A
_02235E50:
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x54]
	bl ov62_0222FB60
_02235E5A:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02235E60: .word 0x0000FFFF
	thumb_func_end ov62_02235C70

	.rodata


	.global Unk_ov62_02248BE8
Unk_ov62_02248BE8: ; 0x02248BE8
	.incbin "incbin/overlay62_rodata.bin", 0x4BC, 0x4C4 - 0x4BC

	.global Unk_ov62_02248BF0
Unk_ov62_02248BF0: ; 0x02248BF0
	.incbin "incbin/overlay62_rodata.bin", 0x4C4, 0x24

