	.include "macros/function.inc"
	.include "include/ov5_021EF4BC.inc"

	

	.text


	thumb_func_start ov5_021EF4BC
ov5_021EF4BC: ; 0x021EF4BC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0xca
	lsl r1, r1, #2
	add r6, r0, #0
	bl sub_02018144
	mov r2, #0xca
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r2, #0x63
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	str r0, [r4, #0]
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, r2
	bl sub_02013B10
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	str r5, [r4, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EF4BC

	thumb_func_start ov5_021EF4F8
ov5_021EF4F8: ; 0x021EF4F8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #1
	bne _021EF506
	bl ov5_021EF710
_021EF506:
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013B40
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021EF4F8

	thumb_func_start ov5_021EF518
ov5_021EF518: ; 0x021EF518
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EF526
	bl sub_02022974
_021EF526:
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, _021EF598 ; =ov5_021EF6C0
	add r2, r4, #0
	bl ov5_021EF418
	mov r2, #0xc5
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, _021EF59C ; =ov5_021EF5A8
	add r1, r4, #0
	add r2, #0xec
	bl sub_0200D9E8
	mov r2, #0xc7
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, _021EF5A0 ; =ov5_021EF6B0
	add r1, r4, #0
	add r2, #0xe4
	bl sub_0200DA04
	mov r2, #0x32
	lsl r2, r2, #4
	str r0, [r4, r2]
	ldr r0, _021EF5A4 ; =ov5_021EF6E4
	add r1, r4, #0
	add r2, #0xe0
	bl sub_0200DA04
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r2, #6
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #6
	bl memset
	mov r2, #0x63
	lsl r2, r2, #2
	add r0, r4, r2
	mov r1, #0
	sub r2, #0xc
	bl memset
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #0x61
	lsl r0, r0, #4
	bl sub_02005748
	pop {r4, pc}
	; .align 2, 0
_021EF598: .word ov5_021EF6C0
_021EF59C: .word ov5_021EF5A8
_021EF5A0: .word ov5_021EF6B0
_021EF5A4: .word ov5_021EF6E4
	thumb_func_end ov5_021EF518

	thumb_func_start ov5_021EF5A8
ov5_021EF5A8: ; 0x021EF5A8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021EF630
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF5BE: ; jump table
	.short _021EF5C6 - _021EF5BE - 2 ; case 0
	.short _021EF5D2 - _021EF5BE - 2 ; case 1
	.short _021EF5FE - _021EF5BE - 2 ; case 2
	.short _021EF624 - _021EF5BE - 2 ; case 3
_021EF5C6:
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021EF5D2:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013B54
	ldr r1, [r4, #4]
	mov r2, #3
	sub r1, r2, r1
	bl ov5_021EF66C
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021EF630
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021EF5FE:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013B54
	ldr r1, [r4, #4]
	mov r2, #3
	bl ov5_021EF66C
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021EF630
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021EF624:
	add r0, r4, #0
	bl ov5_021EF710
	mov r0, #0
	bl G3X_SetHOffset
_021EF630:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF5A8

	thumb_func_start ov5_021EF634
ov5_021EF634: ; 0x021EF634
	push {r4, lr}
	ldr r1, _021EF664 ; =0x04000006
	ldrh r4, [r1]
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02013B68
	cmp r4, #0xc0
	bge _021EF662
	add r3, r4, #1
	cmp r3, #0xc0
	blt _021EF650
	sub r3, #0xc0
_021EF650:
	ldr r1, _021EF668 ; =0x04000004
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _021EF662
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	bl G3X_SetHOffset
_021EF662:
	pop {r4, pc}
	; .align 2, 0
_021EF664: .word 0x04000006
_021EF668: .word 0x04000004
	thumb_func_end ov5_021EF634

	thumb_func_start ov5_021EF66C
ov5_021EF66C: ; 0x021EF66C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r2, #0
	mov r4, #1
	bl _s32_div_f
	neg r1, r0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	mov r6, #0
	str r1, [sp]
	lsr r7, r0, #0x10
_021EF68A:
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	bne _021EF69A
	mov r0, #1
	eor r4, r0
_021EF69A:
	cmp r4, #0
	beq _021EF6A2
	strh r7, [r5]
	b _021EF6A6
_021EF6A2:
	ldr r0, [sp]
	strh r0, [r5]
_021EF6A6:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #0xc0
	blt _021EF68A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EF66C

	thumb_func_start ov5_021EF6B0
ov5_021EF6B0: ; 0x021EF6B0
	mov r2, #0xc6
	ldr r3, _021EF6BC ; =G3X_SetHOffset
	mov r0, #0
	lsl r2, r2, #2
	str r0, [r1, r2]
	bx r3
	; .align 2, 0
_021EF6BC: .word G3X_SetHOffset
	thumb_func_end ov5_021EF6B0

	thumb_func_start ov5_021EF6C0
ov5_021EF6C0: ; 0x021EF6C0
	ldr r3, _021EF6C8 ; =ov5_021EF6CC
	add r0, r1, #0
	bx r3
	nop
_021EF6C8: .word ov5_021EF6CC
	thumb_func_end ov5_021EF6C0

	thumb_func_start ov5_021EF6CC
ov5_021EF6CC: ; 0x021EF6CC
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _021EF6E2
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021EF6E2
	bl ov5_021EF634
_021EF6E2:
	pop {r3, pc}
	thumb_func_end ov5_021EF6CC

	thumb_func_start ov5_021EF6E4
ov5_021EF6E4: ; 0x021EF6E4
	ldr r3, _021EF6EC ; =ov5_021EF6F0
	add r0, r1, #0
	bx r3
	nop
_021EF6EC: .word ov5_021EF6F0
	thumb_func_end ov5_021EF6E4

	thumb_func_start ov5_021EF6F0
ov5_021EF6F0: ; 0x021EF6F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _021EF70C
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013B94
	mov r0, #0xc6
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021EF70C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF6F0

	thumb_func_start ov5_021EF710
ov5_021EF710: ; 0x021EF710
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov5_021EF43C
	mov r0, #0xc5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r0, #0xc7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF710