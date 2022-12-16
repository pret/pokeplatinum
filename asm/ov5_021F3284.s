	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F3284
ov5_021F3284: ; 0x021F3284
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F32B0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3284

	thumb_func_start ov5_021F32A0
ov5_021F32A0: ; 0x021F32A0
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F32F4
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F32A0

	thumb_func_start ov5_021F32B0
ov5_021F32B0: ; 0x021F32B0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #0x56
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #0xae
	bl ov5_021DFA14
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #5
	mov r3, #1
	bl ov5_021DFA3C
	mov r3, #2
	mov r1, #3
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F32F0 ; =0x0220059C
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F32F0: .word 0x0220059C
	thumb_func_end ov5_021F32B0

	thumb_func_start ov5_021F32F4
ov5_021F32F4: ; 0x021F32F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov5_021DF9D4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F32F4

	thumb_func_start ov5_021F331C
ov5_021F331C: ; 0x021F331C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x15
	str r4, [sp, #0x18]
	bl ov5_021DF55C
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F3368 ; =0x02200588
	add r0, r4, #0
	add r2, sp, #8
	add r3, r6, #0
	bl ov5_021DF72C
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F3368: .word 0x02200588
	thumb_func_end ov5_021F331C

	thumb_func_start ov5_021F336C
ov5_021F336C: ; 0x021F336C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x20]
	bl sub_02062924
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x20]
	bl sub_02062918
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x18]
	mov r1, #3
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x24]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F336C

	thumb_func_start ov5_021F33C4
ov5_021F33C4: ; 0x021F33C4
	ldr r3, _021F33CC ; =sub_020211FC
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021F33CC: .word sub_020211FC
	thumb_func_end ov5_021F33C4

	thumb_func_start ov5_021F33D0
ov5_021F33D0: ; 0x021F33D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r7, [r4, #0x20]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r7, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F33F0
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, r6, r7, pc}
_021F33F0:
	add r0, r5, #0
	bl sub_020715B4
	add r6, r0, #0
	cmp r6, #1
	bne _021F340E
	add r0, r7, #0
	bl sub_02062EC8
	cmp r0, #0
	bne _021F340E
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, r6, r7, pc}
_021F340E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021F3444
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02021368
	ldr r0, [r4, #0x24]
	bl sub_020213D4
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021F3444
	cmp r6, #0
	bne _021F343C
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, r6, r7, pc}
_021F343C:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02021380
_021F3444:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F33D0

	thumb_func_start ov5_021F3448
ov5_021F3448: ; 0x021F3448
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F346C
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F346C:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063050
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3448

	.rodata


	.global Unk_ov5_02200588
Unk_ov5_02200588: ; 0x02200588
	.incbin "incbin/overlay5_rodata.bin", 0x7C74, 0x7C88 - 0x7C74

	.global Unk_ov5_0220059C
Unk_ov5_0220059C: ; 0x0220059C
	.incbin "incbin/overlay5_rodata.bin", 0x7C88, 0x18

