	.include "macros/function.inc"
	.include "overlay063/ov63_0222D160.inc"

	

	.text


	thumb_func_start ov63_0222D160
ov63_0222D160: ; 0x0222D160
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	bl ov63_0222C0FC
	add r3, sp, #0
	strh r0, [r3]
	lsr r0, r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3]
	mov r1, #6
	mov r2, #4
	strh r0, [r3, #4]
	ldrh r0, [r3, #2]
	strh r0, [r3, #6]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	sub r1, #0x60
	sub r2, #0x70
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov63_0222D1A8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D160

	thumb_func_start ov63_0222D19C
ov63_0222D19C: ; 0x0222D19C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov63_0222D19C

	thumb_func_start ov63_0222D1A8
ov63_0222D1A8: ; 0x0222D1A8
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222D1A8

	thumb_func_start ov63_0222D1B0
ov63_0222D1B0: ; 0x0222D1B0
	mov r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222D1B0

	thumb_func_start ov63_0222D1B8
ov63_0222D1B8: ; 0x0222D1B8
	mov r1, #2
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222D1B8