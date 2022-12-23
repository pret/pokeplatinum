	.include "macros/function.inc"
	.include "overlay005/ov5_021F61BC.inc"

	

	.text


	thumb_func_start ov5_021F61BC
ov5_021F61BC: ; 0x021F61BC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F61E8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F61BC

	thumb_func_start ov5_021F61D8
ov5_021F61D8: ; 0x021F61D8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F620C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F61D8

	thumb_func_start ov5_021F61E8
ov5_021F61E8: ; 0x021F61E8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x50
	bl ov5_021DFB00
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F61E8

	thumb_func_start ov5_021F620C
ov5_021F620C: ; 0x021F620C
	ldr r3, _021F6214 ; =sub_0207395C
	add r0, r0, #4
	bx r3
	nop
_021F6214: .word sub_0207395C
	thumb_func_end ov5_021F620C

	thumb_func_start ov5_021F6218
ov5_021F6218: ; 0x021F6218
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r2, sp, #8
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_0205EB3C
	add r4, r0, #0
	bl ov5_021DF578
	add r6, r0, #0
	mov r1, #0xe
	str r6, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #2
	str r5, [sp, #0x1c]
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F6260 ; =0x02200C10
	add r0, r6, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021F6260: .word 0x02200C10
	thumb_func_end ov5_021F6218

	thumb_func_start ov5_021F6264
ov5_021F6264: ; 0x021F6264
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020715BC
	add r4, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #8]
	bl sub_0205EB3C
	mov r1, #0
	mvn r1, r1
	add r4, r0, #0
	str r1, [r5, #4]
	bl sub_02062910
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_02062918
	str r0, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F6264

	thumb_func_start ov5_021F629C
ov5_021F629C: ; 0x021F629C
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F629C

	thumb_func_start ov5_021F62A0
ov5_021F62A0: ; 0x021F62A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	bl sub_0205EB3C
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r6, r0, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F62C8
	ldr r0, [sp]
	bl ov5_021DF74C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F62C8:
	ldr r7, [r5, #4]
	add r0, r6, #0
	bl sub_02062BE8
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	bl ov5_021F6414
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	ldr r4, [r5, #4]
	sub r0, r0, #1
	cmp r4, r0
	beq _021F62F0
	ldr r0, [sp, #4]
	bl sub_0205EA78
	cmp r4, r0
	beq _021F62FE
_021F62F0:
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	mov r0, #1
	add sp, #0x24
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_021F62FE:
	cmp r7, r4
	beq _021F6308
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
_021F6308:
	add r0, r6, #0
	bl sub_02063020
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_0206419C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063040
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_020641A8
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r2
	add r2, sp, #0xc
	bl sub_02064450
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_02063050
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl sub_020715D4
	ldr r0, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r5, #0x1c]
	cmp r0, #0xf
	ble _021F6368
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r5, #0x20]
_021F6368:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F62A0

	thumb_func_start ov5_021F636C
ov5_021F636C: ; 0x021F636C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3, #0]
	cmp r0, #1
	beq _021F6408
	mov r0, #0
	ldr r1, [r3, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021F6408
	ldr r5, _021F640C ; =0x02200C04
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r7, #0x18
	str r0, [r4, #0]
	ldr r1, [r3, #4]
	ldr r4, _021F6410 ; =0x02200C24
	add r0, r1, #0
	mul r0, r7
	add r0, r4, r0
	ldr r5, [r3, #0x28]
	ldr r4, [r3, #0x20]
	mov r3, #0xc
	mul r3, r4
	mov r2, #0
	add r5, #0x18
	add r4, r0, r3
	cmp r1, #3
	bhi _021F63CE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F63BA: ; jump table
	.short _021F63C2 - _021F63BA - 2 ; case 0
	.short _021F63CE - _021F63BA - 2 ; case 1
	.short _021F63C6 - _021F63BA - 2 ; case 2
	.short _021F63CC - _021F63BA - 2 ; case 3
_021F63C2:
	mov r2, #0xb4
	b _021F63CE
_021F63C6:
	add r2, r7, #0
	add r2, #0xf6
	b _021F63CE
_021F63CC:
	mov r2, #0x5a
_021F63CE:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_0201E2E0
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_020715E4
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0]
	add r2, sp, #0
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #4]
	add r3, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02073BA4
_021F6408:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F640C: .word 0x02200C04
_021F6410: .word 0x02200C24
	thumb_func_end ov5_021F636C

	thumb_func_start ov5_021F6414
ov5_021F6414: ; 0x021F6414
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205DB10
	cmp r0, #0
	beq _021F6424
	mov r0, #0
	pop {r4, pc}
_021F6424:
	add r0, r4, #0
	bl sub_0205DB1C
	cmp r0, #0
	beq _021F6432
	mov r0, #1
	pop {r4, pc}
_021F6432:
	add r0, r4, #0
	bl sub_0205DB04
	cmp r0, #0
	beq _021F6440
	mov r0, #2
	pop {r4, pc}
_021F6440:
	add r0, r4, #0
	bl sub_0205DAF8
	cmp r0, #0
	beq _021F644E
	mov r0, #3
	pop {r4, pc}
_021F644E:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ov5_021F6414

	.rodata


	.global Unk_ov5_02200C04
Unk_ov5_02200C04: ; 0x02200C04
	.incbin "incbin/overlay5_rodata.bin", 0x82F0, 0x82FC - 0x82F0

	.global Unk_ov5_02200C10
Unk_ov5_02200C10: ; 0x02200C10
	.incbin "incbin/overlay5_rodata.bin", 0x82FC, 0x8310 - 0x82FC

	.global Unk_ov5_02200C24
Unk_ov5_02200C24: ; 0x02200C24
	.incbin "incbin/overlay5_rodata.bin", 0x8310, 0x60

