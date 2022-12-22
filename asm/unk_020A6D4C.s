	.include "macros/function.inc"
	.include "include/unk_020A6D4C.inc"

	

	.text


	arm_func_start GetUnpackedAnimBankImpl_
GetUnpackedAnimBankImpl_: ; 0x020A6D4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A6D84 ; =0x41424E4B
	bl NNS_G2dFindBinaryBlock
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl NNS_G2dUnpackNAN
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6D84: .word 0x41424E4B
	arm_func_end GetUnpackedAnimBankImpl_

	arm_func_start NNS_G2dGetUnpackedAnimBank
NNS_G2dGetUnpackedAnimBank: ; 0x020A6D88
	ldr ip, _020A6D90 ; =GetUnpackedAnimBankImpl_
	bx ip
	; .align 2, 0
_020A6D90: .word GetUnpackedAnimBankImpl_
	arm_func_end NNS_G2dGetUnpackedAnimBank

	arm_func_start NNS_G2dGetUnpackedMCAnimBank
NNS_G2dGetUnpackedMCAnimBank: ; 0x020A6D94
	ldr ip, _020A6D9C ; =GetUnpackedAnimBankImpl_
	bx ip
	; .align 2, 0
_020A6D9C: .word GetUnpackedAnimBankImpl_
	arm_func_end NNS_G2dGetUnpackedMCAnimBank

	arm_func_start NNS_G2dUnpackNAN
NNS_G2dUnpackNAN: ; 0x020A6DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, [r0, #4]
	mov ip, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	add r6, r1, r0
	str r6, [r0, #0xc]
	ldrh r1, [r0]
	ldmib r0, {r4, r5}
	cmp r1, #0
	bls _020A6E44
	mov r1, ip
_020A6DE0:
	add r2, r4, ip, lsl #4
	ldr r7, [r2, #0xc]
	mov r3, ip, lsl #4
	add r7, r5, r7
	str r7, [r2, #0xc]
	ldrh r7, [r4, r3]
	mov lr, r1
	cmp r7, #0
	bls _020A6E2C
_020A6E04:
	ldr sb, [r2, #0xc]
	add r7, lr, #1
	ldr r8, [sb, lr, lsl #3]
	mov r7, r7, lsl #0x10
	add r8, r6, r8
	str r8, [sb, lr, lsl #3]
	ldrh r8, [r4, r3]
	mov lr, r7, lsr #0x10
	cmp r8, r7, lsr #16
	bhi _020A6E04
_020A6E2C:
	ldrh r3, [r0]
	add r2, ip, #1
	mov r2, r2, lsl #0x10
	cmp r3, r2, lsr #16
	mov ip, r2, lsr #0x10
	bhi _020A6DE0
_020A6E44:
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r2, r1, r0
	str r2, [r0, #0x14]
	add r4, r2, #8
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r4, #4]
	ldrh r1, [r2, #8]
	cmp r1, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r3, r0
	mov r7, r0
_020A6E80:
	ldr r6, [r4, #4]
	mov r1, r7
	add r2, r6, r3
	ldr r5, [r2, #4]
	add r5, r5, r4
	str r5, [r2, #4]
	ldr r5, [r2, #8]
	add r5, r5, r4
	str r5, [r2, #8]
	ldrh r5, [r6, r3]
	cmp r5, #0
	bls _020A6ED8
	mov r8, r7
_020A6EB4:
	ldr r6, [r2, #8]
	add r1, r1, #1
	ldr r5, [r6, r8]
	add r5, r5, r4
	str r5, [r6, r8]
	ldrh r5, [r2]
	add r8, r8, #4
	cmp r1, r5
	blo _020A6EB4
_020A6ED8:
	ldrh r1, [r4]
	add r0, r0, #1
	add r3, r3, #0xc
	cmp r0, r1
	blo _020A6E80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end NNS_G2dUnpackNAN

	arm_func_start NNS_G2dGetAnimSequenceByIdx
NNS_G2dGetAnimSequenceByIdx: ; 0x020A6EF0
	ldrh r2, [r0]
	cmp r2, r1
	ldrhi r0, [r0, #4]
	addhi r0, r0, r1, lsl #4
	movls r0, #0
	bx lr
	arm_func_end NNS_G2dGetAnimSequenceByIdx