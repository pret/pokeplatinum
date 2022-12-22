	.include "macros/function.inc"
	.include "include/ov4_021FD500.inc"

	

	.text


	arm_func_start ov4_021FD500
ov4_021FD500: ; 0x021FD500
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	movs sb, r1
	mov sl, r0
	mov fp, r2
	mov r8, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #1
	mov r4, #0
	mov r5, #1
	bls _021FD544
_021FD534:
	mov r0, r5, lsl #1
	add r5, r0, #1
	cmp r5, sb
	blo _021FD534
_021FD544:
	ldr r2, [r6, #0]
	add r0, r2, #1
	str r0, [r6, #0]
	ldrb r1, [r7]
	ldrb r0, [fp, r2]
	ldrb r1, [sl, r1]
	add r0, r1, r0
	strb r0, [r7]
	ldr r0, [r6, #0]
	cmp r0, r8
	blo _021FD584
	mov r0, #0
	str r0, [r6, #0]
	ldrb r0, [r7]
	add r0, r0, r8
	strb r0, [r7]
_021FD584:
	ldrb r0, [r7]
	add r4, r4, #1
	cmp r4, #0xb
	and r0, r5, r0
	bls _021FD5A4
	mov r1, sb
	bl _u32_div_f
	mov r0, r1
_021FD5A4:
	cmp r0, sb
	bhi _021FD544
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021FD500

	arm_func_start ov4_021FD5B4
ov4_021FD5B4: ; 0x021FD5B4
	mov r1, #1
	strb r1, [r0, #0x100]
	mov r1, #3
	strb r1, [r0, #0x101]
	mov r1, #5
	strb r1, [r0, #0x102]
	mov r1, #7
	strb r1, [r0, #0x103]
	mov r1, #0xb
	strb r1, [r0, #0x104]
	mov r1, #0
	mov r2, #0xff
_021FD5E4:
	strb r2, [r0, r1]
	add r1, r1, #1
	cmp r1, #0x100
	sub r2, r2, #1
	blt _021FD5E4
	bx lr
	arm_func_end ov4_021FD5B4

	arm_func_start ov4_021FD5FC
ov4_021FD5FC: ; 0x021FD5FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r7, r2
	mov sb, r0
	mov r8, r1
	cmp r7, #1
	bhs _021FD624
	bl ov4_021FD5B4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FD624:
	mov r0, #0
_021FD628:
	strb r0, [sb, r0]
	add r0, r0, #1
	cmp r0, #0x100
	blt _021FD628
	mov r0, #0
	str r0, [sp, #0xc]
	strb r0, [sp, #8]
	mov r6, #0xff
	add r5, sp, #8
	add r4, sp, #0xc
_021FD650:
	str r5, [sp]
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl ov4_021FD500
	ldrb r2, [sb, r6]
	ldrb r1, [sb, r0]
	strb r1, [sb, r6]
	strb r2, [sb, r0]
	subs r6, r6, #1
	bpl _021FD650
	ldrb r1, [sb, #1]
	mov r0, #0
	strb r1, [sb, #0x100]
	ldrb r1, [sb, #3]
	strb r1, [sb, #0x101]
	ldrb r1, [sb, #5]
	strb r1, [sb, #0x102]
	ldrb r1, [sb, #7]
	strb r1, [sb, #0x103]
	ldrb r1, [sp, #8]
	ldrb r1, [sb, r1]
	strb r1, [sb, #0x104]
	strb r0, [sp, #8]
	str r0, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021FD5FC

	arm_func_start ov4_021FD6C4
ov4_021FD6C4: ; 0x021FD6C4
	stmfd sp!, {r4, lr}
	ldrb r4, [r0, #0x100]
	add r2, r4, #1
	strb r2, [r0, #0x100]
	ldrb r3, [r0, #0x101]
	ldrb r2, [r0, r4]
	add r2, r3, r2
	strb r2, [r0, #0x101]
	ldrb r3, [r0, #0x104]
	and r2, r2, #0xff
	ldrb r2, [r0, r2]
	ldrb r4, [r0, r3]
	strb r2, [r0, r3]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x101]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r3, [r0, #0x100]
	ldrb r2, [r0, #0x103]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r2, [r0, #0x100]
	strb r4, [r0, r2]
	ldrb r3, [r0, #0x102]
	ldrb r2, [r0, r4]
	add r4, r3, r2
	strb r4, [r0, #0x102]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x104]
	ldrb ip, [r0, #0x101]
	ldrb lr, [r0, #0x100]
	and r4, r4, #0xff
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	ldrb ip, [r0, ip]
	ldrb r4, [r0, r4]
	add r2, r3, r2
	ldrb r3, [r0, lr]
	add r2, ip, r2
	and r2, r2, #0xff
	add r3, r4, r3
	ldrb r2, [r0, r2]
	and r3, r3, #0xff
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	eor r3, r1, r3
	eor r2, r3, r2
	strb r2, [r0, #0x103]
	strb r1, [r0, #0x104]
	ldrb r0, [r0, #0x103]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FD6C4

	arm_func_start ov4_021FD790
ov4_021FD790: ; 0x021FD790
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_021FD7AC:
	ldrb r1, [r6, r4]
	mov r0, r7
	bl ov4_021FD6C4
	strb r0, [r6, r4]
	add r4, r4, #1
	cmp r4, r5
	blt _021FD7AC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021FD790