	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov116_02262A44
ov116_02262A44: ; 0x02262A44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x6a
	mov r1, #0x10
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_02262A58:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02262A58
	mov r1, #0x4b
	str r5, [r0, #4]
	lsl r1, r1, #4
	strh r1, [r0, #8]
	str r4, [r0, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_02262A44

	thumb_func_start ov116_02262A6C
ov116_02262A6C: ; 0x02262A6C
	ldr r3, _02262A70 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02262A70: .word sub_020181C4
	thumb_func_end ov116_02262A6C

	thumb_func_start ov116_02262A74
ov116_02262A74: ; 0x02262A74
	mov r1, #8
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0, #8]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _02262A86
	mov r0, #1
	bx lr
_02262A86:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02262A74