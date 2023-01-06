	.include "macros/function.inc"
	.include "overlay004/ov4_022114A0.inc"

	

	.text


	arm_func_start ov4_022114A0
ov4_022114A0: ; 0x022114A0
	add r2, r0, #0xd
	add ip, r0, #2
	and r3, r2, #0xf
	eor r2, r0, #8
	and ip, ip, #0xf
	ldr r3, [r1, r3, lsl #2]
	ldr r2, [r1, r2, lsl #2]
	ldr ip, [r1, ip, lsl #2]
	eor r2, r3, r2
	ldr r3, [r1, r0, lsl #2]
	eor r2, ip, r2
	eor r3, r3, r2
	mov r2, r3, lsr #0x1f
	orr r2, r2, r3, lsl #1
	str r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
	arm_func_end ov4_022114A0

	arm_func_start ov4_022114E4
ov4_022114E4: ; 0x022114E4
	stmfd sp!, {r3, lr}
	movs r2, r2, lsr #2
	mov lr, #0
	ldmeqia sp!, {r3, pc}
_022114F4:
	ldr ip, [r1], #4
	add lr, lr, #1
	mov r3, ip, lsr #0x18
	strb r3, [r0]
	mov r3, ip, lsr #0x10
	strb r3, [r0, #1]
	mov r3, ip, lsr #8
	strb r3, [r0, #2]
	strb ip, [r0, #3]
	cmp lr, r2
	add r0, r0, #4
	blo _022114F4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022114E4

	arm_func_start ov4_02211528
ov4_02211528: ; 0x02211528
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_02211538:
	add r4, r1, r5
	ldrb r3, [r4, #1]
	ldrb ip, [r1, r5]
	ldrb lr, [r4, #2]
	mov r3, r3, lsl #0x10
	orr r3, r3, ip, lsl #24
	ldrb ip, [r4, #3]
	orr r3, r3, lr, lsl #8
	add r5, r5, #4
	orr r3, ip, r3
	cmp r5, r2
	str r3, [r0, #0], #4
	blo _02211538
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02211528

	arm_func_start ov4_02211570
ov4_02211570: ; 0x02211570
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	str r0, [sp]
	ldr r3, [sp]
	add r0, sp, #0x10
	ldmia r3, {r4, r5, r7, r8, sb}
	mov r2, #0x40
	bl ov4_02211528
	mov r0, #0
	ldr r3, _02211BE8 ; =0x5A827999
	mov r2, r0
	add r1, sp, #0x10
_022115A0:
	eor r6, r7, r8
	mov sl, r4, lsr #0x1b
	and r6, r5, r6
	orr fp, sl, r4, lsl #5
	eor r6, r8, r6
	mov sl, r5, lsr #2
	orr sl, sl, r5, lsl #30
	add r5, r1, r0, lsl #2
	add r6, fp, r6
	ldr ip, [r1, r0, lsl #2]
	ldr fp, [r5, #4]
	add r6, ip, r6
	add r6, r6, r3
	add sb, sb, r6
	mov r6, sb, lsr #0x1b
	orr r6, r6, sb, lsl #5
	eor ip, sl, r7
	and ip, r4, ip
	eor ip, r7, ip
	add r6, r6, ip
	add r6, fp, r6
	add r6, r6, r3
	add r8, r8, r6
	mov r6, r4, lsr #2
	orr r4, r6, r4, lsl #30
	ldr fp, [r5, #8]
	mov r6, r8, lsr #0x1b
	orr r6, r6, r8, lsl #5
	eor ip, r4, sl
	and ip, sb, ip
	eor ip, sl, ip
	add r6, r6, ip
	add r6, fp, r6
	add r6, r6, r3
	add r6, r7, r6
	mov r7, sb, lsr #2
	orr sb, r7, sb, lsl #30
	ldr r7, [r5, #0xc]
	ldr fp, [r5, #0x10]
	mov r5, r6, lsr #0x1b
	orr r5, r5, r6, lsl #5
	eor ip, sb, r4
	and ip, r8, ip
	eor ip, r4, ip
	add r5, r5, ip
	add r5, r7, r5
	add r5, r5, r3
	add r5, sl, r5
	mov r7, r8, lsr #2
	orr r8, r7, r8, lsl #30
	mov r7, r5, lsr #0x1b
	orr r7, r7, r5, lsl #5
	eor sl, r8, sb
	and sl, r6, sl
	eor sl, sb, sl
	add r7, r7, sl
	add r7, fp, r7
	add r7, r7, r3
	add r4, r4, r7
	mov r7, r6, lsr #2
	orr r7, r7, r6, lsl #30
	add r0, r0, #5
	add r2, r2, #1
	cmp r2, #3
	blt _022115A0
	eor r0, r7, r8
	mov r2, r4, lsr #0x1b
	and r0, r5, r0
	orr r3, r2, r4, lsl #5
	eor r0, r8, r0
	add r3, r3, r0
	ldr r6, [sp, #0x4c]
	ldr r0, _02211BE8 ; =0x5A827999
	add r3, r6, r3
	add r3, r3, r0
	mov r2, r5, lsr #2
	orr r6, r2, r5, lsl #30
	mov r0, #0
	add sb, sb, r3
	bl ov4_022114A0
	eor r1, r6, r7
	mov r3, sb, lsr #0x1b
	and r1, r4, r1
	mov r2, r4, lsr #2
	orr r3, r3, sb, lsl #5
	eor r1, r7, r1
	add r1, r3, r1
	add r3, r1, r0
	ldr r0, _02211BE8 ; =0x5A827999
	add r1, sp, #0x10
	add r3, r3, r0
	orr r5, r2, r4, lsl #30
	mov r0, #1
	add r8, r8, r3
	bl ov4_022114A0
	eor r1, r5, r6
	mov r2, r8, lsr #0x1b
	and r1, sb, r1
	orr r2, r2, r8, lsl #5
	eor r1, r6, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _02211BE8 ; =0x5A827999
	mov r1, sb, lsr #2
	add r0, r2, r0
	orr sb, r1, sb, lsl #30
	add r7, r7, r0
	add r1, sp, #0x10
	mov r0, #2
	bl ov4_022114A0
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, sb, r5
	and r1, r8, r1
	eor r1, r5, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _02211BE8 ; =0x5A827999
	mov r1, r8, lsr #2
	add r0, r2, r0
	orr r8, r1, r8, lsl #30
	add r6, r6, r0
	mov r0, #3
	add r1, sp, #0x10
	bl ov4_022114A0
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r8, sb
	and r1, r7, r1
	eor r1, sb, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _02211BE8 ; =0x5A827999
	mov r1, r7, lsr #2
	add r0, r2, r0
	add r5, r5, r0
	mov r0, #0
	ldr r4, _02211BEC ; =0x6ED9EBA1
	orr r7, r1, r7, lsl #30
	mov sl, #4
	str r0, [sp, #4]
	add fp, sp, #0x10
_022117D8:
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov4_022114A0
	mov r1, sb, lsr #0x1b
	orr r2, r1, sb, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, sb, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, sb, lsr #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov4_022114A0
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, sb
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov4_022114A0
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, sb, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r1, r7, lsr #2
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #3
	blt _022117D8
	mov r0, #0
	ldr r4, _02211BF0 ; =0x8F1BBCDC
	str r0, [sp, #8]
	add fp, sp, #0x10
_0221190C:
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	orr r2, r7, r8
	mov r1, r5, lsr #0x1b
	orr r1, r1, r5, lsl #5
	and r3, r6, r2
	and r2, r7, r8
	orr r2, r3, r2
	add r1, r1, r2
	add r1, r1, r0
	mov r0, r6, lsr #2
	add r1, r1, r4
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov4_022114A0
	mov r1, sb, lsr #0x1b
	orr r1, r1, sb, lsl #5
	orr r2, r6, r7
	and r3, r5, r2
	and r2, r6, r7
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov4_022114A0
	mov r1, r8, lsr #0x1b
	orr r1, r1, r8, lsl #5
	orr r2, r5, r6
	and r3, sb, r2
	and r2, r5, r6
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, sb, lsr #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #3
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	mov r1, r7, lsr #0x1b
	orr r1, r1, r7, lsl #5
	orr r2, sb, r5
	and r3, r8, r2
	and r2, sb, r5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov4_022114A0
	mov r1, r6, lsr #0x1b
	orr r1, r1, r6, lsl #5
	orr r2, r8, sb
	and r3, r7, r2
	and r2, r8, sb
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r1, r7, lsr #2
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #2
	blt _0221190C
	mov r0, #0
	ldr r4, _02211BF4 ; =0xCA62C1D6
	str r0, [sp, #0xc]
	add fp, sp, #0x10
_02211A68:
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov4_022114A0
	mov r1, sb, lsr #0x1b
	orr r2, r1, sb, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov4_022114A0
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, sb, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, sb, lsr #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #3
	mov r1, fp
	bl ov4_022114A0
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, sb
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #4
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov4_022114A0
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, sb, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r1, r7, lsr #2
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #1
	blt _02211A68
	ldr r0, [sp]
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [r0, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	add r1, r0, r7
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r0, r8
	ldr r0, [sp]
	str r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	add r1, r0, sb
	ldr r0, [sp]
	str r1, [r0, #0x10]
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02211BE8: .word 0x5A827999
_02211BEC: .word 0x6ED9EBA1
_02211BF0: .word 0x8F1BBCDC
_02211BF4: .word 0xCA62C1D6
	arm_func_end ov4_02211570

	arm_func_start ov4_02211BF8
ov4_02211BF8: ; 0x02211BF8
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl MI_CpuFill8
	ldr r0, _02211C38 ; =0x67452301
	ldr r1, _02211C3C ; =0xEFCDAB89
	str r0, [r4, #0]
	ldr r0, _02211C40 ; =0x98BADCFE
	str r1, [r4, #4]
	ldr r1, _02211C44 ; =0x10325476
	str r0, [r4, #8]
	ldr r0, _02211C48 ; =0xC3D2E1F0
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02211C38: .word 0x67452301
_02211C3C: .word 0xEFCDAB89
_02211C40: .word 0x98BADCFE
_02211C44: .word 0x10325476
_02211C48: .word 0xC3D2E1F0
	arm_func_end ov4_02211BF8

	arm_func_start ov4_02211C4C
ov4_02211C4C: ; 0x02211C4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x18]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x18]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _02211CE8
	add r1, r8, #0x1c
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x1c
	mov r4, #0
	bl ov4_02211570
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _02211CEC
_02211CC8:
	mov r0, r8
	add r1, r7, r5
	bl ov4_02211570
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _02211CC8
	b _02211CEC
_02211CE8:
	mov r5, #0
_02211CEC:
	add r1, r8, #0x1c
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02211C4C

	arm_func_start ov4_02211D04
ov4_02211D04: ; 0x02211D04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #8
	bl ov4_022114E4
	ldr r0, [r5, #0x18]
	ldr r1, _02211D68 ; =0x0221A3A4
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	cmp r0, #0x38
	rsblt r2, r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl ov4_02211C4C
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl ov4_02211C4C
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl ov4_022114E4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02211D68: .word Unk_ov4_0221A3A4
	arm_func_end ov4_02211D04

	arm_func_start ov4_02211D6C
ov4_02211D6C: ; 0x02211D6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _02211D98 ; =0x0221A3A5
	mov r5, r0
	mov r2, #0x2c
	bl ov4_02211C4C
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl ov4_022114E4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02211D98: .word 0x0221A3A5
	arm_func_end ov4_02211D6C

	.data


	.global Unk_ov4_0221A3A4
Unk_ov4_0221A3A4: ; 0x0221A3A4
	.incbin "incbin/overlay4_data.bin", 0x4524, 0x5C

