	.include "macros/function.inc"
	.include "include/qr2.inc"

	

	.extern Unk_ov4_02219B38
	.text


	arm_func_start ov4_021FBD94
ov4_021FBD94: ; 0x021FBD94
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	ldreq r6, _021FBF40 ; =0x022197F4
	beq _021FBDC4
	mov r0, #0x110
	bl ov4_021D7880
	mov r6, r0
	str r0, [r5, #0]
_021FBDC4:
	bl ov4_021EA840
	bl srand
	mov r1, r7
	add r0, r6, #4
	bl strcpy
	ldr r1, [sp, #0x58]
	add r0, r6, #0x44
	bl strcpy
	str r4, [r6, #0xc0]
	mov r5, #0
	str r5, [r6, #0xac]
	str r5, [r6, #0xb0]
	str r8, [r6]
	mov r1, #1
	str r1, [r6, #0xb8]
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x64]
	str r0, [r6, #0x10c]
	str r1, [r6, #0x88]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	str r0, [r6, #0x8c]
	str r1, [r6, #0x90]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	str r0, [r6, #0x94]
	ldr r0, [sp, #0x78]
	str r1, [r6, #0x98]
	str r0, [r6, #0x9c]
	str r5, [r6, #0xa0]
	str r5, [r6, #0xa4]
	ldr r0, [sp, #0x5c]
	str r5, [r6, #0xd4]
	str r0, [r6, #0xbc]
	ldr r0, [sp, #0x60]
	str r5, [r6, #0xc4]
	str r0, [r6, #0xc8]
	str r5, [r6, #0x104]
	add r0, r6, #0x100
	strh r5, [r0, #8]
	str r5, [r6, #0xa8]
	ldr r4, _021FBF44 ; =0x80808081
	str r5, [r6, #0xb4]
	mov r8, #0xff
_021FBE74:
	bl rand
	smull r1, r2, r4, r0
	add r3, r6, r5
	add r5, r5, #1
	add r2, r0, r2
	mov r1, r0, lsr #0x1f
	add r2, r1, r2, asr #7
	smull r1, r2, r8, r2
	sub r2, r0, r1
	strb r2, [r3, #0x84]
	cmp r5, #4
	blt _021FBE74
	mov r2, #0
	mvn r1, #0
_021FBEAC:
	add r0, r6, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xd8]
	cmp r2, #0xa
	blt _021FBEAC
	mov r1, #0
	ldr r0, _021FBF48 ; =0x0221B5F8
	str r1, [r6, #0x100]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021FBEDC
	bl ov4_021FC330
_021FBEDC:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021FBF28
	ldr r0, _021FBF4C ; =0x0221B610
	ldrsb r4, [r0]
	cmp r4, #0
	bne _021FBF08
	ldr r1, _021FBF50 ; =0x02219904
	add r0, sp, #0
	mov r2, r7
	bl sprintf
_021FBF08:
	cmp r4, #0
	ldrne r0, _021FBF4C ; =0x0221B610
	ldr r1, _021FBF54 ; =0x00006CFC
	addeq r0, sp, #0
	add r2, r6, #0xcc
	mov r3, #0
	bl ov4_021FC3A4
	b _021FBF2C
_021FBF28:
	mov r0, #1
_021FBF2C:
	cmp r0, #0
	moveq r0, #3
	movne r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FBF40: .word Unk_ov4_022197F4
_021FBF44: .word 0x80808081
_021FBF48: .word Unk_ov4_0221B5F8
_021FBF4C: .word Unk_ov4_0221B610
_021FBF50: .word Unk_ov4_02219904
_021FBF54: .word 0x00006CFC
	arm_func_end ov4_021FBD94

	arm_func_start ov4_021FBF58
ov4_021FBF58: ; 0x021FBF58
	cmp r0, #0
	ldreq r0, _021FBF6C ; =0x022197F0
	ldreq r0, [r0]
	str r1, [r0, #0xa0]
	bx lr
	; .align 2, 0
_021FBF6C: .word Unk_ov4_022197F0
	arm_func_end ov4_021FBF58

	arm_func_start ov4_021FBF70
ov4_021FBF70: ; 0x021FBF70
	cmp r0, #0
	ldreq r0, _021FBF84 ; =0x022197F0
	ldreq r0, [r0]
	str r1, [r0, #0xa4]
	bx lr
	; .align 2, 0
_021FBF84: .word Unk_ov4_022197F0
	arm_func_end ov4_021FBF70

	arm_func_start ov4_021FBF88
ov4_021FBF88: ; 0x021FBF88
	cmp r0, #0
	ldreq r0, _021FBF9C ; =0x022197F0
	ldreq r0, [r0]
	str r1, [r0, #0xa8]
	bx lr
	; .align 2, 0
_021FBF9C: .word Unk_ov4_022197F0
	arm_func_end ov4_021FBF88

	arm_func_start ov4_021FBFA0
ov4_021FBFA0: ; 0x021FBFA0
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _021FBFD0 ; =0x022197F0
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _021FBFC4
	mov r0, r4
	bl ov4_021FC080
_021FBFC4:
	mov r0, r4
	bl ov4_021FBFD4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FBFD0: .word Unk_ov4_022197F0
	arm_func_end ov4_021FBFA0

	arm_func_start ov4_021FBFD4
ov4_021FBFD4: ; 0x021FBFD4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r1, #8
	mov sl, r0
	str r1, [sp, #8]
	ldr r0, [sl, #0xc4]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl]
	bl ov4_021EAB6C
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #0
	ldr r7, _021FC07C ; =0x0221B650
	add sb, sp, #0xc
	add r8, sp, #8
	mov r6, #0xff
	mov fp, r5
	mvn r4, #0
_021FC028:
	str sb, [sp]
	str r8, [sp, #4]
	ldr r0, [sl]
	mov r1, r7
	mov r2, r6
	mov r3, fp
	bl ov4_021EAE18
	mov r2, r0
	cmp r2, r4
	beq _021FC064
	mov r0, sl
	mov r1, r7
	mov r3, sb
	strb r5, [r7, r2]
	bl ov4_021FCF60
_021FC064:
	ldr r0, [sl]
	bl ov4_021EAB6C
	cmp r0, #0
	bne _021FC028
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FC07C: .word Unk_ov4_0221B650
	arm_func_end ov4_021FBFD4

	arm_func_start ov4_021FC080
ov4_021FC080: ; 0x021FC080
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_021EA840
	ldr r2, [r5, #0]
	mvn r1, #0
	mov r4, r0
	cmp r2, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0xb8]
	cmp r2, #0
	ble _021FC104
	ldr r1, [r5, #0xac]
	ldr r0, _021FC184 ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _021FC104
	cmp r2, #4
	blt _021FC0E8
	mov r0, #0
	str r0, [r5, #0xb8]
	ldr r2, [r5, #0x10c]
	ldr r3, [r5, #0x9c]
	ldr r1, _021FC188 ; =0x02219924
	mov r0, #5
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
_021FC0E8:
	mov r0, r5
	mov r1, #3
	bl ov4_021FD2D4
	ldr r0, [r5, #0xb8]
	add r0, r0, #1
	str r0, [r5, #0xb8]
	b _021FC164
_021FC104:
	ldr r0, [r5, #0xb4]
	cmp r0, #0
	beq _021FC134
	ldr r1, [r5, #0xac]
	ldr r0, _021FC184 ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _021FC134
	mov r0, r5
	mov r1, #1
	bl ov4_021FD2D4
	b _021FC164
_021FC134:
	ldr r2, [r5, #0xac]
	ldr r0, _021FC18C ; =0x0000EA60
	sub r1, r4, r2
	cmp r1, r0
	bhi _021FC158
	cmp r2, #0
	beq _021FC158
	cmp r4, r2
	bhs _021FC164
_021FC158:
	mov r0, r5
	mov r1, #0
	bl ov4_021FD2D4
_021FC164:
	ldr r1, [r5, #0xb0]
	ldr r0, _021FC190 ; =0x00004E20
	sub r1, r4, r1
	cmp r1, r0
	ldmlsia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov4_021FD274
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FC184: .word 0x00002710
_021FC188: .word Unk_ov4_02219924
_021FC18C: .word 0x0000EA60
_021FC190: .word 0x00004E20
	arm_func_end ov4_021FC080

	arm_func_start ov4_021FC194
ov4_021FC194: ; 0x021FC194
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _021FC1E8 ; =0x022197F0
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021EA840
	ldr r2, [r4, #0xac]
	ldr r1, _021FC1EC ; =0x00002710
	sub r0, r0, r2
	cmp r0, r1
	movlo r0, #1
	strlo r0, [r4, #0xb4]
	ldmloia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl ov4_021FD2D4
	mov r0, #0
	str r0, [r4, #0xb4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FC1E8: .word Unk_ov4_022197F0
_021FC1EC: .word 0x00002710
	arm_func_end ov4_021FC194

	arm_func_start ov4_021FC1F0
ov4_021FC1F0: ; 0x021FC1F0
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _021FC26C ; =0x022197F0
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _021FC218
	mov r0, r4
	mov r1, #2
	bl ov4_021FD2D4
_021FC218:
	ldr r0, [r4, #0]
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [r4, #0xc4]
	cmpne r1, #0
	beq _021FC234
	bl ov4_021EACF0
_021FC234:
	mvn r0, #0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0xac]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _021FC254
	bl ov4_021EA8A8
_021FC254:
	ldr r0, _021FC270 ; =0x022197F4
	cmp r4, r0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021D78B0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FC26C: .word Unk_ov4_022197F0
_021FC270: .word Unk_ov4_022197F4
	arm_func_end ov4_021FC1F0

	arm_func_start ov4_021FC274
ov4_021FC274: ; 0x021FC274
	ldr r3, [r0, #0x100]
	cmp r3, #0xfe
	bxge lr
	cmp r1, #1
	bxlt lr
	cmp r1, #0xfe
	bxgt lr
	add r2, r3, #1
	str r2, [r0, #0x100]
	strb r1, [r0, r3]
	bx lr
	arm_func_end ov4_021FC274

	arm_func_start ov4_021FC2A0
ov4_021FC2A0: ; 0x021FC2A0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r2, r1
	mov r4, r0
	ldr r1, _021FC2D0 ; =0x0221995C
	add r0, sp, #0
	bl sprintf
	add r1, sp, #0
	mov r0, r4
	bl ov4_021FC2D4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021FC2D0: .word Unk_ov4_0221995C
	arm_func_end ov4_021FC2A0

	arm_func_start ov4_021FC2D4
ov4_021FC2D4: ; 0x021FC2D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	mov r0, r6
	bl strlen
	ldr r3, [r4, #0x800]
	add r5, r0, #1
	rsb r0, r3, #0x800
	cmp r5, r0
	movgt r5, r0
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	add r0, r4, r3
	bl memcpy
	ldr r0, [r4, #0x800]
	mov r1, #0
	add r0, r0, r5
	str r0, [r4, #0x800]
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021FC2D4

	arm_func_start ov4_021FC330
ov4_021FC330: ; 0x021FC330
	stmfd sp!, {r4, r5, r6, lr}
	bl ov4_021EABBC
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _021FC39C ; =0x0221B5F8
	mov r6, #0
	ldr ip, _021FC3A0 ; =0x0221B5FC
	str r6, [r1, #0]
_021FC350:
	ldr r2, [r0, #0xc]
	mov r5, r6, lsl #2
	ldr r4, [r2, r6, lsl #2]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r3, [r4]
	ldrb r2, [r4, #1]
	add r6, r6, #1
	add lr, ip, r5
	strb r3, [ip, r5]
	strb r2, [lr, #1]
	ldrb r3, [r4, #2]
	ldrb r2, [r4, #3]
	cmp r6, #5
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	str r6, [r1, #0]
	blt _021FC350
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FC39C: .word Unk_ov4_0221B5F8
_021FC3A0: .word Unk_ov4_0221B5FC
	arm_func_end ov4_021FC330

	arm_func_start ov4_021FC3A4
ov4_021FC3A4: ; 0x021FC3A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r4, r1, asr #8
	mov r1, r1, lsl #8
	mov r6, r2
	mov r5, #2
	and r2, r4, #0xff
	and r1, r1, #0xff00
	strb r5, [r6, #1]
	orr r1, r2, r1
	strh r1, [r6, #2]
	mov r4, #0
	movs r7, r0
	mov r5, r3
	streq r4, [r6, #4]
	beq _021FC3F0
	bl ov4_021EAF1C
	str r0, [r6, #4]
_021FC3F0:
	ldr r1, [r6, #4]
	mvn r0, #0
	cmp r1, r0
	bne _021FC438
	ldr r1, _021FC448 ; =0x02219960
	mov r0, r7
	bl strcmp
	cmp r0, #0
	beq _021FC438
	mov r0, r7
	bl SOC_GetHostByName
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [r6, #4]
_021FC438:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FC448: .word Unk_ov4_02219960
	arm_func_end ov4_021FC3A4

	arm_func_start ov4_021FC44C
ov4_021FC44C: ; 0x021FC44C
	ldrb r3, [r0]
	ldrb r2, [r1]
	strb r2, [r0]
	strb r3, [r1]
	bx lr
	arm_func_end ov4_021FC44C

	arm_func_start ov4_021FC460
ov4_021FC460: ; 0x021FC460
	cmp r0, #0x1a
	addlo r0, r0, #0x41
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x34
	addlo r0, r0, #0x47
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x3e
	sublo r0, r0, #4
	andlo r0, r0, #0xff
	bxlo lr
	moveq r0, #0x2b
	bxeq lr
	cmp r0, #0x3f
	moveq r0, #0x2f
	movne r0, #0
	bx lr
	arm_func_end ov4_021FC460

	arm_func_start ov4_021FC4A8
ov4_021FC4A8: ; 0x021FC4A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r8, r0
	mov r6, r2
	cmp r7, #0
	mov r4, #0
	ble _021FC55C
_021FC4C8:
	mov r2, #0
	add r3, sp, #4
	mov r0, r2
_021FC4D4:
	cmp r4, r7
	ldrltb r1, [r8], #1
	add r2, r2, #1
	add r4, r4, #1
	strltb r1, [r3]
	strgeb r0, [r3]
	cmp r2, #2
	add r3, r3, #1
	ble _021FC4D4
	ldrb r0, [sp, #4]
	ldrb r5, [sp, #5]
	ldrb r2, [sp, #6]
	mov r3, r0, lsl #0x1e
	mov r1, r5, asr #4
	add ip, r1, r3, lsr #26
	and r1, r2, #0x3f
	mov r3, r5, lsl #0x1c
	mov r2, r2, asr #6
	mov r0, r0, asr #2
	add r2, r2, r3, lsr #26
	add r5, sp, #0
	strb r0, [sp]
	strb ip, [sp, #1]
	strb r2, [sp, #2]
	strb r1, [sp, #3]
	mov sb, #0
_021FC53C:
	ldrb r0, [r5], #1
	bl ov4_021FC460
	add sb, sb, #1
	cmp sb, #3
	strb r0, [r6], #1
	ble _021FC53C
	cmp r4, r7
	blt _021FC4C8
_021FC55C:
	mov r0, #0
	strb r0, [r6]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021FC4A8

	arm_func_start ov4_021FC56C
ov4_021FC56C: ; 0x021FC56C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x104
	str r1, [sp]
	add r4, sp, #4
	mov sl, r0
	mov sb, r2
	mov r8, r3
	mov r1, #0
_021FC58C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strb r1, [r4], #1
	mov r1, r0, asr #0x10
	cmp r1, #0x100
	blt _021FC58C
	mov r4, #0
	add r6, sp, #4
	mov r5, r4
	mov r7, r4
	mov fp, r6
_021FC5B8:
	ldrb r3, [r6]
	ldrb r2, [sl, r4]
	ldr r1, [sp]
	add r0, r4, #1
	add r2, r3, r2
	add r2, r5, r2
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #24
	add r2, r3, r2, ror #24
	and r5, r2, #0xff
	bl _s32_div_f
	and r4, r1, #0xff
	mov r0, r6
	add r1, fp, r5
	bl ov4_021FC44C
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x100
	add r6, r6, #1
	blt _021FC5B8
	mov r6, #0
	cmp r8, #0
	mov r7, r6
	mov r5, r6
	addle sp, sp, #0x104
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #4
_021FC628:
	ldrb r0, [sb, r5]
	add r0, r6, r0
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r0, r1, r0, ror #24
	and r6, r0, #0xff
	ldrb r1, [r4, r6]
	add r0, r4, r6
	add r1, r1, r7
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r1, r2, r1, ror #24
	and r7, r1, #0xff
	add r1, r4, r7
	bl ov4_021FC44C
	ldrb r3, [r4, r6]
	ldrb r1, [r4, r7]
	add r0, r5, #1
	mov r2, r0, lsl #0x10
	add r0, r3, r1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r0, r1, r0, ror #24
	and r0, r0, #0xff
	ldrb r1, [sb, r5]
	ldrb r0, [r4, r0]
	cmp r8, r2, asr #16
	eor r0, r1, r0
	strb r0, [sb, r5]
	mov r5, r2, asr #0x10
	bgt _021FC628
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021FC56C

	arm_func_start ov4_021FC6B0
ov4_021FC6B0: ; 0x021FC6B0
	strb r1, [r0]
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	mov r1, #5
	strb ip, [r0, #1]
	strb r3, [r0, #2]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [r0, #3]
	strb r2, [r0, #4]
	str r1, [r0, #0x800]
	bx lr
	arm_func_end ov4_021FC6B0

	arm_func_start ov4_021FC6E0
ov4_021FC6E0: ; 0x021FC6E0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x44
	mov r5, r3
	cmp r5, #1
	mov r6, r0
	mov r4, r1
	addlt sp, sp, #0x44
	ldmltia sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0x41
	addgt sp, sp, #0x44
	ldmgtia sp!, {r3, r4, r5, r6, pc}
	sub r0, r5, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0
	addne sp, sp, #0x44
	ldmneia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r2
	bl strcpy
	add r0, r6, #0x44
	bl strlen
	mov r1, r0
	add r2, sp, #0
	add r0, r6, #0x44
	sub r3, r5, #1
	bl ov4_021FC56C
	ldr r2, [r4, #0x800]
	sub r1, r5, #1
	add r0, sp, #0
	add r2, r4, r2
	bl ov4_021FC4A8
	ldr r0, [r4, #0x800]
	add r0, r4, r0
	bl strlen
	ldr r1, [r4, #0x800]
	add r0, r0, #1
	add r0, r1, r0
	str r0, [r4, #0x800]
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021FC6E0

	arm_func_start ov4_021FC780
ov4_021FC780: ; 0x021FC780
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, r1
	ldr r1, _021FC82C ; =0x02219970
	add r2, sp, #4
	add r3, sp, #0
	bl sscanf
	ldr r0, [sp, #4]
	ldr lr, [sp]
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	and r3, r3, #0xff0000
	mov r0, lr, lsl #0x10
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orrs r2, r2, r1
	mov r1, r0, lsr #0x10
	str r2, [sp, #4]
	cmpne r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x104]
	cmp r0, r2
	addeq r0, r4, #0x100
	ldreqh r0, [r0, #8]
	cmpeq r0, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	str r2, [r4, #0x104]
	add r0, r4, #0x100
	strh r1, [r0, #8]
	ldr r0, [sp, #4]
	ldr r2, [r4, #0x10c]
	ldr r3, [r4, #0xa8]
	blx r3
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FC82C: .word Unk_ov4_02219970
	arm_func_end ov4_021FC780

	arm_func_start ov4_021FC830
ov4_021FC830: ; 0x021FC830
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10c
	movs fp, r3
	mov r3, #0
	ldr r7, [sp, #0x130]
	str r3, [sp, #0x108]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	addeq sp, sp, #0x10c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r8, #1
	cmp r0, #1
	bhi _021FC8DC
	ldr r0, [sb, #0x800]
	rsb r0, r0, #0x800
	cmp r0, #2
	addlo sp, sp, #0x10c
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	str r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #4]
	add r0, sp, #4
	ldrb r1, [r0]
	ldr r2, [sb, #0x800]
	ldrb r0, [r0, #1]
	add r3, sb, r2
	strb r1, [sb, r2]
	strb r0, [r3, #1]
	ldr r0, [sb, #0x800]
	add r0, r0, #2
	str r0, [sb, #0x800]
	b _021FC8E4
_021FC8DC:
	mov r0, #1
	str r0, [sp]
_021FC8E4:
	cmp fp, #0xff
	bne _021FC9B8
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #8
	mov r0, r8
	blx r3
	ldr r0, [sp, #0x108]
	mov r5, #0
	cmp r0, #0
	ble _021FC980
	ldr fp, _021FCA7C ; =0x0221997C
	ldr r4, _021FCA80 ; =0x02219B38
	add r7, sp, #8
_021FC91C:
	ldrb r0, [r7]
	ldr r1, [r4, r0, lsl #2]
	mov r0, sb
	cmp r1, #0
	moveq r1, fp
	bl ov4_021FC2D4
	cmp r8, #0
	bne _021FC96C
	ldrb r0, [r7]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	ldr r6, [sb, #0x800]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r6, r0
	bne _021FC96C
	ldr r1, _021FCA84 ; =0x02219984
	mov r0, sb
	bl ov4_021FC2D4
_021FC96C:
	ldr r0, [sp, #0x108]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, #1
	blt _021FC91C
_021FC980:
	ldr r1, [sb, #0x800]
	rsb r0, r1, #0x800
	cmp r0, #1
	addlt sp, sp, #0x10c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r1, #1
	str r0, [sb, #0x800]
	mov r0, #0
	strb r0, [sb, r1]
	ldr fp, [sp, #0x108]
	cmp r8, #0
	add r7, sp, #8
	addeq sp, sp, #0x10c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FC9B8:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #0x10c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FC9CC:
	mov r5, #0
	cmp fp, #0
	ble _021FCA64
_021FC9D8:
	cmp r8, #0
	ldr r6, [sb, #0x800]
	bne _021FC9FC
	ldrb r0, [r7, r5]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	blx r3
	b _021FCA40
_021FC9FC:
	cmp r8, #1
	bne _021FCA20
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	mov r1, r4
	mov r2, sb
	blx ip
	b _021FCA40
_021FCA20:
	cmp r8, #2
	bne _021FCA40
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	mov r1, r4
	mov r2, sb
	blx ip
_021FCA40:
	ldr r0, [sb, #0x800]
	cmp r6, r0
	bne _021FCA58
	ldr r1, _021FCA84 ; =0x02219984
	mov r0, sb
	bl ov4_021FC2D4
_021FCA58:
	add r5, r5, #1
	cmp r5, fp
	blt _021FC9D8
_021FCA64:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _021FC9CC
	add sp, sp, #0x10c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FCA7C: .word Unk_ov4_0221997C
_021FCA80: .word Unk_ov4_02219B38
_021FCA84: .word Unk_ov4_02219984
	arm_func_end ov4_021FC830

	arm_func_start ov4_021FCA88
ov4_021FCA88: ; 0x021FCA88
	stmfd sp!, {r3, r4, r5, lr}
	str r3, [sp]
	mov r3, r2
	mov r2, #0
	mov r5, r0
	mov r4, r1
	bl ov4_021FC830
	ldr ip, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str ip, [sp]
	bl ov4_021FC830
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl ov4_021FC830
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FCA88

	arm_func_start ov4_021FCAE0
ov4_021FCAE0: ; 0x021FCAE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, #0
	cmp r3, #3
	mov r6, r5
	mov r7, r5
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb ip, [r2], #1
	sub r3, r3, #1
	cmp ip, #0
	cmpne ip, #0xff
	movne r5, r2
	subne r3, r3, ip
	addne r2, r2, ip
	cmp r3, #2
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb lr, [r2], #1
	sub r3, r3, #1
	cmp lr, #0
	cmpne lr, #0xff
	movne r6, r2
	subne r3, r3, lr
	addne r2, r2, lr
	cmp r3, #1
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r4, [r2]
	sub r3, r3, #1
	cmp r4, #0
	cmpne r4, #0xff
	subne r3, r3, r4
	addne r7, r2, #1
	cmp r3, #0
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	str lr, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r2, ip
	mov r3, r5
	str r7, [sp, #0xc]
	bl ov4_021FCA88
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021FCAE0

	arm_func_start ov4_021FCB98
ov4_021FCB98: ; 0x021FCB98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x188
	mov r8, r2
	sub r2, r8, #1
	mov r3, #0
	cmp r2, #1
	mov sl, r0
	mov sb, r1
	str r3, [sp, #0x104]
	movhi fp, #1
	bhi _021FCBD8
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	mov fp, r0
_021FCBD8:
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #4
	mov r0, r8
	blx r3
	ldr r1, [sp, #0x104]
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	addle sp, sp, #0x188
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, sp, #4
_021FCC08:
	ldrb r1, [r6]
	ldr r0, _021FCD60 ; =0x02219B38
	ldr r5, [r0, r1, lsl #2]
	cmp r5, #0
	ldreq r5, _021FCD64 ; =0x0221997C
	cmp r8, #0
	bne _021FCC84
	mov r0, sb
	mov r1, r5
	bl ov4_021FC2D4
	ldr r0, [sb, #0x800]
	mov r1, #0x5c
	add r0, sb, r0
	strb r1, [r0, #-1]
	ldrb r0, [r6]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	ldr r4, [sb, #0x800]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r4, r0
	bne _021FCC70
	ldr r1, _021FCD68 ; =0x02219984
	mov r0, sb
	bl ov4_021FC2D4
_021FCC70:
	ldr r0, [sb, #0x800]
	mov r1, #0x5c
	add r0, sb, r0
	strb r1, [r0, #-1]
	b _021FCD3C
_021FCC84:
	cmp fp, #0
	mov r4, #0
	ble _021FCD3C
_021FCC90:
	ldr r1, _021FCD6C ; =0x02219988
	add r0, sp, #0x108
	mov r2, r5
	mov r3, r4
	bl sprintf
	mov r0, sb
	add r1, sp, #0x108
	bl ov4_021FC2D4
	ldr r0, [sb, #0x800]
	cmp r8, #1
	add r1, sb, r0
	mov r0, #0x5c
	strb r0, [r1, #-1]
	ldr r7, [sb, #0x800]
	bne _021FCCE8
	ldrb r0, [r6]
	mov r1, r4
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	blx ip
	b _021FCD08
_021FCCE8:
	cmp r8, #2
	bne _021FCD08
	ldrb r0, [r6]
	mov r1, r4
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	blx ip
_021FCD08:
	ldr r0, [sb, #0x800]
	cmp r7, r0
	bne _021FCD20
	ldr r1, _021FCD68 ; =0x02219984
	mov r0, sb
	bl ov4_021FC2D4
_021FCD20:
	ldr r0, [sb, #0x800]
	add r4, r4, #1
	add r1, sb, r0
	mov r0, #0x5c
	strb r0, [r1, #-1]
	cmp r4, fp
	blt _021FCC90
_021FCD3C:
	ldr r0, [sp]
	ldr r1, [sp, #0x104]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	add r6, r6, #1
	blt _021FCC08
	add sp, sp, #0x188
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FCD60: .word Unk_ov4_02219B38
_021FCD64: .word Unk_ov4_0221997C
_021FCD68: .word Unk_ov4_02219984
_021FCD6C: .word Unk_ov4_02219988
	arm_func_end ov4_021FCB98

	arm_func_start ov4_021FCD70
ov4_021FCD70: ; 0x021FCD70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r2, #1
	mov r5, r0
	str r2, [r4, #0x800]
	mov r3, #0x5c
	mov r2, #0
	strb r3, [r4]
	bl ov4_021FCB98
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov4_021FCB98
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl ov4_021FCB98
	ldr r1, _021FCDD0 ; =0x02219990
	mov r0, r4
	bl ov4_021FC2D4
	ldr r0, [r4, #0x800]
	sub r0, r0, #1
	str r0, [r4, #0x800]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FCDD0: .word Unk_ov4_02219990
	arm_func_end ov4_021FCD70

	arm_func_start ov4_021FCDD4
ov4_021FCDD4: ; 0x021FCDD4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr ip, _021FCEF8 ; =0x02215C28
	mov r3, r0
	ldrb r4, [ip]
	ldrb r0, [ip, #1]
	ldrb lr, [ip, #2]
	strb r4, [sp, #4]
	strb r0, [sp, #5]
	ldrb r0, [ip, #3]
	cmp r2, #0xa
	add r6, sp, #4
	strb lr, [sp, #6]
	strb r0, [sp, #7]
	ldrb lr, [ip, #4]
	ldrb r0, [ip, #5]
	mov r5, #1
	strb lr, [sp, #8]
	strb r0, [sp, #9]
	blt _021FCE50
	mov r4, #0
_021FCE28:
	ldrb ip, [r6]
	ldrb r0, [r1, r4]
	cmp ip, r0
	movne r5, #0
	bne _021FCE54
	add r4, r4, #1
	cmp r4, #6
	add r6, r6, #1
	blt _021FCE28
	b _021FCE54
_021FCE50:
	mov r5, #0
_021FCE54:
	cmp r5, #0
	beq _021FCED0
	ldrb r2, [r1, #6]
	ldrb r0, [r1, #7]
	add ip, sp, #0
	strb r2, [ip]
	strb r0, [ip, #1]
	ldrb r2, [r1, #8]
	ldrb r0, [r1, #9]
	strb r0, [ip, #3]
	strb r2, [ip, #2]
	ldr r2, [r3, #0xa0]
	cmp r2, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr lr, [sp]
	ldr r1, [r3, #0x10c]
	mov r3, lr, lsr #0x18
	mov r0, lr, lsr #8
	mov ip, lr, lsl #8
	and r3, r3, #0xff
	and r0, r0, #0xff00
	mov lr, lr, lsl #0x18
	orr r0, r3, r0
	and ip, ip, #0xff0000
	and r3, lr, #0xff000000
	orr r0, ip, r0
	orr r0, r3, r0
	blx r2
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
_021FCED0:
	ldr ip, [r3, #0xa4]
	cmp ip, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x10c]
	blx ip
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021FCEF8: .word Unk_ov4_02215C28
	arm_func_end ov4_021FCDD4

	arm_func_start ov4_021FCEFC
ov4_021FCEFC: ; 0x021FCEFC
	stmfd sp!, {r4, lr}
	mov r3, #0
_021FCF04:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0xd8]
	cmp r1, r2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, #0xa
	blt _021FCF04
	ldr r2, [r0, #0x100]
	ldr ip, _021FCF5C ; =0x66666667
	add lr, r2, #1
	smull r3, r4, ip, lr
	mov r2, lr, lsr #0x1f
	add r4, r2, r4, asr #2
	mov ip, #0xa
	smull r2, r3, ip, r4
	sub r4, lr, r2
	str r4, [r0, #0x100]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0xd8]
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FCF5C: .word 0x66666667
	arm_func_end ov4_021FCEFC

	arm_func_start ov4_021FCF60
ov4_021FCF60: ; 0x021FCF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x810
	movs r8, r0
	mov r0, #0
	str r0, [sp, #0x80c]
	ldreq r0, _021FD270 ; =0x022197F0
	mov r7, r2
	ldreq r8, [r0]
	ldrsb r0, [r1]
	mov r6, r3
	cmp r0, #0x3b
	bne _021FCFB8
	ldr r3, [r8, #0xd4]
	cmp r3, #0
	addeq sp, sp, #0x810
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r1
	mov r1, r7
	mov r2, r6
	blx r3
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FCFB8:
	cmp r0, #0x5c
	bne _021FCFF4
	add r1, sp, #0xc
	mov r0, r8
	bl ov4_021FCD70
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl ov4_021EAE5C
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FCFF4:
	cmp r7, #7
	addlt sp, sp, #0x810
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	and r0, r0, #0xff
	cmp r0, #0xfe
	ldreqb r0, [r1, #1]
	cmpeq r0, #0xfd
	addne sp, sp, #0x810
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0xb8]
	add r4, r1, #3
	cmp r0, #0
	movgt r0, #0
	strgt r0, [r8, #0xb8]
	ldrsb sb, [r1, #2]
	add r5, r1, #7
	add r0, sp, #0xc
	mov r1, sb
	mov r2, r4
	sub r7, r7, #7
	bl ov4_021FC6B0
	cmp sb, #8
	addls pc, pc, sb, lsl #2
	b _021FD240
_021FD054: ; jump table
	b _021FD078 ; case 0
	b _021FD090 ; case 1
	b _021FD0CC ; case 2
	b _021FD240 ; case 3
	b _021FD104 ; case 4
	b _021FD240 ; case 5
	b _021FD178 ; case 6
	b _021FD240 ; case 7
	b _021FD240 ; case 8
_021FD078:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r5
	mov r3, r7
	bl ov4_021FCAE0
	b _021FD248
_021FD090:
	cmp r7, #0xd
	blt _021FD0B4
	ldr r0, [r8, #0xa8]
	cmp r0, #0
	beq _021FD0B4
	add r1, r5, r7
	mov r0, r8
	sub r1, r1, #0xd
	bl ov4_021FC780
_021FD0B4:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r5
	mov r3, r7
	bl ov4_021FC6E0
	b _021FD248
_021FD0CC:
	ldr r0, [sp, #0x80c]
	cmp r7, #0x20
	movgt r7, #0x20
	add r3, sp, #0xc
	mov r4, #5
	mov r1, r5
	mov r2, r7
	add r0, r3, r0
	strb r4, [sp, #0xc]
	bl memcpy
	ldr r0, [sp, #0x80c]
	add r0, r0, r7
	str r0, [sp, #0x80c]
	b _021FD248
_021FD104:
	ldr r1, [r8, #0xb8]
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0x810
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r2, #0
	str r2, [sp, #8]
_021FD120:
	add r0, r8, r2
	ldrsb r1, [r4, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	addne sp, sp, #0x810
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r2, r2, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _021FD120
	cmp r7, #2
	addlt sp, sp, #0x810
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mvn r0, #0
	str r0, [r8, #0xb8]
	ldrsb r0, [r5]
	ldr r2, [r8, #0x10c]
	ldr r3, [r8, #0x9c]
	add r1, r5, #1
	blx r3
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FD178:
	mov r2, #0
	str r2, [sp, #8]
_021FD180:
	add r0, r8, r2
	ldrsb r1, [r4, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	addne sp, sp, #0x810
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r2, r2, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _021FD180
	cmp r7, #4
	addlt sp, sp, #0x810
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #7
	strb r0, [sp, #0xc]
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	ldr r2, [sp, #0x80c]
	add r4, sp, #0xc
	strb r1, [r4, r2]
	add r4, r4, r2
	strb r0, [r4, #1]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	add r3, sp, #8
	mov r0, r8
	strb r2, [r4, #2]
	strb r1, [r4, #3]
	ldr r1, [sp, #0x80c]
	add r1, r1, #4
	str r1, [sp, #0x80c]
	ldrb r2, [r5]
	ldrb r1, [r5, #1]
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #8]
	bl ov4_021FCEFC
	cmp r0, #0
	bne _021FD248
	mov r0, r8
	add r1, r5, #4
	sub r2, r7, #4
	bl ov4_021FCDD4
	b _021FD248
_021FD240:
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FD248:
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl ov4_021EAE5C
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021FD270: .word Unk_ov4_022197F0
	arm_func_end ov4_021FCF60

	arm_func_start ov4_021FD274
ov4_021FD274: ; 0x021FD274
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	sub sp, sp, #0x800
	mov r4, r0
	mov r3, #0
	add r0, sp, #8
	add r2, r4, #0x84
	mov r1, #8
	str r3, [sp, #0x808]
	bl ov4_021FC6B0
	add r0, r4, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, [sp, #0x808]
	add r1, sp, #8
	mov r3, #0
	bl ov4_021EAE5C
	bl ov4_021EA840
	str r0, [r4, #0xb0]
	add sp, sp, #0xc
	add sp, sp, #0x800
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_021FD274

	arm_func_start ov4_021FD2D4
ov4_021FD2D4: ; 0x021FD2D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	sub sp, sp, #0x800
	mov sl, r0
	mov sb, r1
	mov r3, #0
	add r0, sp, #0x24
	add r2, sl, #0x84
	mov r1, #3
	str r3, [sp, #0x824]
	bl ov4_021FC6B0
	ldr r4, _021FD4B4 ; =0x0221B5F8
	mov r8, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	ble _021FD364
	ldr fp, _021FD4B8 ; =0x022199A4
	ldr r5, _021FD4BC ; =0x0221B5FC
	add r7, sp, #0x10
	add r6, sp, #0x24
_021FD324:
	mov r0, r7
	mov r1, fp
	mov r2, r8
	bl sprintf
	mov r0, r6
	mov r1, r7
	bl ov4_021FC2D4
	ldr r0, [r5, r8, lsl #2]
	bl SOC_InetNtoA
	mov r1, r0
	mov r0, r6
	bl ov4_021FC2D4
	add r8, r8, #1
	ldr r0, [r4, #0]
	cmp r8, r0
	blt _021FD324
_021FD364:
	ldr r1, _021FD4C0 ; =0x022199B0
	add r0, sp, #0x24
	bl ov4_021FC2D4
	ldr r1, [sl, #0xc0]
	add r0, sp, #0x24
	bl ov4_021FC2A0
	ldr r1, _021FD4C4 ; =0x022199BC
	add r0, sp, #0x24
	bl ov4_021FC2D4
	ldr r0, [sl, #0xc8]
	cmp r0, #0
	ldrne r1, _021FD4C8 ; =0x022199C4
	add r0, sp, #0x24
	ldreq r1, _021FD4CC ; =0x022199C8
	bl ov4_021FC2D4
	cmp sb, #0
	beq _021FD3C0
	ldr r1, _021FD4D0 ; =0x022199CC
	add r0, sp, #0x24
	bl ov4_021FC2D4
	add r0, sp, #0x24
	mov r1, sb
	bl ov4_021FC2A0
_021FD3C0:
	ldr r1, _021FD4D4 ; =0x022199DC
	add r0, sp, #0x24
	bl ov4_021FC2D4
	add r0, sp, #0x24
	add r1, sl, #4
	bl ov4_021FC2D4
	ldr r0, [sl, #0xa8]
	cmp r0, #0
	beq _021FD418
	ldr r1, _021FD4D8 ; =0x022199E8
	add r0, sp, #0x24
	bl ov4_021FC2D4
	ldr r1, [sl, #0x104]
	add r0, sp, #0x24
	bl ov4_021FC2A0
	ldr r1, _021FD4DC ; =0x022199F4
	add r0, sp, #0x24
	bl ov4_021FC2D4
	add r0, sl, #0x100
	ldrh r1, [r0, #8]
	add r0, sp, #0x24
	bl ov4_021FC2A0
_021FD418:
	cmp sb, #2
	beq _021FD448
	mov r2, #0xff
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0x24
	mov r0, sl
	str r3, [sp, #0xc]
	bl ov4_021FCA88
	b _021FD46C
_021FD448:
	ldr r2, [sp, #0x824]
	rsb r0, r2, #0x800
	cmp r0, #1
	blt _021FD46C
	add r1, r2, #1
	str r1, [sp, #0x824]
	add r0, sp, #0x24
	mov r1, #0
	strb r1, [r0, r2]
_021FD46C:
	add r0, sl, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [sl]
	ldr r2, [sp, #0x824]
	add r1, sp, #0x24
	mov r3, #0
	bl ov4_021EAE5C
	bl ov4_021EA840
	str r0, [sl, #0xac]
	str r0, [sl, #0xb0]
	cmp sb, #0
	movne r0, #0
	strne r0, [sl, #0xb4]
	add sp, sp, #0x28
	add sp, sp, #0x800
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FD4B4: .word Unk_ov4_0221B5F8
_021FD4B8: .word Unk_ov4_022199A4
_021FD4BC: .word Unk_ov4_0221B5FC
_021FD4C0: .word Unk_ov4_022199B0
_021FD4C4: .word Unk_ov4_022199BC
_021FD4C8: .word Unk_ov4_022199C4
_021FD4CC: .word Unk_ov4_022199C8
_021FD4D0: .word Unk_ov4_022199CC
_021FD4D4: .word Unk_ov4_022199DC
_021FD4D8: .word Unk_ov4_022199E8
_021FD4DC: .word Unk_ov4_022199F4
	arm_func_end ov4_021FD2D4

	.rodata


	.global Unk_ov4_02215C28
Unk_ov4_02215C28: ; 0x02215C28
	.incbin "incbin/overlay4_rodata.bin", 0x3C0, 0x8



	.data


	.global Unk_ov4_022197F0
Unk_ov4_022197F0: ; 0x022197F0
	.incbin "incbin/overlay4_data.bin", 0x3970, 0x3974 - 0x3970

	.global Unk_ov4_022197F4
Unk_ov4_022197F4: ; 0x022197F4
	.incbin "incbin/overlay4_data.bin", 0x3974, 0x3A84 - 0x3974

	.global Unk_ov4_02219904
Unk_ov4_02219904: ; 0x02219904
	.incbin "incbin/overlay4_data.bin", 0x3A84, 0x3AA4 - 0x3A84

	.global Unk_ov4_02219924
Unk_ov4_02219924: ; 0x02219924
	.incbin "incbin/overlay4_data.bin", 0x3AA4, 0x3ADC - 0x3AA4

	.global Unk_ov4_0221995C
Unk_ov4_0221995C: ; 0x0221995C
	.incbin "incbin/overlay4_data.bin", 0x3ADC, 0x3AE0 - 0x3ADC

	.global Unk_ov4_02219960
Unk_ov4_02219960: ; 0x02219960
	.incbin "incbin/overlay4_data.bin", 0x3AE0, 0x3AF0 - 0x3AE0

	.global Unk_ov4_02219970
Unk_ov4_02219970: ; 0x02219970
	.incbin "incbin/overlay4_data.bin", 0x3AF0, 0x3AFC - 0x3AF0

	.global Unk_ov4_0221997C
Unk_ov4_0221997C: ; 0x0221997C
	.incbin "incbin/overlay4_data.bin", 0x3AFC, 0x3B04 - 0x3AFC

	.global Unk_ov4_02219984
Unk_ov4_02219984: ; 0x02219984
	.incbin "incbin/overlay4_data.bin", 0x3B04, 0x3B08 - 0x3B04

	.global Unk_ov4_02219988
Unk_ov4_02219988: ; 0x02219988
	.incbin "incbin/overlay4_data.bin", 0x3B08, 0x3B10 - 0x3B08

	.global Unk_ov4_02219990
Unk_ov4_02219990: ; 0x02219990
	.incbin "incbin/overlay4_data.bin", 0x3B10, 0x3B24 - 0x3B10

	.global Unk_ov4_022199A4
Unk_ov4_022199A4: ; 0x022199A4
	.incbin "incbin/overlay4_data.bin", 0x3B24, 0x3B30 - 0x3B24

	.global Unk_ov4_022199B0
Unk_ov4_022199B0: ; 0x022199B0
	.incbin "incbin/overlay4_data.bin", 0x3B30, 0x3B3C - 0x3B30

	.global Unk_ov4_022199BC
Unk_ov4_022199BC: ; 0x022199BC
	.incbin "incbin/overlay4_data.bin", 0x3B3C, 0x3B44 - 0x3B3C

	.global Unk_ov4_022199C4
Unk_ov4_022199C4: ; 0x022199C4
	.incbin "incbin/overlay4_data.bin", 0x3B44, 0x3B48 - 0x3B44

	.global Unk_ov4_022199C8
Unk_ov4_022199C8: ; 0x022199C8
	.incbin "incbin/overlay4_data.bin", 0x3B48, 0x3B4C - 0x3B48

	.global Unk_ov4_022199CC
Unk_ov4_022199CC: ; 0x022199CC
	.incbin "incbin/overlay4_data.bin", 0x3B4C, 0x3B5C - 0x3B4C

	.global Unk_ov4_022199DC
Unk_ov4_022199DC: ; 0x022199DC
	.incbin "incbin/overlay4_data.bin", 0x3B5C, 0x3B68 - 0x3B5C

	.global Unk_ov4_022199E8
Unk_ov4_022199E8: ; 0x022199E8
	.incbin "incbin/overlay4_data.bin", 0x3B68, 0x3B74 - 0x3B68

	.global Unk_ov4_022199F4
Unk_ov4_022199F4: ; 0x022199F4
	.incbin "incbin/overlay4_data.bin", 0x3B74, 0xB



	.bss


	.global Unk_ov4_0221B5F8
Unk_ov4_0221B5F8: ; 0x0221B5F8
	.space 0x4

	.global Unk_ov4_0221B5FC
Unk_ov4_0221B5FC: ; 0x0221B5FC
	.space 0x14

	.global Unk_ov4_0221B610
Unk_ov4_0221B610: ; 0x0221B610
	.space 0x40

	.global Unk_ov4_0221B650
Unk_ov4_0221B650: ; 0x0221B650
	.space 0x100

