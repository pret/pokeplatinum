	.include "macros/function.inc"
	.include "overlay004/ov4_0220DA10.inc"

	.extern Unk_021CCC80
	.extern Unk_ov4_0221DE04
	.extern Unk_ov4_0221DE30
	.extern Unk_ov4_0221DE58


	.text


	arm_func_start ov4_0220DA10
ov4_0220DA10: ; 0x0220DA10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl OS_DisableInterrupts
	mov r4, #0
	ldr r6, _0220DAA0 ; =0x0221F628
	mov r5, r0
	strb r4, [r7, #0x30]
	mov r8, #0x20
_0220DA30:
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _0220DA84
	ldr r0, [r6, #0x54]
	cmp r0, #0
	ldreqh r0, [r6, #0x58]
	cmpeq r0, #0
	bne _0220DA84
	mov r0, r6
	mov r2, r8
	add r1, r7, #0x74
	bl memcmp
	cmp r0, #0
	bne _0220DA84
	mov r1, r7
	add r0, r6, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r7, #0x30]
	b _0220DA94
_0220DA84:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #0x5c
	blt _0220DA30
_0220DA94:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220DAA0: .word Unk_ov4_0221F628
	arm_func_end ov4_0220DA10

	arm_func_start ov4_0220DAA4
ov4_0220DAA4: ; 0x0220DAA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r1, #0
	ldr r5, _0220DB40 ; =0x0221F628
	mov r4, r0
	strb r1, [r8, #0x30]
_0220DAC8:
	ldrb r0, [r5, #0x5a]
	cmp r0, #0
	beq _0220DB24
	ldr r0, [r5, #0x54]
	cmp r0, r7
	ldreqh r0, [r5, #0x58]
	cmpeq r0, r6
	bne _0220DB24
	mov r0, r5
	add r1, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r1, r8
	add r0, r5, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r5, #0x50]
	mov r0, #1
	strb r0, [r8, #0x30]
	b _0220DB34
_0220DB24:
	add r1, r1, #1
	cmp r1, #4
	add r5, r5, #0x5c
	blt _0220DAC8
_0220DB34:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220DB40: .word Unk_ov4_0221F628
	arm_func_end ov4_0220DAA4

	arm_func_start ov4_0220DB44
ov4_0220DB44: ; 0x0220DB44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r4, r0
	bl OS_GetTick
	ldr sb, _0220DC2C ; =0x0221F628
	mov r5, r0, lsr #0x10
	mov r2, #0
	mov r0, r2
	mov r3, sb
	orr r5, r5, r1, lsl #16
	mvn ip, #0
_0220DB7C:
	ldrb lr, [r3, #0x5a]
	cmp lr, #0
	cmpne r7, #0
	beq _0220DBB0
	ldr r1, [r3, #0x54]
	cmp r7, r1
	bne _0220DBB0
	cmp r6, #0
	beq _0220DBB0
	ldrh r1, [r3, #0x58]
	cmp r6, r1
	moveq sb, r3
	beq _0220DBEC
_0220DBB0:
	cmp r2, ip
	beq _0220DBDC
	cmp lr, #0
	moveq r2, ip
	moveq sb, r3
	beq _0220DBDC
	ldr r1, [r3, #0x50]
	sub r1, r5, r1
	cmp r1, r2
	movhi r2, r1
	movhi sb, r3
_0220DBDC:
	add r0, r0, #1
	cmp r0, #4
	add r3, r3, #0x5c
	blt _0220DB7C
_0220DBEC:
	mov r1, sb
	add r0, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r8
	add r1, sb, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	str r5, [sb, #0x50]
	mov r0, #1
	strb r0, [sb, #0x5a]
	str r7, [sb, #0x54]
	mov r0, r4
	strh r6, [sb, #0x58]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0220DC2C: .word Unk_ov4_0221F628
	arm_func_end ov4_0220DB44

	arm_func_start ov4_0220DC30
ov4_0220DC30: ; 0x0220DC30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	ldr r7, _0220DC94 ; =0x0221F628
	mov r6, r0
	mov r5, #0
	mov r4, #0x20
_0220DC4C:
	ldrb r0, [r7, #0x5a]
	cmp r0, #0
	beq _0220DC78
	mov r0, r7
	mov r2, r4
	add r1, r8, #0x74
	bl memcmp
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r7, #0x5a]
	beq _0220DC88
_0220DC78:
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x5c
	blt _0220DC4C
_0220DC88:
	mov r0, r6
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220DC94: .word Unk_ov4_0221F628
	arm_func_end ov4_0220DC30

	arm_func_start ov4_0220DC98
ov4_0220DC98: ; 0x0220DC98
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	add r0, sp, #0xc
	bl RTC_GetDate
	add r0, sp, #0
	bl RTC_GetTime
	add r0, sp, #0xc
	add r1, sp, #0
	bl RTC_ConvertDateTimeToSecond
	ldr r1, _0220DCCC ; =0x386D4380
	add r0, r0, r1
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	; .align 2, 0
_0220DCCC: .word 0x386D4380
	arm_func_end ov4_0220DC98

	arm_func_start ov4_0220DCD0
ov4_0220DCD0: ; 0x0220DCD0
	ldr r0, _0220DCDC ; =0x0221A1BC
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_0220DCDC: .word Unk_ov4_0221A1BC
	arm_func_end ov4_0220DCD0

	arm_func_start ov4_0220DCE0
ov4_0220DCE0: ; 0x0220DCE0
	ldr r1, _0220DCEC ; =0x0221A1BC
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_0220DCEC: .word Unk_ov4_0221A1BC
	arm_func_end ov4_0220DCE0

	arm_func_start ov4_0220DCF0
ov4_0220DCF0: ; 0x0220DCF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0220DD34 ; =0x0221A1BC
	ldr r0, [r0, #4]
	cmp r0, #0x20
	mvnhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r0, _0220DD38 ; =0x021CCC80
	ldr r5, [r0, #4]
	mov r0, r5
	bl OS_GetThreadPriority
	ldr r1, _0220DD34 ; =0x0221A1BC
	mov r4, r0
	ldr r1, [r1, #4]
	mov r0, r5
	bl OS_SetThreadPriority
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220DD34: .word Unk_ov4_0221A1BC
_0220DD38: .word Unk_021CCC80
	arm_func_end ov4_0220DCF0

	arm_func_start ov4_0220DD3C
ov4_0220DD3C: ; 0x0220DD3C
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0x20
	ldmhsia sp!, {r3, pc}
	ldr r0, _0220DD5C ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_SetThreadPriority
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220DD5C: .word Unk_021CCC80
	arm_func_end ov4_0220DD3C

	arm_func_start ov4_0220DD60
ov4_0220DD60: ; 0x0220DD60
	ldr r2, _0220DD84 ; =0x021CCC80
	ldr r2, [r2, #4]
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strne r0, [r2, #0x814]
	strne r1, [r2, #0x818]
	bx lr
	; .align 2, 0
_0220DD84: .word Unk_021CCC80
	arm_func_end ov4_0220DD60

	arm_func_start ov4_0220DD88
ov4_0220DD88: ; 0x0220DD88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, [r0, #0x818]
	mov r8, r1
	cmp r6, #0
	mov r4, #0
	ble _0220DDCC
	ldr r5, [r0, #0x814]
_0220DDA4:
	ldr r7, [r5, r4, lsl #2]
	mov r1, r8
	ldr r0, [r7, #0]
	bl strcmp
	cmp r0, #0
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r4, r4, #1
	cmp r4, r6
	blt _0220DDA4
_0220DDCC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_0220DD88

	arm_func_start ov4_0220DDD4
ov4_0220DDD4: ; 0x0220DDD4
	ldr r1, [r0, #0]
	ldrb r2, [r1]
	add r3, r1, #1
	tst r2, #0x80
	beq _0220DE18
	ands r1, r2, #0x7f
	sub ip, r1, #1
	mov r2, #0
	beq _0220DE18
_0220DDF8:
	tst r2, #-0x1000000
	mvnne r0, #0
	bxne lr
	ldrb r1, [r3], #1
	cmp ip, #0
	sub ip, ip, #1
	add r2, r1, r2, lsl #8
	bne _0220DDF8
_0220DE18:
	str r3, [r0, #0]
	mov r0, r2
	bx lr
	arm_func_end ov4_0220DDD4

	arm_func_start ov4_0220DE24
ov4_0220DE24: ; 0x0220DE24
	ldrsb r3, [r0]
	mov ip, r0
	cmp r3, #0
	beq _0220DE6C
_0220DE34:
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _0220DE34
	sub r3, r0, ip
	cmp r3, #0xff
	bxge lr
	mov r3, #0x2c
	strb r3, [r0]
	mov r3, #0x20
	strb r3, [r0, #1]
	add r0, r0, #2
	b _0220DE6C
_0220DE64:
	ldrsb r3, [r1], #1
	strb r3, [r0], #1
_0220DE6C:
	cmp r2, #0
	sub r2, r2, #1
	beq _0220DE84
	sub r3, r0, ip
	cmp r3, #0xff
	blt _0220DE64
_0220DE84:
	mov r1, #0
	strb r1, [r0]
	bx lr
	arm_func_end ov4_0220DE24

	arm_func_start ov4_0220DE90
ov4_0220DE90: ; 0x0220DE90
	stmfd sp!, {r4, lr}
	ldrb ip, [r0, #1]
	ldrb r3, [r0], #2
	mov r2, #0xa
	cmp r1, #0x17
	mla r1, r3, r2, ip
	sub lr, r1, #0x210
	bne _0220DEC4
	cmp lr, #0x32
	addlo r4, lr, #0x7d0
	addhs r1, lr, #0x36c
	addhs r4, r1, #0x400
	b _0220DEDC
_0220DEC4:
	ldrb ip, [r0, #1]
	ldrb r3, [r0], #2
	mov r1, #0x64
	mla r2, r3, r2, ip
	sub r2, r2, #0x210
	mla r4, lr, r1, r2
_0220DEDC:
	ldrb ip, [r0, #1]
	ldrb r3, [r0]
	mov r1, #0xa
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #2]
	mla ip, r3, r1, ip
	mla r1, r0, r1, r2
	sub r0, ip, #0x210
	mov r0, r0, lsl #8
	add r2, r0, r4, lsl #16
	sub r0, r1, #0x210
	add r0, r2, r0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220DE90

	arm_func_start ov4_0220DF10
ov4_0220DF10: ; 0x0220DF10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov fp, r1
	ldr r1, [fp]
	mov sb, r0
	add r0, r1, #1
	str r0, [sp, #4]
	add r0, sp, #4
	mov r7, r2
	mov r6, r3
	ldr r8, [sp, #0x30]
	ldrb r5, [r1]
	bl ov4_0220DDD4
	movs r4, r0
	bmi _0220DF54
	cmp r4, #0x7d0
	ble _0220DF60
_0220DF54:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220DF60:
	and r1, r5, #0x1f
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _0220E384
_0220DF70: ; jump table
	b _0220E384 ; case 0
	b _0220E384 ; case 1
	b _0220DFD4 ; case 2
	b _0220E0CC ; case 3
	b _0220E384 ; case 4
	b _0220E384 ; case 5
	b _0220E14C ; case 6
	b _0220E384 ; case 7
	b _0220E384 ; case 8
	b _0220E384 ; case 9
	b _0220E384 ; case 10
	b _0220E384 ; case 11
	b _0220E1E4 ; case 12
	b _0220E384 ; case 13
	b _0220E384 ; case 14
	b _0220E384 ; case 15
	b _0220E2B4 ; case 16
	b _0220E334 ; case 17
	b _0220E384 ; case 18
	b _0220E1E4 ; case 19
	b _0220E1E4 ; case 20
	b _0220E384 ; case 21
	b _0220E1E4 ; case 22
	b _0220E264 ; case 23
	b _0220E264 ; case 24
_0220DFD4:
	ldrb r0, [sb, #0x5ad]
	cmp r0, #0
	beq _0220E0BC
	cmp r6, #0
	bne _0220E054
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _0220E010
_0220DFF8:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _0220DFF8
_0220E010:
	cmp r8, #0
	beq _0220E024
	cmp r8, #2
	beq _0220E044
	b _0220E0BC
_0220E024:
	cmp r4, #0x100
	bgt _0220E0BC
	add r1, sb, #0x94
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [sb, #0x594]
	b _0220E0BC
_0220E044:
	str r4, [sb, #0x484]
	ldr r0, [sp, #4]
	str r0, [sb, #0x488]
	b _0220E0BC
_0220E054:
	cmp r6, #1
	bne _0220E0BC
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _0220E084
_0220E06C:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _0220E06C
_0220E084:
	cmp r8, #0
	beq _0220E0A0
	cmp r8, #2
	streq r4, [sb, #0x48c]
	ldreq r0, [sp, #4]
	streq r0, [sb, #0x490]
	b _0220E0BC
_0220E0A0:
	cmp r4, #8
	bgt _0220E0BC
	add r1, sb, #0x198
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [sb, #0x5a0]
_0220E0BC:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _0220E3E8
_0220E0CC:
	cmp r7, #1
	bne _0220E0F0
	cmp r8, #2
	beq _0220E0F0
	ldr r1, [sp, #4]
	sub r0, r4, #1
	add r1, r1, #1
	str r1, [sb, #0x5a4]
	str r0, [sb, #0x5a8]
_0220E0F0:
	ldrb r0, [sb, #0x5ad]
	cmp r0, #0
	beq _0220E13C
	ldr r0, [sp, #4]
	add r1, sp, #4
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, sb
	mov r2, r7
	mov r3, #0
	str r8, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	strb r0, [sb, #0x5ad]
	b _0220E3E8
_0220E13C:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _0220E3E8
_0220E14C:
	ldr r6, [sp, #4]
	ldr sl, _0220E3FC ; =0x0221A1C4
	mov r5, #0
_0220E158:
	ldr r7, [sl, r5, lsl #2]
	mov r0, r7
	bl strlen
	mov r2, r0
	mov r0, r6
	mov r1, r7
	bl memcmp
	cmp r0, #0
	bne _0220E1C8
	cmp r5, #5
	addls pc, pc, r5, lsl #2
	b _0220E1D4
_0220E188: ; jump table
	b _0220E1D4 ; case 0
	b _0220E1A0 ; case 1
	b _0220E1A0 ; case 2
	b _0220E1B0 ; case 3
	b _0220E1B0 ; case 4
	b _0220E1BC ; case 5
_0220E1A0:
	cmp r8, #0
	streq r5, [sb, #0x45c]
	strb r5, [sb, #0x5ad]
	b _0220E1D4
_0220E1B0:
	cmp r8, #2
	strne r5, [sb, #0x458]
	b _0220E1D4
_0220E1BC:
	cmp r8, #2
	strneb r5, [sb, #0x5ae]
	b _0220E1D4
_0220E1C8:
	add r5, r5, #1
	cmp r5, #6
	blt _0220E158
_0220E1D4:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _0220E3E8
_0220E1E4:
	cmp r8, #2
	beq _0220E24C
	ldrb r0, [sb, #0x5ac]
	cmp r0, #0
	beq _0220E23C
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, sb, #0x6b0
	bl ov4_0220DE24
	ldrb r0, [sb, #0x5ae]
	cmp r0, #5
	bne _0220E24C
	cmp r4, #0x4f
	bgt _0220E24C
	ldr r0, [sp, #4]
	mov r2, r4
	add r1, sb, #0x7b0
	bl MI_CpuCopy8
	add r0, sb, r4
	mov r1, #0
	strb r1, [r0, #0x7b0]
	b _0220E24C
_0220E23C:
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, sb, #0x5b0
	bl ov4_0220DE24
_0220E24C:
	mov r0, #0
	strb r0, [sb, #0x5ae]
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _0220E3E8
_0220E264:
	cmp r8, #2
	beq _0220E29C
	ldr r0, [sp, #4]
	bl ov4_0220DE90
	cmp r6, #0
	ldr r1, [sb, #0x80c]
	bne _0220E290
	cmp r1, r0
	movhs r0, #1
	strhsb r0, [sb, #0x5af]
	b _0220E29C
_0220E290:
	cmp r1, r0
	movhi r0, #0
	strhib r0, [sb, #0x5af]
_0220E29C:
	ldr r1, [sp, #4]
	mov r0, #1
	add r1, r1, r4
	str r1, [sp, #4]
	strb r0, [sb, #0x5ac]
	b _0220E3E8
_0220E2B4:
	cmp r7, #0
	cmpeq r6, #0
	bne _0220E2CC
	cmp r8, #2
	ldrne r0, [sp, #4]
	strne r0, [sb, #0x460]
_0220E2CC:
	ldr r0, [sp, #4]
	mov r5, #0
	add sl, r0, r4
	cmp r0, sl
	bhs _0220E31C
	add r4, sp, #4
_0220E2E4:
	mov r0, sb
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	add r5, r5, #1
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, sl
	blo _0220E2E4
_0220E31C:
	cmp r7, #1
	cmpeq r6, #0
	bne _0220E3E8
	cmp r8, #2
	strne r0, [sb, #0x464]
	b _0220E3E8
_0220E334:
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _0220E3E8
	add r5, sp, #4
	mov r4, #0
_0220E34C:
	mov r0, sb
	mov r1, r5
	mov r3, r4
	add r2, r7, #1
	str r8, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _0220E34C
	b _0220E3E8
_0220E384:
	cmp r5, #0xa0
	bne _0220E3DC
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _0220E3E8
	add r5, sp, #4
	mov r4, #0
_0220E3A4:
	mov r0, sb
	mov r1, r5
	mov r3, r4
	add r2, r7, #1
	str r8, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _0220E3A4
	b _0220E3E8
_0220E3DC:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_0220E3E8:
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [fp]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220E3FC: .word Unk_ov4_0221A1C4
	arm_func_end ov4_0220DF10

	arm_func_start ov4_0220E400
ov4_0220E400: ; 0x0220E400
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x5a4]
	mov r7, r1
	cmp r0, #0
	ldrne r0, [r8, #0x5a8]
	cmpne r0, #0
	ldrne r0, [r7, #0x10]
	cmpne r0, #0
	ldrne r0, [r7, #0xc]
	cmpne r0, #0
	ldrne r0, [r7, #8]
	cmpne r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r0, lsl #1
	ldr r1, _0220E5A0 ; =0x0221DE04
	add r0, r0, r0, lsr #31
	mov r5, r0, asr #1
	ldr r1, [r1, #0]
	mov r0, r5, lsl #3
	blx r1
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r6, r4, r5, lsl #1
	add sb, r6, r5, lsl #1
	ldr r1, [r8, #0x5a4]
	ldr r2, [r8, #0x5a8]
	mov r0, r6
	mov r3, r5
	add sl, sb, r5, lsl #1
	bl ov4_02212C28
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0xc]
	mov r0, sb
	mov r3, r5
	bl ov4_02212C28
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	mov r0, sl
	mov r3, r5
	bl ov4_02212C28
	bl ov4_0220DCF0
	mov r2, sb
	mov sb, r0
	mov r0, r4
	mov r1, r6
	mov r3, r5
	str sl, [sp]
	bl ov4_02212614
	mov r0, sb
	bl ov4_0220DD3C
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl ov4_02212C84
	ldrb r0, [r4, r5, lsl #1]
	mov r5, #0
	cmp r0, #0
	ldreqb r0, [r6, #1]
	cmpeq r0, #1
	movne r5, #2
	bne _0220E584
	ldr r3, [r7, #4]
	mov r2, #2
	cmp r3, #2
	ble _0220E540
_0220E528:
	ldrb r0, [r6, r2]
	cmp r0, #0xff
	bne _0220E540
	add r2, r2, #1
	cmp r2, r3
	blt _0220E528
_0220E540:
	add r1, r2, #1
	cmp r1, r3
	bge _0220E580
	ldrb r0, [r6, r2]
	cmp r0, #0
	ldreqb r0, [r6, r1]
	cmpeq r0, #0x30
	bne _0220E580
	ldr r2, [r8, #0x47c]
	add r0, r8, #0x68
	add r1, r6, r3
	add r0, r0, #0x400
	sub r1, r1, r2
	bl memcmp
	cmp r0, #0
	beq _0220E584
_0220E580:
	mov r5, #2
_0220E584:
	ldr r1, _0220E5A4 ; =0x0221DE30
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0220E5A0: .word Unk_ov4_0221DE04
_0220E5A4: .word Unk_ov4_0221DE30
	arm_func_end ov4_0220E400

	arm_func_start ov4_0220E5A8
ov4_0220E5A8: ; 0x0220E5A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5af]
	ldr r1, [r5, #0x45c]
	cmp r0, #0
	movne r4, #0
	moveq r4, #0x8000
	mvn r0, #0
	cmp r1, r0
	orreq r0, r4, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x458]
	cmp r0, #3
	beq _0220E5EC
	cmp r0, #4
	beq _0220E624
	b _0220E65C
_0220E5EC:
	add r0, r5, #0x3fc
	bl ov4_02211338
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x3fc
	sub r2, r2, r1
	bl ov4_02211380
	add r1, r5, #0x68
	add r0, r5, #0x3fc
	add r1, r1, #0x400
	bl ov4_02211438
	mov r0, #0x10
	str r0, [r5, #0x47c]
	b _0220E664
_0220E624:
	add r0, r5, #0x348
	bl ov4_02211BF8
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x348
	sub r2, r2, r1
	bl ov4_02211C4C
	add r1, r5, #0x68
	add r0, r5, #0x348
	add r1, r1, #0x400
	bl ov4_02211D04
	mov r0, #0x14
	str r0, [r5, #0x47c]
	b _0220E664
_0220E65C:
	orr r0, r4, #3
	ldmia sp!, {r3, r4, r5, pc}
_0220E664:
	mov r0, r5
	add r1, r5, #0x5b0
	bl ov4_0220DD88
	movs r1, r0
	orreq r0, r4, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov4_0220E400
	orr r0, r4, r0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220E5A8

	arm_func_start ov4_0220E68C
ov4_0220E68C: ; 0x0220E68C
	mov r2, r0
	b _0220E698
_0220E694:
	add r0, r0, #1
_0220E698:
	ldrsb r1, [r0]
	cmp r1, #0x2e
	cmpne r1, #0
	bne _0220E694
	sub r0, r0, r2
	bx lr
	arm_func_end ov4_0220E68C

	arm_func_start ov4_0220E6B0
ov4_0220E6B0: ; 0x0220E6B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	b _0220E6CC
_0220E6C0:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0220E6CC:
	ldrsb r0, [r5], #1
	ldrsb r1, [r6], #1
	cmp r1, r0
	beq _0220E6C0
	cmp r0, #0x2a
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	sub r6, r6, #1
	mov r0, r6
	bl ov4_0220E68C
	mov r4, r0
	mov r0, r5
	bl ov4_0220E68C
	cmp r0, r4
	movgt r0, #1
	ldmgtia sp!, {r4, r5, r6, pc}
	sub r0, r4, r0
	add r6, r6, r0
	b _0220E6CC
	arm_func_end ov4_0220E6B0
_0220E718:
	.byte 0x70, 0x80, 0xBD, 0xE8

	arm_func_start ov4_0220E71C
ov4_0220E71C: ; 0x0220E71C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r1, [sp, #0x44]
	mov sl, r0
	ldrb r4, [r1, #2]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, r1, #3
	mvn r1, #0
	str r0, [sp, #0x44]
	add r2, r2, r3, lsl #8
	add r0, sp, #8
	str r1, [sl, #0x45c]
	add r8, r4, r2, lsl #8
	bl RTC_GetDate
	mov r6, #0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, #0x7d0
	mov r0, r0, lsl #8
	ldr r2, [sp, #0x10]
	add r0, r0, r1, lsl #16
	add r0, r2, r0
	str r0, [sl, #0x80c]
	strb r6, [sl, #0x6b0]
	str r6, [sl, #0x5a0]
	mov sb, r6
	str r6, [sl, #0x594]
	mov fp, #2
	mvn r5, #0
	mov r4, r6
_0220E79C:
	ldr r1, [sp, #0x44]
	mov r0, sl
	ldrb r2, [r1, #2]
	ldrb ip, [r1]
	ldrb r3, [r1, #1]
	add r7, r1, #3
	add r1, sp, #0x44
	str r7, [sp, #0x44]
	str r5, [sl, #0x458]
	strb r4, [sl, #0x5ad]
	strb r4, [sl, #0x5ac]
	strb r4, [sl, #0x5af]
	strb r4, [sl, #0x6b0]
	strb r4, [sl, #0x5b0]
	strb r4, [sl, #0x7b0]
	add r3, r3, ip, lsl #8
	ldr r7, [sp, #0x44]
	add r3, r2, r3, lsl #8
	add r2, r3, #3
	str r7, [sl, #0x804]
	str r3, [sl, #0x808]
	sub r8, r8, r2
	mov r2, r4
	mov r3, r4
	str r6, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	bne _0220E824
	ldr r0, [sl, #0x594]
	cmp r0, #0x33
	blo _0220E824
	ldr r0, [sl, #0x5a0]
	cmp r0, #0
	bne _0220E83C
_0220E824:
	mov r0, #9
	add sp, sp, #0x18
	strb r0, [sl, #0x455]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_0220E83C:
	mov r0, sl
	bl ov4_0220E5A8
	mov r7, r0
	cmp sb, #0
	bne _0220E86C
	ldr r0, [sl, #0x800]
	cmp r0, #0
	beq _0220E86C
	add r1, sl, #0x7b0
	bl ov4_0220E6B0
	cmp r0, #0
	orrne r7, r7, #0x4000
_0220E86C:
	and r6, r7, #0xff
	cmp r6, #1
	bne _0220E8DC
	cmp r8, #0
	beq _0220E8DC
	ldr r1, [sp, #0x44]
	mov r2, #0
	add r1, r1, #3
	str r1, [sp, #4]
	mov r1, #0
	strb r1, [sl, #0x5ad]
	mov r0, sl
	add r1, sp, #4
	mov r3, r2
	str fp, [sp]
	bl ov4_0220DF10
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x18
	strneb r0, [sl, #0x455]
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, sl
	add r1, sl, #0x480
	bl ov4_0220E400
	bic r1, r7, #0xff
	orr r7, r1, r0
_0220E8DC:
	ldr r3, [sl, #0x810]
	cmp r3, #0
	beq _0220E8FC
	mov r0, r7
	mov r1, sl
	mov r2, sb
	blx r3
	mov r7, r0
_0220E8FC:
	cmp r6, #0
	add sb, sb, #1
	beq _0220E91C
	cmp r7, #0
	bne _0220E91C
	cmp r8, #0
	movne r6, #1
	bne _0220E79C
_0220E91C:
	cmp r7, #0
	moveq r0, #3
	streqb r0, [sl, #0x455]
	movne r0, #9
	strneb r0, [sl, #0x455]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_0220E71C

	arm_func_start ov4_0220E940
ov4_0220E940: ; 0x0220E940
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	add r0, r5, #2
	add r1, r6, #0x54
	mov r2, #0x20
	bl MI_CpuCopy8
	ldrb r7, [r6, #0x30]
	ldrb r4, [r5, #0x22]
	add r5, r5, #0x23
	cmp r7, #0
	beq _0220E998
	cmp r4, #0x20
	bne _0220E998
	mov r1, r5
	add r0, r6, #0x74
	mov r2, #0x20
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r6, #0x31]
	beq _0220E9D4
_0220E998:
	cmp r7, #0
	beq _0220E9A8
	mov r0, r6
	bl ov4_0220DC30
_0220E9A8:
	cmp r4, #0
	moveq r0, #0
	beq _0220E9C8
	mov r0, r5
	add r1, r6, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, #1
_0220E9C8:
	strb r0, [r6, #0x30]
	mov r0, #0
	strb r0, [r6, #0x31]
_0220E9D4:
	add r0, r5, r4
	ldrb r2, [r5, r4]
	ldrb r1, [r0, #1]
	mov r0, #2
	add r1, r1, r2, lsl #8
	strh r1, [r6, #0x32]
	strb r0, [r6, #0x455]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220E940

	arm_func_start ov4_0220E9F4
ov4_0220E9F4: ; 0x0220E9F4
	stmfd sp!, {r4, lr}
	cmp r1, #0
	mov r4, #0
	ble _0220EA38
_0220EA04:
	ldrb lr, [r0]
	ldrb ip, [r0, #1]
	cmp r2, #3
	add lr, ip, lr, lsl #8
	ldreqb ip, [r0, #2]
	addeq lr, ip, lr, lsl #8
	cmp lr, r3
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r1
	add r0, r0, r2
	blt _0220EA04
_0220EA38:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220E9F4

	arm_func_start ov4_0220EA40
ov4_0220EA40: ; 0x0220EA40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0220EA9C ; =0x0221A1BC
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_0220EA58:
	mov r0, r5, lsl #1
	ldrh r3, [r4, r0]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl ov4_0220E9F4
	cmp r0, #0
	beq _0220EA88
	ldr r0, _0220EA9C ; =0x0221A1BC
	mov r1, r5, lsl #1
	ldrh r0, [r0, r1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220EA88:
	add r5, r5, #1
	cmp r5, #2
	blo _0220EA58
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0220EA9C: .word Unk_ov4_0221A1BC
	arm_func_end ov4_0220EA40

	arm_func_start ov4_0220EAA0
ov4_0220EAA0: ; 0x0220EAA0
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov4_0220EAA0

	arm_func_start ov4_0220EAB0
ov4_0220EAB0: ; 0x0220EAB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl ov4_0220EAA0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r6, #2]
	ldrb r1, [r6, #3]
	ldr r3, _0220EB74 ; =0x55555556
	add r0, r6, #8
	add r4, r1, r2, lsl #8
	smull r2, r1, r3, r4
	add r1, r1, r4, lsr #31
	mov r2, #3
	bl ov4_0220EA40
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	strh r0, [r7, #0x32]
	ldrb r5, [r6, #4]
	ldrb r3, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #7]
	mov r1, #0
	add r3, r3, r5, lsl #8
	add r5, r0, r2, lsl #8
	add r0, r4, #8
	strb r1, [r7, #0x30]
	cmp r5, #0x20
	add r4, r0, r3
	blt _0220EB48
	add r0, r6, r4
	add r1, r7, #0x34
	mov r2, #0x20
	bl MI_CpuCopy8
	b _0220EB68
_0220EB48:
	add r0, r7, #0x34
	rsb r2, r5, #0x20
	bl MI_CpuFill8
	add r1, r7, #0x54
	mov r2, r5
	add r0, r6, r4
	sub r1, r1, r5
	bl MI_CpuCopy8
_0220EB68:
	mov r0, #1
	strb r0, [r7, #0x455]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0220EB74: .word 0x55555556
	arm_func_end ov4_0220EAB0

	arm_func_start ov4_0220EB78
ov4_0220EB78: ; 0x0220EB78
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl ov4_0220EAA0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r6, #2
	add r1, r4, #0x34
	mov r2, #0x20
	bl MI_CpuCopy8
	ldrb r5, [r6, #0x22]
	add r6, r6, #0x23
	cmp r5, #0x20
	movne r0, #0
	strneb r0, [r4, #0x30]
	bne _0220EBD8
	mov r0, r6
	add r1, r4, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r4
	bl ov4_0220DA10
_0220EBD8:
	add r0, r6, r5
	ldrb r1, [r0, #1]
	ldrb r3, [r6, r5]
	add r0, r0, #2
	mov r2, #2
	add r1, r1, r3, lsl #8
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	bl ov4_0220EA40
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0x32]
	movne r0, #1
	strneb r0, [r4, #0x455]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220EB78

	arm_func_start ov4_0220EC14
ov4_0220EC14: ; 0x0220EC14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	movs sl, r2
	str r0, [sp, #8]
	ldrne r0, [sl]
	mov fp, r1
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r0, lsl #1
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r4, r0, #1
	mov r0, #0x14
	mul r0, r4, r0
	ldr r1, _0220EE4C ; =0x0221DE04
	ldr r1, [r1, #0]
	blx r1
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, r5, r4, lsl #1
	add r7, r6, r4, lsl #1
	add r1, r7, r4, lsl #1
	str r1, [sp, #0x10]
	add r1, r1, r4, lsl #1
	add r8, r1, r4, lsl #1
	str r1, [sp, #0xc]
	ldr r2, [sl]
	add sb, r8, r4, lsl #1
	mov r1, fp
	mov r3, r4
	add fp, sb, r4, lsl #1
	bl ov4_02212C28
	ldr r1, [sl, #0x1c]
	ldr r2, [sl, #0x18]
	mov r0, r6
	mov r3, r4
	bl ov4_02212C28
	ldr r1, [sl, #0xc]
	ldr r2, [sl, #8]
	mov r0, r8
	mov r3, r4
	bl ov4_02212C28
	bl ov4_0220DCF0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r8, [sp]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl ov4_02212A1C
	ldr r1, [sl, #0x24]
	ldr r2, [sl, #0x20]
	mov r0, r6
	mov r3, r4
	bl ov4_02212C28
	ldr r1, [sl, #0x14]
	ldr r2, [sl, #0x10]
	mov r0, r8
	mov r3, r4
	bl ov4_02212C28
	ldr r0, [sp, #0xc]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r8, [sp]
	bl ov4_02212A1C
	ldr r0, [sp, #0x14]
	bl ov4_0220DD3C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r5
	mov r3, r4
	bl ov4_02212014
	ldr r1, [sl, #0x2c]
	ldr r2, [sl, #0x28]
	mov r0, r6
	mov r3, r4
	bl ov4_02212C28
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl ov4_02212190
	ldr r1, [sl, #0x14]
	ldr r2, [sl, #0x10]
	mov r0, r6
	mov r3, r4
	bl ov4_02212C28
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl ov4_02212190
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r3, r4
	bl ov4_02211ED4
	ldr r1, [sl, #4]
	ldr r2, [sl]
	mov r0, r6
	mov r3, r4
	bl ov4_02212C28
	mov r0, r7
	mov r1, r4
	bl ov4_02211EA4
	cmp r0, #0
	bge _0220EE08
	mov r0, r7
	mov r1, r4
	bl ov4_02211FD4
	mov r1, r7
	mov r2, r6
	mov r3, sb
	mov r0, #0
	stmia sp, {r4, fp}
	bl ov4_02212434
	mov r0, sb
	mov r1, r6
	mov r2, sb
	mov r3, r4
	bl ov4_02212014
	b _0220EE20
_0220EE08:
	mov r1, r7
	mov r2, r6
	mov r3, sb
	mov r0, #0
	stmia sp, {r4, fp}
	bl ov4_02212434
_0220EE20:
	ldr r0, [sp, #8]
	mov r1, sb
	mov r3, r4
	mov r2, #0x30
	bl ov4_02212C84
	ldr r1, _0220EE50 ; =0x0221DE30
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220EE4C: .word Unk_ov4_0221DE04
_0220EE50: .word Unk_ov4_0221DE30
	arm_func_end ov4_0220EC14

	arm_func_start ov4_0220EE54
ov4_0220EE54: ; 0x0220EE54
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r2
	mov r6, r0
	mov r5, r1
	add r0, r4, #0x348
	bl ov4_02211BF8
	mov r0, r5
	bl strlen
	mov r2, r0
	mov r1, r5
	add r0, r4, #0x348
	bl ov4_02211C4C
	add r0, r4, #0x348
	mov r1, r4
	mov r2, #0x30
	bl ov4_02211C4C
	add r0, r4, #0x348
	add r1, r4, #0x34
	mov r2, #0x40
	bl ov4_02211C4C
	add r0, r4, #0x348
	add r1, sp, #0
	bl ov4_02211D04
	add r0, r4, #0x3fc
	bl ov4_02211338
	add r0, r4, #0x3fc
	mov r1, r4
	mov r2, #0x30
	bl ov4_02211380
	add r0, r4, #0x3fc
	add r1, sp, #0
	mov r2, #0x14
	bl ov4_02211380
	add r0, r4, #0x3fc
	mov r1, r6
	bl ov4_02211438
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_0220EE54

	arm_func_start ov4_0220EEF0
ov4_0220EEF0: ; 0x0220EEF0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	mov r4, r0
	ldr r1, _0220EF44 ; =0x0221A208
	add r0, sp, #0
	mov r2, r4
	bl ov4_0220EE54
	ldr r1, _0220EF48 ; =0x0221A20C
	add r0, sp, #0x10
	mov r2, r4
	bl ov4_0220EE54
	ldr r1, _0220EF4C ; =0x0221A210
	add r0, sp, #0x20
	mov r2, r4
	bl ov4_0220EE54
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuCopy8
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220EF44: .word Unk_ov4_0221A208
_0220EF48: .word Unk_ov4_0221A20C
_0220EF4C: .word Unk_ov4_0221A210
	arm_func_end ov4_0220EEF0

	arm_func_start ov4_0220EF50
ov4_0220EF50: ; 0x0220EF50
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	ldrh r0, [sl, #0x32]
	cmp r0, #4
	beq _0220EF74
	cmp r0, #5
	beq _0220EF88
	b _0220EF9C
_0220EF74:
	mov r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	mov r2, #0
	b _0220EF9C
_0220EF88:
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
_0220EF9C:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	add r0, r1, r0
	add r0, r2, r0
	mov fp, r0, lsl #1
	cmp fp, #0
	ble _0220F090
	add r0, sl, #0x74
	mov sb, r7
	str r0, [sp, #8]
	add r5, sp, #0xc
	mov r4, #1
_0220EFD0:
	add r0, sl, #0x348
	bl ov4_02211BF8
	add r0, r7, #0x41
	add r6, r7, #1
	strb r0, [sp, #0xc]
	mov r8, #0
	cmp r6, #0
	ble _0220F00C
_0220EFF0:
	add r0, sl, #0x348
	mov r1, r5
	mov r2, r4
	bl ov4_02211C4C
	add r8, r8, #1
	cmp r8, r6
	blt _0220EFF0
_0220F00C:
	add r0, sl, #0x348
	mov r1, sl
	mov r2, #0x30
	bl ov4_02211C4C
	add r0, sl, #0x348
	add r1, sl, #0x54
	mov r2, #0x20
	bl ov4_02211C4C
	add r0, sl, #0x348
	add r1, sl, #0x34
	mov r2, #0x20
	bl ov4_02211C4C
	add r0, sl, #0x348
	add r1, sp, #0xd
	bl ov4_02211D04
	add r0, sl, #0x3fc
	bl ov4_02211338
	add r0, sl, #0x3fc
	mov r1, sl
	mov r2, #0x30
	bl ov4_02211380
	add r0, sl, #0x3fc
	add r1, sp, #0xd
	mov r2, #0x14
	bl ov4_02211380
	ldr r1, [sp, #8]
	add r0, sl, #0x3fc
	add r1, r1, sb
	bl ov4_02211438
	add sb, sb, #0x10
	cmp sb, fp
	add r7, r7, #1
	blt _0220EFD0
_0220F090:
	ldrb r0, [sl, #0x454]
	add r3, sl, #0x74
	cmp r0, #0
	beq _0220F0CC
	ldr r0, [sp, #4]
	str r3, [sl, #0x1d4]
	add r2, r3, r0
	add r1, r2, r0
	add r0, r3, r0, lsl #1
	str r0, [sl, #0x1d8]
	ldr r0, [sp]
	str r2, [sl, #0xbc]
	add r0, r1, r0
	str r0, [sl, #0xc0]
	b _0220F0F4
_0220F0CC:
	ldr r0, [sp, #4]
	str r3, [sl, #0xbc]
	add r2, r3, r0
	add r1, r2, r0
	add r0, r3, r0, lsl #1
	str r0, [sl, #0xc0]
	ldr r0, [sp]
	str r2, [sl, #0x1d4]
	add r0, r1, r0
	str r0, [sl, #0x1d8]
_0220F0F4:
	ldr r1, [sl, #0x1d8]
	add r0, sl, #0x1e0
	mov r2, #0x10
	bl ov4_02211D9C
	ldr r1, [sl, #0xc0]
	add r0, sl, #0xc8
	mov r2, #0x10
	bl ov4_02211D9C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_0220EF50

	arm_func_start ov4_0220F11C
ov4_0220F11C: ; 0x0220F11C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x81c]
	bl ov4_0220EC14
	mov r0, r4
	bl ov4_0220EEF0
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov4_0220DB44
	mov r0, r4
	bl ov4_0220EF50
	mov r0, #5
	strb r0, [r4, #0x455]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220F11C

	arm_func_start ov4_0220F158
ov4_0220F158: ; 0x0220F158
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldrb r0, [r5, #0x454]
	mov r4, r1
	teq r0, r2
	mov r2, #4
	beq _0220F188
	ldr r1, _0220F22C ; =0x0221A214
	add r0, r5, #0x3a4
	bl ov4_02211380
	b _0220F194
_0220F188:
	ldr r1, _0220F230 ; =0x0221A21C
	add r0, r5, #0x3a4
	bl ov4_02211380
_0220F194:
	mov r1, r5
	add r0, r5, #0x3a4
	mov r2, #0x30
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r5, #0x3a4
	mov r2, #0x30
	bl ov4_02211380
	mov r1, r4
	add r0, r5, #0x3a4
	bl ov4_02211438
	add r0, r5, #0x3a4
	bl ov4_02211338
	add r0, r5, #0x3a4
	mov r1, r5
	mov r2, #0x30
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r5, #0x3a4
	add r1, sp, #0
	mov r2, #0x30
	bl ov4_02211380
	add r0, r5, #0x3a4
	mov r1, r4
	mov r2, #0x10
	bl ov4_02211380
	add r0, r5, #0x3a4
	mov r1, r4
	bl ov4_02211438
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220F22C: .word Unk_ov4_0221A214
_0220F230: .word Unk_ov4_0221A21C
	arm_func_end ov4_0220F158

	arm_func_start ov4_0220F234
ov4_0220F234: ; 0x0220F234
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldrb r0, [r5, #0x454]
	mov r4, r1
	teq r0, r2
	mov r2, #4
	beq _0220F264
	ldr r1, _0220F308 ; =0x0221A214
	add r0, r5, #0x2ec
	bl ov4_02211C4C
	b _0220F270
_0220F264:
	ldr r1, _0220F30C ; =0x0221A21C
	add r0, r5, #0x2ec
	bl ov4_02211C4C
_0220F270:
	mov r1, r5
	add r0, r5, #0x2ec
	mov r2, #0x30
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r5, #0x2ec
	mov r2, #0x28
	bl ov4_02211C4C
	mov r1, r4
	add r0, r5, #0x2ec
	bl ov4_02211D04
	add r0, r5, #0x2ec
	bl ov4_02211BF8
	add r0, r5, #0x2ec
	mov r1, r5
	mov r2, #0x30
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r5, #0x2ec
	add r1, sp, #0
	mov r2, #0x28
	bl ov4_02211C4C
	add r0, r5, #0x2ec
	mov r1, r4
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, r5, #0x2ec
	mov r1, r4
	bl ov4_02211D04
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220F308: .word Unk_ov4_0221A214
_0220F30C: .word Unk_ov4_0221A21C
	arm_func_end ov4_0220F234

	arm_func_start ov4_0220F310
ov4_0220F310: ; 0x0220F310
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r4, r1
	add r0, r5, #0x3a4
	add r1, r5, #0x3fc
	mov r2, #0x58
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, #1
	bl ov4_0220F158
	add r0, r5, #0x3fc
	add r1, r5, #0x3a4
	mov r2, #0x58
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r4
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x14
	strneb r0, [r5, #0x455]
	ldmneia sp!, {r4, r5, pc}
	add r0, r5, #0x2ec
	add r1, r5, #0x348
	mov r2, #0x5c
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, #1
	bl ov4_0220F234
	add r0, r5, #0x348
	add r1, r5, #0x2ec
	mov r2, #0x5c
	bl MI_CpuCopy8
	add r1, sp, #0
	add r0, r4, #0x10
	mov r2, #0x14
	bl memcmp
	cmp r0, #0
	movne r0, #9
	strneb r0, [r5, #0x455]
	moveq r0, #6
	streqb r0, [r5, #0x455]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov4_0220F310

	arm_func_start ov4_0220F3D0
ov4_0220F3D0: ; 0x0220F3D0
	mov r2, #8
_0220F3D4:
	ldrb r1, [r0, #-1]!
	add r1, r1, #1
	ands r1, r1, #0xff
	strb r1, [r0]
	bxne lr
	subs r2, r2, #1
	bne _0220F3D4
	bx lr
	arm_func_end ov4_0220F3D0

	arm_func_start ov4_0220F3F4
ov4_0220F3F4: ; 0x0220F3F4
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1e0
	mov r4, r2
	bl ov4_02211E10
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220F3F4

	arm_func_start ov4_0220F40C
ov4_0220F40C: ; 0x0220F40C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldrb r3, [r6, #3]
	ldrb r2, [r6, #4]
	mov r7, r0
	add r1, r6, #5
	add r2, r2, r3, lsl #8
	bl ov4_0220F3F4
	ldrh r1, [r7, #0x32]
	mov r4, r0
	cmp r1, #4
	beq _0220F44C
	cmp r1, #5
	beq _0220F52C
	b _0220F608
_0220F44C:
	sub r4, r4, #0x10
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x3fc
	bl ov4_02211338
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, #0x10
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r7, #0x3fc
	mov r2, #0x30
	bl ov4_02211380
	add r0, r7, #0x3fc
	add r1, r7, #0x2e4
	mov r2, #8
	bl ov4_02211380
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl ov4_02211380
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r4, #2
	bl ov4_02211380
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	bl ov4_02211438
	add r0, r7, #0x3fc
	bl ov4_02211338
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, #0x10
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r7, #0x3fc
	add r1, sp, #0
	mov r2, #0x30
	bl ov4_02211380
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	mov r2, #0x10
	bl ov4_02211380
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	bl ov4_02211438
	mov r5, #0x10
	b _0220F608
_0220F52C:
	sub r4, r4, #0x14
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x348
	bl ov4_02211BF8
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r7, #0x348
	mov r2, #0x28
	bl ov4_02211C4C
	add r0, r7, #0x348
	add r1, r7, #0x2e4
	mov r2, #8
	bl ov4_02211C4C
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl ov4_02211C4C
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r4, #2
	bl ov4_02211C4C
	add r0, r7, #0x348
	add r1, sp, #0x30
	bl ov4_02211D04
	add r0, r7, #0x348
	bl ov4_02211BF8
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r7, #0x348
	add r1, sp, #0
	mov r2, #0x28
	bl ov4_02211C4C
	add r0, r7, #0x348
	add r1, sp, #0x30
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, r7, #0x348
	add r1, sp, #0x30
	bl ov4_02211D04
	mov r5, #0x14
_0220F608:
	add r0, r6, #5
	add r1, sp, #0x30
	mov r2, r5
	add r0, r0, r4
	bl memcmp
	cmp r0, #0
	movne r0, #9
	strneb r0, [r7, #0x455]
	add r0, r7, #0x2ec
	bl ov4_0220F3D0
	add r0, r4, #5
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov4_0220F40C

	arm_func_start ov4_0220F63C
ov4_0220F63C: ; 0x0220F63C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r4, r1
	mov r5, r0
	ldrh r0, [r5, #0x32]
	ldrb r2, [r4, #3]
	ldrb r1, [r4, #4]
	cmp r0, #4
	add r6, r4, #5
	add r7, r1, r2, lsl #8
	beq _0220F674
	cmp r0, #5
	beq _0220F744
	b _0220F810
_0220F674:
	add r0, r5, #0x3fc
	bl ov4_02211338
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x3fc
	mov r2, #0x10
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r5, #0x3fc
	mov r2, #0x30
	bl ov4_02211380
	add r0, r5, #0x3fc
	add r1, r5, #0x1cc
	mov r2, #8
	bl ov4_02211380
	add r0, r5, #0x3fc
	mov r1, r4
	mov r2, #1
	bl ov4_02211380
	add r0, r5, #0x3fc
	add r1, r4, #3
	add r2, r7, #2
	bl ov4_02211380
	add r0, r5, #0x3fc
	add r1, r6, r7
	bl ov4_02211438
	add r0, r5, #0x3fc
	bl ov4_02211338
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x3fc
	mov r2, #0x10
	bl ov4_02211380
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r5, #0x3fc
	add r1, sp, #0
	mov r2, #0x30
	bl ov4_02211380
	add r0, r5, #0x3fc
	add r1, r6, r7
	mov r2, #0x10
	bl ov4_02211380
	add r1, r6, r7
	add r0, r5, #0x3fc
	bl ov4_02211438
	add r7, r7, #0x10
	b _0220F810
_0220F744:
	add r0, r5, #0x348
	bl ov4_02211BF8
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x348
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl MI_CpuFill8
	add r1, sp, #0
	add r0, r5, #0x348
	mov r2, #0x28
	bl ov4_02211C4C
	add r0, r5, #0x348
	add r1, r5, #0x1cc
	mov r2, #8
	bl ov4_02211C4C
	add r0, r5, #0x348
	mov r1, r4
	mov r2, #1
	bl ov4_02211C4C
	add r0, r5, #0x348
	add r1, r4, #3
	add r2, r7, #2
	bl ov4_02211C4C
	add r0, r5, #0x348
	add r1, r6, r7
	bl ov4_02211D04
	add r0, r5, #0x348
	bl ov4_02211BF8
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x348
	mov r2, #0x14
	bl ov4_02211C4C
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r5, #0x348
	add r1, sp, #0
	mov r2, #0x28
	bl ov4_02211C4C
	add r0, r5, #0x348
	add r1, r6, r7
	mov r2, #0x14
	bl ov4_02211C4C
	add r1, r6, r7
	add r0, r5, #0x348
	bl ov4_02211D04
	add r7, r7, #0x14
_0220F810:
	mov r0, r7, asr #8
	strb r0, [r4, #3]
	mov r2, r7
	add r0, r5, #0xc8
	add r1, r4, #5
	strb r7, [r4, #4]
	bl ov4_02211E10
	add r0, r5, #0x1d4
	bl ov4_0220F3D0
	add r0, r7, #5
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220F63C

	arm_func_start ov4_0220F840
ov4_0220F840: ; 0x0220F840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	add r4, sp, #0
_0220F854:
	mov r0, r4
	mov r1, r5
	bl ov4_0220C154
	ldr r1, [sp]
	cmp r1, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, r6
	strhi r6, [sp]
	ldr r2, [sp]
	mov r1, r7
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl ov4_0220C234
	ldr r0, [sp]
	sub r6, r6, r0
	cmp r6, #0
	add r7, r7, r0
	bgt _0220F854
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0220F840

	arm_func_start ov4_0220F8AC
ov4_0220F8AC: ; 0x0220F8AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	add r0, r6, #0x2ec
	bl ov4_02211C4C
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3a4
	bl ov4_02211380
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220F8AC

	arm_func_start ov4_0220F8D8
ov4_0220F8D8: ; 0x0220F8D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldrb r2, [sb, #0x455]
	mov r8, r1
	cmp r2, #9
	bne _0220F904
	ldr r1, _0220FB54 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220F904:
	ldrb r3, [r8, #3]
	ldrb r1, [r8, #4]
	add r0, r2, #0xf9
	and r0, r0, #0xff
	add r1, r1, r3, lsl #8
	cmp r0, #1
	add r6, r1, #5
	ldrb r4, [r8]
	bhi _0220F930
	cmp r4, #0x15
	bne _0220F940
_0220F930:
	cmp r4, #0x15
	bne _0220F970
	cmp r6, #7
	bls _0220F970
_0220F940:
	mov r0, sb
	mov r1, r8
	bl ov4_0220F40C
	ldrb r2, [sb, #0x455]
	mov r6, r0
	cmp r2, #9
	bne _0220F970
	ldr r1, _0220FB54 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220F970:
	sub r0, r4, #0x14
	cmp r0, #3
	add r5, r8, #5
	sub r6, r6, #5
	addls pc, pc, r0, lsl #2
	b _0220FB38
_0220F988: ; jump table
	b _0220F998 ; case 0
	b _0220F9C8 ; case 1
	b _0220F9DC ; case 2
	b _0220FB18 ; case 3
_0220F998:
	ldr r0, [sb, #0x1d4]
	cmp r0, #0
	moveq r0, #9
	streqb r0, [sb, #0x455]
	beq _0220FB40
	add r0, sb, #0x2e4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, #7
	strb r0, [sb, #0x455]
	b _0220FB40
_0220F9C8:
	ldrb r0, [r5]
	cmp r0, #2
	moveq r0, #9
	streqb r0, [sb, #0x455]
	b _0220FB40
_0220F9DC:
	mov fp, #4
	mov sl, #1
	mov r4, #0
_0220F9E8:
	ldrb r7, [r5, #2]
	ldrb r0, [r5, #1]
	ldrb r3, [r5]
	ldrb r1, [r5, #3]
	mov r7, r7, lsl #8
	add r0, r7, r0, lsl #16
	cmp r3, #0xb
	add r7, r1, r0
	add r5, r5, #4
	bgt _0220FA38
	cmp r3, #0xb
	bge _0220FAAC
	cmp r3, #2
	bgt _0220FAE0
	cmp r3, #1
	blt _0220FAE0
	beq _0220FA68
	cmp r3, #2
	beq _0220FA9C
	b _0220FAE0
_0220FA38:
	sub r0, r3, #0xd
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0220FAE0
_0220FA48: ; jump table
	b _0220FAC0 ; case 0
	b _0220FAC8 ; case 1
	b _0220FAE0 ; case 2
	b _0220FA8C ; case 3
	b _0220FAE0 ; case 4
	b _0220FAE0 ; case 5
	b _0220FAE0 ; case 6
	b _0220FAD0 ; case 7
_0220FA68:
	ldrb r0, [sb, #0x454]
	cmp r0, #0
	beq _0220FAE8
	cmp r2, #0
	bne _0220FAE8
	mov r0, sb
	mov r1, r5
	bl ov4_0220EB78
	b _0220FAE8
_0220FA8C:
	mov r0, sb
	mov r1, r5
	bl ov4_0220F11C
	b _0220FAE8
_0220FA9C:
	mov r0, sb
	mov r1, r5
	bl ov4_0220E940
	b _0220FAE8
_0220FAAC:
	mov r0, sb
	mov r1, r5
	bl ov4_0220E71C
	strb r4, [sb, #0x5ac]
	b _0220FAE8
_0220FAC0:
	strb sl, [sb, #0x5ac]
	b _0220FAE8
_0220FAC8:
	strb fp, [sb, #0x455]
	b _0220FAE8
_0220FAD0:
	mov r0, sb
	mov r1, r5
	bl ov4_0220F310
	b _0220FAE8
_0220FAE0:
	mov r0, #9
	strb r0, [sb, #0x455]
_0220FAE8:
	mov r0, sb
	sub r1, r5, #4
	add r2, r7, #4
	bl ov4_0220F8AC
	add r0, r7, #4
	add r5, r5, r7
	subs r6, r6, r0
	beq _0220FB40
	ldrb r2, [sb, #0x455]
	cmp r2, #9
	bne _0220F9E8
	b _0220FB40
_0220FB18:
	str r8, [sb, #0x824]
	mov r0, #5
	str r0, [sb, #0x82c]
	add r0, r6, #5
	str r0, [sb, #0x828]
	mov r0, #1
	strb r0, [sb, #0x456]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220FB38:
	mov r0, #9
	strb r0, [sb, #0x455]
_0220FB40:
	ldr r1, _0220FB54 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220FB54: .word Unk_ov4_0221DE30
	arm_func_end ov4_0220F8D8

	arm_func_start ov4_0220FB58
ov4_0220FB58: ; 0x0220FB58
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	add r6, sp, #0
_0220FB6C:
	mov r0, r6
	mov r1, r5
	bl ov4_0220C154
	ldr r1, [sp]
	cmp r1, #0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r1, #5
	blo _0220FB6C
	ldrb r1, [r0]
	cmp r1, #0x80
	bne _0220FC54
	ldrb r1, [r4, #0x454]
	cmp r1, #0
	beq _0220FC48
	ldrb r1, [r4, #0x455]
	cmp r1, #0
	bne _0220FC48
	ldrb r2, [r0, #1]
	mov r1, r5
	mov r0, #2
	str r2, [sp]
	bl ov4_0220C234
	ldr r1, _0220FCEC ; =0x0221DE04
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r2, r5
	bl ov4_0220F840
	cmp r0, #0
	ldreqb r0, [r6]
	cmpeq r0, #1
	movne r0, #9
	strneb r0, [r4, #0x455]
	bne _0220FC24
	mov r0, r4
	add r1, r6, #1
	bl ov4_0220EAB0
_0220FC24:
	ldr r2, [sp]
	mov r0, r4
	mov r1, r6
	bl ov4_0220F8AC
	ldr r1, _0220FCF0 ; =0x0221DE30
	mov r0, r6
	ldr r1, [r1, #0]
	blx r1
	b _0220FCE0
_0220FC48:
	mov r0, #9
	strb r0, [r4, #0x455]
	b _0220FCE0
_0220FC54:
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _0220FCF4 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strhib r0, [r4, #0x455]
	ldmhiia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _0220FCEC ; =0x0221DE04
	ldr r1, [r1, #0]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r2, r5
	bl ov4_0220F840
	cmp r0, #0
	beq _0220FCD4
	ldr r1, _0220FCF0 ; =0x0221DE30
	mov r0, r6
	ldr r1, [r1, #0]
	blx r1
	mov r0, #9
	add sp, sp, #4
	strb r0, [r4, #0x455]
	ldmia sp!, {r3, r4, r5, r6, pc}
_0220FCD4:
	mov r0, r4
	mov r1, r6
	bl ov4_0220F8D8
_0220FCE0:
	ldrb r0, [r4, #0x455]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0220FCEC: .word Unk_ov4_0221DE04
_0220FCF0: .word Unk_ov4_0221DE30
_0220FCF4: .word 0x00004805
	arm_func_end ov4_0220FB58

	arm_func_start ov4_0220FCF8
ov4_0220FCF8: ; 0x0220FCF8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	ldr r2, _0220FE18 ; =0x0221F620
	mov sl, r0
	ldrb r0, [r2]
	mov sb, r1
	cmp r0, #0
	bne _0220FD5C
	ldr r2, _0220FE1C ; =0x0221DE58
	add r0, sp, #0
	ldr r3, [r2, #0]
	ldmib r2, {r1, r4}
	umull r6, r5, r4, r3
	mla r5, r4, r1, r5
	ldr r1, [r2, #0xc]
	ldr r4, [r2, #0x10]
	mla r5, r1, r3, r5
	ldr r1, [r2, #0x14]
	adds r4, r4, r6
	adc r3, r1, r5
	str r4, [r2, #0]
	mov r1, #4
	str r3, [r2, #4]
	str r3, [sp]
	bl ov4_0220FE28
_0220FD5C:
	cmp sb, #0
	mov r8, #0
	addle sp, sp, #0x74
	mov r1, #0x14
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _0220FE20 ; =0x0221F798
	add r6, sp, #0x18
	mov fp, r1
	add r4, sp, #4
_0220FD80:
	cmp r1, #0x14
	bne _0220FDF4
	mov r0, r6
	bl ov4_02211BF8
	bl OS_DisableInterrupts
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl ov4_02211C4C
	mov r0, r6
	mov r1, r4
	bl ov4_02211D6C
	ldr lr, _0220FE24 ; =0x0221F7AB
	mov r3, #1
	mov r2, #0x13
	add ip, sp, #0x17
_0220FDC4:
	ldrb r1, [lr]
	ldrb r0, [ip], #-1
	subs r2, r2, #1
	add r0, r1, r0
	add r0, r3, r0
	strb r0, [lr], #-1
	mov r3, r0, lsr #8
	bpl _0220FDC4
	str r0, [sp]
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r1, #0
_0220FDF4:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r0, #0
	strneb r0, [sl, r8]
	addne r8, r8, #1
	cmp r8, sb
	blt _0220FD80
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220FE18: .word Unk_ov4_0221F620
_0220FE1C: .word Unk_ov4_0221DE58
_0220FE20: .word Unk_ov4_0221F798
_0220FE24: .word 0x0221F7AB
	arm_func_end ov4_0220FCF8

	arm_func_start ov4_0220FE28
ov4_0220FE28: ; 0x0220FE28
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x5c
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	bl ov4_02211BF8
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r1, _0220FE90 ; =0x0221F798
	add r0, sp, #0
	mov r2, #0x14
	bl ov4_02211C4C
	mov r1, r6
	mov r2, r5
	add r0, sp, #0
	bl ov4_02211C4C
	ldr r1, _0220FE90 ; =0x0221F798
	add r0, sp, #0
	bl ov4_02211D04
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _0220FE94 ; =0x0221F620
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0220FE90: .word Unk_ov4_0221F798
_0220FE94: .word Unk_ov4_0221F620
	arm_func_end ov4_0220FE28

	arm_func_start ov4_0220FE98
ov4_0220FE98: ; 0x0220FE98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, [sb, #0xc]
	ldr r7, [r4, #0x820]
	cmp r7, #0
	ldrne r8, [r7]
	moveq r8, #0
	bl ov4_0220DC98
	mov r1, r0, lsr #0x18
	strb r1, [r4, #0x54]
	mov r1, r0, lsr #0x10
	strb r1, [r4, #0x55]
	mov r1, r0, lsr #8
	strb r1, [r4, #0x56]
	strb r0, [r4, #0x57]
	add r0, r4, #0x58
	mov r1, #0x1c
	bl ov4_0220FCF8
	ldr r1, _022100EC ; =0x0221DE04
	add r0, r8, #0x9d
	ldr r1, [r1, #0]
	blx r1
	movs r5, r0
	bne _0220FF08
	mov r0, #9
	strb r0, [r4, #0x455]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0220FF08:
	mov r0, #2
	strb r0, [r5, #5]
	mov r3, #0
	strb r3, [r5, #6]
	strb r3, [r5, #7]
	mov r0, #0x46
	strb r0, [r5, #8]
	mov r0, #3
	strb r0, [r5, #9]
	add r0, r4, #0x54
	add r1, r5, #0xb
	mov r2, #0x20
	strb r3, [r5, #0xa]
	bl MI_CpuCopy8
	mov r2, #0x20
	strb r2, [r5, #0x2b]
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _0220FF70
	add r0, r4, #0x74
	add r1, r5, #0x2c
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r4, #0x31]
	add r6, r5, #0x4c
	b _0220FFCC
_0220FF70:
	add r0, r5, #0x2c
	mov r1, #0x1c
	bl ov4_0220FCF8
	ldr r0, _022100F0 ; =0x0221F620
	add r6, r5, #0x4c
	ldr r3, [r0, #4]
	sub r0, r6, #0x20
	mov r1, r3, lsr #0x18
	strb r1, [r5, #0x48]
	mov r1, r3, lsr #0x10
	strb r1, [r5, #0x49]
	mov r1, r3, lsr #8
	strb r1, [r5, #0x4a]
	add r1, r4, #0x74
	mov r2, #0x20
	strb r3, [r5, #0x4b]
	bl MI_CpuCopy8
	ldr r0, _022100F0 ; =0x0221F620
	mov r1, #0
	ldr r2, [r0, #4]
	strb r1, [r4, #0x31]
	add r1, r2, #1
	str r1, [r0, #4]
_0220FFCC:
	ldrh r1, [r4, #0x32]
	mov r0, #0
	mov r1, r1, asr #8
	strb r1, [r6]
	ldrh r1, [r4, #0x32]
	strb r1, [r6, #1]
	strb r0, [r6, #2]
	ldrb r0, [r4, #0x31]
	add r6, r6, #3
	cmp r0, #0
	bne _02210080
	cmp r8, #0
	beq _02210064
	add r2, r8, #6
	mov r0, #0xb
	strb r0, [r6]
	add r1, r8, #3
	mov r0, r2, asr #0x10
	strb r0, [r6, #1]
	mov r0, r2, asr #8
	strb r0, [r6, #2]
	strb r2, [r6, #3]
	mov r0, r1, asr #0x10
	strb r0, [r6, #4]
	mov r0, r1, asr #8
	strb r0, [r6, #5]
	strb r1, [r6, #6]
	mov r0, r8, asr #0x10
	strb r0, [r6, #7]
	mov r0, r8, asr #8
	strb r0, [r6, #8]
	strb r8, [r6, #9]
	add r6, r6, #0xa
	ldr r0, [r7, #4]
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	add r6, r6, r8
_02210064:
	mov r0, #0xe
	strb r0, [r6]
	mov r0, #0
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	add r6, r6, #4
_02210080:
	mov r0, #0x16
	sub r1, r6, r5
	sub r6, r1, #5
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #1]
	mov r0, #0
	strb r0, [r5, #2]
	mov r0, r6, asr #8
	strb r0, [r5, #3]
	mov r0, r4
	mov r2, r6
	add r1, r5, #5
	strb r6, [r5, #4]
	bl ov4_0220F8AC
	mov r2, #0
	mov r0, r5
	mov r3, r2
	add r1, r6, #5
	str sb, [sp]
	bl ov4_0220C3FC
	ldr r1, _022100F4 ; =0x0221DE30
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	ldrb r0, [r4, #0x31]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022100EC: .word Unk_ov4_0221DE04
_022100F0: .word Unk_ov4_0221F620
_022100F4: .word Unk_ov4_0221DE30
	arm_func_end ov4_0220FE98

	arm_func_start ov4_022100F8
ov4_022100F8: ; 0x022100F8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _02210248 ; =0x0221DE04
	mov r6, r0
	ldr r1, [r1, #0]
	mov r0, #0x83
	ldr r5, [r6, #0xc]
	blx r1
	movs r4, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r5, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, #0x14
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	mov r3, #1
	strb r3, [r4, #4]
	add r0, r5, #0x1cc
	mov r2, #8
	strb r3, [r4, #5]
	bl MI_CpuFill8
	mov r0, #0x16
	strb r0, [r4, #6]
	mov r0, #3
	strb r0, [r4, #7]
	mov r1, #0
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	mov r0, #0x28
	strb r0, [r4, #0xa]
	mov r0, #0x14
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	mov r3, #0x24
	add r0, r5, #0x3a4
	add r1, r5, #0x3fc
	mov r2, #0x58
	strb r3, [r4, #0xe]
	bl MI_CpuCopy8
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #0
	bl ov4_0220F158
	add r0, r5, #0x3fc
	add r1, r5, #0x3a4
	mov r2, #0x58
	bl MI_CpuCopy8
	add r0, r5, #0x2ec
	add r1, r5, #0x348
	mov r2, #0x5c
	bl MI_CpuCopy8
	mov r0, r5
	add r1, r4, #0x1f
	mov r2, #0
	bl ov4_0220F234
	add r0, r5, #0x348
	add r1, r5, #0x2ec
	mov r2, #0x5c
	bl MI_CpuCopy8
	mov r0, r5
	add r1, r4, #0xb
	mov r2, #0x28
	bl ov4_0220F8AC
	mov r0, r5
	add r1, r4, #6
	bl ov4_0220F63C
	mov r2, #0
	add r1, r0, #6
	mov r0, r4
	mov r3, r2
	str r6, [sp]
	bl ov4_0220C3FC
	ldr r1, _0221024C ; =0x0221DE30
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02210248: .word Unk_ov4_0221DE04
_0221024C: .word Unk_ov4_0221DE30
	arm_func_end ov4_022100F8

	arm_func_start ov4_02210250
ov4_02210250: ; 0x02210250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022103D8 ; =0x0221DE04
	mov r7, r0
	ldr r1, [r1, #0]
	mov r0, #0x98
	ldr r4, [r7, #0xc]
	blx r1
	movs r5, r0
	moveq r0, #9
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #3
	strb r0, [r5, #9]
	mov r0, #0
	strb r0, [r5, #0xa]
	bl ov4_0220DC98
	mov r1, r0, lsr #0x18
	strb r1, [r4, #0x34]
	mov r1, r0, lsr #0x10
	strb r1, [r4, #0x35]
	mov r1, r0, lsr #8
	strb r1, [r4, #0x36]
	strb r0, [r4, #0x37]
	add r0, r4, #0x38
	mov r1, #0x1c
	bl ov4_0220FCF8
	add r0, r4, #0x34
	add r1, r5, #0xb
	mov r2, #0x20
	bl MI_CpuCopy8
	ldrh r2, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	mov r0, r4
	bl ov4_0220DAA4
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x2b]
	addeq r0, r5, #0x2c
	beq _02210308
	mov r2, #0x20
	add r0, r4, #0x74
	add r1, r5, #0x2c
	strb r2, [r5, #0x2b]
	bl MI_CpuCopy8
	add r0, r5, #0x4c
_02210308:
	mov r6, #0
	strb r6, [r0]
	mov r1, #4
	strb r1, [r0, #1]
	ldr r2, _022103DC ; =0x0221A1BC
	add r0, r0, #2
_02210320:
	mov r3, r6, lsl #1
	ldrh r1, [r2, r3]
	add r6, r6, #1
	cmp r6, #2
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r2, r3]
	strb r1, [r0, #1]
	add r0, r0, #2
	blo _02210320
	mov r3, #1
	mov r2, #0
	strb r3, [r0]
	add r1, r0, #2
	sub r1, r1, r5
	sub r6, r1, #5
	strb r2, [r0, #1]
	sub r1, r6, #4
	mov r0, #0x16
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #1]
	strb r2, [r5, #2]
	mov r0, r6, asr #8
	strb r0, [r5, #3]
	strb r6, [r5, #4]
	strb r3, [r5, #5]
	mov r0, r1, asr #0x10
	strb r0, [r5, #6]
	mov r0, r1, asr #8
	strb r0, [r5, #7]
	strb r1, [r5, #8]
	mov r0, r5
	mov r3, r2
	add r1, r6, #5
	str r7, [sp]
	bl ov4_0220C3FC
	mov r0, r4
	mov r2, r6
	add r1, r5, #5
	bl ov4_0220F8AC
	ldr r1, _022103E0 ; =0x0221DE30
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022103D8: .word Unk_ov4_0221DE04
_022103DC: .word Unk_ov4_0221A1BC
_022103E0: .word Unk_ov4_0221DE30
	arm_func_end ov4_02210250

	arm_func_start ov4_022103E4
ov4_022103E4: ; 0x022103E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r4, [sl, #0xc]
	ldrb r0, [r4, #0x5ac]
	cmp r0, #0
	beq _02210418
	mov r2, #0
	ldr r0, _02210698 ; =0x02215E40
	mov r3, r2
	mov r1, #7
	str sl, [sp]
	bl ov4_0220C3FC
_02210418:
	mov r0, #3
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	add r0, r4, #2
	mov r1, #0x2e
	bl ov4_0220FCF8
	ldr sb, [r4, #0x594]
	ldr r0, _0221069C ; =0x0221DE04
	mov r1, sb, lsl #1
	ldr r2, [r0, #0]
	add r1, r1, r1, lsr #31
	mov r0, sb
	mov r7, r1, asr #1
	blx r2
	movs r8, r0
	moveq r0, #9
	addeq sp, sp, #8
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	strb r0, [r8]
	mov r2, #2
	add r0, r8, #2
	sub r1, sb, #0x33
	strb r2, [r8, #1]
	bl ov4_0220FCF8
	add r1, r8, sb
	mov r0, r4
	sub r3, sb, #0x31
	mov r5, #0
	sub r1, r1, #0x30
	mov r2, #0x30
	strb r5, [r8, r3]
	bl MI_CpuCopy8
	ldr r1, _0221069C ; =0x0221DE04
	mov r0, r7, lsl #3
	ldr r1, [r1, #0]
	blx r1
	movs r5, r0
	bne _022104DC
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022104DC:
	add r0, r5, r7, lsl #1
	add fp, r0, r7, lsl #1
	mov r1, r8
	mov r2, sb
	mov r3, r7
	str r0, [sp, #4]
	add r6, fp, r7, lsl #1
	bl ov4_02212C28
	add r0, r4, #0x198
	add r1, r0, #0x400
	ldr r2, [r4, #0x5a0]
	mov r0, fp
	mov r3, r7
	bl ov4_02212C28
	add r1, r4, #0x94
	mov r0, r6
	add r1, r1, #0x400
	mov r2, sb
	mov r3, r7
	bl ov4_02212C28
	bl ov4_0220DCF0
	str r6, [sp]
	mov r6, r0
	ldr r1, [sp, #4]
	mov r2, fp
	mov r3, r7
	mov r0, r5
	bl ov4_02212614
	mov r0, r6
	bl ov4_0220DD3C
	ldr r1, _0221069C ; =0x0221DE04
	add r0, sb, #0x49
	ldr r1, [r1, #0]
	blx r1
	movs r6, r0
	bne _0221059C
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0221059C:
	mov r0, #0x16
	strb r0, [r6]
	mov r1, #3
	add r0, sb, #4
	strb r1, [r6, #1]
	mov r1, #0
	strb r1, [r6, #2]
	mov r1, r0, asr #8
	strb r1, [r6, #3]
	strb r0, [r6, #4]
	mov r0, #0x10
	strb r0, [r6, #5]
	mov r0, sb, asr #0x10
	strb r0, [r6, #6]
	mov r0, sb, asr #8
	strb r0, [r6, #7]
	strb sb, [r6, #8]
	tst sb, #1
	add r0, r6, #9
	beq _02210604
	add r0, sb, sb, lsr #31
	mov r0, r0, asr #1
	mov r0, r0, lsl #1
	ldrh r1, [r5, r0]
	add r0, r6, #0xa
	strb r1, [r6, #9]
_02210604:
	add r1, sb, sb, lsr #31
	mov r1, r1, asr #1
	subs r3, r1, #1
	bmi _02210638
_02210614:
	mov r2, r3, lsl #1
	ldrh r1, [r5, r2]
	subs r3, r3, #1
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r5, r2]
	strb r1, [r0, #1]
	add r0, r0, #2
	bpl _02210614
_02210638:
	mov r2, #0
	mov r0, r6
	mov r3, r2
	add r1, sb, #9
	str sl, [sp]
	bl ov4_0220C3FC
	mov r0, r4
	add r1, r6, #5
	add r2, sb, #4
	bl ov4_0220F8AC
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r6
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _022106A0 ; =0x0221DE30
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02210698: .word Unk_ov4_02215E40
_0221069C: .word Unk_ov4_0221DE04
_022106A0: .word Unk_ov4_0221DE30
	arm_func_end ov4_022103E4

	arm_func_start ov4_022106A4
ov4_022106A4: ; 0x022106A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_0220FB58
	cmp r0, #7
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_0220FB58
	cmp r0, #6
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022106A4

	arm_func_start ov4_022106D4
ov4_022106D4: ; 0x022106D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_0220FB58
	cmp r0, #1
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_0220FE98
	cmp r0, #0
	beq _02210724
	ldr r0, [r4, #0xc]
	bl ov4_0220EF50
	mov r0, r4
	bl ov4_022100F8
	mov r0, r4
	bl ov4_022106A4
	cmp r0, #0
	beq _02210754
	mov r0, #1
	ldmia sp!, {r4, pc}
_02210724:
	mov r0, r4
	bl ov4_0220FB58
	cmp r0, #5
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_022106A4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_022100F8
_02210754:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022106D4

	arm_func_start ov4_0221075C
ov4_0221075C: ; 0x0221075C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r6, [r7, #0xc]
	mov r5, #0
	mov r4, #1
_02210770:
	mov r0, r7
	bl ov4_0220BE14
	strb r5, [r6, #0x455]
	str r5, [r6, #0x1d4]
	add r0, r6, #0x2ec
	strb r4, [r6, #0x454]
	bl ov4_02211BF8
	add r0, r6, #0x3a4
	bl ov4_02211338
	mov r0, r7
	bl ov4_022106D4
	cmp r0, #0
	moveq r0, #8
	streqb r0, [r6, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl ov4_0220BFEC
	ldrh r0, [r7, #0x1a]
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x1c]
	b _02210770
	arm_func_end ov4_0221075C
_022107C8:
	.byte 0xF8, 0x80, 0xBD, 0xE8

	arm_func_start ov4_022107CC
ov4_022107CC: ; 0x022107CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	bl ov4_02210250
_022107DC:
	mov r0, r5
	bl ov4_0220FB58
	cmp r0, #9
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	beq _02210804
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _022107DC
_02210804:
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _02210838
	mov r0, r4
	bl ov4_0220EF50
	mov r0, r5
	bl ov4_022106A4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov4_022100F8
	b _02210888
_02210838:
	mov r0, r5
	bl ov4_022103E4
	mov r0, r4
	bl ov4_0220EEF0
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _02210864
	ldrh r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl ov4_0220DB44
_02210864:
	mov r0, r4
	bl ov4_0220EF50
	mov r0, r5
	bl ov4_022100F8
	mov r0, r5
	bl ov4_022106A4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02210888:
	mov r0, #8
	strb r0, [r4, #0x455]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_022107CC

	arm_func_start ov4_02210898
ov4_02210898: ; 0x02210898
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	ldr r4, [r5, #0xc]
	cmp r1, #4
	beq _022108C0
	bl ov4_0220BEA8
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_022108C0:
	mov r1, #0
	strb r1, [r4, #0x455]
	str r1, [r4, #0x1d4]
	add r0, r4, #0x2ec
	strb r1, [r4, #0x454]
	bl ov4_02211BF8
	add r0, r4, #0x3a4
	bl ov4_02211338
	mov r0, r5
	bl ov4_022107CC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02210898

	arm_func_start ov4_022108EC
ov4_022108EC: ; 0x022108EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xc]
	mov r6, r0
	ldr ip, [r4, #0x824]
	cmp ip, #0
	beq _02210970
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	bne _02210970
	ldr r3, [r4, #0x82c]
	ldr r1, [r4, #0x828]
	mov r2, r5
	add r0, ip, r3
	sub r1, r1, r3
	bl ov4_0220F840
	cmp r0, #0
	beq _02210954
	ldr r1, _022109C0 ; =0x0221DE30
	ldr r0, [r4, #0x824]
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r4, #0x824]
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
_02210954:
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl ov4_0220F8D8
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
_02210970:
	ldr r0, [r4, #0x824]
	cmp r0, #0
	bne _022109A0
_0221097C:
	mov r0, r5
	bl ov4_0220FB58
	cmp r0, #9
	moveq r0, #0
	streq r0, [r6]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _0221097C
_022109A0:
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	str r0, [r6, #0]
	ldr r1, [r4, #0x824]
	ldr r0, [r4, #0x82c]
	add r0, r1, r0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022109C0: .word Unk_ov4_0221DE30
	arm_func_end ov4_022108EC

	arm_func_start ov4_022109C4
ov4_022109C4: ; 0x022109C4
	stmfd sp!, {r4, lr}
	ldr r4, [r1, #0xc]
	ldr r2, [r4, #0x828]
	ldr r1, [r4, #0x82c]
	sub r2, r2, r1
	cmp r0, r2
	blo _02210A04
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _022109F8
	ldr r1, _02210A10 ; =0x0221DE30
	ldr r1, [r1, #0]
	blx r1
_022109F8:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmia sp!, {r4, pc}
_02210A04:
	add r0, r1, r0
	str r0, [r4, #0x82c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02210A10: .word Unk_ov4_0221DE30
	arm_func_end ov4_022109C4

	arm_func_start ov4_02210A14
ov4_02210A14: ; 0x02210A14
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldr r0, [r5, #0x44]
	bne _02210AB4
	cmp r0, #5
	addlo sp, sp, #4
	ldmloia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r5
	bl ov4_0220C154
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _02210B50 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strhib r0, [r4, #0x455]
	ldmhiia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _02210B54 ; =0x0221DE04
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	str r0, [r4, #0x824]
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x828]
	str r0, [r4, #0x82c]
	strb r0, [r4, #0x456]
	b _02210AC0
_02210AB4:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_02210AC0:
	add r0, sp, #0
	mov r1, r5
	bl ov4_0220C154
	ldr r3, [r4, #0x828]
	ldr r2, [r4, #0x82c]
	ldr r1, [sp]
	sub r2, r3, r2
	cmp r1, r2
	strhs r2, [sp]
	movhs r6, #1
	ldr r3, [r4, #0x824]
	ldr r1, [r4, #0x82c]
	ldr r2, [sp]
	add r1, r3, r1
	movlo r6, #0
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl ov4_0220C234
	cmp r6, #0
	beq _02210B38
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl ov4_0220F8D8
	ldrb r0, [r4, #0x456]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02210B38:
	ldr r1, [r4, #0x82c]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #0x82c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02210B50: .word 0x00004805
_02210B54: .word Unk_ov4_0221DE04
	arm_func_end ov4_02210A14

	arm_func_start ov4_02210B58
ov4_02210B58: ; 0x02210B58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	bne _02210B80
	mov r0, r5
	bl ov4_02210A14
_02210B80:
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	beq _02210BA4
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	ldmia sp!, {r3, r4, r5, pc}
_02210BA4:
	cmp r1, #0
	bne _02210BCC
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _02210BC4
	ldrb r0, [r4, #0x455]
	cmp r0, #9
	bne _02210BCC
_02210BC4:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02210BCC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02210B58

	arm_func_start ov4_02210BD4
ov4_02210BD4: ; 0x02210BD4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x30]
	mov sb, r1
	mov r1, r4
	ldr r1, [r1, #0xc]
	mov sl, r0
	mov r0, #0
	str r4, [sp, #0x30]
	str r1, [sp, #8]
	mov r8, r2
	add r5, sb, r3
	str r0, [sp, #4]
_02210C08:
	ldr r0, _02210CFC ; =0x00000B4F
	ldr r1, _02210D00 ; =0x0221DE04
	cmp r5, r0
	movgt r6, r0
	movle r6, r5
	ldr r1, [r1, #0]
	add r0, r6, #0x19
	blx r1
	movs r4, r0
	beq _02210CF0
	cmp sb, r6
	movhs r7, r6
	movlo r7, sb
	mov r0, sl
	add r1, r4, #5
	mov r2, r7
	sub fp, r6, r7
	bl MI_CpuCopy8
	add r1, r4, #5
	mov r0, r8
	add r1, r1, r7
	mov r2, fp
	add sl, sl, r7
	sub sb, sb, r7
	bl MI_CpuCopy8
	mov r0, #0x17
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, r6, asr #8
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	mov r1, r4
	add r8, r8, fp
	strb r6, [r4, #4]
	bl ov4_0220F63C
	ldr r1, [sp, #0x30]
	mov r7, r0
	mov r2, #0
	str r1, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	bl ov4_0220C3FC
	cmp r0, r7
	ldr r1, _02210D04 ; =0x0221DE30
	mov r0, r4
	ldr r1, [r1, #0]
	movlo r6, #0
	blx r1
	ldr r0, [sp, #4]
	subs r5, r5, r6
	add r0, r0, r6
	str r0, [sp, #4]
	cmpne r6, #0
	bne _02210C08
_02210CF0:
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02210CFC: .word 0x00000B4F
_02210D00: .word Unk_ov4_0221DE04
_02210D04: .word Unk_ov4_0221DE30
	arm_func_end ov4_02210BD4

	arm_func_start ov4_02210D08
ov4_02210D08: ; 0x02210D08
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #0x455]
	cmp r0, #8
	bne _02210D78
	mov ip, #0
	mov r6, #0x15
	mov lr, #3
	mov r3, #2
	mov r2, #1
	add r1, sp, #4
	mov r0, r4
	strb r6, [sp, #4]
	strb lr, [sp, #5]
	strb ip, [sp, #6]
	strb ip, [sp, #7]
	strb r3, [sp, #8]
	strb r2, [sp, #9]
	strb ip, [sp, #0xa]
	bl ov4_0220F63C
	mov r2, #0
	mov r1, r0
	add r0, sp, #4
	mov r3, r2
	str r5, [sp]
	bl ov4_0220C3FC
_02210D78:
	mov r0, #0
	strb r0, [r4, #0x455]
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02210D08

	arm_func_start ov4_02210D88
ov4_02210D88: ; 0x02210D88
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0xc]
	mov r0, #0
	strb r0, [r4, #0x455]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _02210DB0
	ldr r1, _02210DBC ; =0x0221DE30
	ldr r1, [r1, #0]
	blx r1
_02210DB0:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02210DBC: .word Unk_ov4_0221DE30
	arm_func_end ov4_02210D88

	arm_func_start ov4_02210DC0
ov4_02210DC0: ; 0x02210DC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02210DE8 ; =0x02000C70
	bl OSi_ReferSymbol
	ldr r0, _02210DEC ; =0x021CCC80
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	strneb r4, [r0, #9]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02210DE8: .word 0x02000C70
_02210DEC: .word Unk_021CCC80
	arm_func_end ov4_02210DC0

	arm_func_start ov4_02210DF0
ov4_02210DF0: ; 0x02210DF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, #0
	ldr r6, _02210EC4 ; =0x0221F628
	ldr r1, _02210EC8 ; =0x000003BD
	mov r2, r4
_02210E0C:
	ldrb r3, [r6, #0x5a]
	cmp r3, #0
	beq _02210E28
	ldr r3, [r6, #0x50]
	sub r3, r5, r3
	cmp r3, r1
	strgtb r2, [r6, #0x5a]
_02210E28:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #0x5c
	blt _02210E0C
	bl OS_RestoreInterrupts
	ldr r0, _02210ECC ; =0x021CCC80
	ldr r4, [r0, #8]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r6, #0
_02210E50:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	ldrneb r0, [r1, #9]
	cmpne r0, #0
	beq _02210EB4
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _02210EB4
	ldr r0, [r1, #0xc]
	ldrb r0, [r0, #0x455]
	cmp r0, #8
	bhs _02210EB4
	ldr r0, [r1, #0x10]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _02210EB4
	ldr r0, [r1, #4]
	cmp r0, #2
	bne _02210EB4
	strb r6, [r1, #8]
	str r6, [r1, #4]
	ldr r0, [r1, #0]
	bl OS_WakeupThreadDirect
_02210EB4:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _02210E50
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02210EC4: .word Unk_ov4_0221F628
_02210EC8: .word 0x000003BD
_02210ECC: .word Unk_021CCC80
	arm_func_end ov4_02210DF0

	arm_func_start ov4_02210ED0
ov4_02210ED0: ; 0x02210ED0
	ldr ip, _02210EE4 ; =MI_CpuFill8
	ldr r0, _02210EE8 ; =0x0221F628
	mov r1, #0
	mov r2, #0x170
	bx ip
	; .align 2, 0
_02210EE4: .word MI_CpuFill8
_02210EE8: .word Unk_ov4_0221F628
	arm_func_end ov4_02210ED0

	.rodata


	.global Unk_ov4_02215E40
Unk_ov4_02215E40: ; 0x02215E40
	.incbin "incbin/overlay4_rodata.bin", 0x5D8, 0x7



	.data


	.global Unk_ov4_0221A1B4
Unk_ov4_0221A1B4: ; 0x0221A1B4
	.incbin "incbin/overlay4_data.bin", 0x4334, 0x4338 - 0x4334

	.global Unk_ov4_0221A1B8
Unk_ov4_0221A1B8: ; 0x0221A1B8
	.incbin "incbin/overlay4_data.bin", 0x4338, 0x433C - 0x4338

	.global Unk_ov4_0221A1BC
Unk_ov4_0221A1BC: ; 0x0221A1BC
	.incbin "incbin/overlay4_data.bin", 0x433C, 0x4340 - 0x433C

	.global Unk_ov4_0221A1C0
Unk_ov4_0221A1C0: ; 0x0221A1C0
	.incbin "incbin/overlay4_data.bin", 0x4340, 0x4344 - 0x4340

	.global Unk_ov4_0221A1C4
Unk_ov4_0221A1C4: ; 0x0221A1C4
	.incbin "incbin/overlay4_data.bin", 0x4344, 0x435C - 0x4344

	.global Unk_ov4_0221A1DC
Unk_ov4_0221A1DC: ; 0x0221A1DC
	.incbin "incbin/overlay4_data.bin", 0x435C, 0x4364 - 0x435C

	.global Unk_ov4_0221A1E4
Unk_ov4_0221A1E4: ; 0x0221A1E4
	.incbin "incbin/overlay4_data.bin", 0x4364, 0x4370 - 0x4364

	.global Unk_ov4_0221A1F0
Unk_ov4_0221A1F0: ; 0x0221A1F0
	.incbin "incbin/overlay4_data.bin", 0x4370, 0x437C - 0x4370

	.global Unk_ov4_0221A1FC
Unk_ov4_0221A1FC: ; 0x0221A1FC
	.incbin "incbin/overlay4_data.bin", 0x437C, 0x4388 - 0x437C

	.global Unk_ov4_0221A208
Unk_ov4_0221A208: ; 0x0221A208
	.incbin "incbin/overlay4_data.bin", 0x4388, 0x438C - 0x4388

	.global Unk_ov4_0221A20C
Unk_ov4_0221A20C: ; 0x0221A20C
	.incbin "incbin/overlay4_data.bin", 0x438C, 0x4390 - 0x438C

	.global Unk_ov4_0221A210
Unk_ov4_0221A210: ; 0x0221A210
	.incbin "incbin/overlay4_data.bin", 0x4390, 0x4394 - 0x4390

	.global Unk_ov4_0221A214
Unk_ov4_0221A214: ; 0x0221A214
	.incbin "incbin/overlay4_data.bin", 0x4394, 0x439C - 0x4394

	.global Unk_ov4_0221A21C
Unk_ov4_0221A21C: ; 0x0221A21C
	.incbin "incbin/overlay4_data.bin", 0x439C, 0x5



	.bss


	.global Unk_ov4_0221F620
Unk_ov4_0221F620: ; 0x0221F620
	.space 0x4

	.global Unk_ov4_0221F624
Unk_ov4_0221F624: ; 0x0221F624
	.space 0x4

	.global Unk_ov4_0221F628
Unk_ov4_0221F628: ; 0x0221F628
	.space 0x170

	.global Unk_ov4_0221F798
Unk_ov4_0221F798: ; 0x0221F798
	.space 0x14

