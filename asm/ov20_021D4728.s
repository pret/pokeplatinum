	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov20_021D4728
ov20_021D4728: ; 0x021D4728
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #5
	add r5, r0, #0
	mov r0, #0x23
	lsl r1, r1, #8
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	add r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov20_021D2E08
	str r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #0x14]
	ldr r0, _021D4760 ; =0x000004FC
	str r1, [r4, #0x18]
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4760: .word 0x000004FC
	thumb_func_end ov20_021D4728

	thumb_func_start ov20_021D4764
ov20_021D4764: ; 0x021D4764
	push {r4, lr}
	add r4, r0, #0
	bl ov20_021D4AD4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D4764

	thumb_func_start ov20_021D4774
ov20_021D4774: ; 0x021D4774
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x40
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #4
	bl sub_0200710C
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D4874
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D48C4
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D4810
	mov r2, #0xb
	ldr r0, _021D486C ; =0x000001FA
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r2, #3
	ldr r0, [r5, #0xc]
	mov r1, #4
	add r3, r2, #0
	bl sub_020198E8
	mov r2, #0xb
	mov r0, #0xa5
	lsl r0, r0, #2
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #4
	mov r2, #3
	mov r3, #0xe
	bl sub_020198E8
	b _021D4858
_021D4810:
	mov r2, #0xb
	add r0, r5, #0
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r2, #3
	ldr r0, [r5, #0xc]
	mov r1, #4
	add r3, r2, #0
	bl sub_020198E8
	mov r2, #0xb
	ldr r0, _021D4870 ; =0x00000462
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #4
	mov r2, #3
	mov r3, #0xe
	bl sub_020198E8
_021D4858:
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D4A24
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021D486C: .word 0x000001FA
_021D4870: .word 0x00000462
	thumb_func_end ov20_021D4774

	thumb_func_start ov20_021D4874
ov20_021D4874: ; 0x021D4874
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, _021D48C0 ; =0x021D52F4
	str r1, [sp, #4]
	mov r6, #0
	add r5, #0x2c
_021D4882:
	mov r0, #0x23
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	mov r2, #1
	add r3, sp, #8
	bl sub_020071D0
	add r7, r0, #0
	beq _021D48B0
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r0, #0xc
	mov r2, #0x9a
	bl sub_020C4B18
	add r0, r5, #0
	mov r1, #0x9a
	bl sub_020C2C54
	add r0, r7, #0
	bl sub_020181C4
_021D48B0:
	add r6, r6, #1
	add r4, r4, #2
	add r5, #0x9a
	cmp r6, #8
	blo _021D4882
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D48C0: .word 0x021D52F4
	thumb_func_end ov20_021D4874

	thumb_func_start ov20_021D48C4
ov20_021D48C4: ; 0x021D48C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #2
	mov r1, #0
	bl sub_02002BB8
	ldr r1, _021D4984 ; =0x000001B5
	mov r0, #0x1a
	mov r2, #0xb
	mov r3, #0x23
	bl sub_0200B010
	add r6, r0, #0
	ldr r1, _021D4984 ; =0x000001B5
	mov r0, #0x1a
	mov r2, #0xc
	mov r3, #0x23
	bl sub_0200B010
	add r4, r0, #0
	mov r0, #0x23
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x14
	mov r2, #1
	add r3, sp, #4
	bl sub_020071B4
	add r7, r0, #0
	beq _021D496C
	add r0, sp, #8
	bl sub_0201A7A0
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	str r0, [sp, #8]
	mov r0, #0xb
	strb r0, [r1, #0xb]
	mov r0, #0x39
	strb r0, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	ldr r0, _021D4988 ; =0xFFFF7FFF
	mov r3, #0
	and r0, r2
	strh r0, [r1, #0xe]
	ldr r0, [sp, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	add r0, sp, #8
	bl ov20_021D498C
	ldr r0, [sp, #4]
	add r2, r4, #0
	ldr r1, [r0, #0x14]
	mov r0, #0x9a
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	add r0, sp, #8
	mov r3, #0
	bl ov20_021D498C
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_020C2C54
	ldr r3, [sp, #4]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0xc]
	ldr r3, [r3, #0x10]
	mov r1, #4
	bl sub_0201958C
	add r0, r7, #0
	bl sub_020181C4
_021D496C:
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #2
	bl sub_02002C60
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4984: .word 0x000001B5
_021D4988: .word 0xFFFF7FFF
	thumb_func_end ov20_021D48C4

	thumb_func_start ov20_021D498C
ov20_021D498C: ; 0x021D498C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	add r0, r2, #0
	str r2, [sp, #0x14]
	add r7, r3, #0
	bl sub_02023C5C
	str r0, [sp, #0x1c]
	mov r0, #0x20
	mov r1, #0x23
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #2
	sub r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #1
	add r7, r7, r0
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021D4A10
_021D49BE:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02023C9C
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	mov r3, #0x58
	bl sub_02002EEC
	ldr r5, _021D4A1C ; =0x021D52EC
	str r0, [sp, #0x18]
	mov r4, #0
_021D49DA:
	mov r0, #0
	ldrsh r0, [r5, r0]
	ldr r3, [sp, #0x18]
	mov r1, #2
	add r0, r7, r0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4A20 ; =0x00010203
	add r2, r6, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_0201D78C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blo _021D49DA
	ldr r0, [sp, #0x20]
	add r7, #0x10
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _021D49BE
_021D4A10:
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D4A1C: .word 0x021D52EC
_021D4A20: .word 0x00010203
	thumb_func_end ov20_021D498C

	thumb_func_start ov20_021D4A24
ov20_021D4A24: ; 0x021D4A24
	push {r4, r5, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r0, sp, #0x38
	add r4, r1, #0
	bl sub_020A81D0
	add r0, sp, #0x14
	bl sub_020A818C
	mov r0, #0x23
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #2
	mov r3, #0
	bl sub_0200716C
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	bl sub_0200718C
	add r0, r5, #0
	add r0, #0x1c
	add r1, r4, #0
	mov r2, #0x16
	mov r3, #0x17
	bl ov20_021D4AF8
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r3, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x38
	add r3, #0x1c
	bl ov20_021D4B40
	str r0, [r5, #0x14]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x88
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r3, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x38
	add r3, #0x1c
	bl ov20_021D4B40
	str r0, [r5, #0x18]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x4c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4A24

	thumb_func_start ov20_021D4AD4
ov20_021D4AD4: ; 0x021D4AD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D4AE2
	bl sub_02021BD4
_021D4AE2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4AEC
	bl sub_02021BD4
_021D4AEC:
	add r4, #0x1c
	add r0, r4, #0
	bl ov20_021D4B2C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4AD4

	thumb_func_start ov20_021D4AF8
ov20_021D4AF8: ; 0x021D4AF8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x23
	add r6, r3, #0
	str r0, [sp]
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #1
	add r3, r5, #4
	bl sub_02007204
	str r0, [r5, #0]
	mov r0, #0x23
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	add r3, #0xc
	bl sub_02007220
	str r0, [r5, #8]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov20_021D4AF8

	thumb_func_start ov20_021D4B2C
ov20_021D4B2C: ; 0x021D4B2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4B2C

	thumb_func_start ov20_021D4B40
ov20_021D4B40: ; 0x021D4B40
	push {r3, r4, lr}
	sub sp, #0x44
	str r2, [sp, #0x28]
	str r1, [sp, #0x20]
	ldr r1, [r3, #4]
	ldr r2, [sp, #0x58]
	str r1, [sp, #0x2c]
	ldr r1, [r3, #0xc]
	str r1, [sp, #0x30]
	add r1, sp, #0x40
	strb r2, [r1]
	mov r1, #0
	str r1, [sp, #0x24]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	ldr r0, [r0, #0x10]
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	add r0, #0xc0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0x23
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02021B90
	add r4, r0, #0
	beq _021D4B9E
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_021D4B9E:
	add r0, r4, #0
	add sp, #0x44
	pop {r3, r4, pc}
	thumb_func_end ov20_021D4B40

	thumb_func_start ov20_021D4BA4
ov20_021D4BA4: ; 0x021D4BA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x23
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _021D4C00
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	str r5, [r4, #0]
	mov r1, #0
	str r1, [r4, #4]
	strh r1, [r4, #8]
	mov r1, #0xe
	mul r1, r0
	ldr r0, _021D4C08 ; =0x021D5304
	mov r2, #1
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xa]
	ldr r0, _021D4C0C ; =0x021D5306
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xc]
	ldr r0, _021D4C10 ; =0x021D5308
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xe]
	ldr r0, _021D4C14 ; =0x021D530A
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x10]
	ldr r0, _021D4C18 ; =0x021D530C
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x12]
	ldr r0, _021D4C1C ; =0x021D530E
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x14]
	ldr r0, _021D4C20 ; =0x021D5310
	ldrh r0, [r0, r1]
	add r1, r4, #0
	strh r0, [r4, #0x16]
	ldr r0, _021D4C24 ; =ov20_021D4C40
	bl sub_0200D9E8
	ldr r1, _021D4C28 ; =0x000004FC
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_021D4C00:
	ldr r0, _021D4C28 ; =0x000004FC
	mov r1, #0
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4C08: .word 0x021D5304
_021D4C0C: .word 0x021D5306
_021D4C10: .word 0x021D5308
_021D4C14: .word 0x021D530A
_021D4C18: .word 0x021D530C
_021D4C1C: .word 0x021D530E
_021D4C20: .word 0x021D5310
_021D4C24: .word ov20_021D4C40
_021D4C28: .word 0x000004FC
	thumb_func_end ov20_021D4BA4

	thumb_func_start ov20_021D4C2C
ov20_021D4C2C: ; 0x021D4C2C
	ldr r1, _021D4C3C ; =0x000004FC
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021D4C38
	mov r0, #1
	bx lr
_021D4C38:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D4C3C: .word 0x000004FC
	thumb_func_end ov20_021D4C2C

	thumb_func_start ov20_021D4C40
ov20_021D4C40: ; 0x021D4C40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _021D4C50
	b _021D4DB4
_021D4C50:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4C5C: ; jump table
	.short _021D4C64 - _021D4C5C - 2 ; case 0
	.short _021D4CEA - _021D4C5C - 2 ; case 1
	.short _021D4D4A - _021D4C5C - 2 ; case 2
	.short _021D4DA0 - _021D4C5C - 2 ; case 3
_021D4C64:
	ldr r3, [r4, #0]
	mov r2, #0xb
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	add r0, r3, #0
	mov r5, #0x9a
	add r0, #0x2c
	mul r5, r6
	add r0, r0, r5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	mov r1, #4
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r3, [r4, #0]
	mov r2, #0xb
	add r0, r3, #0
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0x12]
	mov r5, #0x9a
	add r0, #0x2c
	mul r5, r6
	add r0, r0, r5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0x14]
	ldrh r3, [r4, #0x16]
	mov r1, #4
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #4
	ldr r0, [r0, #0xc]
	bl sub_02019448
	ldrh r0, [r4, #0xa]
	add sp, #0x1c
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4CEA:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #2
	blo _021D4DB4
	ldr r3, [r4, #0]
	mov r2, #0xb
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	add r0, r3, #0
	mov r5, #0x9a
	add r0, #0x2c
	mul r5, r6
	add r0, r0, r5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	mov r1, #4
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #4
	ldr r0, [r0, #0xc]
	bl sub_02019448
	mov r0, #0
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	add sp, #0x1c
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4D4A:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #4
	blo _021D4DB4
	ldr r3, [r4, #0]
	mov r2, #0xb
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	add r0, r3, #0
	mov r5, #0x9a
	add r0, #0x2c
	mul r5, r6
	add r0, r0, r5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	mov r1, #4
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #4
	ldr r0, [r0, #0xc]
	bl sub_02019448
	ldr r0, [r4, #4]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4DA0:
	ldr r1, [r4, #0]
	ldr r0, _021D4DB8 ; =0x000004FC
	mov r2, #0
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_021D4DB4:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D4DB8: .word 0x000004FC
	thumb_func_end ov20_021D4C40

	thumb_func_start ov20_021D4DBC
ov20_021D4DBC: ; 0x021D4DBC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021D4DE2
	ldr r0, [r4, #4]
	bl ov20_021D204C
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02021CAC
	ldr r0, [r4, #4]
	bl ov20_021D2060
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_02021CAC
	pop {r4, pc}
_021D4DE2:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
	thumb_func_end ov20_021D4DBC

	thumb_func_start ov20_021D4DF4
ov20_021D4DF4: ; 0x021D4DF4
	push {r3, lr}
	cmp r1, #0
	beq _021D4E00
	cmp r1, #1
	beq _021D4E1C
	pop {r3, pc}
_021D4E00:
	cmp r2, #0
	beq _021D4E12
	cmp r2, #1
	bne _021D4E36
	ldr r0, [r0, #0x14]
	mov r1, #1
	bl sub_02021D6C
	pop {r3, pc}
_021D4E12:
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl sub_02021D6C
	pop {r3, pc}
_021D4E1C:
	cmp r2, #0
	beq _021D4E2E
	cmp r2, #1
	bne _021D4E36
	ldr r0, [r0, #0x18]
	mov r1, #3
	bl sub_02021D6C
	pop {r3, pc}
_021D4E2E:
	ldr r0, [r0, #0x18]
	mov r1, #2
	bl sub_02021D6C
_021D4E36:
	pop {r3, pc}
	thumb_func_end ov20_021D4DF4

	.rodata


	.global Unk_ov20_021D52EC
Unk_ov20_021D52EC: ; 0x021D52EC
	.incbin "incbin/overlay20_rodata.bin", 0x1AC, 0x1B4 - 0x1AC

	.global Unk_ov20_021D52F4
Unk_ov20_021D52F4: ; 0x021D52F4
	.incbin "incbin/overlay20_rodata.bin", 0x1B4, 0x1C4 - 0x1B4

	.global Unk_ov20_021D5304
Unk_ov20_021D5304: ; 0x021D5304
	.incbin "incbin/overlay20_rodata.bin", 0x1C4, 0x1C

