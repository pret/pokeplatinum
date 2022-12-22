	.include "macros/function.inc"

	

	.text


	arm_func_start _dsqrt
_dsqrt: ; 0x020E0598
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020E0728 ; =0x7FF00000
	cmp r1, r2
	bhs _020E06E4
	movs ip, r1, lsr #0x14
	beq _020E0690
	bic r1, r1, r2
	orr r1, r1, #0x100000
_020E05B8:
	movs ip, ip, asr #1
	bhs _020E05CC
	sub ip, ip, #1
	movs r0, r0, lsl #1
	adc r1, r1, r1
_020E05CC:
	movs r3, r0, lsl #1
	adc r1, r1, r1
	mov r2, #0
	mov r4, #0
	mov lr, #0x200000
_020E05E0:
	add r6, r4, lr
	cmp r6, r1
	addle r4, r6, lr
	suble r1, r1, r6
	addle r2, r2, lr
	movs r3, r3, lsl #1
	adc r1, r1, r1
	movs lr, lr, lsr #1
	bne _020E05E0
	mov r0, #0
	mov r5, #0
	cmp r1, r4
	cmpeq r3, #-0x80000000
	blo _020E0628
	subs r3, r3, #-0x80000000
	sbc r1, r1, r4
	add r4, r4, #1
	mov r0, #-0x80000000
_020E0628:
	movs r3, r3, lsl #1
	adc r1, r1, r1
	mov lr, #0x40000000
_020E0634:
	add r6, r5, lr
	cmp r4, r1
	cmpeq r6, r3
	bhi _020E0654
	add r5, r6, lr
	subs r3, r3, r6
	sbc r1, r1, r4
	add r0, r0, lr
_020E0654:
	movs r3, r3, lsl #1
	adc r1, r1, r1
	movs lr, lr, lsr #1
	bne _020E0634
	orrs r1, r1, r3
	biceq r0, r0, #1
	movs r1, r2, lsr #1
	; movs r0, r0, rxx
	.word 0xe1b00060
	adcs r0, r0, #0
	adc r1, r1, #0
	add r1, r1, #0x20000000
	sub r1, r1, #0x100000
	add r1, r1, ip, lsl #20
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E0690:
	cmp r1, #0
	bne _020E06C0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mvn ip, #0x13
	clz r5, r0
	movs r0, r0, lsl r5
	sub ip, ip, r5
	mov r1, r0, lsr #0xb
	mov r0, r0, lsl #0x15
	b _020E05B8
_020E06C0:
	clz r2, r1
	movs r1, r1, lsl r2
	rsb r2, r2, #0x2b
	mov r1, r1, lsr #0xb
	orr r1, r1, r0, lsr r2
	rsb r2, r2, #0x20
	mov r0, r0, lsl r2
	rsb ip, r2, #1
	b _020E05B8
_020E06E4:
	tst r1, #-0x80000000
	beq _020E0700
	bics r3, r1, #0x80000000
	cmpeq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	b _020E070C
_020E0700:
	orrs r2, r0, r1, lsl #12
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
_020E070C:
	ldr r2, _020E072C ; =0x7FF80000
	orr r1, r1, r2
	ldr r3, _020E0730 ; =0x021D0D40
	mov r4, #0x21
	str r4, [r3, #0]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_020E0728: .word 0x7FF00000
_020E072C: .word 0x7FF80000
_020E0730: .word 0x021D0D40
	arm_func_end _dsqrt