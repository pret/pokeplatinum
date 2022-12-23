	.include "macros/function.inc"
	.include "overlay016/ov16_0226DB7C.inc"

	

	.text


	thumb_func_start ov16_0226DB7C
ov16_0226DB7C: ; 0x0226DB7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x1b
	add r1, r3, #0
	add r7, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xfa
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xfb
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xfc
	bl sub_0200CE54
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226DB7C

	thumb_func_start ov16_0226DBFC
ov16_0226DBFC: ; 0x0226DBFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D070
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DBFC

	thumb_func_start ov16_0226DC24
ov16_0226DC24: ; 0x0226DC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r3, #0
	mov ip, r2
	ldr r3, _0226DC9C ; =0x02270AA4
	add r6, r0, #0
	add r7, r1, #0
	add r2, sp, #4
	mov r4, #6
_0226DC36:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _0226DC36
	ldr r0, [r3, #0]
	mov r1, #0x18
	str r0, [r2, #0]
	ldr r0, [sp, #0x50]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	mov r0, ip
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	str r0, [sp]
	bl MI_CpuFill8
	ldr r5, [sp]
	mov r4, #0
_0226DC6E:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #0
	stmia r5!, {r0}
	bl sub_0200D3F4
	add r4, r4, #1
	cmp r4, #5
	blt _0226DC6E
	ldr r0, _0226DCA0 ; =ov16_0226DE10
	ldr r1, [sp]
	ldr r2, _0226DCA4 ; =0x00009C40
	bl sub_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x14]
	add r0, r1, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226DC9C: .word 0x02270AA4
_0226DCA0: .word ov16_0226DE10
_0226DCA4: .word 0x00009C40
	thumb_func_end ov16_0226DC24

	thumb_func_start ov16_0226DCA8
ov16_0226DCA8: ; 0x0226DCA8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0226DCB0:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0226DCB0
	ldr r0, [r6, #0x14]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0226DCA8

	thumb_func_start ov16_0226DCCC
ov16_0226DCCC: ; 0x0226DCCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r4, [sp, #0x24]
	add r6, r3, #0
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r2, [sp, #0x10]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_0200D364
	mov r4, #0
	mov r6, #1
_0226DD42:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226DD42
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0226DCCC

	thumb_func_start ov16_0226DD54
ov16_0226DD54: ; 0x0226DD54
	push {r4, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	mov r4, #3
	lsl r4, r4, #0x12
	str r4, [sp, #0x14]
	bl ov16_0226DCCC
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DD54

	thumb_func_start ov16_0226DD7C
ov16_0226DD7C: ; 0x0226DD7C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	add r2, r3, #0
	add r3, r4, #0
	bl ov16_0226DD54
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DD7C

	thumb_func_start ov16_0226DD9C
ov16_0226DD9C: ; 0x0226DD9C
	push {r4, lr}
	sub sp, #0x18
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r4, #0
	bl ov16_0226DCCC
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DD9C

	thumb_func_start ov16_0226DDC0
ov16_0226DDC0: ; 0x0226DDC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x10]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D500
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_0200D364
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0226DDC0

	thumb_func_start ov16_0226DDE8
ov16_0226DDE8: ; 0x0226DDE8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0226DDF0:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0226DDF0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DDE8

	thumb_func_start ov16_0226DE04
ov16_0226DE04: ; 0x0226DE04
	ldr r3, _0226DE0C ; =sub_0200D3F4
	ldr r0, [r0, #0x10]
	mov r1, #0
	bx r3
	; .align 2, 0
_0226DE0C: .word sub_0200D3F4
	thumb_func_end ov16_0226DE04

	thumb_func_start ov16_0226DE10
ov16_0226DE10: ; 0x0226DE10
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0]
	bl sub_0200D408
	cmp r0, #0
	beq _0226DE40
	mov r4, #0
	add r5, r6, #0
_0226DE22:
	ldr r0, [r5, #0]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226DE22
	ldr r0, [r6, #0x10]
	bl sub_0200D408
	cmp r0, #1
	bne _0226DE40
	ldr r0, [r6, #0x10]
	bl sub_0200D330
_0226DE40:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DE10

	.rodata


	.global Unk_ov16_02270AA4
Unk_ov16_02270AA4: ; 0x02270AA4
	.incbin "incbin/overlay16_rodata.bin", 0x2848, 0x34

