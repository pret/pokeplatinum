	.include "macros/function.inc"
	.include "include/g2d_node.inc"

	

	.text


	arm_func_start NNSi_G2dInitializeNode
NNSi_G2dInitializeNode: ; 0x020A8B74
	mov r2, #0
	str r2, [r0, #0]
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	ldr ip, _020A8B94 ; =NNSi_G2dSrtcInitControl
	add r0, r0, #0xc
	bx ip
	; .align 2, 0
_020A8B94: .word NNSi_G2dSrtcInitControl
	arm_func_end NNSi_G2dInitializeNode