	.include "macros/function.inc"
	.include "include/ov18_022243B0.inc"

	

	.text


	arm_func_start ov18_022243B0
ov18_022243B0: ; 0x022243B0
	stmfd sp!, {r3, lr}
	ldr r2, _022243DC ; =0x02250D64
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r2, #8]
	bl sub_020E1F6C
	ldr r1, _022243DC ; =0x02250D64
	mov r2, #0x1e
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022243DC: .word 0x02250D64
	arm_func_end ov18_022243B0

	arm_func_start ov18_022243E0
ov18_022243E0: ; 0x022243E0
	ldr r3, _022243F8 ; =0x02250D64
	ldr ip, _022243FC ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x21c
	str r0, [r3, #4]
	bx ip
	; .align 2, 0
_022243F8: .word 0x02250D64
_022243FC: .word sub_020C4CF4
	arm_func_end ov18_022243E0

	arm_func_start ov18_02224400
ov18_02224400: ; 0x02224400
	stmfd sp!, {r4, lr}
	ldr r1, _02224440 ; =0x02250D64
	ldr r1, [r1, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	sub r4, r0, #1
	add r0, r1, r4, lsl #5
	mov r1, #0
	mov r2, #0x1e
	bl sub_020C4CF4
	ldr r0, _02224440 ; =0x02250D64
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x1e0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224440: .word 0x02250D64
	arm_func_end ov18_02224400

	arm_func_start ov18_02224444
ov18_02224444: ; 0x02224444
	ldrb r2, [r0]
	mov r3, r1
	add r3, r3, #1
	strb r2, [r1]
	ldrb r1, [r0]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022244B8
_02224464: ; jump table
	b _022244B8 ; case 0
	b _022244C0 ; case 1
	b _022244C0 ; case 2
	b _022244C0 ; case 3
	b _02224480 ; case 4
	b _022244C0 ; case 5
	b _022244C0 ; case 6
_02224480:
	ldrh r1, [r0, #2]
	strb r1, [r3]
	ldrh r1, [r0, #2]
	and r1, r1, #0xff00
	mov r1, r1, asr #8
	strb r1, [r3, #1]
	ldrh r1, [r0, #4]
	strb r1, [r3, #2]
	ldrh r0, [r0, #4]
	and r0, r0, #0xff00
	mov r0, r0, asr #8
	strb r0, [r3, #3]
	add r3, r3, #4
	b _022244C0
_022244B8:
	mov r0, #0
	bx lr
_022244C0:
	mov r0, r3
	bx lr
	arm_func_end ov18_02224444

	arm_func_start ov18_022244C8
ov18_022244C8: ; 0x022244C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6]
	mov r5, r1
	mov r4, r2
	strb r0, [r5]
	cmp r0, #7
	beq _022244FC
	cmp r0, #8
	beq _02224560
	cmp r0, #9
	beq _02224588
	b _022245D0
_022244FC:
	mov r0, r4
	bl ov18_02224670
	cmp r0, #0
	beq _02224520
	ldr r0, _022245E0 ; =0x02250D64
	sub r1, r4, #1
	ldr r0, [r0, #4]
	add r0, r0, r1, lsl #5
	ldmia sp!, {r4, r5, r6, pc}
_02224520:
	ldrb r2, [r6, #1]
	ldr r0, _022245E0 ; =0x02250D64
	strb r2, [r5, #2]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	ldr r2, [r0, #8]
	add r0, r6, #2
	add r1, r5, #3
	bl sub_020C4DB0
	mov r0, r5
	mov r1, r4
	bl ov18_022245E4
	mov r4, r0
	b _022245D8
_02224560:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	strh r0, [r5, #2]
	ldrb r0, [r6, #2]
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [r5, #2]
	b _022245D8
_02224588:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	ldr r1, _022245E0 ; =0x02250D64
	strh r0, [r5, #2]
	ldrb r2, [r6, #2]
	ldrh r3, [r5, #2]
	mov r0, r4
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r5, #2]
	ldr r2, [r1, #8]
	add r1, r5, #4
	bl sub_020C4DB0
	ldr r0, _022245E0 ; =0x02250D64
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _022245D8
_022245D0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_022245D8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022245E0: .word 0x02250D64
	arm_func_end ov18_022244C8

	arm_func_start ov18_022245E4
ov18_022245E4: ; 0x022245E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0222466C ; =0x02250D64
	mov r6, r1
	ldr r3, [r2, #4]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r5, [r0, #2]
	ldr r1, [r2, #0xc]
	cmp r5, r1
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	sub r4, r6, #1
	ldr r2, [r2, #8]
	add r1, r3, r4, lsl #5
	mla r1, r5, r2, r1
	add r0, r0, #3
	bl sub_020C4DB0
	ldr r0, _0222466C ; =0x02250D64
	mov r1, #1
	ldr r2, [r0, #4]
	mov r0, r6
	add r3, r2, #0x1e0
	ldr r2, [r3, r4, lsl #2]
	orr r1, r2, r1, lsl r5
	str r1, [r3, r4, lsl #2]
	bl ov18_02224670
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _0222466C ; =0x02250D64
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222466C: .word 0x02250D64
	arm_func_end ov18_022245E4

	arm_func_start ov18_02224670
ov18_02224670: ; 0x02224670
	ldr r1, _022246C0 ; =0x02250D64
	mov r2, #0
	ldr ip, [r1, #0xc]
	cmp ip, #0
	ble _022246B8
	ldr r1, [r1, #4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x1e0]
	mov r1, #1
_02224698:
	tst r3, r1, lsl r2
	moveq r0, #0
	bxeq lr
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	cmp ip, r0, lsr #16
	mov r2, r0, lsr #0x10
	bgt _02224698
_022246B8:
	mov r0, #1
	bx lr
	; .align 2, 0
_022246C0: .word 0x02250D64
	arm_func_end ov18_02224670

	.bss


	.global Unk_ov18_02250D64
Unk_ov18_02250D64: ; 0x02250D64
	.space 0x4

	.global Unk_ov18_02250D68
Unk_ov18_02250D68: ; 0x02250D68
	.space 0x4

	.global Unk_ov18_02250D6C
Unk_ov18_02250D6C: ; 0x02250D6C
	.space 0xC

