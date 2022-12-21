	.include "macros/function.inc"
	.include "include/unk_020E2980.inc"

	

	.text


	arm_func_start sub_020E2980
sub_020E2980: ; 0x020E2980
	stmfd sp!, {r4, lr}
	ldrsb r2, [r0]
	tst r2, #1
	bne _020E29A0
	mov r2, r2, asr #1
	str r2, [r1, #0]
	add r0, r0, #1
	ldmia sp!, {r4, pc}
_020E29A0:
	tst r2, #2
	ldrb r4, [r0, #1]
	bne _020E29C0
	mov r2, r2, asr #2
	orr r2, r4, r2, lsl #8
	str r2, [r1, #0]
	add r0, r0, #2
	ldmia sp!, {r4, pc}
_020E29C0:
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _020E29E8
	mov r3, r2, asr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1, #0]
	add r0, r0, #3
	ldmia sp!, {r4, pc}
_020E29E8:
	ldrb ip, [r0, #3]
	mov r3, r2, asr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, ip, r2
	str r2, [r1, #0]
	add r0, r0, #4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E2980

	arm_func_start sub_020E2A0C
sub_020E2A0C: ; 0x020E2A0C
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	tst r2, #1
	bne _020E2A2C
	mov r2, r2, lsr #1
	str r2, [r1, #0]
	add r0, r0, #1
	ldmia sp!, {r4, pc}
_020E2A2C:
	tst r2, #2
	ldrb r4, [r0, #1]
	bne _020E2A4C
	mov r2, r2, lsr #2
	orr r2, r4, r2, lsl #8
	str r2, [r1, #0]
	add r0, r0, #2
	ldmia sp!, {r4, pc}
_020E2A4C:
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _020E2A74
	mov r3, r2, lsr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1, #0]
	add r0, r0, #3
	ldmia sp!, {r4, pc}
_020E2A74:
	ldrb ip, [r0, #3]
	mov r3, r2, lsr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, ip, r2
	str r2, [r1, #0]
	add r0, r0, #4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E2A0C