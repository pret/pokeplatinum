	.include "macros/function.inc"
	.include "include/ov17_02243AC4.inc"

	

	.text


	thumb_func_start ov17_02243AC4
ov17_02243AC4: ; 0x02243AC4
	push {r3, r4}
	add r1, r0, r1
	ldrb r4, [r1, #0xe]
	mov r3, #0
	add r2, r3, #0
_02243ACE:
	add r1, r0, r2
	ldrb r1, [r1, #0xe]
	cmp r1, r4
	bne _02243AD8
	add r3, r3, #1
_02243AD8:
	add r2, r2, #1
	cmp r2, #4
	blt _02243ACE
	sub r0, r3, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02243AC4

	thumb_func_start ov17_02243AE4
ov17_02243AE4: ; 0x02243AE4
	ldr r1, _02243AEC ; =0x022539AC
	ldrb r0, [r1, r0]
	bx lr
	nop
_02243AEC: .word 0x022539AC
	thumb_func_end ov17_02243AE4

	thumb_func_start ov17_02243AF0
ov17_02243AF0: ; 0x02243AF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0xb
	bl sub_020790C4
	lsl r1, r4, #2
	add r2, r4, r1
	ldr r1, _02243B08 ; =0x022539C8
	add r1, r1, r2
	ldrsb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02243B08: .word 0x022539C8
	thumb_func_end ov17_02243AF0

	thumb_func_start ov17_02243B0C
ov17_02243B0C: ; 0x02243B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	mov lr, r0
	add r2, sp, #8
	add r1, sp, #4
	add r7, r3, #0
	add r0, sp, #0
	mov r6, #0x1a
	b _02243B46
_02243B20:
	lsl r4, r3, #1
	mov r5, lr
	add r5, r5, r4
	ldrsh r5, [r5, r6]
	strb r3, [r1, r3]
	strh r5, [r2, r4]
	add r4, r7, #0
	b _02243B40
_02243B30:
	mov r5, lr
	add r5, r5, r4
	ldrb r5, [r5, #1]
	cmp r3, r5
	bne _02243B3E
	strb r4, [r0, r3]
	b _02243B44
_02243B3E:
	add r4, r4, #1
_02243B40:
	cmp r4, #4
	blt _02243B30
_02243B44:
	add r3, r3, #1
_02243B46:
	cmp r3, #4
	blt _02243B20
	mov r3, #0
	ldr r6, _02243C1C ; =0x022539B8
	add r1, sp, #8
	ldr r0, _02243C20 ; =0x022539B0
	ldr r2, _02243C24 ; =0x022539C0
	mov r7, #0x2c
	b _02243BA8
_02243B58:
	add r5, r3, #0
	mul r5, r7
	mov r4, lr
	add r4, r4, r5
	ldr r4, [r4, #0x58]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	cmp r5, #3
	bhi _02243BA6
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02243B76: ; jump table
	.short _02243BA6 - _02243B76 - 2 ; case 0
	.short _02243B7E - _02243B76 - 2 ; case 1
	.short _02243B8C - _02243B76 - 2 ; case 2
	.short _02243B9A - _02243B76 - 2 ; case 3
_02243B7E:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r2, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B8C:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r0, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B9A:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r6, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
_02243BA6:
	add r3, r3, #1
_02243BA8:
	cmp r3, #4
	blt _02243B58
	mov r3, #0
	b _02243BFE
_02243BB0:
	mov r4, #3
	add r2, sp, #8
	add r7, sp, #0
	b _02243BF8
_02243BB8:
	sub r1, r4, #1
	lsl r0, r1, #1
	lsl r5, r4, #1
	ldrsh r0, [r2, r0]
	ldrsh r5, [r2, r5]
	cmp r0, r5
	bgt _02243BD2
	cmp r0, r5
	bne _02243BF6
	ldrb r1, [r7, r1]
	ldrb r0, [r7, r4]
	cmp r1, r0
	bhs _02243BF6
_02243BD2:
	sub r0, r4, #1
	lsl r1, r4, #1
	lsl r5, r0, #1
	mov ip, r5
	ldrsh r6, [r2, r1]
	ldrsh r5, [r2, r5]
	strh r5, [r2, r1]
	mov r1, ip
	strh r6, [r2, r1]
	add r1, sp, #4
	ldrb r6, [r1, r4]
	ldrb r5, [r1, r0]
	strb r5, [r1, r4]
	strb r6, [r1, r0]
	ldrb r5, [r7, r4]
	ldrb r1, [r7, r0]
	strb r1, [r7, r4]
	strb r5, [r7, r0]
_02243BF6:
	sub r4, r4, #1
_02243BF8:
	cmp r4, r3
	bgt _02243BB8
	add r3, r3, #1
_02243BFE:
	cmp r3, #3
	blt _02243BB0
	mov r3, #0
	add r2, sp, #4
	b _02243C12
_02243C08:
	ldrb r1, [r2, r3]
	mov r0, lr
	add r0, r0, r3
	strb r1, [r0, #1]
	add r3, r3, #1
_02243C12:
	cmp r3, #4
	blt _02243C08
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243C1C: .word 0x022539B8
_02243C20: .word 0x022539B0
_02243C24: .word 0x022539C0
	thumb_func_end ov17_02243B0C

	.rodata


	.global Unk_ov17_022539AC
Unk_ov17_022539AC: ; 0x022539AC
	.incbin "incbin/overlay17_rodata.bin", 0xC20, 0xC24 - 0xC20

	.global Unk_ov17_022539B0
Unk_ov17_022539B0: ; 0x022539B0
	.incbin "incbin/overlay17_rodata.bin", 0xC24, 0xC2C - 0xC24

	.global Unk_ov17_022539B8
Unk_ov17_022539B8: ; 0x022539B8
	.incbin "incbin/overlay17_rodata.bin", 0xC2C, 0xC34 - 0xC2C

	.global Unk_ov17_022539C0
Unk_ov17_022539C0: ; 0x022539C0
	.incbin "incbin/overlay17_rodata.bin", 0xC34, 0xC3C - 0xC34

	.global Unk_ov17_022539C8
Unk_ov17_022539C8: ; 0x022539C8
	.incbin "incbin/overlay17_rodata.bin", 0xC3C, 0x19

