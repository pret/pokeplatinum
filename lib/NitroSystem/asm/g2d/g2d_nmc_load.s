	.include "macros/function.inc"
	.include "include/g2d_nmc_load.inc"

	

	.text


	arm_func_start NNS_G2dGetUnpackedMultiCellBank
NNS_G2dGetUnpackedMultiCellBank: ; 0x020A7038
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7070 ; =0x4D43424B
	bl NNS_G2dFindBinaryBlock
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl NNS_G2dUnpackNMC
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7070: .word 0x4D43424B
	arm_func_end NNS_G2dGetUnpackedMultiCellBank

	arm_func_start UnpackExtendedData_
UnpackExtendedData_: ; 0x020A7074
	ldr ip, _020A7080 ; =NNSi_G2dUnpackUserExCellAttrBank
	add r0, r0, #8
	bx ip
	; .align 2, 0
_020A7080: .word NNSi_G2dUnpackUserExCellAttrBank
	arm_func_end UnpackExtendedData_

	arm_func_start NNS_G2dUnpackNMC
NNS_G2dUnpackNMC: ; 0x020A7084
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #4]
	mov lr, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldrh r1, [r0]
	ldr r4, [r0, #4]
	cmp r1, #0
	bls _020A70E0
_020A70B4:
	add r3, r4, lr, lsl #3
	ldr ip, [r0, #8]
	ldr r2, [r3, #4]
	add r1, lr, #1
	add r2, ip, r2
	str r2, [r3, #4]
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov lr, r1, lsr #0x10
	cmp r2, r1, lsr #16
	bhi _020A70B4
_020A70E0:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	add r1, r1, r0
	str r1, [r0, #0x10]
	mov r0, r1
	bl UnpackExtendedData_
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dUnpackNMC

	arm_func_start NNS_G2dGetMultiCellDataByIdx
NNS_G2dGetMultiCellDataByIdx: ; 0x020A7100
	ldrh r2, [r0]
	cmp r1, r2
	ldrlo r0, [r0, #4]
	addlo r0, r0, r1, lsl #3
	movhs r0, #0
	bx lr
	arm_func_end NNS_G2dGetMultiCellDataByIdx