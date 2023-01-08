	.include "macros/function.inc"
	.include "include/g2d_ncl_load.inc"

	

	.text


	arm_func_start NNS_G2dGetUnpackedPaletteData
NNS_G2dGetUnpackedPaletteData: ; 0x020A71B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A71E8 ; =0x504C5454
	bl NNS_G2dFindBinaryBlock
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl NNS_G2dUnpackNCL
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A71E8: .word 0x504C5454
	arm_func_end NNS_G2dGetUnpackedPaletteData

	arm_func_start NNS_G2dGetUnpackedPaletteCompressInfo
NNS_G2dGetUnpackedPaletteCompressInfo: ; 0x020A71EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7224 ; =0x50434D50
	bl NNS_G2dFindBinaryBlock
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl NNSi_G2dUnpackNCLCmpInfo
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7224: .word 0x50434D50
	arm_func_end NNS_G2dGetUnpackedPaletteCompressInfo

	arm_func_start NNSi_G2dUnpackNCLCmpInfo
NNSi_G2dUnpackNCLCmpInfo: ; 0x020A7228
	ldr r1, [r0, #4]
	add r1, r1, r0
	str r1, [r0, #4]
	bx lr
	arm_func_end NNSi_G2dUnpackNCLCmpInfo

	arm_func_start NNS_G2dUnpackNCL
NNS_G2dUnpackNCL: ; 0x020A7238
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	bx lr
	arm_func_end NNS_G2dUnpackNCL