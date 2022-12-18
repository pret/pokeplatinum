	.include "macros/function.inc"
	.include "include/ov5_021F348C.inc"

	

	.text


	thumb_func_start ov5_021F348C
ov5_021F348C: ; 0x021F348C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #8
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #4]
	bl ov5_021F34D0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F348C

	thumb_func_start ov5_021F34A8
ov5_021F34A8: ; 0x021F34A8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F358C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F34A8

	thumb_func_start ov5_021F34B8
ov5_021F34B8: ; 0x021F34B8
	push {r3, lr}
	mov r1, #0x17
	bl ov5_021DF55C
	ldr r1, [r0, #0]
	cmp r1, #1
	beq _021F34CE
	mov r1, #1
	str r1, [r0, #0]
	bl ov5_021F3518
_021F34CE:
	pop {r3, pc}
	thumb_func_end ov5_021F34B8

	thumb_func_start ov5_021F34D0
ov5_021F34D0: ; 0x021F34D0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0x58
	bl ov5_021DF9E0
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0xaf
	bl ov5_021DFA14
	mov r1, #7
	ldr r0, [r4, #4]
	add r2, r1, #0
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3514 ; =0x022005D8
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #8
	add r3, r2, #0
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F3514: .word 0x022005D8
	thumb_func_end ov5_021F34D0

	thumb_func_start ov5_021F3518
ov5_021F3518: ; 0x021F3518
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0xc
	mov r2, #0x9f
	bl ov5_021DF9E0
	ldr r0, [r4, #4]
	mov r1, #0xd
	mov r2, #0x9d
	bl ov5_021DF9E0
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #0x9e
	bl ov5_021DF9E0
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3588 ; =0x022005D8
	mov r1, #0xe
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r2, #0xc
	mov r3, #6
	bl ov5_021DF864
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3588 ; =0x022005D8
	mov r1, #0xf
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r2, #0xd
	mov r3, #6
	bl ov5_021DF864
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3588 ; =0x022005D8
	mov r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r2, #0xe
	mov r3, #6
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F3588: .word 0x022005D8
	thumb_func_end ov5_021F3518

	thumb_func_start ov5_021F358C
ov5_021F358C: ; 0x021F358C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov5_021DFA08
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov5_021DFA30
	ldr r0, [r4, #4]
	mov r1, #7
	bl ov5_021DFA7C
	ldr r0, [r4, #4]
	mov r1, #8
	bl ov5_021DF9D4
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _021F35E6
	ldr r0, [r4, #4]
	mov r1, #0xc
	bl ov5_021DFA08
	ldr r0, [r4, #4]
	mov r1, #0xd
	bl ov5_021DFA08
	ldr r0, [r4, #4]
	mov r1, #0xe
	bl ov5_021DFA08
	ldr r0, [r4, #4]
	mov r1, #0xe
	bl ov5_021DF9D4
	ldr r0, [r4, #4]
	mov r1, #0xf
	bl ov5_021DF9D4
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl ov5_021DF9D4
_021F35E6:
	pop {r4, pc}
	thumb_func_end ov5_021F358C

	thumb_func_start ov5_021F35E8
ov5_021F35E8: ; 0x021F35E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	add r6, r3, #0
	bl sub_02062C00
	str r0, [r4, #0]
	str r7, [r4, #4]
	add r0, r7, #0
	mov r1, #0x17
	bl ov5_021DF55C
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	str r5, [r4, #0xc]
	bl sub_02063050
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02064450
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	ldr r1, [sp, #0x18]
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F35E8

	thumb_func_start ov5_021F3638
ov5_021F3638: ; 0x021F3638
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl ov5_021DF578
	add r1, sp, #8
	str r1, [sp]
	add r1, r5, #0
	add r2, sp, #0xc
	add r3, sp, #0x1c
	add r4, r0, #0
	bl ov5_021F35E8
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x24]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, _021F3674 ; =0x022005C4
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, sp, #0x1c
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F3674: .word 0x022005C4
	thumb_func_end ov5_021F3638

	thumb_func_start ov5_021F3678
ov5_021F3678: ; 0x021F3678
	push {r4, r5, r6, lr}
	sub sp, #0x58
	ldr r6, _021F36EC ; =0x022005F0
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0xc
	mov r2, #6
_021F3686:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3686
	add r0, r5, #0
	bl ov5_021DF578
	add r1, sp, #8
	str r1, [sp]
	add r1, r5, #0
	add r2, sp, #0x3c
	add r3, sp, #0x4c
	add r6, r0, #0
	bl ov5_021F35E8
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _021F36B0
	bl sub_02022974
_021F36B0:
	mov r0, #0xc
	mul r0, r4
	add r1, sp, #0xc
	ldr r2, [sp, #0x4c]
	ldr r1, [r1, r0]
	add r3, r4, #0
	add r1, r2, r1
	str r1, [sp, #0x4c]
	add r1, sp, #0x10
	ldr r2, [sp, #0x50]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [sp, #0x50]
	add r1, sp, #0x14
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x54]
	ldr r1, _021F36F0 ; =0x022005C4
	add r0, r2, r0
	str r0, [sp, #0x54]
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x4c
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov5_021DF72C
	add sp, #0x58
	pop {r4, r5, r6, pc}
	nop
_021F36EC: .word 0x022005F0
_021F36F0: .word 0x022005C4
	thumb_func_end ov5_021F3678

	thumb_func_start ov5_021F36F4
ov5_021F36F4: ; 0x021F36F4
	push {r4, r5, lr}
	sub sp, #0x1c
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
	add r1, sp, #0x10
	bl sub_020715E4
	ldr r3, _021F3750 ; =0x022005B4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_020715B4
	add r1, r0, #0
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	ldr r0, [r4, #0x14]
	add r2, sp, #0x10
	bl ov5_021DF84C
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021F3750: .word 0x022005B4
	thumb_func_end ov5_021F36F4

	thumb_func_start ov5_021F3754
ov5_021F3754: ; 0x021F3754
	ldr r3, _021F375C ; =sub_020211FC
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021F375C: .word sub_020211FC
	thumb_func_end ov5_021F3754

	thumb_func_start ov5_021F3760
ov5_021F3760: ; 0x021F3760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021F378E
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
	cmp r0, #9
	blt _021F378E
	add r0, r5, #0
	bl ov5_021DF74C
_021F378E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F3760

	thumb_func_start ov5_021F3790
ov5_021F3790: ; 0x021F3790
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F3790

	.rodata


	.global Unk_ov5_022005B4
Unk_ov5_022005B4: ; 0x022005B4
	.incbin "incbin/overlay5_rodata.bin", 0x7CA0, 0x7CB0 - 0x7CA0

	.global Unk_ov5_022005C4
Unk_ov5_022005C4: ; 0x022005C4
	.incbin "incbin/overlay5_rodata.bin", 0x7CB0, 0x7CC4 - 0x7CB0

	.global Unk_ov5_022005D8
Unk_ov5_022005D8: ; 0x022005D8
	.incbin "incbin/overlay5_rodata.bin", 0x7CC4, 0x7CDC - 0x7CC4

	.global Unk_ov5_022005F0
Unk_ov5_022005F0: ; 0x022005F0
	.incbin "incbin/overlay5_rodata.bin", 0x7CDC, 0x30

