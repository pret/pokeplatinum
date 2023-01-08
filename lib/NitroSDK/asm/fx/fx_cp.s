	.include "macros/function.inc"
	.include "include/fx_cp.inc"

	

	.text


	arm_func_start FX_Div
FX_Div: ; 0x020BCFD0
	stmfd sp!, {r3, lr}
	bl FX_DivAsync
	bl FX_GetDivResult
	ldmia sp!, {r3, pc}
	arm_func_end FX_Div

	arm_func_start FX_Inv
FX_Inv: ; 0x020BCFE0
	stmfd sp!, {r3, lr}
	bl FX_InvAsync
	bl FX_GetDivResult
	ldmia sp!, {r3, pc}
	arm_func_end FX_Inv

	arm_func_start FX_Sqrt
FX_Sqrt: ; 0x020BCFF0
	stmfd sp!, {r3, lr}
	cmp r0, #0
	movle r0, #0
	ldmleia sp!, {r3, pc}
	ldr r2, _020BD020 ; =0x040002B0
	mov r1, #1
	strh r1, [r2]
	mov r1, #0
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	bl FX_GetSqrtResult
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BD020: .word 0x040002B0
	arm_func_end FX_Sqrt

	arm_func_start FX_GetDivResultFx64c
FX_GetDivResultFx64c: ; 0x020BD024
	ldr r1, _020BD040 ; =0x04000280
_020BD028:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD028
	ldr r1, _020BD044 ; =0x040002A0
	ldmia r1, {r0, r1}
	bx lr
	; .align 2, 0
_020BD040: .word 0x04000280
_020BD044: .word 0x040002A0
	arm_func_end FX_GetDivResultFx64c

	arm_func_start FX_GetDivResult
FX_GetDivResult: ; 0x020BD048
	ldr r1, _020BD078 ; =0x04000280
_020BD04C:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD04C
	ldr r0, _020BD07C ; =0x040002A0
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	adds r2, r1, #0x80000
	adc r1, r0, #0
	mov r0, r2, lsr #0x14
	orr r0, r0, r1, lsl #12
	bx lr
	; .align 2, 0
_020BD078: .word 0x04000280
_020BD07C: .word 0x040002A0
	arm_func_end FX_GetDivResult

	arm_func_start FX_InvAsync
FX_InvAsync: ; 0x020BD080
	ldr r2, _020BD0AC ; =0x04000280
	mov r1, #1
	strh r1, [r2]
	mov r1, #0
	str r1, [r2, #0x10]
	mov r1, #0x1000
	str r1, [r2, #0x14]
	str r0, [r2, #0x18]
	mov r0, #0
	str r0, [r2, #0x1c]
	bx lr
	; .align 2, 0
_020BD0AC: .word 0x04000280
	arm_func_end FX_InvAsync

	arm_func_start FX_GetSqrtResult
FX_GetSqrtResult: ; 0x020BD0B0
	ldr r1, _020BD0D4 ; =0x040002B0
_020BD0B4:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD0B4
	ldr r0, _020BD0D8 ; =0x040002B4
	ldr r0, [r0, #0]
	add r0, r0, #0x200
	mov r0, r0, lsr #0xa
	bx lr
	; .align 2, 0
_020BD0D4: .word 0x040002B0
_020BD0D8: .word 0x040002B4
	arm_func_end FX_GetSqrtResult

	arm_func_start FX_DivAsync
FX_DivAsync: ; 0x020BD0DC
	ldr r3, _020BD100 ; =0x04000280
	mov r2, #1
	strh r2, [r3]
	mov r2, #0
	str r2, [r3, #0x10]
	str r0, [r3, #0x14]
	str r1, [r3, #0x18]
	str r2, [r3, #0x1c]
	bx lr
	; .align 2, 0
_020BD100: .word 0x04000280
	arm_func_end FX_DivAsync

	arm_func_start FX_DivS32
FX_DivS32: ; 0x020BD104
	ldr r2, _020BD138 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	str r1, [r2, #0x18]
	mov r0, r3
	str r0, [r2, #0x1c]
_020BD120:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD120
	ldr r0, _020BD13C ; =0x040002A0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020BD138: .word 0x04000280
_020BD13C: .word 0x040002A0
	arm_func_end FX_DivS32

	arm_func_start FX_ModS32
FX_ModS32: ; 0x020BD140
	ldr r2, _020BD174 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	str r1, [r2, #0x18]
	mov r0, r3
	str r0, [r2, #0x1c]
_020BD15C:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD15C
	ldr r0, _020BD178 ; =0x040002A8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020BD174: .word 0x04000280
_020BD178: .word 0x040002A8
	arm_func_end FX_ModS32