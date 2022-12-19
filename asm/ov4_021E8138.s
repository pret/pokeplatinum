	.include "macros/function.inc"
	.include "include/ov4_021E8138.inc"

	

	.text


	arm_func_start ov4_021E8138
ov4_021E8138: ; 0x021E8138
	stmfd sp!, {r3, r4, r5, lr}
	bl ov4_021E63A4
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	mov r5, r0
	bl ov4_02213898
	cmp r0, #9
	bne _021E81DC
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021E822C
_021E816C: ; jump table
	b _021E8184 ; case 0
	b _021E81D0 ; case 1
	b _021E8194 ; case 2
	b _021E81A4 ; case 3
	b _021E81B0 ; case 4
	b _021E81C0 ; case 5
_021E8184:
	mov r0, r5
	bl ov4_021E8234
	mov r4, r0
	b _021E822C
_021E8194:
	mov r0, r5
	bl ov4_021E8298
	mov r4, r0
	b _021E822C
_021E81A4:
	bl ov4_021E8328
	mov r4, r0
	b _021E822C
_021E81B0:
	mov r0, r5
	bl ov4_021E8354
	mov r4, r0
	b _021E822C
_021E81C0:
	mov r0, r5
	bl ov4_021E83C0
	mov r4, r0
	b _021E822C
_021E81D0:
	bl ov4_021E83D4
	mov r4, r0
	b _021E822C
_021E81DC:
	cmp r4, #0xb
	beq _021E8204
	cmp r4, #0xe
	beq _021E8210
	cmp r4, #0xf
	bne _021E8218
	mov r0, r5
	bl ov4_021E83C0
	mov r4, r0
	b _021E822C
_021E8204:
	bl ov4_021E83D4
	mov r4, r0
	b _021E822C
_021E8210:
	bl ov4_021D59F0
	bl ov4_021D58F8
_021E8218:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_021E822C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E8138

	arm_func_start ov4_021E8234
ov4_021E8234: ; 0x021E8234
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov4_021E62EC
	mov r5, r0
	mov r0, #4
	bl ov4_021E62EC
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl ov4_021E8404
	ldr r1, _021E8294 ; =0x0221DBF0
	mov r2, #4
	mov r0, r4
	str r2, [r1, #0]
	bl ov4_02208874
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #2
	bl ov4_021E63C0
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E8294: .word 0x0221DBF0
	arm_func_end ov4_021E8234

	arm_func_start ov4_021E8298
ov4_021E8298: ; 0x021E8298
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_022086A0
	cmp r0, #0
	beq _021E82D0
	mov r0, r4
	bl ov4_021E856C
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmia sp!, {r4, pc}
_021E82D0:
	bl sub_020C3880
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E8324 ; =0x01FF6210
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl sub_020E1ED4
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E8324: .word 0x01FF6210
	arm_func_end ov4_021E8298

	arm_func_start ov4_021E8328
ov4_021E8328: ; 0x021E8328
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl ov4_021E62EC
	bl ov4_021D5818
	cmp r0, #0
	moveq r0, #0xe
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	bl ov4_021E63C0
	mov r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E8328

	arm_func_start ov4_021E8354
ov4_021E8354: ; 0x021E8354
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov4_021E62EC
	mov r4, r0
	bl ov4_021D5A58
	movs r5, r0
	beq _021E83B8
	ldrb r0, [r6, #0xd0d]
	bl ov4_021E64A0
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _021E8390
	bl ov4_021D5A98
	str r0, [r4, #0x10]
_021E8390:
	bl ov4_021D58F8
	cmp r5, #0xb
	moveq r0, #0xf
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021E83B8:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E8354

	arm_func_start ov4_021E83C0
ov4_021E83C0: ; 0x021E83C0
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0xd0d]
	bl ov4_021E63F8
	mov r0, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E83C0

	arm_func_start ov4_021E83D4
ov4_021E83D4: ; 0x021E83D4
	stmfd sp!, {r3, lr}
	bl ov4_02207EDC
	cmp r0, #0
	movne r0, #0xb
	ldmneia sp!, {r3, pc}
	bl ov4_022089E8
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #9
	movne r0, #0xb
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E83D4

	arm_func_start ov4_021E8404
ov4_021E8404: ; 0x021E8404
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _021E84C0 ; =0x022158E8
	mov r1, r4
	mov r2, #0x58
	bl sub_020C4DB0
	ldr r0, [r6, #0]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsia sp!, {r4, r5, r6, pc}
	bl ov4_021E64A0
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _021E849C
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl ov4_021E84C4
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl ov4_021E8518
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl ov4_021E84C4
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl ov4_021E84C4
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl ov4_021E84C4
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021E849C:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E84C0: .word 0x022158E8
	arm_func_end ov4_021E8404

	arm_func_start ov4_021E84C4
ov4_021E84C4: ; 0x021E84C4
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov4_021E84C4

	arm_func_start ov4_021E8518
ov4_021E8518: ; 0x021E8518
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _021E853C
_021E852C:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _021E852C
_021E853C:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov4_021E8518

	arm_func_start ov4_021E856C
ov4_021E856C: ; 0x021E856C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl ov4_021E64A0
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl ov4_021E84C4
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl ov4_021E84C4
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_022086D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E856C

	.rodata


	.global Unk_ov4_022158E8
Unk_ov4_022158E8: ; 0x022158E8
	.incbin "incbin/overlay4_rodata.bin", 0x80, 0x58



	.data


	.global Unk_ov4_02217618
Unk_ov4_02217618: ; 0x02217618
	.incbin "incbin/overlay4_data.bin", 0x1798, 0xC

