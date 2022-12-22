	.include "macros/function.inc"
	.include "include/ov4_021F7F54.inc"

	

	.text


	arm_func_start ov4_021F7F54
ov4_021F7F54: ; 0x021F7F54
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_021FA678
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4, #0]
	mov r2, #1
	str r2, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F7F54

	arm_func_start ov4_021F7F84
ov4_021F7F84: ; 0x021F7F84
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_021FA678
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r1, #2
	str r1, [r0, #0xc]
	ldr r1, [r4, #0]
	mov r0, #0
	str r0, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F7F84

	arm_func_start ov4_021F7FB4
ov4_021F7FB4: ; 0x021F7FB4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r3
	bl ov4_021FAE30
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ble _021F8014
	bl ov4_021D7880
	cmp r0, #0
	str r0, [r5, #0x38]
	addeq sp, sp, #0x20
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl memcpy
	ldr r0, [sp, #0x38]
	str r0, [r5, #0x3c]
_021F8014:
	cmp r4, #0
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	add r0, sp, #0
	bl ov4_021F71C4
	add r1, sp, #0
	add r0, r5, #0x68
	bl ov4_021F72E0
	add r1, sp, #0
	mov r0, r5
	bl ov4_021F9DB8
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021F7FB4

	arm_func_start ov4_021F805C
ov4_021F805C: ; 0x021F805C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x14]
	mov r4, r1
	cmp r2, #0
	movne r0, #0
	strne r0, [r5, #0x14]
	ldmneia sp!, {r3, r4, r5, pc}
	mov r2, #0
	str r2, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, #4
	movne r0, r2
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov4_021F9F1C
	mov r0, #5
	cmp r4, #0
	str r0, [r5, #0xc]
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F805C

	arm_func_start ov4_021F80B8
ov4_021F80B8: ; 0x021F80B8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmneia sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0xc
	add r1, sp, #0x10
	bl ov4_021FAE30
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r4
	bl ov4_021F9F78
	mov r0, #6
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021F80B8

	arm_func_start ov4_021F8110
ov4_021F8110: ; 0x021F8110
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r2, [sp]
	mov r3, r1
	ldrh r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0]
	bl ov4_021FA94C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	bl ov4_021EA840
	str r0, [r4, #0x88]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_021F8110

	arm_func_start ov4_021F8158
ov4_021F8158: ; 0x021F8158
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, #5
	bge _021F81F0
	ldr r0, [r4, #0x10]
	mov r3, #0
	cmp r0, #0
	beq _021F819C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _021F81B8
	ldr r0, [r4, #0x1c]
	sub r0, r1, r0
	cmp r0, r2
	movhi r3, #1
	b _021F81B8
_021F819C:
	cmp r2, #4
	bge _021F81B8
	ldr r2, [r4, #0x1c]
	ldr r0, _021F81F8 ; =0x0000EA60
	sub r1, r1, r2
	cmp r1, r0
	movhi r3, #1
_021F81B8:
	cmp r3, #0
	beq _021F81F0
	mov r0, r4
	bl ov4_021FA270
	mov r0, r4
	bl ov4_021F8390
	mov r2, #0
	mov r0, r4
	mov r3, r2
	mov r1, #6
	bl ov4_021F77F4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021F81F0:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F81F8: .word 0x0000EA60
	arm_func_end ov4_021F8158

	arm_func_start ov4_021F81FC
ov4_021F81FC: ; 0x021F81FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x60]
	mov r6, r1
	bl ov4_021E9BBC
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _021F8260
_021F8220:
	ldr r0, [r7, #0x60]
	mov r1, r4
	bl ov4_021E9BC4
	mov r1, r0
	ldr r0, [r1, #0xc]
	sub r0, r6, r0
	cmp r0, #0x3e8
	bls _021F8254
	mov r0, r7
	bl ov4_021FA2D8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021F8254:
	add r4, r4, #1
	cmp r4, r5
	blt _021F8220
_021F8260:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021F81FC

	arm_func_start ov4_021F8268
ov4_021F8268: ; 0x021F8268
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x90]
	cmp r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0, #0x94]
	sub r1, r1, r2
	cmp r1, #0x64
	bls _021F829C
	bl ov4_021FA16C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F829C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021F8268

	arm_func_start ov4_021F82A4
ov4_021F82A4: ; 0x021F82A4
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x88]
	ldr r2, _021F82D4 ; =0x00007530
	sub r1, r1, r3
	cmp r1, r2
	bls _021F82CC
	bl ov4_021FA048
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F82CC:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F82D4: .word 0x00007530
	arm_func_end ov4_021F82A4

	arm_func_start ov4_021F82D8
ov4_021F82D8: ; 0x021F82D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021F8158
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov4_021F82A4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov4_021F81FC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov4_021F8268
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F82D8

	arm_func_start ov4_021F8340
ov4_021F8340: ; 0x021F8340
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _021F8380
	ldr r1, [r4, #0xc]
	cmp r1, #7
	ldmgeia sp!, {r4, pc}
	bl ov4_021F8390
	mov r0, r4
	bl ov4_021FA270
	mov r0, r4
	mov r1, #0
	bl ov4_021F79C0
	mov r0, r4
	bl ov4_021FA888
	ldmia sp!, {r4, pc}
_021F8380:
	mov r1, #6
	str r1, [r4, #0xc]
	bl ov4_021F9FEC
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F8340

	arm_func_start ov4_021F8390
ov4_021F8390: ; 0x021F8390
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #7
	ldmeqia sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #7
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov4_021EA4F4
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x10]
	bl ov4_021E9C2C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021F8390

	arm_func_start ov4_021F83EC
ov4_021F83EC: ; 0x021F83EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021F8404
	bl ov4_021D78B0
_021F8404:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021F8414
	bl ov4_021D78B0
_021F8414:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021F8424
	bl ov4_021D78B0
_021F8424:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021F8434
	bl ov4_021E9B50
_021F8434:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021F8444
	bl ov4_021E9B50
_021F8444:
	ldr r0, [r4, #0x98]
	cmp r0, #0
	beq _021F8454
	bl ov4_021E9B50
_021F8454:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	beq _021F8464
	bl ov4_021E9B50
_021F8464:
	mov r0, r4
	bl ov4_021D78B0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F83EC