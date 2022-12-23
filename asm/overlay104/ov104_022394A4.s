	.include "macros/function.inc"
	.include "overlay104/ov104_022394A4.inc"

	

	.text


	thumb_func_start ov104_022394A4
ov104_022394A4: ; 0x022394A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r2, [r4, #0xf]
	cmp r2, #6
	bhi _02239560
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022394BC: ; jump table
	.short _02239560 - _022394BC - 2 ; case 0
	.short _02239560 - _022394BC - 2 ; case 1
	.short _022394E0 - _022394BC - 2 ; case 2
	.short _022394E0 - _022394BC - 2 ; case 3
	.short _022394CA - _022394BC - 2 ; case 4
	.short _022394CA - _022394BC - 2 ; case 5
	.short _022394E0 - _022394BC - 2 ; case 6
_022394CA:
	ldrb r2, [r4, #0xc]
	add r0, r1, #0
	add r1, r4, #0
	sub r2, r2, #1
	lsl r2, r2, #0x18
	add r1, #0x78
	lsr r2, r2, #0x18
	bl ov104_0223A30C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_022394E0:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	str r1, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	add r1, r4, #0
	ldrb r3, [r4, #0xe]
	sub r2, r2, #1
	lsl r2, r2, #2
	add r2, r4, r2
	ldrh r2, [r2, #0x3e]
	add r1, #0x78
	bl ov104_0223A0C4
	ldrb r3, [r4, #0xe]
	mov r0, #0
	cmp r3, #0
	ble _02239532
	add r1, r4, #0
	add r1, #0xa8
	add r2, sp, #0x14
	add r5, r4, #0
	add r6, sp, #0x10
_02239512:
	ldrh r3, [r1]
	add r0, r0, #1
	add r1, #0x38
	lsl r3, r3, #0x15
	lsr r3, r3, #0x15
	strh r3, [r2]
	add r3, r5, #0
	add r3, #0xaa
	ldrh r3, [r3]
	add r2, r2, #2
	add r5, #0x38
	strh r3, [r6]
	ldrb r3, [r4, #0xe]
	add r6, r6, #2
	cmp r0, r3
	blt _02239512
_02239532:
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #0x62
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	sub r2, r2, #1
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r4, r2
	ldrh r2, [r2, #0x3e]
	add r1, r4, r1
	bl ov104_0223A0C4
	add sp, #0x18
	pop {r4, r5, r6, pc}
_02239560:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	ldrb r3, [r4, #0xe]
	add r0, r4, #0
	sub r2, r2, #1
	lsl r2, r2, #1
	add r2, r4, r2
	ldrh r2, [r2, #0x3e]
	add r1, #0x78
	bl ov104_0223A0C4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_022394A4

	thumb_func_start ov104_02239588
ov104_02239588: ; 0x02239588
	lsl r2, r1, #4
	add r1, r1, r2
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, #0x7c
	ldrh r0, [r0]
	ldr r3, _0223959C ; =ov104_0222E10C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	; .align 2, 0
_0223959C: .word ov104_0222E10C
	thumb_func_end ov104_02239588

	thumb_func_start ov104_022395A0
ov104_022395A0: ; 0x022395A0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	ldrb r3, [r0, #0x10]
	mov r2, #6
	lsr r1, r1, #0x1d
	bic r3, r2
	orr r1, r3
	strb r1, [r0, #0x10]
	bx lr
	thumb_func_end ov104_022395A0

	thumb_func_start ov104_022395B4
ov104_022395B4: ; 0x022395B4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	beq _022395CC
	ldr r0, [r4, #8]
	bl sub_0206BFF0
	str r0, [r4, #8]
_022395CC:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_022395B4

	thumb_func_start ov104_022395D8
ov104_022395D8: ; 0x022395D8
	ldrb r1, [r0, #0xd]
	ldrh r0, [r0, #0x1a]
	add r1, r0, r1
	ldr r0, _022395EC ; =0x0000FFFF
	cmp r1, r0
	bhi _022395E8
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
_022395E8:
	bx lr
	nop
_022395EC: .word 0x0000FFFF
	thumb_func_end ov104_022395D8