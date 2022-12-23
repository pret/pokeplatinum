	.include "macros/function.inc"
	.include "overlay006/ov6_02242F74.inc"

	

	.text


	thumb_func_start ov6_02242F74
ov6_02242F74: ; 0x02242F74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ov6_02242FC0
	add r7, r0, #0
	cmp r4, #0
	beq _02242F8C
	mov r1, #9
	b _02242F8E
_02242F8C:
	mov r1, #0xa
_02242F8E:
	mov r0, #0x6a
	mov r2, #4
	bl sub_02006ADC
	lsl r1, r7, #2
	add r1, r7, r1
	add r3, r5, #0
	asr r3, r1
	mov r2, #0x1f
	add r1, r3, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, [r0, r2]
	str r1, [r6, #0]
	ldr r2, [r0, r2]
	ldr r1, [sp, #0x18]
	str r2, [r1, #0]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242F74

	thumb_func_start ov6_02242FC0
ov6_02242FC0: ; 0x02242FC0
	push {r4, lr}
	mov r1, #0x7e
	lsl r1, r1, #2
	sub r0, r0, r1
	mov r4, #0
	cmp r0, #5
	bhi _02242FFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242FDA: ; jump table
	.short _02242FE6 - _02242FDA - 2 ; case 0
	.short _02242FE8 - _02242FDA - 2 ; case 1
	.short _02242FEC - _02242FDA - 2 ; case 2
	.short _02242FF0 - _02242FDA - 2 ; case 3
	.short _02242FF4 - _02242FDA - 2 ; case 4
	.short _02242FF8 - _02242FDA - 2 ; case 5
_02242FE6:
	b _02243000
_02242FE8:
	mov r4, #1
	b _02243000
_02242FEC:
	mov r4, #2
	b _02243000
_02242FF0:
	mov r4, #3
	b _02243000
_02242FF4:
	mov r4, #4
	b _02243000
_02242FF8:
	mov r4, #5
	b _02243000
_02242FFC:
	bl GF_AssertFail
_02243000:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov6_02242FC0