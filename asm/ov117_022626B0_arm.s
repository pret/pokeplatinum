	.include "macros/function.inc"
	.include "include/ov117_022626B0_arm.inc"

	.text

	arm_func_start ov117_02262D98
ov117_02262D98: ; 0x02262D98
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	add r3, sp, #0
	mov r6, #0
_02262DA8:
	mov r0, r6, lsl #1
	add r5, r0, #1
	smull r1, r0, r5, r5
	umull ip, r2, r5, r1
	mla r2, r5, r0, r2
	mov r4, r5, asr #0x1f
	umull lr, r0, r5, ip
	mla r2, r4, r1, r2
	mla r0, r5, r2, r0
	mla r0, r4, ip, r0
	mov r1, lr, lsr #0x18
	orr r1, r1, r0, lsl #8
	add r0, r6, #1
	strb r1, [r3, r6]
	and r6, r0, #0xff
	cmp r6, #0x7f
	blo _02262DA8
	mov ip, #0xff
	add r1, sp, #0
	mov r0, #0x34
	mov r2, #0x20
	strb ip, [r3, #0x7f]
	bl sub_020B275C
	add sp, sp, #0x80
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov117_02262D98

	arm_func_start ov117_02262E0C
ov117_02262E0C: ; 0x02262E0C
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E20:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0xc]
	str r4, [r3, #0x10]
	str ip, [r3, #0x14]
	sub r2, r4, #0x10000
	str r2, [r3, #0x18]
	str r1, [r3, #0x1c]
	str r4, [r3, #0x20]
	str r1, [r3, #0x24]
	add lr, lr, #1
	str r2, [r3, #0x28]
	cmp lr, #8
	sub r4, r4, #0x10000
	blt _02262E20
	ldmia sp!, {r4, pc}
	arm_func_end ov117_02262E0C

	arm_func_start ov117_02262E5C
ov117_02262E5C: ; 0x02262E5C
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E70:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0x10c]
	str r4, [r3, #0x110]
	str ip, [r3, #0x114]
	add r2, r4, #0x10000
	str r2, [r3, #0x118]
	str r1, [r3, #0x11c]
	str r4, [r3, #0x120]
	str r1, [r3, #0x124]
	add lr, lr, #1
	mov r4, r2
	str r2, [r3, #0x128]
	cmp lr, #8
	blt _02262E70
	ldmia sp!, {r4, pc}
	arm_func_end ov117_02262E5C

	arm_func_start ov117_02262EAC
ov117_02262EAC: ; 0x02262EAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, #0
	ldr r6, _02263164 ; =0x1FF00000
	mov sl, r0
	mov r4, sb
	add r8, sp, #2
	add r7, sp, #0
	mov fp, sb
	mov r5, sb
_02262ED4:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0x40
	add r1, sp, #0x44
	mov r2, #1
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x10c]
	ldr r1, [r1, #0x110]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x40]
	mov r0, #0x22
	add r1, sp, #0x40
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x3c
	mov r2, #1
	str r6, [sp, #0x3c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x34
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x34]
	mov r2, #2
	str r5, [sp, #0x38]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x114]
	ldr r1, [r1, #0x118]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x30]
	mov r0, #0x22
	add r1, sp, #0x30
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x2c
	mov r2, #1
	str r6, [sp, #0x2c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x24
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x24]
	mov r2, #2
	str r4, [sp, #0x28]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x124]
	ldr r1, [r1, #0x128]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x20]
	mov r0, #0x22
	add r1, sp, #0x20
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x1c
	mov r2, #1
	str r6, [sp, #0x1c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x14
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x14]
	mov r2, #2
	str fp, [sp, #0x18]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x11c]
	ldr r1, [r1, #0x120]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x10]
	mov r0, #0x22
	add r1, sp, #0x10
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0xc
	mov r2, #1
	str r6, [sp, #0xc]
	bl sub_020B275C
	mov r0, #0
	str r0, [sp, #8]
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #4
	orr r2, r3, r2, lsl #16
	str r2, [sp, #4]
	mov r2, #2
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x41
	mov r2, r1
	bl sub_020B275C
	add sb, sb, #1
	cmp sb, #8
	blt _02262ED4
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02263164: .word 0x1FF00000
	arm_func_end ov117_02262EAC

	arm_func_start ov117_02263168
ov117_02263168: ; 0x02263168
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0, asr #0x1f
	mov r5, r1
	mov r1, r4, lsl #0xc
	mov r7, r2
	mov r6, r3
	orr r1, r1, r0, lsr #20
	mov r0, r0, lsl #0xc
	mov r2, #0x80000
	mov r3, #0
	bl sub_020E1D24
	mov r1, r5, asr #0x1f
	mov r1, r1, lsl #0xc
	mov r4, r0
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	mov r2, #0x80000
	mov r3, #0
	bl sub_020E1D24
	mov r5, r0
	ldr r0, _0226326C ; =0x00007FFF
	cmp r4, r0
	ble _022631C8
	bl sub_02022974
_022631C8:
	mov r0, #0x8000
	rsb r0, r0, #0
	cmp r4, r0
	bge _022631DC
	bl sub_02022974
_022631DC:
	ldr r0, _0226326C ; =0x00007FFF
	cmp r5, r0
	ble _022631EC
	bl sub_02022974
_022631EC:
	mov r0, #0x8000
	rsb r0, r0, #0
	cmp r5, r0
	bge _02263200
	bl sub_02022974
_02263200:
	ldr r0, _0226326C ; =0x00007FFF
	sub r1, r4, #0x800
	cmp r1, r0
	ble _02263214
	bl sub_02022974
_02263214:
	mov r0, #0x8000
	sub r1, r4, #0x800
	rsb r0, r0, #0
	cmp r1, r0
	bge _0226322C
	bl sub_02022974
_0226322C:
	ldr r0, _0226326C ; =0x00007FFF
	add r1, r5, #0x800
	cmp r1, r0
	ble _02263240
	bl sub_02022974
_02263240:
	mov r0, #0x8000
	add r1, r5, #0x800
	rsb r0, r0, #0
	cmp r1, r0
	bge _02263258
	bl sub_02022974
_02263258:
	sub r0, r4, #0x800
	strh r0, [r7]
	add r0, r5, #0x800
	strh r0, [r6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226326C: .word 0x00007FFF
	arm_func_end ov117_02263168

	arm_func_start ov117_02263270
ov117_02263270: ; 0x02263270
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x238]
	cmp r1, #1
	ldrne r1, [r4, #0x218]
	cmpne r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x270]
	ldr r3, _0226333C ; =0x02266B07
	ldr r1, _02263340 ; =0x02266B05
	ldrb lr, [r3, r2, lsl #2]
	ldr r5, [r4, #0x230]
	ldrb r3, [r1, r2, lsl #2]
	ldr ip, [r4, #0x20c]
	add r1, lr, r5, asr #12
	cmp ip, r3
	blt _022632E4
	ldr r3, _02263344 ; =0x02266B06
	ldrb r3, [r3, r2, lsl #2]
	cmp ip, r3
	bgt _022632E4
	ldr ip, [r4, #0x210]
	cmp ip, r1
	blt _022632E4
	ldr r3, _02263348 ; =0x02266B08
	ldrb r2, [r3, r2, lsl #2]
	cmp ip, r2
	ble _022632EC
_022632E4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022632EC:
	mov r2, #1
	str r2, [r4, #0x238]
	ldr r2, [r4, #0x20c]
	str r2, [r4, #0x224]
	ldr r2, [r4, #0x210]
	str r2, [r4, #0x228]
	ldr r2, [r4, #0x210]
	sub r1, r2, r1
	str r1, [r4, #0x22c]
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x10]
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	rsb r1, r1, #0
	str r1, [r4, #0x230]
	bl ov117_022638AC
	str r0, [r4, #0x240]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0226333C: .word 0x02266B07
_02263340: .word 0x02266B05
_02263344: .word 0x02266B06
_02263348: .word 0x02266B08
	arm_func_end ov117_02263270

	arm_func_start ov117_0226334C
ov117_0226334C: ; 0x0226334C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x238]
	mov r4, #0
	cmp r0, #1
	bne _022633E8
	ldr r2, [r5, #0x23c]
	ldr r1, [r5, #0x210]
	cmp r1, r2
	movlt r0, r4
	strltb r4, [r5, #0x274]
	ldmltia sp!, {r3, r4, r5, pc}
	streqb r4, [r5, #0x274]
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	sub r0, r4, #1
	cmp r2, r0
	beq _022633BC
	cmp r1, r2
	ble _022633BC
	ldr r0, _02263440 ; =0x00000577
	bl sub_020057D4
	cmp r0, #0
	bne _022633BC
	ldr r0, _02263440 ; =0x00000577
	bl sub_02005748
	mov r0, #1
	strb r0, [r5, #0x274]
_022633BC:
	ldr r1, [r5, #0x270]
	ldr r0, _02263444 ; =0x02266B07
	ldr ip, [r5, #0x210]
	ldr r3, [r5, #0x22c]
	ldr r2, [r5, #0x230]
	ldrb r0, [r0, r1, lsl #2]
	sub r1, ip, r3
	str ip, [r5, #0x23c]
	add r0, r2, r0, lsl #12
	rsb r2, r0, r1, lsl #12
	b _022633F4
_022633E8:
	ldr r0, [r5, #0x248]
	mov r4, #1
	rsb r2, r0, #0
_022633F4:
	mov r0, r5
	mov r1, r4
	bl ov117_02263448
	cmp r0, #0
	beq _0226341C
	cmp r0, #1
	cmpne r0, #2
	bne _0226341C
	mov r0, r5
	blx ov117_02262A38
_0226341C:
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x10]
	mov r0, #1
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	rsb r1, r1, #0
	str r1, [r5, #0x230]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02263440: .word 0x00000577
_02263444: .word 0x02266B07
	arm_func_end ov117_0226334C

	arm_func_start ov117_02263448
ov117_02263448: ; 0x02263448
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4, #0x10]
	ldr r3, [r4, #0x20]
	rsb r6, r5, #0
	rsb r7, r3, #0
	sub r3, r6, r7
	add r3, r3, r3, lsr #31
	mov r5, r2
	mov r2, #0
	mov sb, r1
	add r8, r7, r3, asr #1
	str r2, [sp, #8]
	bl ov117_022637AC
	cmp r0, #0
	beq _022634A0
	cmp r0, #1
	beq _022634B4
	cmp r0, #2
	beq _022634E0
	b _02263508
_022634A0:
	add r1, r6, r5
	add r0, r7, r5
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	b _02263508
_022634B4:
	add r0, sp, #0x10
	str r0, [sp]
	add sl, sp, #0xc
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
	b _02263508
_022634E0:
	add r0, sp, #0xc
	str r0, [sp]
	add sl, sp, #0x10
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
_02263508:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	sub r0, r2, r1
	add r0, r0, r0, lsr #31
	add r5, r1, r0, asr #1
	cmp r8, r5
	cmpeq r6, r2
	cmpeq r7, r1
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	movlt r5, #0
	cmp r2, #0
	movlt r0, #0
	strlt r0, [sp, #0x10]
	cmp r1, #0
	movlt r0, #0
	strlt r0, [sp, #0xc]
	cmp r5, #0x64000
	movgt r0, #1
	strgt r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movgt r5, #0x64000
	cmp r0, #0x64000
	ble _02263580
	mov r0, #0x64000
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #8]
_02263580:
	ldr r0, [sp, #0xc]
	cmp r0, #0x64000
	ble _0226359C
	mov r0, #0x64000
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
_0226359C:
	mov r0, r4
	mov r1, sb
	bl ov117_022637AC
	cmp r0, #0
	beq _022635C0
	cmp r0, #1
	beq _02263600
	cmp r0, #2
	beq _022635E0
_022635C0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl sub_020BDA20
	add r1, r0, #0x8000
	mov r1, r1, lsl #0x10
	mov fp, r1, lsr #0x10
	b _02263624
_022635E0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl sub_020BDA20
	add r1, r0, #0x8000
	mov r1, r1, lsl #0x10
	mov fp, r1, lsr #0x10
	b _02263624
_02263600:
	ldr r0, [sp, #0x10]
	mov r1, #0x40000
	sub r0, r0, r5
	rsb r1, r1, #0
	bl sub_020BDA20
	mov fp, r0
	add r0, fp, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
_02263624:
	mov r1, fp, asr #4
	mov r7, r1, lsl #1
	add r2, r7, #1
	ldr r1, _022637A4 ; =0x020F983C
	mov r2, r2, lsl #1
	ldrsh r3, [r1, r2]
	mov r2, r0, asr #4
	mov r6, r2, lsl #1
	mov r2, r3, lsl #6
	add r2, r2, #0x40000
	str r2, [r4, #0xc]
	mov r2, r7, lsl #1
	ldrsh r7, [r1, r2]
	add r2, r6, #1
	mov r2, r2, lsl #1
	add r7, r5, r7, lsl #6
	rsb r7, r7, #0
	str r7, [r4, #0x10]
	ldrsh r7, [r1, r2]
	ldr r2, _022637A8 ; =0x92492493
	rsb r3, r5, #0x70000
	mov r7, r7, lsl #6
	add r7, r7, #0x40000
	mov r6, r6, lsl #1
	str r7, [r4, #0x1c]
	ldrsh r6, [r1, r6]
	smull r1, lr, r2, r3
	add r1, r5, r6, lsl #6
	rsb r6, r1, #0
	add lr, r3, lr
	mov r1, r3, lsr #0x1f
	str r6, [r4, #0x20]
	cmp r0, #0x8000
	add lr, r1, lr, asr #2
	smullls r1, r6, r2, r0
	addls r6, r0, r6
	movls r1, r0, lsr #0x1f
	bls _022636D0
	rsb r1, r0, #0x10000
	rsb r3, r1, #0
	smull r1, r6, r2, r3
	add r6, r3, r6
	mov r1, r3, lsr #0x1f
_022636D0:
	add r6, r1, r6, asr #2
	ldr r3, _022637A4 ; =0x020F983C
	mov r7, r6
	mov r8, lr
	mov ip, #1
_022636E4:
	sub r1, fp, r7
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r2, r3, r1, lsl #1
	ldrsh sb, [r2, #2]
	sub r2, r0, r7
	mov r1, r1, lsl #1
	mov sb, sb, lsl #6
	add sl, sb, #0x40000
	mov r2, r2, asr #4
	mov sb, r2, lsl #1
	add r2, r4, ip, lsl #5
	str sl, [r2, #0xc]
	ldrsh r1, [r3, r1]
	mov sl, sb, lsl #1
	add sb, r3, sb, lsl #1
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	rsb r1, r1, #0
	str r1, [r2, #0x10]
	ldrsh r1, [sb, #2]
	add r7, r7, r6
	add ip, ip, #1
	mov r1, r1, lsl #6
	add r1, r1, #0x40000
	str r1, [r2, #0x1c]
	ldrsh r1, [r3, sl]
	cmp ip, #7
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	rsb r1, r1, #0
	str r1, [r2, #0x20]
	ldr r1, [r2, #0xc]
	add r8, r8, lr
	str r1, [r2, #-0xc]
	ldr r1, [r2, #0x10]
	str r1, [r2, #-8]
	ldr r1, [r2, #0x1c]
	str r1, [r2, #4]
	ldr r1, [r2, #0x20]
	str r1, [r2, #8]
	blt _022636E4
	ldr r0, [sp, #8]
	cmp r0, #1
	moveq r0, #2
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022637A4: .word 0x020F983C
_022637A8: .word 0x92492493
	arm_func_end ov117_02263448

	arm_func_start ov117_022637AC
ov117_022637AC: ; 0x022637AC
	cmp r1, #1
	moveq r0, #0
	bxeq lr
	ldr r2, [r0, #0x21c]
	ldr r1, [r0, #0x224]
	sub r0, r2, #0x10
	cmp r1, r0
	movlt r0, #1
	bxlt lr
	add r0, r2, #0x10
	cmp r1, r0
	movgt r0, #2
	movle r0, #0
	bx lr
	arm_func_end ov117_022637AC

	arm_func_start ov117_022637E4
ov117_022637E4: ; 0x022637E4
	stmfd sp!, {r4, lr}
	ldr lr, [sp, #8]
	add r4, r2, r1
	mov r0, #0
	cmp r4, #0x64000
	subgt r0, r4, #0x64000
	subgt r1, r1, r0
	movgt r0, #1
	ldr ip, [sp, #0xc]
	str r2, [lr]
	str r3, [ip]
	add r4, r2, r1
	str r4, [lr]
	cmp r3, r2
	strgt r3, [ip]
	ldmgtia sp!, {r4, pc}
	mov r2, #0x19
	mul r2, r1, r2
	ldr lr, _02263848 ; =0x51EB851F
	mov r1, r2, lsr #0x1f
	smull r2, r4, lr, r2
	add r4, r1, r4, asr #5
	sub r1, r3, r4
	str r1, [ip]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02263848: .word 0x51EB851F
	arm_func_end ov117_022637E4

	arm_func_start ov117_0226384C
ov117_0226384C: ; 0x0226384C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #0x20]
	ldr r1, [r0, #0x10]
	ldr r4, [r0, #0x1c]
	sub r1, r1, r5
	add r1, r1, r1, lsr #31
	ldr lr, [r0, #0xc]
	ldr ip, [r0, #0xe4]
	ldr r3, [r0, #0xd4]
	ldr r2, [r0, #0xd8]
	add r0, r5, r1, asr #1
	sub r0, r2, r0
	sub r2, r4, lr
	sub r1, ip, r3
	add r1, r2, r1
	rsb r0, r0, #0
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, r1, lsr #31
	mov r0, r0, asr #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov117_0226384C

	arm_func_start ov117_022638AC
ov117_022638AC: ; 0x022638AC
	stmfd sp!, {r3, lr}
	bl ov117_0226384C
	mov r2, #0x64
	umull r3, r1, r0, r2
	mov r0, r0, asr #0x1f
	mla r1, r0, r2, r1
	mov r0, r3
	mov r3, #0
	mov r2, #0x3200000
	bl sub_020E1D24
	ldmia sp!, {r3, pc}
	arm_func_end ov117_022638AC

	arm_func_start ov117_022638D8
ov117_022638D8: ; 0x022638D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r0, #0xad
	mov r1, #0x6e
	bl sub_02006C24
	mov r4, r0
	str r4, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, _022639B4 ; =0x00002715
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x8c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, _022639B8 ; =0x00002713
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, r4
	mov r3, #0x37
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 ; =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x39
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 ; =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x38
	bl sub_0200CE54
	mov r0, r4
	bl sub_02006CA8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022639B4: .word 0x00002715
_022639B8: .word 0x00002713
	arm_func_end ov117_022638D8

	arm_func_start ov117_022639BC
ov117_022639BC: ; 0x022639BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D070
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D090
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D0A0
	ldr r0, [r4, #0x28]
	ldr r1, _022639FC ; =0x00002715
	bl sub_0200D080
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022639F8: .word 0x00002713
_022639FC: .word 0x00002715
	arm_func_end ov117_022639BC

	arm_func_start ov117_02263A00
ov117_02263A00: ; 0x02263A00
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	ldr lr, _02263A68 ; =0x02266B38
	mov r5, r0
	ldmia lr!, {r0, r1, r2, r3}
	add ip, sp, #0
	mov r4, ip
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	mov r2, r4
	str r0, [ip]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	bl sub_0200CE6C
	mov r4, r0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, r4
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02263A68: .word 0x02266B38
	arm_func_end ov117_02263A00

	arm_func_start ov117_02263A6C
ov117_02263A6C: ; 0x02263A6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0x238]
	mov r5, r1
	cmp r2, #0
	moveq r4, #0
	beq _02263A94
	mov r1, #0
	bl ov117_022637AC
	add r4, r0, #1
_02263A94:
	ldr r1, [r6, #0x270]
	ldr r0, _02263AE0 ; =0x02266B07
	ldr r3, [r6, #0x21c]
	ldrb r0, [r0, r1, lsl #2]
	ldr r2, [r6, #0x230]
	mov r1, r3, lsl #0x10
	add r0, r0, r2, asr #12
	mov r2, r0, lsl #0x10
	mov r0, r5
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	mov r3, #0x160000
	bl sub_0200D500
	mov r0, r5
	mov r1, r4
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02263AE0: .word 0x02266B07
	arm_func_end ov117_02263A6C

	arm_func_start ov117_02263AE4
ov117_02263AE4: ; 0x02263AE4
	ldr ip, _02263AEC ; =sub_0200D0F4
	bx ip
	; .align 2, 0
_02263AEC: .word sub_0200D0F4
	arm_func_end ov117_02263AE4

	.rodata

	.global Unk_ov117_02266B04
Unk_ov117_02266B04: ; 0x02266B04
	.incbin "incbin/overlay117_rodata.bin", 0x20C, 0x20D - 0x20C

	.global Unk_ov117_02266B05
Unk_ov117_02266B05: ; 0x02266B05
	.incbin "incbin/overlay117_rodata.bin", 0x20D, 0x21A - 0x20D

	.global Unk_ov117_02266B12
Unk_ov117_02266B12: ; 0x02266B12
	.incbin "incbin/overlay117_rodata.bin", 0x21A, 0x240 - 0x21A

	.global Unk_ov117_02266B38
Unk_ov117_02266B38: ; 0x02266B38
	.incbin "incbin/overlay117_rodata.bin", 0x240, 0x274 - 0x240
