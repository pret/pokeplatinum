	.include "macros/function.inc"

	

	.text


	arm_func_start ov4_022058A0
ov4_022058A0: ; 0x022058A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	movs lr, r3, lsr #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov ip, r3, lsr #0x11
_022058BC:
	mov r5, r4, lsl #1
	ldrsh r6, [r0, r5]
	ldrsh r5, [r1, r5]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _022058E0
	cmp r6, r3
	movlt r6, r3
_022058E0:
	mov r5, r4, lsl #1
	strh r6, [r2, r5]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #2]
	ldrsh r5, [r5, #2]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02205910
	cmp r6, r3
	movlt r6, r3
_02205910:
	add r5, r2, r4, lsl #1
	strh r6, [r5, #2]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #4]
	ldrsh r5, [r5, #4]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02205940
	cmp r6, r3
	movlt r6, r3
_02205940:
	add r5, r2, r4, lsl #1
	strh r6, [r5, #4]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #6]
	ldrsh r5, [r5, #6]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02205970
	cmp r6, r3
	movlt r6, r3
_02205970:
	add r5, r2, r4, lsl #1
	add r4, r4, #4
	strh r6, [r5, #6]
	cmp r4, lr
	blo _022058BC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_022058A0