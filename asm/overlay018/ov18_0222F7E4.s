	.include "macros/function.inc"
	.include "overlay018/ov18_0222F7E4.inc"

	

	.text


	arm_func_start ov18_0222F7E4
ov18_0222F7E4: ; 0x0222F7E4
	stmfd sp!, {r3, lr}
	mov r0, #0x64
	mov r1, #4
	bl ov18_02245068
	mov r1, r0
	ldr r3, _0222F81C ; =0x022532CC
	mov r0, #8
	mov r2, #0xc
	str r1, [r3, #0]
	bl ov18_02244008
	ldr r1, _0222F81C ; =0x022532CC
	ldr r1, [r1, #0]
	str r0, [r1, #0x60]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222F81C: .word Unk_ov18_022532CC
	arm_func_end ov18_0222F7E4

	arm_func_start ov18_0222F820
ov18_0222F820: ; 0x0222F820
	ldr ip, _0222F82C ; =ov18_0224508C
	ldr r0, _0222F830 ; =0x022532CC
	bx ip
	; .align 2, 0
_0222F82C: .word ov18_0224508C
_0222F830: .word Unk_ov18_022532CC
	arm_func_end ov18_0222F820

	arm_func_start ov18_0222F834
ov18_0222F834: ; 0x0222F834
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0222F888 ; =0x022532CC
	mov r5, r0
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x60]
	bl ov18_022440BC
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	mov r2, #4
	bl ov18_02243738
	add r2, r0, #0x20
	str r0, [r4, #8]
	add r0, r2, #0x10
	str r0, [r4, #0]
	ldr r1, [r2, #4]
	mov r0, r4
	add r1, r2, r1
	add r1, r1, #8
	str r1, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222F888: .word Unk_ov18_022532CC
	arm_func_end ov18_0222F834

	arm_func_start ov18_0222F88C
ov18_0222F88C: ; 0x0222F88C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl ov18_0224382C
	ldr r0, _0222F8B4 ; =0x022532CC
	mov r1, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x60]
	bl ov18_02244064
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222F8B4: .word Unk_ov18_022532CC
	arm_func_end ov18_0222F88C

	arm_func_start ov18_0222F8B8
ov18_0222F8B8: ; 0x0222F8B8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r2, r3}
	ldr r0, [r2, r1, lsl #2]
	add r0, r3, r0
	bx lr
	arm_func_end ov18_0222F8B8

	arm_func_start ov18_0222F8D0
ov18_0222F8D0: ; 0x0222F8D0
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {ip, lr}
	ldr r0, [ip, r1, lsl #2]
	cmp r2, #0
	add r0, lr, r0
	addge r3, r3, #0x30
	movge r1, r2, lsl #1
	strgeh r3, [r0, r1]
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222F8D0

	.bss


	.global Unk_ov18_022532CC
Unk_ov18_022532CC: ; 0x022532CC
	.space 0x4

