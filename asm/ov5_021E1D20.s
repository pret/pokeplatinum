	.include "macros/function.inc"
	.include "include/ov5_021E1D20.inc"

	

	.text


	thumb_func_start ov5_021E1D20
ov5_021E1D20: ; 0x021E1D20
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0xc]
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203A790
	bl sub_0203A720
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02027560
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl sub_0203A138
	str r0, [r5, #4]
	add r0, r7, #0
	bl sub_02027520
	cmp r0, #0
	beq _021E1D54
	add r0, r7, #0
	bl sub_02026E48
	b _021E1D56
_021E1D54:
	mov r0, #0
_021E1D56:
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02025E38
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_02025E5C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1D20

	thumb_func_start ov5_021E1D6C
ov5_021E1D6C: ; 0x021E1D6C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r2, [r4, #4]
	mov r1, #0
	add r5, r0, #0
	bl sub_0200B8C8
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B498
	ldr r0, [r4, #8]
	bl sub_02025F58
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B60C
	ldr r2, [r4, #0]
	cmp r2, #0x64
	blt _021E1DAA
	mov r3, #3
	mov r0, #0
	b _021E1DB8
_021E1DAA:
	cmp r2, #0xa
	blt _021E1DB4
	mov r3, #3
	mov r0, #1
	b _021E1DB8
_021E1DB4:
	mov r3, #2
	mov r0, #1
_021E1DB8:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	bl sub_0202CC58
	add r2, r0, #0
	cmp r2, #0x64
	blt _021E1DD8
	mov r3, #3
	mov r0, #0
	b _021E1DE6
_021E1DD8:
	cmp r2, #0xa
	blt _021E1DE2
	mov r3, #3
	mov r0, #1
	b _021E1DE6
_021E1DE2:
	mov r3, #2
	mov r0, #1
_021E1DE6:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	bl sub_0202CC5C
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #5
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E1D6C

	thumb_func_start ov5_021E1E10
ov5_021E1E10: ; 0x021E1E10
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021E1E1A
	mov r0, #0xa
	bx lr
_021E1E1A:
	mov r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E1E10

	thumb_func_start ov5_021E1E20
ov5_021E1E20: ; 0x021E1E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	mov r1, #1
	bl sub_02002DF8
	add r4, r0, #0
	mov r0, #0
	mov r1, #3
	bl sub_02002DF8
	add r0, r4, r0
	str r0, [sp, #0x14]
	mov r4, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r3, [r5, #4]
	add r2, r4, #0
	bl sub_0200B29C
	add r1, r4, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021E1EFC ; =0x021F9CD0
	ldr r7, _021E1F00 ; =0x021F9CC0
	str r0, [sp, #0xc]
_021E1E70:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0]
	cmp r1, #3
	bne _021E1E7E
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021E1EE6
_021E1E7E:
	ldr r0, [sp, #0x14]
	add r4, r4, r0
	ldr r0, [r5, #0x18]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	sub r2, r7, #4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r2, #0]
	ldr r3, [r5, #4]
	bl sub_0200B29C
	add r6, r0, #0
	mov r0, #0
	mov r1, #2
	bl sub_02002DF8
	add r2, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl sub_02002D7C
	mov r1, #0x68
	sub r3, r1, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r6, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
_021E1EE6:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _021E1E70
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E1EFC: .word 0x021F9CD0
_021E1F00: .word 0x021F9CC0
	thumb_func_end ov5_021E1E20

	thumb_func_start ov5_021E1F04
ov5_021E1F04: ; 0x021E1F04
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0x10]
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021E1F74 ; =0x00000189
	str r0, [sp, #0x10]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _021E1F78 ; =0x000003D9
	str r0, [sp, #4]
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0201ADA4
	add r0, r4, #0
	bl ov5_021E1E20
	ldr r0, [r4, #0x10]
	ldr r2, _021E1F78 ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021E1F74: .word 0x00000189
_021E1F78: .word 0x000003D9
	thumb_func_end ov5_021E1F04

	thumb_func_start ov5_021E1F7C
ov5_021E1F7C: ; 0x021E1F7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200DC9C
	ldr r0, [r4, #0x10]
	bl sub_0201A8FC
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1F7C

	thumb_func_start ov5_021E1F98
ov5_021E1F98: ; 0x021E1F98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #0]
	str r5, [r4, #4]
	strb r7, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0200B358
	str r0, [r4, #0x14]
	ldr r2, _021E1FF0 ; =0x00000216
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0]
	add r0, #0x1c
	bl ov5_021E1D20
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	bl ov5_021E1D6C
	mov r0, #0xd
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021E1E10
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E1FF0: .word 0x00000216
	thumb_func_end ov5_021E1F98

	thumb_func_start ov5_021E1FF4
ov5_021E1FF4: ; 0x021E1FF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021E1FF4

	thumb_func_start ov5_021E200C
ov5_021E200C: ; 0x021E200C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021E2028
	ldr r0, [r4, #0xc]
	bl sub_020246E0
	cmp r0, #2
	bne _021E2022
	mov r0, #1
	pop {r4, pc}
_021E2022:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E200C

	thumb_func_start ov5_021E2028
ov5_021E2028: ; 0x021E2028
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A7A8
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov5_021EA714
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0xc]
	mov r1, #0
	ldr r0, [r4, #0x1c]
	mvn r1, r1
	str r1, [r0, #4]
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E2028

	thumb_func_start ov5_021E2064
ov5_021E2064: ; 0x021E2064
	push {r4, lr}
	add r4, r0, #0
	bne _021E2070
	bl sub_02022974
	pop {r4, pc}
_021E2070:
	ldr r0, [r4, #0x1c]
	mov r1, #0x53
	ldr r2, [r0, #0]
	lsl r1, r1, #2
	cmp r2, r1
	beq _021E2096
	add r0, r1, #1
	cmp r2, r0
	beq _021E2096
	add r1, #0x86
	cmp r2, r1
	beq _021E2096
	bl sub_02038EB4
	cmp r0, #1
	beq _021E2096
	add r0, r4, #0
	bl ov5_021E2028
_021E2096:
	pop {r4, pc}
	thumb_func_end ov5_021E2064

	.rodata


	.global Unk_ov5_021F9CBC
Unk_ov5_021F9CBC: ; 0x021F9CBC
	.incbin "incbin/overlay5_rodata.bin", 0x13A8, 0x13B8 - 0x13A8

	.global Unk_ov5_021F9CCC
Unk_ov5_021F9CCC: ; 0x021F9CCC
	.incbin "incbin/overlay5_rodata.bin", 0x13B8, 0x14

