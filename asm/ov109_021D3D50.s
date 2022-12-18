	.include "macros/function.inc"
	.include "include/ov109_021D3D50.inc"

	

	.text


	thumb_func_start ov109_021D3D50
ov109_021D3D50: ; 0x021D3D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02006840
	add r6, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D3D6C
	cmp r0, #1
	bne _021D3D6A
	b _021D3E88
_021D3D6A:
	b _021D3E92
_021D3D6C:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D3E98 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D3E9C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #3
	mov r1, #0x5f
	lsl r2, r2, #7
	bl sub_02017FC8
	mov r0, #0x56
	mov r1, #0x5f
	bl sub_02006C24
	add r7, r0, #0
	bne _021D3DAE
	bl sub_02022974
_021D3DAE:
	ldr r1, _021D3EA0 ; =0x00004AB0
	add r0, r4, #0
	mov r2, #0x5f
	bl sub_0200681C
	ldr r2, _021D3EA0 ; =0x00004AB0
	add r4, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r4, [r6, #0x3c]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x34]
	str r0, [r4, #0x10]
	mov r0, #0x5f
	bl sub_02018340
	str r0, [r4, #0x14]
	mov r0, #0x5f
	bl sub_0200B358
	str r0, [r4, #0x34]
	ldr r2, _021D3EA4 ; =0x00000179
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x5f
	bl sub_0200B144
	str r0, [r4, #0x38]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov109_021D40D0
	ldr r0, [r4, #0x14]
	bl ov109_021D40F0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r4, #0
	add r1, r7, #0
	bl ov109_021D4300
	ldr r0, _021D3EA8 ; =ov109_021D40A8
	add r1, r4, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r7, #0
	bl ov109_021D41F8
	bl ov109_021D43EC
	add r0, r4, #0
	add r1, r7, #0
	bl ov109_021D441C
	add r0, r4, #0
	bl ov109_021D4518
	add r0, r4, #0
	bl ov109_021D45F4
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	ldr r0, [r6, #0x34]
	bl sub_0209BE50
	bl sub_020378B8
	mov r0, #3
	bl sub_02037B58
	bl sub_0203608C
	cmp r0, #0
	bne _021D3E6A
	mov r0, #0xd
	bl sub_0205BEA8
_021D3E6A:
	bl sub_02039734
	ldr r0, _021D3EAC ; =ov109_021D4044
	add r1, r4, #0
	mov r2, #5
	bl sub_0200DA04
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D3E92
_021D3E88:
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3E92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3E98: .word 0xFFFFE0FF
_021D3E9C: .word 0x04001000
_021D3EA0: .word 0x00004AB0
_021D3EA4: .word 0x00000179
_021D3EA8: .word ov109_021D40A8
_021D3EAC: .word ov109_021D4044
	thumb_func_end ov109_021D3D50

	thumb_func_start ov109_021D3EB0
ov109_021D3EB0: ; 0x021D3EB0
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D3ED4
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021D3ED4
	bl sub_020318EC
	ldr r2, [r4, #0x10]
	ldr r1, [r2, #0x30]
	and r0, r1
	str r0, [r2, #0x30]
_021D3ED4:
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _021D3F8A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3EE6: ; jump table
	.short _021D3EEE - _021D3EE6 - 2 ; case 0
	.short _021D3F18 - _021D3EE6 - 2 ; case 1
	.short _021D3F66 - _021D3EE6 - 2 ; case 2
	.short _021D3F7E - _021D3EE6 - 2 ; case 3
_021D3EEE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3F8A
	mov r0, #1
	str r0, [r4, #0]
	bl sub_0203608C
	cmp r0, #0
	beq _021D3F8A
	bl ov109_021D548C
	cmp r0, #2
	ble _021D3F8A
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #4
	add r3, r2, #0
	bl sub_0209BEBC
	b _021D3F8A
_021D3F18:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021D3F94 ; =0x021D5E9C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D3F2E
	add r0, r4, #0
	blx r2
	str r0, [r4, #0]
_021D3F2E:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021D3F46
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r2, _021D3F98 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov109_021D537C
_021D3F46:
	add r0, r4, #0
	bl ov109_021D5668
	bl sub_0203608C
	cmp r0, #0
	bne _021D3F8A
	add r0, r4, #0
	mov r1, #1
	bl ov109_021D58AC
	ldr r1, [r4, #0]
	cmp r1, #1
	bne _021D3F8A
	str r0, [r4, #0]
	b _021D3F8A
_021D3F66:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021D3F94 ; =0x021D5E9C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D3F8A
	add r0, r4, #0
	blx r2
	str r0, [r4, #0]
	b _021D3F8A
_021D3F7E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3F8A
	mov r0, #1
	pop {r4, pc}
_021D3F8A:
	ldr r0, [r4, #0x60]
	bl sub_020219F8
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D3F94: .word 0x021D5E9C
_021D3F98: .word 0x00010300
	thumb_func_end ov109_021D3EB0

	thumb_func_start ov109_021D3F9C
ov109_021D3F9C: ; 0x021D3F9C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	ldr r0, [r6, #0x30]
	bl sub_0200DA58
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x63
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021D3FC8:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D3FC8
	ldr r0, [r6, #0x60]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	add r0, r6, #0
	bl ov109_021D471C
	ldr r0, [r6, #0x14]
	bl ov109_021D42CC
	ldr r0, [r6, #0x38]
	bl sub_0200B190
	ldr r0, [r6, #0x34]
	bl sub_0200B3F0
	ldr r2, _021D4040 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	str r1, [r0, #0x10]
	bl ov109_021D548C
	ldr r1, [r6, #0xc]
	str r0, [r1, #8]
	bl ov109_021D54A8
	ldr r1, [r6, #0xc]
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov109_021D4294
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0x5f
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4040: .word 0x04000304
	thumb_func_end ov109_021D3F9C

	thumb_func_start ov109_021D4044
ov109_021D4044: ; 0x021D4044
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	add r1, #0x1c
	cmp r0, #0
	beq _021D409E
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsl r2, r0, #1
	ldr r0, _021D40A0 ; =0x021D5DA6
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021D408E
	mov r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	lsl r3, r2, #1
	ldr r2, _021D40A4 ; =0x021D5DA7
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021D4074
	str r0, [r1, #4]
_021D4074:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsl r2, r1, #1
	ldr r1, _021D40A4 ; =0x021D5DA7
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r0, r0, r1
	mov r1, #0
	bl sub_020C0160
	b _021D4094
_021D408E:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
_021D4094:
	mov r0, #0xed
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov109_021D5314
_021D409E:
	pop {r4, pc}
	; .align 2, 0
_021D40A0: .word 0x021D5DA6
_021D40A4: .word 0x021D5DA7
	thumb_func_end ov109_021D4044

	thumb_func_start ov109_021D40A8
ov109_021D40A8: ; 0x021D40A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	add r0, r4, #0
	bl sub_0201C2B8
	ldr r3, _021D40C8 ; =0x027E0000
	ldr r1, _021D40CC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D40C8: .word 0x027E0000
_021D40CC: .word 0x00003FF8
	thumb_func_end ov109_021D40A8

	thumb_func_start ov109_021D40D0
ov109_021D40D0: ; 0x021D40D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D40EC ; =0x021D5E74
	add r3, sp, #0
	mov r2, #5
_021D40DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D40DA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D40EC: .word 0x021D5E74
	thumb_func_end ov109_021D40D0

	thumb_func_start ov109_021D40F0
ov109_021D40F0: ; 0x021D40F0
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021D41E0 ; =0x021D5DB0
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D41E4 ; =0x021D5E3C
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _021D41E8 ; =0x021D5E58
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _021D41EC ; =0x021D5DE8
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D41F0 ; =0x021D5E04
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _021D41F4 ; =0x021D5E20
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x5f
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x5f
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D41E0: .word 0x021D5DB0
_021D41E4: .word 0x021D5E3C
_021D41E8: .word 0x021D5E58
_021D41EC: .word 0x021D5DE8
_021D41F0: .word 0x021D5E04
_021D41F4: .word 0x021D5E20
	thumb_func_end ov109_021D40F0

	thumb_func_start ov109_021D41F8
ov109_021D41F8: ; 0x021D41F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r6, #0
	add r4, r7, #0
	add r5, r7, #0
_021D4204:
	mov r0, #8
	mov r1, #0x5f
	bl sub_02023790
	str r0, [r4, #0x3c]
	mov r0, #0xdd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0xe7
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #8
	cmp r6, #5
	blt _021D4204
	mov r0, #0xb4
	mov r1, #0x5f
	bl sub_02023790
	str r0, [r7, #0x54]
	mov r0, #0x28
	mov r1, #0x5f
	bl sub_02023790
	str r0, [r7, #0x58]
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r7, r0]
	ldr r0, [r7, #0x38]
	ldr r2, [r7, #0x58]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r1, [sp]
	add r0, r7, #0
	bl ov109_021D577C
	mov r0, #0x5f
	bl sub_0205CA4C
	mov r1, #0xee
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r0, #0
	str r0, [r7, #0x1c]
	str r0, [r7, #0x24]
	str r0, [r7, #0x20]
	add r2, r7, #0
	ldr r0, [sp]
	mov r1, #1
	add r2, #0x2c
	mov r3, #0x5f
	bl sub_020071EC
	str r0, [r7, #0x28]
	ldr r0, _021D4290 ; =0x00004A44
	mov r1, #0
	str r1, [r7, r0]
	mov r0, #0x33
	lsl r0, r0, #4
	str r1, [r7, r0]
	ldr r0, [r7, #0x10]
	mov r1, #2
	str r1, [r0, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4290: .word 0x00004A44
	thumb_func_end ov109_021D41F8

	thumb_func_start ov109_021D4294
ov109_021D4294: ; 0x021D4294
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov109_021D5824
	ldr r0, [r6, #0x28]
	bl sub_020181C4
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r4, #0
	add r5, r6, #0
_021D42B0:
	ldr r0, [r5, #0x3c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021D42B0
	ldr r0, [r6, #0x58]
	bl sub_020237BC
	ldr r0, [r6, #0x54]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D4294

	thumb_func_start ov109_021D42CC
ov109_021D42CC: ; 0x021D42CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D42CC

	thumb_func_start ov109_021D4300
ov109_021D4300: ; 0x021D4300
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	ldr r4, [r5, #0x14]
	lsl r0, r0, #8
	add r6, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x5f
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x5f
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5f
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5f
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x5f
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x5f
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl sub_0200710C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D4300

	thumb_func_start ov109_021D43EC
ov109_021D43EC: ; 0x021D43EC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D4418 ; =0x021D5DC0
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x5f
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D4418: .word 0x021D5DC0
	thumb_func_end ov109_021D43EC

	thumb_func_start ov109_021D441C
ov109_021D441C: ; 0x021D441C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x14]
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x5f
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r6, #0
	mov r0, #0x1e
	add r1, #0x64
	mov r2, #0x5f
	bl sub_020095C4
	str r0, [r6, #0x60]
	cmp r0, #0
	bne _021D4456
	bl sub_02022974
_021D4456:
	add r0, r6, #0
	mov r2, #1
	add r0, #0x64
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0x63
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021D446C:
	mov r0, #3
	add r1, r4, #0
	mov r2, #0x5f
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D446C
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	mov r2, #0xc
	bl sub_02009A4C
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x5f
	sub r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl sub_02009B04
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x5f
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xd
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x5f
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xe
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A328
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0200A5C8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D441C

	thumb_func_start ov109_021D4518
ov109_021D4518: ; 0x021D4518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #2
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0x63
	str r0, [sp, #0xc]
	mov r2, #1
	lsl r3, r3, #2
	str r2, [sp, #0x10]
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x60]
	mov r6, #0
	str r0, [sp, #0x2c]
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	mov r7, #0x8f
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x5f
	ldr r4, _021D45F0 ; =0x021D5DD0
	str r0, [sp, #0x58]
	lsl r7, r7, #2
_021D458C:
	ldrh r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8f
	lsl r0, r0, #2
	sub r1, r6, #1
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x1b
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #5
	blt _021D458C
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x1a
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D45F0: .word 0x021D5DD0
	thumb_func_end ov109_021D4518

	thumb_func_start ov109_021D45F4
ov109_021D45F4: ; 0x021D45F4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021D46D0 ; =0x000001C3
	mov r1, #0xc2
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0x14]
	add r1, r4, r1
	mov r2, #5
	mov r3, #0x1a
	bl sub_0201A7E8
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0xbe
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0x14]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x94
	mov r1, #0xc6
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0x14]
	add r1, r4, r1
	mov r2, #0
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r1, [r4, #0x58]
	add r0, r4, r0
	mov r2, #0
	bl ov109_021D46D8
	mov r0, #6
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0xc8
	mov r1, #0xaa
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0x14]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xaa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r2, _021D46D4 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov109_021D537C
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021D46D0: .word 0x000001C3
_021D46D4: .word 0x00010300
	thumb_func_end ov109_021D45F4

	thumb_func_start ov109_021D46D8
ov109_021D46D8: ; 0x021D46D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	mov r2, #0
	add r7, r1, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	str r1, [sp]
	mov r0, #0x41
	mov r3, #0xd0
	str r4, [sp, #4]
	sub r4, r3, r6
	lsl r0, r0, #0xa
	lsr r3, r4, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	add r3, r4, r3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r7, #0
	asr r3, r3, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D46D8

	thumb_func_start ov109_021D471C
ov109_021D471C: ; 0x021D471C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D471C

	thumb_func_start ov109_021D474C
ov109_021D474C: ; 0x021D474C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	cmp r0, #0
	bne _021D4776
	bl sub_02035E18
	cmp r0, #2
	blt _021D4780
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov109_021D55A8
	b _021D4780
_021D4776:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov109_021D55A8
_021D4780:
	add r0, r5, #0
	mov r1, #3
	bl ov109_021D48EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D474C

	thumb_func_start ov109_021D478C
ov109_021D478C: ; 0x021D478C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov109_021D47B8
	bl sub_0203608C
	cmp r0, #0
	bne _021D47AE
	bl ov109_021D5360
	cmp r0, #1
	beq _021D47B4
	add r0, r5, #0
	bl ov109_021D5488
	b _021D47B4
_021D47AE:
	add r0, r5, #0
	bl ov109_021D5488
_021D47B4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D478C

	thumb_func_start ov109_021D47B8
ov109_021D47B8: ; 0x021D47B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021D48C4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021D4818
	bl sub_0203608C
	cmp r0, #0
	bne _021D48C2
	ldr r5, [r4, #0x10]
	bl ov109_021D548C
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021D4810
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021D4810
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov109_021D55A8
	add r0, r4, #0
	mov r1, #0x16
	bl ov109_021D48EC
	add r2, sp, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, #2
	mov r3, #1
	bl sub_0209BEBC
	add r0, r4, #0
	mov r1, #0
	bl ov109_021D5858
	pop {r3, r4, r5, pc}
_021D4810:
	ldr r0, _021D48C8 ; =0x000005F2
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D4818:
	mov r0, #2
	tst r0, r1
	beq _021D4894
	bl sub_0203608C
	cmp r0, #0
	beq _021D484A
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _021D4842
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov109_021D55A8
	add r0, r4, #0
	mov r1, #4
	bl ov109_021D48EC
	pop {r3, r4, r5, pc}
_021D4842:
	ldr r0, _021D48C8 ; =0x000005F2
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D484A:
	ldr r5, [r4, #0x10]
	bl sub_02035E18
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021D488C
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021D488C
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #1]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov109_021D55A8
	add r0, r4, #0
	mov r1, #4
	bl ov109_021D48EC
	add r2, sp, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, #1
	mov r3, #1
	bl sub_0209BEBC
	add r0, r4, #0
	mov r1, #0
	bl ov109_021D5858
	pop {r3, r4, r5, pc}
_021D488C:
	ldr r0, _021D48C8 ; =0x000005F2
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D4894:
	ldr r0, _021D48CC ; =0x00004A48
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D48C2
	bl sub_0203608C
	cmp r0, #0
	bne _021D48C2
	bl sub_02035E18
	ldr r1, [r4, #0x10]
	ldr r1, [r1, #0x2c]
	cmp r1, r0
	bne _021D48C2
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
_021D48C2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D48C4: .word 0x021BF67C
_021D48C8: .word 0x000005F2
_021D48CC: .word 0x00004A48
	thumb_func_end ov109_021D47B8

	thumb_func_start ov109_021D48D0
ov109_021D48D0: ; 0x021D48D0
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D48D0

	thumb_func_start ov109_021D48D4
ov109_021D48D4: ; 0x021D48D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov109_021D48EC
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D48D4

	thumb_func_start ov109_021D48EC
ov109_021D48EC: ; 0x021D48EC
	mov r2, #0xd5
	mov r3, #0x1e
	lsl r2, r2, #2
	str r3, [r0, r2]
	add r2, r2, #4
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D48EC

	thumb_func_start ov109_021D48FC
ov109_021D48FC: ; 0x021D48FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4916
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
_021D4916:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D48FC

	thumb_func_start ov109_021D4920
ov109_021D4920: ; 0x021D4920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D493E
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
_021D493E:
	mov r0, #0xd5
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4920

	thumb_func_start ov109_021D4950
ov109_021D4950: ; 0x021D4950
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5f
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D497C ; =0x021D5D94
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #5
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D497C: .word 0x021D5D94
	thumb_func_end ov109_021D4950

	thumb_func_start ov109_021D4980
ov109_021D4980: ; 0x021D4980
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203608C
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _021D49B4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021D49D6
	ldr r0, _021D4A9C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D49A8
	ldr r0, _021D4AA0 ; =0x000005F2
	bl sub_02005748
_021D49A8:
	add r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49B4:
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021D49D6
	ldr r0, _021D4A9C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D49CA
	ldr r0, _021D4AA0 ; =0x000005F2
	bl sub_02005748
_021D49CA:
	add r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49D6:
	bl ov109_021D548C
	add r4, r0, #0
	bl sub_02035E18
	cmp r4, r0
	beq _021D49F0
	add r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49F0:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x5f
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D4A90
	sub r1, r1, #1
	cmp r0, r1
	bne _021D4A34
	bl sub_0203608C
	cmp r0, #0
	bne _021D4A2A
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #4
	mov r3, #1
	bl sub_0209BEBC
	add r0, r5, #0
	mov r1, #1
	bl ov109_021D5858
_021D4A2A:
	add r0, r5, #0
	mov r1, #0
	bl ov109_021D48EC
	b _021D4A88
_021D4A34:
	bl sub_0203608C
	cmp r0, #0
	bne _021D4A50
	add r0, r5, #0
	mov r1, #0xb
	bl ov109_021D48EC
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov109_021D55A8
	b _021D4A88
_021D4A50:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021D4AA4 ; =0x00004A50
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	add r0, #0xc
	strh r1, [r5, r0]
	mov r0, #0xd5
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r2, sp, #0
	mov r3, #4
	bl sub_0209BEBC
_021D4A88:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D4A90:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4A9C: .word 0x021BF67C
_021D4AA0: .word 0x000005F2
_021D4AA4: .word 0x00004A50
	thumb_func_end ov109_021D4980

	thumb_func_start ov109_021D4AA8
ov109_021D4AA8: ; 0x021D4AA8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _021D4ABC ; =0x00004A5C
	mov r2, #0
	strh r2, [r0, r1]
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r4, pc}
	nop
_021D4ABC: .word 0x00004A5C
	thumb_func_end ov109_021D4AA8

	thumb_func_start ov109_021D4AC0
ov109_021D4AC0: ; 0x021D4AC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E18
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	bne _021D4ADE
	bl ov109_021D548C
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	beq _021D4AF6
_021D4ADE:
	ldr r0, _021D4B40 ; =0x00004A5C
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #0xd5
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021D4AF6:
	ldr r0, _021D4B40 ; =0x00004A5C
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021D4B36
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r2, sp, #0
	mov r3, #4
	bl sub_0209BEBC
	ldr r0, _021D4B40 ; =0x00004A5C
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #0xd5
	mov r1, #9
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D4B36:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4B40: .word 0x00004A5C
	thumb_func_end ov109_021D4AC0

	thumb_func_start ov109_021D4B44
ov109_021D4B44: ; 0x021D4B44
	push {r3, r4, r5, lr}
	ldr r2, _021D4B60 ; =0x00004A50
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5, r2]
	bl ov109_021D48EC
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4B60: .word 0x00004A50
	thumb_func_end ov109_021D4B44

	thumb_func_start ov109_021D4B64
ov109_021D4B64: ; 0x021D4B64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5f
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D4B90 ; =0x021D5D94
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x17
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4B90: .word 0x021D5D94
	thumb_func_end ov109_021D4B64

	thumb_func_start ov109_021D4B94
ov109_021D4B94: ; 0x021D4B94
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ov109_021D548C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021D4BAE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4BCA
_021D4BAE:
	ldr r0, _021D4C40 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D4BBE
	ldr r0, _021D4C44 ; =0x000005F2
	bl sub_02005748
_021D4BBE:
	add r0, r5, #0
	bl ov109_021D48D0
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D4BCA:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x5f
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D4C32
	sub r1, r1, #1
	cmp r0, r1
	bne _021D4C06
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
	add r0, r5, #0
	mov r1, #1
	bl ov109_021D5858
	add r0, r5, #0
	mov r1, #0
	bl ov109_021D48EC
	b _021D4C2A
_021D4C06:
	bl sub_0203608C
	cmp r0, #0
	bne _021D4C26
	mov r0, #0xd5
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl ov109_021D548C
	ldr r1, _021D4C48 ; =0x00004A52
	strb r0, [r5, r1]
	mov r0, #0xc
	bl sub_0205BEA8
	b _021D4C2A
_021D4C26:
	bl sub_02022974
_021D4C2A:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D4C32:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D4C40: .word 0x021BF67C
_021D4C44: .word 0x000005F2
_021D4C48: .word 0x00004A52
	thumb_func_end ov109_021D4B94

	thumb_func_start ov109_021D4C4C
ov109_021D4C4C: ; 0x021D4C4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D4C78 ; =0x00004A53
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021D4C72
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D4C72
	mov r0, #0xd5
	mov r1, #0x1f
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D4C72:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4C78: .word 0x00004A53
	thumb_func_end ov109_021D4C4C

	thumb_func_start ov109_021D4C7C
ov109_021D4C7C: ; 0x021D4C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D4C8E
	bl sub_02035E18
_021D4C8E:
	bl sub_02035E18
	ldr r1, [r5, #0x10]
	ldr r1, [r1, #0x20]
	cmp r1, r0
	bne _021D4CA2
	mov r0, #0xd5
	mov r1, #0x1f
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D4CA2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4C7C

	thumb_func_start ov109_021D4CA8
ov109_021D4CA8: ; 0x021D4CA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	mov r1, #0x3e
	lsl r1, r1, #6
	ldr r0, [r0, #0x1c]
	add r1, r5, r1
	bl ov109_021D59A8
	mov r0, #0xd5
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4CA8

	thumb_func_start ov109_021D4CC8
ov109_021D4CC8: ; 0x021D4CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021D4D1C ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #8]
	mov r0, #0x5f
	bl sub_0202C1B4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #4
	ldr r0, [r0, #0x2c]
	bl sub_0202B758
	mov r0, #0x5f
	mov r1, #0x11
	bl sub_0202C244
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #4
	ldr r0, [r0, #0x2c]
	bl sub_0202B758
	ldr r0, [r5, #0xc]
	mov r1, #0x14
	ldr r0, [r0, #0x28]
	bl sub_0202CFEC
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_02038ED4
	mov r0, #0xd5
	mov r1, #0x1c
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4D1C: .word 0x021BF6DC
	thumb_func_end ov109_021D4CC8

	thumb_func_start ov109_021D4D20
ov109_021D4D20: ; 0x021D4D20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D4D32
	bl sub_02035E18
_021D4D32:
	ldr r0, [r5, #0xc]
	mov r2, #0x3b
	lsl r2, r2, #4
	ldr r0, [r0, #0x1c]
	mov r1, #2
	add r2, r5, r2
	bl sub_02038EDC
	cmp r0, #0
	beq _021D4D72
	ldr r0, _021D4D78 ; =0x00000658
	mov r1, #8
	bl sub_020057A4
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ov109_021D55A8
	add r0, r5, #0
	mov r1, #0x1d
	bl ov109_021D48EC
	mov r1, #0
	mov r0, #0x36
	str r1, [r5, #0x1c]
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021D4D7C ; =0x021BF6DC
	strb r1, [r0, #8]
	ldr r0, [r5, #0x10]
	str r1, [r0, #0x24]
_021D4D72:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4D78: .word 0x00000658
_021D4D7C: .word 0x021BF6DC
	thumb_func_end ov109_021D4D20

	thumb_func_start ov109_021D4D80
ov109_021D4D80: ; 0x021D4D80
	push {r3, r4}
	mov r2, #0x36
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	add r3, r4, #1
	str r3, [r0, r2]
	cmp r4, #0x3c
	ble _021D4D96
	mov r3, #0xf
	sub r2, #0xc
	str r3, [r0, r2]
_021D4D96:
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov109_021D4D80

	thumb_func_start ov109_021D4D9C
ov109_021D4D9C: ; 0x021D4D9C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl ov109_021D55A8
	add r0, r5, #0
	mov r1, #0xa
	bl ov109_021D48EC
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4D9C

	thumb_func_start ov109_021D4DBC
ov109_021D4DBC: ; 0x021D4DBC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x36
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D4DEC
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r4, #3
_021D4DEC:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov109_021D4DBC

	thumb_func_start ov109_021D4DF8
ov109_021D4DF8: ; 0x021D4DF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5f
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D4E24 ; =0x021D5D94
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xc
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4E24: .word 0x021D5D94
	thumb_func_end ov109_021D4DF8

	thumb_func_start ov109_021D4E28
ov109_021D4E28: ; 0x021D4E28
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ov109_021D548C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021D4E42
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4E5E
_021D4E42:
	ldr r0, _021D4ED0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D4E52
	ldr r0, _021D4ED4 ; =0x000005F2
	bl sub_02005748
_021D4E52:
	add r0, r5, #0
	bl ov109_021D48D0
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D4E5E:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x5f
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D4EC4
	sub r1, r1, #1
	cmp r0, r1
	bne _021D4E98
	mov r1, #0
	mov r0, #0xd5
	str r1, [sp]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
	add r0, r5, #0
	mov r1, #1
	bl ov109_021D5858
	b _021D4EBC
_021D4E98:
	mov r0, #0xd5
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_0209BEBC
	mov r0, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200B498
_021D4EBC:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D4EC4:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D4ED0: .word 0x021BF67C
_021D4ED4: .word 0x000005F2
	thumb_func_end ov109_021D4E28

	thumb_func_start ov109_021D4ED8
ov109_021D4ED8: ; 0x021D4ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D4EF2
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ov109_021D55A8
	b _021D4F0C
_021D4EF2:
	mov r0, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov109_021D55A8
_021D4F0C:
	add r0, r5, #0
	mov r1, #0xe
	bl ov109_021D48EC
	mov r0, #0x36
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4ED8

	thumb_func_start ov109_021D4F28
ov109_021D4F28: ; 0x021D4F28
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x36
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0x2d
	ble _021D4F42
	mov r2, #0xf
	sub r1, #0xc
	str r2, [r0, r1]
_021D4F42:
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4F28

	thumb_func_start ov109_021D4F4C
ov109_021D4F4C: ; 0x021D4F4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xca
	add r4, r1, #0
	bl sub_020364F0
	mov r0, #0xd5
	mov r1, #0x10
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4F4C

	thumb_func_start ov109_021D4F6C
ov109_021D4F6C: ; 0x021D4F6C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xca
	add r5, r1, #0
	bl sub_02036540
	cmp r0, #0
	beq _021D4F9E
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r5, #3
_021D4F9E:
	add r0, r4, #0
	bl ov109_021D48D0
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4F6C

	thumb_func_start ov109_021D4FAC
ov109_021D4FAC: ; 0x021D4FAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4FC6
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ov109_021D55A8
_021D4FC6:
	mov r0, #0xd5
	mov r1, #0x12
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4FAC

	thumb_func_start ov109_021D4FD8
ov109_021D4FD8: ; 0x021D4FD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4FF0
	mov r0, #0xd5
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D4FF0:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D4FD8

	thumb_func_start ov109_021D4FFC
ov109_021D4FFC: ; 0x021D4FFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	cmp r0, #0xff
	beq _021D501A
	bl ov109_021D5638
	cmp r0, #0
	bne _021D501A
	ldr r0, [r5, #0x5c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D501A:
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #1
	bl ov109_021D55A8
	mov r0, #0xd5
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _021D503C
	add r0, r5, #0
	mov r1, #0
	bl ov109_021D5858
_021D503C:
	bl sub_02035E18
	ldr r1, _021D5058 ; =0x00004A58
	mov r2, #0x4b
	str r0, [r5, r1]
	lsl r2, r2, #2
	sub r0, r1, #4
	str r2, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5058: .word 0x00004A58
	thumb_func_end ov109_021D4FFC

	thumb_func_start ov109_021D505C
ov109_021D505C: ; 0x021D505C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D5094 ; =0x00004A58
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D507A
	bl sub_02035E18
	ldr r1, _021D5094 ; =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D507A
	mov r0, #0
	str r0, [r5, r1]
_021D507A:
	mov r0, #0xd5
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5094: .word 0x00004A58
	thumb_func_end ov109_021D505C

	thumb_func_start ov109_021D5098
ov109_021D5098: ; 0x021D5098
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D5104 ; =0x00004A58
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D50B6
	bl sub_02035E18
	ldr r1, _021D5104 ; =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D50B6
	mov r0, #0
	str r0, [r5, r1]
_021D50B6:
	ldr r0, _021D5108 ; =0x00004A54
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _021D50CA
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
_021D50CA:
	mov r1, #0x36
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0x3c
	ble _021D50F8
	ldr r0, _021D5104 ; =0x00004A58
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D50F8
	mov r0, #0
	sub r1, #0xc
	str r0, [r5, r1]
	bl sub_0203608C
	cmp r0, #0
	bne _021D50F8
	add r0, r5, #0
	mov r1, #1
	bl ov109_021D5858
_021D50F8:
	add r0, r5, #0
	bl ov109_021D48D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5104: .word 0x00004A58
_021D5108: .word 0x00004A54
	thumb_func_end ov109_021D5098

	thumb_func_start ov109_021D510C
ov109_021D510C: ; 0x021D510C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xc
	bl sub_0205BEA8
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov109_021D48D0
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D510C

	thumb_func_start ov109_021D5140
ov109_021D5140: ; 0x021D5140
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x13
	bgt _021D5168
	bge _021D51CE
	cmp r4, #8
	bgt _021D5162
	cmp r4, #2
	blt _021D524E
	beq _021D5176
	cmp r4, #7
	beq _021D5248
	cmp r4, #8
	beq _021D5248
	pop {r4, r5, r6, pc}
_021D5162:
	cmp r4, #0xd
	beq _021D517C
	pop {r4, r5, r6, pc}
_021D5168:
	cmp r4, #0x19
	bgt _021D5170
	beq _021D5196
	pop {r4, r5, r6, pc}
_021D5170:
	cmp r4, #0x1f
	beq _021D521C
	pop {r4, r5, r6, pc}
_021D5176:
	bl ov109_021D5658
	b _021D5248
_021D517C:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	mov r1, #0x5f
	bl sub_02002154
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021D5248
_021D5196:
	ldr r0, [r5, #0x5c]
	bl ov109_021D5638
	cmp r0, #0
	bne _021D51AA
	ldr r0, [r5, #0x5c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D51AA:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ov109_021D55A8
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	mov r1, #0x5f
	bl sub_02002154
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021D5248
_021D51CE:
	ldr r0, _021D5250 ; =0x00004A50
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021D524E
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200B498
	bl sub_0203608C
	cmp r6, r0
	beq _021D524E
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5206
	mov r1, #0x5f
	bl sub_02002154
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D5206:
	bl sub_0203608C
	cmp r0, #0
	bne _021D5248
	ldr r2, [r5, #0x10]
	ldr r0, _021D5254 ; =0x0000FFFF
	ldr r1, [r2, #0x30]
	eor r0, r6
	and r0, r1
	str r0, [r2, #0x30]
	b _021D5248
_021D521C:
	ldr r0, [r5, #0x5c]
	bl ov109_021D5638
	cmp r0, #0
	bne _021D5230
	ldr r0, [r5, #0x5c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D5230:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	mov r1, #0x5f
	bl sub_02002154
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D5248:
	mov r0, #0xd5
	lsl r0, r0, #2
	str r4, [r5, r0]
_021D524E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D5250: .word 0x00004A50
_021D5254: .word 0x0000FFFF
	thumb_func_end ov109_021D5140

	thumb_func_start ov109_021D5258
ov109_021D5258: ; 0x021D5258
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #3
	bne _021D52FA
	cmp r4, #1
	beq _021D5276
	cmp r4, #0x13
	beq _021D52BC
	b _021D52F2
_021D5276:
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #1
	bl ov109_021D5858
	mov r0, #0xd5
	lsl r0, r0, #2
	str r4, [r5, r0]
	bl sub_02035E18
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #0x30]
	bl sub_0203608C
	cmp r0, #0
	bne _021D530C
	mov r3, #1
	str r3, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	bl sub_0209BEBC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D52BC:
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200B498
	bl sub_0203608C
	cmp r6, r0
	beq _021D530C
	bl sub_0203608C
	cmp r0, #0
	bne _021D52E8
	ldr r2, [r5, #0x10]
	ldr r0, _021D5310 ; =0x0000FFFF
	ldr r1, [r2, #0x30]
	eor r0, r6
	and r0, r1
	str r0, [r2, #0x30]
_021D52E8:
	mov r0, #0xd5
	lsl r0, r0, #2
	add sp, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021D52F2:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D52FA:
	cmp r4, #1
	bne _021D530C
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #0x30]
	bl sub_02035E18
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
_021D530C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D5310: .word 0x0000FFFF
	thumb_func_end ov109_021D5258

	thumb_func_start ov109_021D5314
ov109_021D5314: ; 0x021D5314
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0xa
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _021D532A
	mov r1, #0
	strh r1, [r0]
_021D532A:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	add r2, r0, #0
	mul r2, r1
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r2, r0, #5
	mov r0, #0x1d
	orr r2, r0
	add r0, sp, #0
	strh r2, [r0]
	add r0, sp, #0
	mov r2, #2
	bl sub_020C0160
	add r0, sp, #0
	mov r1, #0x2a
	mov r2, #2
	bl sub_020C0160
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov109_021D5314

	thumb_func_start ov109_021D5360
ov109_021D5360: ; 0x021D5360
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D5366:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D5372
	add r5, r5, #1
_021D5372:
	add r4, r4, #1
	cmp r4, #5
	blt _021D5366
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D5360

	thumb_func_start ov109_021D537C
ov109_021D537C: ; 0x021D537C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r3, [sp, #0x14]
	add r6, r0, #0
	str r2, [sp, #0x10]
	bl sub_0203608C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov109_021D54CC
	cmp r0, #0
	bne _021D539C
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D539C:
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	add r4, r7, #0
	mov r5, #1
_021D53AE:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D5468
	bl sub_02025F24
	str r0, [sp, #0x24]
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [r4, #0x3c]
	bl sub_02025EF4
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0x34]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x34]
	ldr r1, [r1, #0x38]
	mov r2, #1
	mov r3, #0x5f
	bl sub_0200B29C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	str r5, [sp]
	bne _021D5430
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D5484 ; =0x00020300
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	add r0, r6, #0
	mov r3, #5
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D5484 ; =0x00020300
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl sub_0201D78C
	b _021D5462
_021D5430:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	add r0, r6, #0
	mov r3, #5
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl sub_0201D78C
_021D5462:
	ldr r0, [sp, #0x18]
	bl sub_020237BC
_021D5468:
	ldr r0, [sp, #0x20]
	add r7, #8
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x12
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021D53AE
	add r0, r6, #0
	bl sub_0201A954
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5484: .word 0x00020300
	thumb_func_end ov109_021D537C

	thumb_func_start ov109_021D5488
ov109_021D5488: ; 0x021D5488
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D5488

	thumb_func_start ov109_021D548C
ov109_021D548C: ; 0x021D548C
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D5492:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D549E
	add r5, r5, #1
_021D549E:
	add r4, r4, #1
	cmp r4, #5
	blt _021D5492
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D548C

	thumb_func_start ov109_021D54A8
ov109_021D54A8: ; 0x021D54A8
	push {r4, r5, r6, lr}
	mov r5, #0
	add r4, r5, #0
	mov r6, #1
_021D54B0:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D54C0
	add r0, r6, #0
	lsl r0, r4
	orr r5, r0
_021D54C0:
	add r4, r4, #1
	cmp r4, #5
	blt _021D54B0
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D54A8

	thumb_func_start ov109_021D54CC
ov109_021D54CC: ; 0x021D54CC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	str r4, [sp]
	add r6, r7, #0
	add r5, r7, #0
_021D54D8:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0xdd
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _021D559C ; =0x00004A60
	ldr r2, _021D55A0 ; =0x00004A68
	ldr r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [r5, r2]
	add r1, r2, #4
	str r0, [r5, r1]
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D5516
	bl sub_02025F20
	ldr r1, _021D559C ; =0x00004A60
	str r0, [r5, r1]
	mov r1, #1
	ldr r0, _021D55A4 ; =0x00004A64
	b _021D5520
_021D5516:
	add r0, r2, #0
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
	sub r0, r2, #4
_021D5520:
	add r4, r4, #1
	str r1, [r5, r0]
	add r6, #8
	add r5, #0x10
	cmp r4, #5
	blt _021D54D8
	mov r4, #0
	add r2, r7, #0
	add r3, r7, #0
_021D5532:
	mov r0, #0xdd
	mov r1, #0xde
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r7, r0]
	ldr r1, [r7, r1]
	cmp r1, r0
	beq _021D555C
	mov r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D5554
	mov r0, #0xe7
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D5554:
	mov r0, #0xe7
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D555C:
	ldr r0, _021D559C ; =0x00004A60
	ldr r5, _021D55A0 ; =0x00004A68
	ldr r1, [r3, r0]
	ldr r6, [r3, r5]
	add r0, r0, #4
	add r5, r5, #4
	ldr r0, [r3, r0]
	ldr r5, [r3, r5]
	eor r1, r6
	eor r5, r0
	orr r1, r5
	beq _021D558C
	mov r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D5586
	mov r0, #0xe7
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D5586:
	mov r0, #0xe7
	lsl r0, r0, #2
	str r1, [r2, r0]
_021D558C:
	add r4, r4, #1
	add r7, #8
	add r2, r2, #4
	add r3, #0x10
	cmp r4, #5
	blt _021D5532
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D559C: .word 0x00004A60
_021D55A0: .word 0x00004A68
_021D55A4: .word 0x00004A64
	thumb_func_end ov109_021D54CC

	thumb_func_start ov109_021D55A8
ov109_021D55A8: ; 0x021D55A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xb4
	mov r1, #0x5f
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x54]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	cmp r6, #0
	bne _021D5618
	add r0, r5, #0
	bl ov109_021D5854
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r2, [r5, #0x54]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	add sp, #0xc
	str r0, [r5, #0x5c]
	pop {r4, r5, r6, r7, pc}
_021D5618:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r2, [r5, #0x54]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	mov r0, #0xff
	str r0, [r5, #0x5c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D55A8

	thumb_func_start ov109_021D5638
ov109_021D5638: ; 0x021D5638
	push {r3, lr}
	cmp r0, #0xff
	bne _021D5642
	mov r0, #1
	pop {r3, pc}
_021D5642:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D5652
	mov r0, #1
	pop {r3, pc}
_021D5652:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov109_021D5638

	thumb_func_start ov109_021D5658
ov109_021D5658: ; 0x021D5658
	mov r1, #0xbe
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _021D5664 ; =sub_0200E084
	mov r1, #0
	bx r3
	; .align 2, 0
_021D5664: .word sub_0200E084
	thumb_func_end ov109_021D5658

	thumb_func_start ov109_021D5668
ov109_021D5668: ; 0x021D5668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #0xd3
	lsl r0, r0, #2
	mov r4, #0
	add r0, r5, r0
	str r4, [sp, #8]
	add r6, r5, #0
	mov r7, #0x1c
	str r0, [sp, #0x18]
_021D568A:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021D5756
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D56A0: ; jump table
	.short _021D5756 - _021D56A0 - 2 ; case 0
	.short _021D56A8 - _021D56A0 - 2 ; case 1
	.short _021D5756 - _021D56A0 - 2 ; case 2
	.short _021D571E - _021D56A0 - 2 ; case 3
_021D56A8:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D56B6
	bl sub_02022974
_021D56B6:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F30
	str r0, [sp, #0xc]
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F8C
	str r0, [sp, #0x10]
	bl sub_0203608C
	cmp r4, r0
	bne _021D56E8
	mov r0, #0x8f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x26
	bl sub_02021D6C
	b _021D5704
_021D56E8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl ov109_021D57E0
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl sub_02021D6C
_021D5704:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xe7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #8]
	b _021D5756
_021D571E:
	bl sub_0203608C
	cmp r4, r0
	bne _021D5742
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F30
	add r1, r0, #0
	mov r0, #0x8f
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x27
	bl sub_02021D6C
	b _021D574E
_021D5742:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
_021D574E:
	mov r0, #0xe7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D5756:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	add r5, r5, #4
	add r6, #8
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021D568A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021D5774
	ldr r0, _021D5778 ; =0x0000064F
	bl sub_02005748
_021D5774:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5778: .word 0x0000064F
	thumb_func_end ov109_021D5668

	thumb_func_start ov109_021D577C
ov109_021D577C: ; 0x021D577C
	push {r3, r4, r5, lr}
	mov r2, #0xd3
	add r5, r0, #0
	lsl r2, r2, #2
	add r4, r1, #0
	mov r0, #0x68
	mov r1, #8
	add r2, r5, r2
	mov r3, #0x5f
	bl sub_02006F88
	mov r2, #0xd1
	lsl r2, r2, #2
	str r0, [r5, r2]
	add r2, #0xc
	add r0, r4, #0
	mov r1, #7
	add r2, r5, r2
	mov r3, #0x5f
	bl sub_020071EC
	mov r3, #0xd2
	lsl r3, r3, #2
	str r0, [r5, r3]
	mov r0, #0x5f
	sub r3, #0xc
	str r0, [sp]
	mov r0, #0x68
	mov r1, #0x20
	mov r2, #1
	add r3, r5, r3
	bl sub_02006F50
	mov r3, #0xcd
	lsl r3, r3, #2
	str r0, [r5, r3]
	mov r0, #0x5f
	add r3, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	add r3, r5, r3
	bl sub_020071B4
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D577C

	thumb_func_start ov109_021D57E0
ov109_021D57E0: ; 0x021D57E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	add r1, r3, #0
	add r5, r2, #0
	bl sub_0205CA0C
	add r4, r0, #0
	ldr r0, [r6, #4]
	mov r2, #6
	ldr r6, [r0, #0xc]
	ldr r0, [r7, #4]
	lsl r2, r2, #8
	ldr r1, [r0, #0x14]
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _021D5820 ; =0x021D5D9C
	lsl r3, r5, #1
	ldrh r1, [r1, r3]
	bl sub_020C02BC
	lsl r0, r4, #5
	add r1, r5, #7
	add r0, r6, r0
	lsl r1, r1, #5
	mov r2, #0x20
	bl sub_020C0160
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5820: .word 0x021D5D9C
	thumb_func_end ov109_021D57E0

	thumb_func_start ov109_021D5824
ov109_021D5824: ; 0x021D5824
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D5824

	thumb_func_start ov109_021D5854
ov109_021D5854: ; 0x021D5854
	mov r0, #1
	bx lr
	thumb_func_end ov109_021D5854

	thumb_func_start ov109_021D5858
ov109_021D5858: ; 0x021D5858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D58A4
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021D5876
	mov r0, #1
	bl sub_02037B58
	b _021D5886
_021D5876:
	bl sub_02035E18
	add r0, r4, r0
	cmp r0, #5
	ble _021D5882
	mov r0, #5
_021D5882:
	bl sub_02037B58
_021D5886:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	ldr r0, _021D58A8 ; =0x00004A51
	bne _021D5896
	mov r1, #2
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D5896:
	cmp r4, #0
	bne _021D58A0
	mov r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D58A0:
	mov r1, #0
	strb r1, [r5, r0]
_021D58A4:
	pop {r3, r4, r5, pc}
	nop
_021D58A8: .word 0x00004A51
	thumb_func_end ov109_021D5858

	thumb_func_start ov109_021D58AC
ov109_021D58AC: ; 0x021D58AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	bl ov109_021D548C
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	ble _021D58D6
	mov r3, #1
	add r0, sp, #0
	strb r3, [r0]
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, sp, #0
	bl sub_0209BEBC
	mov r1, #1
	b _021D58D8
_021D58D6:
	mov r1, #0
_021D58D8:
	ldr r0, _021D59A0 ; =0x00004A48
	str r1, [r4, r0]
	ldr r0, _021D59A4 ; =0x00004A44
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021D58EA
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D58EA:
	cmp r5, #5
	bhi _021D5990
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D58FA: ; jump table
	.short _021D5990 - _021D58FA - 2 ; case 0
	.short _021D5906 - _021D58FA - 2 ; case 1
	.short _021D594A - _021D58FA - 2 ; case 2
	.short _021D594A - _021D58FA - 2 ; case 3
	.short _021D594A - _021D58FA - 2 ; case 4
	.short _021D5982 - _021D58FA - 2 ; case 5
_021D5906:
	bl sub_02035E18
	cmp r0, #1
	bgt _021D5916
	bl sub_020318EC
	cmp r0, #1
	bls _021D591C
_021D5916:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D591C:
	mov r0, #0xd5
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, #0x12
	bl ov109_021D5858
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D5944
	mov r1, #0x5f
	bl sub_02002154
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021D5944:
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021D594A:
	mov r0, #0xd
	bl sub_0205BEA8
	ldr r0, _021D59A4 ; =0x00004A44
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021D5990
	add r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021D5966
	cmp r0, #1
	beq _021D5970
	b _021D5978
_021D5966:
	add r0, r4, #0
	add r1, r6, #0
	bl ov109_021D5858
	b _021D5978
_021D5970:
	add r0, r4, #0
	mov r1, #0
	bl ov109_021D5858
_021D5978:
	bl sub_02035E18
	ldr r1, [r4, #0x10]
	str r0, [r1, #0x2c]
	b _021D5990
_021D5982:
	mov r0, #0xc
	bl sub_0205BEA8
	add r0, r4, #0
	add r1, r6, #0
	bl ov109_021D5858
_021D5990:
	bl ov109_021D548C
	ldr r1, _021D59A4 ; =0x00004A44
	str r0, [r4, r1]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D59A0: .word 0x00004A48
_021D59A4: .word 0x00004A44
	thumb_func_end ov109_021D58AC

	thumb_func_start ov109_021D59A8
ov109_021D59A8: ; 0x021D59A8
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D59A8

	.rodata


	.global Unk_ov109_021D5D94
Unk_ov109_021D5D94: ; 0x021D5D94
	.incbin "incbin/overlay109_rodata.bin", 0x3E8, 0x3F0 - 0x3E8

	.global Unk_ov109_021D5D9C
Unk_ov109_021D5D9C: ; 0x021D5D9C
	.incbin "incbin/overlay109_rodata.bin", 0x3F0, 0x3FA - 0x3F0

	.global Unk_ov109_021D5DA6
Unk_ov109_021D5DA6: ; 0x021D5DA6
	.incbin "incbin/overlay109_rodata.bin", 0x3FA, 0x404 - 0x3FA

	.global Unk_ov109_021D5DB0
Unk_ov109_021D5DB0: ; 0x021D5DB0
	.incbin "incbin/overlay109_rodata.bin", 0x404, 0x414 - 0x404

	.global Unk_ov109_021D5DC0
Unk_ov109_021D5DC0: ; 0x021D5DC0
	.incbin "incbin/overlay109_rodata.bin", 0x414, 0x424 - 0x414

	.global Unk_ov109_021D5DD0
Unk_ov109_021D5DD0: ; 0x021D5DD0
	.incbin "incbin/overlay109_rodata.bin", 0x424, 0x43C - 0x424

	.global Unk_ov109_021D5DE8
Unk_ov109_021D5DE8: ; 0x021D5DE8
	.incbin "incbin/overlay109_rodata.bin", 0x43C, 0x458 - 0x43C

	.global Unk_ov109_021D5E04
Unk_ov109_021D5E04: ; 0x021D5E04
	.incbin "incbin/overlay109_rodata.bin", 0x458, 0x474 - 0x458

	.global Unk_ov109_021D5E20
Unk_ov109_021D5E20: ; 0x021D5E20
	.incbin "incbin/overlay109_rodata.bin", 0x474, 0x490 - 0x474

	.global Unk_ov109_021D5E3C
Unk_ov109_021D5E3C: ; 0x021D5E3C
	.incbin "incbin/overlay109_rodata.bin", 0x490, 0x4AC - 0x490

	.global Unk_ov109_021D5E58
Unk_ov109_021D5E58: ; 0x021D5E58
	.incbin "incbin/overlay109_rodata.bin", 0x4AC, 0x4C8 - 0x4AC

	.global Unk_ov109_021D5E74
Unk_ov109_021D5E74: ; 0x021D5E74
	.incbin "incbin/overlay109_rodata.bin", 0x4C8, 0x4F0 - 0x4C8

	.global Unk_ov109_021D5E9C
Unk_ov109_021D5E9C: ; 0x021D5E9C
	.incbin "incbin/overlay109_rodata.bin", 0x4F0, 0x80

