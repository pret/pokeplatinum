	.include "macros/function.inc"
	.include "include/md5.inc"

	

	.text


	arm_func_start ov4_02210EEC
ov4_02210EEC: ; 0x02210EEC
	ldr ip, _02210F00 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_02210F00: .word MI_CpuCopy8
	arm_func_end ov4_02210EEC

	arm_func_start ov4_02210F04
ov4_02210F04: ; 0x02210F04
	ldr ip, _02210F18 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_02210F18: .word MI_CpuCopy8
	arm_func_end ov4_02210F04

	arm_func_start ov4_02210F1C
ov4_02210F1C: ; 0x02210F1C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	str r0, [sp]
	ldr r3, [sp]
	add r0, sp, #4
	mov r2, #0x40
	ldmia r3, {r4, r5, r6, r7}
	bl ov4_02210F04
	mov r3, #0
	ldr lr, _02211330 ; =0x0221A224
	mov ip, r3
	add r2, sp, #4
_02210F4C:
	ldr r1, _02211334 ; =0x0221A2A4
	ldrb r0, [lr]
	add sb, r1, r3, lsl #2
	eor r1, r6, r7
	and r8, r5, r1
	ldr r1, _02211334 ; =0x0221A2A4
	ldr r0, [r2, r0, lsl #2]
	ldr sl, [r1, r3, lsl #2]
	eor r1, r7, r8
	add r0, r1, r0
	add r0, sl, r0
	add r1, r4, r0
	mov r0, r1, lsr #0x19
	orr r0, r0, r1, lsl #7
	ldrb r1, [lr, #1]
	add r4, r5, r0
	eor r0, r5, r6
	and r0, r4, r0
	ldr sl, [r2, r1, lsl #2]
	eor r0, r6, r0
	add r0, r0, sl
	ldr r8, [sb, #4]
	ldrb sl, [lr, #2]
	add r0, r8, r0
	add r7, r7, r0
	mov r0, r7, lsr #0x14
	orr r0, r0, r7, lsl #12
	add r7, r4, r0
	eor r0, r4, r5
	and r0, r7, r0
	ldr r1, [sb, #8]
	ldrb fp, [lr, #3]
	ldr sl, [r2, sl, lsl #2]
	eor r0, r5, r0
	add r0, r0, sl
	add r0, r1, r0
	add r6, r6, r0
	mov r1, r6, lsr #0xf
	orr r1, r1, r6, lsl #17
	add ip, ip, #1
	eor r8, r7, r4
	add r6, r7, r1
	and r1, r6, r8
	ldr r0, [r2, fp, lsl #2]
	eor r1, r4, r1
	ldr sb, [sb, #0xc]
	add r0, r1, r0
	add r0, sb, r0
	add r1, r5, r0
	mov r0, r1, lsr #0xa
	orr r0, r0, r1, lsl #22
	add lr, lr, #4
	add r5, r6, r0
	add r3, r3, #4
	cmp ip, #4
	blt _02210F4C
	ldr r0, _02211330 ; =0x0221A224
	ldr lr, _02211334 ; =0x0221A2A4
	mov fp, #0
	add sl, r0, r3
	add sb, sp, #4
_02211040:
	ldrb r0, [sl]
	add ip, lr, r3, lsl #2
	eor r1, r5, r6
	and r1, r7, r1
	ldr r8, [lr, r3, lsl #2]
	eor r1, r6, r1
	ldr r0, [sb, r0, lsl #2]
	ldr r2, [ip, #4]
	add r0, r1, r0
	add r0, r8, r0
	add r1, r4, r0
	mov r0, r1, lsr #0x1b
	orr r1, r0, r1, lsl #5
	ldrb r0, [sl, #1]
	add r4, r5, r1
	eor r1, r4, r5
	and r1, r6, r1
	eor r1, r5, r1
	ldr r0, [sb, r0, lsl #2]
	ldr r8, [ip, #8]
	add r0, r1, r0
	add r0, r2, r0
	add r2, r7, r0
	ldr r0, [ip, #0xc]
	mov r1, r2, lsr #0x17
	orr r1, r1, r2, lsl #9
	add r7, r4, r1
	eor r1, r7, r4
	and r1, r5, r1
	eor r2, r4, r1
	ldrb r1, [sl, #2]
	ldrb ip, [sl, #3]
	add sl, sl, #4
	ldr r1, [sb, r1, lsl #2]
	ldr ip, [sb, ip, lsl #2]
	add r1, r2, r1
	add r1, r8, r1
	add r2, r6, r1
	mov r1, r2, lsr #0x12
	orr r1, r1, r2, lsl #14
	add r6, r7, r1
	eor r1, r6, r7
	and r1, r4, r1
	eor r1, r7, r1
	add r1, r1, ip
	add r0, r0, r1
	add r1, r5, r0
	mov r0, r1, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r5, r6, r0
	add r3, r3, #4
	add fp, fp, #1
	cmp fp, #4
	blt _02211040
	ldr r0, _02211330 ; =0x0221A224
	ldr r1, _02211334 ; =0x0221A2A4
	add r2, r0, r3
	mov r8, #0
	add r0, sp, #4
_0221112C:
	ldrb sb, [r2]
	add fp, r1, r3, lsl #2
	eor ip, r5, r6
	ldr sl, [r0, sb, lsl #2]
	eor ip, r7, ip
	ldr sb, [r1, r3, lsl #2]
	add sl, ip, sl
	add sb, sb, sl
	add sb, r4, sb
	mov r4, sb, lsr #0x1c
	ldrb sl, [r2, #1]
	orr r4, r4, sb, lsl #4
	add r4, r5, r4
	eor sb, r4, r5
	eor sb, r6, sb
	ldr ip, [r0, sl, lsl #2]
	ldr sl, [fp, #4]
	add sb, sb, ip
	add sb, sl, sb
	add sb, r7, sb
	mov r7, sb, lsr #0x15
	orr r7, r7, sb, lsl #11
	ldrb sb, [r2, #2]
	add r7, r4, r7
	ldr sl, [fp, #8]
	ldr ip, [r0, sb, lsl #2]
	ldr sb, [fp, #0xc]
	eor fp, r7, r4
	eor fp, r5, fp
	add fp, fp, ip
	add sl, sl, fp
	add sl, r6, sl
	mov r6, sl, lsr #0x10
	orr r6, r6, sl, lsl #16
	add r6, r7, r6
	eor sl, r6, r7
	eor fp, r4, sl
	ldrb sl, [r2, #3]
	add r2, r2, #4
	add r3, r3, #4
	ldr sl, [r0, sl, lsl #2]
	add r8, r8, #1
	add sl, fp, sl
	add sb, sb, sl
	add sb, r5, sb
	cmp r8, #4
	mov r5, sb, lsr #9
	orr r5, r5, sb, lsl #23
	add r5, r6, r5
	blt _0221112C
	ldr r0, _02211330 ; =0x0221A224
	mov sb, #0
	add r8, r0, r3
	add r2, sp, #4
_02211204:
	ldr r1, _02211334 ; =0x0221A2A4
	ldrb r0, [r8]
	add fp, r1, r3, lsl #2
	mvn r1, r7
	orr sl, r5, r1
	ldr r1, _02211334 ; =0x0221A2A4
	ldr r0, [r2, r0, lsl #2]
	ldr ip, [r1, r3, lsl #2]
	eor r1, r6, sl
	add r0, r1, r0
	add r0, ip, r0
	add r1, r4, r0
	mov r0, r1, lsr #0x1a
	orr r0, r0, r1, lsl #6
	ldrb r1, [r8, #1]
	add r4, r5, r0
	mvn r0, r6
	orr r0, r4, r0
	ldr ip, [r2, r1, lsl #2]
	eor r0, r5, r0
	add r0, r0, ip
	ldr sl, [fp, #4]
	ldrb ip, [r8, #2]
	add r0, sl, r0
	add r7, r7, r0
	mov r0, r7, lsr #0x16
	orr r0, r0, r7, lsl #10
	add r7, r4, r0
	mvn r0, r5
	orr r0, r7, r0
	ldr r1, [fp, #8]
	ldrb lr, [r8, #3]
	ldr ip, [r2, ip, lsl #2]
	eor r0, r4, r0
	add r0, r0, ip
	add r0, r1, r0
	add r6, r6, r0
	mov r1, r6, lsr #0x11
	orr r1, r1, r6, lsl #15
	add sb, sb, #1
	mvn sl, r4
	add r6, r7, r1
	orr r1, r6, sl
	ldr r0, [r2, lr, lsl #2]
	eor r1, r7, r1
	ldr fp, [fp, #0xc]
	add r0, r1, r0
	add r0, fp, r0
	add r1, r5, r0
	mov r0, r1, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r8, r8, #4
	add r5, r6, r0
	add r3, r3, #4
	cmp sb, #4
	blt _02211204
	ldr r0, [sp]
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r0, r7
	ldr r0, [sp]
	str r1, [r0, #0xc]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02211330: .word Unk_ov4_0221A224
_02211334: .word Unk_ov4_0221A2A4
	arm_func_end ov4_02210F1C

	arm_func_start ov4_02211338
ov4_02211338: ; 0x02211338
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x58
	mov r4, r0
	bl MI_CpuFill8
	ldr r1, _02211370 ; =0x67452301
	ldr r0, _02211374 ; =0xEFCDAB89
	str r1, [r4, #0]
	ldr r1, _02211378 ; =0x98BADCFE
	str r0, [r4, #4]
	ldr r0, _0221137C ; =0x10325476
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02211370: .word 0x67452301
_02211374: .word 0xEFCDAB89
_02211378: .word 0x98BADCFE
_0221137C: .word 0x10325476
	arm_func_end ov4_02211338

	arm_func_start ov4_02211380
ov4_02211380: ; 0x02211380
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x10]
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
	blo _0221141C
	add r1, r8, #0x18
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x18
	mov r4, #0
	bl ov4_02210F1C
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _02211420
_022113FC:
	mov r0, r8
	add r1, r7, r5
	bl ov4_02210F1C
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _022113FC
	b _02211420
_0221141C:
	mov r5, #0
_02211420:
	add r1, r8, #0x18
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02211380

	arm_func_start ov4_02211438
ov4_02211438: ; 0x02211438
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #8
	bl ov4_02210EEC
	ldr r0, [r5, #0x10]
	ldr r1, _0221149C ; =0x0221A264
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	cmp r0, #0x38
	rsblt r2, r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl ov4_02211380
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl ov4_02211380
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl ov4_02210EEC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221149C: .word Unk_ov4_0221A264
	arm_func_end ov4_02211438

	.data


	.global Unk_ov4_0221A224
Unk_ov4_0221A224: ; 0x0221A224
	.incbin "incbin/md5.bin", 0x0, 0x40

	.global Unk_ov4_0221A264
Unk_ov4_0221A264: ; 0x0221A264
	.incbin "incbin/md5.bin", 0x40, 0x80 - 0x40

	.global Unk_ov4_0221A2A4
Unk_ov4_0221A2A4: ; 0x0221A2A4
	.incbin "incbin/md5.bin", 0x80, 0x100

