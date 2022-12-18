	.include "macros/function.inc"
	.include "include/ov5_021F3A50.inc"

	

	.text


	thumb_func_start ov5_021F3A50
ov5_021F3A50: ; 0x021F3A50
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F3A7C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3A50

	thumb_func_start ov5_021F3A6C
ov5_021F3A6C: ; 0x021F3A6C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F3AC4
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F3A6C

	thumb_func_start ov5_021F3A7C
ov5_021F3A7C: ; 0x021F3A7C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #8
	mov r2, #0x5a
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #8
	mov r2, #0xb1
	bl ov5_021DFA14
	mov r1, #9
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #9
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F3AC0 ; =0x02200660
	mov r2, #8
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0xa
	add r3, r2, #0
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F3AC0: .word 0x02200660
	thumb_func_end ov5_021F3A7C

	thumb_func_start ov5_021F3AC4
ov5_021F3AC4: ; 0x021F3AC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #8
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #8
	bl ov5_021DFA30
	ldr r0, [r4, #0]
	mov r1, #9
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #0xa
	bl ov5_021DF9D4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3AC4

	thumb_func_start ov5_021F3AEC
ov5_021F3AEC: ; 0x021F3AEC
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
	mov r1, #0x19
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
	ldr r1, _021F3B50 ; =0x0220064C
	add r0, r4, #0
	add r2, sp, #0x24
	add r3, r6, #0
	bl ov5_021DF72C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_021F3B50: .word 0x0220064C
	thumb_func_end ov5_021F3AEC

	thumb_func_start ov5_021F3B54
ov5_021F3B54: ; 0x021F3B54
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
	mov r0, #0x1e
	ldr r1, [sp]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0xd
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x28]
	mov r1, #0xa
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #0
	bne _021F3BEC
	mov r0, #1
	str r0, [r4, #0]
_021F3BEC:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3B54

	thumb_func_start ov5_021F3BF4
ov5_021F3BF4: ; 0x021F3BF4
	ldr r3, _021F3BFC ; =sub_020211FC
	ldr r0, [r1, #0x34]
	bx r3
	nop
_021F3BFC: .word sub_020211FC
	thumb_func_end ov5_021F3BF4

	thumb_func_start ov5_021F3C00
ov5_021F3C00: ; 0x021F3C00
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
	bne _021F3C24
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F3C24:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F3C5C
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
	bne _021F3C5C
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_020715D4
_021F3C5C:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F3C6E
	cmp r0, #1
	beq _021F3C92
	cmp r0, #2
	beq _021F3CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F3C6E:
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
	cmp r0, #2
	blt _021F3CC8
	mov r0, #1
	add sp, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021F3C92:
	mov r1, #2
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	bl sub_02021380
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_02021368
	mov r0, #2
	str r0, [r4, #0]
_021F3CA8:
	add r0, r6, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063040
	ldr r1, [r4, #0x18]
	cmp r1, r7
	bne _021F3CC2
	ldr r1, [r4, #0x20]
	cmp r1, r0
	beq _021F3CC8
_021F3CC2:
	add r0, r5, #0
	bl ov5_021DF74C
_021F3CC8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F3C00

	thumb_func_start ov5_021F3CCC
ov5_021F3CCC: ; 0x021F3CCC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_02062764
	cmp r0, #0
	bne _021F3CEC
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r4, r5, pc}
_021F3CEC:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x34]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F3CCC

	.rodata


	.global Unk_ov5_0220064C
Unk_ov5_0220064C: ; 0x0220064C
	.incbin "incbin/overlay5_rodata.bin", 0x7D38, 0x7D4C - 0x7D38

	.global Unk_ov5_02200660
Unk_ov5_02200660: ; 0x02200660
	.incbin "incbin/overlay5_rodata.bin", 0x7D4C, 0x18

