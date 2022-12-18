	.include "macros/function.inc"
	.include "include/ov18_02245A44.inc"

	

	.text


	arm_func_start ov18_02245A44
ov18_02245A44: ; 0x02245A44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _02245AD4 ; =0x0000080C
	mov r1, #4
	bl ov18_02245068
	mov r1, r0
	ldr r3, _02245AD8 ; =0x022533E8
	mov r0, #0x200
	mov r2, #0x800
	str r1, [r3, #0]
	bl sub_020C4BB8
	mov r5, #0
	ldr r7, _02245AD8 ; =0x022533E8
	mov r6, r5
	mov r4, #0x40
	mov r8, #8
_02245A80:
	ldr r1, [r7, #0]
	mov r0, r4
	mov r2, r8
	add r1, r1, r6
	bl ov18_02244008
	ldr r1, [r7, #0]
	add r6, r6, #0x400
	add r1, r1, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x800]
	cmp r5, #2
	blt _02245A80
	ldr r1, _02245ADC ; =ov18_02245AE0
	mov r0, #1
	mov r2, #0
	mov r3, #0xc8
	bl ov18_02246304
	ldr r1, _02245AD8 ; =0x022533E8
	ldr r1, [r1, #0]
	str r0, [r1, #0x808]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02245AD4: .word 0x0000080C
_02245AD8: .word 0x022533E8
_02245ADC: .word ov18_02245AE0
	arm_func_end ov18_02245A44

	arm_func_start ov18_02245AE0
ov18_02245AE0: ; 0x02245AE0
	stmfd sp!, {r3, lr}
	ldr r0, _02245B24 ; =0x022533E8
	mov r1, #0x800
	ldr r0, [r0, #0]
	bl sub_020C2C54
	ldr r0, _02245B24 ; =0x022533E8
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x400
	bl sub_020C0210
	ldr r0, _02245B24 ; =0x022533E8
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x400
	add r0, r0, #0x400
	bl sub_020C0264
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245B24: .word 0x022533E8
	arm_func_end ov18_02245AE0

	arm_func_start ov18_02245B28
ov18_02245B28: ; 0x02245B28
	stmfd sp!, {r3, lr}
	ldr r1, _02245B4C ; =0x022533E8
	mov r0, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x808]
	bl ov18_022463CC
	ldr r0, _02245B50 ; =0x022533E8
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245B4C: .word 0x022533E8
_02245B50: .word 0x022533E8
	arm_func_end ov18_02245B28

	arm_func_start ov18_02245B54
ov18_02245B54: ; 0x02245B54
	ldr r1, _02245B6C ; =0x022533E8
	ldr ip, _02245B70 ; =ov18_022440BC
	ldr r1, [r1, #0]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x800]
	bx ip
	; .align 2, 0
_02245B6C: .word 0x022533E8
_02245B70: .word ov18_022440BC
	arm_func_end ov18_02245B54

	arm_func_start ov18_02245B74
ov18_02245B74: ; 0x02245B74
	mov r1, r0
	ldr r3, [r1, #0]
	ldr r0, _02245BB4 ; =0xC1FFFCFF
	ldr r2, _02245BB8 ; =0x022533E8
	and r0, r3, r0
	orr r0, r0, #0x200
	str r0, [r1, #0]
	ldr r3, [r2, #0]
	mov r2, #0
	add r0, r3, #0x400
	cmp r1, r0
	movhs r2, #1
	add r0, r3, r2, lsl #2
	ldr ip, _02245BBC ; =ov18_02244064
	ldr r0, [r0, #0x800]
	bx ip
	; .align 2, 0
_02245BB4: .word 0xC1FFFCFF
_02245BB8: .word 0x022533E8
_02245BBC: .word ov18_02244064
	arm_func_end ov18_02245B74

	arm_func_start ov18_02245BC0
ov18_02245BC0: ; 0x02245BC0
	ldr r2, _02245BD4 ; =0x022533E8
	ldr r2, [r2, #0]
	add r0, r2, r0, lsl #10
	add r0, r0, r1, lsl #3
	bx lr
	; .align 2, 0
_02245BD4: .word 0x022533E8
	arm_func_end ov18_02245BC0

	.bss


	.global Unk_ov18_022533E8
Unk_ov18_022533E8: ; 0x022533E8
	.space 0x4

