	.include "macros/function.inc"
	.include "include/ov104_0223A0C4.inc"

	

	.text


	thumb_func_start ov104_0223A0C4
ov104_0223A0C4: ; 0x0223A0C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov104_0223A77C
	add r3, r0, #0
	ldr r2, [sp, #0x3c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DD04
	str r0, [sp, #0x14]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r4, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r2, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r3, r4, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov104_0223A118
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A0C4

	thumb_func_start ov104_0223A118
ov104_0223A118: ; 0x0223A118
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	ldr r0, [sp, #0x9c]
	str r2, [sp, #0x18]
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x14]
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xa4]
	str r3, [sp, #0x1c]
	str r0, [sp, #0xa4]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0xa8]
	mov r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x88
	ldrb r0, [r0, #0x10]
	cmp r0, #4
	bls _0223A144
	bl GF_AssertFail
_0223A144:
	add r0, sp, #0x88
	ldrb r6, [r0, #0x10]
	mov r4, #0
	str r4, [sp, #0x30]
	cmp r6, #0
	bne _0223A152
	b _0223A262
_0223A152:
	add r0, sp, #0x74
	str r0, [sp, #0x24]
_0223A156:
	add r0, r7, #0
	bl sub_0204AEC0
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, #2]
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x17
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrh r0, [r0, #4]
	str r0, [sp, #0x34]
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	add r0, sp, #0x44
	bl ov104_0222DCF4
	mov r0, #0
	str r0, [sp, #0x40]
	cmp r4, #0
	ble _0223A1B0
	add r5, sp, #0x74
_0223A18A:
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	add r2, r0, #0
	ldr r1, [r5, #0]
	add r0, sp, #0x54
	bl ov104_0222DCF4
	add r0, sp, #0x44
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0223A1B0
	ldr r0, [sp, #0x40]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, r4
	blt _0223A18A
_0223A1B0:
	ldr r0, [sp, #0x40]
	cmp r0, r4
	bne _0223A25C
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _0223A1DA
	mov r0, #0
	cmp r6, #0
	ble _0223A1D6
	add r1, sp, #0x44
	ldrh r3, [r1]
	ldr r2, [sp, #0x9c]
_0223A1C8:
	ldrh r1, [r2]
	cmp r3, r1
	beq _0223A1D6
	add r0, r0, #1
	add r2, r2, #2
	cmp r0, r6
	blt _0223A1C8
_0223A1D6:
	cmp r0, r6
	bne _0223A25C
_0223A1DA:
	ldr r0, [sp, #0x30]
	cmp r0, #0x32
	bge _0223A252
	mov r0, #0
	str r0, [sp, #0x20]
	cmp r4, #0
	ble _0223A214
	add r5, sp, #0x74
_0223A1EA:
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	add r2, r0, #0
	ldr r1, [r5, #0]
	add r0, sp, #0x54
	bl ov104_0222DCF4
	add r0, sp, #0x44
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0223A208
	ldrh r0, [r0, #0xc]
	cmp r1, r0
	beq _0223A214
_0223A208:
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r4
	blt _0223A1EA
_0223A214:
	ldr r0, [sp, #0x20]
	cmp r0, r4
	beq _0223A222
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	b _0223A25C
_0223A222:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _0223A252
	mov r0, #0
	cmp r6, #0
	ble _0223A246
	add r1, sp, #0x44
	ldrh r3, [r1, #0xc]
	ldr r2, [sp, #0xa0]
_0223A234:
	ldrh r1, [r2]
	cmp r3, r1
	bne _0223A23E
	cmp r1, #0
	bne _0223A246
_0223A23E:
	add r0, r0, #1
	add r2, r2, #2
	cmp r0, r6
	blt _0223A234
_0223A246:
	cmp r0, r6
	beq _0223A252
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	b _0223A25C
_0223A252:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	stmia r0!, {r1}
	str r0, [sp, #0x24]
_0223A25C:
	cmp r4, r6
	beq _0223A262
	b _0223A156
_0223A262:
	ldr r0, [sp, #0x18]
	bl sub_0204AE84
	str r0, [sp, #0x3c]
	add r0, r7, #0
	bl sub_0204AEC0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0204AEC0
	lsl r0, r0, #0x10
	orr r0, r5
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	cmp r0, #0x32
	blt _0223A288
	mov r0, #1
	str r0, [sp, #0x2c]
_0223A288:
	mov r5, #0
	cmp r4, #0
	ble _0223A2D0
	add r0, sp, #0x74
	str r0, [sp, #0x28]
	add r6, sp, #0x64
_0223A294:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa8]
	ldr r3, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, r7, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ov104_0223A3A8
	stmia r6!, {r0}
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	add r0, #0x38
	str r0, [sp, #0x1c]
	cmp r5, r4
	blt _0223A294
_0223A2D0:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _0223A2DC
	ldr r0, [sp, #0x2c]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
_0223A2DC:
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0xa4]
	str r1, [r0, #0]
	mov r3, #0
	add r0, sp, #0x74
	add r1, sp, #0x64
_0223A2E8:
	ldr r5, [r0, #0]
	ldr r4, [sp, #0xa4]
	add r3, r3, #1
	strh r5, [r4, #4]
	ldr r4, [r1, #0]
	add r0, r0, #4
	str r4, [r2, #8]
	ldr r4, [sp, #0xa4]
	add r1, r1, #4
	add r4, r4, #2
	add r2, r2, #4
	str r4, [sp, #0xa4]
	cmp r3, #2
	blt _0223A2E8
	ldr r0, [sp, #0x2c]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A118

	thumb_func_start ov104_0223A30C
ov104_0223A30C: ; 0x0223A30C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r2, #0x11
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	add r0, r6, #0
	bl sub_0202D764
	add r6, r0, #0
	bl sub_0202D5E8
	cmp r0, #0
	bne _0223A33A
	add r0, r5, #0
	add r1, r4, #0
	bl ov104_0223A348
	pop {r4, r5, r6, pc}
_0223A33A:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202D63C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A30C

	thumb_func_start ov104_0223A348
ov104_0223A348: ; 0x0223A348
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x11
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #6
	mul r0, r4
	ldr r1, _0223A39C ; =0x0223FCB4
	str r0, [sp]
	add r6, r1, r0
	ldr r1, _0223A3A0 ; =0x0223FCE0
	mov r2, #0x30
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	add r1, r5, #0
	ldr r7, _0223A3A4 ; =0x0223FE30
	bl MI_CpuCopy8
	ldr r1, _0223A39C ; =0x0223FCB4
	ldr r0, [sp]
	mov r4, #0
	ldrh r0, [r1, r0]
	strh r0, [r5, #6]
	add r5, #0x30
_0223A380:
	add r0, r6, r4
	ldrb r1, [r0, #2]
	mov r0, #0x38
	mov r2, #0x38
	mul r0, r1
	add r0, r7, r0
	add r1, r5, #0
	bl MI_CpuCopy8
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #4
	blt _0223A380
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223A39C: .word 0x0223FCB4
_0223A3A0: .word 0x0223FCE0
_0223A3A4: .word 0x0223FE30
	thumb_func_end ov104_0223A348

	thumb_func_start ov104_0223A3A8
ov104_0223A3A8: ; 0x0223A3A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x38
	str r3, [sp]
	bl MI_CpuFill8
	ldrb r0, [r4, #0xf]
	bl ov104_0223A768
	add r2, r0, #0
	add r0, sp, #8
	add r1, r6, #0
	bl ov104_0222DCF4
	add r2, sp, #8
	ldrh r0, [r5]
	ldr r1, _0223A558 ; =0xFFFFF800
	ldrh r3, [r2]
	and r0, r1
	lsr r1, r1, #0x15
	and r1, r3
	orr r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	ldr r0, _0223A55C ; =0xFFFF07FF
	and r1, r0
	ldrh r0, [r2, #0xe]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0223A402
	add r0, sp, #0x20
	ldrb r0, [r0, #0x18]
	lsl r1, r0, #1
	ldr r0, _0223A560 ; =0x0223FCAC
	ldrh r0, [r0, r1]
	b _0223A404
_0223A402:
	ldrh r0, [r2, #0xc]
_0223A404:
	strh r0, [r5, #2]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	add r1, sp, #8
	add r2, r5, #0
	add r3, r0, #0
_0223A412:
	ldrh r6, [r1, #2]
	strh r6, [r2, #4]
	ldrh r6, [r1, #2]
	cmp r6, #0xda
	bne _0223A41E
	str r3, [sp, #4]
_0223A41E:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0223A412
	ldr r0, [sp]
	ldr r7, [sp, #0x30]
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _0223A464
_0223A432:
	add r0, r4, #0
	bl sub_0204AEC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0204AEC0
	lsl r0, r0, #0x10
	add r7, r6, #0
	orr r7, r0
	add r0, r7, #0
	bl sub_02075BFC
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _0223A432
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02075E38
	cmp r0, #1
	beq _0223A432
	str r7, [r5, #0x10]
	b _0223A466
_0223A464:
	str r7, [r5, #0x10]
_0223A466:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x14]
	ldr r2, [r5, #0x14]
	mov r0, #0x1f
	bic r2, r0
	mov r0, #0x1f
	and r0, r1
	orr r2, r0
	ldr r0, _0223A564 ; =0xFFFFFC1F
	mov r6, #0
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r1, r0, #0x16
	orr r2, r1
	ldr r1, _0223A568 ; =0xFFFF83FF
	add r4, r6, #0
	and r2, r1
	lsr r1, r0, #0x11
	orr r2, r1
	ldr r1, _0223A56C ; =0xFFF07FFF
	and r2, r1
	lsr r1, r0, #0xc
	orr r2, r1
	ldr r1, _0223A570 ; =0xFE0FFFFF
	and r2, r1
	lsr r1, r0, #7
	orr r2, r1
	ldr r1, _0223A574 ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x14]
_0223A4A6:
	add r0, r4, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0223A4B6
	add r6, r6, #1
_0223A4B6:
	add r4, r4, #1
	cmp r4, #6
	blt _0223A4A6
	ldr r0, _0223A578 ; =0x000001FE
	add r1, r6, #0
	bl _s32_div_f
	cmp r0, #0xff
	ble _0223A4CA
	mov r0, #0xff
_0223A4CA:
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r6, r0, #0x18
_0223A4D0:
	add r0, r4, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0223A4E2
	add r0, r5, r4
	strb r6, [r0, #0x18]
_0223A4E2:
	add r4, r4, #1
	cmp r4, #6
	blt _0223A4D0
	mov r0, #0
	strb r0, [r5, #0x1e]
	ldr r0, _0223A57C ; =0x020E4C44
	mov r1, #0x19
	ldrb r0, [r0]
	strb r0, [r5, #0x1f]
	ldrh r0, [r5]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	cmp r0, #0
	beq _0223A526
	ldr r2, [r5, #0x10]
	mov r1, #1
	tst r1, r2
	beq _0223A512
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
	b _0223A538
_0223A512:
	ldrh r0, [r5]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
	b _0223A538
_0223A526:
	ldrh r0, [r5]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
_0223A538:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x21
	strb r0, [r1]
	ldrh r0, [r5]
	add r5, #0x22
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	add r2, r5, #0
	bl sub_0200B274
	add r0, r7, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A558: .word 0xFFFFF800
_0223A55C: .word 0xFFFF07FF
_0223A560: .word 0x0223FCAC
_0223A564: .word 0xFFFFFC1F
_0223A568: .word 0xFFFF83FF
_0223A56C: .word 0xFFF07FFF
_0223A570: .word 0xFE0FFFFF
_0223A574: .word 0xC1FFFFFF
_0223A578: .word 0x000001FE
_0223A57C: .word 0x020E4C44
	thumb_func_end ov104_0223A3A8

	thumb_func_start ov104_0223A580
ov104_0223A580: ; 0x0223A580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r4, r1, #0
	bl ov104_0223A700
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_02051D8C
	add r7, r0, #0
	ldr r0, [r4, #8]
	bl sub_0207A268
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	str r0, [sp, #8]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	add r0, r7, #0
	bl sub_020521B8
	mov r0, #0x15
	mov r1, #0x12
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r0, r0, #4
	str r1, [r7, r0]
	ldr r0, [r5, #4]
	bl sub_02073C74
	add r4, r0, #0
	ldrb r1, [r5, #0xe]
	ldr r0, [r7, #4]
	bl sub_0207A014
	ldrb r0, [r5, #0xe]
	mov r6, #0
	cmp r0, #0
	ble _0223A630
_0223A5DC:
	add r1, r5, r6
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_020775EC
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x32
	bls _0223A61E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x32
	bl sub_02075AD0
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x10
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_0223A61E:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0205213C
	ldrb r0, [r5, #0xe]
	add r6, r6, #1
	cmp r6, r0
	blt _0223A5DC
_0223A630:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_02052894
	ldr r0, [r5, #4]
	add r1, r5, #0
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	add r0, r7, #0
	add r1, #0x78
	mov r3, #1
	bl ov104_0223A6AC
	mov r2, #0
	add r1, r7, #0
	mov r0, #7
_0223A654:
	add r2, r2, #1
	str r0, [r1, #0x34]
	add r1, #0x34
	cmp r2, #4
	blt _0223A654
	ldrb r0, [r5, #0xf]
	cmp r0, #2
	beq _0223A66E
	cmp r0, #3
	beq _0223A690
	cmp r0, #6
	beq _0223A690
	b _0223A6A4
_0223A66E:
	ldr r0, [r5, #4]
	mov r1, #0xa6
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x1d
	lsl r2, r3, #4
	add r2, r3, r2
	lsl r2, r2, #4
	add r1, r1, r2
	ldrb r2, [r5, #0xe]
	add r0, r7, #0
	mov r3, #2
	bl ov104_0223A6AC
_0223A690:
	ldr r0, [r5, #4]
	mov r1, #0x62
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	lsl r1, r1, #2
	add r0, r7, #0
	add r1, r5, r1
	mov r3, #3
	bl ov104_0223A6AC
_0223A6A4:
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A580

	thumb_func_start ov104_0223A6AC
ov104_0223A6AC: ; 0x0223A6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x28]
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	str r4, [sp]
	bl ov104_0222E284
	ldr r0, [sp, #0x28]
	bl sub_02073C74
	add r4, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _0223A6F6
	ldr r0, [sp, #8]
	add r5, #0x30
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0xc]
_0223A6DA:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x78
	bl ov104_0222DF40
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_0207A048
	add r6, r6, #1
	add r5, #0x38
	cmp r6, r7
	blt _0223A6DA
_0223A6F6:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223A6AC

	thumb_func_start ov104_0223A700
ov104_0223A700: ; 0x0223A700
	cmp r0, #6
	bhi _0223A72E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A710: ; jump table
	.short _0223A71E - _0223A710 - 2 ; case 0
	.short _0223A722 - _0223A710 - 2 ; case 1
	.short _0223A726 - _0223A710 - 2 ; case 2
	.short _0223A72A - _0223A710 - 2 ; case 3
	.short _0223A71E - _0223A710 - 2 ; case 4
	.short _0223A72E - _0223A710 - 2 ; case 5
	.short _0223A72A - _0223A710 - 2 ; case 6
_0223A71E:
	mov r0, #0x81
	bx lr
_0223A722:
	mov r0, #0x83
	bx lr
_0223A726:
	mov r0, #0xcb
	bx lr
_0223A72A:
	mov r0, #0x8f
	bx lr
_0223A72E:
	mov r0, #0x81
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223A700

	thumb_func_start ov104_0223A734
ov104_0223A734: ; 0x0223A734
	ldrb r3, [r0, #0x10]
	mov r2, #8
	bic r3, r2
	lsl r2, r1, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1c
	orr r2, r3
	strb r2, [r0, #0x10]
	ldr r2, _0223A74C ; =0x0000083E
	strh r1, [r0, r2]
	bx lr
	; .align 2, 0
_0223A74C: .word 0x0000083E
	thumb_func_end ov104_0223A734

	thumb_func_start ov104_0223A750
ov104_0223A750: ; 0x0223A750
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0223A75E
	ldrh r0, [r1]
	cmp r0, #0
	beq _0223A762
_0223A75E:
	mov r0, #1
	bx lr
_0223A762:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223A750

	thumb_func_start ov104_0223A768
ov104_0223A768: ; 0x0223A768
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A776
	mov r0, #0x87
	pop {r3, pc}
_0223A776:
	mov r0, #0xb3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A768

	thumb_func_start ov104_0223A77C
ov104_0223A77C: ; 0x0223A77C
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A78A
	mov r0, #0x86
	pop {r3, pc}
_0223A78A:
	mov r0, #0xb2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A77C

	thumb_func_start ov104_0223A790
ov104_0223A790: ; 0x0223A790
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A79E
	ldr r0, _0223A7A4 ; =0x00000265
	pop {r3, pc}
_0223A79E:
	ldr r0, _0223A7A8 ; =0x00000266
	pop {r3, pc}
	nop
_0223A7A4: .word 0x00000265
_0223A7A8: .word 0x00000266
	thumb_func_end ov104_0223A790

	thumb_func_start ov104_0223A7AC
ov104_0223A7AC: ; 0x0223A7AC
	push {r3, r4, r5, lr}
	cmp r0, #3
	beq _0223A7B6
	cmp r0, #6
	bne _0223A7F0
_0223A7B6:
	mov r0, #0
	bl sub_02032EE8
	add r5, r0, #0
	bne _0223A7C4
	bl GF_AssertFail
_0223A7C4:
	mov r0, #1
	bl sub_02032EE8
	add r4, r0, #0
	bne _0223A7D2
	bl GF_AssertFail
_0223A7D2:
	add r0, r5, #0
	bl sub_02025FCC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025FCC
	cmp r5, #0
	beq _0223A7E8
	cmp r0, #0
	bne _0223A7EC
_0223A7E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A7EC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223A7F0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223A7AC

	.rodata


	.global Unk_ov104_0223FCAC
Unk_ov104_0223FCAC: ; 0x0223FCAC
	.incbin "incbin/overlay104_rodata.bin", 0xA1C, 0xA24 - 0xA1C

	.global Unk_ov104_0223FCB4
Unk_ov104_0223FCB4: ; 0x0223FCB4
	.incbin "incbin/overlay104_rodata.bin", 0xA24, 0xA50 - 0xA24

	.global Unk_ov104_0223FCE0
Unk_ov104_0223FCE0: ; 0x0223FCE0
	.incbin "incbin/overlay104_rodata.bin", 0xA50, 0xBA0 - 0xA50

	.global Unk_ov104_0223FE30
Unk_ov104_0223FE30: ; 0x0223FE30
	.incbin "incbin/overlay104_rodata.bin", 0xBA0, 0x3B8

