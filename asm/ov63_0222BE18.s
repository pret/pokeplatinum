	.include "macros/function.inc"
	.include "include/ov63_0222BE18.inc"

	

	.text


	thumb_func_start ov63_0222BE18
ov63_0222BE18: ; 0x0222BE18
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _0222BE2E
	bl sub_02022974
_0222BE2E:
	mov r1, #0x18
	add r0, r6, #0
	mul r1, r5
	str r5, [r4, #4]
	bl sub_02018144
	str r0, [r4, #0]
	cmp r0, #0
	bne _0222BE44
	bl sub_02022974
_0222BE44:
	ldr r3, [r4, #4]
	mov r2, #0x18
	ldr r0, [r4, #0]
	mov r1, #0
	mul r2, r3
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BE18

	thumb_func_start ov63_0222BE58
ov63_0222BE58: ; 0x0222BE58
	push {r4, lr}
	add r4, r0, #0
	bne _0222BE62
	bl sub_02022974
_0222BE62:
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov63_0222BE58

	thumb_func_start ov63_0222BE70
ov63_0222BE70: ; 0x0222BE70
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4, #7]
	bl ov63_0222BF18
	add r1, r4, #0
	bl ov63_0222C350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BE70

	thumb_func_start ov63_0222BE84
ov63_0222BE84: ; 0x0222BE84
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov63_0222BEB0
	add r5, r0, #0
	ldr r4, _0222BEAC ; =0x00000000
	beq _0222BEAA
_0222BE92:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov63_0222BF50
	cmp r0, #0
	beq _0222BEA4
	bl ov63_0222C37C
_0222BEA4:
	add r4, r4, #1
	cmp r4, r5
	blo _0222BE92
_0222BEAA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222BEAC: .word 0x00000000
	thumb_func_end ov63_0222BE84

	thumb_func_start ov63_0222BEB0
ov63_0222BEB0: ; 0x0222BEB0
	push {r4, lr}
	add r4, r0, #0
	bne _0222BEBA
	bl sub_02022974
_0222BEBA:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BEB0

	thumb_func_start ov63_0222BEC0
ov63_0222BEC0: ; 0x0222BEC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0222BECE
	bl sub_02022974
_0222BECE:
	cmp r4, #0
	bne _0222BED6
	bl sub_02022974
_0222BED6:
	add r0, r5, #0
	bl ov63_0222C0B8
	mov r1, #0
	ldrsh r2, [r4, r1]
	strh r2, [r0, #4]
	mov r2, #2
	ldrsh r3, [r4, r2]
	strh r3, [r0, #6]
	ldrsh r1, [r4, r1]
	strh r1, [r0, #8]
	ldrsh r1, [r4, r2]
	strh r1, [r0, #0xa]
	ldrh r1, [r4, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r4, #6]
	strb r1, [r0, #0x15]
	ldrh r1, [r4, #8]
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #0xa]
	strh r1, [r0, #0xe]
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BEC0

	thumb_func_start ov63_0222BF08
ov63_0222BF08: ; 0x0222BF08
	mov r2, #0x18
	mov r1, #0
_0222BF0C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0222BF0C
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222BF08

	thumb_func_start ov63_0222BF18
ov63_0222BF18: ; 0x0222BF18
	push {r3, r4, r5, r6}
	ldr r5, [r0, #4]
	mov r2, #0
	cmp r5, #0
	bls _0222BF4A
	ldr r4, [r0, #0]
	add r3, r2, #0
	add r0, r4, #0
_0222BF28:
	ldr r6, [r0, #0]
	cmp r6, #1
	bne _0222BF40
	add r6, r4, r3
	ldrh r6, [r6, #0xc]
	cmp r1, r6
	bne _0222BF40
	mov r0, #0x18
	mul r0, r2
	add r0, r4, r0
	pop {r3, r4, r5, r6}
	bx lr
_0222BF40:
	add r2, r2, #1
	add r0, #0x18
	add r3, #0x18
	cmp r2, r5
	blo _0222BF28
_0222BF4A:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov63_0222BF18

	thumb_func_start ov63_0222BF50
ov63_0222BF50: ; 0x0222BF50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0222BF5E
	bl sub_02022974
_0222BF5E:
	ldr r0, [r5, #4]
	cmp r4, r0
	blo _0222BF68
	bl sub_02022974
_0222BF68:
	ldr r2, [r5, #0]
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _0222BF7A
	add r0, r2, r1
	pop {r3, r4, r5, pc}
_0222BF7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BF50

	thumb_func_start ov63_0222BF80
ov63_0222BF80: ; 0x0222BF80
	ldr r3, _0222BF84 ; =ov63_0222BF18
	bx r3
	; .align 2, 0
_0222BF84: .word ov63_0222BF18
	thumb_func_end ov63_0222BF80

	thumb_func_start ov63_0222BF88
ov63_0222BF88: ; 0x0222BF88
	ldr r3, _0222BF8C ; =ov63_0222BF50
	bx r3
	; .align 2, 0
_0222BF8C: .word ov63_0222BF50
	thumb_func_end ov63_0222BF88

	thumb_func_start ov63_0222BF90
ov63_0222BF90: ; 0x0222BF90
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	cmp r4, #0
	bne _0222BF9E
	bl sub_02022974
_0222BF9E:
	cmp r6, #0xa
	bhi _0222BFF8
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BFAE: ; jump table
	.short _0222BFC4 - _0222BFAE - 2 ; case 0
	.short _0222BFCA - _0222BFAE - 2 ; case 1
	.short _0222BFD0 - _0222BFAE - 2 ; case 2
	.short _0222BFD6 - _0222BFAE - 2 ; case 3
	.short _0222BFDC - _0222BFAE - 2 ; case 4
	.short _0222BFE0 - _0222BFAE - 2 ; case 5
	.short _0222BFE4 - _0222BFAE - 2 ; case 6
	.short _0222BFE8 - _0222BFAE - 2 ; case 7
	.short _0222BFEC - _0222BFAE - 2 ; case 8
	.short _0222BFF0 - _0222BFAE - 2 ; case 9
	.short _0222BFF4 - _0222BFAE - 2 ; case 10
_0222BFC4:
	mov r0, #4
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFCA:
	mov r0, #6
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFD0:
	mov r0, #8
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFD6:
	mov r0, #0xa
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFDC:
	ldrh r5, [r4, #0xc]
	b _0222BFFC
_0222BFE0:
	ldrb r5, [r4, #0x15]
	b _0222BFFC
_0222BFE4:
	ldrb r5, [r4, #0x14]
	b _0222BFFC
_0222BFE8:
	ldrh r5, [r4, #0xe]
	b _0222BFFC
_0222BFEC:
	ldrh r5, [r4, #0x10]
	b _0222BFFC
_0222BFF0:
	ldrh r5, [r4, #0x12]
	b _0222BFFC
_0222BFF4:
	ldrh r5, [r4, #0x16]
	b _0222BFFC
_0222BFF8:
	bl sub_02022974
_0222BFFC:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222BF90

	thumb_func_start ov63_0222C000
ov63_0222C000: ; 0x0222C000
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C010
	bl sub_02022974
_0222C010:
	cmp r6, #0xa
	bhi _0222C072
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C020: ; jump table
	.short _0222C036 - _0222C020 - 2 ; case 0
	.short _0222C03A - _0222C020 - 2 ; case 1
	.short _0222C03E - _0222C020 - 2 ; case 2
	.short _0222C042 - _0222C020 - 2 ; case 3
	.short _0222C046 - _0222C020 - 2 ; case 4
	.short _0222C04A - _0222C020 - 2 ; case 5
	.short _0222C056 - _0222C020 - 2 ; case 6
	.short _0222C062 - _0222C020 - 2 ; case 7
	.short _0222C066 - _0222C020 - 2 ; case 8
	.short _0222C06A - _0222C020 - 2 ; case 9
	.short _0222C06E - _0222C020 - 2 ; case 10
_0222C036:
	strh r4, [r5, #4]
	pop {r4, r5, r6, pc}
_0222C03A:
	strh r4, [r5, #6]
	pop {r4, r5, r6, pc}
_0222C03E:
	strh r4, [r5, #8]
	pop {r4, r5, r6, pc}
_0222C042:
	strh r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
_0222C046:
	strh r4, [r5, #0xc]
	pop {r4, r5, r6, pc}
_0222C04A:
	cmp r4, #0xc
	blt _0222C052
	bl sub_02022974
_0222C052:
	strb r4, [r5, #0x15]
	pop {r4, r5, r6, pc}
_0222C056:
	cmp r4, #4
	blt _0222C05E
	bl sub_02022974
_0222C05E:
	strb r4, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0222C062:
	strh r4, [r5, #0xe]
	pop {r4, r5, r6, pc}
_0222C066:
	strh r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
_0222C06A:
	strh r4, [r5, #0x12]
	pop {r4, r5, r6, pc}
_0222C06E:
	strh r4, [r5, #0x16]
	pop {r4, r5, r6, pc}
_0222C072:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222C000

	thumb_func_start ov63_0222C078
ov63_0222C078: ; 0x0222C078
	push {r0, r1, r2, r3}
	lsl r0, r1, #1
	add r2, sp, #0
	mov r1, #0
	ldrsh r3, [r2, r1]
	ldr r1, _0222C0A4 ; =0x0222DC04
	ldrsb r1, [r1, r0]
	add r1, r3, r1
	strh r1, [r2]
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, _0222C0A8 ; =0x0222DC05
	ldrsb r0, [r1, r0]
	add r0, r3, r0
	strh r0, [r2, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r2]
	lsl r1, r1, #0x10
	orr r0, r1
	add sp, #0x10
	bx lr
	nop
_0222C0A4: .word 0x0222DC04
_0222C0A8: .word 0x0222DC05
	thumb_func_end ov63_0222C078

	thumb_func_start ov63_0222C0AC
ov63_0222C0AC: ; 0x0222C0AC
	ldr r1, _0222C0B4 ; =0x0222DC00
	ldrb r0, [r1, r0]
	bx lr
	nop
_0222C0B4: .word 0x0222DC00
	thumb_func_end ov63_0222C0AC

	thumb_func_start ov63_0222C0B8
ov63_0222C0B8: ; 0x0222C0B8
	push {r4, lr}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	bls _0222C0DC
	ldr r3, [r0, #0]
	add r2, r3, #0
_0222C0C6:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _0222C0D4
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r4, pc}
_0222C0D4:
	add r1, r1, #1
	add r2, #0x18
	cmp r1, r4
	blo _0222C0C6
_0222C0DC:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov63_0222C0B8

	thumb_func_start ov63_0222C0E4
ov63_0222C0E4: ; 0x0222C0E4
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #4]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222C0E4

	thumb_func_start ov63_0222C0F0
ov63_0222C0F0: ; 0x0222C0F0
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222C0F0

	thumb_func_start ov63_0222C0FC
ov63_0222C0FC: ; 0x0222C0FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #8
	bl ov63_0222BF90
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #9
	bl ov63_0222BF90
	add r6, r0, #0
	add r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	add r0, r5, #0
	bl ov63_0222C0F0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r2, #8
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	mov r0, #0xc
	ldrsh r3, [r1, r0]
	ldrsh r2, [r1, r2]
	sub r2, r3, r2
	strh r2, [r1, #0xc]
	mov r2, #0xa
	ldrsh r5, [r1, r2]
	mov r2, #0xe
	ldrsh r2, [r1, r2]
	sub r2, r2, r5
	strh r2, [r1, #0xe]
	cmp r4, #0
	ble _0222C17A
	ldrsh r0, [r1, r0]
	add r1, r6, #0
	mul r0, r4
	bl sub_020E1F6C
	add r1, sp, #0
	strh r0, [r1, #0xc]
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	add r1, r6, #0
	mul r0, r4
	bl sub_020E1F6C
	add r1, sp, #0
	b _0222C17E
_0222C17A:
	mov r0, #0
	strh r0, [r1, #0xc]
_0222C17E:
	strh r0, [r1, #0xe]
	add r1, sp, #0
	mov r0, #0xc
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #0xc]
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	add r0, r0, r5
	strh r0, [r1, #0xe]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	lsl r1, r2, #0x10
	orr r0, r1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222C0FC

	thumb_func_start ov63_0222C1A4
ov63_0222C1A4: ; 0x0222C1A4
	push {r0, r1, r2, r3}
	add r1, sp, #0
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	add sp, #0x10
	bx lr
	thumb_func_end ov63_0222C1A4

	thumb_func_start ov63_0222C1B4
ov63_0222C1B4: ; 0x0222C1B4
	push {r0, r1, r2, r3}
	add r1, sp, #0
	ldrh r2, [r1, #4]
	strh r2, [r0, #8]
	ldrh r1, [r1, #6]
	strh r1, [r0, #0xa]
	add sp, #0x10
	bx lr
	thumb_func_end ov63_0222C1B4

	thumb_func_start ov63_0222C1C4
ov63_0222C1C4: ; 0x0222C1C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp]
	add r4, r2, #0
	bl ov63_0222C0E4
	add r1, sp, #0x10
	strh r0, [r1, #0xc]
	lsr r0, r0, #0x10
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0x1c]
	ldrh r0, [r1, #0xe]
	strh r0, [r1, #0x1e]
	ldrh r0, [r1, #0x1c]
	strh r0, [r2]
	ldrh r0, [r1, #0x1e]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r1, sp, #0x10
	strh r0, [r1, #8]
	lsr r0, r0, #0x10
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #8]
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0xa]
	strh r0, [r1, #0x16]
	add r0, r5, #0
	mov r1, #4
	bl ov63_0222BF90
	str r0, [sp, #4]
	ldr r0, [sp]
	bl ov63_0222BEB0
	mov r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _0222C2A4
	add r4, sp, #0x10
	mov r0, #0x16
	ldrsh r7, [r4, r0]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
_0222C22A:
	lsl r1, r5, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl ov63_0222BF88
	add r6, r0, #0
	beq _0222C29C
	mov r1, #4
	bl ov63_0222BF90
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _0222C29C
	add r0, r6, #0
	bl ov63_0222C0E4
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x1a]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0222C270
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C270
	add sp, #0x30
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222C270:
	add r0, r6, #0
	bl ov63_0222C0F0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0222C29C
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C29C
	add sp, #0x30
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222C29C:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _0222C22A
_0222C2A4:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov63_0222C1C4

	thumb_func_start ov63_0222C2AC
ov63_0222C2AC: ; 0x0222C2AC
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, sp, #0x30
	mov r1, #6
	str r0, [sp]
	ldrsh r6, [r2, r1]
	bl ov63_0222BEB0
	mov r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _0222C344
	add r1, sp, #0x30
	mov r0, #4
	ldrsh r7, [r1, r0]
	add r4, sp, #0xc
_0222C2CE:
	lsl r1, r5, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl ov63_0222BF88
	str r0, [sp, #4]
	cmp r0, #0
	beq _0222C33C
	bl ov63_0222C0E4
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0xe]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C30C
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, r6
	bne _0222C30C
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0222C30C:
	ldr r0, [sp, #4]
	bl ov63_0222C0F0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C33C
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, r6
	bne _0222C33C
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0222C33C:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _0222C2CE
_0222C344:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C2AC

	thumb_func_start ov63_0222C350
ov63_0222C350: ; 0x0222C350
	push {r3, r4, r5, lr}
	add r3, r1, #0
	ldrh r1, [r3]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r3, #2]
	add r4, r0, #0
	strh r1, [r2, #2]
	ldr r1, [r2, #0]
	ldrb r2, [r3, #6]
	ldrh r3, [r3, #4]
	lsl r5, r3, #2
	ldr r3, _0222C378 ; =0x0222DC0C
	ldr r3, [r3, r5]
	blx r3
	mov r0, #0
	strh r0, [r4, #0x16]
	pop {r3, r4, r5, pc}
	nop
_0222C378: .word 0x0222DC0C
	thumb_func_end ov63_0222C350

	thumb_func_start ov63_0222C37C
ov63_0222C37C: ; 0x0222C37C
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl ov63_0222BF90
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _0222C3A8 ; =0x0222DC3C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	ldrh r1, [r4, #0x16]
	add r1, r1, #1
	strh r1, [r4, #0x16]
	cmp r0, #1
	bne _0222C3A6
	add r0, r4, #0
	bl ov63_0222CA48
	mov r0, #0
	strh r0, [r4, #0x16]
_0222C3A6:
	pop {r4, pc}
	; .align 2, 0
_0222C3A8: .word 0x0222DC3C
	thumb_func_end ov63_0222C37C

	thumb_func_start ov63_0222C3AC
ov63_0222C3AC: ; 0x0222C3AC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C3BC
	bl sub_02022974
_0222C3BC:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C3AC

	thumb_func_start ov63_0222C404
ov63_0222C404: ; 0x0222C404
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C414
	bl sub_02022974
_0222C414:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #2
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C404

	thumb_func_start ov63_0222C470
ov63_0222C470: ; 0x0222C470
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C482
	bl sub_02022974
_0222C482:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #2
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #8
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov63_0222C470

	thumb_func_start ov63_0222C508
ov63_0222C508: ; 0x0222C508
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C51A
	bl sub_02022974
_0222C51A:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov63_0222C508

	thumb_func_start ov63_0222C5A0
ov63_0222C5A0: ; 0x0222C5A0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C5B0
	bl sub_02022974
_0222C5B0:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #4
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C5A0

	thumb_func_start ov63_0222C5F8
ov63_0222C5F8: ; 0x0222C5F8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C608
	bl sub_02022974
_0222C608:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	mov r1, #5
	add r0, r5, #0
	add r2, r1, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C5F8

	thumb_func_start ov63_0222C664
ov63_0222C664: ; 0x0222C664
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C676
	bl sub_02022974
_0222C676:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #6
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov63_0222C664

	thumb_func_start ov63_0222C6FC
ov63_0222C6FC: ; 0x0222C6FC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C70E
	bl sub_02022974
_0222C70E:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #7
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov63_0222C6FC

	thumb_func_start ov63_0222C794
ov63_0222C794: ; 0x0222C794
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C7A4
	bl sub_02022974
_0222C7A4:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #8
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #2
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C794

	thumb_func_start ov63_0222C800
ov63_0222C800: ; 0x0222C800
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C810
	bl sub_02022974
_0222C810:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #9
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C800

	thumb_func_start ov63_0222C86C
ov63_0222C86C: ; 0x0222C86C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C87C
	bl sub_02022974
_0222C87C:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xa
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #8
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C86C

	thumb_func_start ov63_0222C8D8
ov63_0222C8D8: ; 0x0222C8D8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0222C8E8
	bl sub_02022974
_0222C8E8:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xb
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov63_0222C000
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C8D8

	thumb_func_start ov63_0222C944
ov63_0222C944: ; 0x0222C944
	mov r0, #0
	bx lr
	thumb_func_end ov63_0222C944

	thumb_func_start ov63_0222C948
ov63_0222C948: ; 0x0222C948
	ldr r3, _0222C94C ; =ov63_0222CA14
	bx r3
	; .align 2, 0
_0222C94C: .word ov63_0222CA14
	thumb_func_end ov63_0222C948

	thumb_func_start ov63_0222C950
ov63_0222C950: ; 0x0222C950
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov63_0222CA14
	add r4, r0, #0
	cmp r4, #1
	bne _0222C98A
	add r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
_0222C98A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222C950

	thumb_func_start ov63_0222C990
ov63_0222C990: ; 0x0222C990
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov63_0222CA14
	add r4, r0, #0
	cmp r4, #1
	bne _0222C9CA
	add r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
_0222C9CA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222C990

	thumb_func_start ov63_0222C9D0
ov63_0222C9D0: ; 0x0222C9D0
	mov r0, #0
	bx lr
	thumb_func_end ov63_0222C9D0

	thumb_func_start ov63_0222C9D4
ov63_0222C9D4: ; 0x0222C9D4
	ldr r3, _0222C9D8 ; =ov63_0222CA14
	bx r3
	; .align 2, 0
_0222C9D8: .word ov63_0222CA14
	thumb_func_end ov63_0222C9D4

	thumb_func_start ov63_0222C9DC
ov63_0222C9DC: ; 0x0222C9DC
	ldr r3, _0222C9E0 ; =ov63_0222CA14
	bx r3
	; .align 2, 0
_0222C9E0: .word ov63_0222CA14
	thumb_func_end ov63_0222C9DC

	thumb_func_start ov63_0222C9E4
ov63_0222C9E4: ; 0x0222C9E4
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	ldrh r2, [r0]
	mov r3, sp
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r0, [r0, #2]
	strh r0, [r3, #2]
	ldr r0, [r3, #0]
	bl ov63_0222C078
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsl r1, r2, #0x10
	orr r0, r1
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C9E4

	thumb_func_start ov63_0222CA14
ov63_0222CA14: ; 0x0222CA14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #8
	bl ov63_0222BF90
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #9
	bl ov63_0222BF90
	add r6, r0, #0
	cmp r4, r6
	bge _0222CA42
	add r0, r5, #0
	mov r1, #8
	add r2, r4, #1
	bl ov63_0222C000
	add r0, r4, #1
	cmp r0, r6
	bge _0222CA42
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222CA42:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CA14

	thumb_func_start ov63_0222CA48
ov63_0222CA48: ; 0x0222CA48
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r0, r4, #0
	mov r1, #6
	bl ov63_0222BF90
	add r1, sp, #0
	add r2, r0, #0
	add r0, r4, #0
	mov r4, sp
	ldrh r3, [r1, #4]
	sub r4, r4, #4
	strh r3, [r4]
	ldrh r1, [r1, #6]
	strh r1, [r4, #2]
	ldr r1, [r4, #0]
	bl ov63_0222C3AC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CA48

	.rodata


	.global Unk_ov63_0222DC00
Unk_ov63_0222DC00: ; 0x0222DC00
	.incbin "incbin/overlay63_rodata.bin", 0x300, 0x304 - 0x300

	.global Unk_ov63_0222DC04
Unk_ov63_0222DC04: ; 0x0222DC04
	.incbin "incbin/overlay63_rodata.bin", 0x304, 0x30C - 0x304

	.global Unk_ov63_0222DC0C
Unk_ov63_0222DC0C: ; 0x0222DC0C
	.incbin "incbin/overlay63_rodata.bin", 0x30C, 0x33C - 0x30C

	.global Unk_ov63_0222DC3C
Unk_ov63_0222DC3C: ; 0x0222DC3C
	.incbin "incbin/overlay63_rodata.bin", 0x33C, 0x30

