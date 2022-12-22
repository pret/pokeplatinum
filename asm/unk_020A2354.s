	.include "macros/function.inc"
	.include "include/unk_020A2354.inc"

	

	.text


	arm_func_start sub_020A2354
sub_020A2354: ; 0x020A2354
	stmfd sp!, {r4, lr}
	ldr ip, _020A23A4 ; =0x021C3A38
	ldr r2, _020A23A8 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _020A23AC ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0, #0]
	ldr r4, [ip]
	mov lr, #0
	mla r2, r4, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #4]
	str lr, [r0, #8]
	bl VEC_Normalize
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A23A4: .word 0x021C3A38
_020A23A8: .word 0x5EEDF715
_020A23AC: .word 0x1B0CB173
	arm_func_end sub_020A2354

	arm_func_start sub_020A23B0
sub_020A23B0: ; 0x020A23B0
	stmfd sp!, {r4, lr}
	ldr ip, _020A240C ; =0x021C3A38
	ldr r2, _020A2410 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _020A2414 ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0, #0]
	ldr lr, [ip]
	mla r4, lr, r2, r3
	str r4, [ip]
	mov lr, r4, asr #8
	str lr, [r0, #4]
	ldr lr, [ip]
	mla r2, lr, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #8]
	bl VEC_Normalize
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A240C: .word 0x021C3A38
_020A2410: .word 0x5EEDF715
_020A2414: .word 0x1B0CB173
	arm_func_end sub_020A23B0

	.bss


	.global Unk_021C3A38
Unk_021C3A38: ; 0x021C3A38
	.space 0x4

