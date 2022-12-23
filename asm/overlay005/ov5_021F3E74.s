	.include "macros/function.inc"
	.include "overlay005/ov5_021F3E74.inc"

	

	.text


	thumb_func_start ov5_021F3E74
ov5_021F3E74: ; 0x021F3E74
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F3EA0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3E74

	thumb_func_start ov5_021F3E90
ov5_021F3E90: ; 0x021F3E90
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F3EE8
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F3E90

	thumb_func_start ov5_021F3EA0
ov5_021F3EA0: ; 0x021F3EA0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #0x6b
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #0xb4
	bl ov5_021DFA14
	ldr r0, [r4, #0]
	mov r1, #0xa
	mov r2, #0xc
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3EE4 ; =0x022006B0
	mov r2, #9
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0xb
	add r3, r2, #0
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F3EE4: .word 0x022006B0
	thumb_func_end ov5_021F3EA0

	thumb_func_start ov5_021F3EE8
ov5_021F3EE8: ; 0x021F3EE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #9
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #9
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #0xa
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #0xb
	bl ov5_021DF9D4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3EE8

	thumb_func_start ov5_021F3F10
ov5_021F3F10: ; 0x021F3F10
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x1b
	str r4, [sp, #0x18]
	bl ov5_021DF55C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl sub_02063050
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #8
	bl sub_02064450
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F3F70 ; =0x0220069C
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F3F70: .word 0x0220069C
	thumb_func_end ov5_021F3F10

	thumb_func_start ov5_021F3F74
ov5_021F3F74: ; 0x021F3F74
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl sub_02062910
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_02062918
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F3F74

	thumb_func_start ov5_021F3FB8
ov5_021F3FB8: ; 0x021F3FB8
	ldr r3, _021F3FC0 ; =sub_020211FC
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021F3FC0: .word sub_020211FC
	thumb_func_end ov5_021F3FB8

	thumb_func_start ov5_021F3FC4
ov5_021F3FC4: ; 0x021F3FC4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021F3FF2
	mov r1, #1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0xc
	bl sub_02021368
	ldr r0, [r4, #0x20]
	bl sub_020213D4
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #7
	blt _021F3FF2
	add r0, r5, #0
	bl ov5_021DF74C
_021F3FF2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F3FC4

	thumb_func_start ov5_021F3FF4
ov5_021F3FF4: ; 0x021F3FF4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3FF4

	.rodata


	.global Unk_ov5_0220069C
Unk_ov5_0220069C: ; 0x0220069C
	.incbin "incbin/overlay5_rodata.bin", 0x7D88, 0x7D9C - 0x7D88

	.global Unk_ov5_022006B0
Unk_ov5_022006B0: ; 0x022006B0
	.incbin "incbin/overlay5_rodata.bin", 0x7D9C, 0x18

