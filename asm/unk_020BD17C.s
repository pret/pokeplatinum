	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020BD17C
sub_020BD17C: ; 0x020BD17C
	ldr ip, [r0]
	ldr r3, [r1, #0]
	add r3, ip, r3
	str r3, [r2, #0]
	ldr ip, [r0, #4]
	ldr r3, [r1, #4]
	add r3, ip, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r3, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020BD17C

	arm_func_start sub_020BD1B0
sub_020BD1B0: ; 0x020BD1B0
	ldr ip, [r0]
	ldr r3, [r1, #0]
	sub r3, ip, r3
	str r3, [r2, #0]
	ldr ip, [r0, #4]
	ldr r3, [r1, #4]
	sub r3, ip, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	sub r0, r3, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020BD1B0

	arm_func_start sub_020BD1E4
sub_020BD1E4: ; 0x020BD1E4
	ldrsh ip, [r0]
	ldrsh r3, [r1]
	add r3, ip, r3
	strh r3, [r2]
	ldrsh ip, [r0, #2]
	ldrsh r3, [r1, #2]
	add r3, ip, r3
	strh r3, [r2, #2]
	ldrsh r3, [r0, #4]
	ldrsh r0, [r1, #4]
	add r0, r3, r0
	strh r0, [r2, #4]
	bx lr
	arm_func_end sub_020BD1E4

	arm_func_start sub_020BD218
sub_020BD218: ; 0x020BD218
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	ldr ip, [r0]
	smull r4, lr, r3, r2
	ldr r2, [r1, #0]
	ldr r3, [r0, #8]
	smlal r4, lr, ip, r2
	ldr r0, [r1, #8]
	smlal r4, lr, r3, r0
	adds r0, r4, #0x800
	adc r1, lr, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BD218

	arm_func_start sub_020BD254
sub_020BD254: ; 0x020BD254
	stmfd sp!, {r3, r4, r5, lr}
	ldrsh lr, [r0, #2]
	ldrsh ip, [r1, #2]
	ldrsh r3, [r0, #4]
	ldrsh r2, [r1, #4]
	ldrsh r5, [r0]
	ldrsh r4, [r1]
	smulbb r1, lr, ip
	smulbb r0, r3, r2
	add r0, r0, #0x800
	smlabb r1, r5, r4, r1
	adds r2, r1, r0
	mov r0, r0, asr #0x1f
	adc r1, r0, r1, asr #31
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BD254

	arm_func_start sub_020BD298
sub_020BD298: ; 0x020BD298
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldmia r0, {r5, lr}
	ldr r6, [r1, #8]
	ldr r0, [r0, #8]
	ldmia r1, {r4, ip}
	smull r8, r7, lr, r6
	smull r3, r1, r0, ip
	subs r3, r8, r3
	sbc r1, r7, r1
	adds r3, r3, #0x800
	smull r8, r7, r0, r4
	smull r6, r0, r5, r6
	adc r1, r1, #0
	subs r6, r8, r6
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	sbc r7, r7, r0
	adds r0, r6, #0x800
	smull ip, r6, r5, ip
	adc r5, r7, #0
	smull r4, r1, lr, r4
	mov r7, r0, lsr #0xc
	subs r4, ip, r4
	sbc r0, r6, r1
	adds r1, r4, #0x800
	str r3, [r2, #0]
	orr r7, r7, r5, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	str r7, [r2, #4]
	orr r1, r1, r0, lsl #20
	str r1, [r2, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BD298

	arm_func_start sub_020BD31C
sub_020BD31C: ; 0x020BD31C
	stmfd sp!, {r4, r5, r6, lr}
	ldrsh r4, [r1, #4]
	ldrsh ip, [r0, #2]
	ldrsh lr, [r0]
	ldrsh r3, [r1, #2]
	ldrsh r6, [r0, #4]
	ldrsh r1, [r1]
	smulbb r5, ip, r4
	smulbb r0, r6, r3
	sub r0, r5, r0
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	smulbb r5, r6, r1
	smulbb r4, lr, r4
	sub r4, r5, r4
	add r4, r4, #0x800
	smulbb r3, lr, r3
	smulbb r1, ip, r1
	sub r1, r3, r1
	add r1, r1, #0x800
	strh r0, [r2]
	mov r0, r4, asr #0xc
	strh r0, [r2, #2]
	mov r0, r1, asr #0xc
	strh r0, [r2, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BD31C

	arm_func_start sub_020BD384
sub_020BD384: ; 0x020BD384
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	smull ip, r3, r1, r1
	smlal ip, r3, r2, r2
	ldr r0, [r0, #8]
	ldr r2, _020BD3DC ; =0x040002B0
	smlal ip, r3, r0, r0
	mov r1, #1
	mov r0, r3, lsl #2
	strh r1, [r2]
	mov r1, ip, lsl #2
	str r1, [r2, #8]
	orr r0, r0, ip, lsr #30
	str r0, [r2, #0xc]
_020BD3BC:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD3BC
	ldr r0, _020BD3E0 ; =0x040002B4
	ldr r0, [r0, #0]
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
	; .align 2, 0
_020BD3DC: .word 0x040002B0
_020BD3E0: .word 0x040002B4
	arm_func_end sub_020BD384

	arm_func_start sub_020BD3E4
sub_020BD3E4: ; 0x020BD3E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, [r0, #4]
	ldr r3, [r0, #0]
	smull r6, r5, r2, r2
	smlal r6, r5, r3, r3
	ldr r2, [r0, #8]
	ldr r4, _020BD4F0 ; =0x04000280
	smlal r6, r5, r2, r2
	mov r3, #2
	strh r3, [r4]
	mov r3, #0
	str r3, [r4, #0x10]
	mov r3, #0x1000000
	str r3, [r4, #0x14]
	str r6, [r4, #0x18]
	mov r2, r5, lsl #2
	str r5, [r4, #0x1c]
	mov r3, #1
	strh r3, [r4, #0x30]
	mov r3, r6, lsl #2
	str r3, [r4, #0x38]
	orr r2, r2, r6, lsr #30
	str r2, [r4, #0x3c]
_020BD440:
	ldrh r2, [r4, #0x30]
	tst r2, #0x8000
	bne _020BD440
	ldr r2, _020BD4F4 ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020BD458:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020BD458
	ldr sb, _020BD4F8 ; =0x040002A0
	ldr r5, [r0, #0]
	ldr r8, [sb]
	mov r7, ip, asr #0x1f
	umull r3, r2, r8, ip
	umull r6, lr, r3, r5
	mov r4, r5, asr #0x1f
	mla r2, r8, r7, r2
	ldr r7, [sb, #4]
	mla lr, r3, r4, lr
	mla r2, r7, ip, r2
	mla lr, r2, r5, lr
	adds r4, r6, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	str r4, [r1, #0]
	ldr ip, [r0, #4]
	umull r5, lr, r3, ip
	mov r4, ip, asr #0x1f
	mla lr, r3, r4, lr
	mla lr, r2, ip, lr
	adds r4, r5, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	str r4, [r1, #4]
	ldr ip, [r0, #8]
	umull r4, lr, r3, ip
	mov r0, ip, asr #0x1f
	mla lr, r3, r0, lr
	mla lr, r2, ip, lr
	adds r0, r4, #0
	adc r0, lr, #0x1000
	mov r0, r0, asr #0xd
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BD4F0: .word 0x04000280
_020BD4F4: .word 0x040002B4
_020BD4F8: .word 0x040002A0
	arm_func_end sub_020BD3E4

	arm_func_start sub_020BD4FC
sub_020BD4FC: ; 0x020BD4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrsh r5, [r0]
	ldrsh r2, [r0, #2]
	ldrsh r3, [r0, #4]
	ldr r4, _020BD61C ; =0x04000280
	smulbb r6, r2, r2
	smulbb r8, r5, r5
	mov r2, #2
	strh r2, [r4]
	mov r2, #0
	str r2, [r4, #0x10]
	mov r2, #0x1000000
	smulbb r3, r3, r3
	mov r5, r6, asr #0x1f
	adds r7, r8, r6
	adc r6, r5, r8, asr #31
	adds r5, r7, r3
	str r2, [r4, #0x14]
	adc r3, r6, r3, asr #31
	str r5, [r4, #0x18]
	mov r2, r3, lsl #2
	str r3, [r4, #0x1c]
	mov r3, #1
	strh r3, [r4, #0x30]
	mov r3, r5, lsl #2
	str r3, [r4, #0x38]
	orr r2, r2, r5, lsr #30
	str r2, [r4, #0x3c]
_020BD56C:
	ldrh r2, [r4, #0x30]
	tst r2, #0x8000
	bne _020BD56C
	ldr r2, _020BD620 ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020BD584:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020BD584
	ldr sb, _020BD624 ; =0x040002A0
	ldrsh r5, [r0]
	ldr r8, [sb]
	mov r7, ip, asr #0x1f
	umull r3, r2, r8, ip
	umull r6, lr, r3, r5
	mov r4, r5, asr #0x1f
	mla r2, r8, r7, r2
	ldr r7, [sb, #4]
	mla lr, r3, r4, lr
	mla r2, r7, ip, r2
	mla lr, r2, r5, lr
	adds r4, r6, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	strh r4, [r1]
	ldrsh ip, [r0, #2]
	umull r5, lr, r3, ip
	mov r4, ip, asr #0x1f
	mla lr, r3, r4, lr
	mla lr, r2, ip, lr
	adds r4, r5, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	strh r4, [r1, #2]
	ldrsh ip, [r0, #4]
	umull r4, lr, r3, ip
	mov r0, ip, asr #0x1f
	mla lr, r3, r0, lr
	mla lr, r2, ip, lr
	adds r0, r4, #0
	adc r0, lr, #0x1000
	mov r0, r0, asr #0xd
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BD61C: .word 0x04000280
_020BD620: .word 0x040002B4
_020BD624: .word 0x040002A0
	arm_func_end sub_020BD4FC

	arm_func_start sub_020BD628
sub_020BD628: ; 0x020BD628
	stmfd sp!, {r4, lr}
	ldr r4, [r1, #0]
	ldr lr, [r2]
	smull ip, r4, r0, r4
	mov ip, ip, lsr #0xc
	orr ip, ip, r4, lsl #20
	add r4, lr, ip
	str r4, [r3, #0]
	ldr ip, [r1, #4]
	ldr r4, [r2, #4]
	smull lr, ip, r0, ip
	mov lr, lr, lsr #0xc
	orr lr, lr, ip, lsl #20
	add r4, r4, lr
	str r4, [r3, #4]
	ldr r1, [r1, #8]
	ldr ip, [r2, #8]
	smull r2, r1, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r0, ip, r0
	str r0, [r3, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BD628