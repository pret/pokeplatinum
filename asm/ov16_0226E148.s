	.include "macros/function.inc"
	.include "include/ov16_0226E148.inc"

	

	.text


	thumb_func_start ov16_0226E148
ov16_0226E148: ; 0x0226E148
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #0xfa
	ldr r0, _0226E170 ; =ov16_0226E188
	add r1, r4, #0
	lsl r2, r2, #2
	str r5, [r4, #0]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_0226E170: .word ov16_0226E188
	thumb_func_end ov16_0226E148

	thumb_func_start ov16_0226E174
ov16_0226E174: ; 0x0226E174
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov16_0226E174

	thumb_func_start ov16_0226E188
ov16_0226E188: ; 0x0226E188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r5, r0, #0
	cmp r1, #4
	bhi _0226E252
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226E1AA: ; jump table
	.short _0226E1B4 - _0226E1AA - 2 ; case 0
	.short _0226E1FA - _0226E1AA - 2 ; case 1
	.short _0226E20E - _0226E1AA - 2 ; case 2
	.short _0226E234 - _0226E1AA - 2 ; case 3
	.short _0226E252 - _0226E1AA - 2 ; case 4
_0226E1B4:
	cmp r5, #0
	bne _0226E1BC
	bl sub_02022974
_0226E1BC:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0x12
	bl ov16_02268C04
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r7, #0
	bl sub_02006CA8
	mov r0, #4
	ldrsh r0, [r4, r0]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226E1FA:
	bl ov16_02269348
	cmp r0, #1
	bne _0226E252
	mov r0, #4
	ldrsh r0, [r4, r0]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226E20E:
	ldr r0, [r4, #0]
	bl ov16_0223F7A4
	cmp r0, #1
	bne _0226E252
	add r0, r5, #0
	bl ov16_0226925C
	cmp r0, #1
	bne _0226E252
	ldr r0, _0226E258 ; =0x000005DD
	bl sub_02005748
	mov r0, #4
	ldrsh r0, [r4, r0]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226E234:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	ble _0226E252
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223F720
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
_0226E252:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226E258: .word 0x000005DD
	thumb_func_end ov16_0226E188