	.include "macros/function.inc"
	.include "include/ov21_021D4C0C.inc"

	

	.text


	thumb_func_start ov21_021D4C0C
ov21_021D4C0C: ; 0x021D4C0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _021D4C20
	bl sub_02022974
_021D4C20:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D4C26:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D4C26
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02012744
	str r0, [r4, #0]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #4
	bl sub_02018144
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021D4C4C
	bl sub_02022974
_021D4C4C:
	ldr r2, [r5, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [r5, #8]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D4C0C

	thumb_func_start ov21_021D4C6C
ov21_021D4C6C: ; 0x021D4C6C
	push {r4, lr}
	add r4, r0, #0
	bne _021D4C76
	bl sub_02022974
_021D4C76:
	add r0, r4, #0
	bl ov21_021D4D3C
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020127BC
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D4C8E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D4C8E
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4C6C

	thumb_func_start ov21_021D4CA0
ov21_021D4CA0: ; 0x021D4CA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl sub_02012898
	add r1, r0, #0
	add r0, r4, #0
	bl ov21_021D4CB8
	pop {r4, pc}
	thumb_func_end ov21_021D4CA0

	thumb_func_start ov21_021D4CB8
ov21_021D4CB8: ; 0x021D4CB8
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl ov21_021D4EB4
	add r4, r0, #0
	bne _021D4CCE
	bl sub_02022974
_021D4CCE:
	ldr r2, [r5, #0x20]
	add r0, r6, #0
	mov r1, #1
	add r3, r4, #4
	bl sub_0201ED94
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_020127E8
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D4CB8

	thumb_func_start ov21_021D4D1C
ov21_021D4D1C: ; 0x021D4D1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	mov r1, #0x10
	mov r0, #0
_021D4D30:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021D4D30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4D1C

	thumb_func_start ov21_021D4D3C
ov21_021D4D3C: ; 0x021D4D3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _021D4D68
	add r4, r6, #0
_021D4D4A:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov21_021D4EA4
	cmp r0, #0
	beq _021D4D5E
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov21_021D4D1C
_021D4D5E:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _021D4D4A
_021D4D68:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4D3C

	thumb_func_start ov21_021D4D6C
ov21_021D4D6C: ; 0x021D4D6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl sub_0201A778
	add r7, r0, #0
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r5, #8]
	add r1, r7, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A870
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D4D6C

	thumb_func_start ov21_021D4DA0
ov21_021D4DA0: ; 0x021D4DA0
	ldr r3, _021D4DA8 ; =sub_0201A928
	mov r1, #1
	bx r3
	nop
_021D4DA8: .word sub_0201A928
	thumb_func_end ov21_021D4DA0

	thumb_func_start ov21_021D4DAC
ov21_021D4DAC: ; 0x021D4DAC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r3, #0
	add r6, r1, #0
	ldr r3, [r5, #0x14]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	bne _021D4DC8
	bl sub_02022974
_021D4DC8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4E0C ; =0x00030201
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0201D78C
	mov r0, #2
	add r1, r4, #0
	mov r2, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4E0C: .word 0x00030201
	thumb_func_end ov21_021D4DAC

	thumb_func_start ov21_021D4E10
ov21_021D4E10: ; 0x021D4E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r3, #0
	add r5, r1, #0
	ldr r3, [r4, #0x14]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r4, r0, #0
	bne _021D4E2C
	bl sub_02022974
_021D4E2C:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #2
	add r1, r7, #0
	mov r2, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	lsl r0, r0, #3
	mov r1, #0
	sub r3, r0, r6
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4E7C ; =0x00030201
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r5, r3, #0x1f
	add r5, r3, r5
	str r1, [sp, #0xc]
	mov r1, #2
	asr r3, r5, #1
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4E7C: .word 0x00030201
	thumb_func_end ov21_021D4E10

	thumb_func_start ov21_021D4E80
ov21_021D4E80: ; 0x021D4E80
	push {r3, lr}
	sub sp, #0x10
	ldr r0, [sp, #0x18]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4EA0 ; =0x00030201
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r1, #0
	mov r1, #2
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
_021D4EA0: .word 0x00030201
	thumb_func_end ov21_021D4E80

	thumb_func_start ov21_021D4EA4
ov21_021D4EA4: ; 0x021D4EA4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D4EAE
	mov r0, #1
	bx lr
_021D4EAE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D4EA4

	thumb_func_start ov21_021D4EB4
ov21_021D4EB4: ; 0x021D4EB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _021D4EE0
	add r4, r6, #0
_021D4EC2:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov21_021D4EA4
	cmp r0, #0
	bne _021D4ED6
	ldr r1, [r5, #0xc]
	lsl r0, r6, #4
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_021D4ED6:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _021D4EC2
_021D4EE0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D4EB4