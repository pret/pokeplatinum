	.include "macros/function.inc"
	.include "include/unk_020B2CB4.inc"

	

	.text


	arm_func_start NNS_G3dAllocAnmObj
NNS_G3dAllocAnmObj: ; 0x020B2CB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl NNS_G3dAnmObjCalcSizeRequired
	mov r1, r0
	mov r0, r4
	bl NNS_FndAllocFromAllocator
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G3dAllocAnmObj

	arm_func_start NNS_G3dFreeAnmObj
NNS_G3dFreeAnmObj: ; 0x020B2CD8
	ldr ip, _020B2CE0 ; =NNS_FndFreeToAllocator
	bx ip
	; .align 2, 0
_020B2CE0: .word NNS_FndFreeToAllocator
	arm_func_end NNS_G3dFreeAnmObj