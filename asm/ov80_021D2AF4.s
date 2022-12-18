	.include "macros/function.inc"
	.include "include/ov80_021D2AF4.inc"

	

	.text


	thumb_func_start ov80_021D2AF4
ov80_021D2AF4: ; 0x021D2AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	mov r1, #0xc
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_02018144
	add r7, r0, #0
	mov r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	strb r0, [r7, #3]
	strb r0, [r7, #4]
	strb r0, [r7, #5]
	strb r0, [r7, #6]
	strb r0, [r7, #7]
	strb r0, [r7, #8]
	strb r0, [r7, #9]
	strb r0, [r7, #0xa]
	strb r0, [r7, #0xb]
	strh r4, [r7]
	ldrh r2, [r7]
	mov r1, #0x1c
	add r0, r5, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r7, #8]
	ldrh r3, [r7]
	mov r2, #0x1c
	mov r1, #0
	mul r2, r3
	bl sub_020D5124
	ldrh r0, [r7]
	mov r6, #0
	ldr r5, _021D2C10 ; =0x021D31D8
	cmp r0, #0
	ble _021D2C0A
	str r6, [sp, #0xc]
_021D2B4E:
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r5, #0]
	add r4, r0, r1
	str r2, [r0, r1]
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	ldr r2, _021D2C14 ; =0x021D31B0
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	ldrb r0, [r0, r6]
	str r0, [r4, #0x14]
	ldr r0, [sp]
	bl sub_0200CA08
	str r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021D2B98
	ldrb r2, [r4, #9]
	ldr r0, [r4, #0x18]
	add r2, r2, #5
	add r1, r2, r1
	bl sub_02021E90
	b _021D2BAE
_021D2B98:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D2C18 ; =0x0000FFFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021D2BAE
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02021CAC
_021D2BAE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D2BC6
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2BD4
_021D2BC6:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2BD4:
	bl sub_020E1740
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_02021E2C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r1, #0x19
	sub r2, #0x22
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [sp, #0xc]
	add r5, #0x14
	add r0, #0x1c
	str r0, [sp, #0xc]
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blt _021D2B4E
_021D2C0A:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C10: .word 0x021D31D8
_021D2C14: .word 0x021D31B0
_021D2C18: .word 0x0000FFFF
	thumb_func_end ov80_021D2AF4

	thumb_func_start ov80_021D2C1C
ov80_021D2C1C: ; 0x021D2C1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0
	cmp r0, #0
	ble _021D2C4C
	add r4, r6, #0
_021D2C2A:
	ldr r0, [r5, #8]
	mov r1, #0
	add r7, r0, r4
	ldr r0, [r7, #0x18]
	add r2, r1, #0
	bl sub_02021C98
	ldr r0, [r7, #0x18]
	bl sub_02021BD4
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldrh r0, [r5]
	add r4, #0x1c
	cmp r6, r0
	blt _021D2C2A
_021D2C4C:
	ldr r0, [r5, #8]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2C1C

	thumb_func_start ov80_021D2C5C
ov80_021D2C5C: ; 0x021D2C5C
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _021D2CB8
	ldr r0, [r0, #8]
_021D2C68:
	ldr r6, [r0, #0]
	cmp r6, r1
	bne _021D2CAC
	ldrh r6, [r0, #0xa]
	cmp r6, #3
	bhi _021D2CAC
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_021D2C80: ; jump table
	.short _021D2C88 - _021D2C80 - 2 ; case 0
	.short _021D2C8C - _021D2C80 - 2 ; case 1
	.short _021D2C98 - _021D2C80 - 2 ; case 2
	.short _021D2CA4 - _021D2C80 - 2 ; case 3
_021D2C88:
	pop {r3, r4, r5, r6}
	bx lr
_021D2C8C:
	cmp r2, #9
	bne _021D2CAC
	cmp r3, #0x1c
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2C98:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x12
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2CA4:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x11
	beq _021D2CBA
_021D2CAC:
	add r4, r4, #1
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add r0, #0x1c
	cmp r4, r5
	blt _021D2C68
_021D2CB8:
	mov r0, #0
_021D2CBA:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov80_021D2C5C

	thumb_func_start ov80_021D2CC0
ov80_021D2CC0: ; 0x021D2CC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _021D2CCA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2CCA:
	bl ov80_021D2C5C
	add r4, r0, #0
	beq _021D2CD8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D2CF2
_021D2CD8:
	ldr r3, [r5, #4]
	cmp r3, #0
	beq _021D2CEC
	ldrb r1, [r3, #9]
	ldr r0, [r3, #0x18]
	add r2, r1, #5
	ldr r1, [r3, #0x14]
	add r1, r2, r1
	bl sub_02021E90
_021D2CEC:
	mov r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021D2CF2:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021D2D00
	mov r0, #0
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _021D2D1C
_021D2D00:
	ldrh r2, [r4, #0xa]
	ldr r0, _021D2D24 ; =0x0000FFFE
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021D2D1C
	ldrb r2, [r1, #9]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x14]
	add r2, r2, #5
	add r1, r2, r1
	bl sub_02021E90
_021D2D1C:
	str r4, [r5, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D2D24: .word 0x0000FFFE
	thumb_func_end ov80_021D2CC0

	thumb_func_start ov80_021D2D28
ov80_021D2D28: ; 0x021D2D28
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _021D2D6C
	cmp r1, #1
	bne _021D2D6C
	ldrb r0, [r4, #3]
	cmp r0, #0
	ldr r0, [r3, #0x18]
	bne _021D2D48
	ldrb r1, [r3, #9]
	add r1, #8
	bl sub_02021E90
	b _021D2D54
_021D2D48:
	ldrb r1, [r3, #9]
	add r2, r1, #5
	ldr r1, [r3, #0x14]
	add r1, r2, r1
	bl sub_02021E90
_021D2D54:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #0x10
	bne _021D2D6C
	mov r0, #0
	strb r0, [r4, #2]
	ldrb r1, [r4, #3]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #3]
_021D2D6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2D28

	thumb_func_start ov80_021D2D70
ov80_021D2D70: ; 0x021D2D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	bl sub_020C7DA0
	add r0, sp, #4
	add r1, r5, #0
	bl sub_020C8080
	cmp r0, #0
	bne _021D2D94
	bl sub_02022974
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D2D94:
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	cmp r0, #0
	bge _021D2DA6
	bl sub_02022974
_021D2DA6:
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r6, r0, #0
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	strb r0, [r6, #6]
	strb r0, [r6, #7]
	ldr r2, [sp]
	mov r1, #0x18
	add r0, r4, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r6, #4]
	ldr r3, [sp]
	mov r2, #0x18
	mov r1, #0
	mul r2, r3
	bl sub_020D5124
	ldr r0, [sp]
	mov r4, #0
	str r0, [r6, #0]
	cmp r0, #0
	ble _021D2E02
	add r5, r4, #0
_021D2DE8:
	ldr r0, [r6, #4]
	mov r2, #0x18
	add r7, r0, r5
	add r0, sp, #4
	add r1, r7, #0
	bl sub_020C81D4
	strh r4, [r7, #0x16]
	ldr r0, [r6, #0]
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r0
	blt _021D2DE8
_021D2E02:
	add r0, sp, #4
	bl sub_020C80C8
	add r0, r6, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2D70

	thumb_func_start ov80_021D2E10
ov80_021D2E10: ; 0x021D2E10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2E10

	thumb_func_start ov80_021D2E24
ov80_021D2E24: ; 0x021D2E24
	push {r3, r4, r5, r6}
	ldr r6, [r0, #0]
	mov r5, #0
	cmp r6, #0
	ble _021D2E54
	ldr r0, [r0, #4]
_021D2E30:
	ldrh r4, [r0]
	cmp r4, r1
	bne _021D2E4C
	ldrh r4, [r0, #2]
	cmp r4, r2
	bne _021D2E4C
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _021D2E56
	tst r1, r3
	bne _021D2E56
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021D2E4C:
	add r5, r5, #1
	add r0, #0x18
	cmp r5, r6
	blt _021D2E30
_021D2E54:
	mov r0, #0
_021D2E56:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov80_021D2E24

	.rodata


	.global Unk_ov80_021D31B0
Unk_ov80_021D31B0: ; 0x021D31B0
	.incbin "incbin/overlay80_rodata.bin", 0x354, 0x37C - 0x354

	.global Unk_ov80_021D31D8
Unk_ov80_021D31D8: ; 0x021D31D8
	.incbin "incbin/overlay80_rodata.bin", 0x37C, 0x190

