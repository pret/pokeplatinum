	.include "macros/function.inc"
	.include "include/ov5_021DDAE4.inc"

	

	.text


	thumb_func_start ov5_021DDAE4
ov5_021DDAE4: ; 0x021DDAE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _021DDBB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DDB0A: ; jump table
	.short _021DDB14 - _021DDB0A - 2 ; case 0
	.short _021DDB2C - _021DDB0A - 2 ; case 1
	.short _021DDB44 - _021DDB0A - 2 ; case 2
	.short _021DDB88 - _021DDB0A - 2 ; case 3
	.short _021DDBA2 - _021DDB0A - 2 ; case 4
_021DDB14:
	mov r0, #2
	add r1, r0, #0
	str r0, [sp]
	sub r1, #0x12
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDBB8
_021DDB2C:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021DDBB8
	ldr r0, [r5, #8]
	bl ov24_02253DA4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDBB8
_021DDB44:
	ldr r0, [r5, #8]
	bl ov24_02253DB4
	cmp r0, #0
	beq _021DDBB8
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r6, r0, #0
	ldr r0, _021DDBC0 ; =0x00000018
	bl sub_02006514
	ldr r0, _021DDBC4 ; =0x00000019
	mov r1, #2
	bl sub_02006590
	add r0, r6, #0
	bl sub_020567D0
	mov r0, #1
	bl sub_0200A914
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r5, #0
	add r1, #0x14
	bl ov25_02253CE8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDBB8
_021DDB88:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDBB8
_021DDBA2:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021DDBB8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021DDBB8:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021DDBC0: .word 0x00000018
_021DDBC4: .word 0x00000019
	thumb_func_end ov5_021DDAE4

	thumb_func_start ov5_021DDBC8
ov5_021DDBC8: ; 0x021DDBC8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r1, _021DDBE4 ; =ov5_021DDAE4
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_021DDBE4: .word ov5_021DDAE4
	thumb_func_end ov5_021DDBC8