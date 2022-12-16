	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F2D20
ov5_021F2D20: ; 0x021F2D20
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F2D4C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2D20

	thumb_func_start ov5_021F2D3C
ov5_021F2D3C: ; 0x021F2D3C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F2E2C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F2D3C

	thumb_func_start ov5_021F2D4C
ov5_021F2D4C: ; 0x021F2D4C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x53
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0x54
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0xaa
	bl ov5_021DFA14
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #0xab
	bl ov5_021DFA14
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #0xac
	bl ov5_021DFA14
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0xad
	bl ov5_021DFA14
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #1
	bl ov5_021DFA3C
	mov r2, #1
	ldr r0, [r4, #0]
	mov r1, #4
	add r3, r2, #0
	bl ov5_021DFA3C
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #2
	mov r3, #1
	bl ov5_021DFA3C
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #3
	mov r3, #1
	bl ov5_021DFA3C
	mov r1, #0
	str r1, [sp]
	ldr r0, _021F2E1C ; =0x02200540
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DF864
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F2E20 ; =0x02200558
	mov r1, #5
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #3
	bl ov5_021DF864
	mov r2, #5
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F2E24 ; =0x02200528
	mov r1, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r3, #4
	bl ov5_021DF864
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F2E28 ; =0x02200570
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #7
	add r3, r2, #0
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F2E1C: .word 0x02200540
_021F2E20: .word 0x02200558
_021F2E24: .word 0x02200528
_021F2E28: .word 0x02200570
	thumb_func_end ov5_021F2D4C

	thumb_func_start ov5_021F2E2C
ov5_021F2E2C: ; 0x021F2E2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov5_021DF9D4
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov5_021DF9D4
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov5_021DF9D4
	ldr r0, [r4, #0]
	mov r1, #7
	bl ov5_021DF9D4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2E2C

	thumb_func_start ov5_021F2EA4
ov5_021F2EA4: ; 0x021F2EA4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r6, r1, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov5_021DF574
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x13
	bl ov5_021DF55C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x24
	str r5, [sp, #0x20]
	bl sub_02063050
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F2F08 ; =0x022004EC
	add r0, r4, #0
	add r2, sp, #0x24
	add r3, r6, #0
	bl ov5_021DF72C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_021F2F08: .word 0x022004EC
	thumb_func_end ov5_021F2EA4

	thumb_func_start ov5_021F2F0C
ov5_021F2F0C: ; 0x021F2F0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x30]
	bl sub_02062924
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_02062918
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl sub_02063074
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_020644A4
	str r0, [r4, #0x14]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x28]
	mov r1, #0
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #0
	bne _021F2F9A
	mov r0, #1
	str r0, [r4, #0]
_021F2F9A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F2F0C

	thumb_func_start ov5_021F2FA0
ov5_021F2FA0: ; 0x021F2FA0
	ldr r3, _021F2FA8 ; =sub_020211FC
	ldr r0, [r1, #0x34]
	bx r3
	nop
_021F2FA8: .word sub_020211FC
	thumb_func_end ov5_021F2FA0

	thumb_func_start ov5_021F2FAC
ov5_021F2FAC: ; 0x021F2FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F2FD0
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F2FD0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F3008
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020715E4
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	bl sub_020644A4
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _021F3008
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_020715D4
_021F3008:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F301A
	cmp r0, #1
	beq _021F303E
	cmp r0, #2
	beq _021F304C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F301A:
	mov r1, #1
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	bl sub_02021368
	ldr r0, [r4, #0x34]
	bl sub_020213D4
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021F3086
	mov r0, #1
	add sp, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021F303E:
	mov r1, #3
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xe
	bl sub_02021380
	mov r0, #2
	str r0, [r4, #0]
_021F304C:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F3066
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F3066:
	add r0, r6, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063040
	ldr r1, [r4, #0x18]
	cmp r1, r7
	bne _021F3080
	ldr r1, [r4, #0x20]
	cmp r1, r0
	beq _021F3086
_021F3080:
	add r0, r5, #0
	bl ov5_021DF74C
_021F3086:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2FAC

	thumb_func_start ov5_021F308C
ov5_021F308C: ; 0x021F308C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_020627B4
	cmp r0, #0
	bne _021F30AE
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r4, r5, pc}
_021F30AE:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x34]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F308C

	thumb_func_start ov5_021F30C4
ov5_021F30C4: ; 0x021F30C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x1c]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F30C4

	thumb_func_start ov5_021F30FC
ov5_021F30FC: ; 0x021F30FC
	ldr r3, _021F3104 ; =sub_020211FC
	ldr r0, [r1, #0x1c]
	bx r3
	nop
_021F3104: .word sub_020211FC
	thumb_func_end ov5_021F30FC

	thumb_func_start ov5_021F3108
ov5_021F3108: ; 0x021F3108
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F3116
	cmp r0, #1
	pop {r4, pc}
_021F3116:
	mov r1, #1
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0xc
	bl sub_02021368
	ldr r0, [r4, #0x1c]
	bl sub_020213D4
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021F3138
	mov r0, #1
	str r0, [r4, #4]
	str r0, [r4, #0]
_021F3138:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3108

	thumb_func_start ov5_021F313C
ov5_021F313C: ; 0x021F313C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F313C

	thumb_func_start ov5_021F3154
ov5_021F3154: ; 0x021F3154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r6, [r0, #0x40]
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x13
	add r7, r3, #0
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #9
	lsl r1, r4, #0x10
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x24]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021F31A4 ; =0x02200514
	add r0, r6, #0
	add r2, sp, #0x1c
	add r3, r7, #0
	bl ov5_021DF72C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F31A4: .word 0x02200514
	thumb_func_end ov5_021F3154

	thumb_func_start ov5_021F31A8
ov5_021F31A8: ; 0x021F31A8
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F31A8

	thumb_func_start ov5_021F31B4
ov5_021F31B4: ; 0x021F31B4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r1, r0, #0x10
	mov r0, #9
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020644A4
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021F321E
	cmp r0, #1
	beq _021F3222
	cmp r0, #2
	b _021F3226
_021F321E:
	mov r1, #5
	b _021F3228
_021F3222:
	mov r1, #6
	b _021F3228
_021F3226:
	mov r1, #7
_021F3228:
	ldr r0, [r4, #0x1c]
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x24]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F31B4

	thumb_func_start ov5_021F3238
ov5_021F3238: ; 0x021F3238
	ldr r3, _021F3240 ; =sub_020211FC
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021F3240: .word sub_020211FC
	thumb_func_end ov5_021F3238

	thumb_func_start ov5_021F3244
ov5_021F3244: ; 0x021F3244
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F3252
	cmp r0, #1
	pop {r4, pc}
_021F3252:
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02021368
	cmp r0, #1
	bne _021F326A
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021F326A:
	pop {r4, pc}
	thumb_func_end ov5_021F3244

	thumb_func_start ov5_021F326C
ov5_021F326C: ; 0x021F326C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F326C

	.rodata


	.global Unk_ov5_022004EC
Unk_ov5_022004EC: ; 0x022004EC
	.incbin "incbin/overlay5_rodata.bin", 0x7BD8, 0x7BEC - 0x7BD8

	.global Unk_ov5_02200500
Unk_ov5_02200500: ; 0x02200500
	.incbin "incbin/overlay5_rodata.bin", 0x7BEC, 0x7C00 - 0x7BEC

	.global Unk_ov5_02200514
Unk_ov5_02200514: ; 0x02200514
	.incbin "incbin/overlay5_rodata.bin", 0x7C00, 0x7C14 - 0x7C00

	.global Unk_ov5_02200528
Unk_ov5_02200528: ; 0x02200528
	.incbin "incbin/overlay5_rodata.bin", 0x7C14, 0x7C2C - 0x7C14

	.global Unk_ov5_02200540
Unk_ov5_02200540: ; 0x02200540
	.incbin "incbin/overlay5_rodata.bin", 0x7C2C, 0x7C44 - 0x7C2C

	.global Unk_ov5_02200558
Unk_ov5_02200558: ; 0x02200558
	.incbin "incbin/overlay5_rodata.bin", 0x7C44, 0x7C5C - 0x7C44

	.global Unk_ov5_02200570
Unk_ov5_02200570: ; 0x02200570
	.incbin "incbin/overlay5_rodata.bin", 0x7C5C, 0x18

