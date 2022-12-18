	.include "macros/function.inc"
	.include "include/ov19_021D8B54.inc"

	

	.text


	thumb_func_start ov19_021D8B54
ov19_021D8B54: ; 0x021D8B54
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021D8C00 ; =0x00000794
	add r6, r1, #0
	str r6, [r5, r0]
	add r4, r2, #0
	sub r0, r0, #4
	str r4, [r5, r0]
	add r0, r6, #0
	str r3, [r5, #0]
	bl ov19_021D77E0
	ldr r1, _021D8C04 ; =0x00000758
	str r0, [r5, r1]
	add r0, r6, #0
	bl ov19_021D77E8
	ldr r1, _021D8C08 ; =0x0000075C
	str r0, [r5, r1]
	add r0, r6, #0
	bl ov19_021D77D8
	str r0, [r5, #0x48]
	add r0, r4, #0
	bl ov19_021D5E10
	ldr r1, _021D8C0C ; =0x00000785
	strb r0, [r5, r1]
	add r0, r4, #0
	bl ov19_021D5E14
	ldr r1, _021D8C10 ; =0x00000789
	strb r0, [r5, r1]
	add r0, r4, #0
	bl ov19_021D5E1C
	ldr r1, _021D8C14 ; =0x0000078A
	strb r0, [r5, r1]
	add r0, r4, #0
	bl ov19_021D5E2C
	ldr r1, _021D8C18 ; =0x0000078B
	add r3, r5, #0
	strb r0, [r5, r1]
	mov r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	add r0, r1, #0
	str r2, [r5, #0x10]
	sub r0, #0x37
	str r2, [r5, r0]
	add r0, r1, #3
	mov r2, #1
	strb r2, [r5, r0]
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0xd
	add r3, #0x1c
	bl sub_02007204
	str r0, [r5, #0x14]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xe
	mov r2, #1
	add r3, #0x20
	bl sub_02007220
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D8BF4
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D8BFA
_021D8BF4:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D8BFA:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D8C00: .word 0x00000794
_021D8C04: .word 0x00000758
_021D8C08: .word 0x0000075C
_021D8C0C: .word 0x00000785
_021D8C10: .word 0x00000789
_021D8C14: .word 0x0000078A
_021D8C18: .word 0x0000078B
	thumb_func_end ov19_021D8B54

	thumb_func_start ov19_021D8C1C
ov19_021D8C1C: ; 0x021D8C1C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r4, r0, #0
	add r0, #0x24
	add r5, r1, #0
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x24
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0xc
	bl sub_0200718C
	ldr r0, _021D8DEC ; =0x00000785
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _021D8C52
	mov r5, #1
	b _021D8C54
_021D8C52:
	mov r5, #2
_021D8C54:
	ldr r0, _021D8DF0 ; =0x00000794
	ldr r0, [r4, r0]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, [r4, #0x1c]
	add r0, sp, #0x14
	add r1, #0x24
	bl ov19_021D783C
	ldr r2, _021D8DF4 ; =0x00000764
	add r3, r4, #0
	add r1, r2, #4
	add r0, r4, r2
	add r2, #0x21
	add r1, r4, r1
	add r2, r4, r2
	bl ov19_021D9D48
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, _021D8DF4 ; =0x00000764
	ldr r0, [r4, #0]
	ldr r2, [r4, r3]
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r1, sp, #0x14
	bl ov19_021D785C
	str r0, [r4, #4]
	mov r0, #0x2a
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, _021D8DF4 ; =0x00000764
	ldr r0, [r4, #0]
	ldr r2, [r4, r3]
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r1, sp, #0x14
	add r3, #0x18
	bl ov19_021D785C
	str r0, [r4, #8]
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E08
	add r6, r0, #0
	cmp r6, #4
	beq _021D8CD6
	mov r2, #0x6c
	mov r5, #0xec
	b _021D8CDA
_021D8CD6:
	mov r2, #0x40
	mov r5, #0xc0
_021D8CDA:
	mov r1, #2
	add r0, sp, #0x34
	strb r1, [r0]
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r3, #0x14
	bl ov19_021D785C
	str r0, [r4, #0xc]
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, r5, #0
	mov r3, #0x14
	bl ov19_021D785C
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, #5
	bl sub_02021D6C
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02021E80
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	add r5, r0, #0
	cmp r5, #2
	ldr r0, [r4, #0xc]
	beq _021D8D3C
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_02021D6C
	b _021D8D4A
_021D8D3C:
	mov r1, #8
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	mov r1, #9
	bl sub_02021D6C
_021D8D4A:
	cmp r5, #0
	beq _021D8D56
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
_021D8D56:
	cmp r6, #3
	beq _021D8D9A
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E38
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021D8D80
	mov r1, #0
	bl sub_02021D6C
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	mov r2, #0x1e
	bl ov19_021DA3CC
	mov r1, #0
	b _021D8D8E
_021D8D80:
	mov r1, #2
	bl sub_02021D6C
	add r0, r4, #0
	bl ov19_021D8E00
	mov r1, #1
_021D8D8E:
	ldr r0, _021D8DF8 ; =0x0000078C
	strb r1, [r4, r0]
	ldr r0, _021D8DFC ; =0x0000078D
	mov r1, #0
	strb r1, [r4, r0]
	b _021D8DD2
_021D8D9A:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5F7C
	cmp r0, #0
	ldr r0, [r4, #4]
	bne _021D8DB4
	mov r1, #0
	bl sub_02021D6C
	mov r1, #0
	b _021D8DBC
_021D8DB4:
	mov r1, #2
	bl sub_02021D6C
	mov r1, #1
_021D8DBC:
	ldr r0, _021D8DFC ; =0x0000078D
	mov r2, #0x1e
	strb r1, [r4, r0]
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	bl ov19_021DA3CC
	ldr r0, _021D8DF8 ; =0x0000078C
	mov r1, #0
	strb r1, [r4, r0]
_021D8DD2:
	ldr r0, _021D8DF0 ; =0x00000794
	ldr r0, [r4, r0]
	bl ov19_021D7800
	mov r1, #0x76
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov19_021D9AEC
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_021D8DEC: .word 0x00000785
_021D8DF0: .word 0x00000794
_021D8DF4: .word 0x00000764
_021D8DF8: .word 0x0000078C
_021D8DFC: .word 0x0000078D
	thumb_func_end ov19_021D8C1C

	thumb_func_start ov19_021D8E00
ov19_021D8E00: ; 0x021D8E00
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #0
	str r0, [r2, #0]
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	mov r2, #1
	bl ov19_021DA3CC
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E9C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021E88
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D8E74 ; =0x000004D8
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x4c
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	asr r3, r3, #0xc
	ldr r0, [r5, #0x48]
	asr r2, r2, #0xc
	add r3, r3, #4
	bl ov19_021DA428
	ldr r1, _021D8E78 ; =0x00000664
	mov r0, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r2, _021D8E7C ; =0xFFFFC000
	add r1, #0xf0
	str r2, [r5, r0]
	mov r2, #1
	ldr r0, _021D8E80 ; =0x0000078C
	str r2, [r5, r1]
	strb r2, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021D8E74: .word 0x000004D8
_021D8E78: .word 0x00000664
_021D8E7C: .word 0xFFFFC000
_021D8E80: .word 0x0000078C
	thumb_func_end ov19_021D8E00

	thumb_func_start ov19_021D8E84
ov19_021D8E84: ; 0x021D8E84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D8E96
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x14]
_021D8E96:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D8EA4
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x18]
_021D8EA4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D8EB2
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #4]
_021D8EB2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D8EC0
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #8]
_021D8EC0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D8ECE
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0xc]
_021D8ECE:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D8EDC
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0x10]
_021D8EDC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D8E84

	thumb_func_start ov19_021D8EE0
ov19_021D8EE0: ; 0x021D8EE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [r2, #0]
	str r0, [r5, #0]
	ldr r0, _021D8F58 ; =0x00000785
	ldrb r1, [r4, r0]
	cmp r1, #4
	bhi _021D8F54
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D8F00: ; jump table
	.short _021D8F0A - _021D8F00 - 2 ; case 0
	.short _021D8F54 - _021D8F00 - 2 ; case 1
	.short _021D8F34 - _021D8F00 - 2 ; case 2
	.short _021D8F48 - _021D8F00 - 2 ; case 3
	.short _021D8F48 - _021D8F00 - 2 ; case 4
_021D8F0A:
	add r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D8F54
	add r0, #0xb
	ldr r0, [r4, r0]
	bl ov19_021D5E14
	ldr r1, _021D8F5C ; =0x00000789
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bne _021D8F26
	cmp r0, #5
	beq _021D8F2E
_021D8F26:
	cmp r1, #5
	bne _021D8F54
	cmp r0, #0
	bne _021D8F54
_021D8F2E:
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D8F34:
	add r0, r0, #1
	ldrb r0, [r4, r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021D8F54
	mov r0, #1
	str r0, [r2, #0]
	pop {r3, r4, r5, pc}
_021D8F48:
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _021D8F54
	mov r0, #1
	str r0, [r2, #0]
_021D8F54:
	pop {r3, r4, r5, pc}
	nop
_021D8F58: .word 0x00000785
_021D8F5C: .word 0x00000789
	thumb_func_end ov19_021D8EE0

	thumb_func_start ov19_021D8F60
ov19_021D8F60: ; 0x021D8F60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r2, _021D905C ; =0x0000076C
	add r5, r0, #0
	add r1, r2, #4
	add r0, r5, r2
	add r2, #0x1a
	add r1, r5, r1
	add r2, r5, r2
	add r3, r5, #0
	bl ov19_021D9D48
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov19_021D8EE0
	ldr r0, _021D9060 ; =0x00000786
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D8F92
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02021CAC
_021D8F92:
	ldr r6, _021D9064 ; =0x00000764
	ldr r0, [r5, r6]
	add r2, r6, #0
	lsl r1, r0, #0xc
	add r0, r6, #0
	add r0, #0x10
	str r1, [r5, r0]
	add r0, r6, #4
	ldr r0, [r5, r0]
	add r2, #0xc
	lsl r1, r0, #0xc
	add r0, r6, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r6, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r3, [r5, r2]
	ldr r7, [sp, #4]
	lsl r0, r1, #0xc
	lsl r2, r3, #0xc
	cmp r7, #0
	bne _021D8FC8
	add r6, #0x10
	ldr r1, [r5, r6]
	sub r0, r0, r1
	b _021D8FF0
_021D8FC8:
	add r4, r6, #0
	add r4, #0x10
	ldr r4, [r5, r4]
	cmp r0, r4
	ble _021D8FE2
	mov r0, #0x11
	lsl r0, r0, #4
	sub r1, r0, r1
	ldr r0, [r5, r6]
	sub r0, #0x46
	add r0, r1, r0
	neg r0, r0
	b _021D8FEE
_021D8FE2:
	mov r0, #0x11
	ldr r4, [r5, r6]
	lsl r0, r0, #4
	sub r0, r0, r4
	sub r1, #0x46
	add r0, r0, r1
_021D8FEE:
	lsl r0, r0, #0xc
_021D8FF0:
	ldr r1, [sp]
	cmp r1, #0
	bne _021D8FFE
	ldr r3, _021D9068 ; =0x00000778
	ldr r3, [r5, r3]
	sub r4, r2, r3
	b _021D9024
_021D8FFE:
	ldr r4, _021D9068 ; =0x00000778
	ldr r6, [r5, r4]
	cmp r2, r6
	ble _021D9016
	mov r2, #0xd0
	sub r4, #0x10
	sub r3, r2, r3
	ldr r2, [r5, r4]
	add r2, #0x18
	add r2, r3, r2
	neg r4, r2
	b _021D9022
_021D9016:
	sub r4, #0x10
	ldr r4, [r5, r4]
	mov r2, #0xd0
	sub r2, r2, r4
	add r3, #0x18
	add r4, r2, r3
_021D9022:
	lsl r4, r4, #0xc
_021D9024:
	cmp r7, #0
	bne _021D902C
	cmp r1, #0
	beq _021D9030
_021D902C:
	mov r6, #0xc
	b _021D9032
_021D9030:
	mov r6, #6
_021D9032:
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, _021D906C ; =0x0000077C
	str r0, [r5, r1]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020E1F6C
	mov r1, #0x1e
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #7
	strb r6, [r5, r0]
	ldr r0, _021D9070 ; =ov19_021D9088
	add r1, r5, #0
	mov r2, #0
	bl ov19_021D77C8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D905C: .word 0x0000076C
_021D9060: .word 0x00000786
_021D9064: .word 0x00000764
_021D9068: .word 0x00000778
_021D906C: .word 0x0000077C
_021D9070: .word ov19_021D9088
	thumb_func_end ov19_021D8F60

	thumb_func_start ov19_021D9074
ov19_021D9074: ; 0x021D9074
	ldr r1, _021D9084 ; =0x00000787
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9080
	mov r0, #1
	bx lr
_021D9080:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9084: .word 0x00000787
	thumb_func_end ov19_021D9074

	thumb_func_start ov19_021D9088
ov19_021D9088: ; 0x021D9088
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	ldr r0, _021D9204 ; =0x00000787
	str r1, [sp, #8]
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _021D9162
	add r1, r0, #0
	sub r1, #0x13
	ldr r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xb
	ldr r1, [r4, r1]
	add r2, r2, r1
	add r1, r0, #0
	sub r1, #0x13
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xb
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _021D90D0
	add r1, r0, #0
	sub r1, #0x13
	ldr r2, [r4, r1]
	mov r1, #0x11
	lsl r1, r1, #0x10
	cmp r2, r1
	ble _021D90D0
	ldr r1, _021D9208 ; =0x00156000
	sub r0, #0x13
	sub r1, r1, r2
	str r1, [r4, r0]
_021D90D0:
	ldr r1, _021D920C ; =0x0000077C
	ldr r0, [r4, r1]
	cmp r0, #0
	bge _021D90F2
	add r0, r1, #0
	sub r0, #8
	ldr r2, [r4, r0]
	mov r0, #0x46
	lsl r0, r0, #0xc
	cmp r2, r0
	bge _021D90F2
	sub r2, r0, r2
	mov r0, #0x11
	lsl r0, r0, #0x10
	sub r0, r0, r2
	sub r1, #8
	str r0, [r4, r1]
_021D90F2:
	ldr r1, _021D9210 ; =0x00000778
	add r0, r1, #0
	add r0, #8
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _021D911C
	mov r0, #0xd
	ldr r2, [r4, r1]
	lsl r0, r0, #0x10
	cmp r2, r0
	ble _021D911C
	mov r0, #0x2e
	lsl r0, r0, #0xe
	sub r0, r0, r2
	str r0, [r4, r1]
_021D911C:
	mov r1, #0x1e
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #0
	bge _021D913E
	add r0, r1, #0
	sub r0, #8
	ldr r2, [r4, r0]
	ldr r0, _021D9214 ; =0xFFFE8000
	cmp r2, r0
	bge _021D913E
	sub r2, r0, r2
	mov r0, #0xd
	lsl r0, r0, #0x10
	sub r0, r0, r2
	sub r1, #8
	str r0, [r4, r1]
_021D913E:
	ldr r0, _021D9218 ; =0x00000774
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [sp]
	ldr r0, [r4, r0]
	add r1, sp, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9204 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, pc}
_021D9162:
	add r2, r0, #0
	sub r2, #0x1b
	ldr r2, [r4, r2]
	sub r0, #0x17
	lsl r2, r2, #0xc
	str r2, [sp]
	ldr r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D921C ; =0x0000076C
	add r1, r0, #0
	ldr r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
	add r1, r0, #4
	ldr r2, [r4, r1]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x1a
	ldrb r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x19
	strb r2, [r4, r1]
	add r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021D5E14
	ldr r1, _021D9220 ; =0x00000789
	strb r0, [r4, r1]
	add r0, r1, #7
	ldr r0, [r4, r0]
	bl ov19_021D5E1C
	ldr r1, _021D9224 ; =0x0000078A
	strb r0, [r4, r1]
	add r0, r1, #6
	ldr r0, [r4, r0]
	bl ov19_021D5E2C
	ldr r1, _021D9228 ; =0x0000078B
	strb r0, [r4, r1]
	sub r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D91D0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CAC
_021D91D0:
	ldr r0, _021D922C ; =0x00000786
	ldrb r0, [r4, r0]
	cmp r0, #2
	ldr r0, [r4, #0xc]
	beq _021D91EA
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_02021D6C
	b _021D91F8
_021D91EA:
	mov r1, #8
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	mov r1, #9
	bl sub_02021D6C
_021D91F8:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D9204: .word 0x00000787
_021D9208: .word 0x00156000
_021D920C: .word 0x0000077C
_021D9210: .word 0x00000778
_021D9214: .word 0xFFFE8000
_021D9218: .word 0x00000774
_021D921C: .word 0x0000076C
_021D9220: .word 0x00000789
_021D9224: .word 0x0000078A
_021D9228: .word 0x0000078B
_021D922C: .word 0x00000786
	thumb_func_end ov19_021D9088

	thumb_func_start ov19_021D9230
ov19_021D9230: ; 0x021D9230
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r1, #2
	mov r0, #0x1e
	lsl r1, r1, #0xc
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0x18
	ldr r2, [r4, r1]
	add r1, r0, #0
	add r2, #0xc
	sub r1, #0x10
	str r2, [r4, r1]
	add r1, r0, #7
	mov r2, #6
	strb r2, [r4, r1]
	mov r1, #0
	add r0, r0, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov19_021D9EB0
	ldr r0, _021D9274 ; =ov19_021D928C
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	pop {r4, pc}
	nop
_021D9274: .word ov19_021D928C
	thumb_func_end ov19_021D9230

	thumb_func_start ov19_021D9278
ov19_021D9278: ; 0x021D9278
	ldr r1, _021D9288 ; =0x00000784
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _021D9284
	mov r0, #1
	bx lr
_021D9284:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9288: .word 0x00000784
	thumb_func_end ov19_021D9278

	thumb_func_start ov19_021D928C
ov19_021D928C: ; 0x021D928C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D9360 ; =0x00000784
	str r0, [r3, #0]
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D92B8
	cmp r0, #1
	beq _021D9314
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D92B8:
	add r0, r1, #0
	mov r3, #0
	add r0, #0xa
	strb r3, [r4, r0]
	add r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D92E6
	sub r0, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [r4, r0]
	add r1, r2, #0
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9364 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D92E6:
	sub r1, #0x14
	ldr r0, [r4, r1]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021D6C
	add r0, r4, #0
	bl ov19_021DA038
	ldr r0, _021D9364 ; =0x00000787
	mov r1, #6
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldrb r1, [r4, r1]
	sub r0, r0, #3
	add r1, r1, #1
	strb r1, [r4, r0]
_021D9314:
	ldr r0, _021D9364 ; =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D933A
	sub r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D9364 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D933A:
	sub r0, #0x1f
	ldr r0, [r4, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9360 ; =0x00000784
	mov r1, #0xff
	strb r1, [r4, r0]
	mov r1, #1
	add r0, #0xa
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D9360: .word 0x00000784
_021D9364: .word 0x00000787
	thumb_func_end ov19_021D928C

	thumb_func_start ov19_021D9368
ov19_021D9368: ; 0x021D9368
	add r1, r0, #0
	mov r2, #2
	mov r0, #0x1e
	lsl r2, r2, #0xc
	lsl r0, r0, #6
	str r2, [r1, r0]
	add r2, r0, #0
	sub r2, #0x18
	ldr r3, [r1, r2]
	add r2, r0, #0
	add r3, #0xc
	sub r2, #0x10
	str r3, [r1, r2]
	add r2, r0, #7
	mov r3, #6
	strb r3, [r1, r2]
	ldr r3, _021D9394 ; =ov19_021D77C8
	mov r2, #0
	add r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, _021D9398 ; =ov19_021D93D0
	bx r3
	; .align 2, 0
_021D9394: .word ov19_021D77C8
_021D9398: .word ov19_021D93D0
	thumb_func_end ov19_021D9368

	thumb_func_start ov19_021D939C
ov19_021D939C: ; 0x021D939C
	push {r4, lr}
	ldr r1, _021D93C8 ; =0x00000784
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0xff
	bne _021D93C4
	bl ov19_021DA06C
	ldr r2, _021D93CC ; =0x00000754
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	ldr r2, [r4, r2]
	add r1, #0x4c
	bl ov19_021DA3CC
	ldr r0, _021D93CC ; =0x00000754
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_021D93C4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D93C8: .word 0x00000784
_021D93CC: .word 0x00000754
	thumb_func_end ov19_021D939C

	thumb_func_start ov19_021D93D0
ov19_021D93D0: ; 0x021D93D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D94AC ; =0x00000784
	str r0, [r3, #0]
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D93FC
	cmp r0, #1
	beq _021D9458
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D93FC:
	add r0, r1, #0
	mov r3, #0
	add r0, #0xa
	strb r3, [r4, r0]
	add r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D942A
	sub r0, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [r4, r0]
	add r1, r2, #0
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D94B0 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D942A:
	sub r1, #0x14
	ldr r0, [r4, r1]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	add r0, r4, #0
	bl ov19_021DA1F8
	ldr r0, _021D94B0 ; =0x00000787
	mov r1, #6
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldrb r1, [r4, r1]
	sub r0, r0, #3
	add r1, r1, #1
	strb r1, [r4, r0]
_021D9458:
	ldr r0, _021D94B0 ; =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D947E
	sub r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D94B0 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D947E:
	sub r0, #0x1f
	ldr r0, [r4, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _021D94AC ; =0x00000784
	mov r1, #0xff
	strb r1, [r4, r0]
	mov r1, #1
	add r0, #0xa
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D94AC: .word 0x00000784
_021D94B0: .word 0x00000787
	thumb_func_end ov19_021D93D0

	thumb_func_start ov19_021D94B4
ov19_021D94B4: ; 0x021D94B4
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, _021D9528 ; =0x00000788
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov19_021DA224
	add r4, r0, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_02021F74
	str r0, [sp]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #1
	bl ov19_021D9554
	ldr r0, [r5, #0x4c]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r5, #0x4c]
	bl sub_02021F74
	str r0, [sp]
	mov r3, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mvn r3, r3
	bl ov19_021D9554
	ldr r0, _021D952C ; =0x00000784
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021D9528: .word 0x00000788
_021D952C: .word 0x00000784
	thumb_func_end ov19_021D94B4

	thumb_func_start ov19_021D9530
ov19_021D9530: ; 0x021D9530
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021D95E0
	cmp r0, #0
	beq _021D954E
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021D6C
	add r0, r4, #0
	bl ov19_021DA110
	mov r0, #1
	pop {r4, pc}
_021D954E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D9530

	thumb_func_start ov19_021D9554
ov19_021D9554: ; 0x021D9554
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xa
	mov r1, #0x2c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _021D95D4
	add r0, r6, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0xc
	str r0, [r2, #0]
	str r6, [r4, #0]
	strh r1, [r4, #4]
	mov r0, #6
	strh r0, [r4, #6]
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	str r0, [r4, #0x14]
	str r7, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [sp]
	add r2, r0, #0
	mul r2, r1
	str r2, [r4, #0x24]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	sub r0, r2, r0
	bl sub_020E1F6C
	str r0, [r4, #0x1c]
	mov r0, #0xf
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	ldr r0, _021D95D8 ; =ov19_021D9600
	add r1, r4, #0
	mov r2, #0
	str r5, [r4, #0x28]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D95CE
	ldr r0, _021D95DC ; =0x00000788
	mov r1, #1
	add sp, #0x10
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D95CE:
	add r0, r4, #0
	bl sub_020181C4
_021D95D4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D95D8: .word ov19_021D9600
_021D95DC: .word 0x00000788
	thumb_func_end ov19_021D9554

	thumb_func_start ov19_021D95E0
ov19_021D95E0: ; 0x021D95E0
	ldr r1, _021D95F0 ; =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D95EC
	mov r0, #1
	bx lr
_021D95EC:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D95F0: .word 0x00000788
	thumb_func_end ov19_021D95E0

	thumb_func_start ov19_021D95F4
ov19_021D95F4: ; 0x021D95F4
	ldr r1, _021D95FC ; =0x00000788
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_021D95FC: .word 0x00000788
	thumb_func_end ov19_021D95F4

	thumb_func_start ov19_021D9600
ov19_021D9600: ; 0x021D9600
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _021D9668
	sub r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bne _021D9636
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov19_021D78AC
_021D9636:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x18]
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D15C
	ldr r1, [r4, #0x24]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0x14]
	add r1, sp, #0
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D9668:
	ldr r0, [r4, #0x14]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	bl sub_02021C50
	ldr r1, _021D968C ; =ov19_021D95F4
	ldr r2, [r4, #0x28]
	add r0, r4, #0
	bl ov19_021D79B8
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D968C: .word ov19_021D95F4
	thumb_func_end ov19_021D9600

	thumb_func_start ov19_021D9690
ov19_021D9690: ; 0x021D9690
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021D96F4 ; =0x0000078C
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D96AE
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D96AE
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02021D6C
_021D96AE:
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D96F8 ; =0x00000784
	mov r2, #0
	strb r2, [r4, r0]
	add r0, r0, #3
	strb r2, [r4, r0]
	ldr r0, _021D96FC ; =ov19_021D9718
	add r1, r4, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D96F0
	ldr r0, _021D9700 ; =0x00000788
	mov r1, #1
	strb r1, [r4, r0]
_021D96F0:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D96F4: .word 0x0000078C
_021D96F8: .word 0x00000784
_021D96FC: .word ov19_021D9718
_021D9700: .word 0x00000788
	thumb_func_end ov19_021D9690

	thumb_func_start ov19_021D9704
ov19_021D9704: ; 0x021D9704
	ldr r1, _021D9714 ; =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9710
	mov r0, #1
	bx lr
_021D9710:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9714: .word 0x00000788
	thumb_func_end ov19_021D9704

	thumb_func_start ov19_021D9718
ov19_021D9718: ; 0x021D9718
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r1, _021D97F0 ; =0x00000784
	add r5, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D9730
	cmp r0, #1
	beq _021D9796
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021D9730:
	add r0, r1, #3
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #3
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	blo _021D97EC
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x10]
	mov r2, #3
	asr r0, r0, #0xc
	add r1, r0, #6
	mov r0, #0x77
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r1, r0, #0
	lsl r2, r2, #0xc
	add r1, #0x10
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #2
	add r1, #0x17
	strb r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x1c
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D978A
	add r0, #0x1d
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D978A
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02021D6C
_021D978A:
	ldr r0, _021D97F0 ; =0x00000784
	add sp, #0x18
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9796:
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D97F4 ; =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D97D0
	sub r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D97F4 ; =0x00000787
	add sp, #0x18
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D97D0:
	sub r0, #0x17
	ldr r0, [r4, r0]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D97F8 ; =0x00000788
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_021D97EC:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D97F0: .word 0x00000784
_021D97F4: .word 0x00000787
_021D97F8: .word 0x00000788
	thumb_func_end ov19_021D9718

	thumb_func_start ov19_021D97FC
ov19_021D97FC: ; 0x021D97FC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0x77
	str r0, [r2, #0]
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	asr r0, r0, #0xc
	sub r0, r0, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _021D984C ; =0xFFFFF000
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #4
	add r0, #0x17
	strb r2, [r4, r0]
	mov r2, #0
	add r1, #0x14
	strb r2, [r4, r1]
	ldr r0, _021D9850 ; =ov19_021D9894
	add r1, r4, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D9848
	ldr r0, _021D9854 ; =0x00000788
	mov r1, #1
	strb r1, [r4, r0]
_021D9848:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D984C: .word 0xFFFFF000
_021D9850: .word ov19_021D9894
_021D9854: .word 0x00000788
	thumb_func_end ov19_021D97FC

	thumb_func_start ov19_021D9858
ov19_021D9858: ; 0x021D9858
	push {r4, lr}
	ldr r1, _021D9890 ; =0x00000788
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _021D988A
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D9886
	add r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D9886
	ldr r0, [r4, #4]
	bl sub_02021E24
	cmp r0, #0
	beq _021D9886
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021D6C
_021D9886:
	mov r0, #1
	pop {r4, pc}
_021D988A:
	mov r0, #0
	pop {r4, pc}
	nop
_021D9890: .word 0x00000788
	thumb_func_end ov19_021D9858

	thumb_func_start ov19_021D9894
ov19_021D9894: ; 0x021D9894
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D98F8 ; =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D98D6
	sub r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D98F8 ; =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D98D6:
	sub r0, #0x17
	ldr r0, [r4, r0]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D98FC ; =0x00000788
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D98F8: .word 0x00000787
_021D98FC: .word 0x00000788
	thumb_func_end ov19_021D9894

	thumb_func_start ov19_021D9900
ov19_021D9900: ; 0x021D9900
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E68
	mov r1, #0x79
	lsl r1, r1, #4
	mov r2, #0x11
	ldr r3, [r4, r1]
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	cmp r2, r0
	bne _021D9926
	sub r1, #0x38
	ldr r0, [r4, r1]
	bl ov19_021D84E0
_021D9926:
	add r0, r4, #0
	bl ov19_021DA204
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021D6C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D9900

	thumb_func_start ov19_021D9938
ov19_021D9938: ; 0x021D9938
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	mov r2, #1
	bl ov19_021DA7B8
	ldr r0, _021D9958 ; =0x00000784
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D9958: .word 0x00000784
	thumb_func_end ov19_021D9938

	thumb_func_start ov19_021D995C
ov19_021D995C: ; 0x021D995C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D99EC ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7964
	ldr r1, _021D99F0 ; =0x00000784
	add r4, r0, #0
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021D997C
	cmp r1, #1
	beq _021D9994
	cmp r1, #2
	beq _021D99CE
	b _021D99E8
_021D997C:
	add r1, r5, #0
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D99E8
	ldr r0, _021D99F0 ; =0x00000784
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021D99E8
_021D9994:
	bl ov19_021D3B18
	cmp r0, #0
	beq _021D99E8
	add r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D99B8
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_02021D6C
	add r0, r5, #0
	bl ov19_021DA204
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D99B8:
	add r1, r5, #0
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	mov r2, #2
	bl ov19_021DA7B8
	ldr r0, _021D99F0 ; =0x00000784
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021D99E8
_021D99CE:
	add r1, r5, #0
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D99E8
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_02021D6C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D99E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D99EC: .word 0x00000794
_021D99F0: .word 0x00000784
	thumb_func_end ov19_021D995C

	thumb_func_start ov19_021D99F4
ov19_021D99F4: ; 0x021D99F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021E80
	ldr r0, _021D9A24 ; =0x0000078C
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9A10
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl sub_02021E80
_021D9A10:
	ldr r0, _021D9A28 ; =0x0000078D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A22
	sub r0, #0x2d
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov19_021DEBDC
_021D9A22:
	pop {r4, pc}
	; .align 2, 0
_021D9A24: .word 0x0000078C
_021D9A28: .word 0x0000078D
	thumb_func_end ov19_021D99F4

	thumb_func_start ov19_021D9A2C
ov19_021D9A2C: ; 0x021D9A2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021E80
	ldr r0, _021D9A5C ; =0x0000078C
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9A48
	ldr r0, [r4, #0x4c]
	mov r1, #2
	bl sub_02021E80
_021D9A48:
	ldr r0, _021D9A60 ; =0x0000078D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A5A
	sub r0, #0x2d
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov19_021DEBDC
_021D9A5A:
	pop {r4, pc}
	; .align 2, 0
_021D9A5C: .word 0x0000078C
_021D9A60: .word 0x0000078D
	thumb_func_end ov19_021D9A2C

	thumb_func_start ov19_021D9A64
ov19_021D9A64: ; 0x021D9A64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9A88 ; =0x0000078C
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A84
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EA0
	add r2, r0, #0
	ldr r0, [r4, #0x48]
	add r4, #0x4c
	add r1, r4, #0
	bl ov19_021DA68C
_021D9A84:
	pop {r4, pc}
	nop
_021D9A88: .word 0x0000078C
	thumb_func_end ov19_021D9A64

	thumb_func_start ov19_021D9A8C
ov19_021D9A8C: ; 0x021D9A8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EC8
	add r2, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D9AAC
	ldr r0, [r4, #0x48]
	add r4, #0x4c
	add r1, r4, #0
	bl ov19_021DA63C
_021D9AAC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D9A8C

	thumb_func_start ov19_021D9AB0
ov19_021D9AB0: ; 0x021D9AB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	add r2, r1, #0
	cmp r0, #0
	beq _021D9AE8
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	bl ov19_021DA690
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EC8
	add r2, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	bl ov19_021DA63C
	ldr r0, [r4, #0x48]
	add r4, #0x4c
	add r1, r4, #0
	mov r2, #0
	bl ov19_021DA694
_021D9AE8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D9AB0

	thumb_func_start ov19_021D9AEC
ov19_021D9AEC: ; 0x021D9AEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EE0
	cmp r0, #0
	ldr r0, [r4, #4]
	beq _021D9B08
	mov r1, #1
	bl sub_02021E90
	pop {r4, pc}
_021D9B08:
	mov r1, #0
	bl sub_02021E90
	pop {r4, pc}
	thumb_func_end ov19_021D9AEC

	thumb_func_start ov19_021D9B10
ov19_021D9B10: ; 0x021D9B10
	ldr r3, _021D9B18 ; =sub_02021D6C
	ldr r0, [r0, #4]
	mov r1, #1
	bx r3
	; .align 2, 0
_021D9B18: .word sub_02021D6C
	thumb_func_end ov19_021D9B10

	thumb_func_start ov19_021D9B1C
ov19_021D9B1C: ; 0x021D9B1C
	push {r4, lr}
	ldr r0, [r0, #4]
	add r4, r1, #0
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D9B1C

	thumb_func_start ov19_021D9B34
ov19_021D9B34: ; 0x021D9B34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9B58 ; =0x00000784
	mov r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9B5C ; =ov19_021D9B78
	add r1, r4, #0
	bl sub_0200D9E8
	cmp r0, #0
	beq _021D9B54
	ldr r0, _021D9B60 ; =0x0000078D
	mov r1, #1
	strb r1, [r4, r0]
	sub r0, r0, #5
	strb r1, [r4, r0]
_021D9B54:
	pop {r4, pc}
	nop
_021D9B58: .word 0x00000784
_021D9B5C: .word ov19_021D9B78
_021D9B60: .word 0x0000078D
	thumb_func_end ov19_021D9B34

	thumb_func_start ov19_021D9B64
ov19_021D9B64: ; 0x021D9B64
	ldr r1, _021D9B74 ; =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9B70
	mov r0, #1
	bx lr
_021D9B70:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9B74: .word 0x00000788
	thumb_func_end ov19_021D9B64

	thumb_func_start ov19_021D9B78
ov19_021D9B78: ; 0x021D9B78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D9BCC ; =0x00000784
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9B8C
	cmp r1, #1
	beq _021D9BA8
	pop {r3, r4, r5, pc}
_021D9B8C:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DE954
	ldr r0, _021D9BCC ; =0x00000784
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9BA8:
	sub r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DE9A8
	cmp r0, #0
	beq _021D9BC8
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, _021D9BD0 ; =0x00000788
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_021D9BC8:
	pop {r3, r4, r5, pc}
	nop
_021D9BCC: .word 0x00000784
_021D9BD0: .word 0x00000788
	thumb_func_end ov19_021D9B78

	thumb_func_start ov19_021D9BD4
ov19_021D9BD4: ; 0x021D9BD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9BF8 ; =0x00000784
	mov r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9BFC ; =ov19_021D9C18
	add r1, r4, #0
	bl sub_0200D9E8
	cmp r0, #0
	beq _021D9BF6
	ldr r0, _021D9C00 ; =0x0000078D
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #5
	strb r1, [r4, r0]
_021D9BF6:
	pop {r4, pc}
	; .align 2, 0
_021D9BF8: .word 0x00000784
_021D9BFC: .word ov19_021D9C18
_021D9C00: .word 0x0000078D
	thumb_func_end ov19_021D9BD4

	thumb_func_start ov19_021D9C04
ov19_021D9C04: ; 0x021D9C04
	ldr r1, _021D9C14 ; =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9C10
	mov r0, #1
	bx lr
_021D9C10:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9C14: .word 0x00000788
	thumb_func_end ov19_021D9C04

	thumb_func_start ov19_021D9C18
ov19_021D9C18: ; 0x021D9C18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D9C6C ; =0x00000784
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9C2C
	cmp r1, #1
	beq _021D9C48
	pop {r3, r4, r5, pc}
_021D9C2C:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DEA18
	ldr r0, _021D9C6C ; =0x00000784
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9C48:
	sub r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DEA64
	cmp r0, #0
	beq _021D9C68
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _021D9C70 ; =0x00000788
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_021D9C68:
	pop {r3, r4, r5, pc}
	nop
_021D9C6C: .word 0x00000784
_021D9C70: .word 0x00000788
	thumb_func_end ov19_021D9C18

	thumb_func_start ov19_021D9C74
ov19_021D9C74: ; 0x021D9C74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9C94 ; =0x00000784
	mov r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9C98 ; =ov19_021D9CB4
	add r1, r4, #0
	bl sub_0200D9E8
	cmp r0, #0
	beq _021D9C90
	ldr r0, _021D9C9C ; =0x00000788
	mov r1, #1
	strb r1, [r4, r0]
_021D9C90:
	pop {r4, pc}
	nop
_021D9C94: .word 0x00000784
_021D9C98: .word ov19_021D9CB4
_021D9C9C: .word 0x00000788
	thumb_func_end ov19_021D9C74

	thumb_func_start ov19_021D9CA0
ov19_021D9CA0: ; 0x021D9CA0
	ldr r1, _021D9CB0 ; =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9CAC
	mov r0, #1
	bx lr
_021D9CAC:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D9CB0: .word 0x00000788
	thumb_func_end ov19_021D9CA0

	thumb_func_start ov19_021D9CB4
ov19_021D9CB4: ; 0x021D9CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D9D08 ; =0x00000784
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9CC8
	cmp r1, #1
	beq _021D9CE4
	pop {r3, r4, r5, pc}
_021D9CC8:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DEA74
	ldr r0, _021D9D08 ; =0x00000784
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9CE4:
	sub r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DEB08
	cmp r0, #0
	beq _021D9D04
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, _021D9D0C ; =0x00000788
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_021D9D04:
	pop {r3, r4, r5, pc}
	nop
_021D9D08: .word 0x00000784
_021D9D0C: .word 0x00000788
	thumb_func_end ov19_021D9CB4

	thumb_func_start ov19_021D9D10
ov19_021D9D10: ; 0x021D9D10
	push {r3, lr}
	ldr r1, _021D9D24 ; =0x0000078D
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021D9D22
	ldr r0, [r0, #4]
	mov r1, #1
	bl sub_02021D6C
_021D9D22:
	pop {r3, pc}
	; .align 2, 0
_021D9D24: .word 0x0000078D
	thumb_func_end ov19_021D9D10

	thumb_func_start ov19_021D9D28
ov19_021D9D28: ; 0x021D9D28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9D44 ; =0x0000078D
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9D42
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _021D9D44 ; =0x0000078D
	mov r1, #0
	strb r1, [r4, r0]
_021D9D42:
	pop {r4, pc}
	; .align 2, 0
_021D9D44: .word 0x0000078D
	thumb_func_end ov19_021D9D28

	thumb_func_start ov19_021D9D48
ov19_021D9D48: ; 0x021D9D48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x79
	add r5, r3, #0
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r7, r2, #0
	add r4, r1, #0
	str r0, [sp]
	bl ov19_021D5E10
	strb r0, [r7]
	ldrb r0, [r7]
	cmp r0, #4
	bhi _021D9DFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9D72: ; jump table
	.short _021D9D7C - _021D9D72 - 2 ; case 0
	.short _021D9DA6 - _021D9D72 - 2 ; case 1
	.short _021D9DC8 - _021D9D72 - 2 ; case 2
	.short _021D9DDA - _021D9D72 - 2 ; case 3
	.short _021D9DEC - _021D9D72 - 2 ; case 4
_021D9D7C:
	ldr r0, _021D9E00 ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	add r5, r0, #0
	ldr r0, [sp]
	bl ov19_021D5E14
	mov r1, #0x18
	add r5, #0x70
	mul r1, r0
	add r0, r5, r1
	str r0, [r6, #0]
	ldr r0, [sp]
	bl ov19_021D5E1C
	mov r1, #0x18
	mul r1, r0
	add r1, #0x18
	str r1, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DA6:
	ldr r0, [sp]
	bl ov19_021D5E2C
	add r7, r0, #0
	ldr r0, _021D9E00 ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D77E8
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov19_021DCD30
	ldr r0, [r4, #0]
	sub r0, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DC8:
	ldr r0, _021D9E00 ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	add r0, #0xa8
	str r0, [r6, #0]
	mov r0, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DDA:
	ldr r0, _021D9E00 ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	add r0, #0x9f
	str r0, [r6, #0]
	mov r0, #0xa0
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DEC:
	ldr r0, _021D9E00 ; =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	add r0, #0xeb
	str r0, [r6, #0]
	mov r0, #0xa0
	str r0, [r4, #0]
_021D9DFC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D9E00: .word 0x00000794
	thumb_func_end ov19_021D9D48

	thumb_func_start ov19_021D9E04
ov19_021D9E04: ; 0x021D9E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [r7, #4]
	add r6, r1, #0
	bl sub_02021C50
	ldr r1, _021D9E98 ; =0x0000078C
	ldrb r0, [r7, r1]
	cmp r0, #0
	beq _021D9E5C
	mov r0, #0
	sub r1, #0x38
	str r0, [sp]
	str r0, [sp, #0x18]
	ldr r0, [r7, r1]
	cmp r0, #0
	bls _021D9E5C
	add r4, r7, #0
	add r5, r7, #0
_021D9E2C:
	ldr r0, _021D9E9C ; =0x00000664
	ldr r1, [r6, #0]
	ldr r0, [r4, r0]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, _021D9EA0 ; =0x00000668
	ldr r1, [r6, #4]
	ldr r0, [r4, r0]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [sp]
	add r4, #8
	add r0, r0, #1
	str r0, [sp]
	ldr r0, _021D9EA4 ; =0x00000754
	add r5, #0x34
	ldr r1, [r7, r0]
	ldr r0, [sp]
	cmp r0, r1
	blo _021D9E2C
_021D9E5C:
	ldr r0, _021D9EA8 ; =0x0000078D
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _021D9E6E
	sub r0, #0x2d
	ldr r0, [r7, r0]
	add r1, r6, #0
	bl ov19_021DEB9C
_021D9E6E:
	ldr r0, _021D9EAC ; =0x0000078E
	ldrb r0, [r7, r0]
	cmp r0, #0
	beq _021D9E94
	ldmia r6!, {r0, r1}
	add r3, sp, #4
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r7, #8]
	add r1, r2, #0
	bl sub_02021C50
_021D9E94:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D9E98: .word 0x0000078C
_021D9E9C: .word 0x00000664
_021D9EA0: .word 0x00000668
_021D9EA4: .word 0x00000754
_021D9EA8: .word 0x0000078D
_021D9EAC: .word 0x0000078E
	thumb_func_end ov19_021D9E04

	thumb_func_start ov19_021D9EB0
ov19_021D9EB0: ; 0x021D9EB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0x79
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r0, r1]
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D9EC6
	b _021D9FE8
_021D9EC6:
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5F20
	cmp r0, #0
	beq _021D9F0E
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E24
	add r1, r0, #0
	ldr r3, [sp, #4]
	ldr r2, _021DA020 ; =0x00000758
	ldr r0, [sp, #4]
	add r3, #0x4c
	ldr r0, [r0, r2]
	ldr r2, _021DA024 ; =0x000004D8
	bl ov19_021D8408
	ldr r0, [sp, #4]
	ldr r2, _021DA028 ; =0x00000754
	mov r1, #1
	str r1, [r0, r2]
	add r1, r2, #0
	mov r3, #0
	sub r1, #0xf0
	str r3, [r0, r1]
	ldr r1, _021DA02C ; =0xFFFFC000
	sub r2, #0xec
	str r1, [r0, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021D9F0E:
	add r0, sp, #0x24
	str r0, [sp]
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0x30
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov19_021D5EE8
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E14
	str r0, [sp, #0x18]
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E1C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x1c]
	cmp r0, r1
	bhi _021D9FDC
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x4c
	str r0, [sp, #0x10]
	mov r7, #0x5f
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mul r1, r0
	lsl r7, r7, #4
	str r1, [sp, #0xc]
	add r5, r6, #0
_021D9F66:
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	cmp r4, r0
	bhi _021D9FCA
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r1, r1, r0
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	sub r0, #0x1c
	sub r0, r0, r2
	lsl r0, r0, #0xc
	str r0, [sp, #8]
_021D9F82:
	ldr r1, [sp, #4]
	ldr r0, _021DA020 ; =0x00000758
	ldr r3, [sp, #0x10]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	add r1, r4, r1
	bl ov19_021D8408
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	beq _021D9FC2
	ldr r0, [sp, #0x18]
	add r7, #0x10
	sub r1, r4, r0
	mov r0, #6
	add r2, r1, #0
	lsl r0, r0, #0xe
	mul r2, r0
	ldr r0, _021DA030 ; =0x00000664
	ldr r1, [sp, #8]
	str r2, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r6, #0x34
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x20]
_021D9FC2:
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	bls _021D9F82
_021D9FCA:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	add r0, r0, #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	bls _021D9F66
_021D9FDC:
	ldr r2, _021DA028 ; =0x00000754
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	add sp, #0x34
	str r1, [r0, r2]
	pop {r4, r5, r6, r7, pc}
_021D9FE8:
	mov r1, #0x79
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E2C
	add r1, r0, #0
	ldr r3, [sp, #4]
	ldr r2, _021DA034 ; =0x0000075C
	ldr r0, [sp, #4]
	add r3, #0x4c
	ldr r0, [r0, r2]
	ldr r2, _021DA024 ; =0x000004D8
	bl ov19_021DCC44
	ldr r2, _021DA028 ; =0x00000754
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, r2]
	add r1, r2, #0
	mov r3, #0
	sub r1, #0xf0
	str r3, [r0, r1]
	ldr r1, _021DA02C ; =0xFFFFC000
	sub r2, #0xec
	str r1, [r0, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA020: .word 0x00000758
_021DA024: .word 0x000004D8
_021DA028: .word 0x00000754
_021DA02C: .word 0xFFFFC000
_021DA030: .word 0x00000664
_021DA034: .word 0x0000075C
	thumb_func_end ov19_021D9EB0

	thumb_func_start ov19_021DA038
ov19_021DA038: ; 0x021DA038
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021DA064 ; =0x00000754
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	bls _021DA05C
	ldr r7, _021DA064 ; =0x00000754
	add r5, r6, #0
_021DA04A:
	ldr r0, [r5, #0x4c]
	mov r1, #2
	bl ov19_021D78AC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x34
	cmp r4, r0
	blo _021DA04A
_021DA05C:
	ldr r0, _021DA068 ; =0x0000078C
	mov r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA064: .word 0x00000754
_021DA068: .word 0x0000078C
	thumb_func_end ov19_021DA038

	thumb_func_start ov19_021DA06C
ov19_021DA06C: ; 0x021DA06C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA0E8
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5F20
	cmp r0, #0
	beq _021DA0A6
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	add r1, r0, #0
	ldr r0, _021DA104 ; =0x00000758
	ldr r0, [r5, r0]
	add r5, #0x4c
	add r2, r5, #0
	bl ov19_021D845C
	pop {r3, r4, r5, r6, r7, pc}
_021DA0A6:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5F3C
	add r7, r0, #0
	ldr r0, _021DA108 ; =0x00000754
	mov r4, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	bls _021DA100
	add r6, r5, #0
	add r6, #0x4c
_021DA0C0:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov19_021D5F6C
	add r1, r0, #0
	ldr r0, _021DA104 ; =0x00000758
	add r1, r7, r1
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov19_021D845C
	ldr r0, _021DA108 ; =0x00000754
	add r4, r4, #1
	ldr r0, [r5, r0]
	add r6, #0x34
	cmp r4, r0
	blo _021DA0C0
	pop {r3, r4, r5, r6, r7, pc}
_021DA0E8:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E2C
	add r1, r0, #0
	ldr r0, _021DA10C ; =0x0000075C
	ldr r0, [r5, r0]
	add r5, #0x4c
	add r2, r5, #0
	bl ov19_021DCC80
_021DA100:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA104: .word 0x00000758
_021DA108: .word 0x00000754
_021DA10C: .word 0x0000075C
	thumb_func_end ov19_021DA06C

	thumb_func_start ov19_021DA110
ov19_021DA110: ; 0x021DA110
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA186
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	add r4, r0, #0
	ldr r0, _021DA1EC ; =0x00000758
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021D84C8
	add r6, r0, #0
	add r1, r5, #0
	mov r2, #0x5f
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	lsl r2, r2, #4
	bl ov19_021DA754
	mov r2, #6
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	lsl r2, r2, #8
	bl ov19_021DA754
	bl sub_020C3E14
	ldr r0, _021DA1EC ; =0x00000758
	add r3, r5, #0
	ldr r0, [r5, r0]
	ldr r2, _021DA1F0 ; =0x000004D8
	add r1, r4, #0
	add r3, #0x80
	bl ov19_021D8408
	ldr r0, _021DA1EC ; =0x00000758
	add r2, r5, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, #0x4c
	bl ov19_021D845C
	add r0, r5, #0
	add r5, #0x4c
	add r0, #0x80
	add r1, r5, #0
	mov r2, #1
	bl ov19_021DA418
	pop {r4, r5, r6, pc}
_021DA186:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E2C
	add r4, r0, #0
	ldr r0, _021DA1F4 ; =0x0000075C
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DCD18
	add r6, r0, #0
	add r1, r5, #0
	mov r2, #0x5f
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	lsl r2, r2, #4
	bl ov19_021DA754
	mov r2, #6
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	lsl r2, r2, #8
	bl ov19_021DA754
	bl sub_020C3E14
	ldr r0, _021DA1F4 ; =0x0000075C
	add r3, r5, #0
	ldr r0, [r5, r0]
	ldr r2, _021DA1F0 ; =0x000004D8
	add r1, r4, #0
	add r3, #0x80
	bl ov19_021DCC44
	ldr r0, _021DA1F4 ; =0x0000075C
	add r2, r5, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, #0x4c
	bl ov19_021DCCD4
	add r0, r5, #0
	add r5, #0x4c
	add r0, #0x80
	add r1, r5, #0
	mov r2, #1
	bl ov19_021DA418
	pop {r4, r5, r6, pc}
	nop
_021DA1EC: .word 0x00000758
_021DA1F0: .word 0x000004D8
_021DA1F4: .word 0x0000075C
	thumb_func_end ov19_021DA110

	thumb_func_start ov19_021DA1F8
ov19_021DA1F8: ; 0x021DA1F8
	ldr r1, _021DA200 ; =0x0000078C
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_021DA200: .word 0x0000078C
	thumb_func_end ov19_021DA1F8

	thumb_func_start ov19_021DA204
ov19_021DA204: ; 0x021DA204
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x4c
	mov r2, #1
	bl ov19_021DA3F0
	ldr r0, _021DA220 ; =0x0000078C
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x38
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021DA220: .word 0x0000078C
	thumb_func_end ov19_021DA204

	thumb_func_start ov19_021DA224
ov19_021DA224: ; 0x021DA224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA24E
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E24
	add r1, r0, #0
	ldr r0, _021DA268 ; =0x00000758
	ldr r0, [r4, r0]
	bl ov19_021D84C8
	ldr r0, [r0, #0]
	pop {r4, pc}
_021DA24E:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E2C
	add r1, r0, #0
	ldr r0, _021DA26C ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov19_021DCD18
	ldr r0, [r0, #0]
	pop {r4, pc}
	nop
_021DA268: .word 0x00000758
_021DA26C: .word 0x0000075C
	thumb_func_end ov19_021DA224