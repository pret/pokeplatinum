	.include "macros/function.inc"
	.include "include/unk_02038ED4.inc"

	

	.text


	thumb_func_start sub_02038ED4
sub_02038ED4: ; 0x02038ED4
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038ED4

	thumb_func_start sub_02038EDC
sub_02038EDC: ; 0x02038EDC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #6
	bhi _02038F88
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02038EF6: ; jump table
	.short _02038F04 - _02038EF6 - 2 ; case 0
	.short _02038F10 - _02038EF6 - 2 ; case 1
	.short _02038F28 - _02038EF6 - 2 ; case 2
	.short _02038F4E - _02038EF6 - 2 ; case 3
	.short _02038F5E - _02038EF6 - 2 ; case 4
	.short _02038F7E - _02038EF6 - 2 ; case 5
	.short _02038F84 - _02038EF6 - 2 ; case 6
_02038F04:
	mov r0, #0x6f
	bl sub_020364F0
	mov r0, #1
	str r0, [r4, #0]
	b _02038F88
_02038F10:
	mov r0, #0x6f
	bl sub_02036540
	cmp r0, #0
	beq _02038F88
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02024814
	mov r0, #2
	str r0, [r4, #0]
	b _02038F88
_02038F28:
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #2
	bne _02038F36
	bl sub_02022974
_02038F36:
	cmp r5, #3
	bne _02038F3E
	bl sub_02022974
_02038F3E:
	cmp r5, #1
	bne _02038F88
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #0x70
	bl sub_020364F0
	b _02038F88
_02038F4E:
	mov r0, #0x70
	bl sub_02036540
	cmp r0, #0
	beq _02038F88
	mov r0, #4
	str r0, [r4, #0]
	b _02038F88
_02038F5E:
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #3
	bne _02038F6C
	bl sub_02022974
_02038F6C:
	cmp r5, #1
	bne _02038F74
	bl sub_02022974
_02038F74:
	cmp r5, #2
	bne _02038F88
	mov r0, #5
	str r0, [r4, #0]
	b _02038F88
_02038F7E:
	mov r0, #6
	str r0, [r4, #0]
	b _02038F88
_02038F84:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02038F88:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02038EDC