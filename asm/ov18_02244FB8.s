	.include "macros/function.inc"
	.include "include/ov18_02244FB8.inc"

	

	.text


	arm_func_start ov18_02244FB8
ov18_02244FB8: ; 0x02244FB8
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x40000
	bl sub_020C4CF4
	mov r0, r4
	mov r1, #0x40000
	mov r2, #0
	bl sub_020A5404
	ldr r1, _02244FF4 ; =0x022533C4
	cmp r0, #0
	str r0, [r1, #0]
	ldmneia sp!, {r4, pc}
	bl sub_020C42A8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02244FF4: .word 0x022533C4
	arm_func_end ov18_02244FB8

	arm_func_start ov18_02244FF8
ov18_02244FF8: ; 0x02244FF8
	stmfd sp!, {r3, lr}
	ldr r0, _02245018 ; =0x022533C4
	ldr r0, [r0, #0]
	bl sub_020A543C
	ldr r0, _02245018 ; =0x022533C4
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245018: .word 0x022533C4
	arm_func_end ov18_02244FF8

	arm_func_start ov18_0224501C
ov18_0224501C: ; 0x0224501C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, r1
	bl sub_020C164C
	ldr r1, _02245064 ; =0x022533C4
	mov r5, r0
	ldr r0, [r1, #0]
	mov r1, r6
	mov r2, r4
	bl sub_020A5448
	movs r4, r0
	bne _02245054
	bl sub_020C42A8
_02245054:
	mov r0, r5
	bl sub_020C161C
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02245064: .word 0x022533C4
	arm_func_end ov18_0224501C

	arm_func_start ov18_02245068
ov18_02245068: ; 0x02245068
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0224501C
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl sub_020C4CF4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02245068

	arm_func_start ov18_0224508C
ov18_0224508C: ; 0x0224508C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl sub_020C164C
	ldr r1, [r5, #0]
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _022450CC ; =0x022533C4
	ldr r0, [r0, #0]
	bl sub_020A55D8
	mov r0, r4
	bl sub_020C161C
	mov r0, #0
	str r0, [r5, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022450CC: .word 0x022533C4
	arm_func_end ov18_0224508C

	arm_func_start ov18_022450D0
ov18_022450D0: ; 0x022450D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl sub_020C164C
	mov r4, r0
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02245108 ; =0x022533C4
	mov r1, r5
	ldr r0, [r0, #0]
	bl sub_020A55D8
	mov r0, r4
	bl sub_020C161C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02245108: .word 0x022533C4
	arm_func_end ov18_022450D0

	.bss


	.global Unk_ov18_022533C4
Unk_ov18_022533C4: ; 0x022533C4
	.space 0x4

