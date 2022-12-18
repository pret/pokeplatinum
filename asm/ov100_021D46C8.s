	.include "macros/function.inc"
	.include "include/ov100_021D46C8.inc"

	

	.text


	thumb_func_start ov100_021D46C8
ov100_021D46C8: ; 0x021D46C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021D4784 ; =0x000001FF
	mov r1, #0x6f
	add r7, r2, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	bl sub_0200B1EC
	str r0, [sp, #0xc]
	cmp r7, #0x16
	bne _021D4726
	ldr r0, [r4, #8]
	mov r1, #0x6f
	bl sub_02025F04
	add r7, r0, #0
	mov r0, #0x6f
	bl sub_0200B358
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp, #0x10]
	add r2, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B3F0
	b _021D472E
_021D4726:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_02023810
_021D472E:
	ldr r0, [r4, #4]
	bl sub_02027AC0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0x30
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A954
	add r0, r5, #0
	mov r2, #0x7d
	add r0, #0x30
	mov r1, #0
	lsl r2, r2, #2
	mov r3, #0xf
	bl sub_0200E060
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	str r4, [r5, #0x40]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D4784: .word 0x000001FF
	thumb_func_end ov100_021D46C8

	thumb_func_start ov100_021D4788
ov100_021D4788: ; 0x021D4788
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	mov r1, #1
	bl sub_0200E084
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201ACF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4788

	thumb_func_start ov100_021D47A0
ov100_021D47A0: ; 0x021D47A0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _021D4828 ; =0x021D546C
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D482C ; =0x021D5460
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_020BD3E4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _021D4830 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	add r0, sp, #0
	add r1, r0, #0
	bl sub_020BD3E4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _021D4834 ; =0x000066F7
	mov r0, #1
	bl sub_020AF558
	ldr r0, _021D4838 ; =0x00004210
	ldr r1, _021D483C ; =0x000039CE
	mov r2, #0
	bl sub_020AF56C
	ldr r0, _021D4840 ; =0x00005294
	ldr r1, _021D4838 ; =0x00004210
	mov r2, #0
	bl sub_020AF590
	add sp, #0x18
	pop {r4, pc}
	nop
_021D4828: .word 0x021D546C
_021D482C: .word 0x021D5460
_021D4830: .word 0x00007FFF
_021D4834: .word 0x000066F7
_021D4838: .word 0x00004210
_021D483C: .word 0x000039CE
_021D4840: .word 0x00005294
	thumb_func_end ov100_021D47A0

	thumb_func_start ov100_021D4844
ov100_021D4844: ; 0x021D4844
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r0, sp, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r0, #8]
	ldrh r1, [r0, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xe]
	ldr r1, [r4, #0x18]
	add r0, sp, #0x10
	bl sub_02020ABC
	add r5, sp, #0x10
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x18]
	add r0, r2, #0
	bl sub_02020ADC
	ldr r1, [r4, #0x18]
	add r0, sp, #8
	bl sub_020209D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4844

	thumb_func_start ov100_021D4890
ov100_021D4890: ; 0x021D4890
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #8]
	str r0, [r4, #0x24]
	ldr r1, [r4, #0xc]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x44]
	ldr r1, [r4, #0]
	add r0, sp, #0
	bl sub_02020A94
	add r2, sp, #0
	ldr r0, [r4, #0xc]
	ldrh r5, [r2]
	add r3, r0, #0
	mov r1, #0xb6
	mul r3, r1
	add r0, r4, #0
	add r3, r5, r3
	add r0, #0x4c
	strh r3, [r0]
	ldr r0, [r4, #0x10]
	ldrh r5, [r2, #2]
	add r3, r0, #0
	mul r3, r1
	add r0, r4, #0
	add r3, r5, r3
	add r0, #0x4e
	strh r3, [r0]
	ldr r0, [r4, #0x14]
	ldrh r2, [r2, #4]
	mul r1, r0
	add r4, #0x50
	add r0, r2, r1
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4890

	thumb_func_start ov100_021D4920
ov100_021D4920: ; 0x021D4920
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	add r0, sp, #0
	mov r4, #0
	bl sub_02020A94
	add r1, sp, #0
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021D494E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D494E:
	sub r0, r0, #1
	str r0, [r5, #0x24]
	bne _021D4970
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r4, #1
	strh r0, [r1, #8]
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	b _021D49A6
_021D4970:
	ldrh r2, [r1, #8]
	ldr r0, [r5, #0x28]
	add r0, r2, r0
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	ldr r0, [r5, #0x2c]
	add r0, r2, r0
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	ldr r0, [r5, #0x30]
	add r0, r2, r0
	strh r0, [r1, #0xc]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r2, #0]
	add r0, r1, r0
	str r0, [r2, #0]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #8]
_021D49A6:
	ldr r1, [r5, #0]
	add r0, sp, #8
	bl sub_020209D4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4920

	thumb_func_start ov100_021D49B4
ov100_021D49B4: ; 0x021D49B4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x5d
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021D4A82
	add r2, r1, #0
	sub r2, #0x14
	ldr r2, [r5, r2]
	cmp r2, #0
	beq _021D4A66
	add r2, r1, #0
	sub r2, #0x10
	ldr r2, [r5, r2]
	mov r7, #0
	cmp r2, #0
	beq _021D49FA
	add r2, r1, #0
	sub r2, #0x1c
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _021D49EE
	sub r1, #0x20
	ldr r1, [r5, r1]
	add r0, #0x88
	bl sub_020171CC
	b _021D4A2E
_021D49EE:
	bl ov100_021D45A4
	add r0, r5, #0
	bl ov100_021D4510
	b _021D4A2E
_021D49FA:
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D4A20
	add r4, r5, #0
	add r6, r7, #0
	add r4, #0x88
_021D4A08:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_02017204
	add r6, r6, #1
	add r7, r0, #0
	add r4, #0x14
	cmp r6, #4
	blt _021D4A08
	b _021D4A2E
_021D4A20:
	sub r1, #0x20
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x88
	bl sub_02017204
	add r7, r0, #0
_021D4A2E:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A44
	sub r1, #0x14
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x9c
	bl sub_020171CC
_021D4A44:
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A5A
	sub r1, #0x18
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x9c
	bl sub_02017204
_021D4A5A:
	cmp r7, #1
	bne _021D4A66
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D4A66:
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	add r0, r5, #0
	bl sub_02017294
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
_021D4A82:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D49B4

	thumb_func_start ov100_021D4A84
ov100_021D4A84: ; 0x021D4A84
	ldr r3, _021D4A8C ; =sub_02017110
	add r0, #0x78
	bx r3
	nop
_021D4A8C: .word sub_02017110
	thumb_func_end ov100_021D4A84

	thumb_func_start ov100_021D4A90
ov100_021D4A90: ; 0x021D4A90
	mov r3, #0x14
	add r1, #0x88
	mul r3, r0
	add r0, r1, r3
	ldr r3, _021D4AA0 ; =sub_020171A0
	add r1, r2, #0
	bx r3
	nop
_021D4AA0: .word sub_020171A0
	thumb_func_end ov100_021D4A90

	thumb_func_start ov100_021D4AA4
ov100_021D4AA4: ; 0x021D4AA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov100_021D4A84
	mov r4, #0
	cmp r5, #0
	ble _021D4AC6
_021D4AB6:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov100_021D4A90
	add r4, r4, #1
	cmp r4, r5
	blt _021D4AB6
_021D4AC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4AA4

	thumb_func_start ov100_021D4AC8
ov100_021D4AC8: ; 0x021D4AC8
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r1, r2, #0
	add r2, r3, #0
	add r0, #0x78
	mov r3, #0x6f
	bl sub_020170D8
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x78
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4AC8

	thumb_func_start ov100_021D4B10
ov100_021D4B10: ; 0x021D4B10
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r2, #0x78
	add r0, r4, #0
	add r1, r2, #0
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4B10

	thumb_func_start ov100_021D4B4C
ov100_021D4B4C: ; 0x021D4B4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x6f
	add r4, r5, #0
	mov r1, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r7, r2, #0
	mul r6, r1
	add r1, r5, #0
	add r2, r3, #0
	add r4, #0x88
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, #0x78
	add r3, r7, #0
	bl sub_02017164
	add r0, r4, r6
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r1, r4, r6
	bl sub_0201727C
	mov r1, #1
	mov r0, #0x55
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x81
	str r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x79
	str r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4B4C

	thumb_func_start ov100_021D4BA0
ov100_021D4BA0: ; 0x021D4BA0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r4, r0, #0
	mov r0, #0x6f
	add r5, r6, #0
	mov r2, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mul r4, r2
	add r5, #0x88
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r5, r4
	add r1, #0x78
	bl sub_02017164
	add r0, r5, r4
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	add r1, r5, r4
	bl sub_0201727C
	mov r1, #1
	mov r0, #0x55
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x81
	str r1, [r6, r0]
	add r0, r1, #0
	add r0, #0x79
	str r1, [r6, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4BA0

	thumb_func_start ov100_021D4BF0
ov100_021D4BF0: ; 0x021D4BF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D4C2A
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhs _021D4C18
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C18:
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xc0
	strb r1, [r0]
	b _021D4C54
_021D4C2A:
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D4C44
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C44:
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xc0
	strb r1, [r0]
_021D4C54:
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	mov r1, #1
	mov r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 ; =0x0000CCCC
	mov r3, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl sub_020039B0
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	mov r1, #1
	mov r2, #4
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 ; =0x0000CCCC
	mov r3, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl sub_020039B0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D4C90: .word 0x0000CCCC
	thumb_func_end ov100_021D4BF0

	thumb_func_start ov100_021D4C94
ov100_021D4C94: ; 0x021D4C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r3, _021D4DBC ; =0x021D5448
	add r5, r0, #0
	ldrb r0, [r3]
	add r2, sp, #8
	add r4, r1, #0
	strb r0, [r2, #6]
	ldrb r0, [r3, #1]
	ldr r6, _021D4DC0 ; =0x021D5478
	add r7, sp, #0x20
	strb r0, [r2, #7]
	ldrb r0, [r3, #2]
	cmp r4, #3
	strb r0, [r2, #8]
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldrb r0, [r3, #3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	ldrb r0, [r3, #5]
	strb r0, [r2, #2]
	ldrb r0, [r3, #6]
	strb r0, [r2, #3]
	ldrb r0, [r3, #7]
	strb r0, [r2, #4]
	ldrb r0, [r3, #8]
	ldr r3, _021D4DC4 ; =0x021D5454
	strb r0, [r2, #5]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	blo _021D4CE6
	mov r4, #2
_021D4CE6:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #2
	bne _021D4D1E
	add r0, r5, #0
	add r0, #0xc2
	ldrb r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #1
	cmp r1, r0
	bge _021D4D0E
	add r0, r5, #0
	add r0, #0xc2
	ldrb r0, [r0]
	add r5, #0xc2
	add sp, #0x38
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D0E:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc0
	strb r1, [r0]
	add r5, #0xc2
	add sp, #0x38
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D1E:
	cmp r0, #0
	bne _021D4D52
	add r0, r5, #0
	add r0, #0xc1
	ldrb r2, [r0]
	lsl r1, r4, #3
	add r0, sp, #0x24
	ldr r0, [r0, r1]
	cmp r2, r0
	bge _021D4D42
	add r0, r5, #0
	add r0, #0xc1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D42:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc0
	strb r1, [r0]
	b _021D4D80
_021D4D52:
	add r0, r5, #0
	add r0, #0xc1
	ldrb r2, [r0]
	lsl r1, r4, #3
	add r0, sp, #0x20
	ldr r0, [r0, r1]
	cmp r2, r0
	ble _021D4D72
	add r0, r5, #0
	add r0, #0xc1
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D72:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc0
	strb r1, [r0]
_021D4D80:
	add r0, r5, #0
	add r1, sp, #0xc
	add r0, #0xc1
	add r1, #2
	ldrb r0, [r0]
	ldrb r1, [r1, r4]
	lsl r6, r4, #1
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r3, sp, #8
	lsl r1, r4, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	add r2, sp, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r3, #1
	ldrb r2, [r2, r6]
	ldrb r3, [r3, r6]
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_020039B0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4DBC: .word 0x021D5448
_021D4DC0: .word 0x021D5478
_021D4DC4: .word 0x021D5454
	thumb_func_end ov100_021D4C94

	thumb_func_start ov100_021D4DC8
ov100_021D4DC8: ; 0x021D4DC8
	ldr r1, _021D4DD0 ; =0x021BF6DC
	ldr r3, _021D4DD4 ; =sub_0201FFE8
	strb r0, [r1, #5]
	bx r3
	; .align 2, 0
_021D4DD0: .word 0x021BF6DC
_021D4DD4: .word sub_0201FFE8
	thumb_func_end ov100_021D4DC8

	thumb_func_start ov100_021D4DD8
ov100_021D4DD8: ; 0x021D4DD8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5f
	strb r1, [r0]
	mov r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4DFC ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	mov r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4E00 ; =0x04001050
	mov r1, #0x33
	bl sub_020BF578
	pop {r4, pc}
	nop
_021D4DFC: .word 0x04000050
_021D4E00: .word 0x04001050
	thumb_func_end ov100_021D4DD8

	.rodata


	.global Unk_ov100_021D5448
Unk_ov100_021D5448: ; 0x021D5448
	.incbin "incbin/overlay100_rodata.bin", 0x374, 0x377 - 0x374

	.global Unk_ov100_021D544B
Unk_ov100_021D544B: ; 0x021D544B
	.incbin "incbin/overlay100_rodata.bin", 0x377, 0x380 - 0x377

	.global Unk_ov100_021D5454
Unk_ov100_021D5454: ; 0x021D5454
	.incbin "incbin/overlay100_rodata.bin", 0x380, 0x38C - 0x380

	.global Unk_ov100_021D5460
Unk_ov100_021D5460: ; 0x021D5460
	.incbin "incbin/overlay100_rodata.bin", 0x38C, 0x398 - 0x38C

	.global Unk_ov100_021D546C
Unk_ov100_021D546C: ; 0x021D546C
	.incbin "incbin/overlay100_rodata.bin", 0x398, 0x3A4 - 0x398

	.global Unk_ov100_021D5478
Unk_ov100_021D5478: ; 0x021D5478
	.incbin "incbin/overlay100_rodata.bin", 0x3A4, 0x18

