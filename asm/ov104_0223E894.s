	.include "macros/function.inc"
	.include "include/ov104_0223E894.inc"

	

	.text


	thumb_func_start ov104_0223E894
ov104_0223E894: ; 0x0223E894
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0xb
	mov r1, #0x4c
	str r2, [sp]
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl memset
	ldr r0, _0223E8D4 ; =ov104_0223E8D8
	add r1, r4, #0
	mov r2, #5
	bl sub_0200D9E8
	str r5, [r4, #0x48]
	cmp r5, #0
	beq _0223E8C4
	mov r0, #0
	str r0, [r5, #0]
_0223E8C4:
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E8D4: .word ov104_0223E8D8
	thumb_func_end ov104_0223E894

	thumb_func_start ov104_0223E8D8
ov104_0223E8D8: ; 0x0223E8D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #5
	bhi _0223E9BE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E8F0: ; jump table
	.short _0223E8FC - _0223E8F0 - 2 ; case 0
	.short _0223E934 - _0223E8F0 - 2 ; case 1
	.short _0223E94E - _0223E8F0 - 2 ; case 2
	.short _0223E962 - _0223E8F0 - 2 ; case 3
	.short _0223E97C - _0223E8F0 - 2 ; case 4
	.short _0223E9A0 - _0223E8F0 - 2 ; case 5
_0223E8FC:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0223E916
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #2
	bl ov104_0223E9EC
	b _0223E92C
_0223E916:
	cmp r0, #2
	bne _0223E92C
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #1
	bl ov104_0223E9EC
_0223E92C:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E9BE
_0223E934:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r1, #0
	bl ov104_0223E9EC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E9BE
_0223E94E:
	add r0, r4, #0
	add r0, #0x18
	bl ov104_0223E9F8
	cmp r0, #0
	beq _0223E9BE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E9BE
_0223E962:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r2, #0
	bl ov104_0223E9EC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E9BE
_0223E97C:
	add r0, r4, #0
	add r0, #0x18
	bl ov104_0223E9F8
	cmp r0, #0
	beq _0223E9BE
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _0223E99A
	mov r0, #5
	str r0, [r4, #0]
	b _0223E9BE
_0223E99A:
	mov r0, #1
	str r0, [r4, #0]
	b _0223E9BE
_0223E9A0:
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #8]
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _0223E9B0
	mov r1, #1
	str r1, [r2, #0]
_0223E9B0:
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
_0223E9BE:
	add r4, #0x30
	add r0, r4, #0
	bl ov104_0223E9F8
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E8D8

	thumb_func_start ov104_0223E9CC
ov104_0223E9CC: ; 0x0223E9CC
	push {r3, lr}
	cmp r0, #1
	bne _0223E9DA
	ldr r0, _0223E9E4 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
_0223E9DA:
	ldr r0, _0223E9E8 ; =0x0400106C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
	nop
_0223E9E4: .word 0x0400006C
_0223E9E8: .word 0x0400106C
	thumb_func_end ov104_0223E9CC

	thumb_func_start ov104_0223E9EC
ov104_0223E9EC: ; 0x0223E9EC
	push {r3, lr}
	str r3, [r0, #0x14]
	ldr r3, [sp, #8]
	bl ov104_0223EA28
	pop {r3, pc}
	thumb_func_end ov104_0223E9EC

	thumb_func_start ov104_0223E9F8
ov104_0223E9F8: ; 0x0223E9F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0223EA38
	add r4, r0, #0
	ldr r0, _0223EA10 ; =ov104_0223EA14
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EA10: .word ov104_0223EA14
	thumb_func_end ov104_0223E9F8

	thumb_func_start ov104_0223EA14
ov104_0223EA14: ; 0x0223EA14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0]
	bl ov104_0223E9CC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov104_0223EA14

	thumb_func_start ov104_0223EA28
ov104_0223EA28: ; 0x0223EA28
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov104_0223EA28

	thumb_func_start ov104_0223EA38
ov104_0223EA38: ; 0x0223EA38
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0223EA5E
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0223EA5E:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov104_0223EA38

	thumb_func_start ov104_0223EA64
ov104_0223EA64: ; 0x0223EA64
	push {r4, lr}
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223EA64

	thumb_func_start ov104_0223EA7C
ov104_0223EA7C: ; 0x0223EA7C
	ldr r3, _0223EA80 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0223EA80: .word sub_020181C4
	thumb_func_end ov104_0223EA7C

	thumb_func_start ov104_0223EA84
ov104_0223EA84: ; 0x0223EA84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0223EA9A
	bl sub_02022974
_0223EA9A:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov104_0223EA28
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl ov104_0223EA28
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223EA84

	thumb_func_start ov104_0223EADC
ov104_0223EADC: ; 0x0223EADC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223EAF2
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223EAF2:
	bl ov104_0223EA38
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov104_0223EA38
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5, #0]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov104_0223EB44
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223EADC

	thumb_func_start ov104_0223EB44
ov104_0223EB44: ; 0x0223EB44
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r1, #0
	cmp r5, #0
	ble _0223EB9C
	cmp r2, #0
	ble _0223EB9C
	cmp r3, r5
	beq _0223EB9C
	cmp r4, r2
	beq _0223EB9C
	cmp r3, #0
	bge _0223EB62
	mov r3, #0
_0223EB62:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	ble _0223EB6C
	add r5, r1, #0
_0223EB6C:
	cmp r4, #0
	bge _0223EB72
	mov r4, #0
_0223EB72:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _0223EB7C
	add r2, r1, #0
_0223EB7C:
	sub r1, r5, r3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	sub r1, r2, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	lsl r2, r3, #0x10
	add r1, sp, #8
	lsl r3, r4, #0x10
	ldrb r1, [r1, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
_0223EB9C:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223EB44

	thumb_func_start ov104_0223EBA0
ov104_0223EBA0: ; 0x0223EBA0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x19
	lsl r1, r1, #4
	add r6, r0, #0
	bl sub_02018144
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #4
	add r7, r0, #0
	bl memset
	mov r4, #0
	add r5, r7, #0
_0223EBBC:
	add r0, r6, #0
	bl ov104_0223EA64
	str r0, [r5, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x60
	blt _0223EBBC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223EBA0

	thumb_func_start ov104_0223EBD0
ov104_0223EBD0: ; 0x0223EBD0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223EBD8:
	ldr r0, [r5, #4]
	bl ov104_0223EA7C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x60
	blt _0223EBD8
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223EBD0

	thumb_func_start ov104_0223EBF0
ov104_0223EBF0: ; 0x0223EBF0
	push {r3, r4}
	str r3, [r0, #0]
	ldr r3, _0223EC30 ; =0xFFFFFFF8
	add r3, sp
	ldrb r4, [r3, #0x10]
	mov r3, #0x63
	lsl r3, r3, #2
	strb r4, [r0, r3]
	sub r4, r3, #3
	strb r1, [r0, r4]
	sub r1, r3, #2
	strb r2, [r0, r1]
	add r2, r3, #0
	mov r1, #0
	sub r2, #8
	strb r1, [r0, r2]
	sub r2, r3, #7
	strb r1, [r0, r2]
	sub r2, r3, #6
	strb r1, [r0, r2]
	sub r2, r3, #5
	strb r1, [r0, r2]
	sub r2, r3, #4
	strb r1, [r0, r2]
	sub r2, r3, #1
	strb r1, [r0, r2]
	mov r2, #1
	add r1, r3, #1
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0223EC30: .word 0xFFFFFFF8
	thumb_func_end ov104_0223EBF0

	thumb_func_start ov104_0223EC34
ov104_0223EC34: ; 0x0223EC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0223EE38 ; =0x0000018D
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _0223EC48
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EC48:
	add r1, r0, #0
	sub r1, #9
	ldrb r1, [r5, r1]
	cmp r1, #0x60
	bhs _0223EC62
	sub r1, r0, #2
	ldrsb r1, [r5, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strb r2, [r5, r1]
	ldrsb r1, [r5, r1]
	cmp r1, #0
	ble _0223EC64
_0223EC62:
	b _0223EDDE
_0223EC64:
	sub r1, r0, #3
	ldrb r2, [r5, r1]
	sub r1, r0, #2
	ldr r3, _0223EE3C ; =0x02241970
	strb r2, [r5, r1]
	sub r1, r0, #6
	ldrb r1, [r5, r1]
	lsl r4, r1, #4
	add r1, r0, #0
	sub r1, #8
	ldrb r2, [r5, r1]
	add r1, r3, r4
	sub r3, r0, #7
	ldrb r3, [r5, r3]
	sub r4, r0, #4
	ldrb r1, [r2, r1]
	lsl r3, r3, #4
	add r3, #8
	str r3, [sp]
	ldrb r4, [r5, r4]
	lsl r1, r1, #5
	add r2, r1, #0
	str r4, [sp, #4]
	ldr r4, [r5, #0]
	add r2, #0x20
	str r4, [sp, #8]
	mov r4, #0x20
	str r4, [sp, #0xc]
	mov r4, #0x10
	str r4, [sp, #0x10]
	sub r4, r0, #1
	ldrb r4, [r5, r4]
	sub r0, #9
	str r4, [sp, #0x14]
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 ; =0x00000187
	mov r1, #1
	ldrb r2, [r5, r0]
	ldr r3, _0223EE3C ; =0x02241970
	eor r1, r2
	lsl r4, r1, #4
	sub r1, r0, #2
	ldrb r2, [r5, r1]
	add r1, r3, r4
	sub r3, r0, #1
	ldrb r4, [r5, r3]
	mov r3, #5
	ldrb r1, [r2, r1]
	sub r3, r3, r4
	lsl r3, r3, #4
	add r3, #8
	str r3, [sp]
	add r4, r0, #2
	ldrb r4, [r5, r4]
	lsl r1, r1, #5
	add r2, r1, #0
	str r4, [sp, #4]
	ldr r4, [r5, #0]
	add r2, #0x20
	str r4, [sp, #8]
	mov r4, #0x20
	str r4, [sp, #0xc]
	mov r4, #0x10
	str r4, [sp, #0x10]
	add r4, r0, #5
	ldrb r4, [r5, r4]
	sub r0, r0, #3
	str r4, [sp, #0x14]
	ldrb r0, [r5, r0]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 ; =0x00000187
	ldr r3, _0223EE3C ; =0x02241970
	ldrb r1, [r5, r0]
	lsl r4, r1, #4
	sub r1, r0, #2
	ldrb r2, [r5, r1]
	add r1, r3, r4
	ldrb r1, [r2, r1]
	sub r2, r0, #1
	ldrb r2, [r5, r2]
	lsl r1, r1, #5
	add r2, r2, #6
	lsl r3, r2, #4
	add r3, #8
	str r3, [sp]
	add r2, r0, #2
	ldrb r2, [r5, r2]
	str r2, [sp, #4]
	ldr r2, [r5, #0]
	str r2, [sp, #8]
	mov r2, #0x20
	str r2, [sp, #0xc]
	mov r2, #0x10
	str r2, [sp, #0x10]
	add r2, r0, #5
	ldrb r2, [r5, r2]
	sub r0, r0, #3
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r2, #0x20
	add r0, r0, #2
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 ; =0x00000187
	mov r1, #1
	ldrb r2, [r5, r0]
	ldr r3, _0223EE3C ; =0x02241970
	eor r1, r2
	lsl r4, r1, #4
	sub r1, r0, #2
	ldrb r2, [r5, r1]
	add r1, r3, r4
	ldrb r1, [r2, r1]
	sub r2, r0, #1
	ldrb r3, [r5, r2]
	mov r2, #0xb
	lsl r1, r1, #5
	sub r2, r2, r3
	lsl r3, r2, #4
	add r3, #8
	str r3, [sp]
	add r2, r0, #2
	ldrb r2, [r5, r2]
	str r2, [sp, #4]
	ldr r2, [r5, #0]
	str r2, [sp, #8]
	mov r2, #0x20
	str r2, [sp, #0xc]
	mov r2, #0x10
	str r2, [sp, #0x10]
	add r2, r0, #5
	ldrb r2, [r5, r2]
	sub r0, r0, #3
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r2, #0x20
	add r0, r0, #3
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	mov r1, #0x61
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	add r0, r0, #4
	strb r0, [r5, r1]
	add r0, r1, #1
	ldrb r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r5, r0]
	ldrb r0, [r5, r0]
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	mov r0, #0x1d
	ror r2, r0
	add r0, r3, r2
	bne _0223EDDE
	add r0, r1, #3
	ldrb r2, [r5, r0]
	mov r0, #1
	eor r2, r0
	add r0, r1, #3
	strb r2, [r5, r0]
	add r0, r1, #2
	ldrb r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strb r2, [r5, r0]
	mov r2, #0
	add r0, r1, #1
	strb r2, [r5, r0]
_0223EDDE:
	mov r0, #0x62
	lsl r0, r0, #2
	ldrb r4, [r5, r0]
	sub r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0223EE14
	lsl r0, r4, #2
	mov r7, #0x62
	add r6, r5, r0
	lsl r7, r7, #2
_0223EDF4:
	ldr r0, [r6, #4]
	bl ov104_0223EADC
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _0223EE06
	ldrb r0, [r5, r7]
	add r0, r0, #1
	strb r0, [r5, r7]
_0223EE06:
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _0223EDF4
_0223EE14:
	mov r1, #0x62
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #0x60
	blo _0223EE30
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0223EE30
	mov r2, #0
	add r0, r1, #5
	strb r2, [r5, r0]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EE30:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223EE38: .word 0x0000018D
_0223EE3C: .word 0x02241970
_0223EE40: .word 0x00000187
	thumb_func_end ov104_0223EC34

	thumb_func_start ov104_0223EE44
ov104_0223EE44: ; 0x0223EE44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0223F04C ; =0x0000018D
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _0223EE58
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EE58:
	add r1, r0, #0
	sub r1, #9
	ldrb r1, [r5, r1]
	cmp r1, #0x60
	bhs _0223EE72
	sub r1, r0, #2
	ldrsb r1, [r5, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strb r2, [r5, r1]
	ldrsb r1, [r5, r1]
	cmp r1, #0
	ble _0223EE74
_0223EE72:
	b _0223EFF4
_0223EE74:
	sub r1, r0, #3
	ldrb r2, [r5, r1]
	sub r1, r0, #2
	ldr r4, _0223F050 ; =0x02241964
	strb r2, [r5, r1]
	sub r2, r0, #6
	ldrb r3, [r5, r2]
	mov r2, #6
	add r1, r0, #0
	mul r2, r3
	sub r3, r0, #7
	ldrb r3, [r5, r3]
	add r2, r4, r2
	sub r1, #8
	ldrb r2, [r3, r2]
	ldrb r1, [r5, r1]
	lsl r3, r2, #5
	add r2, r3, #0
	add r2, #0x20
	str r2, [sp]
	sub r2, r0, #4
	ldrb r2, [r5, r2]
	lsl r1, r1, #4
	add r1, #8
	str r2, [sp, #4]
	ldr r2, [r5, #0]
	str r2, [sp, #8]
	mov r2, #0x10
	str r2, [sp, #0xc]
	mov r2, #0x20
	str r2, [sp, #0x10]
	sub r2, r0, #1
	ldrb r2, [r5, r2]
	sub r0, #9
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	add r2, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 ; =0x00000185
	mov r0, #7
	ldrb r1, [r5, r2]
	sub r0, r0, r1
	lsl r1, r0, #4
	add r0, r2, #2
	ldrb r3, [r5, r0]
	mov r0, #1
	add r1, #8
	eor r3, r0
	mov r0, #6
	mul r0, r3
	add r3, r2, #1
	ldrb r3, [r5, r3]
	add r0, r4, r0
	ldrb r0, [r3, r0]
	lsl r3, r0, #5
	add r0, r3, #0
	add r0, #0x20
	str r0, [sp]
	add r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	sub r0, r2, #1
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 ; =0x00000185
	ldrb r0, [r5, r2]
	add r0, #8
	lsl r1, r0, #4
	add r0, r2, #2
	ldrb r3, [r5, r0]
	mov r0, #6
	add r1, #8
	mul r0, r3
	add r3, r2, #1
	ldrb r3, [r5, r3]
	add r0, r4, r0
	ldrb r0, [r3, r0]
	lsl r3, r0, #5
	add r0, r3, #0
	add r0, #0x20
	str r0, [sp]
	add r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	sub r0, r2, #1
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r0, r0, #2
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 ; =0x00000185
	mov r0, #0xf
	ldrb r1, [r5, r2]
	sub r0, r0, r1
	lsl r1, r0, #4
	add r0, r2, #2
	ldrb r3, [r5, r0]
	mov r0, #1
	add r1, #8
	eor r3, r0
	mov r0, #6
	mul r0, r3
	add r3, r2, #1
	ldrb r3, [r5, r3]
	add r0, r4, r0
	ldrb r0, [r3, r0]
	lsl r3, r0, #5
	add r0, r3, #0
	add r0, #0x20
	str r0, [sp]
	add r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	sub r0, r2, #1
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r0, r0, #3
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r1, r1, #4
	strb r1, [r5, r0]
	add r1, r0, #2
	ldrb r1, [r5, r1]
	add r2, r1, #1
	add r1, r0, #2
	strb r2, [r5, r1]
	add r0, r0, #2
	ldrb r0, [r5, r0]
	mov r1, #6
	bl _s32_div_f
	cmp r1, #0
	bne _0223EFF4
	ldr r1, _0223F058 ; =0x00000187
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	sub r0, r1, #2
	ldrb r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #2
	strb r2, [r5, r0]
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r5, r0]
_0223EFF4:
	mov r0, #0x62
	lsl r0, r0, #2
	ldrb r4, [r5, r0]
	sub r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0223F02A
	lsl r0, r4, #2
	mov r7, #0x62
	add r6, r5, r0
	lsl r7, r7, #2
_0223F00A:
	ldr r0, [r6, #4]
	bl ov104_0223EADC
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _0223F01C
	ldrb r0, [r5, r7]
	add r0, r0, #1
	strb r0, [r5, r7]
_0223F01C:
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _0223F00A
_0223F02A:
	mov r1, #0x62
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #0x60
	blo _0223F046
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0223F046
	mov r2, #0
	add r0, r1, #5
	strb r2, [r5, r0]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223F046:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F04C: .word 0x0000018D
_0223F050: .word 0x02241964
_0223F054: .word 0x00000185
_0223F058: .word 0x00000187
	thumb_func_end ov104_0223EE44

	thumb_func_start ov104_0223F05C
ov104_0223F05C: ; 0x0223F05C
	ldr r3, _0223F068 ; =sub_0200DA04
	mov r2, #1
	add r1, r0, #0
	ldr r0, _0223F06C ; =ov104_0223F070
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_0223F068: .word sub_0200DA04
_0223F06C: .word ov104_0223F070
	thumb_func_end ov104_0223F05C

	thumb_func_start ov104_0223F070
ov104_0223F070: ; 0x0223F070
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _0223F084
	ldr r0, [r4, #0]
	bl sub_02013DA4
	mov r0, #0
	str r0, [r4, #8]
_0223F084:
	ldr r0, [r4, #0]
	bl sub_02013DDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F070

	thumb_func_start ov104_0223F094
ov104_0223F094: ; 0x0223F094
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02013BE0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov104_0223F05C
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F094

	thumb_func_start ov104_0223F0B0
ov104_0223F0B0: ; 0x0223F0B0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013C10
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F0B0

	thumb_func_start ov104_0223F0D8
ov104_0223F0D8: ; 0x0223F0D8
	push {r3, lr}
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0223F0EC
	mov r0, #1
	str r0, [r1, #0xc]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x10]
	blx r1
	pop {r3, pc}
_0223F0EC:
	bl sub_02013BA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F0D8

	thumb_func_start ov104_0223F0F4
ov104_0223F0F4: ; 0x0223F0F4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0223F10E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F10E
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_0223F10E:
	pop {r4, pc}
	thumb_func_end ov104_0223F0F4

	thumb_func_start ov104_0223F110
ov104_0223F110: ; 0x0223F110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0223F122
	bl sub_02022974
_0223F122:
	mov r0, #1
	str r0, [r5, #8]
	mov r2, #0
	str r2, [r5, #0xc]
	str r4, [r5, #0x18]
	str r6, [r5, #0x10]
	ldr r0, _0223F148 ; =ov104_0223F0D8
	str r7, [r5, #0x14]
	add r1, r5, #0
	bl sub_0200DA3C
	str r0, [r5, #4]
	ldr r0, _0223F14C ; =ov104_0223F0F4
	add r1, r5, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F148: .word ov104_0223F0D8
_0223F14C: .word ov104_0223F0F4
	thumb_func_end ov104_0223F110

	thumb_func_start ov104_0223F150
ov104_0223F150: ; 0x0223F150
	push {r4, lr}
	add r4, r0, #0
	bne _0223F15A
	bl sub_02022974
_0223F15A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223F164
	bl sub_0200DA58
_0223F164:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F16E
	bl sub_0200DA58
_0223F16E:
	bl sub_02013BA8
	pop {r4, pc}
	thumb_func_end ov104_0223F150

	thumb_func_start ov104_0223F174
ov104_0223F174: ; 0x0223F174
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B68
	add r5, r0, #0
	bl sub_02013BA8
	ldr r1, _0223F194 ; =0x00003020
	add r0, r5, #0
	ldr r1, [r4, r1]
	mov r2, #0x20
	mov r3, #1
	bl sub_02013BB8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223F194: .word 0x00003020
	thumb_func_end ov104_0223F174

	thumb_func_start ov104_0223F198
ov104_0223F198: ; 0x0223F198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B94
	add r0, r4, #0
	bl ov104_0223F174
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F198

	thumb_func_start ov104_0223F1AC
ov104_0223F1AC: ; 0x0223F1AC
	ldr r3, _0223F1B0 ; =ov104_0223F174
	bx r3
	; .align 2, 0
_0223F1B0: .word ov104_0223F174
	thumb_func_end ov104_0223F1AC

	thumb_func_start ov104_0223F1B4
ov104_0223F1B4: ; 0x0223F1B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r4, r0, #0
	ldr r1, _0223F244 ; =0x00003024
	add r0, r5, #0
	bl sub_02018144
	ldr r2, _0223F244 ; =0x00003024
	str r0, [sp]
	mov r1, #0
	bl memset
	ldr r0, [sp]
	cmp r0, #0
	bne _0223F1D8
	bl sub_02022974
_0223F1D8:
	ldr r1, [sp]
	ldr r3, _0223F248 ; =0x00001820
	ldr r2, [sp]
	add r0, r5, #0
	add r1, #0x20
	add r2, r2, r3
	bl sub_02013B10
	ldr r1, [sp]
	cmp r0, #0
	str r0, [r1, #0x1c]
	bne _0223F1F4
	bl sub_02022974
_0223F1F4:
	ldr r0, [sp]
	ldr r1, _0223F24C ; =0x00003020
	mov r5, #0
	str r4, [r0, r1]
	add r6, r0, #0
_0223F1FE:
	add r3, r6, #0
	add r4, r7, #0
	add r3, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _0223F248 ; =0x00001820
	add r3, r7, #0
	add r4, r6, r0
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r5, r5, #1
	add r6, r2, #0
	stmia r4!, {r0, r1}
	cmp r5, #0xc0
	blt _0223F1FE
	ldr r0, [sp]
	ldr r2, _0223F250 ; =ov104_0223F198
	ldr r3, _0223F254 ; =ov104_0223F1AC
	add r1, r0, #0
	bl ov104_0223F110
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F244: .word 0x00003024
_0223F248: .word 0x00001820
_0223F24C: .word 0x00003020
_0223F250: .word ov104_0223F198
_0223F254: .word ov104_0223F1AC
	thumb_func_end ov104_0223F1B4

	thumb_func_start ov104_0223F258
ov104_0223F258: ; 0x0223F258
	push {r4, lr}
	add r4, r0, #0
	bne _0223F262
	bl sub_02022974
_0223F262:
	add r0, r4, #0
	bl ov104_0223F150
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0223F272
	bl sub_02013B40
_0223F272:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F258

	thumb_func_start ov104_0223F27C
ov104_0223F27C: ; 0x0223F27C
	push {r4, lr}
	add r4, r0, #0
	bne _0223F286
	bl sub_02022974
_0223F286:
	ldr r0, [r4, #0x1c]
	bl sub_02013B54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223F27C

	.rodata


	.global Unk_ov104_02241964
Unk_ov104_02241964: ; 0x02241964
	.incbin "incbin/overlay104_rodata.bin", 0x26D4, 0x26E0 - 0x26D4

	.global Unk_ov104_02241970
Unk_ov104_02241970: ; 0x02241970
	.incbin "incbin/overlay104_rodata.bin", 0x26E0, 0x20

