	.include "macros/function.inc"
	.include "include/ov60_02220C70.inc"

	

	.text


	arm_func_start ov60_02220C70
ov60_02220C70: ; 0x02220C70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _02220D7C ; =0x02229E2C
	mov r0, #0
	ldr r3, [r1, #0xc]
	cmp r3, #0
	ble _02220CA8
	ldr r2, [r1, #4]
_02220C8C:
	ldr r1, [r2, r0, lsl #2]
	ldr r1, [r1, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #1
	cmp r0, r3
	blt _02220C8C
_02220CA8:
	ldr r0, _02220D7C ; =0x02229E2C
	ldr r0, [r0, #0]
	cmp r0, r3
	beq _02220CCC
	ldr r0, _02220D80 ; =0x02229178
	ldr r1, _02220D84 ; =0x022291A0
	ldr r2, _02220D88 ; =0x02229124
	mov r3, #0x33
	bl __msl_assertion_failed
_02220CCC:
	ldr r0, _02220D7C ; =0x02229E2C
	ldr r6, [r0, #0xc]
	ldr r0, [r0, #4]
	add r5, r6, #4
	mov r1, r5, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r8, _02220D7C ; =0x02229E2C
	mov r7, r6
	str r0, [r8, #4]
	cmp r6, r5
	bge _02220D6C
	mov sb, #0
	mov r4, #0x184
_02220D0C:
	mov r0, r4
	bl ov4_021D7880
	ldr r1, [r8, #4]
	str r0, [r1, r7, lsl #2]
	ldr r0, [r8, #4]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _02220D5C
	sub r7, r7, #1
	cmp r7, r6
	blt _02220D54
	ldr r4, _02220D7C ; =0x02229E2C
_02220D3C:
	ldr r0, [r4, #4]
	ldr r0, [r0, r7, lsl #2]
	bl ov4_021D78B0
	sub r7, r7, #1
	cmp r7, r6
	bge _02220D3C
_02220D54:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02220D5C:
	add r7, r7, #1
	str sb, [r0]
	cmp r7, r5
	blt _02220D0C
_02220D6C:
	ldr r1, _02220D7C ; =0x02229E2C
	mov r0, r6
	str r5, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02220D7C: .word 0x02229E2C
_02220D80: .word 0x02229178
_02220D84: .word 0x022291A0
_02220D88: .word 0x02229124
	arm_func_end ov60_02220C70

	arm_func_start ov60_02220D8C
ov60_02220D8C: ; 0x02220D8C
	stmfd sp!, {r3, r4, r5, lr}
	bl ov60_0222084C
	bl ov60_02220C70
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _02220DB4
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02220DB4:
	ldr r0, _02220F20 ; =0x02229E2C
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x184
	ldr r4, [r0, r5, lsl #2]
	mov r0, r4
	bl memset
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, _02220F20 ; =0x02229E2C
	str r5, [r4, #4]
	ldr r2, [r0, #8]
	mov ip, #0
	add r1, r2, #1
	str r1, [r0, #8]
	str r2, [r4, #8]
	str ip, [r4, #0xc]
	str ip, [r4, #0x10]
	str ip, [r4, #0x14]
	str ip, [r4, #0x18]
	str ip, [r4, #0x1c]
	strh ip, [r4, #0x20]
	str ip, [r4, #0x24]
	str ip, [r4, #0x28]
	str ip, [r4, #0x2c]
	str ip, [r4, #0x30]
	str ip, [r4, #0x34]
	str ip, [r4, #0x38]
	str ip, [r4, #0x3c]
	str ip, [r4, #0x40]
	str ip, [r4, #0x44]
	sub r0, ip, #1
	str r0, [r4, #0x48]
	str ip, [r4, #0x4c]
	str ip, [r4, #0xe0]
	str ip, [r4, #0xe4]
	str ip, [r4, #0xe8]
	str ip, [r4, #0xec]
	str ip, [r4, #0xf0]
	str ip, [r4, #0xf4]
	str ip, [r4, #0xf8]
	str ip, [r4, #0xfc]
	str ip, [r4, #0x100]
	str r0, [r4, #0x104]
	str ip, [r4, #0x108]
	str ip, [r4, #0x10c]
	str ip, [r4, #0x110]
	str ip, [r4, #0x12c]
	str ip, [r4, #0x134]
	str ip, [r4, #0x138]
	str ip, [r4, #0x13c]
	mov r0, #0x1f4
	str r0, [r4, #0x158]
	add r0, r4, #0x100
	mov r1, #0x50
	strh r1, [r0, #0x60]
	str ip, [r4, #0x15c]
	mov r0, r4
	add r1, r4, #0x50
	mov r2, #0x800
	mov r3, #0x1000
	str ip, [r4, #0x164]
	bl ov60_0221FEB8
	cmp r0, #0
	beq _02220ECC
	mov r2, #0x800
	mov r0, r4
	mov r3, r2
	add r1, r4, #0x74
	bl ov60_0221FEB8
_02220ECC:
	cmp r0, #0
	beq _02220EE8
	mov r0, r4
	add r1, r4, #0x98
	mov r2, #0x800
	mov r3, #0x400
	bl ov60_0221FEB8
_02220EE8:
	cmp r0, #0
	bne _02220F04
	mov r0, r4
	bl ov60_02220F24
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02220F04:
	ldr r0, _02220F20 ; =0x02229E2C
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl ov60_02220850
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220F20: .word 0x02229E2C
	arm_func_end ov60_02220D8C

	arm_func_start ov60_02220F24
ov60_02220F24: ; 0x02220F24
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02220F44
	ldr r0, _022210EC ; =0x022291B4
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb3
	bl __msl_assertion_failed
_02220F44:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _02220F64
	ldr r0, _022210F8 ; =0x022291C0
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb4
	bl __msl_assertion_failed
_02220F64:
	ldr r0, _022210FC ; =0x02229E2C
	ldr r1, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _02220F8C
	ldr r0, _02221100 ; =0x022291DC
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb5
	bl __msl_assertion_failed
_02220F8C:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02220FAC
	ldr r0, _02221104 ; =0x02229204
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb6
	bl __msl_assertion_failed
_02220FAC:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	movlt r0, #0
	ldmltia sp!, {r4, pc}
	ldr r0, _022210FC ; =0x02229E2C
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	bl ov60_0222084C
	ldr r0, [r4, #0x14]
	bl ov4_021D78B0
	ldr r0, [r4, #0x18]
	bl ov4_021D78B0
	ldr r0, [r4, #0x24]
	bl ov4_021D78B0
	ldr r0, [r4, #0x28]
	bl ov4_021D78B0
	ldr r0, [r4, #0x108]
	bl ov4_021D78B0
	ldr r0, [r4, #0x15c]
	bl ov4_021D78B0
	ldr r0, [r4, #0x48]
	mvn r1, #0
	cmp r0, r1
	beq _02221040
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #0x48]
	bl ov4_021EACF0
_02221040:
	add r0, r4, #0x50
	bl ov60_022200D0
	add r0, r4, #0x74
	bl ov60_022200D0
	add r0, r4, #0x98
	bl ov60_022200D0
	add r0, r4, #0xbc
	bl ov60_022200D0
	ldr r0, [r4, #0x140]
	cmp r0, #0
	beq _02221074
	mov r0, r4
	bl ov60_02221EDC
_02221074:
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	beq _0222109C
	bl ov60_02221900
	cmp r0, #0
	beq _0222109C
	ldr r0, [r4, #0x13c]
	bl ov60_02221908
	mov r0, #0
	str r0, [r4, #0x13c]
_0222109C:
	ldr r0, [r4, #0x16c]
	cmp r0, #0
	beq _022210C8
	ldr r2, [r4, #0x178]
	cmp r2, #0
	beq _022210C0
	mov r0, r4
	add r1, r4, #0x164
	blx r2
_022210C0:
	mov r0, #0
	str r0, [r4, #0x16c]
_022210C8:
	mov r1, #0
	ldr r0, _022210FC ; =0x02229E2C
	str r1, [r4, #0]
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bl ov60_02220850
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022210EC: .word 0x022291B4
_022210F0: .word 0x022291A0
_022210F4: .word 0x02229134
_022210F8: .word 0x022291C0
_022210FC: .word 0x02229E2C
_02221100: .word 0x022291DC
_02221104: .word 0x02229204
	arm_func_end ov60_02220F24

	arm_func_start ov60_02221108
ov60_02221108: ; 0x02221108
	stmfd sp!, {r4, lr}
	movs r4, r0
	bpl _02221128
	ldr r0, _02221194 ; =0x02229218
	ldr r1, _02221198 ; =0x022291A0
	ldr r2, _0222119C ; =0x02229160
	ldr r3, _022211A0 ; =0x00000101
	bl __msl_assertion_failed
_02221128:
	ldr r0, _022211A4 ; =0x02229E2C
	ldr r0, [r0, #0xc]
	cmp r4, r0
	blt _0222114C
	ldr r0, _022211A8 ; =0x02229228
	ldr r1, _02221198 ; =0x022291A0
	ldr r2, _0222119C ; =0x02229160
	ldr r3, _022211AC ; =0x00000102
	bl __msl_assertion_failed
_0222114C:
	bl ov60_0222084C
	cmp r4, #0
	blt _02221168
	ldr r0, _022211A4 ; =0x02229E2C
	ldr r1, [r0, #0xc]
	cmp r4, r1
	blt _02221174
_02221168:
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221174:
	ldr r0, [r0, #4]
	ldr r4, [r0, r4, lsl #2]
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r4, #0
	bl ov60_02220850
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221194: .word 0x02229218
_02221198: .word 0x022291A0
_0222119C: .word 0x02229160
_022211A0: .word 0x00000101
_022211A4: .word 0x02229E2C
_022211A8: .word 0x02229228
_022211AC: .word 0x00000102
	arm_func_end ov60_02221108

	arm_func_start ov60_022211B0
ov60_022211B0: ; 0x022211B0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02221210 ; =0x02229E2C
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	bl ov60_0222084C
	ldr r5, _02221210 ; =0x02229E2C
	mov r6, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _02221208
_022211E0:
	ldr r0, [r5, #4]
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022211F8
	blx r4
_022211F8:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _022211E0
_02221208:
	bl ov60_02220850
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02221210: .word 0x02229E2C
	arm_func_end ov60_022211B0

	arm_func_start ov60_02221214
ov60_02221214: ; 0x02221214
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02221234
	ldr r0, _02221300 ; =0x022291B4
	ldr r1, _02221304 ; =0x022291A0
	ldr r2, _02221308 ; =0x02229148
	ldr r3, _0222130C ; =0x00000132
	bl __msl_assertion_failed
_02221234:
	ldr r0, [r4, #0x108]
	cmp r0, #0
	bne _02221254
	ldr r0, _02221310 ; =0x02229244
	ldr r1, _02221304 ; =0x022291A0
	ldr r2, _02221308 ; =0x02229148
	ldr r3, _02221314 ; =0x00000133
	bl __msl_assertion_failed
_02221254:
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl ov4_021D78B0
	ldr r1, [r4, #0x108]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x108]
	ldr r0, [r4, #0x18]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #0x48]
	bl ov4_021EACF0
	mvn r1, #0
	add r0, r4, #0x50
	str r1, [r4, #0x48]
	bl ov60_02220504
	add r0, r4, #0x74
	bl ov60_02220504
	add r0, r4, #0x98
	bl ov60_02220504
	mov r0, #0
	str r0, [r4, #0xe4]
	str r0, [r4, #0xe8]
	str r0, [r4, #0xec]
	str r0, [r4, #0xf0]
	str r0, [r4, #0xf4]
	str r0, [r4, #0xf8]
	str r0, [r4, #0x130]
	ldr r0, [r4, #0x10c]
	add r0, r0, #1
	str r0, [r4, #0x10c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221300: .word 0x022291B4
_02221304: .word 0x022291A0
_02221308: .word 0x02229148
_0222130C: .word 0x00000132
_02221310: .word 0x02229244
_02221314: .word 0x00000133
	arm_func_end ov60_02221214

	arm_func_start ov60_02221318
ov60_02221318: ; 0x02221318
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02221388 ; =0x02229E2C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _0222138C ; =ov60_02220F24
	bl ov60_022211B0
	ldr r4, _02221388 ; =0x02229E2C
	mov r5, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _02221364
_02221348:
	ldr r0, [r4, #4]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _02221348
_02221364:
	ldr r0, _02221388 ; =0x02229E2C
	ldr r0, [r0, #4]
	bl ov4_021D78B0
	ldr r0, _02221388 ; =0x02229E2C
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221388: .word 0x02229E2C
_0222138C: .word ov60_02220F24
	arm_func_end ov60_02221318

	.data


	.global Unk_ov60_02229124
Unk_ov60_02229124: ; 0x02229124
	.incbin "incbin/overlay60_data.bin", 0x2E4, 0x2F4 - 0x2E4

	.global Unk_ov60_02229134
Unk_ov60_02229134: ; 0x02229134
	.incbin "incbin/overlay60_data.bin", 0x2F4, 0x308 - 0x2F4

	.global Unk_ov60_02229148
Unk_ov60_02229148: ; 0x02229148
	.incbin "incbin/overlay60_data.bin", 0x308, 0x320 - 0x308

	.global Unk_ov60_02229160
Unk_ov60_02229160: ; 0x02229160
	.incbin "incbin/overlay60_data.bin", 0x320, 0x338 - 0x320

	.global Unk_ov60_02229178
Unk_ov60_02229178: ; 0x02229178
	.incbin "incbin/overlay60_data.bin", 0x338, 0x360 - 0x338

	.global Unk_ov60_022291A0
Unk_ov60_022291A0: ; 0x022291A0
	.incbin "incbin/overlay60_data.bin", 0x360, 0x374 - 0x360

	.global Unk_ov60_022291B4
Unk_ov60_022291B4: ; 0x022291B4
	.incbin "incbin/overlay60_data.bin", 0x374, 0x380 - 0x374

	.global Unk_ov60_022291C0
Unk_ov60_022291C0: ; 0x022291C0
	.incbin "incbin/overlay60_data.bin", 0x380, 0x39C - 0x380

	.global Unk_ov60_022291DC
Unk_ov60_022291DC: ; 0x022291DC
	.incbin "incbin/overlay60_data.bin", 0x39C, 0x3C4 - 0x39C

	.global Unk_ov60_02229204
Unk_ov60_02229204: ; 0x02229204
	.incbin "incbin/overlay60_data.bin", 0x3C4, 0x3D8 - 0x3C4

	.global Unk_ov60_02229218
Unk_ov60_02229218: ; 0x02229218
	.incbin "incbin/overlay60_data.bin", 0x3D8, 0x3E8 - 0x3D8

	.global Unk_ov60_02229228
Unk_ov60_02229228: ; 0x02229228
	.incbin "incbin/overlay60_data.bin", 0x3E8, 0x404 - 0x3E8

	.global Unk_ov60_02229244
Unk_ov60_02229244: ; 0x02229244
	.incbin "incbin/overlay60_data.bin", 0x404, 0x18



	.bss


	.global Unk_ov60_02229E2C
Unk_ov60_02229E2C: ; 0x02229E2C
	.space 0x4

	.global Unk_ov60_02229E30
Unk_ov60_02229E30: ; 0x02229E30
	.space 0x4

	.global Unk_ov60_02229E34
Unk_ov60_02229E34: ; 0x02229E34
	.space 0x4

	.global Unk_ov60_02229E38
Unk_ov60_02229E38: ; 0x02229E38
	.space 0x4

