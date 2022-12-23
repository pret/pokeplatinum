	.include "macros/function.inc"
	.include "overlay013/ov13_02221A88.inc"

	

	.text


	thumb_func_start ov13_02221A88
ov13_02221A88: ; 0x02221A88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02221AB8 ; =0x00002050
	ldr r4, _02221ABC ; =0x02228EA0
	mov r6, #0
	add r5, r7, r0
_02221A94:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #2
	blo _02221A94
	ldr r1, _02221AC0 ; =0x0000207A
	add r0, r7, #0
	ldrb r1, [r7, r1]
	bl ov13_02221AC4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221AB8: .word 0x00002050
_02221ABC: .word 0x02228EA0
_02221AC0: .word 0x0000207A
	thumb_func_end ov13_02221A88

	thumb_func_start ov13_02221AC4
ov13_02221AC4: ; 0x02221AC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #9
	bhi _02221B44
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221AD8: ; jump table
	.short _02221AEC - _02221AD8 - 2 ; case 0
	.short _02221AF6 - _02221AD8 - 2 ; case 1
	.short _02221B00 - _02221AD8 - 2 ; case 2
	.short _02221B0A - _02221AD8 - 2 ; case 3
	.short _02221B14 - _02221AD8 - 2 ; case 4
	.short _02221B1E - _02221AD8 - 2 ; case 5
	.short _02221B28 - _02221AD8 - 2 ; case 6
	.short _02221B32 - _02221AD8 - 2 ; case 7
	.short _02221B28 - _02221AD8 - 2 ; case 8
	.short _02221B3C - _02221AD8 - 2 ; case 9
_02221AEC:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #6
	ldr r6, _02221B88 ; =0x02228F54
	strb r1, [r4, r0]
	b _02221B44
_02221AF6:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #4
	ldr r6, _02221B8C ; =0x02228EDC
	strb r1, [r4, r0]
	b _02221B44
_02221B00:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0x23
	ldr r6, _02221B90 ; =0x022290FC
	strb r1, [r4, r0]
	b _02221B44
_02221B0A:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0xb
	ldr r6, _02221B94 ; =0x02228FBC
	strb r1, [r4, r0]
	b _02221B44
_02221B14:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0x11
	ldr r6, _02221B98 ; =0x02229074
	strb r1, [r4, r0]
	b _02221B44
_02221B1E:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #5
	ldr r6, _02221B9C ; =0x02228EFC
	strb r1, [r4, r0]
	b _02221B44
_02221B28:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #6
	ldr r6, _02221BA0 ; =0x02228F24
	strb r1, [r4, r0]
	b _02221B44
_02221B32:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0xc
	ldr r6, _02221BA4 ; =0x02229014
	strb r1, [r4, r0]
	b _02221B44
_02221B3C:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #7
	ldr r6, _02221BA8 ; =0x02228F84
	strb r1, [r4, r0]
_02221B44:
	ldr r1, _02221B84 ; =0x00002074
	ldr r0, [r4, #0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0xc]
	bl sub_0201A778
	ldr r1, _02221BAC ; =0x00002070
	mov r5, #0
	str r0, [r4, r1]
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bls _02221B82
	add r7, r1, #4
_02221B60:
	ldr r1, _02221BAC ; =0x00002070
	mov r0, #0x79
	ldr r2, [r4, r1]
	lsl r0, r0, #2
	lsl r1, r5, #4
	add r1, r2, r1
	lsl r2, r5, #3
	ldr r0, [r4, r0]
	add r2, r6, r2
	bl sub_0201A8D4
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, r7]
	cmp r5, r0
	blo _02221B60
_02221B82:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221B84: .word 0x00002074
_02221B88: .word 0x02228F54
_02221B8C: .word 0x02228EDC
_02221B90: .word 0x022290FC
_02221B94: .word 0x02228FBC
_02221B98: .word 0x02229074
_02221B9C: .word 0x02228EFC
_02221BA0: .word 0x02228F24
_02221BA4: .word 0x02229014
_02221BA8: .word 0x02228F84
_02221BAC: .word 0x00002070
	thumb_func_end ov13_02221AC4

	thumb_func_start ov13_02221BB0
ov13_02221BB0: ; 0x02221BB0
	ldr r1, _02221BC0 ; =0x00002070
	add r2, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r3, _02221BC4 ; =sub_0201A928
	ldrb r1, [r2, r1]
	bx r3
	nop
_02221BC0: .word 0x00002070
_02221BC4: .word sub_0201A928
	thumb_func_end ov13_02221BB0

	thumb_func_start ov13_02221BC8
ov13_02221BC8: ; 0x02221BC8
	push {r3, r4, r5, lr}
	ldr r1, _02221BF0 ; =0x00002070
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0201A928
	ldr r0, _02221BF4 ; =0x00002050
	mov r4, #0
	add r5, r5, r0
_02221BDE:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blo _02221BDE
	pop {r3, r4, r5, pc}
	nop
_02221BF0: .word 0x00002070
_02221BF4: .word 0x00002050
	thumb_func_end ov13_02221BC8

	thumb_func_start ov13_02221BF8
ov13_02221BF8: ; 0x02221BF8
	push {r3, lr}
	cmp r1, #9
	bhi _02221C52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02221C0A: ; jump table
	.short _02221C1E - _02221C0A - 2 ; case 0
	.short _02221C24 - _02221C0A - 2 ; case 1
	.short _02221C2A - _02221C0A - 2 ; case 2
	.short _02221C30 - _02221C0A - 2 ; case 3
	.short _02221C36 - _02221C0A - 2 ; case 4
	.short _02221C3C - _02221C0A - 2 ; case 5
	.short _02221C42 - _02221C0A - 2 ; case 6
	.short _02221C48 - _02221C0A - 2 ; case 7
	.short _02221C42 - _02221C0A - 2 ; case 8
	.short _02221C4E - _02221C0A - 2 ; case 9
_02221C1E:
	bl ov13_0222339C
	pop {r3, pc}
_02221C24:
	bl ov13_022234C8
	pop {r3, pc}
_02221C2A:
	bl ov13_022237F8
	pop {r3, pc}
_02221C30:
	bl ov13_022236B8
	pop {r3, pc}
_02221C36:
	bl ov13_02223A10
	pop {r3, pc}
_02221C3C:
	bl ov13_02223E68
	pop {r3, pc}
_02221C42:
	bl ov13_02223B74
	pop {r3, pc}
_02221C48:
	bl ov13_02223C9C
	pop {r3, pc}
_02221C4E:
	bl ov13_02223F7C
_02221C52:
	pop {r3, pc}
	thumb_func_end ov13_02221BF8

	thumb_func_start ov13_02221C54
ov13_02221C54: ; 0x02221C54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	ldr r0, _02221DE4 ; =0x00002070
	str r3, [sp, #0x14]
	ldr r5, [r6, r0]
	lsl r4, r1, #4
	ldr r0, [sp, #0x14]
	mov r1, #0x50
	mul r1, r0
	add r7, r6, #4
	add r0, r7, r1
	str r1, [sp, #0x24]
	ldr r1, [r6, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #0xc
	str r2, [sp, #0x10]
	bl sub_02023790
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, _02221DE8 ; =0x00001FA8
	lsl r2, r1, #2
	ldr r1, _02221DEC ; =0x02228EC4
	ldr r0, [r6, r0]
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r0, [r7, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221DF0 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0200B5CC
	ldr r0, _02221DF0 ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	ldr r0, [sp, #0x10]
	add r3, sp, #0x38
	cmp r0, #0
	bne _02221CD6
	ldrb r7, [r3, #0x14]
	mov r0, #0xff
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, _02221DF4 ; =0x000F0E00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #0x10]
	add r0, r5, r4
	bl sub_0201D78C
	b _02221CF2
_02221CD6:
	ldrb r7, [r3, #0x14]
	mov r0, #0xff
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, _02221DF8 ; =0x00070809
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #0x10]
	add r0, r5, r4
	bl sub_0201D78C
_02221CF2:
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0x16]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02221DD8
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0x17]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _02221DD8
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _02221D76
	ldr r0, _02221DE8 ; =0x00001FA8
	mov r1, #0x10
	ldr r0, [r6, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	str r0, [sp, #0x28]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x28]
	str r7, [sp]
	lsl r1, r1, #3
	sub r3, r1, r0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02221D5A
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221DFC ; =0x00070800
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _02221D6E
_02221D5A:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221E00 ; =0x000A0B00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02221D6E:
	add r0, r6, #0
	bl sub_020237BC
	b _02221DD8
_02221D76:
	cmp r0, #1
	bne _02221DD8
	ldr r0, _02221DE8 ; =0x00001FA8
	mov r1, #0x11
	ldr r0, [r6, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	str r0, [sp, #0x2c]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x2c]
	str r7, [sp]
	lsl r1, r1, #3
	sub r3, r1, r0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02221DBE
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r1, #0
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _02221DD2
_02221DBE:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221E04 ; =0x000C0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02221DD2:
	add r0, r6, #0
	bl sub_020237BC
_02221DD8:
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221DE4: .word 0x00002070
_02221DE8: .word 0x00001FA8
_02221DEC: .word 0x02228EC4
_02221DF0: .word 0x00001FAC
_02221DF4: .word 0x000F0E00
_02221DF8: .word 0x00070809
_02221DFC: .word 0x00070800
_02221E00: .word 0x000A0B00
_02221E04: .word 0x000C0D00
	thumb_func_end ov13_02221C54

	thumb_func_start ov13_02221E08
ov13_02221E08: ; 0x02221E08
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02221E4C ; =0x00002070
	lsl r4, r1, #4
	ldr r1, [r5, r0]
	add r3, #8
	add r1, r1, r4
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	mov r3, #0x50
	mul r3, r2
	str r1, [sp, #0xc]
	add r2, r5, r3
	ldrb r2, [r2, #0x1a]
	sub r0, #0xcc
	ldr r0, [r5, r0]
	lsl r2, r2, #0x19
	mov r1, #1
	lsr r2, r2, #0x19
	mov r3, #3
	bl sub_0200C648
	ldr r0, _02221E4C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221E4C: .word 0x00002070
	thumb_func_end ov13_02221E08

	thumb_func_start ov13_02221E50
ov13_02221E50: ; 0x02221E50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x50
	add r7, r3, #0
	mul r0, r2
	add r3, r5, #4
	add r0, r3, r0
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	ldrb r6, [r0, #0x10]
	ldr r0, _02221EC8 ; =0x00002070
	lsl r4, r1, #4
	ldr r1, [r5, r0]
	sub r0, #0xcc
	add r1, r1, r4
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, r0]
	ldrh r1, [r1, #0x10]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	add r3, r7, #0
	ldr r2, _02221ECC ; =0x00001FA4
	str r6, [sp]
	ldr r0, [r5, r2]
	add r2, #0xcc
	ldr r2, [r5, r2]
	mov r1, #0
	add r2, r2, r4
	add r3, #0x18
	bl sub_0200C578
	ldr r0, _02221EC8 ; =0x00002070
	add r7, #0x20
	ldr r1, [r5, r0]
	sub r0, #0xcc
	add r1, r1, r4
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, r0]
	ldrh r1, [r1, #0x12]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
	ldr r0, _02221EC8 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221EC8: .word 0x00002070
_02221ECC: .word 0x00001FA4
	thumb_func_end ov13_02221E50

	thumb_func_start ov13_02221ED0
ov13_02221ED0: ; 0x02221ED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x50
	str r1, [sp, #8]
	mul r0, r2
	add r1, r4, #4
	str r3, [sp, #0xc]
	add r5, r1, r0
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	mov r2, #0x30
	mov r7, #1
	bl sub_0208C0BC
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02221F2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221F0A: ; jump table
	.short _02221F14 - _02221F0A - 2 ; case 0
	.short _02221F2C - _02221F0A - 2 ; case 1
	.short _02221F28 - _02221F0A - 2 ; case 2
	.short _02221F26 - _02221F0A - 2 ; case 3
	.short _02221F26 - _02221F0A - 2 ; case 4
_02221F14:
	ldr r0, _02221FA4 ; =0x00002070
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02221F26:
	b _02221F2E
_02221F28:
	mov r7, #3
	b _02221F2E
_02221F2C:
	mov r7, #5
_02221F2E:
	add r0, sp, #0x20
	ldrb r6, [r0, #0x10]
	add r0, r7, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	lsl r5, r0, #4
	ldr r0, [sp, #0x14]
	add r3, r6, #1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	lsl r3, r3, #0x10
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	lsr r1, r1, #0x18
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, [sp, #0x14]
	add r3, r6, #2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	lsl r3, r3, #0x10
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	add r1, r7, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	add r3, r6, #4
	ldr r0, [r4, r0]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x10
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	lsr r1, r1, #0x18
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, _02221FA4 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221FA4: .word 0x00002070
	thumb_func_end ov13_02221ED0

	thumb_func_start ov13_02221FA8
ov13_02221FA8: ; 0x02221FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	mov r0, #0x10
	ldr r1, [r1, #0xc]
	add r7, r2, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, _02222020 ; =0x00001FA8
	mov r1, #8
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r2, #0x50
	mul r2, r7
	str r0, [sp, #0x10]
	ldr r0, _02222024 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0x1c]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B6A0
	ldr r0, _02222024 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222028 ; =0x000F0E00
	lsl r4, r4, #4
	str r0, [sp, #8]
	ldr r0, _0222202C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r2, r6, #0
	add r0, r0, r4
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222202C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222020: .word 0x00001FA8
_02222024: .word 0x00001FAC
_02222028: .word 0x000F0E00
_0222202C: .word 0x00002070
	thumb_func_end ov13_02221FA8

	thumb_func_start ov13_02222030
ov13_02222030: ; 0x02222030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x50
	add r7, r1, #0
	add r1, r4, #4
	mul r0, r2
	add r5, r1, r0
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	bne _02222054
	ldr r0, _022220BC ; =0x00001FA8
	mov r1, #0x14
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	b _0222208A
_02222054:
	ldr r1, [r4, #0]
	mov r0, #0x12
	ldr r1, [r1, #0xc]
	bl sub_02023790
	add r6, r0, #0
	ldr r0, _022220BC ; =0x00001FA8
	mov r1, #9
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r0, _022220C0 ; =0x00001FAC
	ldrh r2, [r5, #0x1a]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, _022220C0 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #0x10]
	bl sub_020237BC
_0222208A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022220C4 ; =0x000F0E00
	lsl r5, r7, #4
	str r0, [sp, #8]
	ldr r0, _022220C8 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r2, r6, #0
	add r0, r0, r5
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _022220C8 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022220BC: .word 0x00001FA8
_022220C0: .word 0x00001FAC
_022220C4: .word 0x000F0E00
_022220C8: .word 0x00002070
	thumb_func_end ov13_02222030

	thumb_func_start ov13_022220CC
ov13_022220CC: ; 0x022220CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _02222164 ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #0x10
	str r3, [sp, #0x14]
	lsl r6, r2, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r0, _02222168 ; =0x00001FA8
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	ldr r0, _0222216C ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B630
	ldr r0, _0222216C ; =0x00001FAC
	ldr r2, [sp, #0x18]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	cmp r0, #2
	bne _02222130
	add r0, r4, r6
	bl sub_0201C294
	add r5, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl sub_02002D7C
	lsl r1, r5, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	b _02222132
_02222130:
	mov r3, #0
_02222132:
	add r1, sp, #0x20
	ldrh r0, [r1, #0x14]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r1, [r1, #0x10]
	add r0, r4, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222164: .word 0x00002070
_02222168: .word 0x00001FA8
_0222216C: .word 0x00001FAC
	thumb_func_end ov13_022220CC

	thumb_func_start ov13_02222170
ov13_02222170: ; 0x02222170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _022221BC ; =0x00001FA8
	str r2, [sp, #0x10]
	add r5, r1, #0
	ldr r0, [r4, r0]
	add r6, r3, #0
	mov r1, #0xe
	bl sub_0200B1EC
	add r7, r0, #0
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022221C0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022221C4 ; =0x00002070
	lsl r5, r5, #4
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x10]
	add r0, r0, r5
	add r2, r7, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, _022221C4 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022221BC: .word 0x00001FA8
_022221C0: .word 0x000F0E00
_022221C4: .word 0x00002070
	thumb_func_end ov13_02222170

	thumb_func_start ov13_022221C8
ov13_022221C8: ; 0x022221C8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02222220 ; =0x00002050
	add r5, r1, #0
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, _02222220 ; =0x00002050
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02222224 ; =0x00001FA8
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222228 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, _02222220 ; =0x00002050
	add r2, r5, #0
	add r0, r4, r0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, _02222220 ; =0x00002050
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222220: .word 0x00002050
_02222224: .word 0x00001FA8
_02222228: .word 0x00010200
	thumb_func_end ov13_022221C8

	thumb_func_start ov13_0222222C
ov13_0222222C: ; 0x0222222C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _02222288 ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r3]
	sub r3, #0xc8
	ldr r0, [r0, r3]
	add r1, r2, #0
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #2
	add r1, r7, #0
	mov r2, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222228C ; =0x00070809
	lsl r3, r3, #3
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r6
	str r0, [sp, #0xc]
	add r0, r5, r4
	mov r1, #2
	add r2, r7, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222288: .word 0x00002070
_0222228C: .word 0x00070809
	thumb_func_end ov13_0222222C

	thumb_func_start ov13_02222290
ov13_02222290: ; 0x02222290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x50
	mul r0, r1
	add r2, r5, #4
	add r4, r2, r0
	ldr r1, _0222244C ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x17
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222450 ; =0x000F0E00
	add r0, #0x31
	str r2, [sp, #8]
	ldr r2, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r7, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x18
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x1c]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, _0222245C ; =0x00001FAC
	mov r3, #3
	lsl r2, r2, #0x19
	ldr r0, [r5, r0]
	lsr r2, r2, #0x19
	bl sub_0200B60C
	ldr r0, _0222245C ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	mov r1, #0
	add r0, r6, #0
	add r0, #0xb
	lsl r7, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222450 ; =0x000F0E00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x19
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x20]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222450 ; =0x000F0E00
	add r0, #0x41
	str r2, [sp, #8]
	ldr r2, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r3, r1, #0
	add r0, r2, r0
	ldr r2, [sp, #0x20]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x1a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #0xe
	bl sub_02023790
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x16]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _022223B0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222245C ; =0x00001FAC
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x1c]
	ldr r0, [r5, r0]
	sub r2, r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	b _022223C4
_022223B0:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222245C ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	mov r3, #6
	bl sub_0200B60C
_022223C4:
	ldr r0, _0222245C ; =0x00001FAC
	ldr r1, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, _02222454 ; =0x00002070
	add r6, #0xc
	ldr r0, [r5, r0]
	lsl r4, r6, #4
	add r0, r0, r4
	bl sub_0201C294
	add r6, r0, #0
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r1, r6, #3
	sub r0, r1, r0
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222460 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, _02222454 ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r7
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222244C: .word 0x00002075
_02222450: .word 0x000F0E00
_02222454: .word 0x00002070
_02222458: .word 0x00001FA8
_0222245C: .word 0x00001FAC
_02222460: .word 0x00010200
	thumb_func_end ov13_02222290

	thumb_func_start ov13_02222464
ov13_02222464: ; 0x02222464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222548 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x20
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222254C ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222550 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xe0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222554 ; =0x00001FA8
	mov r1, #0x21
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222558 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xa]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222558 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #5
	lsl r4, r0, #4
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222255C ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222550 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl sub_0201A9A4
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02222548: .word 0x00002075
_0222254C: .word 0x000F0E00
_02222550: .word 0x00002070
_02222554: .word 0x00001FA8
_02222558: .word 0x00001FAC
_0222255C: .word 0x00010200
	thumb_func_end ov13_02222464

	thumb_func_start ov13_02222560
ov13_02222560: ; 0x02222560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222644 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x22
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222648 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222264C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xf0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222650 ; =0x00001FA8
	mov r1, #0x23
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222654 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xc]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222654 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #6
	lsl r4, r0, #4
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222658 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222264C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl sub_0201A9A4
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02222644: .word 0x00002075
_02222648: .word 0x000F0E00
_0222264C: .word 0x00002070
_02222650: .word 0x00001FA8
_02222654: .word 0x00001FAC
_02222658: .word 0x00010200
	thumb_func_end ov13_02222560

	thumb_func_start ov13_0222265C
ov13_0222265C: ; 0x0222265C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222744 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x28
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02222748 ; =0x000F0E00
	add r2, r2, #1
	str r0, [sp, #8]
	ldr r0, _0222274C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r2
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222750 ; =0x00001FA8
	mov r1, #0x29
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222754 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xe]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222754 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #7
	lsl r4, r0, #4
	ldr r0, _0222274C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222758 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222274C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222274C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222274C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222744: .word 0x00002075
_02222748: .word 0x000F0E00
_0222274C: .word 0x00002070
_02222750: .word 0x00001FA8
_02222754: .word 0x00001FAC
_02222758: .word 0x00010200
	thumb_func_end ov13_0222265C

	thumb_func_start ov13_0222275C
ov13_0222275C: ; 0x0222275C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r0, #0
	ldr r1, _02222844 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r4, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, r1]
	mov r1, #0x24
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222848 ; =0x000F0E00
	add r0, #0x11
	str r2, [sp, #8]
	ldr r2, _0222284C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222850 ; =0x00001FA8
	mov r1, #0x25
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, [r4, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222854 ; =0x00001FAC
	add r2, r4, r2
	ldrh r2, [r2, #0x10]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222854 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0222284C ; =0x00002070
	add r5, #8
	ldr r0, [r4, r0]
	lsl r5, r5, #4
	add r0, r0, r5
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222858 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222284C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222284C ; =0x00002070
	ldr r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222284C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222844: .word 0x00002075
_02222848: .word 0x000F0E00
_0222284C: .word 0x00002070
_02222850: .word 0x00001FA8
_02222854: .word 0x00001FAC
_02222858: .word 0x00010200
	thumb_func_end ov13_0222275C

	thumb_func_start ov13_0222285C
ov13_0222285C: ; 0x0222285C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r0, #0
	ldr r1, _02222944 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r4, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, r1]
	mov r1, #0x26
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222948 ; =0x000F0E00
	add r0, #0x21
	str r2, [sp, #8]
	ldr r2, _0222294C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222950 ; =0x00001FA8
	mov r1, #0x27
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, [r4, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222954 ; =0x00001FAC
	add r2, r4, r2
	ldrh r2, [r2, #0x12]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222954 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0222294C ; =0x00002070
	add r5, #9
	ldr r0, [r4, r0]
	lsl r5, r5, #4
	add r0, r0, r5
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222958 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222294C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222294C ; =0x00002070
	ldr r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222294C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222944: .word 0x00002075
_02222948: .word 0x000F0E00
_0222294C: .word 0x00002070
_02222950: .word 0x00001FA8
_02222954: .word 0x00001FAC
_02222958: .word 0x00010200
	thumb_func_end ov13_0222285C

	thumb_func_start ov13_0222295C
ov13_0222295C: ; 0x0222295C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x50
	mul r0, r1
	add r2, r5, #4
	add r7, r2, r0
	ldr r1, _02222ADC ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x1c
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AE0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xd0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1f
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x14]
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201C294
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0xf
	lsr r6, r0, #0x10
	add r0, r4, #4
	mov r1, #0
	lsl r4, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	add r3, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	str r0, [sp, #0x1c]
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222AF0 ; =0x00001FAC
	ldrh r2, [r7, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222AF0 ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	sub r3, r6, r3
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1e
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222AF0 ; =0x00001FAC
	ldrh r2, [r7, #0x12]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222AF0 ; =0x00001FAC
	ldr r1, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	mov r1, #0
	ldr r3, [sp, #0x14]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r6, r3
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl sub_0201A9A4
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222ADC: .word 0x00002075
_02222AE0: .word 0x000F0E00
_02222AE4: .word 0x00002070
_02222AE8: .word 0x00001FA8
_02222AEC: .word 0x00010200
_02222AF0: .word 0x00001FAC
	thumb_func_end ov13_0222295C

	thumb_func_start ov13_02222AF4
ov13_02222AF4: ; 0x02222AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02222B60 ; =0x00002075
	add r6, r1, #0
	ldrb r1, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #0x99
	add r4, r1, #0
	mov r0, #0x16
	mul r4, r0
	ldr r3, [r3, #0xc]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x50
	mul r1, r6
	add r1, r5, r1
	ldrh r1, [r1, #0x1c]
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	add r0, r4, #2
	lsl r4, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222B64 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222B68 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r4
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _02222B68 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222B60: .word 0x00002075
_02222B64: .word 0x00010200
_02222B68: .word 0x00002070
	thumb_func_end ov13_02222AF4

	thumb_func_start ov13_02222B6C
ov13_02222B6C: ; 0x02222B6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r2, _02222BAC ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x33
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222BB0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02222BAC: .word 0x00002070
_02222BB0: .word 0x000F0E00
	thumb_func_end ov13_02222B6C

	thumb_func_start ov13_02222BB4
ov13_02222BB4: ; 0x02222BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	add r5, r0, #0
	ldr r2, _02222C90 ; =0x00002070
	ldr r0, [sp, #0x10]
	lsl r6, r1, #4
	ldr r4, [r5, r2]
	cmp r0, #0
	bne _02222C0E
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x32
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222C94 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	b _02222C84
_02222C0E:
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x34
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222C98 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222C98 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222C94 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
_02222C84:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222C90: .word 0x00002070
_02222C94: .word 0x00010200
_02222C98: .word 0x00001FAC
	thumb_func_end ov13_02222BB4

	thumb_func_start ov13_02222C9C
ov13_02222C9C: ; 0x02222C9C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r2, _02222CDC ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x30
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222CE0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02222CDC: .word 0x00002070
_02222CE0: .word 0x000F0E00
	thumb_func_end ov13_02222C9C

	thumb_func_start ov13_02222CE4
ov13_02222CE4: ; 0x02222CE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	add r5, r0, #0
	ldr r2, _02222DC0 ; =0x00002070
	ldr r0, [sp, #0x10]
	lsl r6, r1, #4
	ldr r4, [r5, r2]
	cmp r0, #1
	bhi _02222D3E
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x32
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222DC4 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	b _02222DB4
_02222D3E:
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x31
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222DC8 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222DC8 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222DC4 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
_02222DB4:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222DC0: .word 0x00002070
_02222DC4: .word 0x00010200
_02222DC8: .word 0x00001FAC
	thumb_func_end ov13_02222CE4

	thumb_func_start ov13_02222DCC
ov13_02222DCC: ; 0x02222DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r3, r0, #0
	ldr r0, _02222E20 ; =0x00002070
	add r6, r2, #0
	ldr r5, [r3, r0]
	ldr r3, [r3, #0]
	lsl r4, r1, #4
	ldr r2, _02222E24 ; =0x00000286
	ldr r3, [r3, #0xc]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222E28 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222E20: .word 0x00002070
_02222E24: .word 0x00000286
_02222E28: .word 0x00010200
	thumb_func_end ov13_02222DCC

	thumb_func_start ov13_02222E2C
ov13_02222E2C: ; 0x02222E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, _02222E8C ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r6, r0]
	add r0, r2, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_0209577C
	ldr r3, [r6, #0]
	add r7, r0, #0
	ldr r3, [r3, #0xc]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	bl sub_0200B144
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222E90 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222E8C: .word 0x00002070
_02222E90: .word 0x00010200
	thumb_func_end ov13_02222E2C

	thumb_func_start ov13_02222E94
ov13_02222E94: ; 0x02222E94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02222EF0 ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x35
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222EF4 ; =0x000F0E00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222EF0: .word 0x00002070
_02222EF4: .word 0x000F0E00
	thumb_func_end ov13_02222E94

	thumb_func_start ov13_02222EF8
ov13_02222EF8: ; 0x02222EF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _02222F6C ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r3]
	cmp r2, #0
	beq _02222F10
	cmp r2, #1
	beq _02222F1E
	cmp r2, #2
	beq _02222F2C
	b _02222F38
_02222F10:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x36
	bl sub_0200B1EC
	add r6, r0, #0
	b _02222F38
_02222F1E:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x38
	bl sub_0200B1EC
	add r6, r0, #0
	b _02222F38
_02222F2C:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x37
	bl sub_0200B1EC
	add r6, r0, #0
_02222F38:
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	mov r3, #0x38
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222F70 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02222F6C: .word 0x00002070
_02222F70: .word 0x00010200
	thumb_func_end ov13_02222EF8

	thumb_func_start ov13_02222F74
ov13_02222F74: ; 0x02222F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02223098 ; =0x00002070
	lsl r6, r1, #4
	ldr r4, [r5, r0]
	sub r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0x2e
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x1c]
	add r0, r4, r6
	bl sub_0201C294
	lsl r1, r0, #3
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	sub r0, r1, r0
	lsr r7, r0, #1
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _022230A0 ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #6
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r1, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x24]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r4, r6
	sub r3, r7, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, _022230A0 ; =0x00001FA8
	mov r1, #0x2d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x28]
	ldr r1, [r1, #0xc]
	mov r0, #6
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r1, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x28]
	bl sub_0200C388
	mov r1, #0
	ldr r3, [sp, #0x1c]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r7, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223098: .word 0x00002070
_0222309C: .word 0x000F0E00
_022230A0: .word 0x00001FA8
_022230A4: .word 0x00001FAC
	thumb_func_end ov13_02222F74

	thumb_func_start ov13_022230A8
ov13_022230A8: ; 0x022230A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsl r4, r1, #4
	ldr r1, [r0, #0]
	ldr r2, _02223110 ; =0x00002070
	add r1, #0x34
	ldrb r1, [r1]
	ldr r5, [r0, r2]
	cmp r1, #4
	bne _022230C8
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x3b
	bl sub_0200B1EC
	b _022230D2
_022230C8:
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x3a
	bl sub_0200B1EC
_022230D2:
	add r6, r0, #0
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223114 ; =0x00070809
	mov r3, #0x60
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r7
	str r0, [sp, #0xc]
	add r0, r5, r4
	mov r1, #2
	add r2, r6, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223110: .word 0x00002070
_02223114: .word 0x00070809
	thumb_func_end ov13_022230A8

	thumb_func_start ov13_02223118
ov13_02223118: ; 0x02223118
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02223170 ; =0x0000207A
	ldrb r1, [r4, r0]
	cmp r1, #7
	bne _0222312E
	sub r0, #0xa
	ldr r5, [r4, r0]
	add r5, #0x80
	b _02223134
_0222312E:
	sub r0, #0xa
	ldr r5, [r4, r0]
	add r5, #0x50
_02223134:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223174 ; =0x00001FA8
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223178 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02223170: .word 0x0000207A
_02223174: .word 0x00001FA8
_02223178: .word 0x00010200
	thumb_func_end ov13_02223118

	thumb_func_start ov13_0222317C
ov13_0222317C: ; 0x0222317C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _022232B8 ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #6
	lsl r6, r2, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2e
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x1c]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	mov r3, #0x50
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x20]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _022232C4 ; =0x00001FAC
	ldrb r2, [r2, #3]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _022232C4 ; =0x00001FAC
	ldr r2, [sp, #0x20]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r1, #0
	add r3, #0x50
	add r0, r4, r6
	add r2, r7, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x1c]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _022232C4 ; =0x00001FAC
	ldrb r2, [r2, #2]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _022232C4 ; =0x00001FAC
	ldr r2, [sp, #0x24]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	mov r3, #0x50
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	add r2, r7, #0
	sub r3, r3, r5
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022232B8: .word 0x00002070
_022232BC: .word 0x00001FA8
_022232C0: .word 0x000F0E00
_022232C4: .word 0x00001FAC
	thumb_func_end ov13_0222317C

	thumb_func_start ov13_022232C8
ov13_022232C8: ; 0x022232C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _0222338C ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #6
	lsl r6, r2, #4
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, _02223390 ; =0x00001FA8
	mov r1, #0x2b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r7, #0x28
	mov r0, #0x50
	sub r0, r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r7, #0x10
	str r0, [sp, #4]
	add r0, r4, r6
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0x18
	bl sub_0201AE78
	ldr r0, _02223390 ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _02223394 ; =0x00001FAC
	ldrb r2, [r2, #2]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _02223394 ; =0x00001FAC
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x14]
	add r2, r0, #0
	bl sub_02002D7C
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223398 ; =0x000F0E00
	mov r3, #0x50
	str r0, [sp, #8]
	mov r1, #0
	ldr r2, [sp, #0x14]
	add r0, r4, r6
	sub r3, r3, r5
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222338C: .word 0x00002070
_02223390: .word 0x00001FA8
_02223394: .word 0x00001FAC
_02223398: .word 0x000F0E00
	thumb_func_end ov13_022232C8

	thumb_func_start ov13_0222339C
ov13_0222339C: ; 0x0222339C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _02223422
	add r0, r4, #0
	add r7, r5, #0
	str r0, [sp, #8]
	add r6, r5, #0
	add r7, #0x1b
_022233BA:
	ldr r0, _02223444 ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #8]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _0222340A
	mov r0, #0x20
	str r0, [sp]
	mov r0, #8
	lsl r3, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl ov13_02221C54
	ldrb r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _022233F6
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov13_02223448
_022233F6:
	ldr r0, [r6, #4]
	bl sub_0208E9F0
	cmp r0, #7
	bne _0222340A
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov13_022234A8
_0222340A:
	ldr r0, [sp, #8]
	add r6, #0x50
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r7, #0x50
	ldr r0, [r0, #0]
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _022233BA
_02223422:
	ldr r0, [r5, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #2
	bne _02223438
	add r0, r5, #0
	mov r1, #7
	bl ov13_022221C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02223438:
	add r0, r5, #0
	mov r1, #6
	bl ov13_022221C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223444: .word 0x00002070
	thumb_func_end ov13_0222339C

	thumb_func_start ov13_02223448
ov13_02223448: ; 0x02223448
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #8
	add r6, r1, #0
	str r0, [sp, #4]
	ldr r0, _022234A4 ; =0x00002070
	lsl r4, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, r0, r4
	mov r2, #0x38
	mov r3, #0x20
	bl sub_0201AE78
	mov r2, #0x40
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022234A4 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #0x18
	add r0, r0, r4
	bl sub_0201AE78
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #0x38
	bl ov13_02221E50
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #0x40
	bl ov13_02221ED0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022234A4: .word 0x00002070
	thumb_func_end ov13_02223448

	thumb_func_start ov13_022234A8
ov13_022234A8: ; 0x022234A8
	push {r3, lr}
	mov r2, #0x50
	mul r2, r1
	add r2, r0, r2
	ldrb r2, [r2, #0x1b]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _022234C4
	mov r2, #0x20
	str r2, [sp]
	add r2, r1, #0
	mov r3, #0
	bl ov13_02221E08
_022234C4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_022234A8

	thumb_func_start ov13_022234C8
ov13_022234C8: ; 0x022234C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02223550
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov13_0222222C
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r4, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02223536
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x12
	bl ov13_0222222C
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x13
	bl ov13_0222222C
	pop {r4, pc}
_02223536:
	ldr r0, _0222354C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _0222354C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
_0222354C: .word 0x00002070
	thumb_func_end ov13_022234C8

	thumb_func_start ov13_02223550
ov13_02223550: ; 0x02223550
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0222369C ; =0x00002070
	add r6, r1, #0
	ldr r0, [r4, r0]
	ldr r1, [r4, #0]
	str r0, [sp, #0x18]
	mov r0, #0x50
	add r7, r6, #0
	add r5, r4, #4
	mul r7, r0
	add r0, r5, r7
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #0xc
	bl sub_02023790
	str r0, [sp, #0x10]
	ldr r0, _022236A0 ; =0x00001FA8
	ldr r1, _022236A4 ; =0x02228EC4
	lsl r2, r6, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, r7]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _022236A8 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200B5CC
	ldr r0, _022236A8 ; =0x00001FAC
	ldr r1, [sp, #0x10]
	ldr r0, [r4, r0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	mov r5, #0
	ldrb r0, [r0, #0x16]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _022235E4
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #0x17]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _022235E4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _022235D4
	ldr r0, _022236A0 ; =0x00001FA8
	mov r1, #0x10
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	b _022235E4
_022235D4:
	cmp r0, #1
	bne _022235E4
	ldr r0, _022236A0 ; =0x00001FA8
	mov r1, #0x11
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
_022235E4:
	ldr r1, [sp, #0x10]
	mov r0, #2
	mov r2, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r5, #0
	bne _022235FC
	mov r7, #0
	add r4, r7, #0
	b _0222360C
_022235FC:
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #8
_0222360C:
	ldr r0, [sp, #0x18]
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r6
	sub r0, r0, r7
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r7, r0, #0x18
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236AC ; =0x00070809
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r3, r7, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	cmp r5, #0
	beq _02223692
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #0x17]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _02223670
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236B0 ; =0x000A0B00
	add r3, r7, r6
	str r0, [sp, #8]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _0222368C
_02223670:
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236B4 ; =0x000C0D00
	add r3, r7, r6
	str r0, [sp, #8]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
_0222368C:
	add r0, r5, #0
	bl sub_020237BC
_02223692:
	ldr r0, [sp, #0x18]
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222369C: .word 0x00002070
_022236A0: .word 0x00001FA8
_022236A4: .word 0x02228EC4
_022236A8: .word 0x00001FAC
_022236AC: .word 0x00070809
_022236B0: .word 0x000A0B00
_022236B4: .word 0x000C0D00
	thumb_func_end ov13_02223550

	thumb_func_start ov13_022236B8
ov13_022236B8: ; 0x022236B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _022237E8 ; =0x00002075
	mov r1, #6
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	ldr r1, [r5, r0]
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #2
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #3
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #4
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _022237EC ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r1, r6, #0
	bl ov13_02221C54
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x34
	mov r4, #0
	add r7, r6, #1
	str r0, [sp, #0x1c]
_02223752:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	lsl r1, r4, #3
	add r0, r0, r2
	str r1, [sp, #0x20]
	ldrh r1, [r0, r1]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _02223794
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022237F0 ; =0x00070809
	ldr r3, _022237F4 ; =0x02228EB0
	lsl r6, r4, #2
	str r0, [sp, #8]
	ldr r3, [r3, r6]
	add r0, r5, #0
	add r2, r7, r4
	bl ov13_022220CC
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r1, r1, r2
	add r2, r7, r4
	bl ov13_0222317C
_02223794:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02223752
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x12
	bl ov13_0222222C
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r1, _022237E8 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022237E8: .word 0x00002075
_022237EC: .word 0x00002070
_022237F0: .word 0x00070809
_022237F4: .word 0x02228EB0
	thumb_func_end ov13_022236B8

	thumb_func_start ov13_022237F8
ov13_022237F8: ; 0x022237F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02223A08 ; =0x00002075
	mov r1, #0x16
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	add r4, r2, #0
	mul r4, r1
	ldr r1, [r5, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xa
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xb
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #5
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #6
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #7
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #9
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #3
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r1, r4, #0
	bl ov13_02221C54
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222295C
	mov r3, #0
	str r3, [sp]
	ldr r2, [r5, #0]
	add r1, r4, #0
	ldrb r2, [r2, #0x11]
	add r0, r5, #0
	add r1, #0xa
	bl ov13_02221ED0
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222290
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222464
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222560
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222265C
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222275C
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222285C
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrb r2, [r2, #0x11]
	add r1, r4, #1
	bl ov13_02221FA8
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrb r2, [r2, #0x11]
	add r1, r4, #3
	bl ov13_02222030
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222AF4
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0x13
	bl ov13_0222222C
	ldr r1, _02223A08 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02223A08: .word 0x00002075
_02223A0C: .word 0x00002070
	thumb_func_end ov13_022237F8

	thumb_func_start ov13_02223A10
ov13_02223A10: ; 0x02223A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02223B64 ; =0x00002075
	mov r1, #0xb
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	ldr r0, [r5, r0]
	add r4, r2, #0
	mul r4, r1
	add r0, #0x60
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x80
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x90
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xa0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #3
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #5
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	add r2, r5, #0
	ldrb r3, [r0, #0x11]
	add r0, #0x34
	ldrb r0, [r0]
	mov r1, #0x50
	add r2, #0x34
	mul r1, r3
	add r1, r2, r1
	lsl r0, r0, #3
	add r7, r1, r0
	mov r2, #0
	str r2, [sp]
	add r0, r5, #0
	mov r1, #6
	str r2, [sp, #4]
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #7
	add r3, r2, #0
	bl ov13_02222170
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223B6C ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldrh r1, [r7]
	add r3, #0x34
	ldrb r3, [r3]
	add r0, r5, #0
	lsl r6, r3, #2
	ldr r3, _02223B70 ; =0x02228EB0
	ldr r3, [r3, r6]
	bl ov13_022220CC
	add r0, r5, #0
	mov r1, #8
	bl ov13_02222B6C
	ldrb r2, [r7, #6]
	add r0, r5, #0
	add r1, r4, #2
	bl ov13_02222BB4
	add r0, r5, #0
	mov r1, #9
	bl ov13_02222C9C
	ldrb r2, [r7, #7]
	add r0, r5, #0
	add r1, r4, #3
	bl ov13_02222CE4
	ldrh r2, [r7]
	add r0, r5, #0
	add r1, r4, #4
	bl ov13_02222DCC
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222E94
	ldrb r2, [r7, #5]
	add r0, r5, #0
	add r1, r4, #5
	bl ov13_02222EF8
	ldrb r2, [r7, #2]
	ldrb r3, [r7, #3]
	add r0, r5, #0
	add r1, r4, #1
	bl ov13_02222F74
	ldr r1, _02223B64 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223B64: .word 0x00002075
_02223B68: .word 0x00002070
_02223B6C: .word 0x000F0E00
_02223B70: .word 0x02228EB0
	thumb_func_end ov13_02223A10

	thumb_func_start ov13_02223B74
ov13_02223B74: ; 0x02223B74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x10]
	add r0, #0x34
	ldr r7, _02223C94 ; =0x02228EB0
	add r4, r6, #0
	str r0, [sp, #0x10]
_02223BE0:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r1, [r0, r4]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _02223C18
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223C98 ; =0x00070809
	add r2, r6, #1
	str r0, [sp, #8]
	ldr r3, [r7, #0]
	add r0, r5, #0
	bl ov13_022220CC
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, r4
	add r2, r6, #1
	bl ov13_0222317C
_02223C18:
	add r6, r6, #1
	add r4, #8
	add r7, r7, #4
	cmp r6, #4
	blo _02223BE0
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223C98 ; =0x00070809
	mov r2, #5
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r0, [r5, #0]
	mov r1, #5
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r1, sp, #0x14
	strb r0, [r1, #2]
	ldrb r0, [r1, #2]
	mov r2, #5
	strb r0, [r1, #3]
	add r0, r5, #0
	add r1, sp, #0x14
	bl ov13_0222317C
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02223C90: .word 0x00002070
_02223C94: .word 0x02228EB0
_02223C98: .word 0x00070809
	thumb_func_end ov13_02223B74

	thumb_func_start ov13_02223C9C
ov13_02223C9C: ; 0x02223C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x90
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xa0
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x80
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xb0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov13_02222170
	add r0, r5, #0
	mov r1, #4
	bl ov13_02222B6C
	add r0, r5, #0
	mov r1, #5
	bl ov13_02222C9C
	add r0, r5, #0
	mov r1, #9
	bl ov13_02222E94
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r3, [r0]
	cmp r3, #4
	bhs _02223DD8
	ldrb r1, [r1, #0x11]
	add r2, r5, #0
	mov r0, #0x50
	add r2, #0x34
	mul r0, r1
	add r7, r2, r0
	lsl r0, r3, #3
	str r0, [sp, #0xc]
	add r4, r7, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223E60 ; =0x000F0E00
	lsl r6, r3, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _02223E64 ; =0x02228EB0
	ldrh r1, [r7, r1]
	ldr r3, [r3, r6]
	add r0, r5, #0
	mov r2, #1
	bl ov13_022220CC
	ldrb r2, [r4, #6]
	add r0, r5, #0
	mov r1, #6
	bl ov13_02222BB4
	ldrb r2, [r4, #7]
	add r0, r5, #0
	mov r1, #7
	bl ov13_02222CE4
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldrh r2, [r7, r2]
	mov r1, #8
	bl ov13_02222DCC
	ldrb r2, [r4, #5]
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222EF8
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	add r0, r5, #0
	mov r1, #3
	bl ov13_02222F74
	b _02223E4E
_02223DD8:
	ldrh r0, [r1, #0x24]
	mov r1, #5
	bl sub_020790C4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223E60 ; =0x000F0E00
	mov r2, #1
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrh r2, [r2, #0x24]
	mov r1, #8
	bl ov13_02222DCC
	ldr r0, [r5, #0]
	mov r1, #4
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl ov13_02222BB4
	ldr r0, [r5, #0]
	mov r1, #2
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #7
	bl ov13_02222CE4
	ldr r0, [r5, #0]
	mov r1, #1
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222EF8
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r4, #0
	bl ov13_02222F74
_02223E4E:
	add r0, r5, #0
	mov r1, #0xb
	bl ov13_022230A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223E5C: .word 0x00002070
_02223E60: .word 0x000F0E00
_02223E64: .word 0x02228EB0
	thumb_func_end ov13_02223C9C

	thumb_func_start ov13_02223E68
ov13_02223E68: ; 0x02223E68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x10]
	add r0, #0x34
	ldr r7, _02223F54 ; =0x02228EB0
	add r4, r6, #0
	str r0, [sp, #0x10]
_02223EC8:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r1, [r0, r4]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _02223F00
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223F58 ; =0x00070809
	add r2, r6, #1
	str r0, [sp, #8]
	ldr r3, [r7, #0]
	add r0, r5, #0
	bl ov13_022220CC
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, r4
	add r2, r6, #1
	bl ov13_0222317C
_02223F00:
	add r6, r6, #1
	add r4, #8
	add r7, r7, #4
	cmp r6, #4
	blo _02223EC8
	ldr r2, [r5, #0]
	mov r1, #0x25
	ldrh r0, [r2, #0x22]
	ldr r2, [r2, #0xc]
	bl sub_0207CFF0
	cmp r0, #0
	bne _02223F22
	add r0, r5, #0
	mov r1, #0x5e
	bl ov13_022221C8
_02223F22:
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02223F50: .word 0x00002070
_02223F54: .word 0x02228EB0
_02223F58: .word 0x00070809
	thumb_func_end ov13_02223E68

	thumb_func_start ov13_02223F5C
ov13_02223F5C: ; 0x02223F5C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	add r3, r1, #0
	ldrb r5, [r4, #0x11]
	add r1, r0, #0
	mov r4, #0x50
	add r1, #0x34
	mul r4, r5
	add r4, r1, r4
	lsl r1, r2, #3
	add r1, r4, r1
	add r2, r3, #0
	bl ov13_022232C8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov13_02223F5C

	thumb_func_start ov13_02223F7C
ov13_02223F7C: ; 0x02223F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov13_02222170
	ldr r0, _022240D4 ; =0x00001FA8
	mov r1, #0x39
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	mov r3, #0x60
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _022240D0 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, _022240D0 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r3, [r0]
	cmp r3, #4
	bhs _0222408A
	ldrb r1, [r1, #0x11]
	add r2, r5, #0
	mov r0, #0x50
	add r2, #0x34
	mul r0, r1
	add r4, r2, r0
	lsl r7, r3, #3
	add r0, r4, r7
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	lsl r6, r3, #2
	str r0, [sp, #8]
	ldr r3, _022240DC ; =0x02228EB0
	ldrh r1, [r4, r7]
	ldr r3, [r3, r6]
	add r0, r5, #0
	mov r2, #1
	bl ov13_022220CC
	ldrh r2, [r4, r7]
	add r0, r5, #0
	mov r1, #5
	bl ov13_02222E2C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldrb r2, [r2, #2]
	ldrb r3, [r3, #3]
	add r0, r5, #0
	mov r1, #3
	bl ov13_02222F74
	b _022240C4
_0222408A:
	ldrh r0, [r1, #0x24]
	mov r1, #5
	bl sub_020790C4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	mov r2, #1
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrh r2, [r2, #0x24]
	mov r1, #5
	bl ov13_02222E2C
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r4, #0
	bl ov13_02222F74
_022240C4:
	add r0, r5, #0
	mov r1, #6
	bl ov13_022230A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022240D0: .word 0x00002070
_022240D4: .word 0x00001FA8
_022240D8: .word 0x000F0E00
_022240DC: .word 0x02228EB0
	thumb_func_end ov13_02223F7C

	thumb_func_start ov13_022240E0
ov13_022240E0: ; 0x022240E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02224104 ; =0x00002060
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, _02224104 ; =0x00002060
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	add r0, r4, #0
	bl ov13_02224108
	pop {r4, pc}
	; .align 2, 0
_02224104: .word 0x00002060
	thumb_func_end ov13_022240E0

	thumb_func_start ov13_02224108
ov13_02224108: ; 0x02224108
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov16_0223EDF0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0222413C ; =0x00002060
	str r3, [sp, #8]
	add r0, r4, r2
	sub r2, #0xb0
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02224140 ; =0x0000207B
	strb r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0222413C: .word 0x00002060
_02224140: .word 0x0000207B
	thumb_func_end ov13_02224108

	thumb_func_start ov13_02224144
ov13_02224144: ; 0x02224144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldrh r0, [r0, #0x22]
	ldr r2, [r2, #0xc]
	bl sub_0207CF48
	ldr r2, [sp, #0xc]
	add r6, r0, #0
	ldrb r3, [r2, #0x11]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r2, r2, r3
	add r2, #0x2c
	ldrb r2, [r2]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0x28]
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xf
	mov r4, #0
	bl sub_0207D014
	cmp r0, #0
	beq _02224198
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02224198:
	add r0, r6, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _022241AC
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241AC:
	add r0, r6, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _022241C0
	mov r0, #4
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241C0:
	add r0, r6, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _022241D4
	mov r0, #8
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241D4:
	add r0, r6, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _022241E8
	mov r0, #0x10
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241E8:
	add r0, r6, #0
	mov r1, #0x14
	bl sub_0207D014
	cmp r0, #0
	beq _022241FC
	mov r0, #0x20
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241FC:
	add r0, r6, #0
	mov r1, #0x15
	bl sub_0207D014
	cmp r0, #0
	beq _02224210
	mov r0, #0x40
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02224210:
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r5, r0
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	bne _0222425A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222425A
	ldr r0, _02224494 ; =0x00001FA8
	mov r1, #0x58
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222425A:
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _022242B6
	ldr r0, _02224494 ; =0x00001FA8
	mov r1, #0x52
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r2, [sp, #0xc]
	str r1, [sp, #4]
	ldrb r3, [r2, #0x11]
	mov r2, #0x50
	ldr r0, _02224498 ; =0x00001FAC
	mul r2, r3
	add r2, r5, r2
	ldrh r3, [r2, #0x14]
	ldr r2, [sp, #8]
	ldr r0, [r5, r0]
	sub r2, r2, r3
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022242B6:
	add r0, r6, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	bne _022242CE
	add r0, r6, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _022242DE
_022242CE:
	ldr r2, _02224494 ; =0x00001FA8
	mov r1, #0x57
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _0222448A
_022242DE:
	cmp r4, #1
	ldr r0, _02224494 ; =0x00001FA8
	bne _02224316
	ldr r0, [r5, r0]
	mov r1, #0x5c
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224316:
	cmp r4, #2
	bne _0222434C
	ldr r0, [r5, r0]
	mov r1, #0x53
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222434C:
	cmp r4, #4
	bne _02224382
	ldr r0, [r5, r0]
	mov r1, #0x55
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224382:
	cmp r4, #8
	bne _022243B8
	ldr r0, [r5, r0]
	mov r1, #0x56
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022243B8:
	cmp r4, #0x10
	bne _022243EE
	ldr r0, [r5, r0]
	mov r1, #0x54
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022243EE:
	cmp r4, #0x20
	bne _02224424
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224424:
	cmp r4, #0x40
	bne _0222445A
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222445A:
	ldr r0, [r5, r0]
	mov r1, #0x59
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
_0222448A:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224494: .word 0x00001FA8
_02224498: .word 0x00001FAC
	thumb_func_end ov13_02224144

	thumb_func_start ov13_0222449C
ov13_0222449C: ; 0x0222449C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r3, [r5, #0]
	ldrb r2, [r3, #0x11]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x28]
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, _022244F4 ; =0x00001FA8
	mov r1, #0x5f
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _022244F8 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r0, _022244F8 ; =0x00001FAC
	ldr r2, _022244FC ; =0x00000175
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _022244F8 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022244F4: .word 0x00001FA8
_022244F8: .word 0x00001FAC
_022244FC: .word 0x00000175
	thumb_func_end ov13_0222449C

	.rodata


	.global Unk_ov13_02228EA0
Unk_ov13_02228EA0: ; 0x02228EA0
	.incbin "incbin/overlay13_rodata.bin", 0x1A4, 0x1B4 - 0x1A4

	.global Unk_ov13_02228EB0
Unk_ov13_02228EB0: ; 0x02228EB0
	.incbin "incbin/overlay13_rodata.bin", 0x1B4, 0x1C8 - 0x1B4

	.global Unk_ov13_02228EC4
Unk_ov13_02228EC4: ; 0x02228EC4
	.incbin "incbin/overlay13_rodata.bin", 0x1C8, 0x1E0 - 0x1C8

	.global Unk_ov13_02228EDC
Unk_ov13_02228EDC: ; 0x02228EDC
	.incbin "incbin/overlay13_rodata.bin", 0x1E0, 0x200 - 0x1E0

	.global Unk_ov13_02228EFC
Unk_ov13_02228EFC: ; 0x02228EFC
	.incbin "incbin/overlay13_rodata.bin", 0x200, 0x228 - 0x200

	.global Unk_ov13_02228F24
Unk_ov13_02228F24: ; 0x02228F24
	.incbin "incbin/overlay13_rodata.bin", 0x228, 0x258 - 0x228

	.global Unk_ov13_02228F54
Unk_ov13_02228F54: ; 0x02228F54
	.incbin "incbin/overlay13_rodata.bin", 0x258, 0x288 - 0x258

	.global Unk_ov13_02228F84
Unk_ov13_02228F84: ; 0x02228F84
	.incbin "incbin/overlay13_rodata.bin", 0x288, 0x2C0 - 0x288

	.global Unk_ov13_02228FBC
Unk_ov13_02228FBC: ; 0x02228FBC
	.incbin "incbin/overlay13_rodata.bin", 0x2C0, 0x318 - 0x2C0

	.global Unk_ov13_02229014
Unk_ov13_02229014: ; 0x02229014
	.incbin "incbin/overlay13_rodata.bin", 0x318, 0x378 - 0x318

	.global Unk_ov13_02229074
Unk_ov13_02229074: ; 0x02229074
	.incbin "incbin/overlay13_rodata.bin", 0x378, 0x400 - 0x378

	.global Unk_ov13_022290FC
Unk_ov13_022290FC: ; 0x022290FC
	.incbin "incbin/overlay13_rodata.bin", 0x400, 0x118

