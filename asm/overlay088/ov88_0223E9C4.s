	.include "macros/function.inc"
	.include "overlay088/ov88_0223E9C4.inc"

	

	.text


	thumb_func_start ov88_0223E9C4
ov88_0223E9C4: ; 0x0223E9C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r3, #0xa
	str r3, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r6, #8
	str r6, [sp, #0xc]
	add r5, r1, #0
	str r0, [sp, #0x14]
	str r2, [sp, #0x10]
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, #0x10
	mov r3, #0x14
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x15
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	add r1, #0x60
	mov r2, #1
	mov r3, #0x1a
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x60
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0223EBF4 ; =0x000001D9
	mov r1, #0
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0223EBF8 ; =0x000001F7
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0x15
	str r1, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r3, #2
	lsl r1, r1, #4
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0x16
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x38
	mov r1, #0x17
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r1, #0xa4
	str r1, [sp, #0x10]
	add r1, #0xdc
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #0x14
	bl sub_0201A7E8
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r1, #0xe6
	str r1, [sp, #0x10]
	add r1, #0xaa
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #0x14
	bl sub_0201A7E8
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r4, _0223EBFC ; =0x0223F170
	mov r7, #0
	mov r6, #0x33
_0223EB5E:
	add r0, r7, #7
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	mov r2, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	add r7, r7, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r7, #0xe
	blt _0223EB5E
	ldr r4, _0223EC00 ; =0x0223F1A8
	mov r6, #0
_0223EBA8:
	add r0, r6, #0
	add r0, #0x1a
	lsl r7, r0, #4
	ldrh r0, [r4, #2]
	add r1, r5, r7
	mov r2, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldrh r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, r7
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #0xa
	cmp r6, #8
	blt _0223EBA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223EBF4: .word 0x000001D9
_0223EBF8: .word 0x000001F7
_0223EBFC: .word 0x0223F170
_0223EC00: .word 0x0223F1A8
	thumb_func_end ov88_0223E9C4

	thumb_func_start ov88_0223EC04
ov88_0223EC04: ; 0x0223EC04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0223EC0A:
	add r0, r5, #7
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r5, r5, #1
	cmp r5, #0xe
	blt _0223EC0A
	mov r5, #0
_0223EC1C:
	add r0, r5, #0
	add r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r5, r5, #1
	cmp r5, #8
	blt _0223EC1C
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201A8FC
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223EC04

	thumb_func_start ov88_0223EC78
ov88_0223EC78: ; 0x0223EC78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x20]
	add r5, r0, #0
	add r6, r1, #0
	cmp r3, #1
	bne _0223EC9C
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r5, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r3, r0, #1
_0223EC9C:
	ldr r0, [sp, #0x24]
	mov r1, #0
	str r0, [sp]
	ldr r0, _0223ECB8 ; =0x000B0C00
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ECB8: .word 0x000B0C00
	thumb_func_end ov88_0223EC78

	thumb_func_start ov88_0223ECBC
ov88_0223ECBC: ; 0x0223ECBC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r1, r3, #0
	ldr r0, [sp, #0x20]
	add r2, r6, #0
	mov r3, #0x1a
	bl sub_0200B29C
	add r6, r0, #0
	cmp r4, #1
	bne _0223ECE6
	ldr r2, _0223ED20 ; =0x000001D9
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	b _0223ECF2
_0223ECE6:
	ldr r2, _0223ED24 ; =0x000001F7
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
_0223ECF2:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223ED28 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ED20: .word 0x000001D9
_0223ED24: .word 0x000001F7
_0223ED28: .word 0x0001020F
	thumb_func_end ov88_0223ECBC

	thumb_func_start ov88_0223ED2C
ov88_0223ED2C: ; 0x0223ED2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	add r5, r1, #0
	mov r6, #0
	ldr r1, [r4, #0]
	mvn r6, r6
	cmp r1, #0
	beq _0223ED44
	cmp r1, #1
	beq _0223ED5C
	b _0223ED72
_0223ED44:
	mov r1, #0x1a
	str r1, [sp]
	ldr r1, _0223ED78 ; =0x0223F148
	ldr r2, _0223ED7C ; =0x000001F7
	mov r3, #0xb
	bl sub_02002100
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223ED72
_0223ED5C:
	ldr r0, [r5, #0]
	mov r1, #0x1a
	bl sub_02002114
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223ED72
	mov r0, #0
	str r0, [r4, #0]
_0223ED72:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223ED78: .word 0x0223F148
_0223ED7C: .word 0x000001F7
	thumb_func_end ov88_0223ED2C

	thumb_func_start ov88_0223ED80
ov88_0223ED80: ; 0x0223ED80
	push {r3, lr}
	ldr r2, _0223ED90 ; =0x000001F7
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	pop {r3, pc}
	nop
_0223ED90: .word 0x000001F7
	thumb_func_end ov88_0223ED80

	thumb_func_start ov88_0223ED94
ov88_0223ED94: ; 0x0223ED94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223EE04 ; =0x0000014D
	add r4, r2, #0
	add r6, r1, #0
	str r0, [sp, #0x10]
	add r0, r3, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x13
	bl sub_0201A7E8
	ldr r2, _0223EE08 ; =0x000001F7
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	ldr r3, _0223EE0C ; =0x0223F150
	add r2, sp, #0x14
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r6, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	mov r1, #5
	strh r1, [r0, #0x12]
	ldr r0, _0223EE10 ; =ov88_0223EE14
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #0x1a
	str r5, [sp, #0x14]
	str r4, [sp, #0x20]
	bl sub_0200112C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223EE04: .word 0x0000014D
_0223EE08: .word 0x000001F7
_0223EE0C: .word 0x0223F150
_0223EE10: .word ov88_0223EE14
	thumb_func_end ov88_0223ED94

	thumb_func_start ov88_0223EE14
ov88_0223EE14: ; 0x0223EE14
	push {r3, lr}
	cmp r2, #0
	bne _0223EE20
	ldr r0, _0223EE24 ; =0x000005DC
	bl sub_02005748
_0223EE20:
	pop {r3, pc}
	nop
_0223EE24: .word 0x000005DC
	thumb_func_end ov88_0223EE14

	.rodata


	.global Unk_ov88_0223F148
Unk_ov88_0223F148: ; 0x0223F148
	.incbin "incbin/overlay88_rodata.bin", 0x320, 0x328 - 0x320

	.global Unk_ov88_0223F150
Unk_ov88_0223F150: ; 0x0223F150
	.incbin "incbin/overlay88_rodata.bin", 0x328, 0x348 - 0x328

	.global Unk_ov88_0223F170
Unk_ov88_0223F170: ; 0x0223F170
	.incbin "incbin/overlay88_rodata.bin", 0x348, 0x380 - 0x348

	.global Unk_ov88_0223F1A8
Unk_ov88_0223F1A8: ; 0x0223F1A8
	.incbin "incbin/overlay88_rodata.bin", 0x380, 0x50

