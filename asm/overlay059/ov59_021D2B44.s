	.include "macros/function.inc"
	.include "overlay059/ov59_021D2B44.inc"

	

	.text


	thumb_func_start ov59_021D2B44
ov59_021D2B44: ; 0x021D2B44
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B44

	thumb_func_start ov59_021D2B4C
ov59_021D2B4C: ; 0x021D2B4C
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B4C

	thumb_func_start ov59_021D2B54
ov59_021D2B54: ; 0x021D2B54
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B54

	thumb_func_start ov59_021D2B5C
ov59_021D2B5C: ; 0x021D2B5C
	push {r4, r5}
	ldr r4, _021D2B8C ; =0x021D33E4
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	mov r2, #0
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _021D2B84
	add r4, r0, #0
_021D2B6E:
	ldrb r3, [r0]
	cmp r1, r3
	bne _021D2B7A
	mov r0, #1
	pop {r4, r5}
	bx lr
_021D2B7A:
	add r2, r2, #1
	ldrb r3, [r4, r2]
	add r0, r0, #1
	cmp r3, #0xff
	bne _021D2B6E
_021D2B84:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_021D2B8C: .word 0x021D33E4
	thumb_func_end ov59_021D2B5C

	thumb_func_start ov59_021D2B90
ov59_021D2B90: ; 0x021D2B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x20]
	add r7, r2, #0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r3, [sp]
	str r1, [sp, #0x24]
	bl sub_02025E38
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	ble _021D2C22
_021D2BB2:
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x48
	bl MIi_CpuClearFast
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #4]
	mov r0, #0xc
	strb r0, [r5, #5]
	mov r0, #2
	strb r0, [r5, #6]
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r2, #8
	bl sub_020021D0
	add r3, r5, #0
	add r6, r7, #0
	add r3, #0x18
	mov r2, #6
_021D2BEE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2BEE
	mov r0, #0
	strb r0, [r5, #0x19]
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021D2C10
	ldrb r1, [r5, #0x18]
	ldr r0, [sp, #0x24]
	bl ov59_021D2B5C
	cmp r0, #0
	bne _021D2C10
	mov r0, #0
	strb r0, [r5, #0x18]
_021D2C10:
	ldr r0, [sp, #4]
	add r7, #0x30
	add r0, r0, #1
	str r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	add r5, #0x48
	cmp r1, r0
	blt _021D2BB2
_021D2C22:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2B90

	thumb_func_start ov59_021D2C28
ov59_021D2C28: ; 0x021D2C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B44
	cmp r4, r0
	beq _021D2C50
	bl GF_AssertFail
_021D2C50:
	mov r0, #1
	mov r2, #0x63
	str r0, [sp]
	mov r0, #3
	lsl r2, r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, r2
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2C28

	thumb_func_start ov59_021D2C70
ov59_021D2C70: ; 0x021D2C70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B4C
	cmp r4, r0
	beq _021D2C98
	bl GF_AssertFail
_021D2C98:
	mov r0, #1
	add r6, #0xc
	str r0, [sp]
	mov r3, #4
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2C70

	thumb_func_start ov59_021D2CB4
ov59_021D2CB4: ; 0x021D2CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B54
	cmp r4, r0
	beq _021D2CDC
	bl GF_AssertFail
_021D2CDC:
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	add r6, #0xcc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2CB4

	thumb_func_start ov59_021D2CF8
ov59_021D2CF8: ; 0x021D2CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B44
	cmp r4, r0
	beq _021D2D20
	bl GF_AssertFail
_021D2D20:
	mov r0, #0
	mov r2, #0x63
	str r0, [sp]
	lsl r2, r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, r2
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2CF8

	thumb_func_start ov59_021D2D3C
ov59_021D2D3C: ; 0x021D2D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B4C
	cmp r4, r0
	beq _021D2D64
	bl GF_AssertFail
_021D2D64:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r6, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2D3C

	thumb_func_start ov59_021D2D80
ov59_021D2D80: ; 0x021D2D80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B54
	cmp r4, r0
	beq _021D2DA8
	bl GF_AssertFail
_021D2DA8:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	add r6, #0xcc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2D80

	thumb_func_start ov59_021D2DC4
ov59_021D2DC4: ; 0x021D2DC4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	ldrb r1, [r6, #0x18]
	add r5, r0, #0
	cmp r1, #0
	bne _021D2DD6
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2DD6:
	add r0, r3, #0
	bl ov59_021D2B5C
	cmp r0, #0
	bne _021D2DE6
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021D2DE6:
	mov r1, #0
	cmp r4, #0
	ble _021D2E10
	add r2, r5, #0
_021D2DEE:
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _021D2E08
	mov r0, #0x48
	mul r0, r1
	add r3, r5, r0
	mov r2, #9
_021D2DFC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2DFC
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D2E08:
	add r1, r1, #1
	add r2, #0x48
	cmp r1, r4
	blt _021D2DEE
_021D2E10:
	mov r2, #0
	cmp r4, #0
	ble _021D2E3A
	add r1, r5, #0
_021D2E18:
	ldrb r0, [r1, #0x19]
	cmp r0, #3
	blo _021D2E32
	mov r0, #0x48
	mul r0, r2
	add r3, r5, r0
	mov r2, #9
_021D2E26:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2E26
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D2E32:
	add r2, r2, #1
	add r1, #0x48
	cmp r2, r4
	blt _021D2E18
_021D2E3A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2DC4

	thumb_func_start ov59_021D2E40
ov59_021D2E40: ; 0x021D2E40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _021D2E52
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2E52:
	bl sub_02025FCC
	cmp r0, #0
	beq _021D2E5C
	add r4, r5, #0
_021D2E5C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D2E40

	thumb_func_start ov59_021D2E60
ov59_021D2E60: ; 0x021D2E60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r7, r2, #0
	str r0, [sp, #0x48]
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0x10
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	bl MI_CpuFill8
	mov r4, #0
	add r6, r4, #0
	cmp r7, #0
	ble _021D2F04
	str r5, [sp, #0x14]
_021D2E8A:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2EF8
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x10]
	b _021D2EF2
_021D2E9A:
	add r0, r4, #1
	add r1, r7, #0
	bl _s32_div_f
	add r4, r1, #0
_021D2EA4:
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D2E9A
	cmp r4, r6
	beq _021D2E9A
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _021D2E9A
	add r1, r0, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	ldr r0, [sp, #8]
	cmp r4, r0
	beq _021D2EE6
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	add r1, r5, #0
	bl ov59_021D2E40
	add r3, r0, #0
	beq _021D2EE6
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r3, r2]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #4]
	add r2, r3, r2
	ldr r3, [sp, #0x48]
	bl ov59_021D2DC4
_021D2EE6:
	ldr r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_021D2EF2:
	ldr r0, [sp, #0x18]
	cmp r0, #4
	blt _021D2EA4
_021D2EF8:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x14]
	cmp r6, r7
	blt _021D2E8A
_021D2F04:
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2E60

	thumb_func_start ov59_021D2F10
ov59_021D2F10: ; 0x021D2F10
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x10
	add r2, r5, #0
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2F10

	thumb_func_start ov59_021D2F38
ov59_021D2F38: ; 0x021D2F38
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #2
	str r1, [sp, #8]
	ldr r1, _021D2F5C ; =0x000006CC
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #8
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2F5C: .word 0x000006CC
	thumb_func_end ov59_021D2F38

	thumb_func_start ov59_021D2F60
ov59_021D2F60: ; 0x021D2F60
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021D2F84 ; =0x0000090C
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #8
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2F84: .word 0x0000090C
	thumb_func_end ov59_021D2F60

	.rodata


	.global Unk_ov59_021D3390
Unk_ov59_021D3390: ; 0x021D3390
	.incbin "incbin/overlay59_rodata.bin", 0x108, 0x110 - 0x108

	.global Unk_ov59_021D3398
Unk_ov59_021D3398: ; 0x021D3398
	.incbin "incbin/overlay59_rodata.bin", 0x110, 0x11C - 0x110

	.global Unk_ov59_021D33A4
Unk_ov59_021D33A4: ; 0x021D33A4
	.incbin "incbin/overlay59_rodata.bin", 0x11C, 0x128 - 0x11C

	.global Unk_ov59_021D33B0
Unk_ov59_021D33B0: ; 0x021D33B0
	.incbin "incbin/overlay59_rodata.bin", 0x128, 0x138 - 0x128

	.global Unk_ov59_021D33C0
Unk_ov59_021D33C0: ; 0x021D33C0
	.incbin "incbin/overlay59_rodata.bin", 0x138, 0x148 - 0x138

	.global Unk_ov59_021D33D0
Unk_ov59_021D33D0: ; 0x021D33D0
	.incbin "incbin/overlay59_rodata.bin", 0x148, 0x15C - 0x148

	.global Unk_ov59_021D33E4
Unk_ov59_021D33E4: ; 0x021D33E4
	.incbin "incbin/overlay59_rodata.bin", 0x15C, 0x18

