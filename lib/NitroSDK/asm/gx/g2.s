	.include "macros/function.inc"

	

	.text


	arm_func_start G2x_SetBGyAffine_
G2x_SetBGyAffine_: ; 0x020BF4AC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r1, #4]
	ldr r5, [r1, #0]
	mov ip, r4, lsl #0xc
	mov r4, ip, asr #0x10
	mov ip, r5, lsl #0xc
	mov lr, r4, lsl #0x10
	mov r5, ip, asr #0x10
	mov r4, lr, lsr #0x10
	mov ip, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r4, r4, ip, lsr #16
	str r4, [r0, #0]
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #8]
	mov ip, r4, lsl #0xc
	mov r4, ip, asr #0x10
	mov ip, r5, lsl #0xc
	mov lr, r4, lsl #0x10
	mov r6, ip, asr #0x10
	mov r5, lr, lsr #0x10
	ldr r4, [sp, #0x14]
	mov ip, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r5, r5, ip, lsr #16
	str r5, [r0, #4]
	ldr r6, [sp, #0x10]
	ldr ip, [r1, #4]
	sub r5, r4, r3
	ldr r4, [r1, #0xc]
	mul lr, ip, r5
	mul r5, r4, r5
	ldr ip, [r1]
	sub r6, r6, r2
	ldr r4, [r1, #8]
	mla r1, ip, r6, lr
	mla r5, r4, r6, r5
	add r1, r1, r2, lsl #12
	add r2, r5, r3, lsl #12
	mov r1, r1, asr #4
	str r1, [r0, #8]
	mov r1, r2, asr #4
	str r1, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end G2x_SetBGyAffine_

	arm_func_start G2x_SetBlendAlpha_
G2x_SetBlendAlpha_: ; 0x020BF55C
	ldr ip, [sp]
	orr r1, r1, #0x40
	orr r2, r1, r2, lsl #8
	orr r1, r3, ip, lsl #8
	orr r1, r2, r1, lsl #16
	str r1, [r0, #0]
	bx lr
	arm_func_end G2x_SetBlendAlpha_

	arm_func_start G2x_SetBlendBrightness_
G2x_SetBlendBrightness_: ; 0x020BF578
	cmp r2, #0
	orrge r1, r1, #0x80
	strgeh r1, [r0]
	strgeh r2, [r0, #4]
	bxge lr
	orr r1, r1, #0xc0
	strh r1, [r0]
	rsb r1, r2, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end G2x_SetBlendBrightness_

	arm_func_start G2x_SetBlendBrightnessExt_
G2x_SetBlendBrightnessExt_: ; 0x020BF5A0
	stmfd sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr ip, [sp, #0xc]
	orr r3, r3, lr, lsl #8
	strh r3, [r0, #2]
	cmp ip, #0
	bge _020BF5D4
	orr r1, r1, #0xc0
	orr r1, r1, r2, lsl #8
	strh r1, [r0]
	rsb r1, ip, #0
	strh r1, [r0, #4]
	ldmia sp!, {r3, pc}
_020BF5D4:
	orr r1, r1, #0x80
	orr r1, r1, r2, lsl #8
	strh r1, [r0]
	strh ip, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end G2x_SetBlendBrightnessExt_

	arm_func_start G2x_ChangeBlendBrightness_
G2x_ChangeBlendBrightness_: ; 0x020BF5E8
	ldrh r3, [r0]
	cmp r1, #0
	and r2, r3, #0xc0
	bge _020BF614
	cmp r2, #0x80
	biceq r2, r3, #0xc0
	orreq r2, r2, #0xc0
	streqh r2, [r0]
	rsb r1, r1, #0
	strh r1, [r0, #4]
	bx lr
_020BF614:
	cmp r2, #0xc0
	biceq r2, r3, #0xc0
	orreq r2, r2, #0x80
	streqh r2, [r0]
	strh r1, [r0, #4]
	bx lr
	arm_func_end G2x_ChangeBlendBrightness_