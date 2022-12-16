	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov22_0225894C
ov22_0225894C: ; 0x0225894C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	mov r4, #0
	add r5, r7, #0
_02258956:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D94
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #0x64
	blt _02258956
	mov r0, #0x19
	mov r3, #0
	add r2, r7, #0
	mov r1, #0x12
	lsl r0, r0, #4
_02258970:
	add r3, r3, #1
	str r1, [r2, r0]
	add r2, r2, #4
	cmp r3, #0x12
	blt _02258970
	mov r5, #0x19
	mov r4, #0
	lsl r5, r5, #4
_02258980:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02258992
	lsl r0, r0, #2
	add r0, r7, r0
	str r4, [r0, r5]
_02258992:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02258980
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225894C

	thumb_func_start ov22_0225899C
ov22_0225899C: ; 0x0225899C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x64
	blo _022589AA
	bl sub_02022974
_022589AA:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225899C

	thumb_func_start ov22_022589B0
ov22_022589B0: ; 0x022589B0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov22_022589B0

	thumb_func_start ov22_022589BC
ov22_022589BC: ; 0x022589BC
	push {r3, r4}
	mov r2, #0x19
	mov r4, #0
	lsl r2, r2, #4
_022589C4:
	ldr r3, [r0, r2]
	cmp r1, r3
	bne _022589D0
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_022589D0:
	add r4, r4, #1
	add r0, r0, #4
	cmp r4, #0x12
	blt _022589C4
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_022589BC