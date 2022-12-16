	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov76_0223B870
ov76_0223B870: ; 0x0223B870
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	add r4, r2, #0
	add r1, #2
	add r2, sp, #0
	add r6, r3, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	sub r2, r2, r6
	strb r2, [r5]
	ldrsh r0, [r1, r0]
	add r0, r0, r6
	strb r0, [r5, #1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	sub r2, r2, r4
	strb r2, [r5, #2]
	ldrsh r0, [r1, r0]
	add r0, r0, r4
	strb r0, [r5, #3]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov76_0223B870

	thumb_func_start ov76_0223B8A8
ov76_0223B8A8: ; 0x0223B8A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #0x35
	bl sub_02012744
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	mov r1, #0x35
	bl sub_02002BB8
	pop {r4, pc}
	thumb_func_end ov76_0223B8A8

	thumb_func_start ov76_0223B8C4
ov76_0223B8C4: ; 0x0223B8C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02002C60
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020127BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B8C4

	thumb_func_start ov76_0223B904
ov76_0223B904: ; 0x0223B904
	push {r3, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223B93C ; =0x00007530
	add r2, r3, #0
	str r0, [sp, #0x14]
	add r0, r3, #0
	add r0, #0xe8
	add r2, #0xdc
	add r3, #0xe0
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	mov r1, #3
	bl sub_0200CD7C
	add sp, #0x18
	pop {r3, pc}
	; .align 2, 0
_0223B93C: .word 0x00007530
	thumb_func_end ov76_0223B904

	thumb_func_start ov76_0223B940
ov76_0223B940: ; 0x0223B940
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov76_0223B904
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x68
	mov r3, #0xa5
	str r1, [sp]
	bl ov76_0223B98C
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xc0
	mov r3, #0xa5
	bl ov76_0223B98C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov76_0223B940

	thumb_func_start ov76_0223B96C
ov76_0223B96C: ; 0x0223B96C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_020129D0
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020129D0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B96C

	thumb_func_start ov76_0223B98C
ov76_0223B98C: ; 0x0223B98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	add r7, r3, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #8
	mov r3, #0x35
	bl sub_0200B144
	add r1, r4, #5
	str r0, [sp, #0x14]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, sp, #0x1c
	mov r2, #0xa
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223BA88 ; =0x000F0D02
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, sp, #0x1c
	mov r1, #2
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, sp, #0x1c
	mov r1, #2
	mov r2, #0x35
	bl sub_02012898
	mov r3, #9
	lsl r3, r3, #6
	mov r1, #0xc
	add r6, r4, #0
	mul r6, r1
	add r3, r5, r3
	mov r1, #1
	mov r2, #2
	add r3, r3, r6
	bl sub_0201ED94
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x1c
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D9B0
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	ldr r1, _0223BA8C ; =0x00007530
	bl sub_0200D04C
	str r0, [sp, #0x38]
	mov r2, #0
	mov r0, #0x91
	str r2, [sp, #0x3c]
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	mov r0, #2
	bl sub_02002D7C
	lsr r1, r0, #1
	ldr r0, [sp, #0x10]
	add r7, #0xc0
	sub r0, r0, r1
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp, #0x4c]
	mov r0, #0x28
	str r0, [sp, #0x50]
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0x35
	str r0, [sp, #0x58]
	mov r0, #0x8e
	lsl r0, r0, #2
	add r5, r5, r0
	str r7, [sp, #0x48]
	lsl r4, r4, #2
	add r0, sp, #0x2c
	bl sub_020127E8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x70]
	bl sub_02012AC0
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	add r0, sp, #0x1c
	bl sub_0201A8FC
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BA88: .word 0x000F0D02
_0223BA8C: .word 0x00007530
	thumb_func_end ov76_0223B98C

	thumb_func_start ov76_0223BA90
ov76_0223BA90: ; 0x0223BA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	add r3, r0, #0
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #4
_0223BAA4:
	add r2, r7, r3
	add r3, r3, #1
	strb r5, [r2, r0]
	cmp r3, #8
	blt _0223BAA4
	lsl r0, r1, #3
	str r0, [sp, #8]
_0223BAB2:
	mov r6, #0
	add r4, r7, #0
_0223BAB6:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl sub_0202CA94
	cmp r0, #0
	bne _0223BACA
	add r6, r6, #1
	add r4, #8
	cmp r6, #0xc
	blt _0223BAB6
_0223BACA:
	add r1, r7, r5
	add r1, #0x80
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223BAD8
	cmp r0, #1
	bne _0223BAFA
_0223BAD8:
	ldr r0, [sp]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp]
	cmp r1, r0
	ble _0223BAFA
	ldr r0, [sp, #4]
	add r2, r5, #1
	add r1, r7, r0
	mov r0, #0x42
	lsl r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	bge _0223BB00
_0223BAFA:
	add r5, r5, #1
	cmp r5, #0x51
	blt _0223BAB2
_0223BB00:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223BA90

	thumb_func_start ov76_0223BB04
ov76_0223BB04: ; 0x0223BB04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	add r0, #0xdc
	ldr r6, [r0, #0]
	add r0, r7, #0
	add r0, #0xe0
	ldr r5, [r0, #0]
	add r0, r7, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r4, #0
	str r0, [sp, #0x18]
_0223BB1E:
	mov r0, #0x42
	add r1, r7, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl sub_02098140
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223BB9C ; =0x000061A8
	add r1, r5, #0
	add r0, r4, r0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x5b
	bl sub_0200CBDC
	add r4, r4, #1
	cmp r4, #8
	blt _0223BB1E
	mov r0, #0x5b
	str r0, [sp]
	add r0, #0xca
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BBA0 ; =0x000066B4
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CD7C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223BBA4 ; =0x00006A2C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5b
	mov r3, #0xb4
	bl sub_0200CE0C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223BBA8 ; =0x00006DB8
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5b
	mov r3, #0x58
	bl sub_0200CE3C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BB9C: .word 0x000061A8
_0223BBA0: .word 0x000066B4
_0223BBA4: .word 0x00006A2C
_0223BBA8: .word 0x00006DB8
	thumb_func_end ov76_0223BB04

	thumb_func_start ov76_0223BBAC
ov76_0223BBAC: ; 0x0223BBAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	mov r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe0
	ldr r7, [r0, #0]
	add r0, sp, #4
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	mov r0, #0x3c
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x50]
	sub r0, r0, #2
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	ldr r0, _0223BC5C ; =0x000066B4
	str r4, [sp, #0x54]
	str r0, [sp, #0x3c]
	ldr r0, _0223BC60 ; =0x00006A2C
	str r4, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, _0223BC64 ; =0x00006DB8
	str r0, [sp, #0x44]
	mov r0, #0xf9
	lsl r0, r0, #2
	add r6, r5, r0
_0223BBF2:
	ldr r0, _0223BC68 ; =0x000061A8
	add r1, r7, #0
	add r0, r4, r0
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r2, sp, #0x24
	bl sub_0200CE6C
	add r4, r4, #1
	stmia r6!, {r0}
	cmp r4, #8
	blt _0223BBF2
	ldr r3, _0223BC6C ; =0x0223ED3C
	add r2, sp, #4
	mov r1, #0x10
_0223BC10:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0223BC10
	mov r7, #0xf9
	mov r6, #0
	add r4, sp, #4
	lsl r7, r7, #2
_0223BC24:
	mov r2, #2
	ldrsh r2, [r4, r2]
	mov r0, #0xf9
	mov r1, #0
	lsl r0, r0, #2
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0200D3CC
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _0223BC24
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BC5C: .word 0x000066B4
_0223BC60: .word 0x00006A2C
_0223BC64: .word 0x00006DB8
_0223BC68: .word 0x000061A8
_0223BC6C: .word 0x0223ED3C
	thumb_func_end ov76_0223BBAC

	thumb_func_start ov76_0223BC70
ov76_0223BC70: ; 0x0223BC70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0xf9
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0223BC7C:
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, _0223BC9C ; =0x000061A8
	ldr r0, [r0, #0]
	add r1, r4, r1
	bl sub_0200D070
	ldr r0, [r5, r7]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223BC7C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BC9C: .word 0x000061A8
	thumb_func_end ov76_0223BC70

	thumb_func_start ov76_0223BCA0
ov76_0223BCA0: ; 0x0223BCA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r7, #0
	add r4, r1, #0
	add r5, r1, #0
_0223BCB0:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223BCC6
	add r0, r5, #0
	bl ov12_02225C50
	cmp r0, #1
	bne _0223BCC6
	mov r7, #1
_0223BCC6:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x24
	cmp r6, #8
	blt _0223BCB0
	mov r1, #0x12
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	add r0, r0, r1
	bl ov12_02225C14
	cmp r0, #1
	bne _0223BD0E
	mov r4, #0x59
	ldr r0, [sp, #4]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	ldr r3, [sp, #4]
	sub r4, #0x44
	ldrsh r3, [r3, r4]
	mov r1, #5
	mov r2, #0
	mov r7, #1
	bl sub_02019184
	mov r4, #0x59
	ldr r0, [sp, #4]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	ldr r3, [sp, #4]
	sub r4, #0x42
	ldrsh r3, [r3, r4]
	mov r1, #5
	mov r2, #3
	bl sub_02019184
_0223BD0E:
	cmp r7, #0
	bne _0223BD2A
	mov r1, #0x5b
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	str r2, [r0, #0]
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
_0223BD2A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223BCA0

	thumb_func_start ov76_0223BD30
ov76_0223BD30: ; 0x0223BD30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0xc]
	mov r1, #0x17
	str r0, [sp, #8]
	mov r0, #0x35
	lsl r1, r1, #4
	str r2, [sp, #0x10]
	bl sub_02018144
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	mov r1, #0x59
	add r0, #0xe4
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	str r2, [r0, r1]
	add r4, r0, #0
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x38
	lsl r0, r0, #4
	neg r0, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #8]
	mul r1, r0
	ldr r0, [sp, #0x10]
	mov r7, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
_0223BD74:
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0223BD88
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223BDDE
_0223BD88:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r0, #0x51
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0x24
	bl sub_0200D550
	add r1, sp, #0x24
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r2, r1, r2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov12_02225C50
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov12_02225C50
_0223BDDE:
	add r7, r7, #1
	add r6, #0x10
	add r4, r4, #4
	add r5, #0x24
	cmp r7, #8
	blt _0223BD74
	mov r1, #0x59
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #5
	bl sub_020192EC
	add r4, r0, #0
	mov r1, #0x59
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #5
	bl sub_020192F8
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	mov r5, #0x37
	lsl r0, r0, #4
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #0x12
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r2, [sp, #0xc]
	mvn r5, r5
	mul r5, r2
	add r2, r4, r5
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #4
	add r0, r0, r1
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	mov r2, #0x96
	lsl r2, r2, #2
	ldr r0, [sp, #8]
	add r1, r2, #0
	add r3, r0, r2
	ldr r0, [sp, #0x1c]
	sub r1, #0xec
	str r3, [r0, r1]
	sub r2, #0xec
	ldr r0, [r0, r2]
	mov r3, #1
	str r3, [r0, #0]
	ldr r0, _0223BE68 ; =ov76_0223BCA0
	ldr r1, [sp, #0x1c]
	lsl r2, r3, #0xc
	bl sub_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BE68: .word ov76_0223BCA0
	thumb_func_end ov76_0223BD30

	thumb_func_start ov76_0223BE6C
ov76_0223BE6C: ; 0x0223BE6C
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	mov r1, #0
	ldr r0, _0223BE88 ; =ov76_0223BE8C
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x35
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_0223BE88: .word ov76_0223BE8C
	thumb_func_end ov76_0223BE6C

	thumb_func_start ov76_0223BE8C
ov76_0223BE8C: ; 0x0223BE8C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223BEF8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223BEFC ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223BF00 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0223BF04 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0223BF08 ; =0xBFFF0000
	ldr r0, _0223BF0C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0223BEF8: .word 0x04000008
_0223BEFC: .word 0xFFFFCFFD
_0223BF00: .word 0x0000CFFB
_0223BF04: .word 0x00007FFF
_0223BF08: .word 0xBFFF0000
_0223BF0C: .word 0x04000580
	thumb_func_end ov76_0223BE8C

	thumb_func_start ov76_0223BF10
ov76_0223BF10: ; 0x0223BF10
	push {r3, r4, r5, lr}
	ldr r3, _0223BF48 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223BF4C ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0223BF38
	bl sub_02022974
_0223BF38:
	cmp r5, #0
	bne _0223BF40
	bl sub_02022974
_0223BF40:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0223BF48: .word 0x02100DEC
_0223BF4C: .word 0x02100DF4
	thumb_func_end ov76_0223BF10

	thumb_func_start ov76_0223BF50
ov76_0223BF50: ; 0x0223BF50
	push {r3, lr}
	bl sub_020241B4
	bl sub_0201469C
	cmp r0, #0
	ble _0223BF66
	bl sub_020241B4
	bl sub_020A73C0
_0223BF66:
	bl sub_020146C0
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	pop {r3, pc}
	thumb_func_end ov76_0223BF50

	thumb_func_start ov76_0223BF74
ov76_0223BF74: ; 0x0223BF74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x58]
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #0x1c]
	bl ov76_0223D45C
	cmp r0, #3
	bhi _0223BFF2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BF98: ; jump table
	.short _0223BFA0 - _0223BF98 - 2 ; case 0
	.short _0223BFB2 - _0223BF98 - 2 ; case 1
	.short _0223BFC8 - _0223BF98 - 2 ; case 2
	.short _0223BFDE - _0223BF98 - 2 ; case 3
_0223BFA0:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #4
	str r0, [sp, #0x28]
	mov r0, #1
	mov r5, #0xd
	mov r4, #6
	str r0, [sp, #0x2c]
	b _0223BFF2
_0223BFB2:
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #1
	mov r5, #0xb
	mov r4, #8
	str r0, [sp, #0x30]
	b _0223BFF2
_0223BFC8:
	mov r0, #3
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #1
	mov r5, #0xb
	mov r4, #8
	str r0, [sp, #0x30]
	b _0223BFF2
_0223BFDE:
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #1
	mov r5, #0xb
	mov r4, #8
	str r0, [sp, #0x30]
_0223BFF2:
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r7, r0, #1
	ldr r0, [sp, #0x18]
	bl sub_0201A7A0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0xa6
	str r0, [sp, #0x10]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsr r2, r2, #0x18
	mov r3, #0x15
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0x35
	bl sub_02013A04
	mov r2, #0x67
	ldr r1, [sp, #0x1c]
	lsl r2, r2, #2
	str r0, [r1, r2]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #8
	mov r3, #0x35
	bl sub_0200B144
	mov r6, #0
	str r0, [sp, #0x20]
	cmp r7, #0
	ble _0223C080
	add r5, sp, #0x24
_0223C04A:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x20]
	lsl r2, r1, #3
	ldr r1, _0223C0E8 ; =0x0223EF3C
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	ldr r2, [r5, #0]
	add r4, r0, #0
	lsl r3, r2, #3
	ldr r2, _0223C0E8 ; =0x0223EF3C
	mov r0, #0x67
	add r2, r2, r3
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, [r2, #4]
	add r1, r4, #0
	bl sub_02013A6C
	add r0, r4, #0
	bl sub_020237BC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _0223C04A
_0223C080:
	ldr r0, [sp, #0x20]
	bl sub_0200B190
	mov r1, #0x67
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x24
	strb r1, [r0, #0x18]
	ldr r1, [sp, #0x18]
	mov r2, #0xf
	str r1, [sp, #0x38]
	mov r1, #1
	strb r1, [r0, #0x19]
	strb r7, [r0, #0x1a]
	ldrb r3, [r0, #0x1b]
	bic r3, r2
	strb r3, [r0, #0x1b]
	ldrb r3, [r0, #0x1b]
	mov r2, #0x30
	bic r3, r2
	strb r3, [r0, #0x1b]
	ldrb r3, [r0, #0x1b]
	mov r2, #0xc0
	bic r3, r2
	mov r2, #0x40
	orr r2, r3
	strb r2, [r0, #0x1b]
	ldr r0, [sp, #0x18]
	mov r2, #0x1f
	mov r3, #0xd
	bl sub_0200DC48
	mov r0, #0x35
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x34
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r2, #0x1a
	ldr r1, [sp, #0x1c]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C0E8: .word 0x0223EF3C
	thumb_func_end ov76_0223BF74

	thumb_func_start ov76_0223C0EC
ov76_0223C0EC: ; 0x0223C0EC
	push {r4, r5}
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1e
	sub r4, r4, r5
	mov r3, #0x1e
	ror r4, r3
	add r4, r5, r4
	mov r3, #0x38
	mul r3, r4
	add r3, #0x28
	strh r3, [r1]
	asr r1, r0, #2
	mov r0, #0x35
	mul r0, r1
	add r0, #0x1b
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov76_0223C0EC

	thumb_func_start ov76_0223C110
ov76_0223C110: ; 0x0223C110
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r1, r0, #0
	add r1, #0xdc
	ldr r4, [r1, #0]
	add r1, r0, #0
	add r1, #0xe0
	add r0, #0xe8
	ldr r5, [r1, #0]
	ldr r6, [r0, #0]
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0xfa
	lsl r0, r0, #6
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200CD7C
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223C180 ; =0x00004268
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223C184 ; =0x00004650
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C180: .word 0x00004268
_0223C184: .word 0x00004650
	thumb_func_end ov76_0223C110

	thumb_func_start ov76_0223C188
ov76_0223C188: ; 0x0223C188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r6, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	ble _0223C276
	str r6, [sp, #0xc]
	add r4, r5, #0
_0223C19C:
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldr r7, [r0, #4]
	add r0, r7, #0
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C27C ; =0x00003A98
	add r1, r5, #0
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x13
	bl sub_0200D888
	mov r1, #0
	add r0, sp, #0x18
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #0xa
	str r0, [sp, #0x20]
	add r0, r1, #0
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	mov r0, #2
	str r0, [sp, #0x44]
	add r0, r1, #0
	str r0, [sp, #0x48]
	ldr r0, _0223C27C ; =0x00003A98
	add r2, sp, #0x18
	add r0, r6, r0
	str r0, [sp, #0x2c]
	mov r0, #0xfa
	lsl r0, r0, #6
	str r0, [sp, #0x30]
	ldr r0, _0223C280 ; =0x00004268
	str r0, [sp, #0x34]
	ldr r0, _0223C284 ; =0x00004650
	str r0, [sp, #0x38]
	sub r0, r1, #1
	str r0, [sp, #0x3c]
	sub r0, r1, #1
	str r0, [sp, #0x40]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200CE6C
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02079EDC
	add r1, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021F24
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r1, #0]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0223C19C
_0223C276:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0223C27C: .word 0x00003A98
_0223C280: .word 0x00004268
_0223C284: .word 0x00004650
	thumb_func_end ov76_0223C188

	thumb_func_start ov76_0223C288
ov76_0223C288: ; 0x0223C288
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _0223C2B0
	mov r7, #0xbf
	add r5, r6, #0
	lsl r7, r7, #2
_0223C29C:
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r5, r5, #4
	cmp r4, r0
	blt _0223C29C
_0223C2B0:
	mov r5, #0
	add r4, r6, #0
_0223C2B4:
	ldr r7, [r4, #4]
	cmp r7, #0xff
	beq _0223C2F8
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl ov76_0223C0EC
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r0, r7, #2
	add r7, r6, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	sub r1, #0x10
	add r2, #0xc
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r7, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #1
	bl sub_0200D3F4
_0223C2F8:
	add r5, r5, #1
	add r4, #8
	cmp r5, #0xc
	blt _0223C2B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223C288

	thumb_func_start ov76_0223C304
ov76_0223C304: ; 0x0223C304
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _0223C32A
	mov r7, #0xbf
	add r5, r6, #0
	lsl r7, r7, #2
_0223C318:
	ldr r0, [r5, r7]
	bl sub_0200D330
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r5, r5, #4
	cmp r4, r0
	blt _0223C318
_0223C32A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C304

	thumb_func_start ov76_0223C32C
ov76_0223C32C: ; 0x0223C32C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _0223C352
	mov r7, #0xbf
	add r5, r6, #0
	lsl r7, r7, #2
_0223C340:
	ldr r0, [r5, r7]
	bl sub_0200D0F4
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r5, r5, #4
	cmp r4, r0
	blt _0223C340
_0223C352:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C32C

	thumb_func_start ov76_0223C354
ov76_0223C354: ; 0x0223C354
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0
	add r4, r7, #0
	add r5, r7, #0
_0223C35E:
	ldr r0, [r4, #8]
	bl ov76_0223D430
	mov r1, #0x9a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x99
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C38C
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0xff
	beq _0223C38C
	add r0, r7, #0
	add r1, r6, #0
	bl ov76_0223E91C
_0223C38C:
	add r6, r6, #1
	add r4, #8
	add r5, #0xc
	cmp r6, #0xc
	blt _0223C35E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C354

	thumb_func_start ov76_0223C398
ov76_0223C398: ; 0x0223C398
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x35
	bl sub_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _0223C418 ; =0x0223ED1C
	str r0, [r4, #8]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _0223C41C ; =0x0223ECF0
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _0223C420 ; =0x0223ED04
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #8]
	bl sub_0200C704
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, #0x80
	bl sub_0200C7C0
	cmp r0, #0
	bne _0223C402
	bl sub_02022974
_0223C402:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _0223C414
	bl sub_02022974
_0223C414:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223C418: .word 0x0223ED1C
_0223C41C: .word 0x0223ECF0
_0223C420: .word 0x0223ED04
	thumb_func_end ov76_0223C398

	thumb_func_start ov76_0223C424
ov76_0223C424: ; 0x0223C424
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl sub_0200D0B0
	ldr r0, [r4, #8]
	bl sub_0200C8D4
	pop {r4, pc}
	thumb_func_end ov76_0223C424

	thumb_func_start ov76_0223C438
ov76_0223C438: ; 0x0223C438
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, _0223C49C ; =0x0000AFC8
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r3, _0223C4A0 ; =0x00000109
	add r2, r4, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223C4A4 ; =0x0000B798
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r4, #0
	mov r3, #0xad
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223C4A8 ; =0x0000BB80
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xdc
	add r5, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	mov r3, #0x51
	bl sub_0200CE54
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223C49C: .word 0x0000AFC8
_0223C4A0: .word 0x00000109
_0223C4A4: .word 0x0000B798
_0223C4A8: .word 0x0000BB80
	thumb_func_end ov76_0223C438

	thumb_func_start ov76_0223C4AC
ov76_0223C4AC: ; 0x0223C4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	ldr r4, _0223C530 ; =0x0223ED5C
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #6
_0223C4B8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C4B8
	mov r7, #0
	add r4, sp, #0
	add r5, r6, #0
_0223C4C6:
	ldr r1, [r4, #0]
	add r0, sp, #0
	strh r1, [r0, #0x30]
	ldr r1, [r4, #4]
	add r2, sp, #0x30
	strh r1, [r0, #0x32]
	mov r1, #0
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x36]
	mov r0, #0x28
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x5c]
	add r0, r1, #0
	str r0, [sp, #0x60]
	ldr r0, _0223C534 ; =0x0000AFC8
	str r0, [sp, #0x44]
	ldr r0, _0223C538 ; =0x000066B2
	str r0, [sp, #0x48]
	ldr r0, _0223C53C ; =0x0000B798
	str r0, [sp, #0x4c]
	ldr r0, _0223C540 ; =0x0000BB80
	str r0, [sp, #0x50]
	sub r0, r1, #1
	str r0, [sp, #0x54]
	sub r0, r1, #1
	str r0, [sp, #0x58]
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200CE6C
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl sub_0200D7D4
	add r7, r7, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r7, #4
	blt _0223C4C6
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C530: .word 0x0223ED5C
_0223C534: .word 0x0000AFC8
_0223C538: .word 0x000066B2
_0223C53C: .word 0x0000B798
_0223C540: .word 0x0000BB80
	thumb_func_end ov76_0223C4AC

	thumb_func_start ov76_0223C544
ov76_0223C544: ; 0x0223C544
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223C564
	mov r6, #0xc5
	mov r4, #0
	lsl r6, r6, #2
_0223C556:
	ldr r0, [r5, r6]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C556
_0223C564:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov76_0223C544

	thumb_func_start ov76_0223C568
ov76_0223C568: ; 0x0223C568
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc5
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0223C574:
	ldr r0, [r5, r7]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C574
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223C568

	thumb_func_start ov76_0223C588
ov76_0223C588: ; 0x0223C588
	push {r4, r5, r6, lr}
	mov r6, #0xc5
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0223C592:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C592
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov76_0223C588

	thumb_func_start ov76_0223C5A4
ov76_0223C5A4: ; 0x0223C5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	mov r2, #1
	str r2, [sp]
	ldr r2, [sp, #0x3c]
	ldr r4, [sp, #0x48]
	str r2, [sp, #4]
	ldr r2, _0223C618 ; =0x00002AF8
	add r5, r0, #0
	add r2, r3, r2
	str r2, [sp, #8]
	add r2, r4, #0
	add r6, r1, #0
	bl sub_0200CC3C
	ldr r0, [sp, #0x30]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x44]
	add r2, r5, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	add r3, r6, #0
	str r1, [sp, #0x10]
	ldr r1, _0223C618 ; =0x00002AF8
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x40]
	add r0, r7, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	ldr r3, [sp, #0x34]
	ldr r0, _0223C618 ; =0x00002AF8
	add r1, r6, #0
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r3, [sp, #0x38]
	ldr r0, _0223C618 ; =0x00002AF8
	add r1, r6, #0
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C618: .word 0x00002AF8
	thumb_func_end ov76_0223C5A4

	thumb_func_start ov76_0223C61C
ov76_0223C61C: ; 0x0223C61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	ldr r0, _0223C7CC ; =0x0000011E
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0xae
	str r0, [sp, #4]
	mov r3, #0x52
	str r3, [sp, #8]
	mov r1, #1
	add r2, r5, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	str r4, [sp, #0x18]
	add r0, #0xdc
	add r1, #0xe0
	add r2, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r3, #0xb8
	bl ov76_0223C5A4
	ldr r0, _0223C7D0 ; =0x00000123
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xb3
	str r0, [sp, #4]
	mov r3, #0x57
	str r3, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	str r4, [sp, #0x18]
	add r0, #0xdc
	add r1, #0xe0
	add r2, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r3, #0xbc
	bl ov76_0223C5A4
	mov r6, #0
	add r4, r5, #0
	add r7, sp, #0x1c
_0223C68A:
	mov r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	strh r0, [r7, #0xe]
	mov r0, #0x28
	sub r0, r0, r6
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x34]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, _0223C7D4 ; =0x00002C02
	add r1, #0xe0
	str r0, [sp, #0x38]
	add r0, #0x14
	str r0, [sp, #0x3c]
	ldr r0, _0223C7D8 ; =0x00002BA6
	add r2, sp, #0x24
	str r0, [sp, #0x40]
	sub r0, #0x5c
	str r0, [sp, #0x44]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200CE6C
	mov r1, #0x9b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, sp, #0x20
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0x20
	bl ov76_0223C0EC
	mov r0, #0x9b
	mov r1, #6
	mov r2, #4
	lsl r0, r0, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #0xc
	blt _0223C68A
	mov r1, #0
	add r0, sp, #0x1c
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r0, #0x14
	str r0, [sp, #0x2c]
	mov r0, #1
	str r1, [sp, #0x30]
	str r1, [sp, #0x54]
	ldr r1, _0223C7DC ; =0x00002C0B
	str r0, [sp, #0x34]
	add r0, r1, #0
	add r0, #0x10
	str r0, [sp, #0x3c]
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x60
	str r1, [sp, #0x38]
	str r0, [sp, #0x40]
	sub r0, r2, #3
	sub r1, #0xbc
	str r1, [sp, #0x44]
	add r1, r5, #0
	str r2, [sp, #0x50]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl sub_0200CE6C
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl sub_0200CE6C
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0xcc
	ldr r0, [r5, r1]
	add r1, sp, #0x1c
	add r1, #2
	add r2, sp, #0x1c
	bl ov76_0223C0EC
	mov r0, #0xbd
	lsl r0, r0, #2
	add r3, sp, #0x1c
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl sub_0200D4C4
	mov r0, #0xbe
	lsl r0, r0, #2
	add r3, sp, #0x1c
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl sub_0200D4C4
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x19
	bl sub_0200D474
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C7CC: .word 0x0000011E
_0223C7D0: .word 0x00000123
_0223C7D4: .word 0x00002C02
_0223C7D8: .word 0x00002BA6
_0223C7DC: .word 0x00002C0B
	thumb_func_end ov76_0223C61C

	thumb_func_start ov76_0223C7E0
ov76_0223C7E0: ; 0x0223C7E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov76_0223C354
	add r0, r5, #0
	bl ov76_0223C288
	mov r7, #0x9a
	lsl r7, r7, #2
	mov r4, #0
	add r6, r7, #4
_0223C7F6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0223C802
	ldr r1, [r5, r7]
	bl sub_0200D364
_0223C802:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0xc
	blt _0223C7F6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C7E0

	thumb_func_start ov76_0223C80C
ov76_0223C80C: ; 0x0223C80C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	lsl r6, r1, #3
	add r0, r5, r6
	ldr r0, [r0, #4]
	lsl r4, r2, #3
	str r1, [sp]
	add r1, r5, r4
	ldr r7, [r1, #4]
	cmp r0, #0xff
	beq _0223C838
	add r1, r2, #1
	str r1, [sp, #0xc]
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #4]
	mov r1, #0xa2
	add r2, sp, #0xc
	bl sub_02074B30
_0223C838:
	cmp r7, #0xff
	beq _0223C852
	ldr r0, [sp]
	add r2, sp, #8
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	lsl r0, r7, #2
	add r0, r1, r0
	ldr r0, [r0, #4]
	mov r1, #0xa2
	bl sub_02074B30
_0223C852:
	add r2, r5, #4
	ldr r1, [r2, r6]
	ldr r0, [r2, r4]
	add r7, r5, #0
	str r0, [r2, r6]
	str r1, [r2, r4]
	add r7, #8
	ldr r0, [r7, r6]
	add r1, sp, #0x10
	bl sub_0202CA10
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	ldr r0, [r0, r4]
	ldr r1, [r7, r6]
	bl sub_0202CA10
	ldr r1, [sp, #4]
	add r0, sp, #0x10
	ldr r1, [r1, r4]
	bl sub_0202CA10
	add r0, r5, #0
	bl ov76_0223C7E0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C80C

	thumb_func_start ov76_0223C88C
ov76_0223C88C: ; 0x0223C88C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x9b
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0223C898:
	ldr r0, [r5, r6]
	bl sub_0200D330
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0xc
	blt _0223C898
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0200D330
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0200D330
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C88C

	thumb_func_start ov76_0223C8BC
ov76_0223C8BC: ; 0x0223C8BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x9b
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0223C8C8:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0xc
	blt _0223C8C8
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0200D0F4
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0200D0F4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C8BC

	thumb_func_start ov76_0223C8EC
ov76_0223C8EC: ; 0x0223C8EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r4, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0x35
	str r1, [sp, #4]
	mov r1, #1
	add r2, r1, #0
	mov r3, #0xf
	add r5, r0, #0
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r3, #0x35
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x35
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xd
	bl sub_0200DAA4
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r3, #0x35
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x35
	bl sub_02003050
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov76_0223C8EC

	thumb_func_start ov76_0223C974
ov76_0223C974: ; 0x0223C974
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r4, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0x35
	str r1, [sp, #4]
	mov r1, #4
	mov r2, #1
	mov r3, #0xf
	add r5, r0, #0
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r3, #0x35
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x35
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x1f
	mov r3, #0xd
	bl sub_0200DAA4
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r3, #0x35
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x35
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x35
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	mov r1, #0x5b
	str r0, [sp, #4]
	mov r0, #0xb0
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, #0xcb
	mov r3, #0x35
	bl sub_02003050
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov76_0223C974

	thumb_func_start ov76_0223CA30
ov76_0223CA30: ; 0x0223CA30
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _0223CA94 ; =0x0000FFFF
	add r4, r0, #0
	cmp r5, r1
	bne _0223CA4E
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CA4E:
	mov r0, #0
	mov r1, #0x1a
	mov r2, #8
	mov r3, #0x35
	bl sub_0200B144
	add r1, r5, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A954
	add r0, r5, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223CA94: .word 0x0000FFFF
	thumb_func_end ov76_0223CA30

	thumb_func_start ov76_0223CA98
ov76_0223CA98: ; 0x0223CA98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x28]
	lsl r2, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsl r3, r6, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsr r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223CA98

	thumb_func_start ov76_0223CAFC
ov76_0223CAFC: ; 0x0223CAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x28]
	lsl r2, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsl r3, r6, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	lsr r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsr r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223CAFC

	thumb_func_start ov76_0223CB58
ov76_0223CB58: ; 0x0223CB58
	push {r3, r4, lr}
	sub sp, #0x14
	mov r1, #2
	add r4, r0, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x94
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0x88
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov76_0223CAFC
	mov r1, #2
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x9c
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0x90
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov76_0223CAFC
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xa4
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0x98
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov76_0223CAFC
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xac
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xa0
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov76_0223CAFC
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xb4
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xa8
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov76_0223CAFC
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xbc
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xb0
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov76_0223CAFC
	mov r2, #0xb
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xc4
	str r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	add r0, #0xe4
	add r1, #0xb8
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov76_0223CAFC
	mov r2, #0xb
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xcc
	str r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	add r0, #0xe4
	add r1, #0xc0
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov76_0223CAFC
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223CB58

	thumb_func_start ov76_0223CC8C
ov76_0223CC8C: ; 0x0223CC8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0xec
	mov r6, #3
	add r5, #0x30
_0223CC9A:
	ldr r0, _0223CD18 ; =0x0000041D
	add r1, r7, r6
	ldrb r0, [r1, r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0223CCB6
	add r0, r5, #0
	mov r1, #0xee
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	b _0223CD0A
_0223CCB6:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x64
	mov r1, #0x35
	bl sub_02023790
	ldr r1, [sp, #0x10]
	add r4, r0, #0
	ldr r0, [r7, #0x64]
	sub r1, r1, #1
	bl sub_0202CA90
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r2, #3
	mov r3, #1
	bl sub_020238A0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CD1C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #7
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add r0, r4, #0
	bl sub_020237BC
_0223CD0A:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #0xb
	blt _0223CC9A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CD18: .word 0x0000041D
_0223CD1C: .word 0x00010200
	thumb_func_end ov76_0223CC8C

	thumb_func_start ov76_0223CD20
ov76_0223CD20: ; 0x0223CD20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #3
	lsl r4, r0, #4
	mov r0, #0x42
	add r1, r6, r1
	lsl r0, r0, #4
	add r5, r6, #0
	ldrb r7, [r1, r0]
	add r5, #0xec
	cmp r7, #0
	bne _0223CD4C
	add r0, r5, r4
	mov r1, #0xee
	bl sub_0201ADA4
	add r0, r5, r4
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CD4C:
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x64
	mov r1, #0x35
	bl sub_02023790
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x64]
	sub r1, r7, #1
	bl sub_0202CA90
	add r1, r0, #0
	mov r3, #1
	ldr r0, [sp, #0x10]
	mov r2, #3
	str r3, [sp]
	bl sub_020238A0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CDA0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, r4
	mov r1, #1
	mov r3, #7
	bl sub_0201D78C
	add r0, r5, r4
	bl sub_0201A954
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CDA0: .word 0x00010200
	thumb_func_end ov76_0223CD20

	thumb_func_start ov76_0223CDA4
ov76_0223CDA4: ; 0x0223CDA4
	push {r3, r4, r5, lr}
	add r0, #0xec
	add r5, r0, #0
	mov r4, #3
	add r5, #0x30
_0223CDAE:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xb
	blt _0223CDAE
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CDA4

	thumb_func_start ov76_0223CDC4
ov76_0223CDC4: ; 0x0223CDC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _0223CE28 ; =0x0000FFFF
	add r4, r0, #0
	cmp r5, r1
	bne _0223CDE2
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CDE2:
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xc
	mov r3, #0x35
	bl sub_0200B144
	add r1, r5, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A954
	add r0, r5, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223CE28: .word 0x0000FFFF
	thumb_func_end ov76_0223CDC4

	thumb_func_start ov76_0223CE2C
ov76_0223CE2C: ; 0x0223CE2C
	push {r3, lr}
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r3, pc}
	thumb_func_end ov76_0223CE2C

	thumb_func_start ov76_0223CE44
ov76_0223CE44: ; 0x0223CE44
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x35
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov76_0223CE44

	thumb_func_start ov76_0223CE64
ov76_0223CE64: ; 0x0223CE64
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x35
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov76_0223CE64

	thumb_func_start ov76_0223CE84
ov76_0223CE84: ; 0x0223CE84
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	add r4, r1, #0
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xd7
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xe7
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	add r0, r5, #0
	str r1, [sp, #8]
	add r0, #0xe8
	mov r1, #0x5b
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r2, #0xc5
	mov r3, #0x35
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xd8
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x35
	str r1, [sp, #0xc]
	add r5, #0xe4
	ldr r2, [r5, #0]
	add r0, r4, #0
	add r1, #0xe8
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov76_0223CE84

	thumb_func_start ov76_0223CF24
ov76_0223CF24: ; 0x0223CF24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	add r4, r1, #0
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xd6
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xe6
	mov r3, #5
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x5b
	add r2, r1, #0
	add r5, #0xe8
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r2, #0xc4
	mov r3, #0x35
	bl sub_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CF24

	thumb_func_start ov76_0223CF88
ov76_0223CF88: ; 0x0223CF88
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	add r4, r1, #0
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xd6
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x35
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #0xe5
	mov r3, #7
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x5b
	add r2, r1, #0
	add r5, #0xe8
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r2, #0xc4
	mov r3, #0x35
	bl sub_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CF88

	thumb_func_start ov76_0223CFEC
ov76_0223CFEC: ; 0x0223CFEC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xdc
	ldr r6, [r1, #0]
	add r1, r0, #0
	add r1, #0xe0
	ldr r4, [r1, #0]
	ldr r1, _0223D128 ; =0x00000122
	str r5, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	ldr r2, _0223D12C ; =0x000066B2
	add r0, #0xe8
	str r2, [sp, #0x14]
	ldr r0, [r0, #0]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D130 ; =0x000062B9
	ldr r3, _0223D134 ; =0x00000111
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D138 ; =0x00006A29
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xb1
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D13C ; =0x00006DB5
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0x55
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D140 ; =0x000062BA
	ldr r3, _0223D144 ; =0x00000112
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D148 ; =0x00006A2A
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xb2
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D14C ; =0x00006DB6
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0x56
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D150 ; =0x000062B6
	ldr r3, _0223D154 ; =0x0000010E
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D158 ; =0x00006A27
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xaf
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D15C ; =0x00006DB3
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0x53
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D160 ; =0x000089C8
	mov r3, #0x11
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	lsl r3, r3, #4
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D164 ; =0x00006A28
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xb0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223D168 ; =0x00006DB4
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0x54
	bl sub_0200CE54
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0223D128: .word 0x00000122
_0223D12C: .word 0x000066B2
_0223D130: .word 0x000062B9
_0223D134: .word 0x00000111
_0223D138: .word 0x00006A29
_0223D13C: .word 0x00006DB5
_0223D140: .word 0x000062BA
_0223D144: .word 0x00000112
_0223D148: .word 0x00006A2A
_0223D14C: .word 0x00006DB6
_0223D150: .word 0x000062B6
_0223D154: .word 0x0000010E
_0223D158: .word 0x00006A27
_0223D15C: .word 0x00006DB3
_0223D160: .word 0x000089C8
_0223D164: .word 0x00006A28
_0223D168: .word 0x00006DB4
	thumb_func_end ov76_0223CFEC

	thumb_func_start ov76_0223D16C
ov76_0223D16C: ; 0x0223D16C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r7, r0, #0
	add r0, #0xdc
	ldr r6, [r0, #0]
	add r0, r7, #0
	add r0, #0xe0
	ldr r5, [r0, #0]
	mov r0, #0xf9
	lsl r0, r0, #2
	add r4, r7, r0
	mov r1, #0
	add r2, sp, #0x6c
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x3c
	str r0, [sp, #0x74]
	mov r0, #2
	str r0, [sp, #0x7c]
	mov r0, #1
	str r1, [sp, #0x9c]
	sub r1, r0, #2
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _0223D2B8 ; =0x000062B9
	str r1, [sp, #0x90]
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC ; =0x000066B2
	str r1, [sp, #0x94]
	str r0, [sp, #0x84]
	ldr r0, _0223D2C0 ; =0x00006A29
	add r1, r5, #0
	str r0, [sp, #0x88]
	ldr r0, _0223D2C4 ; =0x00006DB5
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl sub_0200CE6C
	str r0, [r4, #0x20]
	ldr r0, _0223D2C8 ; =0x000062BA
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC ; =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2CC ; =0x00006A2A
	str r0, [sp, #0x88]
	ldr r0, _0223D2D0 ; =0x00006DB6
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl sub_0200CE6C
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _0223D2D4 ; =0x000089C8
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC ; =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2D8 ; =0x00006A28
	str r0, [sp, #0x88]
	ldr r0, _0223D2DC ; =0x00006DB4
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl sub_0200CE6C
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [sp, #0x98]
	mov r0, #0
	str r0, [sp, #0x78]
	ldr r0, _0223D2E0 ; =0x000062B6
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC ; =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2E4 ; =0x00006A27
	str r0, [sp, #0x88]
	ldr r0, _0223D2E8 ; =0x00006DB3
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl sub_0200CE6C
	str r0, [r4, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0x6c
	bl sub_0200CE6C
	ldr r3, _0223D2EC ; =0x0223ED8C
	str r0, [r4, #0x30]
	add r2, sp, #0x38
	mov r1, #0x1a
_0223D232:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0223D232
	ldr r3, _0223D2F0 ; =0x0223EDC0
	add r2, sp, #4
	mov r1, #0x1a
_0223D244:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0223D244
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1d
	add r4, r7, #0
	lsl r0, r0, #4
	add r7, r7, r0
	add r6, sp, #0x58
	add r4, #0x20
	add r5, sp, #0x24
	add r7, #0x20
_0223D264:
	mov r0, #0xf9
	mov r1, #0
	mov r2, #2
	lsl r0, r0, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3CC
	mov r1, #0xf9
	mov r2, #0
	mov r3, #2
	lsl r1, r1, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl ov76_0223B870
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r4, r4, #4
	add r5, r5, #4
	add r7, r7, #4
	str r0, [sp]
	cmp r0, #0xd
	blt _0223D264
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D2B8: .word 0x000062B9
_0223D2BC: .word 0x000066B2
_0223D2C0: .word 0x00006A29
_0223D2C4: .word 0x00006DB5
_0223D2C8: .word 0x000062BA
_0223D2CC: .word 0x00006A2A
_0223D2D0: .word 0x00006DB6
_0223D2D4: .word 0x000089C8
_0223D2D8: .word 0x00006A28
_0223D2DC: .word 0x00006DB4
_0223D2E0: .word 0x000062B6
_0223D2E4: .word 0x00006A27
_0223D2E8: .word 0x00006DB3
_0223D2EC: .word 0x0223ED8C
_0223D2F0: .word 0x0223EDC0
	thumb_func_end ov76_0223D16C

	thumb_func_start ov76_0223D2F4
ov76_0223D2F4: ; 0x0223D2F4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xf9
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0223D300:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D30C
	add r1, r6, #0
	bl sub_0200D3F4
_0223D30C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xd
	blt _0223D300
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223D2F4

	thumb_func_start ov76_0223D318
ov76_0223D318: ; 0x0223D318
	bx lr
	; .align 2, 0
	thumb_func_end ov76_0223D318

	thumb_func_start ov76_0223D31C
ov76_0223D31C: ; 0x0223D31C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0xf9
	mov r4, #8
	add r5, #0x20
	lsl r6, r6, #2
_0223D328:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xd
	blt _0223D328
	pop {r4, r5, r6, pc}
	thumb_func_end ov76_0223D31C

	.rodata


	.global Unk_ov76_0223ECF0
Unk_ov76_0223ECF0: ; 0x0223ECF0
	.incbin "incbin/overlay76_rodata.bin", 0x0, 0x14 - 0x0

	.global Unk_ov76_0223ED04
Unk_ov76_0223ED04: ; 0x0223ED04
	.incbin "incbin/overlay76_rodata.bin", 0x14, 0x2C - 0x14

	.global Unk_ov76_0223ED1C
Unk_ov76_0223ED1C: ; 0x0223ED1C
	.incbin "incbin/overlay76_rodata.bin", 0x2C, 0x4C - 0x2C

	.global Unk_ov76_0223ED3C
Unk_ov76_0223ED3C: ; 0x0223ED3C
	.incbin "incbin/overlay76_rodata.bin", 0x4C, 0x6C - 0x4C

	.global Unk_ov76_0223ED5C
Unk_ov76_0223ED5C: ; 0x0223ED5C
	.incbin "incbin/overlay76_rodata.bin", 0x6C, 0x9C - 0x6C

	.global Unk_ov76_0223ED8C
Unk_ov76_0223ED8C: ; 0x0223ED8C
	.incbin "incbin/overlay76_rodata.bin", 0x9C, 0xD0 - 0x9C

	.global Unk_ov76_0223EDC0
Unk_ov76_0223EDC0: ; 0x0223EDC0
	.incbin "incbin/overlay76_rodata.bin", 0xD0, 0x34

