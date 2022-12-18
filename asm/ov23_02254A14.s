	.include "macros/function.inc"
	.include "include/ov23_02254A14.inc"

	

	.text


	thumb_func_start ov23_02254A14
ov23_02254A14: ; 0x02254A14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	bne _02254A26
	bl sub_02022974
_02254A26:
	add r4, r7, #0
	add r4, #0x3c
	add r0, r5, #0
	bl sub_020573FC
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0205740C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	lsl r1, r0, #0xf
	mov r0, #1
	lsl r0, r0, #0x14
	add r1, r1, r0
	lsr r0, r0, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #0xf
	mov r0, #0xd
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02255E14
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #8
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
	str r0, [r4, #0x10]
	mov r0, #0x10
	str r0, [r7, #0x3c]
	mov r0, #0xd
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	add r0, #0xf
	str r0, [r4, #8]
	ldr r0, [r4, #0x1c]
	add r0, #0xc
	str r0, [r4, #0xc]
	str r5, [r4, #0x14]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02254A14

	thumb_func_start ov23_02254A94
ov23_02254A94: ; 0x02254A94
	add r2, r0, #0
	ldr r3, _02254AA0 ; =ov5_021E1674
	add r2, #0xa4
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	; .align 2, 0
_02254AA0: .word ov5_021E1674
	thumb_func_end ov23_02254A94

	thumb_func_start ov23_02254AA4
ov23_02254AA4: ; 0x02254AA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x24
	add r4, r0, #0
	mul r4, r1
	add r0, r5, r4
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02254ABA
	bl sub_02022974
_02254ABA:
	add r2, r5, r4
	add r2, #0x60
	add r5, #0x3c
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02254AA4

	thumb_func_start ov23_02254AD4
ov23_02254AD4: ; 0x02254AD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bls _02254AF0
	b _02254C5A
_02254AF0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254AFC: ; jump table
	.short _02254B12 - _02254AFC - 2 ; case 0
	.short _02254B6E - _02254AFC - 2 ; case 1
	.short _02254B8E - _02254AFC - 2 ; case 2
	.short _02254BA0 - _02254AFC - 2 ; case 3
	.short _02254BAC - _02254AFC - 2 ; case 4
	.short _02254BB8 - _02254AFC - 2 ; case 5
	.short _02254BC4 - _02254AFC - 2 ; case 6
	.short _02254BD0 - _02254AFC - 2 ; case 7
	.short _02254BDC - _02254AFC - 2 ; case 8
	.short _02254C06 - _02254AFC - 2 ; case 9
	.short _02254C2E - _02254AFC - 2 ; case 10
_02254B12:
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov23_022542CC
	ldr r3, _02254C60 ; =0x00000504
	add r1, r6, #0
	add r2, r3, #0
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	add r2, #0x14
	add r3, #0x18
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_022542D8
	bl ov23_02254588
	ldr r3, _02254C64 ; =0x00000508
	add r1, r6, #0
	add r2, r3, #0
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	add r2, #0x12
	add r3, #0x16
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_02254594
	add r2, r4, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0x5c
	bl ov23_02255C78
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x5c
	bl ov23_02255D78
	mov r0, #1
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254B6E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x29
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #2
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254B8E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02254C5A
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254BA0:
	ldr r1, _02254C68 ; =ov23_02254C84
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BAC:
	ldr r1, _02254C6C ; =ov23_02254DF8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BB8:
	ldr r1, _02254C70 ; =ov23_02255100
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BC4:
	ldr r1, _02254C74 ; =ov23_02255580
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BD0:
	ldr r1, _02254C78 ; =ov23_02255850
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BDC:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02254C5A
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02254C5A
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254C06:
	ldr r0, _02254C7C ; =0x0000060E
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x28
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #0xa
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254C2E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02254C5A
	ldr r0, _02254C64 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D0
	ldr r0, _02254C60 ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_0225430C
	ldr r0, _02254C80 ; =0x0000050C
	ldr r0, [r4, r0]
	bl ov5_021D1BEC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02254C5A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02254C60: .word 0x00000504
_02254C64: .word 0x00000508
_02254C68: .word ov23_02254C84
_02254C6C: .word ov23_02254DF8
_02254C70: .word ov23_02255100
_02254C74: .word ov23_02255580
_02254C78: .word ov23_02255850
_02254C7C: .word 0x0000060E
_02254C80: .word 0x0000050C
	thumb_func_end ov23_02254AD4

	thumb_func_start ov23_02254C84
ov23_02254C84: ; 0x02254C84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, _02254D8C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_02254318
	cmp r0, #0
	beq _02254D86
	ldr r0, _02254D8C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_02254314
	cmp r0, #0
	beq _02254CB8
	cmp r0, #1
	beq _02254D40
	cmp r0, #2
	beq _02254D58
	b _02254D70
_02254CB8:
	ldr r0, [r5, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0
	bne _02254CE2
	mov r0, #0x13
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254CE2:
	ldr r3, _02254D90 ; =0x00000521
	ldrb r1, [r4, r3]
	cmp r1, #0xf
	bls _02254D06
	mov r0, #0x14
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D06:
	add r0, r3, #3
	ldrb r2, [r4, r0]
	add r0, r1, #1
	cmp r0, r2
	ble _02254D2C
	mov r0, #0x14
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D2C:
	sub r3, #0x19
	ldr r0, [r4, r3]
	bl ov23_022545C4
	mov r0, #4
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D40:
	ldr r2, _02254D94 ; =0x000004FC
	mov r0, #0x10
	ldr r2, [r4, r2]
	mov r1, #0xd
	bl ov23_02255F04
	mov r0, #5
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D58:
	ldr r2, _02254D94 ; =0x000004FC
	mov r0, #0x10
	ldr r2, [r4, r2]
	mov r1, #0xd
	bl ov23_02255F04
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D70:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x5c
	bl ov23_02255DDC
	mov r0, #9
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02254D8C: .word 0x00000504
_02254D90: .word 0x00000521
_02254D94: .word 0x000004FC
	thumb_func_end ov23_02254C84

	thumb_func_start ov23_02254D98
ov23_02254D98: ; 0x02254D98
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02254DE4 ; =0x00000528
	mov r0, #0xb
	bl sub_02018184
	ldr r2, _02254DE4 ; =0x00000528
	add r4, r0, #0
	mov r1, #0
	bl sub_020C4CF4
	mov r0, #0
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #5
	lsl r0, r0, #8
	str r5, [r4, r0]
	ldr r0, [r5, #4]
	ldr r1, _02254DE8 ; =0x02256B88
	ldr r0, [r0, #4]
	bl ov5_021D1B6C
	ldr r1, _02254DEC ; =0x0000050C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl ov5_021D1C2C
	ldr r1, _02254DF0 ; =0x000004FC
	add r2, r4, #0
	str r0, [r4, r1]
	ldr r1, _02254DF4 ; =ov23_02254AD4
	add r0, r6, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02254DE4: .word 0x00000528
_02254DE8: .word 0x02256B88
_02254DEC: .word 0x0000050C
_02254DF0: .word 0x000004FC
_02254DF4: .word ov23_02254AD4
	thumb_func_end ov23_02254D98

	thumb_func_start ov23_02254DF8
ov23_02254DF8: ; 0x02254DF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _02254E36
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254E1E: ; jump table
	.short _02254E2A - _02254E1E - 2 ; case 0
	.short _02254EAC - _02254E1E - 2 ; case 1
	.short _02254EC6 - _02254E1E - 2 ; case 2
	.short _02255066 - _02254E1E - 2 ; case 3
	.short _0225508C - _02254E1E - 2 ; case 4
	.short _022550BA - _02254E1E - 2 ; case 5
_02254E2A:
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545DC
	cmp r0, #0
	bne _02254E38
_02254E36:
	b _022550DE
_02254E38:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D8
	add r7, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r7, r0
	bne _02254E66
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02254E66:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020289B8
	str r0, [sp, #4]
	cmp r0, #0
	beq _02254EA6
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02254E90
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ov23_02254A14
	mov r0, #1
	str r0, [r4, #4]
	b _022550DE
_02254E90:
	mov r0, #0x15
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #4]
	b _022550DE
_02254EA6:
	bl sub_02022974
	b _022550DE
_02254EAC:
	ldr r0, _022550E8 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r2, _022550E8 ; =0x000004DC
	ldr r0, [r4, #0x4c]
	mov r1, #4
	add r2, r4, r2
	bl ov23_0225623C
	mov r0, #2
	str r0, [r4, #4]
	b _022550DE
_02254EC6:
	ldr r1, _022550E8 ; =0x000004DC
	add r0, r5, #0
	add r1, r4, r1
	bl ov23_0225624C
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #8
	bl ov23_02256098
	cmp r0, #0
	bne _02254FD2
	add r3, r4, #0
	add r3, #0x3c
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _022550EC ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x4c]
	mov r6, #1
	tst r1, r0
	beq _02254F0C
	ldr r0, _022550F0 ; =0xFFFF0000
	mov r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _02254F5E
_02254F0C:
	mov r1, #0x10
	add r2, r0, #0
	tst r2, r1
	beq _02254F28
	lsl r0, r1, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _02254F5E
_02254F28:
	mov r1, #0x40
	tst r1, r0
	beq _02254F42
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r7, _022550F0 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	b _02254F5E
_02254F42:
	mov r1, #0x80
	tst r0, r1
	beq _02254F5C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	lsl r7, r1, #9
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	b _02254F5E
_02254F5C:
	mov r6, #0
_02254F5E:
	cmp r6, #0
	beq _02254FAC
	add r0, sp, #0x18
	bl ov23_02255B58
	cmp r0, #0
	bne _02254FAC
	add r2, r4, #0
	add r3, sp, #0x18
	add r2, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x4c]
	bl ov5_021E18E0
	add r6, r0, #0
	add r0, sp, #0xc
	add r1, r6, #0
	bl ov5_021E1894
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, sp, #0xc
	add r0, r0, r7
	str r0, [sp, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov5_021E18A4
_02254FAC:
	ldr r0, _022550EC ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _02254FBC
	str r0, [sp, #8]
	b _02254FD2
_02254FBC:
	mov r0, #2
	tst r0, r2
	beq _02254FD2
	ldr r1, [r4, #0x4c]
	add r0, r5, #0
	bl ov23_02254A94
	mov r0, #0
	add sp, #0x28
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02254FD2:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02254FDA
	b _022550DE
_02254FDA:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255A98
	cmp r0, #0
	beq _0225504A
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255B78
	add r7, r0, #0
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D8
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02028ACC
	ldr r0, _022550F4 ; =0x000005FE
	bl sub_02005748
	ldr r0, [r4, #0x50]
	bl ov23_0224D3BC
	mov r0, #0xb
	bl ov23_0224D39C
	ldr r1, _022550E8 ; =0x000004DC
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r0, _022550F8 ; =0x00000521
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _022550DE
_0225504A:
	ldr r0, _022550FC ; =0x00000602
	bl sub_02005748
	mov r0, #0xc
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
	b _022550DE
_02255066:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #2
	str r0, [r4, #4]
	b _022550DE
_0225508C:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022550BA:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #0
	str r0, [r4, #4]
_022550DE:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022550E4: .word 0x00000508
_022550E8: .word 0x000004DC
_022550EC: .word 0x021BF67C
_022550F0: .word 0xFFFF0000
_022550F4: .word 0x000005FE
_022550F8: .word 0x00000521
_022550FC: .word 0x00000602
	thumb_func_end ov23_02254DF8

	thumb_func_start ov23_02255100
ov23_02255100: ; 0x02255100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bls _0225511C
	b _02255576
_0225511C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02255128: ; jump table
	.short _02255136 - _02255128 - 2 ; case 0
	.short _02255176 - _02255128 - 2 ; case 1
	.short _02255464 - _02255128 - 2 ; case 2
	.short _022554B6 - _02255128 - 2 ; case 3
	.short _022554E0 - _02255128 - 2 ; case 4
	.short _02255506 - _02255128 - 2 ; case 5
	.short _02255548 - _02255128 - 2 ; case 6
_02255136:
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255EFC
	ldr r0, _0225544C ; =0x000004FC
	add r2, r4, #0
	ldr r1, [r4, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #0xc
	bl ov23_02255B14
	cmp r0, #0
	beq _02255170
	ldr r1, [sp, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r2, _02255448 ; =0x000004DC
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r4, r2
	bl ov23_0225623C
_02255170:
	mov r0, #1
	str r0, [r4, #4]
	b _02255576
_02255176:
	ldr r1, _02255448 ; =0x000004DC
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225624C
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov23_02256104
	ldr r1, _0225544C ; =0x000004FC
	cmp r0, #0
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x14]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x1c]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x18]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x20]
	ldr r2, [r4, r1]
	ldr r6, [r2, #0x58]
	ldr r5, [r2, #0x60]
	bne _02255278
	ldr r0, _02255450 ; =0x021BF67C
	mov r2, #0x20
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022551D8
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r6, r6, r0
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _02255242
_022551D8:
	mov r2, #0x10
	tst r2, r0
	beq _022551FA
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _02255242
_022551FA:
	mov r2, #0x40
	tst r2, r0
	beq _0225521C
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r5, r5, r0
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _02255242
_0225521C:
	mov r2, #0x80
	tst r0, r2
	beq _0225523E
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r5, r5, r0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _02255242
_0225523E:
	mov r0, #0
	str r0, [sp]
_02255242:
	ldr r0, _02255450 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r0, #0
	tst r2, r1
	beq _02255252
	str r1, [sp, #0x10]
	b _02255278
_02255252:
	mov r1, #2
	tst r0, r1
	beq _02255278
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255F20
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255278:
	ldr r0, [sp]
	cmp r0, #0
	beq _022552FA
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _022552FA
	ldr r0, _0225544C ; =0x000004FC
	add r3, sp, #8
	ldr r1, [r4, r0]
	str r6, [r1, #0x58]
	ldr r1, [r4, r0]
	str r5, [r1, #0x60]
	ldr r2, [sp, #0x14]
	ldr r1, [r4, r0]
	str r2, [r1, #0x64]
	ldr r2, [sp, #0x18]
	ldr r1, [r4, r0]
	str r2, [r1, #0x68]
	ldr r1, [r4, r0]
	add r2, r4, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r2, #0x5c
	bl ov23_02255B14
	cmp r0, #0
	beq _022552E8
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_022562A8
	ldr r2, [sp, #8]
	mov r1, #0x24
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #0x70]
	cmp r0, r1
	beq _022552FA
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r2, _02255448 ; =0x000004DC
	ldr r1, [sp, #8]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r4, r2
	bl ov23_0225623C
	b _022552FA
_022552E8:
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
_022552FA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02255332
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x64]
	cmp r0, #0x20
	blt _0225530E
	bl sub_02022974
_0225530E:
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x68]
	cmp r0, #0x20
	blt _0225531C
	bl sub_02022974
_0225531C:
	ldr r0, _0225544C ; =0x000004FC
	add r2, r4, #0
	ldr r1, [r4, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #4
	bl ov23_02255B14
	cmp r0, #0
	bne _02255334
_02255332:
	b _02255576
_02255334:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _02255430
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x74]
	bl ov23_0224D3BC
	ldr r1, [sp, #4]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x74]
	cmp r0, #6
	bne _022553C2
	ldr r0, _02255454 ; =0x00000523
	ldrb r1, [r4, r0]
	cmp r1, #0x10
	bne _02255372
	mov r0, #0xf
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
_02255372:
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	cmp r0, r1
	bge _02255392
	mov r0, #0x12
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
_02255392:
	mov r0, #0x19
	lsl r0, r0, #6
	bl sub_02005748
	mov r0, #0xe
	bl ov23_0224D39C
	str r0, [r4, #8]
	ldr r0, _02255458 ; =0x00000522
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022553AE
	bl sub_02022974
_022553AE:
	ldr r0, _02255458 ; =0x00000522
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #4]
	b _02255404
_022553C2:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r5, r0, #0
	ldr r0, _0225545C ; =0x000005EB
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02028B20
	mov r0, #0xd
	bl ov23_0224D39C
	str r0, [r4, #8]
	ldr r0, _02255460 ; =0x00000521
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022553F2
	bl sub_02022974
_022553F2:
	ldr r0, _02255460 ; =0x00000521
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
_02255404:
	ldr r2, [sp, #4]
	mov r1, #0x24
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #0x70]
	add r0, r7, #0
	bl ov23_02254A94
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x5c
	bl ov23_02255BF4
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255F20
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	b _02255576
_02255430:
	mov r0, #0x16
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
	nop
_02255448: .word 0x000004DC
_0225544C: .word 0x000004FC
_02255450: .word 0x021BF67C
_02255454: .word 0x00000523
_02255458: .word 0x00000522
_0225545C: .word 0x000005EB
_02255460: .word 0x00000521
_02255464:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02255474
	b _02255576
_02255474:
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	ldr r0, _0225557C ; =0x00000522
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	sub r5, r1, r0
	bpl _02255496
	bl sub_02022974
_02255496:
	cmp r5, #0
	bne _022554A8
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022554A8:
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #4]
	b _02255576
_022554B6:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #0
	str r0, [r4, #4]
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022554E0:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r4, #4]
	b _02255576
_02255506:
	mov r1, #0x52
	lsl r1, r1, #4
	ldrb r2, [r4, r1]
	add r0, r2, #1
	strb r0, [r4, r1]
	cmp r2, #0xa
	blo _02255576
	add r0, r1, #2
	ldrb r2, [r4, r0]
	add r0, r1, #3
	ldrb r0, [r4, r0]
	mov r1, #0
	sub r5, r2, r0
	add r0, r5, #0
	bl ov23_0224D3D0
	cmp r5, #1
	bne _02255532
	mov r0, #0x11
	bl ov23_0224D39C
	b _02255538
_02255532:
	mov r0, #0x19
	bl ov23_0224D39C
_02255538:
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #6
	str r0, [r4, #4]
	b _02255576
_02255548:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255576:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225557C: .word 0x00000522
	thumb_func_end ov23_02255100

	thumb_func_start ov23_02255580
ov23_02255580: ; 0x02255580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022555A6
	cmp r0, #1
	beq _022555E6
	cmp r0, #2
	bne _022555A4
	b _02255814
_022555A4:
	b _02255838
_022555A6:
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_02256228
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255EFC
	ldr r0, _02255844 ; =0x000004FC
	add r2, r5, #0
	ldr r1, [r5, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #0xc
	bl ov23_02255B14
	cmp r0, #0
	beq _022555E0
	ldr r1, [sp, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	ldr r2, _02255840 ; =0x000004DC
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r5, r2
	bl ov23_0225623C
_022555E0:
	mov r0, #1
	str r0, [r5, #4]
	b _02255838
_022555E6:
	ldr r1, _02255840 ; =0x000004DC
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225624C
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov23_02256174
	ldr r1, _02255844 ; =0x000004FC
	cmp r0, #0
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x14]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x1c]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x18]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x20]
	ldr r2, [r5, r1]
	ldr r6, [r2, #0x58]
	ldr r4, [r2, #0x60]
	bne _022556E8
	ldr r0, _02255848 ; =0x021BF67C
	mov r2, #0x20
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _02255648
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r6, r6, r0
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _022556B2
_02255648:
	mov r2, #0x10
	tst r2, r0
	beq _0225566A
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _022556B2
_0225566A:
	mov r2, #0x40
	tst r2, r0
	beq _0225568C
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r4, r4, r0
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _022556B2
_0225568C:
	mov r2, #0x80
	tst r0, r2
	beq _022556AE
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _022556B2
_022556AE:
	mov r0, #0
	str r0, [sp]
_022556B2:
	ldr r0, _02255848 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r0, #0
	tst r2, r1
	beq _022556C2
	str r1, [sp, #0x10]
	b _022556E8
_022556C2:
	mov r1, #2
	tst r0, r1
	beq _022556E8
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255F20
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	mov r0, #3
	add r1, r5, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022556E8:
	ldr r0, [sp]
	cmp r0, #0
	beq _0225576A
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _0225576A
	ldr r0, _02255844 ; =0x000004FC
	add r3, sp, #8
	ldr r1, [r5, r0]
	str r6, [r1, #0x58]
	ldr r1, [r5, r0]
	str r4, [r1, #0x60]
	ldr r2, [sp, #0x14]
	ldr r1, [r5, r0]
	str r2, [r1, #0x64]
	ldr r2, [sp, #0x18]
	ldr r1, [r5, r0]
	str r2, [r1, #0x68]
	ldr r1, [r5, r0]
	add r2, r5, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r2, #0x5c
	bl ov23_02255B14
	cmp r0, #0
	beq _02255758
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_022562A8
	ldr r2, [sp, #8]
	mov r1, #0x24
	mul r1, r2
	add r1, r5, r1
	ldr r1, [r1, #0x70]
	cmp r0, r1
	beq _0225576A
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	ldr r2, _02255840 ; =0x000004DC
	ldr r1, [sp, #8]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r5, r2
	bl ov23_0225623C
	b _0225576A
_02255758:
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_02256228
_0225576A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02255838
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x64]
	cmp r0, #0x20
	blt _0225577E
	bl sub_02022974
_0225577E:
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x68]
	cmp r0, #0x20
	blt _0225578C
	bl sub_02022974
_0225578C:
	ldr r0, _02255844 ; =0x000004FC
	add r2, r5, #0
	ldr r1, [r5, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #4
	bl ov23_02255B14
	cmp r0, #0
	beq _02255838
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022557FE
	mov r1, #0x24
	mul r1, r0
	add r1, r5, r1
	ldr r1, [r1, #0x74]
	cmp r1, #6
	bne _022557CA
	mov r0, #0x10
	bl ov23_0224D39C
	str r0, [r5, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	mov r0, #2
	str r0, [r5, #4]
	b _02255838
_022557CA:
	add r1, r5, #0
	bl ov23_02254AA4
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov23_02255E2C
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x5c
	bl ov23_02255BF4
	ldr r0, _0225584C ; =0x000005EB
	bl sub_02005748
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255F20
	mov r0, #7
	add r1, r5, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022557FE:
	mov r0, #0x17
	bl ov23_0224D39C
	str r0, [r5, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	mov r0, #2
	str r0, [r5, #4]
	b _02255838
_02255814:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255838
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r5, r0]
	add r1, r2, #1
	strb r1, [r5, r0]
	cmp r2, #0x1e
	blo _02255838
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r5, #4]
_02255838:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255840: .word 0x000004DC
_02255844: .word 0x000004FC
_02255848: .word 0x021BF67C
_0225584C: .word 0x000005EB
	thumb_func_end ov23_02255580

	thumb_func_start ov23_02255850
ov23_02255850: ; 0x02255850
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _0225586C
	b _02255A78
_0225586C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02255878: ; jump table
	.short _02255880 - _02255878 - 2 ; case 0
	.short _0225589A - _02255878 - 2 ; case 1
	.short _02255A24 - _02255878 - 2 ; case 2
	.short _02255A4A - _02255878 - 2 ; case 3
_02255880:
	ldr r0, _02255A80 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r2, _02255A80 ; =0x000004DC
	ldr r0, [r4, #0x4c]
	mov r1, #4
	add r2, r4, r2
	bl ov23_0225623C
	mov r0, #1
	str r0, [r4, #4]
	b _02255A78
_0225589A:
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225624C
	ldr r1, [sp]
	add r0, r4, #0
	add r2, sp, #4
	bl ov23_022561BC
	cmp r0, #0
	beq _022558B4
	b _022559BA
_022558B4:
	add r3, r4, #0
	add r3, #0x3c
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _02255A84 ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x4c]
	mov r6, #1
	tst r1, r0
	beq _022558E0
	ldr r0, [sp, #0x14]
	ldr r7, _02255A88 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r5, #0
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225592C
_022558E0:
	mov r1, #0x10
	add r2, r0, #0
	tst r2, r1
	beq _022558FA
	ldr r0, [sp, #0x14]
	lsl r7, r1, #0xc
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r5, #0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225592C
_022558FA:
	mov r1, #0x40
	tst r1, r0
	beq _02255912
	ldr r0, [sp, #0x18]
	mov r7, #0
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldr r5, _02255A88 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _0225592C
_02255912:
	mov r1, #0x80
	tst r0, r1
	beq _0225592A
	ldr r0, [sp, #0x18]
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	lsl r5, r1, #9
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _0225592C
_0225592A:
	mov r6, #0
_0225592C:
	cmp r6, #0
	beq _02255978
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _02255978
	add r2, r4, #0
	add r3, sp, #0x14
	add r2, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r4, #0x4c]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r6, r0, #0
	add r0, sp, #8
	add r1, r6, #0
	bl ov5_021E1894
	ldr r0, [sp, #8]
	add r1, sp, #8
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov5_021E18A4
_02255978:
	ldr r0, _02255A84 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _02255988
	str r0, [sp, #4]
	b _022559BA
_02255988:
	mov r0, #2
	tst r0, r2
	beq _022559BA
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x1c
	add r2, #0x5c
	bl ov23_02255BB8
	add r0, r4, #0
	bl ov23_02255E8C
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022559BA:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02255A78
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255A98
	cmp r0, #0
	beq _02255A08
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	add r2, #0x5c
	bl ov23_02255BB8
	ldr r0, _02255A8C ; =0x000005FE
	bl sub_02005748
	ldr r2, _02255A90 ; =0x000004FC
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, r2]
	bl ov23_02255F04
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
	b _02255A78
_02255A08:
	ldr r0, _02255A94 ; =0x00000602
	bl sub_02005748
	mov r0, #0xc
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #4]
	b _02255A78
_02255A24:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255A78
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255A78
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r4, #4]
	b _02255A78
_02255A4A:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255A78
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255A78
	bl ov23_0224D3B0
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255A78:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255A80: .word 0x000004DC
_02255A84: .word 0x021BF67C
_02255A88: .word 0xFFFF0000
_02255A8C: .word 0x000005FE
_02255A90: .word 0x000004FC
_02255A94: .word 0x00000602
	thumb_func_end ov23_02255850

	thumb_func_start ov23_02255A98
ov23_02255A98: ; 0x02255A98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_02255AA4:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255ABC
	add r0, r4, #4
	add r1, r7, #0
	bl ov23_02255C30
	cmp r0, #0
	beq _02255ABC
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255ABC:
	add r6, r6, #1
	add r5, #0x24
	add r4, #0x24
	cmp r6, #0x20
	blt _02255AA4
	ldr r4, _02255B0C ; =0x02256B78
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	add r1, r2, #0
	bl ov23_02255C30
	cmp r0, #0
	beq _02255AE6
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255AE6:
	ldr r4, _02255B10 ; =0x02256B68
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	add r1, r2, #0
	bl ov23_02255C30
	cmp r0, #0
	bne _02255B06
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02255B06:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255B0C: .word 0x02256B78
_02255B10: .word 0x02256B68
	thumb_func_end ov23_02255A98

	thumb_func_start ov23_02255B14
ov23_02255B14: ; 0x02255B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r7, r0, #0
	str r1, [sp]
	str r3, [sp, #4]
	mov r6, #0
	add r4, r5, #0
_02255B24:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255B42
	ldr r2, [sp]
	add r0, r4, #4
	add r1, r7, #0
	bl ov23_02255C58
	cmp r0, #0
	beq _02255B42
	ldr r0, [sp, #4]
	add sp, #8
	str r6, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02255B42:
	add r6, r6, #1
	add r5, #0x24
	add r4, #0x24
	cmp r6, #0x20
	blt _02255B24
	ldr r0, [sp, #4]
	mov r1, #0x20
	str r1, [r0, #0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255B14

	thumb_func_start ov23_02255B58
ov23_02255B58: ; 0x02255B58
	ldr r1, [r0, #0]
	cmp r1, #0xa
	blt _02255B74
	ldr r1, [r0, #8]
	cmp r1, #0x15
	bgt _02255B74
	ldr r1, [r0, #4]
	cmp r1, #0xc
	blt _02255B74
	ldr r0, [r0, #0xc]
	cmp r0, #0x17
	bgt _02255B74
	mov r0, #0
	bx lr
_02255B74:
	mov r0, #1
	bx lr
	thumb_func_end ov23_02255B58

	thumb_func_start ov23_02255B78
ov23_02255B78: ; 0x02255B78
	push {r4, lr}
	add r3, r0, #0
	mov r2, #0
	add r4, r1, #0
_02255B80:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02255BA8
	mov r0, #0x24
	add r4, r2, #0
	mul r4, r0
	mov r0, #1
	str r0, [r1, r4]
	add r0, r1, r4
	add r4, r0, #4
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r2, #0
	pop {r4, pc}
_02255BA8:
	add r2, r2, #1
	add r4, #0x24
	cmp r2, #0x20
	blt _02255B80
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_02255B78

	thumb_func_start ov23_02255BB8
ov23_02255BB8: ; 0x02255BB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r7, #0x20
	blt _02255BC8
	bl sub_02022974
_02255BC8:
	mov r0, #0x24
	add r6, r7, #0
	mul r6, r0
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _02255BD8
	bl sub_02022974
_02255BD8:
	mov r0, #1
	str r0, [r4, r6]
	add r0, r4, r6
	add r2, r0, #4
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02255BB8

	thumb_func_start ov23_02255BF4
ov23_02255BF4: ; 0x02255BF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x20
	blt _02255C02
	bl sub_02022974
_02255C02:
	cmp r5, #0
	bne _02255C0A
	bl sub_02022974
_02255C0A:
	mov r0, #0x24
	add r6, r5, #0
	mul r6, r0
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _02255C1A
	bl sub_02022974
_02255C1A:
	mov r1, #0
	add r0, r4, r6
	str r1, [r0, #0x14]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r4, r6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02255BF4

	thumb_func_start ov23_02255C30
ov23_02255C30: ; 0x02255C30
	ldr r3, [r0, #0]
	ldr r2, [r1, #8]
	cmp r3, r2
	bgt _02255C54
	ldr r3, [r1, #0]
	ldr r2, [r0, #8]
	cmp r3, r2
	bgt _02255C54
	ldr r3, [r0, #4]
	ldr r2, [r1, #0xc]
	cmp r3, r2
	bgt _02255C54
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bgt _02255C54
	mov r0, #1
	bx lr
_02255C54:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02255C30

	thumb_func_start ov23_02255C58
ov23_02255C58: ; 0x02255C58
	ldr r3, [r0, #0]
	cmp r3, r1
	bgt _02255C74
	ldr r3, [r0, #8]
	cmp r1, r3
	bgt _02255C74
	ldr r1, [r0, #4]
	cmp r1, r2
	bgt _02255C74
	ldr r0, [r0, #0xc]
	cmp r2, r0
	bgt _02255C74
	mov r0, #1
	bx lr
_02255C74:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02255C58

	thumb_func_start ov23_02255C78
ov23_02255C78: ; 0x02255C78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	str r2, [sp, #4]
	bl sub_02029894
	ldr r1, _02255D0C ; =0x00000521
	mov r2, #0
	strb r2, [r6, r1]
	add r1, r1, #1
	add r7, r0, #0
	strb r2, [r6, r1]
	bl sub_02029460
	ldr r1, _02255D10 ; =0x00000523
	strb r0, [r6, r1]
	add r0, r7, #0
	bl sub_0202948C
	ldr r1, _02255D14 ; =0x00000524
	mov r4, #0
	strb r0, [r6, r1]
_02255CA6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020293B0
	add r5, r0, #0
	beq _02255D02
	cmp r5, #6
	bne _02255CC2
	ldr r0, _02255D18 ; =0x00000522
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02255D18 ; =0x00000522
	strb r1, [r6, r0]
	b _02255CE0
_02255CC2:
	cmp r5, #1
	beq _02255CE0
	cmp r5, #2
	beq _02255CE0
	cmp r5, #3
	beq _02255CE0
	cmp r5, #4
	beq _02255CE0
	cmp r5, #5
	beq _02255CE0
	ldr r0, _02255D0C ; =0x00000521
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02255D0C ; =0x00000521
	strb r1, [r6, r0]
_02255CE0:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020293FC
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202942C
	add r3, r0, #0
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02255D1C
_02255D02:
	add r4, r4, #1
	cmp r4, #0x20
	blt _02255CA6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02255D0C: .word 0x00000521
_02255D10: .word 0x00000523
_02255D14: .word 0x00000524
_02255D18: .word 0x00000522
	thumb_func_end ov23_02255C78

	thumb_func_start ov23_02255D1C
ov23_02255D1C: ; 0x02255D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	mov r0, #0
	add r5, r2, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r1, #0
	str r1, [sp]
	ldr r4, [sp, #0x38]
	str r0, [sp, #0x18]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl sub_020573FC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	bl sub_0205740C
	str r0, [sp, #0x20]
	sub r0, r0, #1
	add r0, r6, r0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	sub r1, r1, #1
	add r1, r5, r1
	mov r0, #0x24
	add r2, r7, #0
	mul r2, r0
	add r0, r4, r2
	add r5, sp, #4
	add r3, r0, #4
	str r1, [sp, #0xc]
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	str r0, [r4, r2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02255D1C

	thumb_func_start ov23_02255D78
ov23_02255D78: ; 0x02255D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl ov5_021E1610
	mov r7, #1
	mov r6, #0
	lsl r7, r7, #0xc
_02255D8E:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02255DD0
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov23_02255E14
	add r2, r0, #0
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsl r0, r0, #0x10
	lsl r3, r3, #0xf
	add r0, r0, r3
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	lsl r1, r1, #0xf
	lsl r0, r0, #0x10
	add r0, r0, r1
	str r0, [sp, #0x10]
	str r7, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	add r3, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x30]
	bl ov5_021E19CC
	str r0, [r4, #0x14]
_02255DD0:
	add r6, r6, #1
	add r4, #0x24
	cmp r6, #0x20
	blt _02255D8E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255D78

	thumb_func_start ov23_02255DDC
ov23_02255DDC: ; 0x02255DDC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02029894
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_02255DEC:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255DFA
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	b _02255E00
_02255DFA:
	add r2, r7, #0
	add r3, r7, #0
	add r0, r7, #0
_02255E00:
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029308
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x20
	blt _02255DEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255DDC

	thumb_func_start ov23_02255E14
ov23_02255E14: ; 0x02255E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02255E20
	bl sub_02022974
_02255E20:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl ov5_021EFAE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02255E14

	thumb_func_start ov23_02255E2C
ov23_02255E2C: ; 0x02255E2C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0x24
	add r4, r6, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02255E46
	bl sub_02022974
_02255E46:
	add r0, r5, #0
	add r0, #0x60
	add r4, r0, r4
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r1, r0, #0
	add r0, sp, #0
	bl ov5_021E1894
	add r3, sp, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r6, [r5, #0xc]
	add r5, #0x1c
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02255E2C

	thumb_func_start ov23_02255E8C
ov23_02255E8C: ; 0x02255E8C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02255EA2
	bl sub_02022974
_02255EA2:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x2c]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r4, #0x10
	add r1, r4, #0
	bl ov5_021E18A4
	pop {r4, pc}
	thumb_func_end ov23_02255E8C

	thumb_func_start ov23_02255EBC
ov23_02255EBC: ; 0x02255EBC
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #4]
	bx lr
	thumb_func_end ov23_02255EBC

	thumb_func_start ov23_02255EC4
ov23_02255EC4: ; 0x02255EC4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x54
	str r0, [sp]
	ldr r1, _02255EEC ; =0x02257724
	mov r0, #4
	add r2, r4, #0
	add r3, sp, #4
	bl sub_0201CA24
	mov r0, #0
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02255EEC: .word 0x02257724
	thumb_func_end ov23_02255EC4

	thumb_func_start ov23_02255EF0
ov23_02255EF0: ; 0x02255EF0
	ldr r3, _02255EF8 ; =sub_020181C4
	ldr r0, [r0, #0x54]
	bx r3
	nop
_02255EF8: .word sub_020181C4
	thumb_func_end ov23_02255EF0

	thumb_func_start ov23_02255EFC
ov23_02255EFC: ; 0x02255EFC
	mov r1, #1
	str r1, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255EFC

	thumb_func_start ov23_02255F04
ov23_02255F04: ; 0x02255F04
	str r0, [r2, #0x64]
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	str r1, [r2, #0x68]
	add r3, r3, r0
	str r3, [r2, #0x58]
	lsr r3, r0, #3
	lsl r1, r1, #0x10
	str r3, [r2, #0x5c]
	add r0, r1, r0
	str r0, [r2, #0x60]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255F04

	thumb_func_start ov23_02255F20
ov23_02255F20: ; 0x02255F20
	mov r1, #0
	str r1, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255F20

	thumb_func_start ov23_02255F28
ov23_02255F28: ; 0x02255F28
	ldr r3, _02255F3C ; =0x0000FFFF
	cmp r0, r3
	beq _02255F30
	str r0, [r2, #0]
_02255F30:
	ldr r0, _02255F3C ; =0x0000FFFF
	cmp r1, r0
	beq _02255F38
	str r1, [r2, #4]
_02255F38:
	bx lr
	nop
_02255F3C: .word 0x0000FFFF
	thumb_func_end ov23_02255F28

	thumb_func_start ov23_02255F40
ov23_02255F40: ; 0x02255F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	add r0, #0x8c
	ldr r1, _02255FFC ; =0x021BF6BC
	ldr r6, [r0, #0]
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	add r4, r2, #0
	bl ov23_02255F28
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #8
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ov5_021EAFA4
	ldr r1, [sp, #8]
	mov r3, #0x1b
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	ldr r1, [sp, #0x10]
	str r0, [sp, #4]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r7, r0, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	lsr r0, r0, #0x1f
	lsl r1, r1, #0x1b
	sub r1, r1, r0
	ror r1, r3
	add r2, r0, r1
	lsr r1, r7, #0x1f
	lsl r0, r7, #0x1b
	sub r0, r0, r1
	ror r0, r3
	ldr r6, [r5, #0x18]
	ldr r4, [r5, #0x1c]
	add r0, r1, r0
	sub r1, r6, #1
	add r1, r2, r1
	str r1, [sp, #0x1c]
	sub r1, r4, #1
	str r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	str r2, [sp, #0x14]
	bl ov23_02255B58
	cmp r0, #0
	bne _02255FF6
	add r3, sp, #0x14
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	lsl r1, r7, #0x10
	lsl r2, r0, #0x10
	lsl r0, r6, #0xf
	str r2, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #8]
	lsl r0, r4, #0xf
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r5, #0x10]
	add r0, #0xa4
	str r0, [sp]
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r1, sp, #8
	bl ov5_021E18A4
_02255FF6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255FFC: .word 0x021BF6BC
	thumb_func_end ov23_02255F40

	thumb_func_start ov23_02256000
ov23_02256000: ; 0x02256000
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r0, #0x8c
	ldr r1, _02256094 ; =0x021BF6BC
	ldr r5, [r0, #0]
	ldrh r0, [r1, #0x1c]
	add r6, r2, #0
	ldrh r1, [r1, #0x1e]
	add r2, r4, #0
	bl ov23_02255F28
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ov5_021EAFA4
	ldr r1, [sp]
	mov r2, #0x1b
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	ldr r1, [sp, #8]
	asr r4, r0, #0x10
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r5, r0, #0x10
	lsr r1, r4, #0x1f
	lsl r0, r4, #0x1b
	sub r0, r0, r1
	ror r0, r2
	add r0, r1, r0
	lsr r3, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r3
	ror r1, r2
	add r1, r3, r1
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	bl ov23_02255B58
	cmp r0, #0
	bne _0225608E
	mov r0, #2
	lsl r1, r4, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp]
	lsl r1, r5, #0x10
	add r1, r1, r0
	lsr r0, r0, #3
	add r2, r6, #0
	add r3, sp, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldmia r3!, {r0, r1}
	add r2, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r4, [r6, #0x64]
	str r5, [r6, #0x68]
_0225608E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02256094: .word 0x021BF6BC
	thumb_func_end ov23_02256000

	thumb_func_start ov23_02256098
ov23_02256098: ; 0x02256098
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _022560F8 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _022560C8
	ldr r0, _022560FC ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022560C4
	ldr r2, _02256100 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022560C4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022560C8:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _022560E8
	ldr r2, _02256100 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _022560E4
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022560E4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022560E8:
	ldr r1, _02256100 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _022560F6
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_022560F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022560F8: .word 0x021BF6BC
_022560FC: .word 0x021BF67C
_02256100: .word 0x000004F8
	thumb_func_end ov23_02256098

	thumb_func_start ov23_02256104
ov23_02256104: ; 0x02256104
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _02256168 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _02256136
	ldr r0, _0225616C ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _02256132
	ldr r2, _02256170 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r2, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_02256132:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256136:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _02256158
	ldr r2, _02256170 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _02256154
	add r0, r1, #0
	add r1, r2, #0
	add r2, r2, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_02256154:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256158:
	ldr r1, _02256170 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _02256166
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_02256166:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256168: .word 0x021BF6BC
_0225616C: .word 0x021BF67C
_02256170: .word 0x000004F8
	thumb_func_end ov23_02256104

	thumb_func_start ov23_02256174
ov23_02256174: ; 0x02256174
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _022561B0 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r4, [r4, #0x20]
	cmp r4, #0
	beq _022561A8
	ldr r0, _022561B4 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022561A4
	ldr r4, _022561B8 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r4]
	str r0, [r2, #0]
	add r0, r1, #0
	add r1, r4, #0
	add r2, r4, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_022561A4:
	mov r0, #1
	pop {r4, pc}
_022561A8:
	ldr r1, _022561B8 ; =0x000004F8
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_022561B0: .word 0x021BF6BC
_022561B4: .word 0x021BF67C
_022561B8: .word 0x000004F8
	thumb_func_end ov23_02256174

	thumb_func_start ov23_022561BC
ov23_022561BC: ; 0x022561BC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _0225621C ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _022561EC
	ldr r0, _02256220 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022561E8
	ldr r2, _02256224 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022561E8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022561EC:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _0225620C
	ldr r2, _02256224 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _02256208
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_02256208:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225620C:
	ldr r1, _02256224 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _0225621A
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_0225621A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225621C: .word 0x021BF6BC
_02256220: .word 0x021BF67C
_02256224: .word 0x000004F8
	thumb_func_end ov23_022561BC

	thumb_func_start ov23_02256228
ov23_02256228: ; 0x02256228
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, _02256238 ; =0x0000FFFF
	str r2, [r0, #8]
	str r1, [r0, #0]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	; .align 2, 0
_02256238: .word 0x0000FFFF
	thumb_func_end ov23_02256228

	thumb_func_start ov23_0225623C
ov23_0225623C: ; 0x0225623C
	mov r3, #0
	str r3, [r2, #4]
	str r1, [r2, #8]
	str r0, [r2, #0]
	str r3, [r2, #0xc]
	mov r0, #1
	str r0, [r2, #0x10]
	bx lr
	thumb_func_end ov23_0225623C

	thumb_func_start ov23_0225624C
ov23_0225624C: ; 0x0225624C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02256288
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r1, [r4, #8]
	cmp r2, r1
	blt _02256288
	mov r1, #0
	str r1, [r4, #4]
	ldr r1, [r4, #0xc]
	add r0, #0xa4
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl ov5_021E18E0
	ldr r1, [r4, #0xc]
	bl ov5_021E18B4
_02256288:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225624C

	thumb_func_start ov23_0225628C
ov23_0225628C: ; 0x0225628C
	push {r3, lr}
	ldr r2, [r1, #0x10]
	cmp r2, #0
	beq _022562A4
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov5_021E18E0
	mov r1, #0
	bl ov5_021E18B4
_022562A4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0225628C

	thumb_func_start ov23_022562A8
ov23_022562A8: ; 0x022562A8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov23_022562A8

	thumb_func_start ov23_022562AC
ov23_022562AC: ; 0x022562AC
	ldr r3, _022562B4 ; =ov23_02255EC4
	add r0, r2, #0
	bx r3
	nop
_022562B4: .word ov23_02255EC4
	thumb_func_end ov23_022562AC

	thumb_func_start ov23_022562B8
ov23_022562B8: ; 0x022562B8
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022562B8

	thumb_func_start ov23_022562BC
ov23_022562BC: ; 0x022562BC
	ldr r3, _022562C4 ; =ov23_02255EF0
	add r0, r2, #0
	bx r3
	nop
_022562C4: .word ov23_02255EF0
	thumb_func_end ov23_022562BC

	thumb_func_start ov23_022562C8
ov23_022562C8: ; 0x022562C8
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	beq _022562FE
	ldr r5, _02256304 ; =0x02256BA0
	add r4, sp, #0xc
	mov r3, #4
_022562D8:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _022562D8
	ldr r0, [r5, #0]
	ldr r5, _02256308 ; =0x02256B5C
	str r0, [r4, #0]
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r0, r2, #0
	add r2, #0x58
	add r1, r2, #0
	add r2, sp, #0xc
	bl sub_0201CA74
_022562FE:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_02256304: .word 0x02256BA0
_02256308: .word 0x02256B5C
	thumb_func_end ov23_022562C8

	.rodata


	.global Unk_ov23_02256B5C
Unk_ov23_02256B5C: ; 0x02256B5C
	.incbin "incbin/overlay23_rodata.bin", 0x850, 0x85C - 0x850

	.global Unk_ov23_02256B68
Unk_ov23_02256B68: ; 0x02256B68
	.incbin "incbin/overlay23_rodata.bin", 0x85C, 0x86C - 0x85C

	.global Unk_ov23_02256B78
Unk_ov23_02256B78: ; 0x02256B78
	.incbin "incbin/overlay23_rodata.bin", 0x86C, 0x87C - 0x86C

	.global Unk_ov23_02256B88
Unk_ov23_02256B88: ; 0x02256B88
	.incbin "incbin/overlay23_rodata.bin", 0x87C, 0x894 - 0x87C

	.global Unk_ov23_02256BA0
Unk_ov23_02256BA0: ; 0x02256BA0
	.incbin "incbin/overlay23_rodata.bin", 0x894, 0x24


	.data


	.global Unk_ov23_02257724
Unk_ov23_02257724: ; 0x02257724
	.incbin "incbin/overlay23_data.bin", 0xB44, 0x17

