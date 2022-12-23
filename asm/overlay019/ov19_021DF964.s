	.include "macros/function.inc"
	.include "overlay019/ov19_021DF964.inc"

	

	.text


	thumb_func_start ov19_021DF964
ov19_021DF964: ; 0x021DF964
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r4, #0x74
	add r0, r4, #0
	add r5, r1, #0
	bl ov19_021DFCF8
	add r0, r4, #0
	mov r1, #0x36
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x37
	bl ov19_021DFD08
	add r0, r4, #0
	add r0, #0x20
	strb r5, [r0]
	mov r0, #0
	add r4, #0x23
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DF964

	thumb_func_start ov19_021DF990
ov19_021DF990: ; 0x021DF990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x74
	add r0, r4, #0
	bl ov19_021DFCF8
	add r0, r4, #0
	mov r1, #1
	add r0, #0x23
	strb r1, [r0]
	add r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	bhi _021DF9C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DF9BC: ; jump table
	.short _021DFA3C - _021DF9BC - 2 ; case 0
	.short _021DFA66 - _021DF9BC - 2 ; case 1
	.short _021DF9C6 - _021DF9BC - 2 ; case 2
	.short _021DF9C6 - _021DF9BC - 2 ; case 3
	.short _021DFA90 - _021DF9BC - 2 ; case 4
_021DF9C6:
	add r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021DF9E8
	add r0, r5, #0
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF9DE
	mov r1, #0x24
	b _021DF9E0
_021DF9DE:
	mov r1, #0x23
_021DF9E0:
	add r0, r4, #0
	bl ov19_021DFD08
	b _021DF9F0
_021DF9E8:
	add r0, r4, #0
	mov r1, #0x22
	bl ov19_021DFD08
_021DF9F0:
	add r0, r4, #0
	mov r1, #0x25
	bl ov19_021DFD08
	add r0, r5, #0
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _021DFA0C
	add r0, r4, #0
	mov r1, #0x28
	bl ov19_021DFD08
_021DFA0C:
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DFA1A
	mov r1, #0x26
	b _021DFA1C
_021DFA1A:
	mov r1, #0x27
_021DFA1C:
	add r0, r4, #0
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x29
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2a
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA3C:
	add r0, r4, #0
	mov r1, #0x27
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x25
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x29
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2a
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA66:
	add r0, r4, #0
	mov r1, #0x26
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x25
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x29
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2a
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA90:
	add r0, r5, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021DFA9E
	mov r1, #0x34
	b _021DFAA0
_021DFA9E:
	mov r1, #0x35
_021DFAA0:
	add r0, r4, #0
	bl ov19_021DFD08
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DFAB4
	mov r1, #0x26
	b _021DFAB6
_021DFAB4:
	mov r1, #0x27
_021DFAB6:
	add r0, r4, #0
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x29
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF990

	thumb_func_start ov19_021DFAD0
ov19_021DFAD0: ; 0x021DFAD0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0x74
	bl ov19_021D5F7C
	add r6, r0, #0
	add r0, r4, #0
	bl ov19_021D5E74
	add r4, r0, #0
	add r0, r5, #0
	bl ov19_021DFCF8
	add r0, r5, #0
	mov r1, #1
	add r0, #0x23
	strb r1, [r0]
	cmp r6, #0
	beq _021DFB20
	cmp r4, #0
	beq _021DFB06
	add r0, r5, #0
	mov r1, #0x31
	bl ov19_021DFD08
	b _021DFB0E
_021DFB06:
	add r0, r5, #0
	mov r1, #0x2e
	bl ov19_021DFD08
_021DFB0E:
	add r0, r5, #0
	mov r1, #0x32
	bl ov19_021DFD08
	add r0, r5, #0
	mov r1, #0x30
	bl ov19_021DFD08
	b _021DFB46
_021DFB20:
	cmp r4, #0
	beq _021DFB3E
	add r0, r5, #0
	mov r1, #0x2f
	bl ov19_021DFD08
	add r0, r5, #0
	mov r1, #0x32
	bl ov19_021DFD08
	add r0, r5, #0
	mov r1, #0x30
	bl ov19_021DFD08
	b _021DFB46
_021DFB3E:
	add r0, r5, #0
	mov r1, #0x2e
	bl ov19_021DFD08
_021DFB46:
	add r0, r5, #0
	mov r1, #0x33
	bl ov19_021DFD08
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DFAD0

	thumb_func_start ov19_021DFB50
ov19_021DFB50: ; 0x021DFB50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x74
	bl ov19_021D5E90
	add r0, r4, #0
	bl ov19_021DFCF8
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DFD08
	add r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DFB84
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #2
	bl ov19_021DFD08
_021DFB84:
	add r0, r4, #0
	mov r1, #3
	bl ov19_021DFD08
	mov r0, #2
	add r4, #0x23
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DFB50

	thumb_func_start ov19_021DFB94
ov19_021DFB94: ; 0x021DFB94
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r4, #0x74
	add r5, r1, #0
	bl ov19_021D5E90
	add r6, r0, #0
	add r0, r4, #0
	bl ov19_021DFCF8
	add r0, r4, #0
	mov r1, #4
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #5
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #6
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #7
	bl ov19_021DFD08
	add r0, r6, #0
	bl sub_02079D20
	add r6, r0, #0
	beq _021DFBDA
	add r0, r4, #0
	mov r1, #8
	bl ov19_021DFD08
_021DFBDA:
	cmp r6, #4
	bls _021DFBE6
	add r0, r4, #0
	mov r1, #9
	bl ov19_021DFD08
_021DFBE6:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x23
	strb r1, [r0]
	cmp r5, #4
	blt _021DFBFE
	cmp r5, #9
	bgt _021DFBFE
	sub r0, r5, #4
	add r4, #0x20
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021DFBFE:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DFB94

	thumb_func_start ov19_021DFC04
ov19_021DFC04: ; 0x021DFC04
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r6, #0x74
	add r5, r1, #0
	bl ov19_021D5E90
	str r0, [sp]
	add r0, r6, #0
	bl ov19_021DFCF8
	cmp r5, #4
	blt _021DFC3C
	cmp r5, #7
	bgt _021DFC3C
	sub r0, r5, #4
	ldr r1, _021DFC7C ; =0x021E058C
	lsl r0, r0, #3
	mov r5, #0
	add r4, r1, r0
_021DFC2A:
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov19_021DFD08
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _021DFC2A
	b _021DFC72
_021DFC3C:
	mov r4, #0
	add r7, r4, #0
	cmp r5, #9
	bne _021DFC46
	mov r4, #4
_021DFC46:
	mov r5, #0
_021DFC48:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_02079CFC
	cmp r0, #0
	beq _021DFC6C
	cmp r4, #0
	beq _021DFC5C
	sub r4, r4, #1
	b _021DFC6C
_021DFC5C:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x1a
	bl ov19_021DFD08
	add r7, r7, #1
	cmp r7, #4
	bge _021DFC72
_021DFC6C:
	add r5, r5, #1
	cmp r5, #8
	blt _021DFC48
_021DFC72:
	mov r0, #3
	add r6, #0x23
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFC7C: .word 0x021E058C
	thumb_func_end ov19_021DFC04

	thumb_func_start ov19_021DFC80
ov19_021DFC80: ; 0x021DFC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x74
	add r0, r4, #0
	bl ov19_021DFCF8
	add r0, r4, #0
	mov r1, #4
	add r0, #0x23
	strb r1, [r0]
	add r5, #0x57
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x38
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x39
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x3a
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x3b
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x3c
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x3d
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2c
	bl ov19_021DFD08
	add r0, r4, #0
	mov r1, #0x2d
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DFC80

	thumb_func_start ov19_021DFCE4
ov19_021DFCE4: ; 0x021DFCE4
	add r2, r0, #0
	add r2, #0x96
	ldrb r3, [r2]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	eor r1, r2
	add r0, #0x96
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021DFCE4

	thumb_func_start ov19_021DFCF8
ov19_021DFCF8: ; 0x021DFCF8
	add r1, r0, #0
	mov r2, #0
	add r1, #0x21
	strb r2, [r1]
	add r0, #0x20
	strb r2, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DFCF8

	thumb_func_start ov19_021DFD08
ov19_021DFD08: ; 0x021DFD08
	push {r3, r4}
	add r2, r0, #0
	add r2, #0x21
	ldrb r4, [r2]
	cmp r4, #8
	bhs _021DFD26
	add r2, r0, #0
	add r2, #0x21
	ldrb r2, [r2]
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0x21
	strb r3, [r2]
	lsl r2, r4, #2
	str r1, [r0, r2]
_021DFD26:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DFD08

	thumb_func_start ov19_021DFD2C
ov19_021DFD2C: ; 0x021DFD2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021DFDD4 ; =0x021BF67C
	add r4, #0x74
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	add r2, r1, #0
	tst r2, r0
	beq _021DFD6C
	add r2, r4, #0
	add r2, #0x20
	ldrb r2, [r2]
	cmp r2, #0
	beq _021DFD58
	add r1, r4, #0
	add r1, #0x20
	ldrb r1, [r1]
	add r4, #0x20
	sub r0, #0x42
	sub r1, r1, #1
	strb r1, [r4]
	pop {r3, r4, r5, pc}
_021DFD58:
	add r2, r4, #0
	add r2, #0x21
	ldrb r2, [r2]
	cmp r2, #3
	blo _021DFD6C
	sub r1, r2, #1
	add r4, #0x20
	strb r1, [r4]
	sub r0, #0x42
	pop {r3, r4, r5, pc}
_021DFD6C:
	mov r0, #0x80
	add r2, r1, #0
	tst r2, r0
	beq _021DFDA4
	add r2, r4, #0
	add r2, #0x21
	ldrb r5, [r2]
	add r2, r4, #0
	add r2, #0x20
	ldrb r3, [r2]
	sub r2, r5, #1
	cmp r3, r2
	bge _021DFD96
	add r1, r4, #0
	add r1, #0x20
	ldrb r1, [r1]
	add r4, #0x20
	sub r0, #0x82
	add r1, r1, #1
	strb r1, [r4]
	pop {r3, r4, r5, pc}
_021DFD96:
	cmp r5, #3
	blo _021DFDA4
	mov r0, #0
	add r4, #0x20
	strb r0, [r4]
	sub r0, r0, #2
	pop {r3, r4, r5, pc}
_021DFDA4:
	mov r0, #2
	tst r0, r1
	beq _021DFDB6
	ldr r0, _021DFDD8 ; =0x000005DD
	bl sub_02005748
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021DFDB6:
	mov r0, #1
	tst r1, r0
	beq _021DFDCE
	ldr r0, _021DFDD8 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021DFDCE:
	sub r0, r0, #4
	pop {r3, r4, r5, pc}
	nop
_021DFDD4: .word 0x021BF67C
_021DFDD8: .word 0x000005DD
	thumb_func_end ov19_021DFD2C

	thumb_func_start ov19_021DFDDC
ov19_021DFDDC: ; 0x021DFDDC
	add r0, #0x74
	add r1, r0, #0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DFDDC

	thumb_func_start ov19_021DFDEC
ov19_021DFDEC: ; 0x021DFDEC
	ldr r0, [r0, #0x74]
	bx lr
	thumb_func_end ov19_021DFDEC

	.rodata


	.global Unk_ov19_021E058C
Unk_ov19_021E058C: ; 0x021E058C
	.incbin "incbin/overlay19_rodata.bin", 0x79C, 0x20

