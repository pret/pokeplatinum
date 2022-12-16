	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021EA714
ov5_021EA714: ; 0x021EA714
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EA726
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021EA726
	bl ov25_02253D7C
_021EA726:
	pop {r3, pc}
	thumb_func_end ov5_021EA714

	thumb_func_start ov5_021EA728
ov5_021EA728: ; 0x021EA728
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020567E0
	cmp r0, #0
	beq _021EA774
	add r0, r6, #0
	bl sub_0206AE2C
	cmp r0, #0
	bne _021EA774
	ldr r0, _021EA788 ; =0x00000019
	mov r1, #2
	bl sub_02006590
	mov r0, #1
	bl sub_0200A914
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r5, #0
	add r1, #0x14
	bl ov25_02253CE8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EA774:
	ldr r0, _021EA78C ; =0x00000018
	mov r1, #2
	bl sub_02006590
	ldr r0, [r5, #8]
	bl ov25_02253CE0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EA788: .word 0x00000019
_021EA78C: .word 0x00000018
	thumb_func_end ov5_021EA728

	thumb_func_start ov5_021EA790
ov5_021EA790: ; 0x021EA790
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020567E0
	cmp r0, #0
	beq _021EA7C2
	add r0, r6, #0
	bl sub_0206AE2C
	cmp r0, #0
	bne _021EA7C2
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	bl ov25_02253D5C
	pop {r4, r5, r6, pc}
_021EA7C2:
	ldr r0, [r5, #8]
	bl ov24_02253DA4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EA790

	thumb_func_start ov5_021EA7CC
ov5_021EA7CC: ; 0x021EA7CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020567E0
	cmp r0, #0
	beq _021EA810
	add r0, r6, #0
	bl sub_0206AE2C
	cmp r0, #0
	bne _021EA810
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	bl ov25_02253D70
	cmp r0, #0
	beq _021EA824
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, _021EA828 ; =0x00000019
	bl sub_02006514
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EA810:
	ldr r0, [r5, #8]
	bl ov24_02253DB4
	cmp r0, #0
	beq _021EA824
	ldr r0, _021EA82C ; =0x00000018
	bl sub_02006514
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EA824:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021EA828: .word 0x00000019
_021EA82C: .word 0x00000018
	thumb_func_end ov5_021EA7CC

	thumb_func_start ov5_021EA830
ov5_021EA830: ; 0x021EA830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EA844 ; =0x00000018
	mov r1, #2
	bl sub_02006590
	ldr r0, [r4, #8]
	bl ov24_02253CE0
	pop {r4, pc}
	; .align 2, 0
_021EA844: .word 0x00000018
	thumb_func_end ov5_021EA830

	thumb_func_start ov5_021EA848
ov5_021EA848: ; 0x021EA848
	ldr r3, _021EA850 ; =ov24_02253DA4
	ldr r0, [r0, #8]
	bx r3
	nop
_021EA850: .word ov24_02253DA4
	thumb_func_end ov5_021EA848

	thumb_func_start ov5_021EA854
ov5_021EA854: ; 0x021EA854
	push {r3, lr}
	ldr r0, [r0, #8]
	bl ov24_02253DB4
	cmp r0, #0
	beq _021EA86A
	ldr r0, _021EA870 ; =0x00000018
	bl sub_02006514
	mov r0, #1
	pop {r3, pc}
_021EA86A:
	mov r0, #0
	pop {r3, pc}
	nop
_021EA870: .word 0x00000018
	thumb_func_end ov5_021EA854