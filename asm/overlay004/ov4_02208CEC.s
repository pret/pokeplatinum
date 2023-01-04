	.include "macros/function.inc"
	.include "overlay004/ov4_02208CEC.inc"

	.extern Unk_021CCC80
	.extern Unk_ov4_0221F620

	.text


	arm_func_start ov4_02208CEC
ov4_02208CEC: ; 0x02208CEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02208DE0 ; =0x0221DDF0
	ldr r2, _02208DE0 ; =0x0221DDF0
	ldr r1, [r1, #0x50]
	str r0, [r2, #0xc]
	cmp r1, #0
	mov r1, #0
	str r1, [r2, #0x50]
	str r1, [r2, #0x1c]
	str r1, [r2, #0x2c]
	str r1, [r2, #0x60]
	movne r3, #1
	str r1, [r2, #0x64]
	moveq r3, #0
	str r1, [r2, #0x20]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02208DE4 ; =0x0221DE70
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _02208DE8 ; =0x021CCC80
	ldr r6, [r0, #8]
	cmp r6, #0
	beq _02208D9C
	mov r5, #0
	mov r4, r5
_02208D54:
	ldr r1, [r6, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02208D90
	ldrb r0, [r1, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	strneb r5, [r1, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02208D90
	str r4, [r1, #4]
	ldr r0, [r1, #0]
	bl OS_WakeupThreadDirect
_02208D90:
	ldr r6, [r6, #0x68]
	cmp r6, #0
	bne _02208D54
_02208D9C:
	mov r6, #0
	ldr r7, _02208DEC ; =0x0221E118
	ldr r4, _02208DE0 ; =0x0221DDF0
	mov r5, r6
_02208DAC:
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _02208DC8
	ldr r0, [r7, #0x34]
	ldr r1, [r4, #0x40]
	blx r1
	strh r5, [r7, #4]
_02208DC8:
	add r6, r6, #1
	cmp r6, #8
	add r7, r7, #0x38
	blt _02208DAC
	bl ov4_02210ED0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02208DE0: .word Unk_ov4_0221DDF0
_02208DE4: .word Unk_ov4_0221DE70
_02208DE8: .word Unk_021CCC80
_02208DEC: .word Unk_ov4_0221E118
	arm_func_end ov4_02208CEC

	arm_func_start ov4_02208DF0
ov4_02208DF0: ; 0x02208DF0
	stmfd sp!, {r3, lr}
	ldr r0, _02208E14 ; =0x0221DDF0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02208E0C
	bl OS_YieldThread
	ldmia sp!, {r3, pc}
_02208E0C:
	bl OS_Sleep
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02208E14: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02208DF0

	arm_func_start ov4_02208E18
ov4_02208E18: ; 0x02208E18
	bx lr
	arm_func_end ov4_02208E18

	arm_func_start ov4_02208E1C
ov4_02208E1C: ; 0x02208E1C
	mov r0, #1
	bx lr
	arm_func_end ov4_02208E1C

	arm_func_start ov4_02208E24
ov4_02208E24: ; 0x02208E24
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _0220901C ; =0x02000C58
	bl OSi_ReferSymbol
	ldr r3, [r4, #0x18]
	ldr r5, [r4, #0x14]
	cmp r3, #0
	cmpeq r5, #0
	mov r1, #0
	beq _02208E7C
	ldr r0, _02209020 ; =0x0221DDF0
	ldr r2, _02209024 ; =0x6C078965
	str r5, [r0, #0x68]
	str r3, [r0, #0x6c]
	ldr r3, _02209028 ; =0x5D588B65
	str r2, [r0, #0x70]
	ldr r2, _0220902C ; =0x00269EC3
	str r3, [r0, #0x74]
	str r2, [r0, #0x78]
	str r1, [r0, #0x7c]
	b _02208EAC
_02208E7C:
	bl OS_GetTick
	ldr r2, _02209020 ; =0x0221DDF0
	ldr r3, _02209024 ; =0x6C078965
	str r0, [r2, #0x68]
	str r1, [r2, #0x6c]
	ldr r1, _02209028 ; =0x5D588B65
	str r3, [r2, #0x70]
	ldr r0, _0220902C ; =0x00269EC3
	str r1, [r2, #0x74]
	str r0, [r2, #0x78]
	mov r0, #0
	str r0, [r2, #0x7c]
_02208EAC:
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	beq _02208ED0
	ldr r0, _02209020 ; =0x0221DDF0
	str r1, [r0, #0x14]
	ldr r1, [r4, #8]
	b _02208EDC
_02208ED0:
	ldr r1, _02209030 ; =ov4_02208E18
	ldr r0, _02209020 ; =0x0221DDF0
	str r1, [r0, #0x14]
_02208EDC:
	str r1, [r0, #0x40]
	ldr r1, [r4, #0]
	ldr r0, _02209020 ; =0x0221DDF0
	ldr r2, _02209020 ; =0x0221DDF0
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldreq r1, _02209034 ; =0x000005B4
	strh r1, [r0, #2]
	ldr r1, [r4, #0x28]
	ldr r0, _02209020 ; =0x0221DDF0
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x2c]
	str r1, [r0, #0x24]
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldreq r1, _02209030 ; =ov4_02208E18
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldrne r0, _02209020 ; =0x0221DDF0
	ldreq r1, _02209038 ; =ov4_02208E1C
	ldreq r0, _02209020 ; =0x0221DDF0
	str r1, [r0, #0x48]
	ldr r1, [r4, #0x1c]
	mov r0, #0
	str r1, [r2, #0x58]
	ldr r3, [r4, #0x20]
	ldr r1, _0220903C ; =0x00000F88
	str r3, [r2, #0x5c]
	str r0, [r2, #0x30]
	str r0, [r2, #0x28]
	ldr ip, [r2, #0x70]
	ldr r4, [r2, #0x68]
	ldr r3, [r2, #0x6c]
	umull r5, lr, ip, r4
	mla lr, ip, r3, lr
	ldr r3, [r2, #0x74]
	ldr ip, [r2, #0x78]
	mla lr, r3, r4, lr
	ldr r3, [r2, #0x7c]
	adds ip, ip, r5
	adc r5, r3, lr
	umull r3, r4, r5, r1
	mla r4, r5, r0, r4
	mla r4, r0, r1, r4
	str ip, [r2, #0x68]
	ldr r0, _02209040 ; =0x0221E2D8
	str r5, [r2, #0x6c]
	add r1, r4, #0x400
	strh r1, [r2, #8]
	bl OS_GetMacAddress
	ldr r0, _02209020 ; =0x0221DDF0
	mov r2, #0
	strb r2, [r0, #1]
	mov r1, #0x800
	str r1, [sp]
	ldr r0, _02209044 ; =0x0221A190
	ldr r1, _02209048 ; =ov4_0220BB94
	ldr r4, [r0, #0]
	ldr r0, _0220904C ; =0x0221E058
	ldr r3, _02209050 ; =0x0221F620
	str r4, [sp, #4]
	bl OS_CreateThread
	mov r1, #0x800
	ldr r0, _02209044 ; =0x0221A190
	str r1, [sp]
	ldr r1, [r0, #0]
	ldr r0, _02209054 ; =0x0221DF98
	str r1, [sp, #4]
	ldr r1, _02209058 ; =ov4_0220C8C0
	ldr r3, _0220905C ; =0x0221EE20
	mov r2, #0
	bl OS_CreateThread
	ldr r0, _0220904C ; =0x0221E058
	bl OS_WakeupThreadDirect
	ldr r0, _02209054 ; =0x0221DF98
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220901C: .word 0x02000C58
_02209020: .word Unk_ov4_0221DDF0
_02209024: .word 0x6C078965
_02209028: .word 0x5D588B65
_0220902C: .word 0x00269EC3
_02209030: .word ov4_02208E18
_02209034: .word 0x000005B4
_02209038: .word ov4_02208E1C
_0220903C: .word 0x00000F88
_02209040: .word Unk_ov4_0221E2D8
_02209044: .word 0x0221A190
_02209048: .word ov4_0220BB94
_0220904C: .word Unk_ov4_0221E058
_02209050: .word Unk_ov4_0221F620
_02209054: .word Unk_ov4_0221DF98
_02209058: .word ov4_0220C8C0
_0220905C: .word Unk_ov4_0221EE20
	arm_func_end ov4_02208E24

	arm_func_start ov4_02209060
ov4_02209060: ; 0x02209060
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _022090A8 ; =0x0221DF98
	bl OS_IsThreadTerminated
	movs r5, r0
	ldreq r1, _022090AC ; =0x0221DDF0
	ldreq r0, [r1, #0x44]
	cmpeq r0, #0
	bne _02209098
	ldr r0, _022090A8 ; =0x0221DF98
	mov r2, #1
	str r2, [r1, #0x44]
	bl OS_WakeupThreadDirect
_02209098:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022090A8: .word Unk_ov4_0221DF98
_022090AC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02209060

	arm_func_start ov4_022090B0
ov4_022090B0: ; 0x022090B0
	ldr r1, _022090BC ; =0x0221DDF0
	str r0, [r1, #0x3c]
	bx lr
	; .align 2, 0
_022090BC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_022090B0

	arm_func_start ov4_022090C0
ov4_022090C0: ; 0x022090C0
	stmfd sp!, {r3, lr}
	bl ov4_02209060
	ldr r0, _022090FC ; =0x0221DF98
	bl OS_JoinThread
	ldr r0, _02209100 ; =0x0221E058
	bl OS_DestroyThread
	ldr r1, _02209104 ; =0x0221DDF0
	mov r0, #0
	str r0, [r1, #0x54]
	bl ov4_02208CEC
	ldr r0, _02209104 ; =0x0221DDF0
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022090FC: .word Unk_ov4_0221DF98
_02209100: .word Unk_ov4_0221E058
_02209104: .word Unk_ov4_0221DDF0
	arm_func_end ov4_022090C0

	arm_func_start ov4_02209108
ov4_02209108: ; 0x02209108
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _02209134 ; =0x0221A190
	ldr r0, _02209138 ; =0x0221E058
	mov r1, r4
	str r4, [r2, #0]
	bl OS_SetThreadPriority
	ldr r0, _0220913C ; =0x0221DF98
	mov r1, r4
	bl OS_SetThreadPriority
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02209134: .word 0x0221A190
_02209138: .word Unk_ov4_0221E058
_0220913C: .word Unk_ov4_0221DF98
	arm_func_end ov4_02209108

	arm_func_start ov4_02209140
ov4_02209140: ; 0x02209140
	tst r0, #1
	beq _02209178
	cmp r1, #1
	bls _022091C8
_02209150:
	ldrb ip, [r0]
	ldrb r3, [r0, #1]
	sub r1, r1, #2
	cmp r1, #1
	orr r3, r3, ip, lsl #8
	mov r3, r3, lsl #0x10
	add r2, r2, r3, lsr #16
	add r0, r0, #2
	bhi _02209150
	b _022091C8
_02209178:
	mov r2, r2, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	cmp r1, #1
	mov r2, r2, lsr #0x10
	bls _022091AC
_02209198:
	ldrh r3, [r0], #2
	sub r1, r1, #2
	cmp r1, #1
	add r2, r2, r3
	bhi _02209198
_022091AC:
	ldr r3, _022091F0 ; =0x00FF00FF
	mov ip, r3, lsl #8
	and r3, r3, r2, lsr #8
	and r2, ip, r2, lsl #8
	orr r3, r3, r2
	mov r2, r3, lsl #0x10
	orr r2, r2, r3, lsr #16
_022091C8:
	cmp r1, #0
	ldrneb r0, [r0]
	addne r2, r2, r0, lsl #8
	mov r0, r2, lsl #0x10
	mov r1, r2, lsr #0x10
	add r0, r1, r0, lsr #16
	add r0, r0, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_022091F0: .word 0x00FF00FF
	arm_func_end ov4_02209140

	arm_func_start ov4_022091F4
ov4_022091F4: ; 0x022091F4
	ldr r1, _0220920C ; =0x0000FFFF
	eor r0, r0, r1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	moveq r0, r1
	bx lr
	; .align 2, 0
_0220920C: .word 0x0000FFFF
	arm_func_end ov4_022091F4

	arm_func_start ov4_02209210
ov4_02209210: ; 0x02209210
	stmfd sp!, {r3, lr}
	mov r2, #0
	bl ov4_02209140
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov4_022091F4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02209210

	arm_func_start ov4_0220922C
ov4_0220922C: ; 0x0220922C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, r3
	mov r5, r1
	bl ov4_02209140
	mov r2, r0
	add r0, r4, #0xc
	mov r1, #8
	bl ov4_02209140
	add r1, r0, r5
	tst r1, #0x10000
	addne r0, r1, #1
	movne r0, r0, lsl #0x10
	movne r1, r0, lsr #0x10
	ldr r0, _02209278 ; =0x0000FFFF
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02209278: .word 0x0000FFFF
	arm_func_end ov4_0220922C

	arm_func_start ov4_0220927C
ov4_0220927C: ; 0x0220927C
	mov ip, #1
	sub r1, ip, #2
	cmp r0, r1
	subne r1, ip, #-0x7f000000
	cmpne r0, r1
	beq _022092B0
	ldr r1, _022092B8 ; =0x0221DDF0
	ldr r3, [r1, #0x1c]
	ldr r1, [r1, #0x50]
	and r2, r0, r3
	and r0, r1, r3
	cmp r2, r0
	movne ip, #0
_022092B0:
	mov r0, ip
	bx lr
	; .align 2, 0
_022092B8: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220927C

	arm_func_start ov4_022092BC
ov4_022092BC: ; 0x022092BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_0220927C
	cmp r0, #0
	ldreq r0, _022092DC ; =0x0221DDF0
	ldreq r4, [r0, #0x2c]
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022092DC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_022092BC

	arm_func_start ov4_022092E0
ov4_022092E0: ; 0x022092E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov4_0220927C
	cmp r0, #0
	beq _02209310
	ldr r0, _02209318 ; =0x0221DDF0
	ldr r0, [r0, #0x1c]
	mvn r1, r0
	and r0, r1, r5
	cmp r1, r0
	moveq r4, #1
_02209310:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02209318: .word Unk_ov4_0221DDF0
	arm_func_end ov4_022092E0

	arm_func_start ov4_0220931C
ov4_0220931C: ; 0x0220931C
	and r0, r0, #0xf0000000
	cmp r0, #-0x20000000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov4_0220931C

	arm_func_start ov4_02209330
ov4_02209330: ; 0x02209330
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _022093A8 ; =0x0221DDF0
	mov r4, #1
	ldr r1, [r1, #0x50]
	mov r6, r0
	cmp r1, #0
	mov r0, r4
	cmpne r6, r1
	movne r0, #0
	mov r5, r4
	mov r2, r4
	cmp r0, #0
	bne _02209370
	ldr r0, _022093AC ; =0x7F000001
	cmp r6, r0
	movne r2, #0
_02209370:
	cmp r2, #0
	bne _02209388
	mov r0, r6
	bl ov4_022092E0
	cmp r0, #0
	moveq r5, #0
_02209388:
	cmp r5, #0
	bne _022093A0
	mov r0, r6
	bl ov4_0220931C
	cmp r0, #0
	moveq r4, #0
_022093A0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022093A8: .word Unk_ov4_0221DDF0
_022093AC: .word 0x7F000001
	arm_func_end ov4_02209330

	arm_func_start ov4_022093B0
ov4_022093B0: ; 0x022093B0
	mov ip, #0
_022093B4:
	ldrh r3, [r0], #2
	ldrh r2, [r1], #2
	cmp r3, r2
	movne r0, #1
	bxne lr
	add ip, ip, #1
	cmp ip, #3
	blt _022093B4
	mov r0, #0
	bx lr
	arm_func_end ov4_022093B0

	arm_func_start ov4_022093DC
ov4_022093DC: ; 0x022093DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _02209430 ; =0x0221A19C
	add r1, r7, #6
	mov r2, #6
	mov r4, r3
	bl MI_CpuCopy8
	mov r0, r7
	mov r3, r5
	add r1, r7, #6
	sub r2, r6, #6
	str r4, [sp]
	bl ov4_0221545C
	cmp r0, #0
	movlt r1, #1
	ldr r0, _02209434 ; =0x0221DDF0
	movge r1, #0
	strb r1, [r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02209430: .word 0x0221A19C
_02209434: .word Unk_ov4_0221DDF0
	arm_func_end ov4_022093DC

	arm_func_start ov4_02209438
ov4_02209438: ; 0x02209438
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02209620 ; =0x0221DDF0
	mov r7, r0
	ldr ip, [r4, #0x58]
	mov r6, r2
	cmp ip, #0
	ldrne r0, [r4, #0x5c]
	mov r5, r3
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x1c]
	add r0, r5, r0
	cmp r0, #8
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _02209624 ; =0x000005E4
	cmp r0, r2
	ldmhiia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _02209628 ; =0x0221A19C
	ldrb r4, [r6]
	ldrb r3, [r2]
	cmp r4, r3
	ldreqb r4, [r6, #1]
	ldreqb r3, [r2, #1]
	cmpeq r4, r3
	ldreqb r3, [r6, #2]
	ldreqb r2, [r2, #2]
	cmpeq r3, r2
	ldreqb r2, [r6, #6]
	cmpeq r2, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r6, #7]
	cmp r2, #0
	cmpne r2, #6
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _02209620 ; =0x0221DDF0
	add r0, r0, #9
	bic r0, r0, #1
	ldr r8, [r2, #0x28]
	mov r0, r0, lsl #0x10
	ldr lr, [r2, #0x28]
	ldr r4, [r2, #0x30]
	mov r3, r0, lsr #0x10
	cmp lr, r4
	add r4, r8, r0, lsr #16
	bhs _022094F8
	ldr r0, [r2, #0x30]
	cmp r0, r4
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
_022094F8:
	ldr r0, _02209620 ; =0x0221DDF0
	ldr r2, [r0, #0x5c]
	cmp r4, r2
	bne _0220951C
	ldr r0, [r0, #0x30]
	mov r4, #0
	cmp r0, #0
	bne _02209538
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220951C:
	ldr r2, [r0, #0x5c]
	cmp r4, r2
	bls _02209538
	ldr r0, [r0, #0x30]
	mov r4, r3
	cmp r0, r3
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
_02209538:
	ldr r0, _02209620 ; =0x0221DDF0
	ldr lr, [r0, #0x28]
	ldr r2, [r0, #0x5c]
	add lr, lr, r3
	cmp lr, r2
	bls _02209578
	ldr lr, [r0, #0x5c]
	ldr r2, [r0, #0x28]
	sub r2, lr, r2
	cmp r2, #2
	ldrhs r0, [r0, #0x28]
	movhs r2, #0
	strhsh r2, [ip, r0]
	ldr r0, _02209620 ; =0x0221DDF0
	mov r2, #0
	str r2, [r0, #0x28]
_02209578:
	ldr ip, _02209620 ; =0x0221DDF0
	mov r0, r1
	ldr lr, [ip, #0x58]
	ldr r1, [ip, #0x28]
	mov r2, #6
	strh r3, [lr, r1]
	ldr r3, [ip, #0x58]
	ldr r1, [ip, #0x28]
	add r1, r3, r1
	add r1, r1, #2
	bl MI_CpuCopy8
	ldr r1, _02209620 ; =0x0221DDF0
	mov r0, r7
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	mov r2, #6
	add r1, r3, r1
	add r1, r1, #8
	bl MI_CpuCopy8
	ldr r1, _02209620 ; =0x0221DDF0
	add r0, r6, #6
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	sub r2, r5, #6
	add r1, r3, r1
	add r1, r1, #0xe
	bl MI_CpuCopy8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldrne r2, [sp, #0x1c]
	cmpne r2, #0
	beq _02209614
	ldr r1, _02209620 ; =0x0221DDF0
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	add r1, r3, r1
	add r1, r1, #8
	add r1, r1, r5
	bl MI_CpuCopy8
_02209614:
	ldr r0, _02209620 ; =0x0221DDF0
	str r4, [r0, #0x28]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02209620: .word Unk_ov4_0221DDF0
_02209624: .word 0x000005E4
_02209628: .word 0x0221A19C
	arm_func_end ov4_02209438

	arm_func_start ov4_0220962C
ov4_0220962C: ; 0x0220962C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str ip, [sp, #4]
	bl ov4_02209438
	ldr r0, _02209680 ; =0x0221DDF0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x54]
	bl OS_IsThreadTerminated
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, pc}
	ldr r0, _02209680 ; =0x0221DDF0
	ldr r0, [r0, #0x54]
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02209680: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220962C

	arm_func_start ov4_02209684
ov4_02209684: ; 0x02209684
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	bl OS_DisableInterrupts
	ldr sb, _0220973C ; =0x0221DDF0
	mov r6, r0
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x28]
	cmp r1, r0
	bne _022096D8
	mov r5, #0
	ldr r8, _02209740 ; =0x021CCC80
	mov r4, r5
_022096B4:
	ldr r1, [r8, #4]
	mov r0, r5
	str r1, [sb, #0x54]
	bl OS_SleepThread
	str r4, [sb, #0x54]
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x28]
	cmp r1, r0
	beq _022096B4
_022096D8:
	mov r0, r6
	bl OS_RestoreInterrupts
	ldr r0, _0220973C ; =0x0221DDF0
	mov r3, #0
	ldr r5, [r0, #0x58]
	mov r1, r3
_022096F0:
	ldr r4, [r0, #0x5c]
	ldr r2, [r0, #0x30]
	sub r2, r4, r2
	cmp r2, #2
	strlo r3, [r0, #0x30]
	ldr r2, [r0, #0x30]
	ldrh r2, [r5, r2]
	cmp r2, #0
	streq r1, [r0, #0x30]
	cmp r2, #0
	beq _022096F0
	sub r1, r2, #2
	ldr r0, _0220973C ; =0x0221DDF0
	str r1, [r7, #0]
	ldr r1, [r0, #0x58]
	ldr r0, [r0, #0x30]
	add r0, r1, r0
	add r0, r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0220973C: .word Unk_ov4_0221DDF0
_02209740: .word Unk_021CCC80
	arm_func_end ov4_02209684

	arm_func_start ov4_02209744
ov4_02209744: ; 0x02209744
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _02209784 ; =0x0221DDF0
	ldr ip, [r1, #0x30]
	ldr r3, [r1, #0x58]
	ldr r2, [r1, #0x30]
	ldrh r2, [r3, r2]
	add r2, ip, r2
	str r2, [r1, #0x30]
	ldr r3, [r1, #0x30]
	ldr r2, [r1, #0x5c]
	cmp r3, r2
	movhs r2, #0
	strhs r2, [r1, #0x30]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02209784: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02209744

	arm_func_start ov4_02209788
ov4_02209788: ; 0x02209788
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02209840 ; =0x7F000001
	mov r4, r0
	cmp r5, r1
	ldrne r0, _02209844 ; =0x0221DDF0
	mov r7, #0
	ldrne r0, [r0, #0x50]
	cmpne r5, r0
	ldreq r7, _02209848 ; =0x0221E2D8
	beq _02209830
	mov r0, r5
	bl ov4_022092E0
	cmp r0, #0
	bne _022097D8
	mov r0, r5
	bl ov4_0220931C
	cmp r0, #0
	beq _022097E0
_022097D8:
	ldr r7, _0220984C ; =0x0221A194
	b _02209830
_022097E0:
	ldr r1, _02209850 ; =0x0221DE70
	mov r6, r7
_022097E8:
	ldr r0, [r1, #0]
	cmp r5, r0
	bne _02209820
	bl OS_GetTick
	mov r2, #0xc
	mul r3, r6, r2
	ldr r2, _02209850 ; =0x0221DE70
	mov r5, r0, lsr #0x10
	add r0, r2, r3
	ldr r2, _02209854 ; =0x0221DE7A
	orr r5, r5, r1, lsl #16
	strh r5, [r2, r3]
	add r7, r0, #4
	b _02209830
_02209820:
	add r6, r6, #1
	cmp r6, #8
	add r1, r1, #0xc
	blo _022097E8
_02209830:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02209840: .word 0x7F000001
_02209844: .word Unk_ov4_0221DDF0
_02209848: .word Unk_ov4_0221E2D8
_0220984C: .word 0x0221A194
_02209850: .word Unk_ov4_0221DE70
_02209854: .word 0x0221DE7A
	arm_func_end ov4_02209788

	arm_func_start ov4_02209858
ov4_02209858: ; 0x02209858
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x2a
	bl MI_CpuFill8
	add r0, sp, #0
	mov r1, #0xff
	mov r2, #6
	bl MI_CpuFill8
	ldr r0, _02209944 ; =0x0221E2D8
	add r1, sp, #6
	mov r2, #6
	bl MI_CpuCopy8
	mov r0, #1
	ldr r1, _02209948 ; =0x00000608
	strb r0, [sp, #0xf]
	strh r1, [sp, #0xc]
	strb r0, [sp, #0x15]
	mov r0, #8
	ldr r1, _0220994C ; =0x00000406
	strb r0, [sp, #0x10]
	strh r1, [sp, #0x12]
	ldr r0, _02209944 ; =0x0221E2D8
	add r1, sp, #0x16
	mov r2, #6
	bl MI_CpuCopy8
	ldr r0, _02209950 ; =0x0221DDF0
	mov r1, r4, lsr #0x10
	ldr r3, [r0, #0x50]
	mov r0, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r4, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r3, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, r3, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r4, lsl #8
	orr r0, r0, r4, asr #8
	strh r0, [sp, #0x1c]
	mov r0, r3, lsl #8
	orr r0, r0, r3, asr #8
	strh r0, [sp, #0x1e]
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	strh r0, [sp, #0x26]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	mov r2, #0
	strh r0, [sp, #0x28]
	add r0, sp, #0
	mov r1, #0x2a
	mov r3, r2
	bl ov4_022093DC
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02209944: .word Unk_ov4_0221E2D8
_02209948: .word 0x00000608
_0220994C: .word 0x00000406
_02209950: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02209858

	arm_func_start ov4_02209954
ov4_02209954: ; 0x02209954
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, #0
	ldr r4, _022099C0 ; =0x0221DDF0
	mov sb, r0
	mov r5, #0x64
	mov r6, r7
_0220996C:
	mov r0, sb
	bl ov4_02209858
	mov r8, r6
_02209978:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl OS_Sleep
	mov r0, sb
	bl ov4_02209788
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r8, r8, #1
	cmp r8, #0x14
	blo _02209978
	add r7, r7, #1
	cmp r7, #8
	blo _0220996C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022099C0: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02209954

	arm_func_start ov4_022099C4
ov4_022099C4: ; 0x022099C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _02209AF0 ; =0x7F000001
	mov r6, r1
	mov r7, r0
	cmp r6, r3
	ldrne r0, _02209AF4 ; =0x0221DDF0
	mov r5, r2
	ldrne r0, [r0, #0x50]
	cmpne r6, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov4_0220927C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov4_0220931C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	mov r0, r0, lsl #0x10
	ldr r2, _02209AF8 ; =0x0221DE70
	mov r4, r0, lsr #0x10
	mov r1, #0
_02209A28:
	ldr r0, [r2, #0]
	cmp r6, r0
	bne _02209A60
	mov r0, #0xc
	mul r5, r1, r0
	ldr r0, _02209AF8 ; =0x0221DE70
	ldr r3, _02209AFC ; =0x0221DE7A
	add r1, r0, r5
	mov r0, r7
	add r1, r1, #4
	mov r2, #6
	strh r4, [r3, r5]
	bl MI_CpuCopy8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02209A60:
	add r1, r1, #1
	cmp r1, #8
	add r2, r2, #0xc
	blo _02209A28
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	ldr r3, _02209AF8 ; =0x0221DE70
	mov r1, r2
	mov r5, r2
_02209A88:
	ldr r0, [r3, #0]
	cmp r0, #0
	moveq r1, r5
	beq _02209AC0
	ldrh r0, [r3, #0xa]
	add r3, r3, #0xc
	sub r0, r4, r0
	mov r0, r0, lsl #0x10
	cmp r2, r0, asr #16
	movlt r1, r5
	add r5, r5, #1
	movlt r2, r0, lsr #0x10
	cmp r5, #8
	blo _02209A88
_02209AC0:
	mov r0, #0xc
	mul r5, r1, r0
	ldr r3, _02209AF8 ; =0x0221DE70
	mov r0, r7
	add r1, r3, r5
	add r1, r1, #4
	mov r2, #6
	str r6, [r3, r5]
	bl MI_CpuCopy8
	ldr r0, _02209AFC ; =0x0221DE7A
	strh r4, [r0, r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02209AF0: .word 0x7F000001
_02209AF4: .word Unk_ov4_0221DDF0
_02209AF8: .word Unk_ov4_0221DE70
_02209AFC: .word 0x0221DE7A
	arm_func_end ov4_022099C4

	arm_func_start ov4_02209B00
ov4_02209B00: ; 0x02209B00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldrh r5, [sp, #0x1c]
	ldr r4, [sp, #0x18]
	mov r8, r0
	mov r0, r5, lsl #8
	orr ip, r0, r5, asr #8
	mov r0, r4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	strh ip, [r8, #-2]
	bl ov4_0220931C
	cmp r0, #0
	bne _02209B74
	mov r0, r4
	bl ov4_022092BC
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl ov4_02209788
	cmp r0, #0
	bne _02209B5C
	mov r0, r4
	bl ov4_02209954
_02209B5C:
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r8, #0xe
	mov r2, #6
	bl MI_CpuCopy8
	b _02209BA4
_02209B74:
	mov r0, #1
	strb r0, [r8, #-0xe]
	mov r1, #0
	mov r0, r4, lsr #0x10
	strb r1, [r8, #-0xd]
	mov r1, #0x5e
	strb r1, [r8, #-0xc]
	and r0, r0, #0x7f
	strb r0, [r8, #-0xb]
	mov r0, r4, lsr #8
	strb r0, [r8, #-0xa]
	strb r4, [r8, #-9]
_02209BA4:
	ldr r0, _02209BCC ; =0x0221E2D8
	sub r1, r8, #8
	mov r2, #6
	bl MI_CpuCopy8
	mov r2, r6
	mov r3, r5
	sub r0, r8, #0xe
	add r1, r7, #0xe
	bl ov4_022093DC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02209BCC: .word Unk_ov4_0221E2D8
	arm_func_end ov4_02209B00

	arm_func_start ov4_02209BD0
ov4_02209BD0: ; 0x02209BD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r5, r3
	add r1, r7, #0x14
	add r1, r1, r5
	mov r1, r1, lsl #0x10
	ldr r3, [sp, #0x24]
	mov r4, r1, lsr #0x10
	mov r1, r3, lsl #0x10
	mov r3, r4, lsl #8
	orr r3, r3, r4, asr #8
	mov r8, r0
	mov r1, r1, lsr #0x10
	mov r0, r1, lsl #8
	strh r3, [r8, #-0x12]
	orr r0, r0, r1, asr #8
	strh r0, [r8, #-0xe]
	mov r3, #0
	sub r0, r8, #0x14
	mov r1, #0x14
	mov r6, r2
	strh r3, [r8, #-0xa]
	ldr r4, [sp, #0x20]
	bl ov4_02209210
	mov r2, r0, lsl #8
	ldr r1, _02209CE8 ; =0x7F000001
	orr r0, r2, r0, asr #8
	strh r0, [r8, #-0xa]
	cmp r4, r1
	ldrne r0, _02209CEC ; =0x0221DDF0
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _02209C78
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	mov ip, #0x800
	sub r0, r8, #0x14
	add r1, r7, #0x14
	str ip, [sp, #4]
	bl ov4_02209B00
_02209C78:
	ldr r0, _02209CE8 ; =0x7F000001
	cmp r4, r0
	ldrne r0, _02209CEC ; =0x0221DDF0
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _02209CA4
	mov r0, r4
	bl ov4_0220931C
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02209CA4:
	ldr r0, _02209CF0 ; =0x0221A19C
	sub r1, r8, #0x1c
	mov r2, #8
	bl MI_CpuCopy8
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _02209CF4 ; =0x0221E2D8
	str r6, [sp]
	mov r1, r0
	str r5, [sp, #4]
	sub r2, r8, #0x1c
	add r3, r7, #0x1c
	bl ov4_02209438
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02209CE8: .word 0x7F000001
_02209CEC: .word Unk_ov4_0221DDF0
_02209CF0: .word 0x0221A19C
_02209CF4: .word Unk_ov4_0221E2D8
	arm_func_end ov4_02209BD0

	arm_func_start ov4_02209CF8
ov4_02209CF8: ; 0x02209CF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov r0, #0x45
	strb r0, [sl, #-0x14]
	mov r4, #0
	ldr r7, _02209EE8 ; =0x0221DDF0
	strb r4, [sl, #-0x13]
	ldrh r0, [r7, #6]
	ldr r6, [sp, #0x30]
	ldrb r5, [sp, #0x34]
	add r0, r0, #1
	strh r0, [r7, #6]
	ldrh fp, [r7, #6]
	mov r0, r6, lsr #0x10
	mov r8, #0x80
	mov sb, fp, lsl #8
	orr sb, sb, fp, asr #8
	strh sb, [sl, #-0x10]
	strb r8, [sl, #-0xc]
	strb r5, [sl, #-0xb]
	ldr r8, [r7, #0x50]
	mov r5, r0, lsl #0x10
	mov r0, r8, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r8, lsl #8
	orr r0, r0, r8, asr #8
	strh r0, [sl, #-8]
	ldr r0, [r7, #0x50]
	mov r8, r5, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r5, r7, lsl #8
	mov r0, r6, lsl #0x10
	orr sb, r5, r7, asr #8
	mov r7, r8, lsl #8
	mov r5, r0, lsr #0x10
	mov r0, r5, lsl #8
	strh sb, [sl, #-6]
	orr r7, r7, r8, asr #8
	ldr fp, _02209EEC ; =0x000005C8
	mov sb, r1
	strh r7, [sl, #-4]
	orr r0, r0, r5, asr #8
	mov r8, r2
	mov r7, r3
	strh r0, [sl, #-2]
	cmp sb, fp
	bls _02209E64
	mov r5, sl
	bls _02209E08
_02209DC8:
	mov r0, sl
	mov r1, #0
	mov r2, r5
	mov r3, fp
	str r6, [sp]
	orr ip, r4, #0x2000
	str ip, [sp, #4]
	bl ov4_02209BD0
	add r1, r4, #0xb9
	add r0, r5, #0x1c8
	sub sb, sb, fp
	mov r1, r1, lsl #0x10
	cmp sb, fp
	add r5, r0, #0x400
	mov r4, r1, lsr #0x10
	bhi _02209DC8
_02209E08:
	cmp sb, #0
	beq _02209E64
	cmp r7, #0
	mov r1, #0
	beq _02209E3C
	mov r2, r5
	mov r0, sl
	mov r3, sb
	str r6, [sp]
	orr r5, r4, #0x2000
	str r5, [sp, #4]
	bl ov4_02209BD0
	b _02209E54
_02209E3C:
	str r6, [sp]
	mov r0, sl
	mov r2, r5
	mov r3, sb
	str r4, [sp, #4]
	bl ov4_02209BD0
_02209E54:
	add r0, r4, sb, lsr #3
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov sb, #0
_02209E64:
	ldr fp, _02209EEC ; =0x000005C8
	add r0, sb, r7
	cmp r0, fp
	bls _02209EB8
_02209E74:
	sub r5, fp, sb
	mov r1, sb
	mov r0, sl
	mov r2, r8
	mov r3, r5
	str r6, [sp]
	orr sb, r4, #0x2000
	str sb, [sp, #4]
	bl ov4_02209BD0
	add r0, r4, #0xb9
	sub r7, r7, r5
	mov r0, r0, lsl #0x10
	mov sb, #0
	cmp r7, fp
	add r8, r8, r5
	mov r4, r0, lsr #0x10
	bhi _02209E74
_02209EB8:
	adds r0, sb, r7
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [sp]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl ov4_02209BD0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02209EE8: .word Unk_ov4_0221DDF0
_02209EEC: .word 0x000005C8
	arm_func_end ov4_02209CF8

	arm_func_start ov4_02209EF0
ov4_02209EF0: ; 0x02209EF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	ldr r4, [r5, #0x4c]
	mov r6, r1
	mov r1, #8
	ldr r3, _02209F98 ; =0x0221DDF0
	ldr r2, _02209F9C ; =0x021CCC80
	strh r1, [r4, #0x22]
	ldr r2, [r2, #4]
	ldrh lr, [r3, #4]
	mov r7, r0
	strh r2, [r4, #0x26]
	mov r2, #0
	strh r2, [r4, #0x24]
	strh lr, [r5, #0xa]
	add ip, lr, #1
	add r0, r4, #0x22
	strh ip, [r3, #4]
	strh lr, [r4, #0x28]
	bl ov4_02209140
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl ov4_02209140
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov4_022091F4
	mov r2, r7
	mov r3, r6
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #0x24]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0x22
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #8
	bl ov4_02209CF8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02209F98: .word Unk_ov4_0221DDF0
_02209F9C: .word Unk_021CCC80
	arm_func_end ov4_02209EF0

	arm_func_start ov4_02209FA0
ov4_02209FA0: ; 0x02209FA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r7, _0220A0D8 ; =0x0221DDF0
	mov r5, r2
	ldr r2, [r7, #0x50]
	mov r6, r1
	mov r1, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r3, [r5, #0x4c]
	mov r1, r2, lsl #8
	add r4, r3, #0x22
	orr r1, r1, r2, asr #8
	strh r1, [r4, #-0xc]
	ldr r1, [r7, #0x50]
	add r2, r6, #8
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-0xa]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-8]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r7, r1, r7, asr #8
	mov r1, r2, lsl #8
	strh r7, [r4, #-6]
	mov r7, #0x1100
	strh r7, [r4, #-4]
	orr r1, r1, r2, asr #8
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r7, r0
	sub r0, r4, #0xc
	strh r1, [r4, #-2]
	ldrh lr, [r5, #0x18]
	mov r2, #0
	mov r1, #0x14
	mov ip, lr, lsl #8
	orr ip, ip, lr, asr #8
	strh ip, [r4, #2]
	ldrh lr, [r5, #0xa]
	mov ip, lr, lsl #8
	orr ip, ip, lr, asr #8
	strh ip, [r3, #0x22]
	strh r2, [r4, #6]
	bl ov4_02209140
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl ov4_02209140
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov4_022091F4
	mov r2, r7
	mov r3, r6
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #6]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	mov r1, #8
	bl ov4_02209CF8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220A0D8: .word Unk_ov4_0221DDF0
	arm_func_end ov4_02209FA0

	arm_func_start ov4_0220A0DC
ov4_0220A0DC: ; 0x0220A0DC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r7, r2
	ldrb r2, [r7, #8]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov r6, r3
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _0220A340 ; =0x021CCC80
	ldr r1, _0220A344 ; =0x0221E058
	ldr r0, [r0, #4]
	cmp r0, r1
	ldreq r4, _0220A348 ; =0x0221E302
	ldrne r0, [r7, #0x4c]
	addne r4, r0, #0x22
	ldr r0, _0220A34C ; =0x0221DDF0
	ands r2, r6, #2
	movne r5, #0x18
	moveq r5, #0x14
	add r1, r5, r8
	ldr sl, [r0, #0x50]
	mov r3, r1, lsl #0x10
	mov r1, sl, lsr #0x10
	mov r1, r1, lsl #0x10
	mov sl, r1, lsr #0x10
	mov r1, sl, lsl #8
	orr r1, r1, sl, asr #8
	strh r1, [r4, #-0xc]
	mov r1, r3, lsr #0x10
	ldr sl, [r0, #0x50]
	mov lr, r1, lsl #8
	mov r3, sl, lsl #0x10
	mov sl, r3, lsr #0x10
	mov r3, sl, lsl #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-0xa]
	ldr r3, [r7, #0x1c]
	orr r1, lr, r1, asr #8
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	mov sl, r3, lsr #0x10
	mov r3, sl, lsl #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-8]
	ldr r3, [r7, #0x1c]
	mov ip, r5, lsr #2
	mov r3, r3, lsl #0x10
	mov sl, r3, lsr #0x10
	mov r3, sl, lsl #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-6]
	mov r3, #0x600
	strh r3, [r4, #-4]
	strh r1, [r4, #-2]
	ldrh lr, [r7, #0xa]
	mov r3, ip, lsl #4
	cmp r2, #0
	mov r1, lr, lsl #8
	orr r1, r1, lr, asr #8
	strh r1, [r4]
	ldrh ip, [r7, #0x18]
	mov r1, ip, lsl #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #2]
	ldr r1, [r7, #0x28]
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	mov r1, ip, lsl #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #4]
	ldr r1, [r7, #0x28]
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	mov r1, ip, lsl #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #6]
	ldr r1, [r7, #0x24]
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	mov r1, ip, lsl #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #8]
	ldr r1, [r7, #0x24]
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	mov r1, ip, lsl #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #0xa]
	strb r3, [r4, #0xc]
	strb r6, [r4, #0xd]
	ldr r3, [r7, #0x3c]
	ldr r1, [r7, #0x44]
	sub r1, r3, r1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r4, #0xe]
	mov r1, #0
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	beq _0220A2C0
	ldrh r1, [r0, #2]
	add r1, r1, #0x2040000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	strh r1, [r4, #0x14]
	ldrh r0, [r0, #2]
	add r0, r0, #0x2040000
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x16]
_0220A2C0:
	sub r0, r4, #0xc
	add r1, r5, #0xc
	mov r2, #0
	bl ov4_02209140
	mov r2, r0
	mov r0, sb
	mov r1, r8
	bl ov4_02209140
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov4_022091F4
	mov r3, r0, lsl #8
	orr r0, r3, r0, asr #8
	strh r0, [r4, #0x10]
	mov r0, r4
	ldr r4, [r7, #0x1c]
	mov r3, #6
	str r4, [sp]
	str r3, [sp, #4]
	mov r1, r5
	mov r2, sb
	mov r3, r8
	bl ov4_02209CF8
	ldr r0, [r7, #0x28]
	tst r6, #3
	add r0, r0, r8
	str r0, [r7, #0x28]
	ldrne r0, [r7, #0x28]
	addne r0, r0, #1
	strne r0, [r7, #0x28]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0220A340: .word Unk_021CCC80
_0220A344: .word Unk_ov4_0221E058
_0220A348: .word 0x0221E302
_0220A34C: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220A0DC

	arm_func_start ov4_0220A350
ov4_0220A350: ; 0x0220A350
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #0x200
	add r0, r4, #8
	add r1, r4, #0x12
	mov r2, #0xa
	strh r3, [r4, #6]
	bl MI_CpuCopy8
	ldr r0, _0220A3F0 ; =0x0221E2D8
	add r1, r4, #8
	mov r2, #6
	bl MI_CpuCopy8
	ldr r3, _0220A3F4 ; =0x0221DDF0
	add r0, r4, #0x12
	ldr r2, [r3, #0x50]
	sub r1, r4, #0xe
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov ip, r2, lsr #0x10
	mov r2, ip, lsl #8
	orr r2, r2, ip, asr #8
	strh r2, [r4, #0xe]
	ldr r3, [r3, #0x50]
	mov r2, #6
	mov r3, r3, lsl #0x10
	mov ip, r3, lsr #0x10
	mov r3, ip, lsl #8
	orr r3, r3, ip, asr #8
	strh r3, [r4, #0x10]
	bl MI_CpuCopy8
	ldr r0, _0220A3F0 ; =0x0221E2D8
	sub r1, r4, #8
	mov r2, #6
	bl MI_CpuCopy8
	sub r0, r4, #0xe
	mov r1, #0x2a
	mov r2, #0
	mov r3, r2
	bl ov4_022093DC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220A3F0: .word Unk_ov4_0221E2D8
_0220A3F4: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220A350

	arm_func_start ov4_0220A3F8
ov4_0220A3F8: ; 0x0220A3F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	cmp r1, #0x1c
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0220A530 ; =0x0221E2D8
	add r0, r6, #8
	bl ov4_022093B0
	cmp r0, #0
	ldrne r0, _0220A534 ; =0x0221DDF0
	ldrne r0, [r0, #0x50]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r6]
	cmp r0, #0x100
	ldreqh r0, [r6, #2]
	cmpeq r0, #8
	ldreqh r1, [r6, #4]
	ldreq r0, _0220A538 ; =0x00000406
	cmpeq r1, r0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #6]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r4, #1
	cmpne r4, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r5, [r6, #0x10]
	ldrh r3, [r6, #0xe]
	ldrh lr, [r6, #0x1a]
	mov r0, r5, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r5, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	ldrh ip, [r6, #0x18]
	ldr r2, _0220A534 ; =0x0221DDF0
	mov r3, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldr r0, [r2, #0x50]
	orr r1, r1, r3, lsl #16
	mov r3, ip, lsl #8
	cmp r1, r0
	moveq r5, #1
	mov r2, lr, lsl #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	mov r2, ip, lsl #0x10
	mov r3, r3, lsl #0x10
	mov ip, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, ip, lsl #16
	movne r5, #0
	cmp r0, r2
	moveq r7, #1
	movne r7, #0
	cmp r5, #0
	bne _0220A4F4
	mov r2, r7
	add r0, r6, #8
	bl ov4_022099C4
_0220A4F4:
	cmp r4, #1
	bne _0220A510
	cmp r7, #0
	beq _0220A510
	mov r0, r6
	bl ov4_0220A350
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220A510:
	cmp r4, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r5, #0
	ldrne r0, _0220A534 ; =0x0221DDF0
	movne r1, #1
	strneb r1, [r0, #1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220A530: .word Unk_ov4_0221E2D8
_0220A534: .word Unk_ov4_0221DDF0
_0220A538: .word 0x00000406
	arm_func_end ov4_0220A3F8

	arm_func_start ov4_0220A53C
ov4_0220A53C: ; 0x0220A53C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldrh r4, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r5, r1
	mov r0, r4, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r3, lsl #16
	mov r4, r2
	bl ov4_022092BC
	movs r7, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_02209788
	cmp r0, #0
	bne _0220A5A8
	mov r0, r7
	bl ov4_02209858
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220A5A8:
	mov r2, #0
	strb r2, [r5]
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov4_02209210
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r5, #2]
	ldrh ip, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r2, #0
	mov r0, ip, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r6, r0, r3, lsl #16
	mov r0, r5
	mov r1, r4
	mov r3, r2
	str r6, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl ov4_02209CF8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220A53C

	arm_func_start ov4_0220A620
ov4_0220A620: ; 0x0220A620
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	ldr r1, _0220A71C ; =0x021CCC80
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0220A710
_0220A648:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r3, [r4]
	cmpne r3, #0
	beq _0220A704
	ldrb r0, [r4, #8]
	cmp r0, #0xb
	ldreqh r2, [r7, #4]
	moveq r0, r3, lsl #0x10
	cmpeq r2, r0, lsr #16
	ldreqh r2, [r4, #0xa]
	ldreqh r0, [r7, #6]
	cmpeq r2, r0
	ldreq r0, [r4, #0x44]
	cmpeq r0, #0
	bne _0220A704
	ldrh lr, [r8, #0xe]
	ldrh ip, [r8, #0xc]
	ldr r0, [r4, #0x1c]
	mov r2, lr, lsl #8
	mov r3, ip, lsl #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	mov r2, ip, lsl #0x10
	mov r3, r3, lsl #0x10
	mov ip, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, ip, lsl #16
	cmp r0, r2
	bne _0220A704
	ldr r1, [r4, #0x3c]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x44]
	strls r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	add r0, r7, #8
	bl MI_CpuCopy8
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _0220A710
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl OS_WakeupThreadDirect
	b _0220A710
_0220A704:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _0220A648
_0220A710:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220A71C: .word Unk_021CCC80
	arm_func_end ov4_0220A620

	arm_func_start ov4_0220A720
ov4_0220A720: ; 0x0220A720
	cmp r0, #0
	mvnne r2, #0
	cmpne r0, r2
	cmpne r1, #0
	cmpne r1, r2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov4_0220A720

	arm_func_start ov4_0220A740
ov4_0220A740: ; 0x0220A740
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl ov4_02209210
	ldr r1, _0220A80C ; =0x0000FFFF
	cmp r0, r1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r6, #0x12]
	ldrh r8, [r6, #0x10]
	ldrh r7, [r6, #0xe]
	ldrh lr, [r6, #0xc]
	mov r2, r8, lsl #8
	orr r2, r2, r8, asr #8
	mov ip, lr, lsl #8
	mov r2, r2, lsl #0x10
	mov r3, r7, lsl #8
	orr lr, ip, lr, asr #8
	mov r1, r0, lsl #8
	orr ip, r3, r7, asr #8
	orr r3, r1, r0, asr #8
	mov r0, lr, lsl #0x10
	mov r1, ip, lsl #0x10
	mov ip, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r1, r3, lsr #0x10
	orr r0, r0, ip, lsl #16
	orr r1, r1, r2, lsl #16
	bl ov4_0220A720
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r5]
	cmp r0, #0
	beq _0220A7E4
	cmp r0, #8
	beq _0220A7F8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220A7E4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220A620
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220A7F8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220A53C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220A80C: .word 0x0000FFFF
	arm_func_end ov4_0220A740

	arm_func_start ov4_0220A810
ov4_0220A810: ; 0x0220A810
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0220A8E0 ; =0x021CCC80
	ldr ip, [r2, #8]
	cmp ip, #0
	beq _0220A8D8
_0220A824:
	ldr r3, [ip, #0xa4]
	cmp r3, #0
	ldrne r2, [r3]
	cmpne r2, #0
	beq _0220A8CC
	ldrb r2, [r3, #8]
	cmp r2, #1
	bne _0220A8CC
	ldrh r5, [r1, #2]
	ldrh r4, [r3, #0xa]
	mov r2, r5, lsl #8
	orr r2, r2, r5, asr #8
	mov r2, r2, lsl #0x10
	cmp r4, r2, lsr #16
	bne _0220A8CC
	ldrh r5, [r3, #0x18]
	cmp r5, #0
	beq _0220A884
	ldrh r4, [r1]
	mov r2, r4, lsl #8
	orr r2, r2, r4, asr #8
	mov r2, r2, lsl #0x10
	cmp r5, r2, lsr #16
	bne _0220A8CC
_0220A884:
	ldr r2, [r3, #0x1c]
	cmp r2, #0
	beq _0220A8C4
	ldrh r6, [r0, #0xe]
	ldrh r5, [r0, #0xc]
	mov r4, r6, lsl #8
	mov lr, r5, lsl #8
	orr lr, lr, r5, asr #8
	orr r4, r4, r6, asr #8
	mov lr, lr, lsl #0x10
	mov r4, r4, lsl #0x10
	mov lr, lr, lsr #0x10
	mov r4, r4, lsr #0x10
	orr r4, r4, lr, lsl #16
	cmp r2, r4
	bne _0220A8CC
_0220A8C4:
	mov r0, r3
	ldmia sp!, {r4, r5, r6, pc}
_0220A8CC:
	ldr ip, [ip, #0x68]
	cmp ip, #0
	bne _0220A824
_0220A8D8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220A8E0: .word Unk_021CCC80
	arm_func_end ov4_0220A810

	arm_func_start ov4_0220A8E4
ov4_0220A8E4: ; 0x0220A8E4
	stmfd sp!, {r4, r5, r6, lr}
	ldrb r4, [r2, #8]
	mov r3, #0
	mov r5, r3
	cmp r4, #0xa
	cmpne r4, #0xb
	movne r5, #1
	mov ip, r3
	mov r6, r3
	cmp r5, #0
	beq _0220A92C
	ldrh lr, [r1, #2]
	ldrh r5, [r2, #0xa]
	mov r4, lr, lsl #8
	orr r4, r4, lr, asr #8
	mov lr, r4, lsl #0x10
	cmp r5, lr, lsr #16
	moveq r6, #1
_0220A92C:
	cmp r6, #0
	beq _0220A950
	ldrh lr, [r1]
	ldrh r4, [r2, #0x18]
	mov r1, lr, lsl #8
	orr r1, r1, lr, asr #8
	mov r1, r1, lsl #0x10
	cmp r4, r1, lsr #16
	moveq ip, #1
_0220A950:
	cmp ip, #0
	beq _0220A990
	ldrh lr, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	ldr ip, [r2, #0x1c]
	mov r1, lr, lsl #8
	mov r0, r4, lsl #8
	orr r2, r1, lr, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	cmp ip, r0
	moveq r3, #1
_0220A990:
	mov r0, r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220A8E4

	arm_func_start ov4_0220A998
ov4_0220A998: ; 0x0220A998
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0220A9F8 ; =0x021CCC80
	mov r7, r0
	ldr r5, [r2, #8]
	mov r6, r1
	cmp r5, #0
	beq _0220A9F0
_0220A9B4:
	ldr r4, [r5, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _0220A9E4
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl ov4_0220A8E4
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0220A9E4:
	ldr r5, [r5, #0x68]
	cmp r5, #0
	bne _0220A9B4
_0220A9F0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220A9F8: .word Unk_021CCC80
	arm_func_end ov4_0220A998

	arm_func_start ov4_0220A9FC
ov4_0220A9FC: ; 0x0220A9FC
	mov r2, #0x218
	strh r2, [r1, #0x2e]
	ldrb r2, [r0, #0xc]
	add r3, r0, #0x14
	and r2, r2, #0xf0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	subs r0, r0, #0x14
	sub ip, r0, #1
	bxeq lr
_0220AA28:
	ldrb r0, [r3], #1
	cmp r0, #0
	bxeq lr
	cmp r0, #1
	beq _0220AA70
	cmp r0, #2
	bne _0220AA60
	ldrb r2, [r3, #1]
	ldrb r0, [r3, #2]
	add r3, r3, #3
	sub ip, ip, #3
	orr r0, r0, r2, lsl #8
	strh r0, [r1, #0x2e]
	b _0220AA70
_0220AA60:
	ldrb r0, [r3]
	sub r0, r0, #1
	sub ip, ip, r0
	add r3, r3, r0
_0220AA70:
	cmp ip, #0
	sub ip, ip, #1
	bne _0220AA28
	bx lr
	arm_func_end ov4_0220A9FC

	arm_func_start ov4_0220AA80
ov4_0220AA80: ; 0x0220AA80
	stmfd sp!, {r3, lr}
	bl ov4_022092BC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov4_02209788
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0220AA80

	arm_func_start ov4_0220AA9C
ov4_0220AA9C: ; 0x0220AA9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x1c]
	mov r5, r1
	mov r4, r2
	bl ov4_0220AA80
	cmp r0, #0
	bne _0220AAD4
	ldr r0, _0220AB08 ; =0x021CCC80
	ldr r1, _0220AB0C ; =0x0221E058
	ldr r0, [r0, #4]
	cmp r0, r1
	beq _0220AAF4
_0220AAD4:
	mov r0, #0
	mov r1, r0
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl ov4_0220A0DC
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_0220AAF4:
	ldr r0, [r6, #0x1c]
	bl ov4_022092BC
	bl ov4_02209858
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0220AB08: .word Unk_021CCC80
_0220AB0C: .word Unk_ov4_0221E058
	arm_func_end ov4_0220AA9C

	arm_func_start ov4_0220AB10
ov4_0220AB10: ; 0x0220AB10
	ldr ip, _0220AB20 ; =ov4_0220AA9C
	mov r2, r1
	mov r1, #0x10
	bx ip
	; .align 2, 0
_0220AB20: .word ov4_0220AA9C
	arm_func_end ov4_0220AB10

	arm_func_start ov4_0220AB24
ov4_0220AB24: ; 0x0220AB24
	ldr ip, _0220AB34 ; =ov4_0220AA9C
	mov r2, r1
	mov r1, #0x11
	bx ip
	; .align 2, 0
_0220AB34: .word ov4_0220AA9C
	arm_func_end ov4_0220AB24

	arm_func_start ov4_0220AB38
ov4_0220AB38: ; 0x0220AB38
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0220AC68 ; =0x0221DF34
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x64
	mov r5, r3
	bl MI_CpuFill8
	ldrh r3, [r7, #2]
	ldr r0, _0220AC6C ; =0x0221DEF0
	ldr r2, _0220AC70 ; =0x0221DDF0
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r0, #0x4e]
	ldrh r3, [r7]
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r0, #0x5c]
	ldrh ip, [r8, #0xe]
	ldrh r3, [r8, #0xc]
	mov r0, ip, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r3, lsl #16
	str r0, [r2, #0x160]
	ldrb r0, [r7, #0xd]
	tst r0, #0x10
	beq _0220AC08
	ldrh r6, [r7, #0xa]
	ldrh r3, [r7, #8]
	mov r0, r4
	mov r1, r6, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r6, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r3, r1, r3, lsl #16
	mov r2, r5
	mov r1, #4
	str r3, [r4, #0x28]
	bl ov4_0220AA9C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220AC08:
	mov r0, #0
	str r0, [r4, #0x28]
	ldrh r3, [r7, #6]
	ldrh r2, [r7, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	add r1, r6, r0
	str r1, [r4, #0x24]
	ldrb r0, [r7, #0xd]
	mov r2, r5
	tst r0, #3
	addne r0, r1, #1
	strne r0, [r4, #0x24]
	mov r0, r4
	mov r1, #0x14
	bl ov4_0220AA9C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220AC68: .word Unk_ov4_0221DF34
_0220AC6C: .word 0x0221DEF0
_0220AC70: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220AB38

	arm_func_start ov4_0220AC74
ov4_0220AC74: ; 0x0220AC74
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r2, #3
	mov r6, r0
	mov r5, r1
	strb r2, [r4, #8]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x10]
	ldrh r2, [r6, #0x12]
	ldrh r3, [r6, #0x10]
	mov r0, r5
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	str r1, [r4, #0x14]
	ldrh r3, [r5]
	mov r1, r4
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x18]
	ldrh r3, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	mov r2, r6, lsl #8
	orr r2, r2, r6, asr #8
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r6, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r6, lsl #16
	str r2, [r4, #0x1c]
	ldrh r6, [r5, #6]
	ldrh r5, [r5, #4]
	mov r2, r6, lsl #8
	mov r3, r5, lsl #8
	orr r5, r3, r5, asr #8
	orr r3, r2, r6, asr #8
	mov r2, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r5, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r5, lsl #16
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov4_0220A9FC
	mov r0, r4
	mov r1, #0x12
	mov r2, #0
	bl ov4_0220AA9C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220AC74

	arm_func_start ov4_0220AD60
ov4_0220AD60: ; 0x0220AD60
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_0220A998
	movs r2, r0
	beq _0220ADE0
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _0220AD98
	mov r0, r6
	mov r1, r5
	bl ov4_0220AC74
	b _0220ADD8
_0220AD98:
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0220ADC4
	ldr r1, [r2, #0x28]
	mov r0, r6
	sub r3, r1, #1
	mov r1, r5
	str r3, [r2, #0x28]
	bl ov4_0220AC74
	b _0220ADD8
_0220ADC4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl ov4_0220AB38
_0220ADD8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_0220ADE0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220AD60

	arm_func_start ov4_0220ADE8
ov4_0220ADE8: ; 0x0220ADE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrh r0, [r4, #0x12]
	ldrh r8, [r4, #0x10]
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	mov ip, r8, lsl #8
	orr ip, ip, r8, asr #8
	mov r5, r6, lsl #8
	mov ip, ip, lsl #0x10
	mov lr, r7, lsl #8
	orr r6, r5, r6, asr #8
	mov r3, r0, lsl #8
	orr r5, lr, r7, asr #8
	orr lr, r3, r0, asr #8
	mov r0, r6, lsl #0x10
	mov r3, r5, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r3, lsr #0x10
	mov lr, lr, lsl #0x10
	orr r0, r0, r5, lsl #16
	mov ip, ip, lsr #0x10
	mov r3, lr, lsr #0x10
	mov r6, r1
	orr r1, r3, ip, lsl #16
	mov r5, r2
	bl ov4_0220A720
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov4_0220AD60
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl ov4_0220A810
	movs r2, r0
	beq _0220AE98
	mov r0, r4
	mov r1, r6
	bl ov4_0220AC74
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220AE98:
	bl OS_YieldThread
	mov r0, r4
	mov r1, r6
	bl ov4_0220A810
	movs r2, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl ov4_0220AC74
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_0220ADE8

	arm_func_start ov4_0220AEC0
ov4_0220AEC0: ; 0x0220AEC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r6, r2
	bl ov4_0220A998
	movs r4, r0
	beq _0220AEE8
	ldrb r0, [r4, #8]
	cmp r0, #2
	beq _0220AF00
_0220AEE8:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, #0
	bl ov4_0220AB38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220AF00:
	bl OS_YieldThread
	ldrh ip, [r5, #6]
	ldrh r3, [r5, #4]
	mov r0, r5
	mov r1, ip, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, ip, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldrh lr, [r5, #0xa]
	ldrh ip, [r5, #8]
	mov r1, r4
	mov r2, lr, lsl #8
	mov r3, ip, lsl #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	mov r2, ip, lsl #0x10
	mov r3, r3, lsl #0x10
	mov ip, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, ip, lsl #16
	str r2, [r4, #0x30]
	ldrh r3, [r5, #0xe]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x2c]
	bl ov4_0220A9FC
	mov r0, r4
	mov r1, #0
	bl ov4_0220AB10
	mov r0, #4
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl OS_WakeupThreadDirect
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220AEC0

	arm_func_start ov4_0220AFB8
ov4_0220AFB8: ; 0x0220AFB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	bl ov4_0220A998
	movs r5, r0
	bne _0220AFEC
	mov r0, r4
	mov r1, sb
	mov r2, r8
	mov r3, #0
	bl ov4_0220AB38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0220AFEC:
	ldrh r6, [sb, #0xa]
	ldrh r3, [sb, #8]
	ldr r2, [r5, #0x30]
	mov r0, r6, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r6, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r3, lsl #16
	sub r0, r1, r2
	ldrb r6, [sb, #0xd]
	cmp r0, #0
	strgt r1, [r5, #0x30]
	ldrh r7, [sb, #6]
	ldrh r3, [sb, #4]
	ldrb r2, [r5, #8]
	mov r0, r7, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r7, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	cmp r2, #4
	orr r1, r0, r3, lsl #16
	bne _0220B080
	ldr r0, [r5, #0x24]
	cmp r0, r1
	beq _0220B080
	mov r0, r5
	mov r1, #0
	bl ov4_0220AB10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0220B080:
	ldrh r1, [sb, #0xe]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0x2c]
	ldrb r0, [r5, #8]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0220B2AC
_0220B0A0: ; jump table
	b _0220B0C8 ; case 0
	b _0220B2AC ; case 1
	b _0220B0C8 ; case 2
	b _0220B0E0 ; case 3
	b _0220B10C ; case 4
	b _0220B2AC ; case 5
	b _0220B288 ; case 6
	b _0220B214 ; case 7
	b _0220B214 ; case 8
	b _0220B288 ; case 9
_0220B0C8:
	mov r0, r4
	mov r1, sb
	mov r2, r8
	mov r3, #0
	bl ov4_0220AB38
	b _0220B2C8
_0220B0E0:
	mov r0, #4
	strb r0, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0220B104
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	bl OS_WakeupThreadDirect
_0220B104:
	cmp r8, #0
	beq _0220B2C8
_0220B10C:
	ldr r0, [r5, #0x34]
	add r0, r0, #1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	cmp r8, r0
	movhi r7, #0
	movhi r8, r0
	movls r7, #1
	cmp r8, #0
	beq _0220B1A8
	bl OS_DisableInterrupts
	ldrb r1, [sb, #0xc]
	ldr ip, [r5, #0x40]
	ldr r3, [r5, #0x44]
	and r2, r1, #0xf0
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r4, r0
	mov r2, r8
	add r0, sb, r1, asr #2
	add r1, ip, r3
	bl MI_CpuCopy8
	ldr r1, [r5, #0x44]
	mov r0, r4
	add r1, r1, r8
	str r1, [r5, #0x44]
	ldr r1, [r5, #0x24]
	add r1, r1, r8
	str r1, [r5, #0x24]
	bl OS_RestoreInterrupts
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _0220B1A8
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	bl OS_WakeupThreadDirect
_0220B1A8:
	cmp r7, #0
	beq _0220B1FC
	tst r6, #1
	beq _0220B1FC
	mov r0, #6
	strb r0, [r5, #8]
	ldr r1, [r5, #0x24]
	mov r0, r5
	add r2, r1, #1
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov4_0220AB24
	cmp r8, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #2
	bne _0220B2C8
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	bl OS_WakeupThreadDirect
	b _0220B2C8
_0220B1FC:
	cmp r8, #0
	beq _0220B2C8
	mov r0, r5
	mov r1, #0
	bl ov4_0220AB10
	b _0220B2C8
_0220B214:
	tst r6, #1
	beq _0220B25C
	ldr r1, [r5, #0x24]
	add r0, r8, #1
	add r2, r1, r0
	mov r0, r5
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov4_0220AB10
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _0220B2C8
	str r1, [r5, #4]
	ldr r0, [r5, #0]
	bl OS_WakeupThreadDirect
	b _0220B2C8
_0220B25C:
	cmp r8, #0
	beq _0220B27C
	ldr r1, [r5, #0x24]
	mov r0, r5
	add r2, r1, r8
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov4_0220AB10
_0220B27C:
	mov r0, #8
	strb r0, [r5, #8]
	b _0220B2C8
_0220B288:
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _0220B2C8
	str r1, [r5, #4]
	ldr r0, [r5, #0]
	bl OS_WakeupThreadDirect
	b _0220B2C8
_0220B2AC:
	tst r6, #1
	ldrne r0, [r5, #0x24]
	mov r1, #0
	addne r0, r0, #1
	strne r0, [r5, #0x24]
	mov r0, r5
	bl ov4_0220AB10
_0220B2C8:
	bl OS_YieldThread
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_0220AFB8

	arm_func_start ov4_0220B2D0
ov4_0220B2D0: ; 0x0220B2D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl ov4_0220A998
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4, #8]
	cmp r1, #4
	beq _0220B364
	cmp r1, #7
	beq _0220B30C
	cmp r1, #8
	beq _0220B32C
	b _0220B384
_0220B30C:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov4_0220AB10
	mov r0, #9
	strb r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220B32C:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov4_0220AB10
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	bl OS_WakeupThreadDirect
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220B364:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov4_0220AB24
	mov r0, #6
	strb r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220B384:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #0
	bl ov4_0220AB38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220B2D0

	arm_func_start ov4_0220B39C
ov4_0220B39C: ; 0x0220B39C
	stmfd sp!, {r4, lr}
	bl ov4_0220A998
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	bl OS_YieldThread
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	cmp r0, #1
	ldmhiia sp!, {r4, pc}
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	bl OS_WakeupThreadDirect
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220B39C

	arm_func_start ov4_0220B3D8
ov4_0220B3D8: ; 0x0220B3D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #6
	bl ov4_0220922C
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	and r1, r0, #0xf0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	and r1, r2, #0x17
	cmp r1, #0x10
	sub r4, r4, r0, asr #2
	bgt _0220B450
	cmp r1, #0x10
	bge _0220B4A8
	cmp r1, #2
	bgt _0220B4D0
	cmp r1, #1
	blt _0220B4D0
	beq _0220B4BC
	cmp r1, #2
	beq _0220B470
	b _0220B4D0
_0220B450:
	cmp r1, #0x12
	bgt _0220B4D0
	cmp r1, #0x11
	blt _0220B4D0
	beq _0220B4A8
	cmp r1, #0x12
	beq _0220B48C
	b _0220B4D0
_0220B470:
	tst r2, #0x28
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220ADE8
	ldmia sp!, {r4, r5, r6, pc}
_0220B48C:
	tst r2, #0x28
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220AEC0
	ldmia sp!, {r4, r5, r6, pc}
_0220B4A8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220AFB8
	ldmia sp!, {r4, r5, r6, pc}
_0220B4BC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_0220B2D0
	ldmia sp!, {r4, r5, r6, pc}
_0220B4D0:
	tst r2, #4
	mov r0, r6
	mov r1, r5
	beq _0220B4E8
	bl ov4_0220B39C
	ldmia sp!, {r4, r5, r6, pc}
_0220B4E8:
	mov r2, r4
	mov r3, #0
	bl ov4_0220AB38
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220B3D8

	arm_func_start ov4_0220B4F8
ov4_0220B4F8: ; 0x0220B4F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r1
	ldrh r1, [r7, #6]
	mov r8, r0
	mov r6, r2
	cmp r1, #0
	beq _0220B530
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, #0x11
	bl ov4_0220922C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0220B530:
	bl OS_DisableInterrupts
	ldr r1, _0220B700 ; =0x021CCC80
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0220B6F4
	mvn ip, #0
_0220B54C:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _0220B6E8
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _0220B6E8
	ldrh r3, [r7, #2]
	ldrh r2, [r4, #0xa]
	mov r0, r3, lsl #8
	orr r0, r0, r3, asr #8
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	bne _0220B6E8
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	beq _0220B5AC
	ldrh r2, [r7]
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	cmp r3, r0, lsr #16
	bne _0220B6E8
_0220B5AC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	cmpne r0, ip
	beq _0220B5F0
	ldrh sb, [r8, #0xe]
	ldrh lr, [r8, #0xc]
	mov r2, sb, lsl #8
	mov r3, lr, lsl #8
	orr lr, r3, lr, asr #8
	orr r3, r2, sb, asr #8
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov lr, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, lr, lsl #16
	cmp r0, r2
	bne _0220B6E8
_0220B5F0:
	ldrh r3, [r8, #0x12]
	ldrh r2, [r8, #0x10]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0220B66C
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x1c]
	ldrh r1, [r7]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x18]
_0220B66C:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _0220B6F4
	ldr r1, [r4, #0x3c]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x44]
	strls r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	add r0, r7, #8
	bl MI_CpuCopy8
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _0220B6BC
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl OS_WakeupThreadDirect
	b _0220B6F4
_0220B6BC:
	ldr r3, [r4, #0x38]
	cmp r3, #0
	beq _0220B6F4
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	mov r2, r4
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x44]
	b _0220B6F4
_0220B6E8:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _0220B54C
_0220B6F4:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0220B700: .word Unk_021CCC80
	arm_func_end ov4_0220B4F8

	arm_func_start ov4_0220B704
ov4_0220B704: ; 0x0220B704
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov sl, r0
	str r6, [r1, #0]
	ldrh r3, [sl, #6]
	str r1, [sp]
	ldr r2, _0220B9C0 ; =0x00003FFF
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #8]
	tst r1, r2
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r3, [sl, #0xe]
	ldrh r2, [sl, #0xc]
	ldrb r4, [sl]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r3, r4, lsl #0x1c
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldrh r4, [sl, #4]
	ldr r7, _0220B9C4 ; =0x0221E118
	mov r0, r6
	mov r5, r3, lsr #0x1a
	orr sb, r1, r2, lsl #16
_0220B788:
	ldrh r2, [r7, #4]
	cmp r2, #0
	beq _0220B7A8
	ldr r1, [r7, #0]
	cmp r1, sb
	ldreqh r1, [r7, #6]
	cmpeq r1, r4
	beq _0220B7C4
_0220B7A8:
	add r0, r0, #1
	cmp r2, #0
	cmpeq r6, #0
	moveq r6, r7
	cmp r0, #8
	add r7, r7, #0x38
	blo _0220B788
_0220B7C4:
	ldrh r2, [sl, #2]
	cmp r0, #8
	ldr r1, _0220B9C8 ; =0x00001FFF
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	rsb r0, r5, r0, lsr #16
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	and fp, r0, r1
	ldr r0, [sp, #4]
	add r8, r0, fp, lsl #3
	bne _0220B880
	cmp r6, #0
	beq _0220B808
	cmp r8, #0x1000
	bls _0220B814
_0220B808:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220B814:
	ldr r1, _0220B9CC ; =0x0221DDF0
	add r0, r5, #0xe
	ldr r1, [r1, #0x14]
	add r0, r0, #0x1000
	mov r7, r6
	blx r1
	cmp r0, #0
	str r0, [r6, #0x34]
	addeq sp, sp, #0xc
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [r6]
	strh r4, [r6, #6]
	strh r0, [r6, #8]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r6, #0x2c]
	ldr r1, [r6, #0x34]
	mov r0, sl
	add r1, r1, #0xe
	add r1, r1, r5
	str r1, [r6, #0x30]
	ldr r1, [r6, #0x34]
	mov r2, r5
	add r1, r1, #0xe
	bl MI_CpuCopy8
_0220B880:
	ldrh r0, [r7, #4]
	cmp r0, #8
	beq _0220B894
	cmp r8, #0x1000
	bls _0220B8B8
_0220B894:
	ldr r1, _0220B9CC ; =0x0221DDF0
	mov r0, #0
	strh r0, [r7, #4]
	ldr r0, [r7, #0x34]
	ldr r1, [r1, #0x40]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220B8B8:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r0, #7
	ldr r0, [sp, #8]
	add r3, fp, r1, lsr #3
	tst r0, #0x2000
	streqh r8, [r7, #0xa]
	streqh r3, [r7, #8]
	ldrh r1, [r7, #4]
	add r0, sl, r5
	add r1, r7, r1, lsl #1
	strh fp, [r1, #0xc]
	ldrh r1, [r7, #4]
	add r1, r7, r1, lsl #1
	strh r3, [r1, #0x1c]
	ldrh r1, [r7, #4]
	add r1, r1, #1
	strh r1, [r7, #4]
	ldr r1, [r7, #0x30]
	add r1, r1, fp, lsl #3
	bl MI_CpuCopy8
	ldrh r4, [r7, #8]
	cmp r4, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r3, [r7, #4]
	mov r6, #0
	mov r5, r6
	cmp r3, #0
	bls _0220B968
	mov r0, r6
_0220B938:
	add r2, r7, r5, lsl #1
	ldrh r1, [r2, #0xc]
	cmp r1, r6
	bhi _0220B95C
	ldrh r1, [r2, #0x1c]
	cmp r6, r1
	movlo r6, r1
	movlo r5, r0
	blo _0220B960
_0220B95C:
	add r5, r5, #1
_0220B960:
	cmp r5, r3
	blo _0220B938
_0220B968:
	cmp r6, r4
	addlo sp, sp, #0xc
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [r7, #0x34]
	ldrh r3, [r7, #0xa]
	ldrb r0, [r4, #0xe]
	mov r2, #0
	mov r1, #1
	mov r0, r0, lsl #0x1c
	add r0, r3, r0, lsr #26
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r3, lsl #8
	orr r0, r0, r3, asr #8
	strh r0, [r4, #0x10]
	ldr r0, [sp]
	strh r2, [r7, #4]
	str r1, [r0, #0]
	add r0, r4, #0xe
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220B9C0: .word 0x00003FFF
_0220B9C4: .word Unk_ov4_0221E118
_0220B9C8: .word 0x00001FFF
_0220B9CC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220B704

	arm_func_start ov4_0220B9D0
ov4_0220B9D0: ; 0x0220B9D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	ldrh lr, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	mov r2, r6, lsl #8
	mov r3, lr, lsl #8
	mov ip, r5, lsl #8
	mov r0, r7, lsl #8
	orr r5, ip, r5, asr #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r6, asr #8
	orr ip, r0, r7, asr #8
	mov r0, r5, lsl #0x10
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov ip, ip, lsl #0x10
	mov lr, r0, lsr #0x10
	mov r0, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	mov r2, ip, lsr #0x10
	orr r0, r0, lr, lsl #16
	orr r2, r2, r3, lsl #16
	mov r5, r1
	cmp r0, r2
	beq _0220BAF4
	bl ov4_02209330
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r4, #2]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	mov r0, r0, lsl #0x10
	cmp r5, r0, lsr #16
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4]
	mov r0, r4
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1a
	bl ov4_02209210
	ldr r1, _0220BB8C ; =0x0000FFFF
	cmp r0, r1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh ip, [r4, #0x12]
	ldrh r3, [r4, #0x10]
	ldr r2, _0220BB90 ; =0x0221DDF0
	mov r0, ip, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	ldr r1, [r2, #0x50]
	orr r0, r0, r3, lsl #16
	cmp r1, r0
	bne _0220BAF4
	ldrh ip, [r4, #0xe]
	ldrh r3, [r4, #0xc]
	sub r0, r4, #8
	mov r1, ip, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, ip, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	mov r2, #1
	bl ov4_022099C4
_0220BAF4:
	add r1, sp, #0
	mov r0, r4
	bl ov4_0220B704
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r4, #2]
	ldrb r3, [r4]
	ldrb ip, [r4, #9]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r3, r3, lsl #0x1c
	mov r2, r1, lsr #0x10
	cmp ip, #0x11
	add r1, r4, r3, lsr #26
	sub r2, r2, r3, lsr #26
	bne _0220BB40
	bl ov4_0220B4F8
	b _0220BB6C
_0220BB40:
	ldr r3, _0220BB90 ; =0x0221DDF0
	ldr r3, [r3, #0x50]
	cmp r3, #0
	beq _0220BB6C
	cmp ip, #1
	bne _0220BB60
	bl ov4_0220A740
	b _0220BB6C
_0220BB60:
	cmp ip, #6
	bne _0220BB6C
	bl ov4_0220B3D8
_0220BB6C:
	ldr r0, [sp]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0220BB90 ; =0x0221DDF0
	sub r0, r4, #0xe
	ldr r1, [r1, #0x40]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220BB8C: .word 0x0000FFFF
_0220BB90: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220B9D0

	arm_func_start ov4_0220BB94
ov4_0220BB94: ; 0x0220BB94
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0220BC00 ; =0x00000806
	add r4, sp, #0
_0220BBA0:
	mov r0, r4
	bl ov4_02209684
	ldr r3, [sp]
	cmp r3, #0x22
	bls _0220BBF8
	ldrh r2, [r0, #0xc]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #0x800
	beq _0220BBDC
	cmp r1, r5
	beq _0220BBEC
	b _0220BBF8
_0220BBDC:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl ov4_0220B9D0
	b _0220BBF8
_0220BBEC:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl ov4_0220A3F8
_0220BBF8:
	bl ov4_02209744
	b _0220BBA0
	; .align 2, 0
_0220BC00: .word 0x00000806
	arm_func_end ov4_0220BB94

	arm_func_start ov4_0220BC04
ov4_0220BC04: ; 0x0220BC04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0220BCA0 ; =0x021CCC80
	ldr r2, _0220BCA4 ; =0x0221DDF0
	ldr r0, [r0, #8]
	ldr r1, _0220BCA8 ; =0x00001388
	mov r4, #0x400
	mov r3, #1
	mov r5, #0
_0220BC24:
	ldrh ip, [r2, #8]
	mov r6, r5
	add ip, ip, #1
	strh ip, [r2, #8]
	ldrh ip, [r2, #8]
	cmp ip, #0x400
	blo _0220BC48
	cmp ip, r1
	blo _0220BC4C
_0220BC48:
	strh r4, [r2, #8]
_0220BC4C:
	mov r7, r0
	cmp r0, #0
	beq _0220BC8C
	ldrh r8, [r2, #8]
_0220BC5C:
	ldr lr, [r7, #0xa4]
	cmp lr, #0
	ldrne ip, [lr]
	cmpne ip, #0
	beq _0220BC80
	ldrh ip, [lr, #0xa]
	cmp ip, r8
	moveq r6, r3
	beq _0220BC8C
_0220BC80:
	ldr r7, [r7, #0x68]
	cmp r7, #0
	bne _0220BC5C
_0220BC8C:
	cmp r6, #0
	bne _0220BC24
	ldr r0, _0220BCA4 ; =0x0221DDF0
	ldrh r0, [r0, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220BCA0: .word Unk_021CCC80
_0220BCA4: .word Unk_ov4_0221DDF0
_0220BCA8: .word 0x00001388
	arm_func_end ov4_0220BC04

	arm_func_start ov4_0220BCAC
ov4_0220BCAC: ; 0x0220BCAC
	stmfd sp!, {r3, lr}
	ldr r1, _0220BCEC ; =0x0221DDF0
	ldr r3, [r1, #0x70]
	ldr r2, [r1, #0x68]
	ldr r0, [r1, #0x6c]
	umull lr, ip, r3, r2
	mla ip, r3, r0, ip
	ldr r0, [r1, #0x74]
	ldr r3, [r1, #0x78]
	mla ip, r0, r2, ip
	ldr r0, [r1, #0x7c]
	adds r2, r3, lr
	str r2, [r1, #0x68]
	adc r0, r0, ip
	str r0, [r1, #0x6c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220BCEC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220BCAC

	arm_func_start ov4_0220BCF0
ov4_0220BCF0: ; 0x0220BCF0
	ldr r1, _0220BD00 ; =0x021CCC80
	ldr r1, [r1, #4]
	str r0, [r1, #0xa4]
	bx lr
	; .align 2, 0
_0220BD00: .word Unk_021CCC80
	arm_func_end ov4_0220BCF0

	arm_func_start ov4_0220BD04
ov4_0220BD04: ; 0x0220BD04
	ldr r0, _0220BD18 ; =0x021CCC80
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0xa4]
	bx lr
	; .align 2, 0
_0220BD18: .word Unk_021CCC80
	arm_func_end ov4_0220BD04

	arm_func_start ov4_0220BD1C
ov4_0220BD1C: ; 0x0220BD1C
	ldr r0, _0220BD44 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	bxeq lr
	mov r0, #0xa
	strb r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #0x44]
	bx lr
	; .align 2, 0
_0220BD44: .word Unk_021CCC80
	arm_func_end ov4_0220BD1C

	arm_func_start ov4_0220BD48
ov4_0220BD48: ; 0x0220BD48
	stmfd sp!, {r4, lr}
	ldr r3, _0220BD9C ; =0x021CCC80
	ldr r3, [r3, #4]
	ldr r4, [r3, #0xa4]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0220BDA0 ; =0x7F000001
	cmp r2, r3
	ldreq r2, _0220BDA4 ; =0x0221DDF0
	ldreq r2, [r2, #0x50]
	cmp r0, #0
	strh r1, [r4, #0x1a]
	ldrh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	str r2, [r4, #0x20]
	str r2, [r4, #0x1c]
	strneh r0, [r4, #0xa]
	ldmneia sp!, {r4, pc}
	bl ov4_0220BC04
	strh r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220BD9C: .word Unk_021CCC80
_0220BDA0: .word 0x7F000001
_0220BDA4: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220BD48

	arm_func_start ov4_0220BDA8
ov4_0220BDA8: ; 0x0220BDA8
	ldr r0, _0220BDD8 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	bxeq lr
	str r0, [r1, #0]
	mov r0, #0
	strb r0, [r1, #8]
	str r0, [r1, #0x44]
	str r0, [r1, #0x60]
	str r0, [r1, #0x38]
	bx lr
	; .align 2, 0
_0220BDD8: .word Unk_021CCC80
	arm_func_end ov4_0220BDA8

	arm_func_start ov4_0220BDDC
ov4_0220BDDC: ; 0x0220BDDC
	ldr r0, _0220BDF8 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	bx lr
	; .align 2, 0
_0220BDF8: .word Unk_021CCC80
	arm_func_end ov4_0220BDDC

	arm_func_start ov4_0220BDFC
ov4_0220BDFC: ; 0x0220BDFC
	ldr r1, _0220BE10 ; =0x021CCC80
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	str r1, [r0, #0xa4]
	bx lr
	; .align 2, 0
_0220BE10: .word Unk_021CCC80
	arm_func_end ov4_0220BDFC

	arm_func_start ov4_0220BE14
ov4_0220BE14: ; 0x0220BE14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_0220BCAC
	str r0, [r5, #0x28]
	str r0, [r5, #0x30]
	mov r0, #1
	strb r0, [r5, #8]
	bl OS_DisableInterrupts
	mov r4, r0
	mov r1, #1
	mov r0, #0
	str r1, [r5, #4]
	bl OS_SleepThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220BE14

	arm_func_start ov4_0220BE54
ov4_0220BE54: ; 0x0220BE54
	ldr r1, _0220BE6C ; =0x021CCC80
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	strne r0, [r1, #0x38]
	bx lr
	; .align 2, 0
_0220BE6C: .word Unk_021CCC80
	arm_func_end ov4_0220BE54

	arm_func_start ov4_0220BE70
ov4_0220BE70: ; 0x0220BE70
	stmfd sp!, {r3, lr}
	ldr r0, _0220BEA4 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _0220BE9C
	bl ov4_0221075C
	ldmia sp!, {r3, pc}
_0220BE9C:
	bl ov4_0220BE14
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220BEA4: .word Unk_021CCC80
	arm_func_end ov4_0220BE70

	arm_func_start ov4_0220BEA8
ov4_0220BEA8: ; 0x0220BEA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl ov4_0220BCAC
	mov r6, #2
	ldr r4, _0220BF58 ; =0x0221DDF0
	mov r8, r0
	mov r7, #0
	mov r5, #1
	mov fp, r6
_0220BECC:
	str r8, [sl, #0x28]
	strb r6, [sl, #8]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sl, #0x10]
	mov r0, sl
	mov r1, fp
	mov r2, #0x18
	bl ov4_0220AA9C
	bl OS_DisableInterrupts
	mov sb, r0
	ldrb r0, [sl, #8]
	cmp r0, #2
	bne _0220BF20
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0220BF20
	mov r0, #0
	str r5, [sl, #4]
	bl OS_SleepThread
_0220BF20:
	mov r0, sb
	bl OS_RestoreInterrupts
	ldrb r0, [sl, #8]
	cmp r0, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0220BF50
	add r7, r7, #1
	cmp r7, #3
	blo _0220BECC
_0220BF50:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220BF58: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220BEA8

	arm_func_start ov4_0220BF5C
ov4_0220BF5C: ; 0x0220BF5C
	stmfd sp!, {r3, lr}
	ldr r0, _0220BF98 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _0220BF90
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _0220BF88
	bl ov4_02210898
	ldmia sp!, {r3, pc}
_0220BF88:
	bl ov4_0220BEA8
	ldmia sp!, {r3, pc}
_0220BF90:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220BF98: .word Unk_021CCC80
	arm_func_end ov4_0220BF5C

	arm_func_start ov4_0220BF9C
ov4_0220BF9C: ; 0x0220BF9C
	ldr r2, _0220BFE8 ; =0x021CCC80
	ldr r2, [r2, #4]
	ldr r3, [r2, #0xa4]
	cmp r3, #0
	beq _0220BFE0
	ldrb r2, [r3, #8]
	cmp r2, #4
	cmpne r2, #0xa
	bne _0220BFE0
	cmp r0, #0
	ldrneh r2, [r3, #0x18]
	strneh r2, [r0]
	cmp r1, #0
	ldrne r0, [r3, #0x14]
	strne r0, [r1]
	ldr r0, [r3, #0x1c]
	bx lr
_0220BFE0:
	mov r0, #0
	bx lr
	; .align 2, 0
_0220BFE8: .word Unk_021CCC80
	arm_func_end ov4_0220BF9C

	arm_func_start ov4_0220BFEC
ov4_0220BFEC: ; 0x0220BFEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_YieldThread
	ldrb r1, [r4, #8]
	add r0, r1, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0220C024
	mov r0, r4
	mov r1, #0x19
	bl ov4_0220AB24
	mov r0, #7
	strb r0, [r4, #8]
	ldmia sp!, {r4, pc}
_0220C024:
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x1a
	bl ov4_0220AB10
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220BFEC

	arm_func_start ov4_0220C03C
ov4_0220C03C: ; 0x0220C03C
	stmfd sp!, {r4, lr}
	ldr r0, _0220C074 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0220C068
	mov r0, r4
	bl ov4_02210D08
_0220C068:
	mov r0, r4
	bl ov4_0220BFEC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220C074: .word Unk_021CCC80
	arm_func_end ov4_0220C03C

	arm_func_start ov4_0220C078
ov4_0220C078: ; 0x0220C078
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _0220C0F8 ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0220C0A4
	mov r0, r4
	bl ov4_02210D88
_0220C0A4:
	bl OS_GetTick
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	ldr r5, _0220C0FC ; =0x0221DDF0
	b _0220C0BC
_0220C0B8:
	bl ov4_02208DF0
_0220C0BC:
	ldr r0, [r5, #0x48]
	blx r0
	cmp r0, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
	beq _0220C0EC
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x27
	blt _0220C0B8
_0220C0EC:
	mov r0, #0
	strb r0, [r4, #8]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220C0F8: .word Unk_021CCC80
_0220C0FC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220C078

	arm_func_start ov4_0220C100
ov4_0220C100: ; 0x0220C100
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	bl OS_DisableInterrupts
	ldr r6, [r8, #0x44]
	mov r7, r0
	cmp r6, #0
	bne _0220C140
	mov r5, #3
	mov r4, #0
_0220C128:
	mov r0, r4
	str r5, [r8, #4]
	bl OS_SleepThread
	ldr r6, [r8, #0x44]
	cmp r6, #0
	beq _0220C128
_0220C140:
	mov r0, r7
	bl OS_RestoreInterrupts
	str r6, [sb]
	ldr r0, [r8, #0x40]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_0220C100

	arm_func_start ov4_0220C154
ov4_0220C154: ; 0x0220C154
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldr r1, [r4, #0x44]
	mov r5, r0
	cmp r1, #0
	ldreqb r0, [r4, #8]
	cmpeq r0, #4
	bne _0220C1B4
	bl OS_DisableInterrupts
	mov r8, r0
	mov r7, #2
	mov r6, #0
	b _0220C194
_0220C188:
	mov r0, r6
	str r7, [r4, #4]
	bl OS_SleepThread
_0220C194:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldreqb r0, [r4, #8]
	cmpeq r0, #4
	beq _0220C188
	mov r0, r8
	bl OS_RestoreInterrupts
	b _0220C1B8
_0220C1B4:
	bl OS_YieldThread
_0220C1B8:
	ldr r0, [r4, #0x44]
	str r0, [r5, #0]
	cmp r0, #0
	ldrne r0, [r4, #0x40]
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_0220C154

	arm_func_start ov4_0220C1D0
ov4_0220C1D0: ; 0x0220C1D0
	stmfd sp!, {r3, lr}
	ldr r1, _0220C230 ; =0x021CCC80
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	beq _0220C220
	ldrb r2, [r1, #8]
	add r2, r2, #0xf6
	and r2, r2, #0xff
	cmp r2, #1
	bhi _0220C204
	bl ov4_0220C100
	ldmia sp!, {r3, pc}
_0220C204:
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _0220C218
	bl ov4_022108EC
	ldmia sp!, {r3, pc}
_0220C218:
	bl ov4_0220C154
	ldmia sp!, {r3, pc}
_0220C220:
	mov r1, #0
	str r1, [r0, #0]
	mov r0, r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220C230: .word Unk_021CCC80
	arm_func_end ov4_0220C1D0

	arm_func_start ov4_0220C234
ov4_0220C234: ; 0x0220C234
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl OS_DisableInterrupts
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	mov r5, r0
	cmp r2, r1
	mov r6, #0
	bne _0220C264
	cmp r7, #0
	movne r6, #1
_0220C264:
	cmp r7, r2
	movhs r0, #0
	strhs r0, [r4, #0x44]
	bhs _0220C288
	ldr r0, [r4, #0x40]
	sub r2, r2, r7
	add r1, r0, r7
	str r2, [r4, #0x44]
	bl memmove
_0220C288:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0220C2B4
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0220C2B4:
	mov r0, r4
	mov r1, #0x1b
	bl ov4_0220AB10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220C234

	arm_func_start ov4_0220C2C4
ov4_0220C2C4: ; 0x0220C2C4
	stmfd sp!, {r3, lr}
	ldr r1, _0220C2F8 ; =0x021CCC80
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _0220C2F0
	bl ov4_022109C4
	ldmia sp!, {r3, pc}
_0220C2F0:
	bl ov4_0220C234
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220C2F8: .word Unk_021CCC80
	arm_func_end ov4_0220C2C4

	arm_func_start ov4_0220C2FC
ov4_0220C2FC: ; 0x0220C2FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	ldr r6, [r8, #0x34]
	movs fp, r3
	mov sl, r0
	movne r5, #1
	mov r0, r6, lsl #1
	mov sb, r1
	ldreqh r5, [r8, #0x2c]
	add r7, r0, #4
	b _0220C3A0
_0220C328:
	ldr r0, _0220C3BC ; =0x0221DDF0
	ldrh r4, [r8, #0x2e]
	ldrh r0, [r0, #2]
	ldr r1, [r8, #0x34]
	cmp r4, r5
	movhs r4, r5
	cmp r0, r4
	movlo r4, r0
	cmp fp, #0
	biceq r4, r4, #1
	cmp sb, r4
	sub r0, r1, r6
	movlo r4, sb
	adds r0, r7, r0
	moveq r4, #0
	mov r6, r1
	sub r7, r0, #1
	cmp r4, #0
	beq _0220C3B4
	mov r2, #0
	str r2, [sp]
	mov r0, sl
	mov r1, r4
	mov r2, r8
	mov r3, #0x18
	sub r5, r5, r4
	bl ov4_0220A0DC
	bl OS_YieldThread
	add sl, sl, r4
	sub sb, sb, r4
_0220C3A0:
	cmp sb, #0
	beq _0220C3B4
	ldrb r0, [r8, #8]
	cmp r0, #4
	beq _0220C328
_0220C3B4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220C3BC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220C2FC

	arm_func_start ov4_0220C3C0
ov4_0220C3C0: ; 0x0220C3C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ov4_0220C2FC
	cmp r0, #0
	cmpne r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl ov4_0220C2FC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220C3C0

	arm_func_start ov4_0220C3FC
ov4_0220C3FC: ; 0x0220C3FC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, #0
	mov fp, r0
	ldr r8, [sp, #0x38]
	mov r0, r4
	str r4, [sp, #0x10]
	mov sl, r1
	mov sb, r2
	str r3, [sp, #8]
	mov r6, r4
	str r0, [r8, #0x34]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
	b _0220C5B4
_0220C440:
	ldr r7, [r8, #0x28]
	ldr r3, [sp, #8]
	str r8, [sp]
	mov r0, fp
	mov r1, sl
	mov r2, sb
	str r6, [sp, #4]
	bl ov4_0220C3C0
	bl OS_GetTick
	mov r5, r0, lsr #0x10
	ldr r4, _0220C600 ; =0x0221DDF0
	orr r5, r5, r1, lsl #16
_0220C470:
	bl ov4_02208DF0
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	beq _0220C4C8
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _0220C4C8
	ldr r1, [r8, #0x28]
	ldr r0, [r8, #0x30]
	cmp r1, r0
	beq _0220C4C8
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	bge _0220C4C8
	cmp r6, #0
	ldrneh r0, [r8, #0x2c]
	cmpne r0, #0
	beq _0220C470
_0220C4C8:
	ldr r1, [r8, #0x30]
	ldr r0, [r8, #0x28]
	sub r5, r1, r7
	sub r0, r0, r7
	cmp r5, r0
	movhi r5, #0
	ldr r0, [sp, #0x10]
	cmp r5, #0
	add r0, r0, r5
	str r0, [sp, #0x10]
	beq _0220C504
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
_0220C504:
	ldr r0, [r8, #0x30]
	str r0, [r8, #0x28]
	ldrb r0, [r8, #8]
	cmp r0, #4
	ldreqh r0, [r8, #0x2c]
	cmpeq r0, #0
	cmpeq r5, #0
	bne _0220C588
	cmp r6, #0
	bne _0220C58C
	bl OS_GetTick
	mov r7, r0, lsr #0x10
	orr r7, r7, r1, lsl #16
	ldr r4, _0220C600 ; =0x0221DDF0
	b _0220C550
_0220C540:
	bl ov4_02208DF0
	ldrh r0, [r8, #0x2c]
	cmp r0, #0
	bne _0220C578
_0220C550:
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	beq _0220C578
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r7
	cmp r0, #0xf
	blt _0220C540
_0220C578:
	ldrh r0, [r8, #0x2c]
	cmp r0, #0
	moveq r6, #1
	b _0220C58C
_0220C588:
	mov r6, #0
_0220C58C:
	cmp r5, sl
	addlo fp, fp, r5
	sublo sl, sl, r5
	blo _0220C5B4
	sub r1, r5, sl
	ldr r0, [sp, #8]
	add fp, sb, r1
	mov sb, #0
	sub sl, r0, r1
	str sb, [sp, #8]
_0220C5B4:
	ldr r0, _0220C600 ; =0x0221DDF0
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	cmpne sl, #0
	beq _0220C5F4
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _0220C5F4
	bl OS_GetTick
	mov r2, r0, lsr #0x10
	ldr r0, [sp, #0xc]
	orr r2, r2, r1, lsl #16
	sub r0, r2, r0
	cmp r0, #0x9f
	blt _0220C440
_0220C5F4:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220C600: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220C3FC

	arm_func_start ov4_0220C604
ov4_0220C604: ; 0x0220C604
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _0220C6D0 ; =0x021CCC80
	mov r7, r1
	ldr ip, [ip, #4]
	mov r6, r2
	ldr r4, [ip, #0xa4]
	mov r5, r3
	cmp r4, #0
	beq _0220C6C8
	ldrb ip, [r4, #8]
	cmp ip, #0xa
	bne _0220C664
	cmp r7, #0
	beq _0220C644
	mov r2, r4
	bl ov4_02209FA0
_0220C644:
	cmp r5, #0
	beq _0220C65C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_02209FA0
_0220C65C:
	add r0, r7, r5
	b _0220C6B8
_0220C664:
	cmp ip, #0xb
	bne _0220C69C
	cmp r7, #0
	beq _0220C67C
	mov r2, r4
	bl ov4_02209EF0
_0220C67C:
	cmp r5, #0
	beq _0220C694
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_02209EF0
_0220C694:
	add r0, r7, r5
	b _0220C6B8
_0220C69C:
	ldrb ip, [r4, #9]
	cmp ip, #0
	str r4, [sp]
	beq _0220C6B4
	bl ov4_02210BD4
	b _0220C6B8
_0220C6B4:
	bl ov4_0220C3FC
_0220C6B8:
	ldr r1, _0220C6D4 ; =0x0221DDF0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0220C6C8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220C6D0: .word Unk_021CCC80
_0220C6D4: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220C604

	arm_func_start ov4_0220C6D8
ov4_0220C6D8: ; 0x0220C6D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _0220C76C ; =0x021CCC80
	mov r2, r0
	ldr r4, [r3, #4]
	mov r3, r1
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	beq _0220C764
	ldr r4, [r5, #0x60]
	cmp r4, #0
	beq _0220C754
	ldr r0, [r5, #0x5c]
	mov r1, r4
	bl ov4_0220C604
	ldr r1, [r5, #0x60]
	mov r4, r0
	cmp r4, r1
	bhs _0220C744
	ldr r0, [r5, #0x5c]
	sub r2, r1, r4
	add r1, r0, r4
	bl memmove
	ldr r1, [r5, #0x60]
	mov r0, #0
	sub r1, r1, r4
	str r1, [r5, #0x60]
	ldmia sp!, {r3, r4, r5, pc}
_0220C744:
	mov r0, #0
	str r0, [r5, #0x60]
	sub r0, r4, r1
	ldmia sp!, {r3, r4, r5, pc}
_0220C754:
	mov r2, #0
	mov r3, r2
	bl ov4_0220C604
	ldmia sp!, {r3, r4, r5, pc}
_0220C764:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220C76C: .word Unk_021CCC80
	arm_func_end ov4_0220C6D8

	arm_func_start ov4_0220C770
ov4_0220C770: ; 0x0220C770
	stmfd sp!, {r3, lr}
	ldr r0, _0220C7DC ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _0220C7D4
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _0220C79C
	bl ov4_02210B58
	ldmia sp!, {r3, pc}
_0220C79C:
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _0220C7C4
	ldrb r0, [r0, #8]
	cmp r0, #4
	beq _0220C7C4
	add r0, r0, #0xf6
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0220C7CC
_0220C7C4:
	mov r0, r1
	ldmia sp!, {r3, pc}
_0220C7CC:
	mvn r0, #0
	ldmia sp!, {r3, pc}
_0220C7D4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220C7DC: .word Unk_021CCC80
	arm_func_end ov4_0220C770

	arm_func_start ov4_0220C7E0
ov4_0220C7E0: ; 0x0220C7E0
	stmfd sp!, {r4, lr}
	ldr r0, _0220C81C ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldrne r1, [r4, #0x60]
	cmpne r1, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	ldr r0, [r4, #0x5c]
	mov r3, r2
	bl ov4_0220C604
	mov r0, #0
	str r0, [r4, #0x60]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220C81C: .word Unk_021CCC80
	arm_func_end ov4_0220C7E0

	arm_func_start ov4_0220C820
ov4_0220C820: ; 0x0220C820
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _0220C8BC ; =0x0221DDF0
	ldr r0, [r0, #0x18]
	blx r0
	ldr r0, _0220C8BC ; =0x0221DDF0
	ldr r0, [r0, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov4_02209858
	mov r0, #0x64
	bl OS_Sleep
	ldr r0, _0220C8BC ; =0x0221DDF0
	ldr r0, [r0, #0x50]
	bl ov4_02209858
	bl OS_GetTick
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	mov r5, #0x64
	ldr r4, _0220C8BC ; =0x0221DDF0
	b _0220C890
_0220C870:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0220C888
	mov r0, #4
	bl ov4_02208CEC
	ldmia sp!, {r4, r5, r6, pc}
_0220C888:
	mov r0, r5
	bl OS_Sleep
_0220C890:
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x17
	blt _0220C870
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220C8BC: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220C820

	arm_func_start ov4_0220C8C0
ov4_0220C8C0: ; 0x0220C8C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r3, _0220CC10 ; =0x0221DDF0
	mov r1, #0
	ldr r0, _0220CC14 ; =0x0221DED0
	mov r2, #0x64
	str r1, [r3, #0x44]
	bl MI_CpuFill8
	ldr r1, _0220CC10 ; =0x0221DDF0
	mov r3, #0x180
	ldr r0, _0220CC18 ; =0x0221E49C
	str r3, [r1, #0x11c]
	str r0, [r1, #0x120]
	ldr r2, _0220CC1C ; =0x0221E31C
	str r3, [r1, #0x128]
	ldr r0, _0220CC14 ; =0x0221DED0
	str r2, [r1, #0x12c]
	bl ov4_0220BCF0
	mov sl, #1
	ldr r0, _0220CC10 ; =0x0221DDF0
	mov fp, sl
	str sl, [sp]
	str sl, [r0, #0xc]
	mov r4, #0
_0220C91C:
	mov r0, #0x3e8
	bl OS_Sleep
	ldr r0, _0220CC10 ; =0x0221DDF0
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _0220CBF0
	bl OS_GetTick
	ldr r2, _0220CC10 ; =0x0221DDF0
	mov r5, r0, lsr #0x10
	ldr r0, [r2, #0x48]
	orr r5, r5, r1, lsl #16
	blx r0
	cmp r0, #0
	beq _0220CA48
	ldr r0, [sp]
	subs r0, r0, #1
	str r0, [sp]
	bne _0220CA5C
	ldr r0, _0220CC10 ; =0x0221DDF0
	ldr r1, [r0, #0x10]
	tst r1, #1
	beq _0220C988
	cmp r4, #0
	bne _0220CA5C
	bl ov4_0220C820
	mov r4, #1
	b _0220CA5C
_0220C988:
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0220CA5C
_0220C994: ; jump table
	b _0220C9A4 ; case 0
	b _0220C9E8 ; case 1
	b _0220CA0C ; case 2
	b _0220CA5C ; case 3
_0220C9A4:
	cmp fp, #0
	movne r1, #2
	strne r1, [r0, #0xc]
	movne fp, #0
	bl ov4_0220D30C
	cmp r0, #0
	beq _0220C9D4
	add r0, sp, #0
	mov r1, #0
	bl ov4_0220D364
	cmp r0, #0
	bne _0220C9E0
_0220C9D4:
	bl ov4_0220C820
	mov r4, #3
	b _0220CA5C
_0220C9E0:
	mov r4, #1
	b _0220CA5C
_0220C9E8:
	add r0, sp, #0
	mov r1, #1
	bl ov4_0220D364
	cmp r0, #0
	bne _0220CA5C
	ldr r0, [sp]
	cmp r0, #0x3c
	movlo r4, #2
	b _0220CA5C
_0220CA0C:
	add r0, sp, #0
	mov r1, #2
	bl ov4_0220D364
	cmp r0, #0
	movne r4, #1
	bne _0220CA5C
	ldr r0, [sp]
	cmp r0, #0x3c
	bhs _0220CA5C
	mov r0, #3
	bl ov4_02208CEC
	mov sl, #1
	str sl, [sp]
	mov r4, #0
	b _0220CA5C
_0220CA48:
	mov r0, #1
	bl ov4_02208CEC
	mov sl, #1
	str sl, [sp]
	mov r4, #0
_0220CA5C:
	mov r3, #0
	ldr r6, _0220CC20 ; =0x0221DE70
	ldr r1, _0220CC24 ; =0x000003BD
	mov r2, r3
_0220CA6C:
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0220CA8C
	ldrh r0, [r6, #0xa]
	sub r0, r5, r0
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	strlt r2, [r6]
_0220CA8C:
	add r3, r3, #1
	cmp r3, #8
	add r6, r6, #0xc
	blt _0220CA6C
	ldr r0, _0220CC10 ; =0x0221DDF0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _0220CABC
	subs sl, sl, #1
	bne _0220CABC
	bl ov4_02209858
	mov sl, #0x69
_0220CABC:
	ldr r0, _0220CC28 ; =0x021CCC80
	ldr sb, [r0, #8]
	cmp sb, #0
	beq _0220CB84
	mov r6, #0
	mov r7, r6
	mov r8, #1
_0220CAD8:
	ldr r0, [sb, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _0220CB78
	ldrb r1, [r0, #8]
	cmp r1, #3
	bne _0220CB20
	ldr r2, [r0, #0x10]
	sub r2, r5, r2
	cmp r2, #0x27
	ble _0220CB20
	strb r8, [r0, #8]
	ldrh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	b _0220CB78
_0220CB20:
	cmp r1, #2
	bne _0220CB58
	ldr r2, [r0, #0x10]
	sub r2, r5, r2
	cmp r2, #0x27
	ble _0220CB58
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _0220CB78
	strb r7, [r0, #8]
	str r7, [r0, #4]
	ldr r0, [r0, #0]
	bl OS_WakeupThreadDirect
	b _0220CB78
_0220CB58:
	cmp r1, #4
	beq _0220CB78
	ldr r1, [r0, #4]
	cmp r1, #2
	bne _0220CB78
	str r6, [r0, #4]
	ldr r0, [r0, #0]
	bl OS_WakeupThreadDirect
_0220CB78:
	ldr sb, [sb, #0x68]
	cmp sb, #0
	bne _0220CAD8
_0220CB84:
	mov sb, #0
	ldr r8, _0220CC2C ; =0x0221E118
	ldr r6, _0220CC10 ; =0x0221DDF0
	mov r7, sb
_0220CB94:
	ldrh r0, [r8, #4]
	cmp r0, #0
	beq _0220CBC0
	ldr r0, [r8, #0x2c]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _0220CBC0
	ldr r0, [r8, #0x34]
	ldr r1, [r6, #0x40]
	blx r1
	strh r7, [r8, #4]
_0220CBC0:
	add sb, sb, #1
	cmp sb, #8
	add r8, r8, #0x38
	blt _0220CB94
	mov r0, r5
	bl ov4_02210DF0
	ldr r0, _0220CC10 ; =0x0221DDF0
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0220C91C
	blx r0
	b _0220C91C
_0220CBF0:
	ldr r0, [r0, #0x10]
	tst r0, #1
	bne _0220CC08
	cmp r4, #3
	beq _0220CC08
	bl ov4_0220D460
_0220CC08:
	bl ov4_0220BD04
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220CC10: .word Unk_ov4_0221DDF0
_0220CC14: .word Unk_ov4_0221DED0
_0220CC18: .word Unk_ov4_0221E49C
_0220CC1C: .word Unk_ov4_0221E31C
_0220CC20: .word Unk_ov4_0221DE70
_0220CC24: .word 0x000003BD
_0220CC28: .word Unk_021CCC80
_0220CC2C: .word Unk_ov4_0221E118
	arm_func_end ov4_0220C8C0

	arm_func_start ov4_0220CC30
ov4_0220CC30: ; 0x0220CC30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r2
	mov r1, #0
	mov r2, #0xec
	mov r6, r0
	bl MI_CpuFill8
	ldr r0, _0220CDA0 ; =0x00000101
	mov r1, #6
	strh r0, [r6]
	ldr r0, _0220CDA4 ; =0x0221DDF0
	strb r1, [r6, #2]
	ldr r3, [r0, #0x70]
	ldr r2, [r0, #0x68]
	ldr r1, [r0, #0x6c]
	umull lr, ip, r3, r2
	mla ip, r3, r1, ip
	ldr r1, [r0, #0x74]
	ldr r7, [r0, #0x78]
	mla ip, r1, r2, ip
	ldr r3, [r0, #0x7c]
	adds r7, r7, lr
	adc r1, r3, ip
	str r7, [r0, #0x68]
	str r1, [r0, #0x6c]
	mov r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	cmp r4, #0
	mov r2, r3, lsl #8
	mov r0, r1, lsl #0x10
	strne r1, [r4]
	mov r1, r0, lsr #0x10
	orr r2, r2, r3, asr #8
	mov r0, r1, lsl #8
	strh r2, [r6, #4]
	orr r0, r0, r1, asr #8
	strh r0, [r6, #6]
	ldr r2, _0220CDA4 ; =0x0221DDF0
	ldr r0, _0220CDA8 ; =0x0221E2D8
	ldr r1, [r2, #0x50]
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r6, #0xc]
	ldr r2, [r2, #0x50]
	add r1, r6, #0x1c
	mov r2, r2, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	mov r2, #6
	strh r3, [r6, #0xe]
	bl MI_CpuCopy8
	ldr r0, _0220CDAC ; =0x00008263
	ldr r1, _0220CDB0 ; =0x00006353
	strh r0, [r6, #0xec]
	strh r1, [r6, #0xee]
	ldr r0, _0220CDB4 ; =0x00000135
	mov r1, #7
	strh r0, [r6, #0xf0]
	strb r5, [r6, #0xf2]
	mov r0, #0x3d
	strb r0, [r6, #0xf3]
	strb r1, [r6, #0xf4]
	mov r3, #1
	ldr r0, _0220CDA8 ; =0x0221E2D8
	add r1, r6, #0xf6
	mov r2, #6
	strb r3, [r6, #0xf5]
	bl MI_CpuCopy8
	mov r1, #0xc
	strb r1, [r6, #0xfc]
	mov r2, #0xa
	ldr r0, _0220CDB8 ; =0x0221A1A8
	add r1, r6, #0xfe
	strb r2, [r6, #0xfd]
	bl MI_CpuCopy8
	mov r1, #0x37
	strb r1, [r6, #0x108]
	mov r2, #3
	add r0, r6, #0xd
	strb r2, [r6, #0x109]
	mov r1, #1
	strb r1, [r6, #0x10a]
	strb r2, [r6, #0x10b]
	mov r1, #6
	strb r1, [r6, #0x10c]
	add r0, r0, #0x100
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220CDA0: .word 0x00000101
_0220CDA4: .word Unk_ov4_0221DDF0
_0220CDA8: .word Unk_ov4_0221E2D8
_0220CDAC: .word 0x00008263
_0220CDB0: .word 0x00006353
_0220CDB4: .word 0x00000135
_0220CDB8: .word 0x0221A1A8
	arm_func_end ov4_0220CC30

	arm_func_start ov4_0220CDBC
ov4_0220CDBC: ; 0x0220CDBC
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, r0
	mov r5, r2
	cmp r3, r1
	bhs _0220CDE8
	sub r4, r1, r3
	mov r0, r5
	mov r1, ip
	mov r2, r4
	bl MI_CpuFill8
	add r5, r5, r4
_0220CDE8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220CDBC

	arm_func_start ov4_0220CDF0
ov4_0220CDF0: ; 0x0220CDF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0220CEAC ; =0x0221E346
	add r2, sp, #0
	mov r0, r4
	mov r1, #1
	bl ov4_0220CC30
	ldr r1, _0220CEB0 ; =0x0221DDF0
	mov ip, r0
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0220CE74
	mov r0, #0x32
	strb r0, [ip]
	mov r0, #4
	strb r0, [ip, #1]
	ldr r0, [r1, #0x34]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [ip, #2]
	ldr r0, [r1, #0x34]
	mov r0, r0, lsr #0x10
	strb r0, [ip, #3]
	ldr r0, [r1, #0x34]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [ip, #4]
	ldr r0, [r1, #0x34]
	strb r0, [ip, #5]
	add ip, ip, #6
_0220CE74:
	add r2, ip, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [ip]
	bl ov4_0220CDBC
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl ov4_0220C6D8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0220CEAC: .word 0x0221E346
_0220CEB0: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220CDF0

	arm_func_start ov4_0220CEB4
ov4_0220CEB4: ; 0x0220CEB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0220CFB4 ; =0x0221E346
	mov r5, r0
	add r2, sp, #0
	mov r0, r4
	mov r1, #3
	bl ov4_0220CC30
	mov ip, r0
	cmp r5, #0
	bne _0220CF80
	mov r0, #0x32
	strb r0, [ip]
	mov r0, #4
	ldr r2, _0220CFB8 ; =0x0221DDF0
	strb r0, [ip, #1]
	ldr r1, [r2, #0x34]
	mov r3, #0x36
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [ip, #2]
	ldr r1, [r2, #0x34]
	mov r1, r1, lsr #0x10
	strb r1, [ip, #3]
	ldr r1, [r2, #0x34]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [ip, #4]
	ldr r1, [r2, #0x34]
	strb r1, [ip, #5]
	strb r3, [ip, #6]
	strb r0, [ip, #7]
	ldr r0, [r2, #0x20]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [ip, #8]
	ldr r0, [r2, #0x20]
	mov r0, r0, lsr #0x10
	strb r0, [ip, #9]
	ldr r0, [r2, #0x20]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [ip, #0xa]
	ldr r0, [r2, #0x20]
	strb r0, [ip, #0xb]
	add ip, ip, #0xc
_0220CF80:
	add r2, ip, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [ip]
	bl ov4_0220CDBC
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl ov4_0220C6D8
	ldr r0, [sp]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220CFB4: .word 0x0221E346
_0220CFB8: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220CEB4

	arm_func_start ov4_0220CFBC
ov4_0220CFBC: ; 0x0220CFBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	add r1, r1, #1
	str r0, [sp]
	rsb fp, r1, r1, lsl #4
	bl OS_GetTick
	mov r4, r0, lsr #0x10
	orr r4, r4, r1, lsl #16
	mov r5, #0
	b _0220D2C4
_0220CFE4:
	bl ov4_0220C770
	cmp r0, #0
	bne _0220CFF8
	bl ov4_02208DF0
	b _0220D2C4
_0220CFF8:
	add r0, sp, #4
	bl ov4_0220C1D0
	ldr r1, [sp, #4]
	mov r6, r0
	cmp r1, #0xf0
	bls _0220D2BC
	ldrb r0, [r6]
	cmp r0, #2
	bne _0220D2BC
	ldrh r3, [r6, #6]
	ldrh r2, [r6, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r2, lsl #16
	ldr r0, [sp]
	cmp r0, r1
	bne _0220D2BC
	ldr r1, _0220D304 ; =0x0221E2D8
	add r0, r6, #0x1c
	bl ov4_022093B0
	cmp r0, #0
	bne _0220D2BC
	ldrb r3, [r6, #0x10]
	ldrb r2, [r6, #0x11]
	ldrb r1, [r6, #0x12]
	ldrb r0, [r6, #0x13]
	orr r3, r2, r3, lsl #8
	ldrb r2, [r6, #0xec]
	orr r1, r0, r1, lsl #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	cmp r2, #0x63
	orr r2, r0, r5, lsl #16
	ldreqb r0, [r6, #0xed]
	ldr r3, [sp, #4]
	mov r5, #3
	cmpeq r0, #0x82
	ldreqb r0, [r6, #0xee]
	add r1, r6, r3
	cmpeq r0, #0x53
	ldreqb r0, [r6, #0xef]
	addeq r3, r6, #0xf0
	cmpeq r0, #0x63
	bne _0220D2BC
	mov r0, #0
	mov sb, #2
	mov sl, #1
	ldr ip, _0220D308 ; =0x0221DDF0
	b _0220D2A8
_0220D0DC:
	cmp r6, #0
	beq _0220D2A8
	cmp r6, #0x33
	bgt _0220D118
	bge _0220D210
	cmp r6, #6
	bgt _0220D29C
	cmp r6, #1
	blt _0220D29C
	beq _0220D134
	cmp r6, #3
	beq _0220D168
	cmp r6, #6
	beq _0220D19C
	b _0220D29C
_0220D118:
	cmp r6, #0x35
	bgt _0220D128
	beq _0220D244
	b _0220D29C
_0220D128:
	cmp r6, #0x36
	beq _0220D26C
	b _0220D29C
_0220D134:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	mov r8, r8, lsl #0x10
	orr r6, r6, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r8, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x1c]
	b _0220D29C
_0220D168:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	mov r8, r8, lsl #0x10
	orr r6, r6, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r8, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x2c]
	b _0220D29C
_0220D19C:
	ldrb r6, [r3]
	cmp r6, #8
	strlo r0, [ip, #0x64]
	blo _0220D1DC
	ldrb lr, [r3, #5]
	ldrb r8, [r3, #6]
	ldrb r7, [r3, #7]
	ldrb r6, [r3, #8]
	orr r8, r8, lr, lsl #8
	mov r8, r8, lsl #0x10
	orr r6, r6, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r8, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x64]
_0220D1DC:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	mov r8, r8, lsl #0x10
	orr r6, r6, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r8, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x60]
	b _0220D29C
_0220D210:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	mov r8, r8, lsl #0x10
	orr r6, r6, r7, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r8, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x4c]
	b _0220D29C
_0220D244:
	ldrb r6, [r3, #1]
	cmp r6, #2
	beq _0220D260
	cmp r6, #5
	moveq r5, sb
	streq r2, [ip, #0x50]
	b _0220D29C
_0220D260:
	mov r5, sl
	str r2, [ip, #0x34]
	b _0220D29C
_0220D26C:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb lr, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, lr, r6, lsl #8
	mov r6, r6, lsl #0x10
	mov r7, r7, lsr #0x10
	mov r6, r6, lsr #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x20]
_0220D29C:
	ldrb r6, [r3]
	add r6, r6, #1
	add r3, r3, r6
_0220D2A8:
	cmp r3, r1
	bhs _0220D2BC
	ldrb r6, [r3], #1
	cmp r6, #0xff
	bne _0220D0DC
_0220D2BC:
	ldr r0, [sp, #4]
	bl ov4_0220C2C4
_0220D2C4:
	ldr r0, _0220D308 ; =0x0221DDF0
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	beq _0220D2F8
	cmp r5, #0
	bne _0220D2F8
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r4
	cmp r0, fp
	blt _0220CFE4
_0220D2F8:
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220D304: .word Unk_ov4_0221E2D8
_0220D308: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220CFBC

	arm_func_start ov4_0220D30C
ov4_0220D30C: ; 0x0220D30C
	stmfd sp!, {r3, r4, r5, lr}
	bl ov4_0220BDA8
	bl ov4_0220BD1C
	mov r1, #0x43
	sub r2, r1, #0x44
	mov r0, #0x44
	bl ov4_0220BD48
	mov r5, #0
_0220D32C:
	bl ov4_0220CDF0
	mov r1, r5
	bl ov4_0220CFBC
	mov r4, r0
	cmp r4, #1
	beq _0220D350
	add r5, r5, #1
	cmp r5, #4
	blt _0220D32C
_0220D350:
	bl ov4_0220BDDC
	cmp r4, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220D30C

	arm_func_start ov4_0220D364
ov4_0220D364: ; 0x0220D364
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	bl ov4_0220BDA8
	bl ov4_0220BD1C
	cmp r4, #1
	mov r0, #0x44
	bne _0220D398
	ldr r1, _0220D45C ; =0x0221DDF0
	ldr r2, [r1, #0x20]
	mov r1, #0x43
	bl ov4_0220BD48
	b _0220D3A4
_0220D398:
	mov r1, #0x43
	sub r2, r1, #0x44
	bl ov4_0220BD48
_0220D3A4:
	mov r7, #0
_0220D3A8:
	mov r0, r4
	bl ov4_0220CEB4
	mov r1, r7
	bl ov4_0220CFBC
	movs r6, r0
	bne _0220D3CC
	add r7, r7, #1
	cmp r7, #4
	blt _0220D3A8
_0220D3CC:
	bl ov4_0220BDDC
	cmp r6, #2
	bne _0220D400
	ldr r1, _0220D45C ; =0x0221DDF0
	mov r0, #1
	ldr r2, [r1, #0x4c]
	mov r2, r2, lsr #1
	str r2, [r5, #0]
	ldr r2, [r1, #0x4c]
	add r2, r2, r2, lsl #1
	mov r2, r2, lsr #3
	str r2, [r1, #0x38]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0220D400:
	ldr r0, _0220D45C ; =0x0221DDF0
	cmp r4, #1
	ldr r1, [r0, #0x38]
	mov r1, r1, lsr #1
	str r1, [r0, #0x38]
	str r1, [r5, #0]
	beq _0220D428
	cmp r4, #2
	beq _0220D448
	b _0220D454
_0220D428:
	cmp r1, #0x3c
	bhs _0220D454
	mov r1, #1
	str r1, [r5, #0]
	ldr r1, [r0, #0x4c]
	mov r1, r1, lsr #3
	str r1, [r0, #0x38]
	b _0220D454
_0220D448:
	cmp r1, #0x3c
	movlo r0, #1
	strlo r0, [r5]
_0220D454:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220D45C: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220D364

	arm_func_start ov4_0220D460
ov4_0220D460: ; 0x0220D460
	stmfd sp!, {r4, lr}
	bl ov4_0220BDA8
	bl ov4_0220BD1C
	ldr r1, _0220D4C4 ; =0x0221DDF0
	mov r0, #0x44
	ldr r2, [r1, #0x20]
	mov r1, #0x43
	bl ov4_0220BD48
	ldr r4, _0220D4C8 ; =0x0221E346
	mov r1, #7
	mov r0, r4
	mov r2, #0
	bl ov4_0220CC30
	mov r1, #0xff
	add r2, r0, #1
	strb r1, [r0]
	mov r0, #0
	mov r1, #0x12c
	sub r3, r2, r4
	bl ov4_0220CDBC
	sub r1, r0, r4
	mov r0, r4
	bl ov4_0220C6D8
	bl ov4_0220BDDC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220D4C4: .word Unk_ov4_0221DDF0
_0220D4C8: .word 0x0221E346
	arm_func_end ov4_0220D460

	arm_func_start ov4_0220D4CC
ov4_0220D4CC: ; 0x0220D4CC
	ldrb r2, [r0], #1
	cmp r2, #0
	bxeq lr
_0220D4D8:
	and r1, r2, #0xc0
	cmp r1, #0xc0
	addeq r0, r0, #1
	bxeq lr
	add r0, r0, r2
	ldrb r2, [r0], #1
	cmp r2, #0
	bne _0220D4D8
	bx lr
	arm_func_end ov4_0220D4CC

	arm_func_start ov4_0220D4FC
ov4_0220D4FC: ; 0x0220D4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sb, r2
	mov r2, sb, lsl #8
	mov sl, r1
	orr r1, r2, sb, asr #8
	strh r1, [sp, #4]
	cmp sl, #0x20
	mov r6, #0
	movne r1, #1
	strneh r1, [sp, #6]
	ldreq r1, _0220D79C ; =0x00001001
	strh r6, [sp, #0xa]
	streqh r1, [sp, #6]
	mov r1, #0x100
	strh r1, [sp, #8]
	add r1, sp, #0x10
	strh r6, [sp, #0xc]
	strh r6, [sp, #0xe]
	str r6, [sp]
	ldrb r7, [r0], #1
	mov fp, r3
	ldr r8, [sp, #0x68]
	add r2, r1, #1
	cmp r7, #0
	beq _0220D5C4
	mov r4, r6
	add r5, sp, #4
	mov r3, r6
_0220D570:
	cmp r7, #0x2e
	beq _0220D5A0
	sub r6, r2, r5
	cmp r6, #0x3c
	addge sp, sp, #0x40
	mvnge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, r4, #1
	mov r4, r6
	str r6, [sp]
	strb r7, [r2], #1
	b _0220D5B8
_0220D5A0:
	strb r6, [r1]
	mov r1, r2
	mov r4, r3
	mov r6, r3
	str r3, [sp]
	add r2, r2, #1
_0220D5B8:
	ldrb r7, [r0], #1
	cmp r7, #0
	bne _0220D570
_0220D5C4:
	ldr r0, [sp]
	mov r3, #0
	strb r0, [r1]
	strb r3, [r2]
	mov r0, sl, lsr #8
	strb r0, [r2, #1]
	strb sl, [r2, #2]
	strb r3, [r2, #3]
	mov r3, #1
	add r0, sp, #4
	add r1, r2, #5
	sub r1, r1, r0
	strb r3, [r2, #4]
	bl ov4_0220C6D8
	mov r4, #0
	bl OS_GetTick
	mov r5, r0, lsr #0x10
	orr r5, r5, r1, lsl #16
	b _0220D75C
_0220D610:
	bl ov4_0220C770
	cmp r0, #0
	bne _0220D624
	bl ov4_02208DF0
	b _0220D75C
_0220D624:
	add r0, sp, #0
	bl ov4_0220C1D0
	ldr r1, [sp]
	cmp r1, #0xc
	bls _0220D754
	ldrh r3, [r0]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	cmp sb, r2, lsr #16
	bne _0220D754
	ldrb r2, [r0, #3]
	and r2, r2, #0xf
	cmp r2, #3
	mvneq r4, #0
	beq _0220D754
	cmp r2, #0
	bne _0220D754
	ldrb r3, [r0, #4]
	ldrb r2, [r0, #5]
	add r6, r0, r1
	add r0, r0, #0xc
	orr r1, r2, r3, lsl #8
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	sub r7, r1, #1
	beq _0220D6A4
_0220D690:
	bl ov4_0220D4CC
	cmp r7, #0
	add r0, r0, #4
	sub r7, r7, #1
	bne _0220D690
_0220D6A4:
	cmp r0, r6
	bhs _0220D754
_0220D6AC:
	bl ov4_0220D4CC
	ldrb r7, [r0, #8]
	ldrb r1, [r0, #9]
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	orr r1, r1, r7, lsl #8
	mov r1, r1, lsl #0x10
	orr r2, r2, r3, lsl #8
	mov r2, r2, lsl #0x10
	cmp sl, r2, lsr #16
	mov r2, r1, lsr #0x10
	bne _0220D744
	cmp sl, #0xc
	beq _0220D724
	add r4, r0, #8
	add r0, r0, #6
	add r6, r4, r2
	add r1, r0, r2
	ldrb r3, [r0, r2]
	ldrb r0, [r1, #1]
	ldrb r2, [r4, r2]
	ldrb r1, [r6, #1]
	orr r0, r0, r3, lsl #8
	mov r0, r0, lsl #0x10
	orr r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r4, r0, r2, lsl #16
	b _0220D754
_0220D724:
	cmp r2, r8
	movhi r4, #2
	bhi _0220D754
	mov r1, fp
	add r0, r0, #0xa
	bl MI_CpuCopy8
	mov r4, #1
	b _0220D754
_0220D744:
	add r1, r2, #0xa
	add r0, r0, r1
	cmp r0, r6
	blo _0220D6AC
_0220D754:
	ldr r0, [sp]
	bl ov4_0220C2C4
_0220D75C:
	ldr r0, _0220D7A0 ; =0x0221DDF0
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	beq _0220D790
	cmp r4, #0
	bne _0220D790
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	blt _0220D610
_0220D790:
	mov r0, r4
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220D79C: .word 0x00001001
_0220D7A0: .word Unk_ov4_0221DDF0
	arm_func_end ov4_0220D4FC

	arm_func_start ov4_0220D7A4
ov4_0220D7A4: ; 0x0220D7A4
	str r0, [r1, #0]
	mov ip, #0
	mov r2, #0xa
_0220D7B0:
	ldrb r3, [r0]
	sub r3, r3, #0x30
	and r3, r3, #0xff
	cmp r3, #9
	mlals ip, r2, ip, r3
	addls r0, r0, #1
	strls r0, [r1]
	bls _0220D7B0
	mov r0, ip
	bx lr
	arm_func_end ov4_0220D7A4

	arm_func_start ov4_0220D7D8
ov4_0220D7D8: ; 0x0220D7D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r8, r0
	mov r7, r1
	mov r6, r5
	add r4, sp, #0
_0220D7F4:
	mov r0, r8
	mov r1, r4
	bl ov4_0220D7A4
	ldr r2, [sp]
	cmp r8, r2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r8, r2
	cmp r0, #0xff
	bhi _0220D848
	cmp r6, #3
	ldrneb r1, [r2]
	addne r8, r2, #1
	cmpne r1, #0x2e
	bne _0220D848
	cmp r6, #3
	bne _0220D854
	ldrb r1, [r8]
	cmp r1, #0
	beq _0220D854
_0220D848:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0220D854:
	add r6, r6, #1
	cmp r6, #4
	orr r5, r0, r5, lsl #8
	blt _0220D7F4
	str r5, [r7, #0]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_0220D7D8

	arm_func_start ov4_0220D874
ov4_0220D874: ; 0x0220D874
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r2
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	bl ov4_0220BDA8
	bl ov4_0220BD1C
	mov r2, r5
	mov r0, #0
	mov r1, #0x35
	bl ov4_0220BD48
	mov r0, r6
	mov r2, r4
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	bl ov4_0220D4FC
	mov r4, r0
	bl ov4_0220BDDC
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_0220D874

	arm_func_start ov4_0220D8D8
ov4_0220D8D8: ; 0x0220D8D8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r2, _0220DA08 ; =0x0221DDF0
	mov r6, #0
	ldr r5, [r2, #0x70]
	ldr r3, [r2, #0x68]
	ldr r1, [r2, #0x6c]
	umull r8, r7, r5, r3
	ldr sb, [r2, #0x78]
	mla r7, r5, r1, r7
	ldr r4, [r2, #0x74]
	adds fp, sb, r8
	mla r7, r4, r3, r7
	ldr r8, [r2, #0x7c]
	umull r3, r1, r5, fp
	adc sl, r8, r7
	mla r1, r5, sl, r1
	str fp, [r2, #0x68]
	mov r7, r6, lsl #0x10
	adds r5, sb, r3
	mla r1, r4, fp, r1
	str sl, [r2, #0x6c]
	orr r7, r7, sl, lsr #16
	adc r4, r8, r1
	mov r3, r6, lsl #0x10
	str r5, [r2, #0x68]
	orr r3, r3, r4, lsr #16
	add r1, sp, #8
	mov sl, r0
	strh r7, [sp, #2]
	str r4, [r2, #0x6c]
	strh r3, [sp, #4]
	bl ov4_0220D7D8
	cmp r0, #0
	ldrne r0, [sp, #8]
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	mov fp, r6
	ldr r7, _0220DA0C ; =0x0221DE50
	strb r0, [sp]
	strb r0, [sp, #1]
	add r6, sp, #2
	mov r5, fp
	mvn r4, #0
_0220D98C:
	mov r8, #0
	add sb, sp, #0
_0220D994:
	ldrb r0, [sb]
	cmp r0, #0
	beq _0220D9CC
	mov r0, r8, lsl #1
	ldrh r2, [r6, r0]
	ldr r1, [r7, r8, lsl #2]
	mov r0, sl
	bl ov4_0220D874
	cmp r0, #0
	str r0, [sp, #8]
	cmpne r0, r4
	bne _0220D9E8
	cmp r0, r4
	streqb r5, [sb]
_0220D9CC:
	add r8, r8, #1
	cmp r8, #2
	add sb, sb, #1
	blt _0220D994
	add fp, fp, #1
	cmp fp, #3
	blt _0220D98C
_0220D9E8:
	ldr r1, [sp, #8]
	mvn r0, #0
	cmp r1, r0
	moveq r0, #0
	streq r0, [sp, #8]
	ldr r0, [sp, #8]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220DA08: .word Unk_ov4_0221DDF0
_0220DA0C: .word Unk_ov4_0221DE50
	arm_func_end ov4_0220D8D8

	.data


	.global Unk_ov4_0221A190
Unk_ov4_0221A190: ; 0x0221A190
	.incbin "incbin/overlay4_data.bin", 0x4310, 0x4314 - 0x4310

	.global Unk_ov4_0221A194
Unk_ov4_0221A194: ; 0x0221A194
	.incbin "incbin/overlay4_data.bin", 0x4314, 0x431C - 0x4314

	.global Unk_ov4_0221A19C
Unk_ov4_0221A19C: ; 0x0221A19C
	.incbin "incbin/overlay4_data.bin", 0x431C, 0x4328 - 0x431C

	.global Unk_ov4_0221A1A8
Unk_ov4_0221A1A8: ; 0x0221A1A8
	.incbin "incbin/overlay4_data.bin", 0x4328, 0xB



	.bss


	.global Unk_ov4_0221DDF0
Unk_ov4_0221DDF0: ; 0x0221DDF0
	.space 0x1

	.global Unk_ov4_0221DDF1
Unk_ov4_0221DDF1: ; 0x0221DDF1
	.space 0x1

	.global Unk_ov4_0221DDF2
Unk_ov4_0221DDF2: ; 0x0221DDF2
	.space 0x2

	.global Unk_ov4_0221DDF4
Unk_ov4_0221DDF4: ; 0x0221DDF4
	.space 0x2

	.global Unk_ov4_0221DDF6
Unk_ov4_0221DDF6: ; 0x0221DDF6
	.space 0x2

	.global Unk_ov4_0221DDF8
Unk_ov4_0221DDF8: ; 0x0221DDF8
	.space 0x4

	.global Unk_ov4_0221DDFC
Unk_ov4_0221DDFC: ; 0x0221DDFC
	.space 0x4

	.global Unk_ov4_0221DE00
Unk_ov4_0221DE00: ; 0x0221DE00
	.space 0x4

	.global Unk_ov4_0221DE04
Unk_ov4_0221DE04: ; 0x0221DE04
	.space 0x4

	.global Unk_ov4_0221DE08
Unk_ov4_0221DE08: ; 0x0221DE08
	.space 0x4

	.global Unk_ov4_0221DE0C
Unk_ov4_0221DE0C: ; 0x0221DE0C
	.space 0x4

	.global Unk_ov4_0221DE10
Unk_ov4_0221DE10: ; 0x0221DE10
	.space 0x4

	.global Unk_ov4_0221DE14
Unk_ov4_0221DE14: ; 0x0221DE14
	.space 0x4

	.global Unk_ov4_0221DE18
Unk_ov4_0221DE18: ; 0x0221DE18
	.space 0x4

	.global Unk_ov4_0221DE1C
Unk_ov4_0221DE1C: ; 0x0221DE1C
	.space 0x4

	.global Unk_ov4_0221DE20
Unk_ov4_0221DE20: ; 0x0221DE20
	.space 0x4

	.global Unk_ov4_0221DE24
Unk_ov4_0221DE24: ; 0x0221DE24
	.space 0x4

	.global Unk_ov4_0221DE28
Unk_ov4_0221DE28: ; 0x0221DE28
	.space 0x4

	.global Unk_ov4_0221DE2C
Unk_ov4_0221DE2C: ; 0x0221DE2C
	.space 0x4

	.global Unk_ov4_0221DE30
Unk_ov4_0221DE30: ; 0x0221DE30
	.space 0x4

	.global Unk_ov4_0221DE34
Unk_ov4_0221DE34: ; 0x0221DE34
	.space 0x4

	.global Unk_ov4_0221DE38
Unk_ov4_0221DE38: ; 0x0221DE38
	.space 0x4

	.global Unk_ov4_0221DE3C
Unk_ov4_0221DE3C: ; 0x0221DE3C
	.space 0x4

	.global Unk_ov4_0221DE40
Unk_ov4_0221DE40: ; 0x0221DE40
	.space 0x4

	.global Unk_ov4_0221DE44
Unk_ov4_0221DE44: ; 0x0221DE44
	.space 0x4

	.global Unk_ov4_0221DE48
Unk_ov4_0221DE48: ; 0x0221DE48
	.space 0x4

	.global Unk_ov4_0221DE4C
Unk_ov4_0221DE4C: ; 0x0221DE4C
	.space 0x4

	.global Unk_ov4_0221DE50
Unk_ov4_0221DE50: ; 0x0221DE50
	.space 0x8

	.global Unk_ov4_0221DE58
Unk_ov4_0221DE58: ; 0x0221DE58
	.space 0x18

	.global Unk_ov4_0221DE70
Unk_ov4_0221DE70: ; 0x0221DE70
	.space 0x60

	.global Unk_ov4_0221DED0
Unk_ov4_0221DED0: ; 0x0221DED0
	.space 0x64

	.global Unk_ov4_0221DF34
Unk_ov4_0221DF34: ; 0x0221DF34
	.space 0x64

	.global Unk_ov4_0221DF98
Unk_ov4_0221DF98: ; 0x0221DF98
	.space 0xC0

	.global Unk_ov4_0221E058
Unk_ov4_0221E058: ; 0x0221E058
	.space 0xC0

	.global Unk_ov4_0221E118
Unk_ov4_0221E118: ; 0x0221E118
	.space 0x1C0

	.global Unk_ov4_0221E2D8
Unk_ov4_0221E2D8: ; 0x0221E2D8
	.space 0x8

	.global Unk_ov4_0221E2E0
Unk_ov4_0221E2E0: ; 0x0221E2E0
	.space 0x3C

	.global Unk_ov4_0221E31C
Unk_ov4_0221E31C: ; 0x0221E31C
	.space 0x180

	.global Unk_ov4_0221E49C
Unk_ov4_0221E49C: ; 0x0221E49C
	.space 0x184

	.global Unk_ov4_0221E620
Unk_ov4_0221E620: ; 0x0221E620
	.space 0x800

	.global Unk_ov4_0221EE20
Unk_ov4_0221EE20: ; 0x0221EE20
	.space 0x800

