	.include "macros/function.inc"
	.include "overlay018/ov18_0222FEE8.inc"

	.extern Unk_ov18_022532D8

	.text


	arm_func_start ov18_0222FEE8
ov18_0222FEE8: ; 0x0222FEE8
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0x14
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x14
	bl ov18_02244194
	ldr r0, _0222FF20 ; =ov18_0222FF24
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222FF20: .word ov18_0222FF24
	arm_func_end ov18_0222FEE8

	arm_func_start ov18_0222FF24
ov18_0222FF24: ; 0x0222FF24
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	mov r1, r0
	bl ov18_0224641C
	mov r0, #1
	mov r1, #0
	bl ov18_0224641C
	mov r0, #1
	bl ov18_02243EA4
	mov r0, #0
	bl ov18_02243EA4
	bl ov18_0222BBAC
	bl ov18_0222B930
	ldr r0, _0222FF94 ; =0x022532D8
	ldr r0, [r0, #0]
	bl ov18_0222F88C
	bl ov18_0222F820
	bl ov18_0223DDB8
	bl ov18_0222F790
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222FF94: .word Unk_ov18_022532D8
	arm_func_end ov18_0222FF24