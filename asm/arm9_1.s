	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0200FDE0
sub_0200FDE0: ; 0x0200FDE0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE20
	ldr r0, _0200FE28 ; =0x020E52C4
	mov r1, #4
	str r0, [sp]
	ldr r0, _0200FE2C ; =0x020E52D4
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	strh r2, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020116A0
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE20:
	bl sub_020116D8
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200FE28: .word 0x020E52C4
_0200FE2C: .word 0x020E52D4
	thumb_func_end sub_0200FDE0

	thumb_func_start sub_0200FE30
sub_0200FE30: ; 0x0200FE30
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE58
	ldr r1, _0200FE60 ; =0x020E5298
	ldr r0, _0200FE64 ; =0x021007B4
	str r1, [r0, #0x20]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FE68 ; =0x021007D4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE58:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FE60: .word 0x020E5298
_0200FE64: .word 0x021007B4
_0200FE68: .word 0x021007D4
	thumb_func_end sub_0200FE30

	thumb_func_start sub_0200FE6C
sub_0200FE6C: ; 0x0200FE6C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE92
	ldr r1, _0200FE98 ; =0x020E51C0
	ldr r0, _0200FE9C ; =0x021007B4
	str r1, [r0, #0x48]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FEA0 ; =0x021007FC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE92:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FE98: .word 0x020E51C0
_0200FE9C: .word 0x021007B4
_0200FEA0: .word 0x021007FC
	thumb_func_end sub_0200FE6C

	thumb_func_start sub_0200FEA4
sub_0200FEA4: ; 0x0200FEA4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FEDE
	ldr r1, _0200FEE8 ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	ldrh r1, [r1, #0x2e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011960
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FEDE:
	bl sub_020119A0
	add sp, #8
	pop {r4, pc}
	nop
_0200FEE8: .word 0x020E511C
	thumb_func_end sub_0200FEA4

	thumb_func_start sub_0200FEEC
sub_0200FEEC: ; 0x0200FEEC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FF24
	ldr r1, _0200FF2C ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x38]
	strh r2, [r0]
	ldrh r2, [r1, #0x3a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x3c]
	ldrh r1, [r1, #0x3e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011960
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FF24:
	bl sub_020119A0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0200FF2C: .word 0x020E511C
	thumb_func_end sub_0200FEEC

	thumb_func_start sub_0200FF30
sub_0200FF30: ; 0x0200FF30
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FF6A
	ldr r1, _0200FF74 ; =0x020E515C
	add r0, sp, #0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011C94
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FF6A:
	bl sub_02011CD4
	add sp, #8
	pop {r4, pc}
	nop
_0200FF74: .word 0x020E515C
	thumb_func_end sub_0200FF30

	thumb_func_start sub_0200FF78
sub_0200FF78: ; 0x0200FF78
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FFB0
	ldr r1, _0200FFB8 ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011C94
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FFB0:
	bl sub_02011CD4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0200FFB8: .word 0x020E511C
	thumb_func_end sub_0200FF78

	thumb_func_start sub_0200FFBC
sub_0200FFBC: ; 0x0200FFBC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FFDE
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FFE4 ; =0x020E5274
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FFDE:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FFE4: .word 0x020E5274
	thumb_func_end sub_0200FFBC

	thumb_func_start sub_0200FFE8
sub_0200FFE8: ; 0x0200FFE8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010008
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _02010010 ; =0x020E51CC
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010008:
	bl sub_02010F64
	pop {r4, pc}
	nop
_02010010: .word 0x020E51CC
	thumb_func_end sub_0200FFE8

	thumb_func_start sub_02010014
sub_02010014: ; 0x02010014
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010036
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0201003C ; =0x020E5208
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010036:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0201003C: .word 0x020E5208
	thumb_func_end sub_02010014

	thumb_func_start sub_02010040
sub_02010040: ; 0x02010040
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010060
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _02010068 ; =0x020E522C
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010060:
	bl sub_02010D44
	pop {r4, pc}
	nop
_02010068: .word 0x020E522C
	thumb_func_end sub_02010040

	thumb_func_start sub_0201006C
sub_0201006C: ; 0x0201006C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010094
	ldr r1, _0201009C ; =0x020E517C
	ldr r0, _020100A0 ; =0x021007B4
	str r1, [r0, #0x5c]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _020100A4 ; =0x02100804
	add r0, r4, #0
	bl sub_020121C4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010094:
	bl sub_02012228
	pop {r4, pc}
	nop
_0201009C: .word 0x020E517C
_020100A0: .word 0x021007B4
_020100A4: .word 0x02100804
	thumb_func_end sub_0201006C

	thumb_func_start sub_020100A8
sub_020100A8: ; 0x020100A8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020100CE
	ldr r1, _020100D4 ; =0x020E512C
	ldr r0, _020100D8 ; =0x021007B4
	str r1, [r0, #0x74]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _020100DC ; =0x0210081C
	add r0, r4, #0
	bl sub_020121C4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020100CE:
	bl sub_02012228
	pop {r4, pc}
	; .align 2, 0
_020100D4: .word 0x020E512C
_020100D8: .word 0x021007B4
_020100DC: .word 0x0210081C
	thumb_func_end sub_020100A8

	thumb_func_start sub_020100E0
sub_020100E0: ; 0x020100E0
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _020100F4 ; =0x020F983C
	add r1, r1, #1
	lsl r1, r1, #1
	ldr r3, _020100F8 ; =sub_020BCFD0
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bx r3
	; .align 2, 0
_020100F4: .word 0x020F983C
_020100F8: .word sub_020BCFD0
	thumb_func_end sub_020100E0

	thumb_func_start sub_020100FC
sub_020100FC: ; 0x020100FC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020100E0
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020100FC

	thumb_func_start sub_02010124
sub_02010124: ; 0x02010124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_020100E0
	cmp r6, r7
	bge _0201016E
	lsl r1, r6, #2
	str r0, [sp]
	asr r0, r0, #0x1f
	lsl r4, r6, #0xc
	add r5, r5, r1
	str r0, [sp, #4]
_02010142:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02010174 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	stmia r5!, {r0}
	mov r0, #1
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, r7
	blt _02010142
_0201016E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02010174: .word 0x00000000
	thumb_func_end sub_02010124

	thumb_func_start sub_02010178
sub_02010178: ; 0x02010178
	push {r4, lr}
	add r4, r1, #0
	bl sub_020100E0
	add r1, r0, #0
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	bl sub_020BCFD0
	pop {r4, pc}
	thumb_func_end sub_02010178

	thumb_func_start sub_02010190
sub_02010190: ; 0x02010190
	ldr r3, _0201019C ; =sub_020E1F6C
	sub r0, r1, r0
	lsl r0, r0, #7
	add r1, r2, #0
	bx r3
	nop
_0201019C: .word sub_020E1F6C
	thumb_func_end sub_02010190

	thumb_func_start sub_020101A0
sub_020101A0: ; 0x020101A0
	add r0, r0, r1
	bpl _020101A6
	mov r0, #0
_020101A6:
	cmp r0, #0xff
	ble _020101AC
	mov r0, #0xff
_020101AC:
	bx lr
	; .align 2, 0
	thumb_func_end sub_020101A0

	thumb_func_start sub_020101B0
sub_020101B0: ; 0x020101B0
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	add r2, r3, r2
	str r2, [r0, #0]
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	add r2, r3, r2
	str r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r2, [r1, #8]
	add r2, r3, r2
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020101B0

	thumb_func_start sub_020101D4
sub_020101D4: ; 0x020101D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r2, #0
	ldrb r2, [r5]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	lsl r2, r2, #7
	str r2, [r0, #0]
	ldrb r2, [r5, #1]
	lsl r2, r2, #7
	str r2, [r0, #4]
	ldrb r2, [r5, #2]
	lsl r2, r2, #7
	str r2, [r0, #8]
	ldrb r2, [r5, #3]
	lsl r2, r2, #7
	str r2, [r0, #0xc]
	ldrb r0, [r4]
	add r2, r7, #0
	str r0, [r1, #0]
	ldrb r0, [r4, #1]
	str r0, [r1, #4]
	ldrb r0, [r4, #2]
	str r0, [r1, #8]
	ldrb r0, [r4, #3]
	str r0, [r1, #0xc]
	ldrb r0, [r5]
	ldrb r1, [r4]
	bl sub_02010190
	str r0, [r6, #0]
	ldrb r0, [r5, #1]
	ldrb r1, [r4, #1]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #4]
	ldrb r0, [r5, #2]
	ldrb r1, [r4, #2]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #8]
	ldrb r0, [r5, #3]
	ldrb r1, [r4, #3]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020101D4

	thumb_func_start sub_02010238
sub_02010238: ; 0x02010238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x1c
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r2, #0x1c
	mov r1, #0
_0201024C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0201024C
	ldr r4, [r5, #0x14]
	cmp r6, #0
	ldrh r1, [r5, #0x24]
	ldr r0, _020102D4 ; =0x00007FFF
	bne _02010280
	cmp r1, r0
	bne _02010268
	mov r7, #0x10
	mov r6, #0
	b _020102A0
_02010268:
	cmp r1, #0
	bne _02010274
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	b _020102A0
_02010274:
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	bl sub_02022974
	b _020102A0
_02010280:
	cmp r1, r0
	bne _0201028A
	mov r7, #0
	mov r6, #0x10
	b _020102A0
_0201028A:
	cmp r1, #0
	bne _02010296
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	b _020102A0
_02010296:
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	bl sub_02022974
_020102A0:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_0200F44C
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [r4, #0]
	ldr r0, [r5, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	lsl r0, r7, #7
	str r0, [r4, #0xc]
	lsl r0, r6, #7
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl sub_02010190
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020102D4: .word 0x00007FFF
	thumb_func_end sub_02010238

	thumb_func_start sub_020102D8
sub_020102D8: ; 0x020102D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _020102F0
	cmp r1, #2
	beq _02010300
	cmp r1, #3
	beq _02010312
	b _02010314
_020102F0:
	bl sub_02010318
	cmp r0, #1
	bne _02010314
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010314
_02010300:
	bl sub_020181C4
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010314
_02010312:
	mov r4, #1
_02010314:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020102D8

	thumb_func_start sub_02010318
sub_02010318: ; 0x02010318
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #8]
	mov r4, #0
	add r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #4]
	cmp r2, r0
	blt _02010356
	str r4, [r1, #8]
	ldr r0, [r1, #0]
	sub r0, r0, #1
	cmp r0, #0
	ble _02010340
	str r0, [r1, #0]
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	add r0, r2, r0
	str r0, [r1, #0xc]
	b _02010346
_02010340:
	ldr r0, [r1, #0x10]
	mov r4, #1
	str r0, [r1, #0xc]
_02010346:
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x18]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r1, r1, #7
	bl sub_0200F44C
_02010356:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02010318

	thumb_func_start sub_0201035C
sub_0201035C: ; 0x0201035C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bne _02010366
	bl sub_02022974
_02010366:
	ldr r0, _02010578 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _0201040C
	add r5, r0, #1
	cmp r5, #0xbf
	ble _02010376
	sub r5, #0xc0
_02010376:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02010426
	add r0, r4, #0
	mov r1, #0
	bl sub_02010604
	ldr r3, [r4, #8]
	lsl r5, r5, #1
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _020103E0
	cmp r3, #0
	bne _020103C0
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _0201040C
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_020103C0:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _0201040C
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_020103E0:
	cmp r3, #0
	bne _02010404
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _0201040C
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010404:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	bne _0201040E
_0201040C:
	b _02010574
_0201040E:
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010426:
	add r0, r4, #0
	mov r1, #0
	bl sub_02010604
	add r3, r0, #0
	lsl r5, r5, #1
	mov r6, #6
	add r1, r3, r5
	lsl r6, r6, #6
	ldrsh r2, [r1, r6]
	lsl r6, r6, #2
	ldrsh r1, [r3, r5]
	ldr r3, [r3, r6]
	ldr r0, [r4, #8]
	cmp r3, #0
	bne _0201048C
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _0201046C
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _020104D0
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	b _020104D0
_0201046C:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _020104D0
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	b _020104D0
_0201048C:
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _020104B2
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _020104D0
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	b _020104D0
_020104B2:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _020104D0
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_020104D0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02010604
	ldr r3, [r4, #8]
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _02010532
	cmp r3, #0
	bne _02010512
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010574
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010512:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010574
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010532:
	cmp r3, #0
	bne _02010556
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010574
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010556:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010574
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_02010574:
	pop {r4, r5, r6, pc}
	nop
_02010578: .word 0x04000006
_0201057C: .word 0x04000004
_02010580: .word 0x04001040
_02010584: .word 0x04001042
	thumb_func_end sub_0201035C

	thumb_func_start sub_02010588
sub_02010588: ; 0x02010588
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _0201059E
	cmp r4, #1
	beq _0201059E
	cmp r4, #2
	beq _020105B8
	pop {r4, r5, r6, pc}
_0201059E:
	ldr r1, _020105E4 ; =0x00000604
	add r0, r3, #0
	bl sub_02018144
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r5, #4]
	str r6, [r5, #8]
	mov r0, #6
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	str r4, [r1, r0]
	pop {r4, r5, r6, pc}
_020105B8:
	ldr r1, _020105E8 ; =0x00000C08
	add r0, r3, #0
	bl sub_02018144
	str r0, [r5, #0]
	mov r0, #2
	str r0, [r5, #4]
	mov r0, #6
	mov r3, #0
	lsl r0, r0, #8
	str r6, [r5, #8]
	add r4, r3, #0
	add r1, r0, #4
_020105D2:
	ldr r2, [r5, #0]
	add r2, r2, r4
	str r3, [r2, r0]
	add r3, r3, #1
	add r4, r4, r1
	cmp r3, #2
	blt _020105D2
	pop {r4, r5, r6, pc}
	nop
_020105E4: .word 0x00000604
_020105E8: .word 0x00000C08
	thumb_func_end sub_02010588

	thumb_func_start sub_020105EC
sub_020105EC: ; 0x020105EC
	ldr r3, _020105F0 ; =sub_020105F4
	bx r3
	; .align 2, 0
_020105F0: .word sub_020105F4
	thumb_func_end sub_020105EC

	thumb_func_start sub_020105F4
sub_020105F4: ; 0x020105F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020105F4

	thumb_func_start sub_02010604
sub_02010604: ; 0x02010604
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, r4
	bgt _02010614
	bl sub_02022974
_02010614:
	ldr r0, _02010620 ; =0x00000604
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_02010620: .word 0x00000604
	thumb_func_end sub_02010604

	thumb_func_start sub_02010624
sub_02010624: ; 0x02010624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _02010650
	mov r7, #3
	lsl r7, r7, #8
	add r6, r7, #0
_02010638:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02010604
	add r1, r0, r6
	add r2, r7, #0
	bl sub_020D50B8
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02010638
_02010650:
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010624

	thumb_func_start sub_02010658
sub_02010658: ; 0x02010658
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _02010670
	add r0, r5, #0
	mov r1, #0
	bl sub_02012634
	add sp, #0xc
	pop {r4, r5, pc}
_02010670:
	add r0, r5, #0
	mov r1, #1
	bl sub_02012634
	mov r2, #0
	add r0, r5, #0
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02012650
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02012698
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02010658

	thumb_func_start sub_020106A8
sub_020106A8: ; 0x020106A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	ldr r2, [sp, #0x34]
	add r6, r0, #0
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	cmp r2, #0
	bne _020106E4
	add r0, r1, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020124AC
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02012534
	str r5, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r4, [sp, #4]
	bl sub_02012574
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020106E4:
	mov r2, #0
	str r4, [sp]
	bl sub_02012650
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	str r4, [sp, #8]
	bl sub_02012698
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020106A8

	thumb_func_start sub_02010710
sub_02010710: ; 0x02010710
	push {r3, lr}
	cmp r3, #0
	bne _02010720
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02012480
	pop {r3, pc}
_02010720:
	bl sub_02012634
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02010710

	thumb_func_start sub_02010728
sub_02010728: ; 0x02010728
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0xc3
	add r6, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020D5124
	cmp r4, #1
	bne _02010752
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc2
	lsl r0, r0, #2
	strb r4, [r5, r0]
	add r0, r0, #1
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02010752:
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #4
	strb r4, [r5, r1]
	add r0, r0, #5
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010728

	thumb_func_start sub_0201076C
sub_0201076C: ; 0x0201076C
	ldr r3, _02010778 ; =sub_0200DA3C
	add r1, r0, #0
	ldr r0, _0201077C ; =sub_020107AC
	ldr r2, _02010780 ; =0x000003FF
	bx r3
	nop
_02010778: .word sub_0200DA3C
_0201077C: .word sub_020107AC
_02010780: .word 0x000003FF
	thumb_func_end sub_0201076C

	thumb_func_start sub_02010784
sub_02010784: ; 0x02010784
	push {r3, lr}
	ldr r3, _02010794 ; =0x00000309
	str r2, [sp]
	ldrb r3, [r1, r3]
	ldr r2, _02010798 ; =sub_020107D8
	bl sub_0200F6D8
	pop {r3, pc}
	; .align 2, 0
_02010794: .word 0x00000309
_02010798: .word sub_020107D8
	thumb_func_end sub_02010784

	thumb_func_start sub_0201079C
sub_0201079C: ; 0x0201079C
	ldr r3, _020107A4 ; =0x00000309
	ldrb r1, [r1, r3]
	ldr r3, _020107A8 ; =sub_0200F704
	bx r3
	; .align 2, 0
_020107A4: .word 0x00000309
_020107A8: .word sub_0200F704
	thumb_func_end sub_0201079C

	thumb_func_start sub_020107AC
sub_020107AC: ; 0x020107AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc0
	add r6, r7, #0
	str r0, [sp]
	add r5, r1, #0
	mov r4, #0
	add r6, #0xc4
_020107BA:
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020D50B8
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, #2
	blt _020107BA
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020107AC

	thumb_func_start sub_020107D8
sub_020107D8: ; 0x020107D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _020107E2
	bl sub_02022974
_020107E2:
	ldr r0, _02010AD0 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _02010864
	add r0, r0, #1
	cmp r0, #0xbf
	ble _020107F2
	sub r0, #0xc0
_020107F2:
	mov r2, #0xc2
	lsl r2, r2, #2
	ldrb r1, [r4, r2]
	cmp r1, #1
	beq _020107FE
	b _02010998
_020107FE:
	add r0, r4, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020108CE
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _0201082E
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010848
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	b _02010848
_0201082E:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010848
	ldr r1, _02010AD8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
_02010848:
	ldr r0, _02010ADC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02010894
	cmp r1, #0
	bne _02010878
	ldr r2, _02010AD4 ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	bne _02010866
_02010864:
	b _02010CDC
_02010866:
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010878:
	ldr r0, _02010AD4 ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r1, _02010AE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010894:
	cmp r1, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _020108B4
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_020108B4:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r2, _02010AE0 ; =0x04001048
	ldr r0, _02010AE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_020108CE:
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _020108F2
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _0201090A
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	orr r1, r2
	strh r1, [r0]
	b _0201090A
_020108F2:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0201090A
	ldr r1, _02010AD8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
_0201090A:
	ldr r0, _02010ADC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _02010956
	cmp r1, #0
	bne _0201093A
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0201093A:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r1, _02010AE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010956:
	cmp r1, #0
	bne _02010978
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010978:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _02010982
_02010980:
	b _02010CDC
_02010982:
	ldr r2, _02010AE0 ; =0x04001048
	ldr r0, _02010AE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010998:
	add r1, r4, r0
	add r1, #0xc0
	ldrb r1, [r1]
	cmp r1, #0
	bne _02010A64
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _020109C8
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _020109E2
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _020109E2
_020109C8:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _020109E2
	ldr r2, _02010AD8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
_020109E2:
	ldr r1, _02010ADC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010A2A
	cmp r2, #0
	bne _02010A10
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010A36
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _02010B42
_02010A10:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010A36
	ldr r2, _02010AE0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
	b _02010B42
_02010A2A:
	cmp r2, #0
	bne _02010A4A
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	bne _02010A38
_02010A36:
	b _02010B42
_02010A38:
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _02010AE4 ; =0xFFFFC0FF
	and r5, r2
	lsl r2, r3, #0xc
	orr r5, r2
	orr r2, r5
	strh r2, [r1]
	b _02010B42
_02010A4A:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r3, _02010AE0 ; =0x04001048
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	lsr r1, r3, #0xd
	orr r2, r1
	orr r1, r2
	strh r1, [r3]
	b _02010B42
_02010A64:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010A88
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010AA0
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _02010AA0
_02010A88:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010AA0
	ldr r2, _02010AD8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
_02010AA0:
	ldr r1, _02010ADC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010B04
	cmp r2, #0
	bne _02010AE8
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010B42
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _02010B42
	; .align 2, 0
_02010AD0: .word 0x04000006
_02010AD4: .word 0x04000004
_02010AD8: .word 0x0400104A
_02010ADC: .word 0x00000309
_02010AE0: .word 0x04001048
_02010AE4: .word 0xFFFFC0FF
_02010AE8:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r2, _02010CE0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
	b _02010B42
_02010B04:
	cmp r2, #0
	bne _02010B26
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	beq _02010B42
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _02010CE4 ; =0xFFFFC0FF
	and r5, r2
	mov r2, #0x3f
	lsl r2, r2, #8
	orr r5, r2
	lsl r2, r3, #0xc
	orr r2, r5
	strh r2, [r1]
	b _02010B42
_02010B26:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r3, _02010CE0 ; =0x04001048
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r3, #0xd
	orr r1, r2
	strh r1, [r3]
_02010B42:
	mov r1, #0x61
	lsl r1, r1, #2
	add r1, r4, r1
	add r0, r1, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _02010CE8 ; =0x00000309
	bne _02010C18
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010B78
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _02010B92
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r0]
	b _02010B92
_02010B78:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _02010B92
	ldr r2, _02010CF0 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x3f
	orr r3, r0
	mov r0, #0x20
	orr r0, r3
	strh r0, [r2]
_02010B92:
	ldr r0, _02010CE8 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02010BDE
	cmp r2, #0
	bne _02010BC0
	ldr r2, _02010CEC ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	beq _02010BCA
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010BC0:
	ldr r0, _02010CEC ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _02010BCC
_02010BCA:
	b _02010CDC
_02010BCC:
	ldr r1, _02010CE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010BDE:
	cmp r2, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010BFE
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010BFE:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r2, _02010CE0 ; =0x04001048
	ldr r0, _02010CE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010C18:
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010C3A
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _02010C52
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r0]
	b _02010C52
_02010C3A:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _02010C52
	ldr r2, _02010CF0 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x20
	orr r3, r0
	orr r0, r3
	strh r0, [r2]
_02010C52:
	ldr r0, _02010CE8 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010C9E
	cmp r2, #0
	bne _02010C82
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010C82:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r1, _02010CE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010C9E:
	cmp r2, #0
	bne _02010CC0
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010CC0:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r2, _02010CE0 ; =0x04001048
	ldr r0, _02010CE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
_02010CDC:
	pop {r3, r4, r5, pc}
	nop
_02010CE0: .word 0x04001048
_02010CE4: .word 0xFFFFC0FF
_02010CE8: .word 0x00000309
_02010CEC: .word 0x04000004
_02010CF0: .word 0x0400104A
	thumb_func_end sub_020107D8

	thumb_func_start sub_02010CF4
sub_02010CF4: ; 0x02010CF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x4c
	bl sub_02018144
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_02010E48
	ldrb r0, [r6, #8]
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _02010D30
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #1
	bl sub_02010710
	b _02010D3A
_02010D30:
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #2
	bl sub_02010710
_02010D3A:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02010CF4

	thumb_func_start sub_02010D44
sub_02010D44: ; 0x02010D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02010D5C
	cmp r0, #2
	beq _02010D78
	cmp r0, #3
	beq _02010D8C
	b _02010D8E
_02010D5C:
	add r0, r4, #0
	bl sub_02010EA4
	cmp r0, #1
	bne _02010D8E
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010D8E
_02010D78:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010D8E
_02010D8C:
	mov r6, #1
_02010D8E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02010D44

	thumb_func_start sub_02010D94
sub_02010D94: ; 0x02010D94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x98
	add r7, r2, #0
	bl sub_02018144
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_02010E48
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, #0x4c
	bl sub_02010E48
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0x44]
	mov r1, #3
	bl sub_02010710
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010D94

	thumb_func_start sub_02010DEC
sub_02010DEC: ; 0x02010DEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r7, #0
	ldr r6, [r5, #0x14]
	cmp r0, #1
	beq _02010E04
	cmp r0, #2
	beq _02010E2C
	cmp r0, #3
	beq _02010E40
	b _02010E42
_02010E04:
	add r0, r6, #0
	bl sub_02010EA4
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x4c
	bl sub_02010EA4
	add r0, r4, r0
	cmp r0, #2
	bne _02010E42
	ldr r0, [r6, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010E42
_02010E2C:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r7, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r7, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010E42
_02010E40:
	mov r7, #1
_02010E42:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010DEC

	thumb_func_start sub_02010E48
sub_02010E48: ; 0x02010E48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, r4, #4
	add r5, r0, #0
	add r6, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r5, #0
	add r7, r3, #0
	add r1, #0x20
	add r2, #0x10
	add r3, r4, #0
	str r6, [sp, #4]
	bl sub_020101D4
	ldr r1, [sp, #0x30]
	str r1, [r5, #0x30]
	ldrb r0, [r4, #8]
	str r0, [r5, #0x34]
	str r6, [r5, #0x38]
	str r7, [r5, #0x3c]
	mov r0, #0
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x48]
	ldrb r2, [r4, #0xb]
	str r2, [r5, #0x44]
	str r1, [sp]
	ldrb r1, [r4]
	str r1, [sp, #4]
	ldrb r1, [r4, #1]
	str r1, [sp, #8]
	ldrb r1, [r4, #2]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #3]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x44]
	str r1, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	bl sub_020106A8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010E48

	thumb_func_start sub_02010EA4
sub_02010EA4: ; 0x02010EA4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	add r2, r1, #1
	str r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r2, r1
	blt _02010F24
	mov r1, #0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x38]
	sub r1, r1, #1
	cmp r1, #0
	ble _02010ECE
	str r1, [r4, #0x38]
	add r1, r4, #0
	add r1, #0x10
	bl sub_020101B0
	b _02010EEC
_02010ECE:
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl sub_02012698
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02010EEC:
	ldr r1, [r4, #0xc]
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	ldr r0, [r4, #0x48]
	asr r2, r3, #6
	lsr r2, r2, #0x19
	add r2, r3, r2
	ldr r4, [r4, #8]
	asr r1, r1, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r2, r2, #7
	asr r3, r3, #7
	bl sub_02012698
_02010F24:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02010EA4

	thumb_func_start sub_02010F2C
sub_02010F2C: ; 0x02010F2C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02010FC0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02010F2C

	thumb_func_start sub_02010F64
sub_02010F64: ; 0x02010F64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02010F7C
	cmp r0, #2
	beq _02010F98
	cmp r0, #3
	beq _02010FB2
	b _02010FB6
_02010F7C:
	add r0, r4, #0
	bl sub_0201109C
	cmp r0, #1
	bne _02010FBA
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010FBA
_02010F98:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010FBA
_02010FB2:
	mov r6, #1
	b _02010FBA
_02010FB6:
	bl sub_02022974
_02010FBA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02010F64

	thumb_func_start sub_02010FC0
sub_02010FC0: ; 0x02010FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010190
	str r0, [sp, #0x20]
	ldrb r1, [r4, #8]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	mov r0, #0
	ldrsh r1, [r4, r0]
	lsl r1, r1, #7
	str r1, [r5, #0xc]
	mov r1, #4
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x10]
	mov r1, #6
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0x18]
	ldr r1, [sp, #0x18]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x2c]
	add r0, r5, #0
	bl sub_02011180
	ldr r0, _02011090 ; =sub_02010624
	ldr r2, _02011094 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02011070
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _0201107C
_02011070:
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_0201107C:
	ldr r0, [sp, #0x44]
	ldr r2, _02011098 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02011090: .word sub_02010624
_02011094: .word 0x000003FF
_02011098: .word sub_0201035C
	thumb_func_end sub_02010FC0

	thumb_func_start sub_0201109C
sub_0201109C: ; 0x0201109C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	add r2, r1, #1
	str r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r2, r1
	blt _020110E0
	mov r1, #0
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	sub r1, r1, #1
	cmp r1, #0
	ble _020110D2
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_02011180
	ldr r0, _020110E4 ; =sub_02010624
	ldr r2, _020110E8 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020110E0
_020110D2:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x28]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020110E0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020110E4: .word sub_02010624
_020110E8: .word 0x000003FF
	thumb_func_end sub_0201109C

	thumb_func_start sub_020110EC
sub_020110EC: ; 0x020110EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	asr r1, r0, #6
	lsr r1, r1, #0x19
	add r1, r0, r1
	asr r1, r1, #7
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r0, r3, r2
	bpl _02011104
	neg r0, r0
_02011104:
	cmp r0, r1
	blt _02011112
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02011112:
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #8]
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	bl sub_020BCFF0
	asr r2, r0, #0xc
	ldr r0, [sp]
	sub r0, r0, r2
	str r0, [r5, #0]
	bpl _0201116C
	add r0, r7, #0
	str r0, [r5, #0]
_0201116C:
	ldr r1, [r5, #0]
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, #0xff
	ble _0201117C
	mov r0, #0xff
	str r0, [r4, #0]
_0201117C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020110EC

	thumb_func_start sub_02011180
sub_02011180: ; 0x02011180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl sub_02010604
	add r7, r0, #0
	mov r4, #0
	add r6, r7, #0
_02011192:
	ldr r2, [r5, #0x14]
	cmp r4, r2
	bgt _020111AC
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_020110EC
	b _020111E6
_020111AC:
	lsl r0, r2, #1
	cmp r4, r0
	bgt _020111D4
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #3
	lsl r0, r0, #8
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #1
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #0x12
	lsl r0, r0, #6
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	b _020111E6
_020111D4:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_020110EC
_020111E6:
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #8
	strh r1, [r6, r0]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #6
	strh r1, [r6, r0]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xc0
	blt _02011192
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02011180

	thumb_func_start sub_02011204
sub_02011204: ; 0x02011204
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011298
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011204

	thumb_func_start sub_0201123C
sub_0201123C: ; 0x0201123C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011254
	cmp r0, #2
	beq _02011270
	cmp r0, #3
	beq _0201128A
	b _0201128E
_02011254:
	add r0, r4, #0
	bl sub_02011360
	cmp r0, #1
	bne _02011292
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011292
_02011270:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011292
_0201128A:
	mov r6, #1
	b _02011292
_0201128E:
	bl sub_02022974
_02011292:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201123C

	thumb_func_start sub_02011298
sub_02011298: ; 0x02011298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010190
	str r0, [r5, #0x10]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	ldrh r0, [r4]
	lsl r0, r0, #7
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_020113B0
	ldr r0, _02011354 ; =sub_02010624
	ldr r2, _02011358 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02011334
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _02011340
_02011334:
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_02011340:
	ldr r0, [sp, #0x44]
	ldr r2, _0201135C ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x28]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011354: .word sub_02010624
_02011358: .word 0x000003FF
_0201135C: .word sub_0201035C
	thumb_func_end sub_02011298

	thumb_func_start sub_02011360
sub_02011360: ; 0x02011360
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _020113A4
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011396
	str r1, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_020113B0
	ldr r0, _020113A8 ; =sub_02010624
	ldr r2, _020113AC ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020113A4
_02011396:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020113A4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020113A8: .word sub_02010624
_020113AC: .word 0x000003FF
	thumb_func_end sub_02011360

	thumb_func_start sub_020113B0
sub_020113B0: ; 0x020113B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x104
	add r4, r0, #0
	mov r1, #0
	bl sub_02010604
	ldr r1, [r4, #0xc]
	add r5, r0, #0
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r1, sp, #0
	mov r2, #0xc0
	mov r3, #0
	bl sub_02010124
	mov r7, #0x12
	mov r6, #0
	add r4, sp, #0
	lsl r7, r7, #6
_020113DC:
	ldr r1, [r4, #0]
	mov r0, #0x80
	neg r1, r1
	bl sub_020101A0
	mov r1, #3
	lsl r1, r1, #8
	strh r0, [r5, r1]
	ldr r1, [r4, #0]
	mov r0, #0x80
	bl sub_020101A0
	strh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #2
	cmp r6, #0xc0
	blt _020113DC
	add sp, #0x1fc
	add sp, #0x104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020113B0

	thumb_func_start sub_02011408
sub_02011408: ; 0x02011408
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x34
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011494
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011408

	thumb_func_start sub_02011440
sub_02011440: ; 0x02011440
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011458
	cmp r0, #2
	beq _02011474
	cmp r0, #3
	beq _0201148E
	b _02011490
_02011458:
	add r0, r4, #0
	bl sub_02011568
	cmp r0, #1
	bne _02011490
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011490
_02011474:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011490
_0201148E:
	mov r6, #1
_02011490:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011440

	thumb_func_start sub_02011494
sub_02011494: ; 0x02011494
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldrh r1, [r4, #2]
	ldrh r0, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	sub r0, r1, r0
	add r1, r2, #0
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_020E1F6C
	str r0, [sp, #0x20]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x24]
	add r0, r5, #0
	bl sub_020115B8
	ldr r0, _0201155C ; =sub_02010624
	ldr r2, _02011560 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #0xf
	str r6, [sp]
	lsl r1, r1, #6
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x15
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0201153C
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _02011548
_0201153C:
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_02011548:
	ldr r0, [sp, #0x44]
	ldr r2, _02011564 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201155C: .word sub_02010624
_02011560: .word 0x000003FF
_02011564: .word sub_0201035C
	thumb_func_end sub_02011494

	thumb_func_start sub_02011568
sub_02011568: ; 0x02011568
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	add r2, r1, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	blt _020115AC
	mov r1, #0
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	sub r1, r1, #1
	cmp r1, #0
	ble _0201159E
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r1, r2, r1
	str r1, [r4, #0x10]
	bl sub_020115B8
	ldr r0, _020115B0 ; =sub_02010624
	ldr r2, _020115B4 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020115AC
_0201159E:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x30]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020115AC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020115B0: .word sub_02010624
_020115B4: .word 0x000003FF
	thumb_func_end sub_02011568

	thumb_func_start sub_020115B8
sub_020115B8: ; 0x020115B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x110
	add r4, r0, #0
	mov r1, #0
	bl sub_02010604
	str r0, [sp]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02011698 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r7, r1, #0xc
	lsl r0, r7, #1
	mov r1, #0x15
	bl sub_020E1F6C
	add r0, r0, #1
	lsl r0, r0, #1
	mov r1, #0xb4
	sub r2, r1, r0
	ldr r0, _0201169C ; =0x0000FFFF
	add r1, #0xb4
	mul r0, r2
	bl sub_020E1F6C
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r4, r1, #1
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_02010178
	asr r0, r0, #0xc
	str r0, [sp, #4]
	cmp r0, #0xc0
	blt _02011624
	bl sub_02022974
_02011624:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0xc
	mov r3, #0
	bl sub_02010124
	ldr r5, [sp]
	mov r4, #0
_02011634:
	ldr r0, [sp, #4]
	add r1, r4, #1
	sub r0, r0, r1
	add r6, r7, #0
	cmp r0, #0
	ble _0201164C
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldr r0, [r0, r1]
	cmp r0, r7
	ble _0201164C
	add r6, r0, #0
_0201164C:
	mov r0, #0x80
	neg r1, r6
	bl sub_020101A0
	str r0, [sp, #8]
	mov r0, #0x80
	add r1, r6, #0
	bl sub_020101A0
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	mov r0, #0xbf
	sub r0, r0, r4
	lsl r3, r0, #1
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, r3
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	add r5, r5, #2
	strh r1, [r0, r2]
	cmp r4, #0x60
	blt _02011634
	add sp, #0x1fc
	add sp, #0x110
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02011698: .word 0x020F983C
_0201169C: .word 0x0000FFFF
	thumb_func_end sub_020115B8

	thumb_func_start sub_020116A0
sub_020116A0: ; 0x020116A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011738
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020116A0

	thumb_func_start sub_020116D8
sub_020116D8: ; 0x020116D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020116F0
	cmp r0, #2
	beq _0201170C
	cmp r0, #3
	beq _0201172C
	b _02011730
_020116F0:
	add r0, r4, #0
	bl sub_0201184C
	cmp r0, #1
	bne _02011734
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011734
_0201170C:
	add r0, r4, #0
	bl sub_0201189C
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011734
_0201172C:
	mov r6, #1
	b _02011734
_02011730:
	bl sub_02022974
_02011734:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020116D8

	thumb_func_start sub_02011738
sub_02011738: ; 0x02011738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r6, r0, #0
	str r2, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldrh r2, [r5, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r1, #0x30
	mul r1, r2
	str r3, [sp, #0x1c]
	str r0, [sp, #0x44]
	bl sub_02018144
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _02011760
	bl sub_02022974
_02011760:
	ldrh r0, [r5, #8]
	str r0, [r6, #0x10]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrh r0, [r5, #8]
	cmp r0, #0
	ble _020117A0
	ldr r4, [sp, #0x20]
	add r7, r4, #0
_02011772:
	ldr r0, [r5, #4]
	ldr r2, [r6, #0xc]
	add r0, r0, r4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	add r0, r2, r7
	ldr r3, [r5, #0]
	add r1, r0, #0
	add r2, r2, r7
	add r1, #0x20
	add r2, #0x10
	add r3, r3, r4
	bl sub_020101D4
	ldr r0, [sp, #0x20]
	ldrh r1, [r5, #8]
	add r0, r0, #1
	add r4, r4, #4
	add r7, #0x30
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02011772
_020117A0:
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x44]
	add r0, r6, #0
	bl sub_02010588
	ldr r0, [sp, #0x18]
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [r6, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r6, #0x2c]
	ldrh r0, [r5, #0xe]
	str r0, [r6, #0x20]
	add r0, r6, #0
	bl sub_020118AC
	ldr r0, _02011840 ; =sub_02010624
	ldr r2, _02011844 ; =0x000003FF
	add r1, r6, #0
	bl sub_0200DA3C
	add r0, r6, #0
	mov r1, #0
	bl sub_02010604
	ldr r1, [sp, #0x38]
	str r1, [sp]
	mov r1, #3
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	ldrh r3, [r5, #0xa]
	ldr r0, [sp, #0x3c]
	bl sub_020106A8
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	ldr r0, [r6, #0x24]
	bne _02011820
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #1
	bl sub_02010710
	b _0201182A
_02011820:
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #2
	bl sub_02010710
_0201182A:
	ldr r0, [sp, #0x44]
	ldr r2, _02011848 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r6, #0x28]
	ldr r3, [sp, #0x38]
	add r1, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02011840: .word sub_02010624
_02011844: .word 0x000003FF
_02011848: .word sub_0201035C
	thumb_func_end sub_02011738

	thumb_func_start sub_0201184C
sub_0201184C: ; 0x0201184C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _0201188E
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011880
	str r1, [r4, #0x14]
	bl sub_02011938
	add r0, r4, #0
	bl sub_020118AC
	ldr r0, _02011894 ; =sub_02010624
	ldr r2, _02011898 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _0201188E
_02011880:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_0201188E:
	mov r0, #0
	pop {r4, pc}
	nop
_02011894: .word sub_02010624
_02011898: .word 0x000003FF
	thumb_func_end sub_0201184C

	thumb_func_start sub_0201189C
sub_0201189C: ; 0x0201189C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0201189C

	thumb_func_start sub_020118AC
sub_020118AC: ; 0x020118AC
	push {r4, r5, r6, lr}
	mov r1, #0
	add r6, r0, #0
	bl sub_02010604
	mov r2, #3
	lsl r2, r2, #8
	add r0, r0, r2
	mov r1, #0
	bl sub_020D5124
	ldr r0, [r6, #0x10]
	sub r4, r0, #1
	bmi _020118DE
	mov r0, #0x30
	add r5, r4, #0
	mul r5, r0
_020118CE:
	ldr r1, [r6, #0xc]
	add r0, r6, #0
	add r1, r1, r5
	bl sub_020118E0
	sub r5, #0x30
	sub r4, r4, #1
	bpl _020118CE
_020118DE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020118AC

	thumb_func_start sub_020118E0
sub_020118E0: ; 0x020118E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02010604
	ldr r2, [r4, #0]
	ldr r3, [r4, #8]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r2, r1, #7
	asr r1, r3, #6
	ldr r5, [r4, #0xc]
	lsr r1, r1, #0x19
	add r1, r3, r1
	asr r3, r5, #6
	lsr r3, r3, #0x19
	add r3, r5, r3
	ldr r4, [r4, #4]
	asr r5, r3, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r3, r3, #7
	asr r1, r1, #7
	cmp r3, r5
	bge _02011936
	lsl r4, r3, #1
	lsl r1, r1, #0x10
	add r4, r0, r4
	lsl r0, r2, #0x10
	asr r6, r1, #0x10
	mov r1, #3
	mov r2, #0x12
	asr r0, r0, #0x10
	lsl r1, r1, #8
	lsl r2, r2, #6
_0201192A:
	strh r0, [r4, r1]
	strh r6, [r4, r2]
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r5
	blt _0201192A
_02011936:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020118E0

	thumb_func_start sub_02011938
sub_02011938: ; 0x02011938
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0201195C
	add r4, r6, #0
_02011946:
	ldr r1, [r5, #0xc]
	add r0, r1, r4
	add r1, r1, r4
	add r1, #0x10
	bl sub_020101B0
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x30
	cmp r6, r0
	blt _02011946
_0201195C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02011938

	thumb_func_start sub_02011960
sub_02011960: ; 0x02011960
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011A00
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011960

	thumb_func_start sub_020119A0
sub_020119A0: ; 0x020119A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020119B8
	cmp r0, #2
	beq _020119D4
	cmp r0, #3
	beq _020119F4
	b _020119F8
_020119B8:
	add r0, r4, #0
	bl sub_02011AFC
	cmp r0, #1
	bne _020119FC
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020119FC
_020119D4:
	add r0, r4, #0
	bl sub_02011B54
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020119FC
_020119F4:
	mov r6, #1
	b _020119FC
_020119F8:
	bl sub_02022974
_020119FC:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020119A0

	thumb_func_start sub_02011A00
sub_02011A00: ; 0x02011A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r6, [sp, #0x40]
	ldr r3, [sp, #0x4c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	ldr r7, [sp, #0x44]
	bl sub_02010588
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x48]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x4c]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	add r0, #0xc
	bl sub_02011C7C
	add r0, r5, #0
	bl sub_02011B58
	ldr r0, _02011AF0 ; =sub_02010624
	ldr r2, _02011AF4 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl sub_02010604
	str r0, [sp, #0x24]
	mov r1, #3
	ldr r0, [sp, #0x20]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r3, [sp, #8]
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	mov r1, #3
	ldr r0, [sp, #0x24]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r3, #1
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02010710
	ldr r0, [sp, #0x4c]
	ldr r2, _02011AF8 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011AF0: .word sub_02010624
_02011AF4: .word 0x000003FF
_02011AF8: .word sub_0201035C
	thumb_func_end sub_02011A00

	thumb_func_start sub_02011AFC
sub_02011AFC: ; 0x02011AFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02011B46
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02011B38
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_02011C7C
	add r0, r4, #0
	bl sub_02011B58
	ldr r0, _02011B4C ; =sub_02010624
	ldr r2, _02011B50 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _02011B46
_02011B38:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_02011B46:
	mov r0, #0
	pop {r4, pc}
	nop
_02011B4C: .word sub_02010624
_02011B50: .word 0x000003FF
	thumb_func_end sub_02011AFC

	thumb_func_start sub_02011B54
sub_02011B54: ; 0x02011B54
	bx lr
	; .align 2, 0
	thumb_func_end sub_02011B54

	thumb_func_start sub_02011B58
sub_02011B58: ; 0x02011B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldr r1, _02011C78 ; =0x00003FFF
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0
	bl sub_02010604
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl sub_02010604
	add r4, r0, #0
	mov r6, #0
	add r5, r4, #0
_02011B84:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _02011C78 ; =0x00003FFF
	cmp r1, r0
	bge _02011BC8
	mov r1, #0x60
	ldr r0, [sp, #4]
	sub r1, r1, r6
	bl sub_020100FC
	cmp r0, #0x7f
	ble _02011B9E
	mov r0, #0x7f
_02011B9E:
	mov r1, #0xbf
	sub r1, r1, r6
	lsl r1, r1, #1
	add r3, r7, r1
	mov r1, #0x80
	sub r2, r1, r0
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r3, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r3, r1]
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	mov r1, #0x12
	add r0, #0x80
	lsl r1, r1, #6
	strh r0, [r5, r1]
	b _02011BF0
_02011BC8:
	mov r0, #0xbf
	sub r0, r0, r6
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r5, r0]
	mov r0, #0x12
	mov r1, #0xff
	lsl r0, r0, #6
	strh r1, [r5, r0]
_02011BF0:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #0x60
	blt _02011B84
	ldr r1, _02011C78 ; =0x00003FFF
	ldr r0, [sp, #4]
	mov r5, #0x60
	add r4, #0xc0
	sub r6, r1, r0
_02011C02:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _02011C78 ; =0x00003FFF
	cmp r1, r0
	bge _02011C32
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0x80
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _02011C6C
_02011C32:
	add r1, r5, #0
	add r0, r6, #0
	sub r1, #0x60
	bl sub_020100FC
	add r1, r0, #0
	cmp r1, #0x7f
	ble _02011C44
	mov r1, #0x7f
_02011C44:
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r2, #3
	add r0, r7, r0
	mov r3, #0
	lsl r2, r2, #8
	strh r3, [r0, r2]
	mov r2, #0x80
	sub r3, r2, r1
	mov r2, #0x12
	lsl r2, r2, #6
	strh r3, [r0, r2]
	mov r0, #3
	add r1, #0x80
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r1, #0xff
	add r0, r2, #0
	strh r1, [r4, r0]
_02011C6C:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0xc0
	blt _02011C02
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011C78: .word 0x00003FFF
	thumb_func_end sub_02011B58

	thumb_func_start sub_02011C7C
sub_02011C7C: ; 0x02011C7C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl sub_020E1F6C
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02011C7C

	thumb_func_start sub_02011C94
sub_02011C94: ; 0x02011C94
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011D34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011C94

	thumb_func_start sub_02011CD4
sub_02011CD4: ; 0x02011CD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011CEC
	cmp r0, #2
	beq _02011D08
	cmp r0, #3
	beq _02011D28
	b _02011D2C
_02011CEC:
	add r0, r4, #0
	bl sub_02011E04
	cmp r0, #1
	bne _02011D30
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011D30
_02011D08:
	add r0, r4, #0
	bl sub_02011E5C
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011D30
_02011D28:
	mov r6, #1
	b _02011D30
_02011D2C:
	bl sub_02022974
_02011D30:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011CD4

	thumb_func_start sub_02011D34
sub_02011D34: ; 0x02011D34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	str r3, [sp, #0x1c]
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	ldr r6, [sp, #0x38]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r3, [sp, #0x44]
	ldr r7, [sp, #0x3c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	bl sub_02010588
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	bl sub_02011E60
	ldr r0, _02011DF8 ; =sub_02010624
	ldr r2, _02011DFC ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	add r0, r5, #0
	mov r1, #1
	bl sub_02010604
	str r6, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #1
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02010710
	ldr r0, [sp, #0x44]
	ldr r2, _02011E00 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011DF8: .word sub_02010624
_02011DFC: .word 0x000003FF
_02011E00: .word sub_0201035C
	thumb_func_end sub_02011D34

	thumb_func_start sub_02011E04
sub_02011E04: ; 0x02011E04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02011E4E
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02011E40
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_02011F2C
	add r0, r4, #0
	bl sub_02011E60
	ldr r0, _02011E54 ; =sub_02010624
	ldr r2, _02011E58 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _02011E4E
_02011E40:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_02011E4E:
	mov r0, #0
	pop {r4, pc}
	nop
_02011E54: .word sub_02010624
_02011E58: .word 0x000003FF
	thumb_func_end sub_02011E04

	thumb_func_start sub_02011E5C
sub_02011E5C: ; 0x02011E5C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02011E5C

	thumb_func_start sub_02011E60
sub_02011E60: ; 0x02011E60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	bl sub_02010604
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #1
	bl sub_02010604
	str r0, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _02011F28 ; =0x00003FFF
	ldr r0, [sp, #8]
	ldr r6, [sp, #0x10]
	sub r0, r1, r0
	mov r7, #0
	str r0, [sp, #4]
_02011E8E:
	mov r0, #0x60
	sub r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_020100FC
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl sub_020100FC
	cmp r4, #0x7f
	ble _02011EAC
	mov r4, #0x7f
_02011EAC:
	cmp r0, #0x7f
	ble _02011EB2
	mov r0, #0x7f
_02011EB2:
	mov r1, #0x80
	sub r1, r1, r0
	lsl r1, r1, #0x10
	mov r2, #3
	asr r1, r1, #0x10
	lsl r2, r2, #8
	str r1, [sp, #0x14]
	strh r1, [r6, r2]
	mov r1, #0x80
	sub r1, r1, r4
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r6, r1]
	mov r1, #0xbf
	sub r1, r1, r7
	mov ip, r2
	lsl r1, r1, #1
	ldr r2, [sp, #0x10]
	add r0, #0x80
	add r3, r2, r1
	str r1, [sp, #0x18]
	mov r2, #3
	ldr r1, [sp, #0x14]
	lsl r2, r2, #8
	strh r1, [r3, r2]
	mov r1, #0x12
	mov r2, ip
	lsl r1, r1, #6
	strh r2, [r3, r1]
	add r4, #0x80
	lsl r1, r4, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	lsl r0, r0, #0x10
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, r3, r0
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	strh r1, [r0, r2]
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x60
	blt _02011E8E
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02011F28: .word 0x00003FFF
	thumb_func_end sub_02011E60

	thumb_func_start sub_02011F2C
sub_02011F2C: ; 0x02011F2C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl sub_020E1F6C
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02011F2C

	thumb_func_start sub_02011F44
sub_02011F44: ; 0x02011F44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xcd
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xcd
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011FE8
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011F44

	thumb_func_start sub_02011F88
sub_02011F88: ; 0x02011F88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011FA0
	cmp r0, #2
	beq _02011FC2
	cmp r0, #3
	beq _02011FDC
	b _02011FE0
_02011FA0:
	add r0, r4, #0
	bl sub_020120D4
	cmp r0, #1
	bne _02011FE4
	mov r1, #0xc9
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011FE4
_02011FC2:
	add r0, r4, #0
	bl sub_02012134
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011FE4
_02011FDC:
	mov r6, #1
	b _02011FE4
_02011FE0:
	bl sub_02022974
_02011FE4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011F88

	thumb_func_start sub_02011FE8
sub_02011FE8: ; 0x02011FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r7, [sp, #0x38]
	str r3, [sp, #0x1c]
	mov r3, #0
	add r4, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp]
	add r1, r7, #0
	mov r2, #1
	add r5, r0, #0
	ldr r6, [sp, #0x3c]
	bl sub_02010728
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _02012022
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc0
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #1
	mov r2, #0xc0
	bl sub_020D5124
	b _02012038
_02012022:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020D5124
_02012038:
	mov r1, #0xc3
	ldr r0, [r4, #0]
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrh r2, [r4, #4]
	add r0, r1, #4
	ldr r3, [sp, #0x44]
	str r2, [r5, r0]
	add r0, r1, #0
	ldrh r2, [r4, #6]
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r3, [r5, r0]
	add r2, r1, #0
	ldr r0, [sp, #0x18]
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	mov r0, #0
	str r0, [r5, r2]
	add r2, r1, #0
	ldr r0, [sp, #0x1c]
	add r2, #0x10
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0x14
	mov r0, #0
	str r0, [r5, r2]
	add r0, r1, #0
	add r0, #0x20
	str r6, [r5, r0]
	ldr r0, [sp, #0x40]
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_02010784
	ldrh r0, [r4, #6]
	cmp r0, #1
	str r7, [sp]
	bne _020120AA
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x20
	mov r2, #0x3f
	bl sub_020106A8
	b _020120C0
_020120AA:
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x3f
	mov r2, #0x20
	bl sub_020106A8
_020120C0:
	mov r3, #0xc9
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02010710
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02011FE8

	thumb_func_start sub_020120D4
sub_020120D4: ; 0x020120D4
	push {r4, lr}
	mov r2, #0x32
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	sub r1, r2, #4
	ldr r3, [r4, r2]
	ldr r1, [r4, r1]
	cmp r3, r1
	blt _0201212E
	mov r1, #0
	str r1, [r4, r2]
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #0
	sub r1, #0xc
	ldr r1, [r4, r1]
	cmp r3, r1
	bgt _0201211A
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	sub r2, #8
	add r1, r1, #1
	str r1, [r4, r2]
	bl sub_02012138
	add r0, r4, #0
	bl sub_0201076C
	b _0201212E
_0201211A:
	add r0, r2, #0
	add r0, #0x10
	add r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl sub_0201079C
	mov r0, #1
	pop {r4, pc}
_0201212E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020120D4

	thumb_func_start sub_02012134
sub_02012134: ; 0x02012134
	bx lr
	; .align 2, 0
	thumb_func_end sub_02012134

	thumb_func_start sub_02012138
sub_02012138: ; 0x02012138
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02012172
	mov r7, #0x31
	add r4, r6, #0
	lsl r7, r7, #4
_0201214E:
	mov r0, #0xc3
	lsl r0, r0, #2
	mov r2, #0xc6
	mov r3, #0xc5
	ldr r0, [r5, r0]
	lsl r2, r2, #2
	lsl r3, r3, #2
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r0, r4
	add r1, r5, #0
	bl sub_02012174
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0201214E
_02012172:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012138

	thumb_func_start sub_02012174
sub_02012174: ; 0x02012174
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r6, [r7]
	ldrb r4, [r7, #1]
	add r5, r1, #0
	add r1, r3, #0
	sub r0, r4, r6
	mul r0, r2
	bl sub_020E1F6C
	add r0, r0, r6
	cmp r6, r4
	bhi _02012194
	add r1, r6, #0
	ldrh r6, [r7, #2]
	b _020121A4
_02012194:
	ldrh r2, [r7, #2]
	add r1, r4, #0
	add r4, r6, #0
	cmp r2, #0
	bne _020121A2
	mov r6, #1
	b _020121A4
_020121A2:
	mov r6, #0
_020121A4:
	cmp r1, r4
	bge _020121C2
	mov r2, #0
	mov r3, #1
_020121AC:
	cmp r1, r0
	bne _020121BA
	cmp r6, #0
	bne _020121B8
	add r6, r3, #0
	b _020121BA
_020121B8:
	add r6, r2, #0
_020121BA:
	strb r6, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _020121AC
_020121C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012174

	thumb_func_start sub_020121C4
sub_020121C4: ; 0x020121C4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xe2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xe2
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	ldrb r1, [r4, #0xb]
	ldr r0, [r5, #0x14]
	cmp r1, #0
	ldr r1, [r5, #0x10]
	bne _02012206
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012290
	b _0201221E
_02012206:
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012384
_0201221E:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020121C4

	thumb_func_start sub_02012228
sub_02012228: ; 0x02012228
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _02012240
	cmp r1, #2
	beq _0201226C
	cmp r1, #3
	beq _0201227E
	b _02012282
_02012240:
	ldr r1, _0201228C ; =0x00000386
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02012250
	add r1, r5, #0
	bl sub_02012310
	b _02012256
_02012250:
	add r1, r5, #0
	bl sub_020123F4
_02012256:
	cmp r0, #1
	bne _02012286
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012286
_0201226C:
	bl sub_020181C4
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012286
_0201227E:
	mov r4, #1
	b _02012286
_02012282:
	bl sub_02022974
_02012286:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0201228C: .word 0x00000386
	thumb_func_end sub_02012228

	thumb_func_start sub_02012290
sub_02012290: ; 0x02012290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r2, r0, #0xc
	mov r0, #0xe1
	sub r1, r6, r2
	lsl r0, r0, #2
	strb r1, [r5, r0]
	sub r1, r0, #4
	str r4, [r5, r1]
	ldrb r1, [r4, #0xb]
	add r0, r0, #2
	add r3, r7, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02010E48
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _020122F4
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #1
	bl sub_02010710
	b _02012300
_020122F4:
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #2
	bl sub_02010710
_02012300:
	ldr r0, _0201230C ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201230C: .word 0x00000385
	thumb_func_end sub_02012290

	thumb_func_start sub_02012310
sub_02012310: ; 0x02012310
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02012380 ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _0201232C
	cmp r1, #1
	beq _02012362
	cmp r1, #2
	beq _02012378
	b _0201237A
_0201232C:
	bl sub_02010EA4
	cmp r0, #1
	bne _0201237A
	ldr r2, _02012380 ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrb r2, [r5, r2]
	ldr r3, [r4, #8]
	add r0, #0x4c
	add r1, #0xc
	bl sub_02011FE8
	b _0201237A
_02012362:
	add r0, #0x4c
	bl sub_020120D4
	cmp r0, #1
	bne _0201237A
	ldr r0, _02012380 ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0201237A
_02012378:
	mov r6, #1
_0201237A:
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02012380: .word 0x00000385
	thumb_func_end sub_02012310

	thumb_func_start sub_02012384
sub_02012384: ; 0x02012384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe1
	asr r0, r0, #0xc
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	sub r2, r6, r0
	sub r0, r1, #4
	str r4, [r5, r0]
	add r0, r1, #2
	ldrb r3, [r4, #0xb]
	sub r1, r1, #4
	strb r3, [r5, r0]
	ldr r0, [sp, #0x28]
	add r3, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r0, #0x4c
	add r1, #0xc
	bl sub_02011FE8
	ldr r0, _020123F0 ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020123F0: .word 0x00000385
	thumb_func_end sub_02012384

	thumb_func_start sub_020123F4
sub_020123F4: ; 0x020123F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0201247C ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _02012410
	cmp r1, #1
	beq _02012460
	cmp r1, #2
	beq _02012474
	b _02012476
_02012410:
	add r0, #0x4c
	bl sub_020120D4
	cmp r0, #1
	bne _02012476
	ldr r2, _0201247C ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r4, #8]
	add r0, r5, #0
	bl sub_02010E48
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r3, [r5, r0]
	ldrb r0, [r3, #8]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _02012454
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #1
	bl sub_02010710
	b _02012476
_02012454:
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #2
	bl sub_02010710
	b _02012476
_02012460:
	bl sub_02010EA4
	cmp r0, #1
	bne _02012476
	ldr r0, _0201247C ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _02012476
_02012474:
	mov r6, #1
_02012476:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201247C: .word 0x00000385
	thumb_func_end sub_020123F4

	thumb_func_start sub_02012480
sub_02012480: ; 0x02012480
	cmp r1, #0
	ldr r1, _020124A4 ; =0xFFFF1FFF
	bne _02012496
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
_02012496:
	ldr r3, _020124A8 ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3, #0]
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020124A4: .word 0xFFFF1FFF
_020124A8: .word 0x04001000
	thumb_func_end sub_02012480

	thumb_func_start sub_020124AC
sub_020124AC: ; 0x020124AC
	push {r3, r4}
	cmp r2, #0
	bne _020124EE
	cmp r3, #0
	bne _020124D2
	ldr r2, _02012528 ; =0x04000048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020124CA
	mov r0, #0x20
	orr r2, r0
_020124CA:
	ldr r0, _02012528 ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_020124D2:
	ldr r2, _0201252C ; =0x04001048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020124E6
	mov r0, #0x20
	orr r2, r0
_020124E6:
	ldr r0, _0201252C ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_020124EE:
	cmp r3, #0
	ldr r2, _02012530 ; =0xFFFFC0FF
	bne _0201250E
	ldr r4, _02012528 ; =0x04000048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _02012506
	lsr r0, r4, #0xd
	orr r2, r0
_02012506:
	ldr r0, _02012528 ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_0201250E:
	ldr r4, _0201252C ; =0x04001048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _02012520
	lsr r0, r4, #0xd
	orr r2, r0
_02012520:
	ldr r0, _0201252C ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02012528: .word 0x04000048
_0201252C: .word 0x04001048
_02012530: .word 0xFFFFC0FF
	thumb_func_end sub_020124AC

	thumb_func_start sub_02012534
sub_02012534: ; 0x02012534
	cmp r2, #0
	bne _02012552
	ldr r2, _0201256C ; =0x0400004A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _0201254C
	mov r0, #0x20
	orr r2, r0
_0201254C:
	ldr r0, _0201256C ; =0x0400004A
	strh r2, [r0]
	bx lr
_02012552:
	ldr r2, _02012570 ; =0x0400104A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _02012566
	mov r0, #0x20
	orr r2, r0
_02012566:
	ldr r0, _02012570 ; =0x0400104A
	strh r2, [r0]
	bx lr
	; .align 2, 0
_0201256C: .word 0x0400004A
_02012570: .word 0x0400104A
	thumb_func_end sub_02012534

	thumb_func_start sub_02012574
sub_02012574: ; 0x02012574
	push {r4, r5}
	add r4, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _020125D2
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020125AC
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012624 ; =0x04000040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125AC:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012628 ; =0x04001040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125D2:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020125FE
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _0201262C ; =0x04000042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125FE:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012630 ; =0x04001042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02012624: .word 0x04000040
_02012628: .word 0x04001040
_0201262C: .word 0x04000042
_02012630: .word 0x04001042
	thumb_func_end sub_02012574

	thumb_func_start sub_02012634
sub_02012634: ; 0x02012634
	push {r4, lr}
	lsl r3, r2, #3
	add r4, r0, r3
	str r1, [r0, r3]
	str r2, [r4, #4]
	ldr r0, _0201264C ; =sub_020126CC
	add r1, r4, #0
	mov r2, #1
	bl sub_0200DA3C
	pop {r4, pc}
	nop
_0201264C: .word sub_020126CC
	thumb_func_end sub_02012634

	thumb_func_start sub_02012650
sub_02012650: ; 0x02012650
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	add r0, #0x10
	lsl r4, r5, #5
	add r6, r0, r4
	lsl r0, r3, #4
	add r4, r6, r0
	str r1, [r6, r0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r0, _02012674 ; =sub_020126E0
	add r1, r4, #0
	mov r2, #1
	str r5, [r4, #0xc]
	bl sub_0200DA3C
	pop {r4, r5, r6, pc}
	nop
_02012674: .word sub_020126E0
	thumb_func_end sub_02012650

	thumb_func_start sub_02012678
sub_02012678: ; 0x02012678
	push {r3, r4, r5, lr}
	mov r4, #0xc
	add r0, #0x68
	mul r4, r3
	add r5, r0, r4
	str r1, [r0, r4]
	str r2, [r5, #4]
	ldr r0, _02012694 ; =sub_020126FC
	add r1, r5, #0
	mov r2, #1
	str r3, [r5, #8]
	bl sub_0200DA3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02012694: .word sub_020126FC
	thumb_func_end sub_02012678

	thumb_func_start sub_02012698
sub_02012698: ; 0x02012698
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x20]
	add r7, r1, #0
	add r0, #0x80
	lsl r1, r5, #5
	add r6, r0, r1
	add r4, r2, #0
	ldr r0, [sp, #0x1c]
	add r2, r3, #0
	lsl r3, r0, #4
	add r1, r6, r3
	strh r7, [r6, r3]
	strh r4, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #6]
	str r0, [r1, #8]
	ldr r0, _020126C8 ; =sub_02012714
	mov r2, #1
	str r5, [r1, #0xc]
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020126C8: .word sub_02012714
	thumb_func_end sub_02012698

	thumb_func_start sub_020126CC
sub_020126CC: ; 0x020126CC
	push {r4, lr}
	add r4, r0, #0
	ldmia r1!, {r0, r1}
	bl sub_02012480
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020126CC

	thumb_func_start sub_020126E0
sub_020126E0: ; 0x020126E0
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_020124AC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020126E0

	thumb_func_start sub_020126FC
sub_020126FC: ; 0x020126FC
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_02012534
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_020126FC

	thumb_func_start sub_02012714
sub_02012714: ; 0x02012714
	push {r3, r4, r5, lr}
	sub sp, #8
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #8]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r3, #0xc]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0
	mov r5, #6
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl sub_02012574
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02012714

	thumb_func_start sub_02012744
sub_02012744: ; 0x02012744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x68
	bl sub_02018144
	str r0, [sp, #8]
	cmp r0, #0
	bne _0201275E
	bl sub_02022974
_0201275E:
	ldr r4, [sp, #8]
	ldr r5, [sp, #8]
	mov r6, #0
	add r4, #0x30
_02012766:
	mov r0, #0x23
	add r1, r6, #0
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl sub_02006FA0
	str r0, [r5, #0]
	cmp r0, #0
	bne _0201277E
	bl sub_02022974
_0201277E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #0xc
	blt _02012766
	ldr r0, [sp, #4]
	mov r1, #0x14
	add r4, r0, #0
	mul r4, r1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02018144
	ldr r1, [sp, #8]
	cmp r0, #0
	str r0, [r1, #0x60]
	bne _020127A4
	bl sub_02022974
_020127A4:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r4, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x60]
	mov r1, #0
	bl sub_020D5124
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012744

	thumb_func_start sub_020127BC
sub_020127BC: ; 0x020127BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bne _020127C6
	bl sub_02022974
_020127C6:
	mov r4, #0
	add r5, r6, #0
_020127CA:
	ldr r0, [r5, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _020127CA
	ldr r0, [r6, #0x60]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020127BC

	thumb_func_start sub_020127E8
sub_020127E8: ; 0x020127E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bne _020127F4
	bl sub_02022974
_020127F4:
	ldr r0, [r5, #0]
	bl sub_02012CE0
	add r4, r0, #0
	bne _02012802
	bl sub_02022974
_02012802:
	ldr r0, [r5, #0x10]
	add r3, sp, #8
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x2c]
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #8]
	bl sub_02012DE4
	add r6, r0, #0
	mov r1, #0x24
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_02018184
	add r7, r0, #0
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_02018144
	str r0, [r4, #0]
	str r6, [r4, #4]
	ldr r0, [r5, #0x28]
	add r1, sp, #8
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02012E6C
	add r0, r5, #0
	add r1, sp, #8
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013088
	add r0, r7, #0
	bl sub_020181C4
	add r0, sp, #8
	bl sub_020131B8
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020127E8

	thumb_func_start sub_02012870
sub_02012870: ; 0x02012870
	push {r4, lr}
	add r4, r0, #0
	bne _0201287A
	bl sub_02022974
_0201287A:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02012884
	bl sub_02022974
_02012884:
	add r0, r4, #0
	bl sub_020130DC
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02012CD0
	pop {r4, pc}
	thumb_func_end sub_02012870

	thumb_func_start sub_02012898
sub_02012898: ; 0x02012898
	push {r4, r5, lr}
	sub sp, #0x14
	add r3, sp, #0
	add r5, r0, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r4, r1, #0
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	bl sub_02012DE4
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02013034
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020131B8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end sub_02012898

	thumb_func_start sub_020128C4
sub_020128C4: ; 0x020128C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r2, #0
	str r1, [sp]
	cmp r5, #0
	bne _020128D6
	bl sub_02022974
_020128D6:
	ldr r0, [sp]
	str r0, [r5, #0xc]
	str r7, [r5, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #8]
	lsl r7, r7, #0xc
	cmp r0, #0
	beq _020128F8
	bl sub_02021D28
	ldr r2, [r0, #0]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	add r1, r1, r2
	str r1, [sp]
	add r7, r7, r0
_020128F8:
	mov r6, #0
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02012932
	add r4, r6, #0
_02012904:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021C50
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012904
_02012932:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020128C4

	thumb_func_start sub_02012938
sub_02012938: ; 0x02012938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _02012944
	bl sub_02022974
_02012944:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0201299E
	ldr r1, [r5, #0xc]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, [r5, #0x10]
	lsl r7, r1, #0xc
	bl sub_02021D28
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	mov r6, #0
	ldr r1, [sp]
	str r6, [sp, #0xc]
	add r7, r7, r0
	add r1, r1, r2
	ldr r0, [r5, #4]
	str r1, [sp]
	cmp r0, #0
	ble _0201299E
	add r4, r6, #0
_02012970:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021C50
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012970
_0201299E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012938

	thumb_func_start sub_020129A4
sub_020129A4: ; 0x020129A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _020129B4
	bl sub_02022974
_020129B4:
	cmp r4, #0
	bne _020129BC
	bl sub_02022974
_020129BC:
	cmp r6, #0
	bne _020129C4
	bl sub_02022974
_020129C4:
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020129A4

	thumb_func_start sub_020129D0
sub_020129D0: ; 0x020129D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020129DE
	bl sub_02022974
_020129DE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020129FC
	add r4, r6, #0
_020129E8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021CAC
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020129E8
_020129FC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020129D0

	thumb_func_start sub_02012A00
sub_02012A00: ; 0x02012A00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A0E
	bl sub_02022974
_02012A0E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A2C
	add r4, r6, #0
_02012A18:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021E80
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A18
_02012A2C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A00

	thumb_func_start sub_02012A30
sub_02012A30: ; 0x02012A30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A3E
	bl sub_02022974
_02012A3E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A5C
	add r4, r6, #0
_02012A48:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021F58
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A48
_02012A5C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A30

	thumb_func_start sub_02012A60
sub_02012A60: ; 0x02012A60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A6E
	bl sub_02022974
_02012A6E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A8C
	add r4, r6, #0
_02012A78:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021E90
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A78
_02012A8C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A60

	thumb_func_start sub_02012A90
sub_02012A90: ; 0x02012A90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A9E
	bl sub_02022974
_02012A9E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012ABC
	add r4, r6, #0
_02012AA8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021EF0
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012AA8
_02012ABC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A90

	thumb_func_start sub_02012AC0
sub_02012AC0: ; 0x02012AC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012ACE
	bl sub_02022974
_02012ACE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012AEC
	add r4, r6, #0
_02012AD8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021F24
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012AD8
_02012AEC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012AC0

	thumb_func_start sub_02012AF0
sub_02012AF0: ; 0x02012AF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012AFE
	bl sub_02022974
_02012AFE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012B1C
	add r4, r6, #0
_02012B08:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021FE0
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012B08
_02012B1C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012AF0

	thumb_func_start sub_02012B20
sub_02012B20: ; 0x02012B20
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	str r4, [r4, #0xc]
	str r4, [r4, #0x10]
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02012DE4
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02012B20

	thumb_func_start sub_02012B48
sub_02012B48: ; 0x02012B48
	push {r4, lr}
	add r4, r0, #0
	bl sub_020131B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02012B48

	thumb_func_start sub_02012B58
sub_02012B58: ; 0x02012B58
	ldr r3, _02012B5C ; =sub_02013034
	bx r3
	; .align 2, 0
_02012B5C: .word sub_02013034
	thumb_func_end sub_02012B58

	thumb_func_start sub_02012B60
sub_02012B60: ; 0x02012B60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	bne _02012B70
	bl sub_02022974
_02012B70:
	ldr r0, [r5, #0]
	bl sub_02012CE0
	add r4, r0, #0
	bne _02012B7E
	bl sub_02022974
_02012B7E:
	ldr r0, [r5, #0x10]
	mov r1, #0x24
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_02018184
	add r7, r0, #0
	ldr r2, [r6, #0x14]
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0]
	ldr r0, [r6, #0x14]
	add r1, r6, #0
	str r0, [r4, #4]
	ldr r0, [r5, #0x28]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02012E6C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013088
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012B60

	thumb_func_start sub_02012BD8
sub_02012BD8: ; 0x02012BD8
	ldr r3, _02012BDC ; =sub_02012870
	bx r3
	; .align 2, 0
_02012BDC: .word sub_02012870
	thumb_func_end sub_02012BD8

	thumb_func_start sub_02012BE0
sub_02012BE0: ; 0x02012BE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0]
	add r7, r1, #0
	ldr r0, [r0, #0]
	str r2, [sp, #4]
	add r5, r3, #0
	str r0, [sp, #8]
	bl sub_02021FC8
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_02012B58
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018184
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [sp, #4]
	ldr r3, [sp, #0xc]
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_02012F98
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020C2C54
	ldr r0, [sp, #8]
	bl sub_02021F98
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bne _02012C46
	mov r1, #1
	bl sub_020A81B0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020C02BC
	b _02012C56
_02012C46:
	mov r1, #2
	bl sub_020A81B0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020C0314
_02012C56:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012BE0

	thumb_func_start sub_02012C60
sub_02012C60: ; 0x02012C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	add r7, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, #7]
	str r0, [sp, #0x24]
	add r0, r3, #0
	add r0, r7, r0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r1, r0
	bge _02012C82
	bl sub_02022974
_02012C82:
	ldrb r2, [r6, #8]
	ldr r1, [sp]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	cmp r2, r0
	bge _02012C92
	bl sub_02022974
_02012C92:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _02012CCA
	lsl r0, r7, #5
	add r5, r4, #0
	str r0, [sp, #8]
_02012CA0:
	ldrb r1, [r6, #7]
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	add r0, r4, r0
	mul r2, r0
	ldr r0, [sp, #4]
	lsl r1, r5, #5
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	lsl r2, r2, #5
	add r0, r0, r1
	ldr r1, [r6, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_020D50B8
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r0
	blt _02012CA0
_02012CCA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012C60

	thumb_func_start sub_02012CD0
sub_02012CD0: ; 0x02012CD0
	mov r2, #0x14
	mov r1, #0
_02012CD4:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02012CD4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02012CD0

	thumb_func_start sub_02012CE0
sub_02012CE0: ; 0x02012CE0
	ldr r1, [r0, #0x64]
	mov r2, #0
	cmp r1, #0
	ble _02012D04
	ldr r3, [r0, #0x60]
_02012CEA:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02012CFA
	ldr r1, [r0, #0x60]
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02012CFA:
	ldr r1, [r0, #0x64]
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r1
	blt _02012CEA
_02012D04:
	mov r0, #0
	bx lr
	thumb_func_end sub_02012CE0

	thumb_func_start sub_02012D08
sub_02012D08: ; 0x02012D08
	push {r3, r4}
	ldr r4, _02012D30 ; =0x020E52E4
	mov r3, #0
_02012D0E:
	ldrb r2, [r4]
	cmp r2, r0
	bgt _02012D20
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt _02012D20
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_02012D20:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0xc
	blt _02012D0E
	mov r0, #0xc
	pop {r3, r4}
	bx lr
	nop
_02012D30: .word 0x020E52E4
	thumb_func_end sub_02012D08

	thumb_func_start sub_02012D34
sub_02012D34: ; 0x02012D34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02013188
	ldr r1, [r6, #0x10]
	add r4, r0, #0
	bl sub_020131D0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02012D08
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	ldr r1, _02012DDC ; =0x020E52E4
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r6, _02012DE0 ; =0x020E52E5
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r5, #8]
	lsl r3, r0, #1
	ldrb r0, [r1, r3]
	ldrb r3, [r6, r3]
	sub r2, r2, r0
	ldr r0, [r5, #0xc]
	sub r6, r0, r3
	cmp r2, #0
	ble _02012D9C
	str r0, [r5, #0x1c]
	str r2, [r5, #0x18]
	ldr r0, [r5, #0]
	str r0, [r5, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r5, #4]
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	add r0, r0, r1
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02012D94
	bl sub_02022974
_02012D94:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
_02012D9C:
	cmp r6, #0
	ble _02012DB2
	ldr r0, [r4, #8]
	ldr r2, [r5, #0]
	lsl r1, r0, #1
	ldr r0, _02012DE0 ; =0x020E52E5
	ldrb r0, [r0, r1]
	add r0, r2, r0
	str r0, [r5, #0]
	str r6, [r5, #0xc]
	b _02012DD6
_02012DB2:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02012DD2
	add r3, r5, #0
	add r3, #0x10
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r5, #0x20
	strb r0, [r5]
	b _02012DD6
_02012DD2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02012DD6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02012DDC: .word 0x020E52E4
_02012DE0: .word 0x020E52E5
	thumb_func_end sub_02012D34

	thumb_func_start sub_02012DE4
sub_02012DE4: ; 0x02012DE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	cmp r7, #0
	bne _02012DF8
	bl sub_02022974
_02012DF8:
	ldr r0, [sp]
	cmp r0, #0
	bne _02012E02
	bl sub_02022974
_02012E02:
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x24
	strb r4, [r0]
	ldr r0, [sp]
	str r4, [sp, #0x2c]
	str r7, [sp, #0x30]
	cmp r0, #0
	beq _02012E60
	add r7, sp, #4
_02012E1E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_02012D08
	lsl r1, r0, #1
	ldr r0, _02012E68 ; =0x020E52E4
	add r0, r0, r1
	ldrb r0, [r0, #1]
	ldr r1, [sp, #4]
	add r1, r1, r0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x10]
	sub r1, r1, r0
	str r1, [sp, #0x34]
	str r0, [sp, #0x10]
_02012E3C:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r4, r4, #1
	bl sub_02012D34
	cmp r0, #0
	beq _02012E3C
	add r2, sp, #0x28
	add r3, sp, #4
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x10]
	str r0, [sp]
	cmp r0, #0
	bne _02012E1E
_02012E60:
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012E68: .word 0x020E52E4
	thumb_func_end sub_02012DE4

	thumb_func_start sub_02012E6C
sub_02012E6C: ; 0x02012E6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r6, r3, #0
	cmp r0, #1
	bne _02012E8E
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012E92
_02012E8E:
	ldr r0, _02012ED8 ; =0x04001000
	ldr r1, [r0, #0]
_02012E92:
	ldr r0, _02012EDC ; =0x00300010
	add r7, r1, #0
	and r7, r0
	add r0, r7, #0
	bl sub_0201F6F4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r4, [r0, #0xc]
	cmp r4, r0
	beq _02012ED2
_02012EA8:
	add r0, r5, #0
	bl sub_020A818C
	str r7, [sp]
	ldr r0, [sp, #0x30]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02012EE0
	add r6, r0, #0
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0x24
	cmp r4, r0
	bne _02012EA8
_02012ED2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02012ED8: .word 0x04001000
_02012EDC: .word 0x00300010
	thumb_func_end sub_02012E6C

	thumb_func_start sub_02012EE0
sub_02012EE0: ; 0x02012EE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	add r5, r2, #0
	lsl r1, r0, #1
	ldr r0, _02012F84 ; =0x020E52E4
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	ldr r0, _02012F88 ; =0x020E52E5
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	add r4, r1, #0
	mul r4, r0
	str r0, [sp, #0xc]
	cmp r4, r3
	bge _02012F06
	add r4, r3, #0
_02012F06:
	lsl r4, r4, #5
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, #0]
	bl sub_02012C60
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020C2C54
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02012F48
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020C02BC
	mov r0, #1
	str r6, [r5, #4]
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012F5A
_02012F48:
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020C0314
	ldr r0, _02012F8C ; =0x04001000
	str r6, [r5, #8]
	ldr r1, [r0, #0]
_02012F5A:
	ldr r0, _02012F90 ; =0x00300010
	and r0, r1
	str r0, [r5, #0x20]
	ldr r0, _02012F94 ; =0x0000FFFF
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x2c]
	add r0, r0, r4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02012F84: .word 0x020E52E4
_02012F88: .word 0x020E52E5
_02012F8C: .word 0x04001000
_02012F90: .word 0x00300010
_02012F94: .word 0x0000FFFF
	thumb_func_end sub_02012EE0

	thumb_func_start sub_02012F98
sub_02012F98: ; 0x02012F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r7, [sp, #0x30]
	cmp r3, #1
	bne _02012FB0
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012FB4
_02012FB0:
	ldr r0, _02012FE8 ; =0x04001000
	ldr r1, [r0, #0]
_02012FB4:
	ldr r0, _02012FEC ; =0x00300010
	add r5, r1, #0
	and r5, r0
	add r0, r5, #0
	bl sub_0201F6F4
	ldr r4, [r6, #0xc]
	str r0, [sp, #0x14]
	mov r3, #0
	cmp r4, r6
	beq _02012FE4
_02012FCA:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	str r7, [sp, #8]
	add r1, r4, #0
	bl sub_02012FF0
	ldr r4, [r4, #0xc]
	add r3, r0, #0
	cmp r4, r6
	bne _02012FCA
_02012FE4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02012FE8: .word 0x04001000
_02012FEC: .word 0x00300010
	thumb_func_end sub_02012F98

	thumb_func_start sub_02012FF0
sub_02012FF0: ; 0x02012FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6, #8]
	add r7, r0, #0
	add r0, r2, #0
	lsl r2, r1, #1
	ldr r1, _0201302C ; =0x020E52E4
	add r5, r3, #0
	ldrb r1, [r1, r2]
	ldr r3, _02013030 ; =0x020E52E5
	ldrb r2, [r3, r2]
	add r4, r1, #0
	ldr r3, [sp, #0x20]
	mul r4, r2
	cmp r4, r3
	bge _02013014
	add r4, r3, #0
_02013014:
	ldr r3, [r6, #4]
	add r0, r0, r5
	str r3, [sp]
	str r0, [sp, #4]
	ldr r3, [r6, #0]
	add r0, r7, #0
	bl sub_02012C60
	lsl r0, r4, #5
	add r0, r5, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201302C: .word 0x020E52E4
_02013030: .word 0x020E52E5
	thumb_func_end sub_02012FF0

	thumb_func_start sub_02013034
sub_02013034: ; 0x02013034
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _02013044
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02013048
_02013044:
	ldr r0, _0201307C ; =0x04001000
	ldr r1, [r0, #0]
_02013048:
	ldr r0, _02013080 ; =0x00300010
	and r0, r1
	bl sub_0201F6F4
	ldr r2, [r4, #0xc]
	mov r3, #0
	cmp r2, r4
	beq _02013076
	ldr r1, _02013084 ; =0x020E52E4
_0201305A:
	ldr r5, [r2, #8]
	lsl r5, r5, #1
	add r7, r1, r5
	ldrb r6, [r1, r5]
	ldrb r5, [r7, #1]
	mul r5, r6
	cmp r5, r0
	bge _0201306C
	add r5, r0, #0
_0201306C:
	ldr r2, [r2, #0xc]
	lsl r5, r5, #5
	add r3, r3, r5
	cmp r2, r4
	bne _0201305A
_02013076:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201307C: .word 0x04001000
_02013080: .word 0x00300010
_02013084: .word 0x020E52E4
	thumb_func_end sub_02013034

	thumb_func_start sub_02013088
sub_02013088: ; 0x02013088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	ldr r4, [r0, #0xc]
	str r1, [sp, #4]
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, r0
	beq _020130D8
	mov r5, #0
_0201309E:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02013100
	ldr r1, [r6, #0]
	str r0, [r1, r5]
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _020130B8
	bl sub_02022974
_020130B8:
	ldr r0, [r4, #0]
	add r7, #0x24
	lsl r1, r0, #3
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r1, [r0, #8]
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #4]
	add r5, #0xc
	cmp r4, r0
	bne _0201309E
_020130D8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02013088

	thumb_func_start sub_020130DC
sub_020130DC: ; 0x020130DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020130FC
	add r4, r6, #0
_020130EA:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021BD4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020130EA
_020130FC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020130DC

	thumb_func_start sub_02013100
sub_02013100: ; 0x02013100
	push {r4, r5, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #8]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #0x30]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	add r1, sp, #0x20
	strb r2, [r1]
	ldr r1, [r5, #8]
	str r1, [sp, #0x24]
	add r1, sp, #0
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x24]
	str r1, [sp, #0x38]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0x2c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0201315C
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0201315C:
	ldr r1, [r4, #0]
	ldr r2, [r5, #0x18]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r1, [r4, #4]
	ldr r2, [r5, #0x1c]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl sub_02021B90
	add sp, #0x44
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02013100

	thumb_func_start sub_02013188
sub_02013188: ; 0x02013188
	push {r4, lr}
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _02013198
	bl sub_02022974
_02013198:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013188

	thumb_func_start sub_020131A4
sub_020131A4: ; 0x020131A4
	push {r4, lr}
	add r4, r0, #0
	bne _020131AE
	bl sub_02022974
_020131AE:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020131A4

	thumb_func_start sub_020131B8
sub_020131B8: ; 0x020131B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, r5
	beq _020131CE
_020131C2:
	ldr r4, [r0, #0xc]
	bl sub_020131A4
	add r0, r4, #0
	cmp r4, r5
	bne _020131C2
_020131CE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020131B8

	thumb_func_start sub_020131D0
sub_020131D0: ; 0x020131D0
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r2, [r1, #0xc]
	str r0, [r2, #0x10]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020131D0

	thumb_func_start sub_020131E0
sub_020131E0: ; 0x020131E0
	ldr r3, _020131E8 ; =sub_02012938
	str r1, [r0, #8]
	bx r3
	nop
_020131E8: .word sub_02012938
	thumb_func_end sub_020131E0

	thumb_func_start sub_020131EC
sub_020131EC: ; 0x020131EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r6, [sp, #0x20]
	str r1, [sp, #4]
	add r5, r2, #0
	add r4, r3, #0
	str r0, [sp, #0x24]
	mov r7, #0
_02013200:
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0]
	add r0, r0, r1
	ldr r1, [sp]
	add r1, r1, r2
	add r2, r6, #0
	bl sub_020D50B8
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, r6
	str r0, [r4, #0]
	cmp r7, #8
	blt _02013200
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020131EC

	thumb_func_start sub_0201322C
sub_0201322C: ; 0x0201322C
	push {r4, r5, r6, lr}
	add r5, r3, #0
	bl sub_02006AC0
	add r4, r0, #0
	bne _0201323C
	bl sub_02022974
_0201323C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020A7118
	add r6, r0, #0
	cmp r5, #0
	bne _0201324E
	bl sub_02022974
_0201324E:
	cmp r6, #0
	bne _02013256
	bl sub_02022974
_02013256:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201322C

	thumb_func_start sub_02013260
sub_02013260: ; 0x02013260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x40]
	str r0, [sp, #8]
	add r6, r0, r2
	ldrh r0, [r4, #2]
	str r1, [sp, #0xc]
	add r5, r3, #0
	cmp r0, r6
	bge _02013278
	bl sub_02022974
_02013278:
	ldr r0, [sp, #0xc]
	ldrh r1, [r4]
	add r0, r0, r5
	str r0, [sp, #0x14]
	cmp r1, r0
	bge _02013288
	bl sub_02022974
_02013288:
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x18]
	lsl r1, r0, #2
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _020132F2
_020132B4:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _020132E0
	ldr r0, [sp, #0x18]
	lsl r1, r0, #3
	ldr r0, [sp, #0x10]
	add r5, r0, r1
_020132C4:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_020131EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _020132C4
_020132E0:
	ldr r0, [sp, #0x18]
	add r0, r0, r7
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020132B4
_020132F2:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02013260

	thumb_func_start sub_020132F8
sub_020132F8: ; 0x020132F8
	push {r4, r5}
	sub sp, #8
	ldr r2, _02013330 ; =0x020E52FC
	add r1, sp, #0
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	str r3, [sp]
	str r2, [sp, #4]
	ldr r2, _02013334 ; =0x000001EF
	mov r5, #0
	add r3, r2, #0
_0201330E:
	ldr r4, [r1, #0]
	cmp r4, r3
	beq _02013328
	cmp r4, r0
	bne _02013320
	add sp, #8
	mov r0, #1
	pop {r4, r5}
	bx lr
_02013320:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, r2
	blt _0201330E
_02013328:
	mov r0, #0
	add sp, #8
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02013330: .word 0x020E52FC
_02013334: .word 0x000001EF
	thumb_func_end sub_020132F8

	thumb_func_start sub_02013338
sub_02013338: ; 0x02013338
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r3, #0
	mov r3, #0
	str r3, [sp, #8]
	add r3, sp, #8
	add r5, r0, #0
	bl sub_0201322C
	ldr r0, [sp, #8]
	add r1, r5, #0
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	ldr r0, [sp, #0x34]
	bl sub_020132F8
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _02013370
	cmp r0, #1
	bne _02013370
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x2c]
	bl sub_020091D8
_02013370:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	bl sub_02013260
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02013338

	thumb_func_start sub_02013388
sub_02013388: ; 0x02013388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x20]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02013338
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02013388

	thumb_func_start sub_020133D4
sub_020133D4: ; 0x020133D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r3, [sp, #8]
	ldr r3, [sp, #0x48]
	add r4, r0, #0
	str r3, [sp, #0x48]
	mov r3, #0
	str r3, [sp, #0x2c]
	bl sub_02006AC0
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _020133F2
	bl sub_02022974
_020133F2:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x2c
	bl sub_020A7118
	cmp r0, #0
	bne _02013402
	bl sub_02022974
_02013402:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #8]
	add r6, r0, r1
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	cmp r0, r6
	bge _02013414
	bl sub_02022974
_02013414:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201342A
	bl sub_02022974
_0201342A:
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x1c]
	bl sub_020093A0
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0x48]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201349E
_02013460:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _0201348C
	ldr r0, [sp, #0x14]
	lsl r1, r0, #3
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_02013470:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_020131EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02013470
_0201348C:
	ldr r0, [sp, #0x14]
	add r0, r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _02013460
_0201349E:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020133D4

	thumb_func_start sub_020134A8
sub_020134A8: ; 0x020134A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #0xc]
	bl sub_020133D4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020134A8

	thumb_func_start sub_020134E4
sub_020134E4: ; 0x020134E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r2, [sp, #4]
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r7, r0, r1
	ldr r1, [sp, #0x3c]
	add r0, r3, #0
	add r0, r0, r1
	add r1, r3, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	str r0, [sp, #0x10]
	cmp r1, r0
	bge _0201355C
	add r0, r3, #0
	lsl r0, r0, #5
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #5
	str r0, [sp, #0x1c]
_02013518:
	ldr r6, [sp, #4]
	add r0, r6, #0
	cmp r0, r7
	bge _0201354A
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r4, r0, r2
_0201352C:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x14]
	mov r2, #0x20
	add r0, r0, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r4
	bl sub_020D50B8
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r0, #0x20
	str r0, [r5, #0]
	add r4, #0x20
	cmp r6, r7
	blt _0201352C
_0201354A:
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02013518
_0201355C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020134E4

	thumb_func_start sub_02013560
sub_02013560: ; 0x02013560
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r2, [r4, #8]
	str r2, [sp]
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x20]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x10]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_020134E4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_02013560

	thumb_func_start sub_02013584
sub_02013584: ; 0x02013584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0x94]
	ldr r7, [sp, #0x98]
	ldr r3, _020135EC ; =0x020E5324
	str r1, [sp, #0x10]
	str r0, [sp, #0x9c]
	add r2, sp, #0x1c
	mov r4, #0xc
_0201359E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _0201359E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	mov r3, ip
	str r7, [sp, #8]
	bl sub_020134A8
	str r0, [sp, #0x14]
	mov r4, #0
	add r5, sp, #0x1c
_020135C4:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x9c]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x18
	bl sub_02013560
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020135C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_020135EC: .word 0x020E5324
	thumb_func_end sub_02013584

	thumb_func_start sub_020135F0
sub_020135F0: ; 0x020135F0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r3, [r3, #0]
	bl sub_02013584
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020135F0

	thumb_func_start sub_02013610
sub_02013610: ; 0x02013610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, _02013638 ; =0x020E5304
	add r5, r3, #0
	add r3, sp, #4
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	mov r1, ip
	add r3, r6, #0
	str r5, [sp]
	bl sub_020135F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02013638: .word 0x020E5304
	thumb_func_end sub_02013610

	thumb_func_start sub_0201363C
sub_0201363C: ; 0x0201363C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x32
	add r7, r2, #0
	add r5, r0, #0
	add r0, r7, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013610
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201363C

	thumb_func_start sub_02013660
sub_02013660: ; 0x02013660
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02006AC0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020A71B0
	cmp r0, #1
	beq _0201368C
	bl sub_02022974
_0201368C:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C4B18
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02013660

	thumb_func_start sub_020136A4
sub_020136A4: ; 0x020136A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xac]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0xa4]
	ldr r7, [sp, #0xa8]
	ldr r3, _0201371C ; =0x020E5384
	str r1, [sp, #0x20]
	str r0, [sp, #0xac]
	add r2, sp, #0x2c
	mov r4, #0xc
_020136BE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _020136BE
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xb0]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb4]
	add r2, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xb8]
	mov r3, ip
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl sub_02013388
	str r0, [sp, #0x24]
	mov r4, #0
	add r5, sp, #0x2c
_020136F4:
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xac]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x28
	bl sub_02013560
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020136F4
	ldr r0, [sp, #0x24]
	bl sub_020181C4
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0201371C: .word 0x020E5384
	thumb_func_end sub_020136A4

	thumb_func_start sub_02013720
sub_02013720: ; 0x02013720
	push {r4, lr}
	sub sp, #0x20
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x1c]
	ldr r3, [r3, #0]
	bl sub_020136A4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013720

	thumb_func_start sub_02013750
sub_02013750: ; 0x02013750
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _02013788 ; =0x020E5314
	add r5, r3, #0
	add r3, sp, #0x14
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x38]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, ip
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02013720
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02013788: .word 0x020E5314
	thumb_func_end sub_02013750

	thumb_func_start sub_0201378C
sub_0201378C: ; 0x0201378C
	push {r3, lr}
	bl sub_020CB8A8
	ldr r3, _020137BC ; =0x021BF5C8
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _020137C0 ; =0x021BF5C8
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r3, #0
	bl sub_02013824
	pop {r3, pc}
	; .align 2, 0
_020137BC: .word 0x021BF5C8
_020137C0: .word 0x021BF5C8
	thumb_func_end sub_0201378C

	thumb_func_start sub_020137C4
sub_020137C4: ; 0x020137C4
	push {r3, lr}
	ldr r0, _020137E4 ; =0x021BF5C8
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020137E2
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xa
	ble _020137E2
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, _020137E8 ; =0x021BF5C8
	bl sub_02013824
_020137E2:
	pop {r3, pc}
	; .align 2, 0
_020137E4: .word 0x021BF5C8
_020137E8: .word 0x021BF5C8
	thumb_func_end sub_020137C4

	thumb_func_start sub_020137EC
sub_020137EC: ; 0x020137EC
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _020137FA
	bl sub_02022974
_020137FA:
	add r3, r4, #0
	mov r0, #1
	add r2, r4, #0
	add r3, #0x2c
	str r0, [r4, #0]
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r3, r4, #0
	add r3, #0x3c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_020137EC

	thumb_func_start sub_02013824
sub_02013824: ; 0x02013824
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, _02013848 ; =sub_020137EC
	add r0, #0x2c
	add r1, #0x3c
	add r3, r4, #0
	bl sub_020CBA68
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _02013846
	bl sub_02022974
_02013846:
	pop {r4, pc}
	; .align 2, 0
_02013848: .word sub_020137EC
	thumb_func_end sub_02013824

	thumb_func_start sub_0201384C
sub_0201384C: ; 0x0201384C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02013874 ; =0x021BF5C8
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0201385E
	bl sub_02022974
_0201385E:
	ldr r2, _02013878 ; =0x021BF5D8
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	ldr r2, _0201387C ; =0x021BF5E8
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02013874: .word 0x021BF5C8
_02013878: .word 0x021BF5D8
_0201387C: .word 0x021BF5E8
	thumb_func_end sub_0201384C

	thumb_func_start sub_02013880
sub_02013880: ; 0x02013880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201389C ; =0x021BF5C8
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02013890
	bl sub_02022974
_02013890:
	ldr r2, _020138A0 ; =0x021BF5E8
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_0201389C: .word 0x021BF5C8
_020138A0: .word 0x021BF5E8
	thumb_func_end sub_02013880

	thumb_func_start sub_020138A4
sub_020138A4: ; 0x020138A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020138C0 ; =0x021BF5C8
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _020138B4
	bl sub_02022974
_020138B4:
	ldr r2, _020138C4 ; =0x021BF5D8
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	pop {r4, pc}
	; .align 2, 0
_020138C0: .word 0x021BF5C8
_020138C4: .word 0x021BF5D8
	thumb_func_end sub_020138A4

	thumb_func_start sub_020138C8
sub_020138C8: ; 0x020138C8
	push {r3, r4}
	ldr r4, _020138E8 ; =0x021BF5E8
	mov r0, #0x3c
	ldr r1, [r4, #4]
	ldr r3, [r4, #8]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0xe1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	nop
_020138E8: .word 0x021BF5E8
	thumb_func_end sub_020138C8

	thumb_func_start sub_020138EC
sub_020138EC: ; 0x020138EC
	ldr r3, _020138F4 ; =sub_020CC218
	ldr r0, _020138F8 ; =0x021BF5D8
	ldr r1, _020138FC ; =0x021BF5E8
	bx r3
	; .align 2, 0
_020138F4: .word sub_020CC218
_020138F8: .word 0x021BF5D8
_020138FC: .word 0x021BF5E8
	thumb_func_end sub_020138EC

	thumb_func_start sub_02013900
sub_02013900: ; 0x02013900
	push {r3, r4, r5, lr}
	ldr r3, [r0, #4]
	ldr r1, _02013944 ; =0x020E53FE
	lsl r2, r3, #1
	ldrh r1, [r1, r2]
	ldr r4, [r0, #8]
	add r5, r4, r1
	cmp r3, #3
	blo _0201393E
	ldr r4, [r0, #0]
	mov r0, #0x1e
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _0201392E
	add r0, r4, #0
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0
	bne _0201393C
_0201392E:
	mov r1, #0x19
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_020E1F6C
	cmp r1, #0
	bne _0201393E
_0201393C:
	add r5, r5, #1
_0201393E:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_02013944: .word 0x020E53FE
	thumb_func_end sub_02013900

	thumb_func_start sub_02013948
sub_02013948: ; 0x02013948
	push {r3, lr}
	bl sub_02013960
	cmp r0, #3
	beq _02013956
	cmp r0, #4
	bne _0201395A
_02013956:
	mov r0, #1
	pop {r3, pc}
_0201395A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02013948

	thumb_func_start sub_02013960
sub_02013960: ; 0x02013960
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl sub_02013880
	ldr r0, [sp]
	bl sub_02013974
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02013960

	thumb_func_start sub_02013974
sub_02013974: ; 0x02013974
	push {r4, lr}
	add r4, r0, #0
	bmi _0201397E
	cmp r4, #0x18
	blt _02013982
_0201397E:
	bl sub_02022974
_02013982:
	ldr r0, _02013988 ; =0x020E5418
	ldrb r0, [r0, r4]
	pop {r4, pc}
	; .align 2, 0
_02013988: .word 0x020E5418
	thumb_func_end sub_02013974

	thumb_func_start sub_0201398C
sub_0201398C: ; 0x0201398C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	ldr r3, _020139F8 ; =0x020E53F0
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	str r2, [sp]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _020139FC ; =0x020E53E4
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	str r2, [sp, #4]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, [sp, #4]
	str r0, [r2, #0]
	ldr r0, [sp]
	bl sub_020CC218
	add r2, r1, #0
	add r3, r0, #0
	mov r1, #0
	ldr r0, _02013A00 ; =0xBC19137F
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _020139D0
	bl sub_02022974
_020139D0:
	sub r0, r4, r5
	mov ip, r7
	mov r0, ip
	sbc r0, r6
	bge _020139E4
	sub r0, r5, r4
	sbc r6, r7
	add sp, #0x24
	add r1, r6, #0
	pop {r4, r5, r6, r7, pc}
_020139E4:
	ldr r0, _02013A00 ; =0xBC19137F
	mov r1, #0
	sub r0, r0, r4
	sbc r1, r7
	add r0, r5, r0
	adc r6, r1
	add r1, r6, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_020139F8: .word 0x020E53F0
_020139FC: .word 0x020E53E4
_02013A00: .word 0xBC19137F
	thumb_func_end sub_0201398C

	thumb_func_start sub_02013A04
sub_02013A04: ; 0x02013A04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #1
	add r0, r4, #0
	lsl r1, r1, #3
	bl sub_02018144
	cmp r0, #0
	beq _02013A3A
	mov r2, #0
	cmp r5, #0
	bls _02013A2E
	add r3, r0, #0
	add r1, r2, #0
_02013A22:
	str r1, [r3, #0]
	str r1, [r3, #4]
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blo _02013A22
_02013A2E:
	mov r1, #0
	lsl r2, r2, #3
	mvn r1, r1
	str r1, [r0, r2]
	add r1, r0, r2
	str r4, [r1, #4]
_02013A3A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013A04

	thumb_func_start sub_02013A3C
sub_02013A3C: ; 0x02013A3C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013AE8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02013A3C

	thumb_func_start sub_02013A4C
sub_02013A4C: ; 0x02013A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, sp, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02013AAC
	add r4, r0, #0
	beq _02013A6A
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	str r0, [r4, #0]
	str r5, [r4, #4]
_02013A6A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02013A4C

	thumb_func_start sub_02013A6C
sub_02013A6C: ; 0x02013A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, sp, #0
	add r5, r2, #0
	bl sub_02013AAC
	add r4, r0, #0
	beq _02013A8A
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02023868
	str r0, [r4, #0]
	str r5, [r4, #4]
_02013A8A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02013A6C

	thumb_func_start sub_02013A90
sub_02013A90: ; 0x02013A90
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02013AAC
	cmp r0, #0
	beq _02013AA8
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
_02013AA8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02013A90

	thumb_func_start sub_02013AAC
sub_02013AAC: ; 0x02013AAC
	push {r4, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02013ACC
	mov r2, #0
	mvn r2, r2
_02013AB8:
	cmp r3, r2
	bne _02013AC4
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02013AC4:
	add r0, #8
	ldr r3, [r0, #0]
	cmp r3, #0
	bne _02013AB8
_02013ACC:
	mov r2, #0
	mvn r2, r2
	add r4, r0, #0
	cmp r3, r2
	beq _02013ADE
_02013AD6:
	add r0, #8
	ldr r3, [r0, #0]
	cmp r3, r2
	bne _02013AD6
_02013ADE:
	ldr r0, [r0, #4]
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013AAC

	thumb_func_start sub_02013AE8
sub_02013AE8: ; 0x02013AE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r5, #0]
	mvn r0, r0
	cmp r1, r0
	beq _02013B0E
	mov r4, #0
	add r6, r0, #0
_02013AFA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02013B0E
	bl sub_020237BC
	str r4, [r5, #0]
	add r5, #8
	ldr r0, [r5, #0]
	cmp r0, r6
	bne _02013AFA
_02013B0E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02013AE8

	thumb_func_start sub_02013B10
sub_02013B10: ; 0x02013B10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	mov r1, #1
	strb r1, [r0, #9]
	str r5, [r0, #0]
	str r4, [r0, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013B10

	thumb_func_start sub_02013B40
sub_02013B40: ; 0x02013B40
	push {r4, lr}
	add r4, r0, #0
	bne _02013B4A
	bl sub_02022974
_02013B4A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B40

	thumb_func_start sub_02013B54
sub_02013B54: ; 0x02013B54
	push {r4, lr}
	add r4, r0, #0
	bne _02013B5E
	bl sub_02022974
_02013B5E:
	ldrb r0, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B54

	thumb_func_start sub_02013B68
sub_02013B68: ; 0x02013B68
	push {r4, lr}
	add r4, r0, #0
	bne _02013B72
	bl sub_02022974
_02013B72:
	ldrb r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B68

	thumb_func_start sub_02013B80
sub_02013B80: ; 0x02013B80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02013B8E
	bl sub_02022974
_02013B8E:
	strb r4, [r5, #9]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02013B80

	thumb_func_start sub_02013B94
sub_02013B94: ; 0x02013B94
	cmp r0, #0
	beq _02013BA6
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _02013BA6
	ldrb r2, [r0, #8]
	mov r1, #1
	eor r1, r2
	strb r1, [r0, #8]
_02013BA6:
	bx lr
	thumb_func_end sub_02013B94

	thumb_func_start sub_02013BA8
sub_02013BA8: ; 0x02013BA8
	push {r3, lr}
	mov r0, #0
	bl sub_020C45F4
	mov r0, #0
	bl sub_020C458C
	pop {r3, pc}
	thumb_func_end sub_02013BA8

	thumb_func_start sub_02013BB8
sub_02013BB8: ; 0x02013BB8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _02013BD2
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020C4748
	pop {r4, r5, r6, pc}
_02013BD2:
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020C47A8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02013BB8

	thumb_func_start sub_02013BE0
sub_02013BE0: ; 0x02013BE0
	push {r3, r4, r5, lr}
	ldr r1, _02013C0C ; =0x0000079C
	add r5, r0, #0
	bl sub_02018144
	ldr r2, _02013C0C ; =0x0000079C
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r2, #3
	lsl r2, r2, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl sub_02013B10
	mov r1, #6
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02013C0C: .word 0x0000079C
	thumb_func_end sub_02013BE0

	thumb_func_start sub_02013C10
sub_02013C10: ; 0x02013C10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02013C22
	bl sub_02022974
_02013C22:
	ldr r0, _02013C90 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02013C2E
	bl sub_02022974
_02013C2E:
	ldr r0, _02013C94 ; =0x0000078C
	mov r2, #0
	strb r4, [r5, r0]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x20]
	add r0, #8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02013C98 ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0
	bl sub_02013DFC
	ldr r0, _02013C9C ; =sub_02013E58
	ldr r2, [sp, #0x28]
	add r1, r5, #0
	bl sub_0200D9E8
	ldr r1, _02013C90 ; =0x00000604
	mov r2, #3
	str r0, [r5, r1]
	ldr r0, _02013CA0 ; =0x00000794
	add r1, r5, #0
	ldr r0, [r5, r0]
	lsl r2, r2, #8
	bl sub_020C4B4C
	ldr r0, _02013CA0 ; =0x00000794
	mov r2, #3
	lsl r2, r2, #8
	ldr r0, [r5, r0]
	add r1, r5, r2
	bl sub_020C4B4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02013C90: .word 0x00000604
_02013C94: .word 0x0000078C
_02013C98: .word 0x0000060C
_02013C9C: .word sub_02013E58
_02013CA0: .word 0x00000794
	thumb_func_end sub_02013C10

	thumb_func_start sub_02013CA4
sub_02013CA4: ; 0x02013CA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02013CB6
	bl sub_02022974
_02013CB6:
	ldr r0, _02013D24 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02013CC2
	bl sub_02022974
_02013CC2:
	ldr r0, _02013D28 ; =0x0000078C
	mov r2, #0
	strb r4, [r5, r0]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x20]
	add r0, #8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02013D2C ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0
	bl sub_02013DFC
	ldr r0, _02013D30 ; =sub_02013F04
	ldr r2, [sp, #0x28]
	add r1, r5, #0
	bl sub_0200D9E8
	ldr r1, _02013D24 ; =0x00000604
	mov r2, #3
	str r0, [r5, r1]
	ldr r0, _02013D34 ; =0x00000794
	add r1, r5, #0
	ldr r0, [r5, r0]
	lsl r2, r2, #8
	bl sub_020C4B4C
	ldr r0, _02013D34 ; =0x00000794
	mov r2, #3
	lsl r2, r2, #8
	ldr r0, [r5, r0]
	add r1, r5, r2
	bl sub_020C4B4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02013D24: .word 0x00000604
_02013D28: .word 0x0000078C
_02013D2C: .word 0x0000060C
_02013D30: .word sub_02013F04
_02013D34: .word 0x00000794
	thumb_func_end sub_02013CA4

	thumb_func_start sub_02013D38
sub_02013D38: ; 0x02013D38
	push {r4, lr}
	add r4, r0, #0
	bne _02013D42
	bl sub_02022974
_02013D42:
	ldr r0, _02013D6C ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02013D68
	bl sub_0200DA58
	ldr r0, _02013D6C ; =0x00000604
	mov r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013B54
	ldr r1, _02013D70 ; =0x00000794
	mov r2, #3
	ldr r1, [r4, r1]
	lsl r2, r2, #8
	bl sub_020D5124
_02013D68:
	pop {r4, pc}
	nop
_02013D6C: .word 0x00000604
_02013D70: .word 0x00000794
	thumb_func_end sub_02013D38

	thumb_func_start sub_02013D74
sub_02013D74: ; 0x02013D74
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013D38
	bl sub_02013FC8
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B40
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013D74

	thumb_func_start sub_02013D94
sub_02013D94: ; 0x02013D94
	mov r1, #6
	lsl r1, r1, #8
	ldr r3, _02013DA0 ; =sub_02013B54
	ldr r0, [r0, r1]
	bx r3
	nop
_02013DA0: .word sub_02013B54
	thumb_func_end sub_02013D94

	thumb_func_start sub_02013DA4
sub_02013DA4: ; 0x02013DA4
	push {r4, lr}
	add r4, r0, #0
	beq _02013DD2
	ldr r0, _02013DD4 ; =0x00000604
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02013DD2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013B94
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B54
	add r1, r0, #0
	ldr r0, _02013DD8 ; =0x00000794
	mov r2, #3
	ldr r0, [r4, r0]
	lsl r2, r2, #8
	bl sub_020C4B4C
_02013DD2:
	pop {r4, pc}
	; .align 2, 0
_02013DD4: .word 0x00000604
_02013DD8: .word 0x00000794
	thumb_func_end sub_02013DA4

	thumb_func_start sub_02013DDC
sub_02013DDC: ; 0x02013DDC
	push {r4, lr}
	add r4, r0, #0
	beq _02013DF4
	ldr r0, _02013DF8 ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02013DF4
	bl sub_02013FC8
	add r0, r4, #0
	bl sub_02013FD0
_02013DF4:
	pop {r4, pc}
	nop
_02013DF8: .word 0x00000604
	thumb_func_end sub_02013DDC

	thumb_func_start sub_02013DFC
sub_02013DFC: ; 0x02013DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	str r2, [sp]
	cmp r7, #0
	bls _02013E4A
	asr r0, r3, #0x1f
	str r3, [sp, #4]
	str r0, [sp, #8]
_02013E14:
	asr r0, r4, #4
	lsl r1, r0, #2
	ldr r0, _02013E50 ; =0x020F983C
	ldr r2, [sp, #4]
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02013E54 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	strh r0, [r5]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r5, r5, #2
	cmp r6, r7
	blo _02013E14
_02013E4A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02013E50: .word 0x020F983C
_02013E54: .word 0x00000000
	thumb_func_end sub_02013DFC

	thumb_func_start sub_02013E58
sub_02013E58: ; 0x02013E58
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #6
	add r6, r1, #0
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02013B54
	add r5, r0, #0
	ldr r0, _02013EF4 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02013EF8 ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02013EC0
	lsl r0, r4, #2
	add r5, r5, r0
_02013E86:
	ldr r2, [r5, #0]
	lsl r0, r2, #0x10
	asr r7, r0, #0x10
	lsl r0, r3, #1
	add r1, r6, r0
	ldr r0, _02013EFC ; =0x0000060C
	ldrsh r0, [r1, r0]
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r3, #1
	mov r1, #0xc0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02013F00 ; =0x0000078D
	add r4, r4, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02013E86
_02013EC0:
	ldr r1, _02013EF4 ; =0x00000798
	add r0, r1, #2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #8
	cmp r0, r1
	blt _02013EE4
	mov r0, #0
	ldrsh r0, [r4, r0]
	bl sub_020E1F6C
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02013EE4:
	cmp r0, #0
	bge _02013EF0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
_02013EF0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013EF4: .word 0x00000798
_02013EF8: .word 0x0000078C
_02013EFC: .word 0x0000060C
_02013F00: .word 0x0000078D
	thumb_func_end sub_02013E58

	thumb_func_start sub_02013F04
sub_02013F04: ; 0x02013F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #6
	add r6, r1, #0
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02013B54
	add r5, r0, #0
	ldr r0, _02013FB8 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _02013FBC ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02013F80
	lsl r0, r4, #2
	add r5, r5, r0
_02013F34:
	ldr r0, [r5, #0]
	mov r1, #0xc0
	str r0, [sp]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0xb4
	bl sub_020E1F6C
	lsl r0, r1, #1
	add r1, r6, r0
	ldr r0, _02013FC0 ; =0x0000060C
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r1, [sp]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r7, #1
	mov r1, #0xc0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldr r0, _02013FC4 ; =0x0000078D
	add r4, r4, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02013F34
_02013F80:
	ldr r1, _02013FB8 ; =0x00000798
	add r0, r1, #2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #8
	cmp r0, r1
	blt _02013FA6
	mov r0, #0
	ldrsh r0, [r4, r0]
	bl sub_020E1F6C
	add sp, #8
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02013FA6:
	cmp r0, #0
	bge _02013FB2
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
_02013FB2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013FB8: .word 0x00000798
_02013FBC: .word 0x0000078C
_02013FC0: .word 0x0000060C
_02013FC4: .word 0x0000078D
	thumb_func_end sub_02013F04

	thumb_func_start sub_02013FC8
sub_02013FC8: ; 0x02013FC8
	ldr r3, _02013FCC ; =sub_02013BA8
	bx r3
	; .align 2, 0
_02013FCC: .word sub_02013BA8
	thumb_func_end sub_02013FC8

	thumb_func_start sub_02013FD0
sub_02013FD0: ; 0x02013FD0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02013FDA
	bl sub_02022974
_02013FDA:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B68
	mov r1, #3
	lsl r1, r1, #8
	add r5, r0, #0
	bl sub_020C2C54
	mov r1, #0x79
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #4
	mov r3, #1
	bl sub_02013BB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013FD0

	thumb_func_start sub_02014000
sub_02014000: ; 0x02014000
	mov r1, #0
	ldr r2, _02014010 ; =0x021BF618
	add r0, r1, #0
_02014006:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #0x10
	blt _02014006
	bx lr
	; .align 2, 0
_02014010: .word 0x021BF618
	thumb_func_end sub_02014000

	thumb_func_start sub_02014014
sub_02014014: ; 0x02014014
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _02014108 ; =0x021BF618
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp, #0xc]
	mov r5, #0
_02014024:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02014032
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #0x10
	blt _02014024
_02014032:
	cmp r5, #0x10
	blt _0201403C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201403C:
	ldr r0, [sp, #0x2c]
	mov r1, #0xdc
	bl sub_02018144
	add r4, r0, #0
	bne _0201404C
	bl sub_02022974
_0201404C:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl sub_020D5124
	add r2, r4, #0
	ldr r0, [sp, #8]
	str r7, [r4, #0x18]
	ldr r3, _0201410C ; =0x020E5448
	str r0, [r4, #0x1c]
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02014110 ; =0x020E5430
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02014114 ; =0x020E543C
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020D5124
	ldr r0, [sp, #0xc]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0xda
	strb r5, [r0]
	ldr r0, _02014108 ; =0x021BF618
	lsl r5, r5, #2
	str r4, [r0, r5]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _020140E0
	ldr r0, [sp, #0x2c]
	bl sub_020203AC
	str r0, [r4, #0x20]
	mov r3, #0
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #2
	str r3, [r4, #0x2c]
	lsl r0, r0, #0xc
	strh r0, [r4, #0x30]
	str r3, [sp]
	ldr r0, [r4, #0x20]
	ldr r1, _0201410C ; =0x020E5448
	str r0, [sp, #4]
	ldrh r2, [r4, #0x30]
	ldr r0, _02014114 ; =0x020E543C
	bl sub_02020784
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdb
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	bl sub_020203D4
_020140E0:
	mov r0, #6
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	ldr r0, _02014118 ; =0x020E5454
	mov r1, #0x14
	ldr r0, [r0, r5]
	mov r2, #0xc8
	mov r3, #5
	bl sub_0209CD00
	str r0, [r4, #0]
	ldr r1, _02014110 ; =0x020E5430
	add r0, r4, #0
	bl sub_02014744
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014108: .word 0x021BF618
_0201410C: .word 0x020E5448
_02014110: .word 0x020E5430
_02014114: .word 0x020E543C
_02014118: .word 0x020E5454
	thumb_func_end sub_02014014

	thumb_func_start sub_0201411C
sub_0201411C: ; 0x0201411C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02014718
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0201413A
	add r0, r5, #0
	add r0, #0x58
	bl sub_020A5D48
	b _0201415A
_0201413A:
	mov r0, #2
	tst r0, r1
	beq _0201415A
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014146:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02014152
	bl sub_020A6914
	str r7, [r4, #0x58]
_02014152:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014146
_0201415A:
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02014170
	add r0, r5, #0
	add r0, #0x98
	bl sub_020A5F34
	b _02014198
_02014170:
	mov r0, #8
	tst r0, r1
	beq _02014198
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_0201417C:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02014190
	bl sub_020A6CAC
	add r0, r4, #0
	add r0, #0x98
	str r7, [r0, #0]
_02014190:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _0201417C
_02014198:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd8
	strb r1, [r0]
	str r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020141B0
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #4]
_020141B0:
	ldr r2, _020141E0 ; =0x021BF618
	mov r1, #0
_020141B4:
	ldr r0, [r2, #0]
	cmp r0, r5
	bne _020141C4
	ldr r0, _020141E0 ; =0x021BF618
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _020141CC
_020141C4:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020141B4
_020141CC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020141D6
	bl sub_020203B8
_020141D6:
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020141E0: .word 0x021BF618
	thumb_func_end sub_0201411C

	thumb_func_start sub_020141E4
sub_020141E4: ; 0x020141E4
	push {r3, r4, r5, lr}
	ldr r5, _02014200 ; =0x021BF618
	mov r4, #0
_020141EA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020141F4
	bl sub_0201411C
_020141F4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _020141EA
	pop {r3, r4, r5, pc}
	nop
_02014200: .word 0x021BF618
	thumb_func_end sub_020141E4

	thumb_func_start sub_02014204
sub_02014204: ; 0x02014204
	push {r4, lr}
	ldr r1, _0201422C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #8]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201421C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201421C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014228
	bl sub_02022974
_02014228:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201422C: .word 0x021BF610
	thumb_func_end sub_02014204

	thumb_func_start sub_02014230
sub_02014230: ; 0x02014230
	push {r4, lr}
	ldr r1, _02014258 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0xc]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014248
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014248:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014254
	bl sub_02022974
_02014254:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014258: .word 0x021BF610
	thumb_func_end sub_02014230

	thumb_func_start sub_0201425C
sub_0201425C: ; 0x0201425C
	push {r4, lr}
	ldr r1, _02014284 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x10]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014274
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014274:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014280
	bl sub_02022974
_02014280:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014284: .word 0x021BF610
	thumb_func_end sub_0201425C

	thumb_func_start sub_02014288
sub_02014288: ; 0x02014288
	push {r4, lr}
	ldr r1, _020142B0 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x14]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142A0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142A0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020142AC
	bl sub_02022974
_020142AC:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020142B0: .word 0x021BF610
	thumb_func_end sub_02014288

	thumb_func_start sub_020142B4
sub_020142B4: ; 0x020142B4
	push {r4, lr}
	ldr r1, _020142DC ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x18]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142CC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142CC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020142D8
	bl sub_02022974
_020142D8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020142DC: .word 0x021BF610
	thumb_func_end sub_020142B4

	thumb_func_start sub_020142E0
sub_020142E0: ; 0x020142E0
	push {r4, lr}
	ldr r1, _02014308 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x1c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142F8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142F8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014304
	bl sub_02022974
_02014304:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014308: .word 0x021BF610
	thumb_func_end sub_020142E0

	thumb_func_start sub_0201430C
sub_0201430C: ; 0x0201430C
	push {r4, lr}
	ldr r1, _02014334 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x20]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014324
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014324:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014330
	bl sub_02022974
_02014330:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014334: .word 0x021BF610
	thumb_func_end sub_0201430C

	thumb_func_start sub_02014338
sub_02014338: ; 0x02014338
	push {r4, lr}
	ldr r1, _02014360 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x24]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014350
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014350:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201435C
	bl sub_02022974
_0201435C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014360: .word 0x021BF610
	thumb_func_end sub_02014338

	thumb_func_start sub_02014364
sub_02014364: ; 0x02014364
	push {r4, lr}
	ldr r1, _0201438C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x28]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201437C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201437C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014388
	bl sub_02022974
_02014388:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201438C: .word 0x021BF610
	thumb_func_end sub_02014364

	thumb_func_start sub_02014390
sub_02014390: ; 0x02014390
	push {r4, lr}
	ldr r1, _020143B8 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x2c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020143A8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020143A8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020143B4
	bl sub_02022974
_020143B4:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020143B8: .word 0x021BF610
	thumb_func_end sub_02014390

	thumb_func_start sub_020143BC
sub_020143BC: ; 0x020143BC
	push {r4, lr}
	ldr r1, _020143E4 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x30]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020143D4
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020143D4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020143E0
	bl sub_02022974
_020143E0:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020143E4: .word 0x021BF610
	thumb_func_end sub_020143BC

	thumb_func_start sub_020143E8
sub_020143E8: ; 0x020143E8
	push {r4, lr}
	ldr r1, _02014410 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x34]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014400
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014400:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201440C
	bl sub_02022974
_0201440C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014410: .word 0x021BF610
	thumb_func_end sub_020143E8

	thumb_func_start sub_02014414
sub_02014414: ; 0x02014414
	push {r4, lr}
	ldr r1, _0201443C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x38]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201442C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201442C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014438
	bl sub_02022974
_02014438:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201443C: .word 0x021BF610
	thumb_func_end sub_02014414

	thumb_func_start sub_02014440
sub_02014440: ; 0x02014440
	push {r4, lr}
	ldr r1, _02014468 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x3c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014458
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014458:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014464
	bl sub_02022974
_02014464:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014468: .word 0x021BF610
	thumb_func_end sub_02014440

	thumb_func_start sub_0201446C
sub_0201446C: ; 0x0201446C
	push {r4, lr}
	ldr r1, _02014494 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x40]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014484
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014484:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014490
	bl sub_02022974
_02014490:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014494: .word 0x021BF610
	thumb_func_end sub_0201446C

	thumb_func_start sub_02014498
sub_02014498: ; 0x02014498
	push {r4, lr}
	ldr r1, _020144C0 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x44]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020144B0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020144B0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020144BC
	bl sub_02022974
_020144BC:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020144C0: .word 0x021BF610
	thumb_func_end sub_02014498

	thumb_func_start sub_020144C4
sub_020144C4: ; 0x020144C4
	ldr r3, _020144C8 ; =sub_02006AC0
	bx r3
	; .align 2, 0
_020144C8: .word sub_02006AC0
	thumb_func_end sub_020144C4

	thumb_func_start sub_020144CC
sub_020144CC: ; 0x020144CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _020144E0
	bl sub_02022974
_020144E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020144EA
	bl sub_02022974
_020144EA:
	add r0, r5, #0
	add r0, #0xd8
	strb r4, [r0]
	mov r0, #1
	tst r0, r4
	beq _02014500
	add r0, r5, #0
	add r0, #0x58
	bl sub_020A5D08
	b _02014516
_02014500:
	mov r0, #2
	tst r0, r4
	beq _02014516
	mov r1, #0
	add r2, r5, #0
	add r0, r1, #0
_0201450C:
	add r1, r1, #1
	str r0, [r2, #0x58]
	add r2, r2, #4
	cmp r1, #0x10
	blt _0201450C
_02014516:
	mov r0, #4
	tst r0, r4
	beq _02014526
	add r0, r5, #0
	add r0, #0x98
	bl sub_020A5F18
	b _02014540
_02014526:
	mov r0, #8
	tst r0, r4
	beq _02014540
	mov r2, #0
	add r3, r5, #0
	add r1, r2, #0
_02014532:
	add r0, r3, #0
	add r0, #0x98
	add r2, r2, #1
	add r3, r3, #4
	str r1, [r0, #0]
	cmp r2, #0x10
	blt _02014532
_02014540:
	str r6, [r5, #4]
	cmp r7, #1
	bne _0201454E
	add r0, r5, #0
	bl sub_02014560
	pop {r3, r4, r5, r6, r7, pc}
_0201454E:
	ldr r0, _0201455C ; =sub_020145A0
	add r1, r5, #0
	mov r2, #5
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201455C: .word sub_020145A0
	thumb_func_end sub_020144CC

	thumb_func_start sub_02014560
sub_02014560: ; 0x02014560
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_0209C988
	ldr r0, _0201459C ; =0x021BF610
	str r4, [r0, #0]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0]
	cmp r1, #0
	bne _0201457E
	bl sub_0209C7F4
	b _02014582
_0201457E:
	bl sub_0209C8BC
_02014582:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0]
	cmp r1, #0
	bne _02014590
	bl sub_0209C7E0
	b _02014594
_02014590:
	bl sub_0209C808
_02014594:
	ldr r0, _0201459C ; =0x021BF610
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_0201459C: .word 0x021BF610
	thumb_func_end sub_02014560

	thumb_func_start sub_020145A0
sub_020145A0: ; 0x020145A0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02014560
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020145A0

	thumb_func_start sub_020145B4
sub_020145B4: ; 0x020145B4
	push {r4, lr}
	add r4, r0, #0
	bne _020145BE
	bl sub_02022974
_020145BE:
	ldr r0, _020145F0 ; =0x021BF610
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020145CA
	bl sub_02022974
_020145CA:
	ldr r0, _020145F0 ; =0x021BF610
	mov r1, #0
	ldr r3, [r0, #0]
	add r2, r3, #0
_020145D2:
	ldr r0, [r2, #0x58]
	cmp r0, #0
	bne _020145E0
	lsl r0, r1, #2
	add r0, r3, r0
	str r4, [r0, #0x58]
	pop {r4, pc}
_020145E0:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020145D2
	bl sub_02022974
	pop {r4, pc}
	nop
_020145F0: .word 0x021BF610
	thumb_func_end sub_020145B4

	thumb_func_start sub_020145F4
sub_020145F4: ; 0x020145F4
	push {r4, lr}
	add r4, r0, #0
	bne _020145FE
	bl sub_02022974
_020145FE:
	ldr r0, _02014634 ; =0x021BF610
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201460A
	bl sub_02022974
_0201460A:
	ldr r0, _02014634 ; =0x021BF610
	mov r1, #0
	ldr r3, [r0, #0]
	add r2, r3, #0
_02014612:
	add r0, r2, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02014626
	lsl r0, r1, #2
	add r0, r3, r0
	add r0, #0x98
	str r4, [r0, #0]
	pop {r4, pc}
_02014626:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02014612
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_02014634: .word 0x021BF610
	thumb_func_end sub_020145F4

	thumb_func_start sub_02014638
sub_02014638: ; 0x02014638
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _02014654
	add r0, #0xdb
	ldrb r0, [r0]
	bl sub_02020854
	ldr r0, [r4, #0x20]
	bl sub_020203D4
	bl sub_020203EC
_02014654:
	bl sub_020AF480
	ldr r0, [r4, #0]
	ldr r1, _02014670 ; =0x021C5AD8
	bl sub_0209C5E0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0201466A
	bl sub_020203E0
_0201466A:
	bl sub_020AF480
	pop {r4, pc}
	; .align 2, 0
_02014670: .word 0x021C5AD8
	thumb_func_end sub_02014638

	thumb_func_start sub_02014674
sub_02014674: ; 0x02014674
	ldr r3, _0201467C ; =sub_0209C6A8
	ldr r0, [r0, #0]
	bx r3
	nop
_0201467C: .word sub_0209C6A8
	thumb_func_end sub_02014674

	thumb_func_start sub_02014680
sub_02014680: ; 0x02014680
	mov r0, #0
	ldr r3, _02014698 ; =0x021BF618
	add r2, r0, #0
_02014686:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0201468E
	add r0, r0, #1
_0201468E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _02014686
	bx lr
	; .align 2, 0
_02014698: .word 0x021BF618
	thumb_func_end sub_02014680

	thumb_func_start sub_0201469C
sub_0201469C: ; 0x0201469C
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _020146BC ; =0x021BF618
	add r6, r4, #0
_020146A4:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020146B0
	bl sub_02014638
	add r4, r4, #1
_020146B0:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _020146A4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020146BC: .word 0x021BF618
	thumb_func_end sub_0201469C

	thumb_func_start sub_020146C0
sub_020146C0: ; 0x020146C0
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _020146E0 ; =0x021BF618
	add r6, r4, #0
_020146C8:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020146D4
	bl sub_02014674
	add r4, r4, #1
_020146D4:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _020146C8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020146E0: .word 0x021BF618
	thumb_func_end sub_020146C0

	thumb_func_start sub_020146E4
sub_020146E4: ; 0x020146E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0209C56C
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020146E4

	thumb_func_start sub_020146F4
sub_020146F4: ; 0x020146F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201470C ; =0x021BF610
	str r3, [r0, #4]
	ldr r0, [r4, #0]
	bl sub_0209C4D8
	ldr r1, _0201470C ; =0x021BF610
	mov r2, #0
	str r2, [r1, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_0201470C: .word 0x021BF610
	thumb_func_end sub_020146F4

	thumb_func_start sub_02014710
sub_02014710: ; 0x02014710
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014710

	thumb_func_start sub_02014718
sub_02014718: ; 0x02014718
	ldr r3, _02014720 ; =sub_0209C400
	ldr r0, [r0, #0]
	bx r3
	nop
_02014720: .word sub_0209C400
	thumb_func_end sub_02014718

	thumb_func_start sub_02014724
sub_02014724: ; 0x02014724
	ldr r3, _0201472C ; =sub_0209C444
	ldr r0, [r0, #0]
	bx r3
	nop
_0201472C: .word sub_0209C444
	thumb_func_end sub_02014724

	thumb_func_start sub_02014730
sub_02014730: ; 0x02014730
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02014730

	thumb_func_start sub_02014734
sub_02014734: ; 0x02014734
	add r2, r0, #0
	add r2, #0x40
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02014734

	thumb_func_start sub_02014744
sub_02014744: ; 0x02014744
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r5, #0x20]
	add r0, r4, #0
	bl sub_02020680
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014744

	thumb_func_start sub_02014764
sub_02014764: ; 0x02014764
	ldr r0, _0201476C ; =0x021BF610
	ldr r0, [r0, #4]
	bx lr
	nop
_0201476C: .word 0x021BF610
	thumb_func_end sub_02014764

	thumb_func_start sub_02014770
sub_02014770: ; 0x02014770
	ldr r2, _02014780 ; =0x020E5430
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_02014780: .word 0x020E5430
	thumb_func_end sub_02014770

	thumb_func_start sub_02014784
sub_02014784: ; 0x02014784
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02014784

	thumb_func_start sub_02014788
sub_02014788: ; 0x02014788
	add r0, #0xdb
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014788

	thumb_func_start sub_02014790
sub_02014790: ; 0x02014790
	add r0, #0xdb
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014790

	thumb_func_start sub_02014798
sub_02014798: ; 0x02014798
	add r2, r0, #0
	add r2, #0x50
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x52
	ldrh r2, [r2]
	add r0, #0x54
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end sub_02014798

	thumb_func_start sub_020147B0
sub_020147B0: ; 0x020147B0
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_020147B0

	thumb_func_start sub_020147B8
sub_020147B8: ; 0x020147B8
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0
	bne _020147CA
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020147CA:
	mov r1, #0
	cmp r2, #0
	ble _02014854
	ldr r3, [r0, #0x18]
	ldr r7, _0201485C ; =sub_020A213C
	ldr r0, _02014860 ; =sub_020A2204
_020147D6:
	cmp r3, #0
	beq _0201484C
	cmp r4, #5
	bhi _02014846
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_020147EA: ; jump table
	.short _020147F6 - _020147EA - 2 ; case 0
	.short _02014802 - _020147EA - 2 ; case 1
	.short _0201480E - _020147EA - 2 ; case 2
	.short _0201481C - _020147EA - 2 ; case 3
	.short _0201482A - _020147EA - 2 ; case 4
	.short _02014838 - _020147EA - 2 ; case 5
_020147F6:
	ldr r5, [r3, #0]
	cmp r5, r0
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014802:
	ldr r5, [r3, #0]
	cmp r5, r7
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201480E:
	ldr r6, [r3, #0]
	ldr r5, _02014864 ; =sub_020A20B8
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201481C:
	ldr r6, [r3, #0]
	ldr r5, _02014868 ; =sub_020A1FE0
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201482A:
	ldr r6, [r3, #0]
	ldr r5, _0201486C ; =sub_020A1EC4
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014838:
	ldr r6, [r3, #0]
	ldr r5, _02014870 ; =sub_020A1E30
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014846:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0201484C:
	add r1, r1, #1
	add r3, #8
	cmp r1, r2
	blt _020147D6
_02014854:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0201485C: .word sub_020A213C
_02014860: .word sub_020A2204
_02014864: .word sub_020A20B8
_02014868: .word sub_020A1FE0
_0201486C: .word sub_020A1EC4
_02014870: .word sub_020A1E30
	thumb_func_end sub_020147B8

	thumb_func_start sub_02014874
sub_02014874: ; 0x02014874
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_020147B8
	cmp r0, #0
	beq _0201488E
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
_0201488E:
	pop {r4, pc}
	thumb_func_end sub_02014874

	thumb_func_start sub_02014890
sub_02014890: ; 0x02014890
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	add r2, r0, #0
	beq _020148A6
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_020148A6:
	pop {r4, pc}
	thumb_func_end sub_02014890

	thumb_func_start sub_020148A8
sub_020148A8: ; 0x020148A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	add r2, r0, #0
	bne _020148CE
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_020148CE:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020148A8

	thumb_func_start sub_020148DC
sub_020148DC: ; 0x020148DC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	cmp r0, #0
	beq _020148F0
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_020148F0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020148DC

	thumb_func_start sub_020148F4
sub_020148F4: ; 0x020148F4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	cmp r0, #0
	bne _02014908
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014908:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_020148F4

	thumb_func_start sub_02014910
sub_02014910: ; 0x02014910
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	beq _02014922
	ldrh r1, [r4]
	strh r1, [r0]
_02014922:
	pop {r4, pc}
	thumb_func_end sub_02014910

	thumb_func_start sub_02014924
sub_02014924: ; 0x02014924
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	bne _02014938
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014938:
	ldrh r0, [r0]
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014924

	thumb_func_start sub_02014940
sub_02014940: ; 0x02014940
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	beq _02014952
	ldrh r1, [r4]
	strh r1, [r0, #2]
_02014952:
	pop {r4, pc}
	thumb_func_end sub_02014940

	thumb_func_start sub_02014954
sub_02014954: ; 0x02014954
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	bne _02014968
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014968:
	ldrh r0, [r0, #2]
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014954

	thumb_func_start sub_02014970
sub_02014970: ; 0x02014970
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	add r2, r0, #0
	beq _02014986
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_02014986:
	pop {r4, pc}
	thumb_func_end sub_02014970

	thumb_func_start sub_02014988
sub_02014988: ; 0x02014988
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	add r2, r0, #0
	bne _020149AE
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_020149AE:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014988

	thumb_func_start sub_020149BC
sub_020149BC: ; 0x020149BC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	cmp r0, #0
	beq _020149D0
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_020149D0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020149BC

	thumb_func_start sub_020149D4
sub_020149D4: ; 0x020149D4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	cmp r0, #0
	bne _020149E8
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_020149E8:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_020149D4

	thumb_func_start sub_020149F0
sub_020149F0: ; 0x020149F0
	push {r3, r4, r5, lr}
	mov r1, #8
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02014A12
	ldr r0, _02014A18 ; =0x0001020F
	add r1, r5, #0
	str r0, [r4, #0]
	mov r0, #4
	bl sub_02023790
	ldr r1, _02014A1C ; =0x020E5494
	str r0, [r4, #4]
	bl sub_02023D28
_02014A12:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02014A18: .word 0x0001020F
_02014A1C: .word 0x020E5494
	thumb_func_end sub_020149F0

	thumb_func_start sub_02014A20
sub_02014A20: ; 0x02014A20
	push {r4, lr}
	add r4, r0, #0
	bne _02014A2A
	bl sub_02022974
_02014A2A:
	cmp r4, #0
	beq _02014A3E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02014A38
	bl sub_020237BC
_02014A38:
	add r0, r4, #0
	bl sub_020181C4
_02014A3E:
	pop {r4, pc}
	thumb_func_end sub_02014A20

	thumb_func_start sub_02014A40
sub_02014A40: ; 0x02014A40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02014A4E
	bl sub_02022974
_02014A4E:
	cmp r5, #0
	beq _02014A54
	str r4, [r5, #0]
_02014A54:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014A40

	thumb_func_start sub_02014A58
sub_02014A58: ; 0x02014A58
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r5, r1, #0
	str r0, [sp, #8]
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #0xc]
	ldr r2, [r6, #4]
	add r0, r5, #0
	add r3, r4, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02014A58

	thumb_func_start sub_02014A84
sub_02014A84: ; 0x02014A84
	ldr r1, _02014A98 ; =0x0000FFFF
	mov r2, #0
	strh r1, [r0]
_02014A8A:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02014A8A
	bx lr
	nop
_02014A98: .word 0x0000FFFF
	thumb_func_end sub_02014A84

	thumb_func_start sub_02014A9C
sub_02014A9C: ; 0x02014A9C
	strh r1, [r0]
	mov r2, #0
	ldr r1, _02014AB0 ; =0x0000FFFF
	strh r2, [r0, #2]
_02014AA4:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02014AA4
	bx lr
	; .align 2, 0
_02014AB0: .word 0x0000FFFF
	thumb_func_end sub_02014A9C

	thumb_func_start sub_02014AB4
sub_02014AB4: ; 0x02014AB4
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_02014A9C
	mov r0, #5
	strh r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end sub_02014AB4

	thumb_func_start sub_02014AC4
sub_02014AC4: ; 0x02014AC4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #4
	blo _02014AD2
	bl sub_02022974
_02014AD2:
	cmp r6, #4
	bhs _02014B18
	mov r0, #0xa
	add r4, r6, #0
	mul r4, r0
	ldr r1, _02014B1C ; =0x020E54A2
	add r0, r5, #0
	ldrb r1, [r1, r4]
	bl sub_02014A9C
	ldr r0, _02014B20 ; =0x020E54A3
	mov r1, #0
	ldrb r0, [r0, r4]
	mvn r1, r1
	strh r0, [r5, #2]
	ldr r0, _02014B24 ; =0x020E54A4
	ldrsh r0, [r0, r4]
	cmp r0, r1
	beq _02014B02
	ldr r1, _02014B28 ; =0x020E54A6
	ldrh r1, [r1, r4]
	bl sub_02014DFC
	strh r0, [r5, #4]
_02014B02:
	ldr r0, _02014B2C ; =0x020E54A8
	mov r1, #0
	ldrsh r0, [r0, r4]
	mvn r1, r1
	cmp r0, r1
	beq _02014B18
	ldr r1, _02014B30 ; =0x020E54AA
	ldrh r1, [r1, r4]
	bl sub_02014DFC
	strh r0, [r5, #6]
_02014B18:
	pop {r4, r5, r6, pc}
	nop
_02014B1C: .word 0x020E54A2
_02014B20: .word 0x020E54A3
_02014B24: .word 0x020E54A4
_02014B28: .word 0x020E54A6
_02014B2C: .word 0x020E54A8
_02014B30: .word 0x020E54AA
	thumb_func_end sub_02014AC4

	thumb_func_start sub_02014B34
sub_02014B34: ; 0x02014B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl sub_0200B358
	ldr r5, [sp]
	ldr r7, _02014B98 ; =0x0000FFFF
	add r6, r0, #0
	mov r4, #0
_02014B4A:
	ldrh r2, [r5, #4]
	cmp r2, r7
	beq _02014B60
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BE48
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #2
	blt _02014B4A
_02014B60:
	ldr r2, [sp]
	mov r0, #1
	ldrh r2, [r2]
	mov r1, #0x1a
	lsl r3, r2, #1
	ldr r2, _02014B9C ; =0x020E5498
	ldrh r2, [r2, r3]
	ldr r3, [sp, #4]
	bl sub_0200B144
	add r5, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200B29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02014B98: .word 0x0000FFFF
_02014B9C: .word 0x020E5498
	thumb_func_end sub_02014B34

	thumb_func_start sub_02014BA0
sub_02014BA0: ; 0x02014BA0
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	ldrh r1, [r4]
	mov r0, #0x1a
	lsl r2, r1, #1
	ldr r1, _02014BB8 ; =0x020E5498
	ldrh r1, [r1, r2]
	ldrh r2, [r4, #2]
	bl sub_0200B010
	pop {r4, pc}
	; .align 2, 0
_02014BB8: .word 0x020E5498
	thumb_func_end sub_02014BA0

	thumb_func_start sub_02014BBC
sub_02014BBC: ; 0x02014BBC
	ldrh r1, [r0]
	ldr r0, _02014BCC ; =0x0000FFFF
	cmp r1, r0
	beq _02014BC8
	mov r0, #1
	bx lr
_02014BC8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02014BCC: .word 0x0000FFFF
	thumb_func_end sub_02014BBC

	thumb_func_start sub_02014BD0
sub_02014BD0: ; 0x02014BD0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02014C00
	mov r3, #0
	cmp r0, #0
	bls _02014BF6
	ldr r1, _02014BFC ; =0x0000FFFF
_02014BE4:
	ldrh r2, [r4, #4]
	cmp r2, r1
	bne _02014BEE
	mov r0, #0
	pop {r4, pc}
_02014BEE:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _02014BE4
_02014BF6:
	mov r0, #1
	pop {r4, pc}
	nop
_02014BFC: .word 0x0000FFFF
	thumb_func_end sub_02014BD0

	thumb_func_start sub_02014C00
sub_02014C00: ; 0x02014C00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #5
	blo _02014C0E
	bl sub_02022974
_02014C0E:
	add r0, r5, #0
	bl sub_02014CD4
	cmp r4, r0
	blo _02014C1C
	bl sub_02022974
_02014C1C:
	ldr r1, _02014C70 ; =0x020E5498
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r0, #0x1a
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B010
	str r0, [sp]
	bl sub_02023E2C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _02014C74 ; =0x0000FFFF
	mov r5, #0
	cmp r1, r0
	beq _02014C64
	add r7, r0, #0
	sub r6, r0, #1
_02014C42:
	cmp r1, r6
	bne _02014C5C
	add r0, r4, #0
	bl sub_0201D108
	cmp r0, #0
	beq _02014C52
	add r5, r5, #1
_02014C52:
	add r0, r4, #0
	bl sub_0201D0C8
	add r4, r0, #0
	b _02014C5E
_02014C5C:
	add r4, r4, #2
_02014C5E:
	ldrh r1, [r4]
	cmp r1, r7
	bne _02014C42
_02014C64:
	ldr r0, [sp]
	bl sub_020237BC
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014C70: .word 0x020E5498
_02014C74: .word 0x0000FFFF
	thumb_func_end sub_02014C00

	thumb_func_start sub_02014C78
sub_02014C78: ; 0x02014C78
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_02014C78

	thumb_func_start sub_02014C80
sub_02014C80: ; 0x02014C80
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_02014C80

	thumb_func_start sub_02014C84
sub_02014C84: ; 0x02014C84
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_02014C84

	thumb_func_start sub_02014C88
sub_02014C88: ; 0x02014C88
	push {r3, r4}
	ldrh r3, [r0]
	ldrh r2, [r1]
	cmp r3, r2
	bne _02014C9A
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	beq _02014CA0
_02014C9A:
	mov r0, #0
	pop {r3, r4}
	bx lr
_02014CA0:
	mov r4, #0
_02014CA2:
	ldrh r3, [r0, #4]
	ldrh r2, [r1, #4]
	cmp r3, r2
	beq _02014CB0
	mov r0, #0
	pop {r3, r4}
	bx lr
_02014CB0:
	add r4, r4, #1
	add r1, r1, #2
	add r0, r0, #2
	cmp r4, #2
	blt _02014CA2
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02014C88

	thumb_func_start sub_02014CC0
sub_02014CC0: ; 0x02014CC0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014CC0

	thumb_func_start sub_02014CD4
sub_02014CD4: ; 0x02014CD4
	cmp r0, #5
	bhs _02014CDC
	mov r0, #0x14
	bx lr
_02014CDC:
	mov r0, #0
	bx lr
	thumb_func_end sub_02014CD4

	thumb_func_start sub_02014CE0
sub_02014CE0: ; 0x02014CE0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #5
	blo _02014CF0
	bl sub_02022974
_02014CF0:
	strh r4, [r5]
	strh r6, [r5, #2]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02014CE0

	thumb_func_start sub_02014CF8
sub_02014CF8: ; 0x02014CF8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02014D08
	bl sub_02022974
_02014D08:
	lsl r0, r4, #1
	add r0, r5, r0
	strh r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02014CF8

	thumb_func_start sub_02014D10
sub_02014D10: ; 0x02014D10
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02014C00
	cmp r0, #2
	bhs _02014D30
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _02014D34 ; =0x0000FFFF
_02014D26:
	add r0, r0, #1
	strh r1, [r2, #4]
	add r2, r2, #2
	cmp r0, #2
	blo _02014D26
_02014D30:
	pop {r4, pc}
	nop
_02014D34: .word 0x0000FFFF
	thumb_func_end sub_02014D10

	thumb_func_start sub_02014D38
sub_02014D38: ; 0x02014D38
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x30
	add r6, r0, #0
	bl sub_02018144
	ldr r4, _02014D6C ; =0x020E550C
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02014D4A:
	ldr r0, [sp]
	mov r1, #0x1a
	str r6, [r0, #0]
	ldrh r2, [r4]
	mov r0, #1
	add r3, r6, #0
	bl sub_0200B144
	str r0, [r5, #4]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #0xb
	blt _02014D4A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014D6C: .word 0x020E550C
	thumb_func_end sub_02014D38

	thumb_func_start sub_02014D70
sub_02014D70: ; 0x02014D70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02014D78:
	ldr r0, [r5, #4]
	bl sub_0200B190
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _02014D78
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02014D70

	thumb_func_start sub_02014D90
sub_02014D90: ; 0x02014D90
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0200B1B8
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014D90

	thumb_func_start sub_02014DB8
sub_02014DB8: ; 0x02014DB8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _02014DF4 ; =0x0000FFFF
	cmp r0, r1
	beq _02014DE8
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02014E4C
	ldr r0, [sp, #8]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _02014DF8 ; =0x020E550C
	ldrh r0, [r0, r1]
	str r0, [sp, #8]
	str r4, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r0, #0x1a
	bl sub_0200AF20
	add sp, #0xc
	pop {r3, r4, pc}
_02014DE8:
	add r0, r4, #0
	bl sub_020237E8
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02014DF4: .word 0x0000FFFF
_02014DF8: .word 0x020E550C
	thumb_func_end sub_02014DB8

	thumb_func_start sub_02014DFC
sub_02014DFC: ; 0x02014DFC
	push {r4, r5}
	ldr r4, _02014E40 ; =0x020E550C
	mov r2, #0
_02014E02:
	ldrh r3, [r4]
	cmp r0, r3
	bne _02014E30
	mov r4, #0
	add r3, r4, #0
	cmp r2, #0
	bls _02014E26
	ldr r0, _02014E44 ; =0x020E5522
_02014E12:
	lsl r5, r4, #1
	ldrh r5, [r0, r5]
	add r4, r4, #1
	lsl r4, r4, #0x10
	add r3, r3, r5
	lsl r3, r3, #0x10
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r2
	blo _02014E12
_02014E26:
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
_02014E30:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xb
	blo _02014E02
	ldr r0, _02014E48 ; =0x0000FFFF
	pop {r4, r5}
	bx lr
	nop
_02014E40: .word 0x020E550C
_02014E44: .word 0x020E5522
_02014E48: .word 0x0000FFFF
	thumb_func_end sub_02014DFC

	thumb_func_start sub_02014E4C
sub_02014E4C: ; 0x02014E4C
	push {r3, r4, r5, r6}
	ldr r3, _02014E84 ; =0x00000FFF
	ldr r6, _02014E88 ; =0x020E5522
	and r3, r0
	mov r0, #0
	add r5, r0, #0
_02014E58:
	ldrh r4, [r6]
	add r0, r0, r4
	cmp r3, r0
	bhs _02014E74
	str r5, [r1, #0]
	ldr r1, _02014E88 ; =0x020E5522
	lsl r4, r5, #1
	ldrh r1, [r1, r4]
	sub r0, r0, r1
	sub r0, r3, r0
	str r0, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02014E74:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #0xb
	blo _02014E58
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02014E84: .word 0x00000FFF
_02014E88: .word 0x020E5522
	thumb_func_end sub_02014E4C

	thumb_func_start sub_02014E8C
sub_02014E8C: ; 0x02014E8C
	mov r0, #8
	bx lr
	thumb_func_end sub_02014E8C

	thumb_func_start sub_02014E90
sub_02014E90: ; 0x02014E90
	push {r3, lr}
	mov r2, #0
	str r2, [r0, #0]
	ldr r3, _02014EBC ; =0x020E5500
	str r2, [r0, #4]
_02014E9A:
	ldrb r1, [r3]
	cmp r1, #2
	bne _02014EAC
	ldr r1, _02014EC0 ; =0x020E5501
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	bl sub_02014F98
	b _02014EB4
_02014EAC:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02014E9A
_02014EB4:
	mov r0, #0x22
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_02014EBC: .word 0x020E5500
_02014EC0: .word 0x020E5501
	thumb_func_end sub_02014E90

	thumb_func_start sub_02014EC4
sub_02014EC4: ; 0x02014EC4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x22
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x22
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_02014EC4

	thumb_func_start sub_02014ED8
sub_02014ED8: ; 0x02014ED8
	ldr r0, [r0, #4]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02014ED8

	thumb_func_start sub_02014EE4
sub_02014EE4: ; 0x02014EE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0
	ldr r3, [r4, #4]
	add r5, r2, #0
	mov r0, #1
_02014EF0:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02014EFA
	add r5, r5, #1
_02014EFA:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02014EF0
	cmp r5, #0
	beq _02014F3C
	bl sub_0201D2E8
	add r1, r5, #0
	bl sub_020E2178
	ldr r3, [r4, #4]
	mov r5, #0
	mov r0, #1
_02014F14:
	add r2, r3, #0
	lsr r2, r5
	tst r2, r0
	bne _02014F36
	cmp r1, #0
	bne _02014F34
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r5
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x22
	bl sub_02025C84
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02014F34:
	sub r1, r1, #1
_02014F36:
	add r5, r5, #1
	cmp r5, #0x20
	blo _02014F14
_02014F3C:
	mov r0, #0x22
	bl sub_02025C84
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014EE4

	thumb_func_start sub_02014F48
sub_02014F48: ; 0x02014F48
	ldr r3, [r0, #4]
	mov r2, #0
	mov r0, #1
_02014F4E:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02014F5A
	mov r0, #0
	bx lr
_02014F5A:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02014F4E
	mov r0, #1
	bx lr
	thumb_func_end sub_02014F48

	thumb_func_start sub_02014F64
sub_02014F64: ; 0x02014F64
	push {r3, r4}
	mov r3, #0
	ldr r4, _02014F88 ; =0x020E5522
	add r2, r3, #0
_02014F6C:
	ldrh r1, [r4]
	add r2, r2, #1
	add r4, r4, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #9
	blt _02014F6C
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_02014F88: .word 0x020E5522
	thumb_func_end sub_02014F64

	thumb_func_start sub_02014F8C
sub_02014F8C: ; 0x02014F8C
	ldr r0, [r0, #0]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02014F8C

	thumb_func_start sub_02014F98
sub_02014F98: ; 0x02014F98
	mov r2, #1
	ldr r3, [r0, #0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0, #0]
	ldr r3, _02014FAC ; =sub_02025C84
	mov r0, #0x22
	bx r3
	nop
_02014FAC: .word sub_02025C84
	thumb_func_end sub_02014F98

	thumb_func_start sub_02014FB0
sub_02014FB0: ; 0x02014FB0
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #8
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbf
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02007068
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	lsr r0, r0, #2
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014FB0

	thumb_func_start sub_02014FF0
sub_02014FF0: ; 0x02014FF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014FF0

	thumb_func_start sub_02015004
sub_02015004: ; 0x02015004
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02015004

	thumb_func_start sub_02015008
sub_02015008: ; 0x02015008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015016
	bl sub_02022974
_02015016:
	ldr r0, [r5, #0]
	cmp r0, r4
	bhi _02015020
	ldr r0, _0201502C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02015020:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201502C: .word 0x0000FFFF
	thumb_func_end sub_02015008

	thumb_func_start sub_02015030
sub_02015030: ; 0x02015030
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0201503E
	bl sub_02022974
_0201503E:
	ldr r3, [r5, #0]
	mov r1, #0
	cmp r3, #0
	bls _0201505C
	ldr r2, [r5, #4]
_02015048:
	ldr r0, [r2, #0]
	cmp r4, r0
	bne _02015054
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02015054:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r3
	blo _02015048
_0201505C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015030

	thumb_func_start sub_02015064
sub_02015064: ; 0x02015064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _02015078
	bl sub_02022974
_02015078:
	ldr r0, [r5, #0]
	ldr r1, [r5, #0xc]
	bl sub_020152F8
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	bl sub_02015328
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02015358
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015064

	thumb_func_start sub_020150A8
sub_020150A8: ; 0x020150A8
	push {r4, lr}
	add r4, r0, #0
	bne _020150B2
	bl sub_02022974
_020150B2:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020150BC
	bl sub_02022974
_020150BC:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020150C6
	bl sub_02022974
_020150C6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020150D0
	bl sub_02022974
_020150D0:
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020150A8

	thumb_func_start sub_020150EC
sub_020150EC: ; 0x020150EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02015120 ; =0x04000444
	mov r6, #0
	str r6, [r0, #0]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02015116
	add r4, r6, #0
_020150FE:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0201510C
	bl sub_02015468
_0201510C:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x40
	cmp r6, r0
	blt _020150FE
_02015116:
	ldr r0, _02015124 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	nop
_02015120: .word 0x04000444
_02015124: .word 0x04000448
	thumb_func_end sub_020150EC

	thumb_func_start sub_02015128
sub_02015128: ; 0x02015128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020153B4
	add r4, r0, #0
	bne _0201513A
	bl sub_02022974
_0201513A:
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02015146
	bl sub_02022974
_02015146:
	ldr r0, [r5, #4]
	bl sub_0201540C
	str r0, [r4, #0]
	cmp r0, #0
	bne _02015156
	bl sub_02022974
_02015156:
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	add r2, r4, #4
	bl sub_02015434
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015128

	thumb_func_start sub_02015164
sub_02015164: ; 0x02015164
	push {r4, lr}
	ldr r1, _02015178 ; =0x02100DF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	blx r1
	add r0, r4, #0
	bl sub_020152E0
	pop {r4, pc}
	; .align 2, 0
_02015178: .word 0x02100DF0
	thumb_func_end sub_02015164

	thumb_func_start sub_0201517C
sub_0201517C: ; 0x0201517C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _020151A2
	add r4, r6, #0
_0201518A:
	ldr r1, [r5, #8]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015198
	add r0, r1, r4
	bl sub_02015164
_02015198:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _0201518A
_020151A2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201517C

	thumb_func_start sub_020151A4
sub_020151A4: ; 0x020151A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020153E0
	add r4, r0, #0
	bne _020151B6
	bl sub_02022974
_020151B6:
	ldr r0, [r5, #8]
	bl sub_02015420
	str r0, [r4, #0]
	cmp r0, #0
	bne _020151C6
	bl sub_02022974
_020151C6:
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	add r2, r4, #4
	bl sub_02015444
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020151A4

	thumb_func_start sub_020151D4
sub_020151D4: ; 0x020151D4
	push {r4, lr}
	ldr r1, _020151E8 ; =0x02100DF8
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	blx r1
	add r0, r4, #0
	bl sub_020152EC
	pop {r4, pc}
	; .align 2, 0
_020151E8: .word 0x02100DF8
	thumb_func_end sub_020151D4

	thumb_func_start sub_020151EC
sub_020151EC: ; 0x020151EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02015212
	add r4, r6, #0
_020151FA:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015208
	add r0, r1, r4
	bl sub_020151D4
_02015208:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blt _020151FA
_02015212:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020151EC

	thumb_func_start sub_02015214
sub_02015214: ; 0x02015214
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02015388
	add r4, r0, #0
	bne _02015226
	bl sub_02022974
_02015226:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020155A8
	mov r0, #1
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015214

	thumb_func_start sub_02015238
sub_02015238: ; 0x02015238
	ldr r3, _0201523C ; =sub_020152C0
	bx r3
	; .align 2, 0
_0201523C: .word sub_020152C0
	thumb_func_end sub_02015238

	thumb_func_start sub_02015240
sub_02015240: ; 0x02015240
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0201524E
	bl sub_02022974
_0201524E:
	str r4, [r5, #0x20]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015240

	thumb_func_start sub_02015254
sub_02015254: ; 0x02015254
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015254

	thumb_func_start sub_0201525C
sub_0201525C: ; 0x0201525C
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201525C

	thumb_func_start sub_02015268
sub_02015268: ; 0x02015268
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015268

	thumb_func_start sub_02015270
sub_02015270: ; 0x02015270
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015270

	thumb_func_start sub_02015278
sub_02015278: ; 0x02015278
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015278

	thumb_func_start sub_02015280
sub_02015280: ; 0x02015280
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015280

	thumb_func_start sub_0201528C
sub_0201528C: ; 0x0201528C
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0201528C

	thumb_func_start sub_02015290
sub_02015290: ; 0x02015290
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015290

	thumb_func_start sub_02015294
sub_02015294: ; 0x02015294
	add r0, #0x3e
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015294

	thumb_func_start sub_0201529C
sub_0201529C: ; 0x0201529C
	strh r1, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0201529C

	thumb_func_start sub_020152A0
sub_020152A0: ; 0x020152A0
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_020152A0

	thumb_func_start sub_020152A4
sub_020152A4: ; 0x020152A4
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_020152A4

	thumb_func_start sub_020152A8
sub_020152A8: ; 0x020152A8
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_020152A8

	thumb_func_start sub_020152AC
sub_020152AC: ; 0x020152AC
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_020152AC

	thumb_func_start sub_020152B0
sub_020152B0: ; 0x020152B0
	cmp r1, #0
	bne _020152B8
	str r2, [r0, #0x34]
	bx lr
_020152B8:
	str r2, [r0, #0x38]
	bx lr
	thumb_func_end sub_020152B0

	thumb_func_start sub_020152BC
sub_020152BC: ; 0x020152BC
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_020152BC

	thumb_func_start sub_020152C0
sub_020152C0: ; 0x020152C0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x3e
	strb r1, [r0]
	ldr r0, _020152DC ; =0x00007FFF
	strh r0, [r4, #0x3c]
	pop {r4, pc}
	nop
_020152DC: .word 0x00007FFF
	thumb_func_end sub_020152C0

	thumb_func_start sub_020152E0
sub_020152E0: ; 0x020152E0
	ldr r3, _020152E8 ; =sub_020A818C
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	; .align 2, 0
_020152E8: .word sub_020A818C
	thumb_func_end sub_020152E0

	thumb_func_start sub_020152EC
sub_020152EC: ; 0x020152EC
	ldr r3, _020152F4 ; =sub_020A81D0
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	; .align 2, 0
_020152F4: .word sub_020A81D0
	thumb_func_end sub_020152EC

	thumb_func_start sub_020152F8
sub_020152F8: ; 0x020152F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	lsl r1, r6, #6
	bl sub_02018144
	add r7, r0, #0
	bne _0201530C
	bl sub_02022974
_0201530C:
	mov r4, #0
	cmp r6, #0
	ble _02015322
	add r5, r7, #0
_02015314:
	add r0, r5, #0
	bl sub_020152C0
	add r4, r4, #1
	add r5, #0x40
	cmp r4, r6
	blt _02015314
_02015322:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020152F8

	thumb_func_start sub_02015328
sub_02015328: ; 0x02015328
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x28
	mul r1, r6
	bl sub_02018144
	add r7, r0, #0
	bne _0201533E
	bl sub_02022974
_0201533E:
	mov r4, #0
	cmp r6, #0
	ble _02015354
	add r5, r7, #0
_02015346:
	add r0, r5, #0
	bl sub_020152E0
	add r4, r4, #1
	add r5, #0x28
	cmp r4, r6
	blt _02015346
_02015354:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015328

	thumb_func_start sub_02015358
sub_02015358: ; 0x02015358
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	mul r1, r6
	bl sub_02018144
	add r7, r0, #0
	bne _0201536E
	bl sub_02022974
_0201536E:
	mov r4, #0
	cmp r6, #0
	ble _02015384
	add r5, r7, #0
_02015376:
	add r0, r5, #0
	bl sub_020152EC
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _02015376
_02015384:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015358

	thumb_func_start sub_02015388
sub_02015388: ; 0x02015388
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _020153AC
	ldr r3, [r0, #0]
	add r2, r3, #0
_02015396:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _020153A4
	lsl r0, r1, #6
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153A4:
	add r1, r1, #1
	add r2, #0x40
	cmp r1, r4
	blt _02015396
_020153AC:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015388

	thumb_func_start sub_020153B4
sub_020153B4: ; 0x020153B4
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _020153DA
	ldr r3, [r0, #8]
	add r2, r3, #0
_020153C2:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020153D2
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153D2:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, r4
	blt _020153C2
_020153DA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020153B4

	thumb_func_start sub_020153E0
sub_020153E0: ; 0x020153E0
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02015406
	ldr r3, [r0, #0x10]
	add r2, r3, #0
_020153EE:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020153FE
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153FE:
	add r1, r1, #1
	add r2, #0x18
	cmp r1, r4
	blt _020153EE
_02015406:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020153E0

	thumb_func_start sub_0201540C
sub_0201540C: ; 0x0201540C
	push {r3, lr}
	ldr r3, _0201541C ; =0x02100DEC
	mov r1, #0
	ldr r0, [r0, #0x10]
	ldr r3, [r3, #0]
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	; .align 2, 0
_0201541C: .word 0x02100DEC
	thumb_func_end sub_0201540C

	thumb_func_start sub_02015420
sub_02015420: ; 0x02015420
	push {r3, lr}
	ldr r3, _02015430 ; =0x02100DF4
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #5
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	; .align 2, 0
_02015430: .word 0x02100DF4
	thumb_func_end sub_02015420

	thumb_func_start sub_02015434
sub_02015434: ; 0x02015434
	push {r3, lr}
	lsl r1, r1, #0x10
	add r3, r2, #0
	lsr r1, r1, #0xd
	mov r2, #0
	bl sub_020A8450
	pop {r3, pc}
	thumb_func_end sub_02015434

	thumb_func_start sub_02015444
sub_02015444: ; 0x02015444
	push {r3, r4, r5, lr}
	add r3, r2, #0
	ldr r2, _02015464 ; =0xFFFF0000
	add r5, r0, #0
	and r2, r1
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r4, [r5, #8]
	lsl r2, r2, #3
	str r2, [r5, #8]
	lsr r1, r1, #0xd
	mov r2, #0
	bl sub_020A8850
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02015464: .word 0xFFFF0000
	thumb_func_end sub_02015444

	thumb_func_start sub_02015468
sub_02015468: ; 0x02015468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r7, _02015588 ; =0x04000444
	mov r6, #0
	add r5, r0, #0
	str r6, [r7, #0]
	ldrh r1, [r5, #0x3c]
	ldr r0, _0201558C ; =0x7FFF8000
	orr r0, r1
	str r0, [r7, #0x7c]
	add r0, r7, #0
	ldr r1, _02015590 ; =0x00004210
	add r0, #0x80
	str r1, [r0, #0]
	ldr r3, [r5, #0x24]
	ldr r4, [r3, #8]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #4]
	ldr r0, [r3, #0]
	lsl r3, r2, #0x1d
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [r5, #0x28]
	lsl r4, r4, #0x1a
	lsr r0, r0, #3
	orr r4, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r7, #0x64]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _020154B4
	mov r6, #1
_020154B4:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #4
	sub r0, r0, r6
	lsr r1, r0
	ldr r2, _02015594 ; =0x040004AC
	add r0, r5, #0
	str r1, [r2, #0]
	add r0, #0x3e
	ldrb r0, [r0]
	sub r2, #8
	lsl r1, r0, #0x10
	mov r0, #0xc0
	orr r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020154E6
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x14]
	b _020154EE
_020154E6:
	mov r0, #8
	ldrsh r7, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
_020154EE:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _020154FC
	mov r0, #0xa
	ldrsh r6, [r5, r0]
	mov r4, #0
	b _02015502
_020154FC:
	mov r0, #0xa
	ldrsh r4, [r5, r0]
	mov r6, #0
_02015502:
	ldr r0, [r5, #0x14]
	mov r1, #6
	lsl r2, r0, #0xc
	mov r0, #2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r0, r0, r3
	ldr r3, _02015598 ; =0x04000470
	lsl r0, r0, #0xc
	str r0, [r3, #0]
	str r1, [r3, #0]
	str r2, [r3, #0]
	ldr r0, [r5, #0x18]
	ldr r1, _0201559C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl sub_020C0078
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, _020155A0 ; =0x0400046C
	mov r3, #8
	str r0, [r1, #0]
	str r2, [r1, #0]
	lsr r0, r1, #0xe
	str r0, [r1, #0]
	mov r2, #4
	mov r0, #6
	ldrsh r2, [r5, r2]
	ldrsh r0, [r5, r0]
	neg r2, r2
	neg r0, r0
	lsl r2, r2, #0xc
	lsl r0, r0, #0xc
	str r2, [r1, #4]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #4]
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r2, r0, #0
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrsh r3, [r5, r3]
	add r1, r0, #0
	bl sub_020A7488
	ldr r0, _020155A4 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015588: .word 0x04000444
_0201558C: .word 0x7FFF8000
_02015590: .word 0x00004210
_02015594: .word 0x040004AC
_02015598: .word 0x04000470
_0201559C: .word 0x020F983C
_020155A0: .word 0x0400046C
_020155A4: .word 0x04000448
	thumb_func_end sub_02015468

	thumb_func_start sub_020155A8
sub_020155A8: ; 0x020155A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r7, r0, #0
	ldr r2, [r1, #0x10]
	mov r6, #8
	mov r0, #0
	cmp r2, #0
	ble _020155C6
_020155BA:
	ldr r2, [r5, #4]
	add r0, r0, #1
	ldr r2, [r2, #0x10]
	lsl r6, r6, #1
	cmp r0, r2
	blt _020155BA
_020155C6:
	ldr r1, [r1, #0x14]
	mov r4, #8
	mov r0, #0
	cmp r1, #0
	ble _020155DC
_020155D0:
	ldr r1, [r5, #4]
	add r0, r0, #1
	ldr r1, [r1, #0x14]
	lsl r4, r4, #1
	cmp r0, r1
	blt _020155D0
_020155DC:
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r7, #0
	bl sub_02015254
	lsr r1, r6, #0x1f
	lsr r2, r4, #0x1f
	add r1, r6, r1
	add r2, r4, r2
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015268
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02015278
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl sub_0201528C
	ldr r1, [r5, #0x14]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02015294
	ldr r1, [r5, #4]
	add r0, r7, #0
	add r1, #0x10
	bl sub_020152A0
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, r0, #4
	bl sub_020A81B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020152A4
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #4
	bl sub_020A81FC
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020152A8
	ldrh r1, [r5, #0x1c]
	add r0, r7, #0
	bl sub_020152AC
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_020152B0
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_020152B0
	ldrh r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_020152BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020155A8

	thumb_func_start sub_0201567C
sub_0201567C: ; 0x0201567C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _02015724 ; =sub_0201576C
	mov r1, #0x50
	mov r2, #0
	bl sub_0200679C
	str r0, [sp, #4]
	bl sub_0201CED0
	add r4, r0, #0
	cmp r5, #0
	beq _020156C0
	cmp r6, #0
	bne _020156B0
	add r0, r5, #0
	mov r1, #0
	bl sub_02003164
	str r0, [sp]
	ldr r0, _02015728 ; =sub_02015870
	str r0, [r4, #4]
	b _020156DA
_020156B0:
	add r0, r5, #0
	mov r1, #1
	bl sub_02003164
	str r0, [sp]
	ldr r0, _0201572C ; =sub_0201588C
	str r0, [r4, #4]
	b _020156DA
_020156C0:
	cmp r6, #0
	bne _020156D0
	bl sub_020241F0
	str r0, [sp]
	ldr r0, _02015730 ; =sub_02015840
	str r0, [r4, #4]
	b _020156DA
_020156D0:
	bl sub_02024200
	str r0, [sp]
	ldr r0, _02015734 ; =sub_02015858
	str r0, [r4, #4]
_020156DA:
	ldr r1, [sp]
	lsl r0, r7, #5
	str r0, [sp, #8]
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0xc
	mov r2, #0x20
	bl sub_020C4B18
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0x2c
	bl sub_020C4B18
	ldr r0, [sp, #4]
	mov r1, #1
	str r0, [r4, #0]
	add r0, r4, #0
	str r5, [r4, #8]
	add r0, #0x4c
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x4d
	strb r7, [r0]
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02015724: .word sub_0201576C
_02015728: .word sub_02015870
_0201572C: .word sub_0201588C
_02015730: .word sub_02015840
_02015734: .word sub_02015858
	thumb_func_end sub_0201567C

	thumb_func_start sub_02015738
sub_02015738: ; 0x02015738
	cmp r1, #0
	beq _02015746
	cmp r1, #1
	beq _0201574E
	cmp r1, #2
	beq _02015756
	bx lr
_02015746:
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_0201574E:
	mov r1, #2
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_02015756:
	mov r1, #3
	add r0, #0x4e
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015738

	thumb_func_start sub_02015760
sub_02015760: ; 0x02015760
	ldr r3, _02015768 ; =sub_020067D0
	ldr r0, [r0, #0]
	bx r3
	nop
_02015768: .word sub_020067D0
	thumb_func_end sub_02015760

	thumb_func_start sub_0201576C
sub_0201576C: ; 0x0201576C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _020157E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015788: ; jump table
	.short _02015790 - _02015788 - 2 ; case 0
	.short _020157A0 - _02015788 - 2 ; case 1
	.short _020157E2 - _02015788 - 2 ; case 2
	.short _020157D4 - _02015788 - 2 ; case 3
_02015790:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	mov r0, #1
	add r4, #0x4e
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_020157A0:
	add r0, r4, #0
	bl sub_020157E4
	cmp r0, #1
	bne _020157B4
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0x2c
	blx r2
_020157B4:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _020157E2
	mov r0, #0
	add r4, #0x4f
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_020157D4:
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0xc
	blx r2
	add r0, r5, #0
	bl sub_020067D0
_020157E2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201576C

	thumb_func_start sub_020157E4
sub_020157E4: ; 0x020157E4
	push {r4, r5}
	add r1, r0, #0
	add r1, #0x4f
	ldrb r1, [r1]
	cmp r1, #0
	bne _02015812
	mov r1, #0x1e
	mov r4, #0
	mov r3, #1
	lsl r1, r1, #0xa
_020157F8:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _02015804
	ldrh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
_02015804:
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #0x10
	blo _020157F8
	mov r0, #1
	pop {r4, r5}
	bx lr
_02015812:
	cmp r1, #0x18
	bne _0201583A
	mov r1, #0x1e
	mov r5, #0
	add r4, r0, #0
	mov r3, #1
	lsl r1, r1, #0xa
_02015820:
	add r2, r3, #0
	lsl r2, r5
	tst r2, r1
	beq _0201582C
	ldrh r2, [r0, #0x2a]
	strh r2, [r4, #0x2c]
_0201582C:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x10
	blo _02015820
	mov r0, #1
	pop {r4, r5}
	bx lr
_0201583A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_020157E4

	thumb_func_start sub_02015840
sub_02015840: ; 0x02015840
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #0
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015840

	thumb_func_start sub_02015858
sub_02015858: ; 0x02015858
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #4
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015858

	thumb_func_start sub_02015870
sub_02015870: ; 0x02015870
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #0
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_02002FBC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015870

	thumb_func_start sub_0201588C
sub_0201588C: ; 0x0201588C
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #1
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_02002FBC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201588C

	thumb_func_start sub_020158A8
sub_020158A8: ; 0x020158A8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x78
	add r7, r0, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x78
	add r6, r0, #0
	bl sub_020C4CF4
	ldr r2, _020158F0 ; =0x000001D1
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r6, #0]
	mov r4, #0
	add r5, r6, #0
_020158CE:
	mov r0, #0x16
	add r1, r7, #0
	bl sub_02023790
	str r0, [r5, #4]
	ldr r0, [r6, #0]
	ldr r2, [r5, #4]
	add r1, r4, #0
	bl sub_0200B1B8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1d
	blt _020158CE
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020158F0: .word 0x000001D1
	thumb_func_end sub_020158A8

	thumb_func_start sub_020158F4
sub_020158F4: ; 0x020158F4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0x1c
	add r5, #0x70
_020158FE:
	ldr r0, [r5, #4]
	bl sub_020237BC
	sub r5, r5, #4
	sub r4, r4, #1
	bpl _020158FE
	ldr r0, [r6, #0]
	bl sub_0200B190
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020158F4

	thumb_func_start sub_02015918
sub_02015918: ; 0x02015918
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02015918

	thumb_func_start sub_02015920
sub_02015920: ; 0x02015920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9c
	bl sub_02018144
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02015A80
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015920

	thumb_func_start sub_02015938
sub_02015938: ; 0x02015938
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0201594E
	bl sub_02015A54
_0201594E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02015938

	thumb_func_start sub_02015958
sub_02015958: ; 0x02015958
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	str r2, [r5, #0x7c]
	add r2, r5, #0
	ldr r3, [r4, #4]
	add r2, #0x80
	str r3, [r2, #0]
	add r2, r5, #0
	ldrb r3, [r4, #0x10]
	add r2, #0x98
	strb r3, [r2]
	add r2, r5, #0
	ldrb r3, [r4, #0x11]
	add r2, #0x99
	strb r3, [r2]
	bl sub_02015AC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015AE4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015B14
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015BA4
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r1, r0
	add r0, r5, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015958

	thumb_func_start sub_020159C0
sub_020159C0: ; 0x020159C0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x9b
	ldrb r2, [r1]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r4, #0
	add r1, #0x9b
	strb r2, [r1]
	bl sub_020159FC
	cmp r0, #0
	bne _020159FA
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bne _020159FA
	add r4, #0x9a
	ldrb r0, [r4]
	cmp r0, #0
	bne _020159F8
	mov r0, #3
	pop {r4, pc}
_020159F8:
	mov r0, #4
_020159FA:
	pop {r4, pc}
	thumb_func_end sub_020159C0

	thumb_func_start sub_020159FC
sub_020159FC: ; 0x020159FC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02015A10
	bl sub_02022974
_02015A10:
	add r0, r4, #0
	add r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #3
	bne _02015A20
	ldr r0, [r4, #0]
	bl sub_0202404C
_02015A20:
	add r1, r4, #0
	add r1, #0x9a
	ldrb r2, [r1]
	mov r0, #0
	cmp r2, #3
	beq _02015A3A
	add r1, r4, #0
	mov r0, #0x38
	add r1, #0xc
	mul r0, r2
	add r0, r1, r0
	bl sub_02015CC0
_02015A3A:
	cmp r0, #1
	bne _02015A4E
	add r4, #0x9a
	ldrb r0, [r4]
	cmp r0, #0
	bne _02015A4A
	mov r0, #1
	pop {r4, pc}
_02015A4A:
	mov r0, #2
	pop {r4, pc}
_02015A4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020159FC

	thumb_func_start sub_02015A54
sub_02015A54: ; 0x02015A54
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02024034
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_02015A64:
	add r0, r5, #0
	bl sub_02015D00
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #2
	blt _02015A64
	add r0, r6, #0
	add r6, #0x84
	ldr r1, [r6, #0]
	bl sub_02015A80
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02015A54

	thumb_func_start sub_02015A80
sub_02015A80: ; 0x02015A80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x9c
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	add r0, r5, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x9a
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015A80

	thumb_func_start sub_02015AC0
sub_02015AC0: ; 0x02015AC0
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r1, #8]
	mov r1, #1
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r2, [r3, #0x7c]
	add r3, #0x80
	ldr r3, [r3, #0]
	mov r0, #0x54
	bl sub_02015DCC
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_02015AC0

	thumb_func_start sub_02015AE4
sub_02015AE4: ; 0x02015AE4
	push {r3, lr}
	sub sp, #8
	add r3, r1, #0
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #4
	bhs _02015AF8
	mov r2, #0
	b _02015AFA
_02015AF8:
	mov r2, #4
_02015AFA:
	mov r1, #0x40
	str r1, [sp]
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r3, [r3, #0xc]
	mov r0, #0x54
	lsl r3, r3, #5
	bl sub_02015E1C
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_02015AE4

	thumb_func_start sub_02015B14
sub_02015B14: ; 0x02015B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	mov r3, #0
	add r4, r7, #0
_02015B1E:
	add r0, r4, #0
	add r3, r3, #1
	lsl r2, r3, #0xc
	add r0, #0x88
	add r4, r4, #4
	str r2, [r0, #0]
	cmp r3, #4
	blt _02015B1E
	ldr r0, [r7, #0x7c]
	mov r5, #0
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r4, r7, #0
	str r0, [sp, #4]
	mov r0, #0x54
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	add r6, r5, #0
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0xc]
	add r4, #0xc
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r0, #0x88
	str r0, [sp, #0x24]
	mov r0, #4
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r0, #0x98
	ldrb r1, [r0]
	add r0, sp, #0x20
	strb r1, [r0, #0xc]
_02015B62:
	mov r1, #0
	mov r2, #2
	add r3, sp, #0
_02015B68:
	add r0, r5, r2
	str r0, [r3, #0xc]
	add r1, r1, #1
	add r2, r2, #2
	add r3, r3, #4
	cmp r1, #4
	blt _02015B68
	add r0, r7, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r2, r7, #0
	add r2, #0x84
	add r1, r0, r6
	add r0, sp, #0x20
	strb r1, [r0, #0xd]
	ldr r0, [sp, #0x20]
	add r1, sp, #0
	add r0, r0, r5
	str r0, [sp, #0x20]
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_02015C38
	add r5, r5, #1
	add r6, r6, #5
	add r4, #0x38
	cmp r5, #2
	blt _02015B62
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015B14

	thumb_func_start sub_02015BA4
sub_02015BA4: ; 0x02015BA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	add r2, r4, #0
_02015BB0:
	add r3, r4, #0
	add r3, #0x99
	ldrb r3, [r3]
	add r0, r0, #1
	lsl r3, r3, #3
	add r3, r3, r1
	strb r3, [r2, #4]
	add r3, r4, #0
	add r3, #0x99
	ldrb r3, [r3]
	lsl r3, r3, #3
	add r3, r3, r1
	add r3, #0x20
	strb r3, [r2, #5]
	add r3, r4, #0
	add r3, #0x98
	ldrb r3, [r3]
	add r1, #0x28
	lsl r3, r3, #3
	strb r3, [r2, #6]
	add r3, r4, #0
	add r3, #0x98
	ldrb r3, [r3]
	lsl r3, r3, #3
	add r3, #0x30
	strb r3, [r2, #7]
	add r2, r2, #4
	cmp r0, #2
	blt _02015BB0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	ldr r2, _02015C04 ; =sub_02015C08
	str r0, [sp]
	add r0, r4, #4
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02015C04: .word sub_02015C08
	thumb_func_end sub_02015BA4

	thumb_func_start sub_02015C08
sub_02015C08: ; 0x02015C08
	push {r4, lr}
	add r3, r2, #0
	add r3, #0x9b
	ldrb r3, [r3]
	mov r4, #0xf0
	bic r3, r4
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x18
	orr r4, r3
	add r3, r2, #0
	add r3, #0x9b
	strb r4, [r3]
	cmp r1, #0
	bne _02015C32
	add r2, #0x9a
	strb r0, [r2]
	ldr r0, _02015C34 ; =0x000005E4
	bl sub_02005748
_02015C32:
	pop {r4, pc}
	; .align 2, 0
_02015C34: .word 0x000005E4
	thumb_func_end sub_02015C08

	thumb_func_start sub_02015C38
sub_02015C38: ; 0x02015C38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	add r0, #0x28
	bl sub_02015D8C
	ldr r1, [r5, #0]
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	str r1, [r0, #0]
	ldr r1, [r5, #4]
	ldr r4, [sp, #4]
	str r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x2c
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	add r6, #0x18
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	add r7, r5, #0
	add r0, #0x35
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #0xc]
_02015C7A:
	ldr r0, [sp, #8]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, [r7, #0xc]
	add r3, r6, #0
	bl sub_02006F6C
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	bl sub_02015F34
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x20]
	bl sub_02015F54
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	add r7, r7, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02015C7A
	ldr r0, [sp, #4]
	bl sub_02015D60
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x36
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015C38

	thumb_func_start sub_02015CC0
sub_02015CC0: ; 0x02015CC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x28
	bl sub_02015DA0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, r4
	beq _02015CE2
	add r0, r5, #0
	bl sub_02015D60
	add r0, r5, #0
	add r0, #0x36
	strb r4, [r0]
_02015CE2:
	ldr r0, [r5, #0x2c]
	sub r0, r0, #1
	cmp r4, r0
	bne _02015CEE
	mov r0, #1
	pop {r3, r4, r5, pc}
_02015CEE:
	add r5, #0x28
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02015D98
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015CC0

	thumb_func_start sub_02015D00
sub_02015D00: ; 0x02015D00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, #0x35
	ldrb r0, [r0]
	ldr r1, [r6, #0x18]
	add r3, r6, #0
	str r0, [sp]
	ldrh r0, [r1]
	mov r2, #0
	add r3, #0x34
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r6, #4]
	ldrb r3, [r3]
	lsl r1, r1, #0x18
	ldr r0, [r6, #0]
	lsr r1, r1, #0x18
	bl sub_02019CB8
	ldr r1, [r6, #4]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	mov r4, #0
	add r5, r6, #0
_02015D44:
	ldr r0, [r5, #8]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02015D44
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015D00

	thumb_func_start sub_02015D60
sub_02015D60: ; 0x02015D60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x28
	bl sub_02015DA0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	lsl r2, r2, #2
	add r2, r4, r2
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r4, #0x34
	ldrb r3, [r4]
	ldr r2, [r2, #0x18]
	bl sub_02015EE8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02015D60

	thumb_func_start sub_02015D8C
sub_02015D8C: ; 0x02015D8C
	str r1, [r0, #0]
	str r2, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015D8C

	thumb_func_start sub_02015D98
sub_02015D98: ; 0x02015D98
	ldr r2, [r0, #8]
	add r1, r2, r1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02015D98

	thumb_func_start sub_02015DA0
sub_02015DA0: ; 0x02015DA0
	push {r4, r5}
	ldr r5, [r0, #4]
	mov r2, #0
	cmp r5, #0
	bls _02015DC4
	ldr r3, [r0, #0]
	ldr r4, [r0, #8]
_02015DAE:
	ldr r1, [r3, #0]
	cmp r1, r4
	blt _02015DBA
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02015DBA:
	ldr r1, [r0, #4]
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r1
	blo _02015DAE
_02015DC4:
	sub r0, r5, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015DA0

	thumb_func_start sub_02015DCC
sub_02015DCC: ; 0x02015DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02015DE8:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02015DE8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #1
	add r3, r4, #4
	bl sub_02006F50
	str r0, [r4, #8]
	str r5, [r4, #0]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02015E18 ; =sub_02015E64
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015E18: .word sub_02015E64
	thumb_func_end sub_02015DCC

	thumb_func_start sub_02015E1C
sub_02015E1C: ; 0x02015E1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02015E36:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02015E36
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02006F88
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02015E60 ; =sub_02015EA0
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015E60: .word sub_02015EA0
	thumb_func_end sub_02015E1C

	thumb_func_start sub_02015E64
sub_02015E64: ; 0x02015E64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_020C2C54
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201958C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015E64

	thumb_func_start sub_02015EA0
sub_02015EA0: ; 0x02015EA0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02015EC4
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl sub_020C00B4
	b _02015ED4
_02015EC4:
	cmp r0, #4
	bne _02015ED4
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl sub_020C0108
_02015ED4:
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015EA0

	thumb_func_start sub_02015EE8
sub_02015EE8: ; 0x02015EE8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldrh r6, [r1]
	ldrh r3, [r1, #2]
	lsl r2, r2, #0x18
	lsl r6, r6, #0x15
	lsr r6, r6, #0x18
	lsl r3, r3, #0x15
	str r6, [sp]
	lsr r3, r3, #0x18
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r1, r4, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	add r5, r0, #0
	bl sub_020198E8
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02015EE8

	thumb_func_start sub_02015F34
sub_02015F34: ; 0x02015F34
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02015F50
_02015F42:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02015F42
_02015F50:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02015F34

	thumb_func_start sub_02015F54
sub_02015F54: ; 0x02015F54
	push {r4, r5}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r3, r2, #1
	mov r2, #0
	cmp r3, #0
	ble _02015F7A
	ldr r4, _02015F80 ; =0x00000FFF
	lsl r1, r1, #0xc
_02015F66:
	ldrh r5, [r0]
	add r2, r2, #1
	and r5, r4
	strh r5, [r0]
	ldrh r5, [r0]
	orr r5, r1
	strh r5, [r0]
	add r0, r0, #2
	cmp r2, r3
	blt _02015F66
_02015F7A:
	pop {r4, r5}
	bx lr
	nop
_02015F80: .word 0x00000FFF
	thumb_func_end sub_02015F54

	thumb_func_start sub_02015F84
sub_02015F84: ; 0x02015F84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	strb r6, [r4, #8]
	mov r0, #0x1d
	strb r7, [r4, #9]
	lsl r0, r0, #4
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	add r1, r6, #0
	str r5, [r4, #4]
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #0]
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015F84

	thumb_func_start sub_02015FB8
sub_02015FB8: ; 0x02015FB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02015FB8

	thumb_func_start sub_02015FCC
sub_02015FCC: ; 0x02015FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, r2, #0
	ldrh r6, [r0]
	ldrh r0, [r0, #2]
	add r7, r1, #0
	ldrb r1, [r5, #9]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r2, [sp]
	cmp r0, r1
	blo _02015FEC
	bl sub_02022974
_02015FEC:
	ldr r0, [sp, #4]
	mov r1, #0x1d
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, #0]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02016004
	bl sub_02022974
_02016004:
	ldr r0, [r5, #0]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	ldr r0, [r5, #0]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0]
	cmp r6, #0x8f
	str r7, [r0, r4]
	blt _02016026
	mov r6, #0
	str r6, [sp, #8]
_02016026:
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02016038
	ldr r0, [sp]
	ldrb r2, [r0, #4]
	b _0201603A
_02016038:
	mov r2, #0
_0201603A:
	ldr r0, [r5, #0]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5e
	bl sub_02006ADC
	ldr r1, [r5, #0]
	mov r2, #0
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5, #0]
	add r1, r0, r4
	ldr r0, _020160EC ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	add r3, r1, r4
	add r1, r0, #1
	strb r6, [r3, r1]
	ldr r1, [r5, #0]
	add r0, r0, #2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	ldr r0, _020160F0 ; =sub_02016150
	add r1, r1, r4
	bl sub_0200D9E8
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5, #0]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r0, [r1, #0x54]
	add r0, r7, #0
	mov r1, #0
	bl sub_020080C0
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020160EC: .word 0x000001CD
_020160F0: .word sub_02016150
	thumb_func_end sub_02015FCC

	thumb_func_start sub_020160F4
sub_020160F4: ; 0x020160F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	cmp r4, r0
	blo _02016104
	bl sub_02022974
_02016104:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020160F4

	thumb_func_start sub_02016114
sub_02016114: ; 0x02016114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201614E
	bl sub_0200DA58
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	mov r2, #1
	add r1, r1, r4
	str r2, [r1, #0x20]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x10]
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_020181C4
_0201614E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016114

	thumb_func_start sub_02016150
sub_02016150: ; 0x02016150
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _02016164
	add r0, r4, #0
	bl sub_02016188
	b _02016168
_02016164:
	sub r0, r0, #1
	str r0, [r4, #0x54]
_02016168:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02016186
	mov r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_020181C4
_02016186:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016150

	thumb_func_start sub_02016188
sub_02016188: ; 0x02016188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #0x18]
	add r7, r5, #0
	str r6, [r5, #0x44]
	add r4, r6, #0
	add r7, #0x7c
_02016198:
	mov r0, #0x54
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _020161C6
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	cmp r1, #0
	bne _020161B8
	ldr r2, [r0, #0x50]
	add r1, r5, #0
	blx r2
	b _020161CC
_020161B8:
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	add r0, #0x2d
	sub r1, r1, #1
	strb r1, [r0]
	b _020161CC
_020161C6:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_020161CC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02016198
	cmp r6, #4
	bne _020161E0
	ldr r0, _02016274 ; =0x000001CD
	mov r1, #0
	strb r1, [r5, r0]
_020161E0:
	ldr r0, _02016274 ; =0x000001CD
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _020161F6
	add r0, r5, #0
	bl sub_02016A60
	add r0, r5, #0
	bl sub_02016AA8
	pop {r3, r4, r5, r6, r7, pc}
_020161F6:
	add r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0201620E
	ldr r0, [r5, #0]
	bl sub_020087B4
	cmp r0, #0
	bne _02016270
	ldr r0, _02016278 ; =0x000001CF
	mov r1, #0
	strb r1, [r5, r0]
_0201620E:
	add r6, r5, #0
	add r4, r5, #0
	ldr r7, _0201627C ; =0x020E55D4
	add r6, #0xc
	add r4, #0x44
_02016218:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #0x22
	blo _0201622A
	bl sub_02022974
_0201622A:
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	ldr r1, [r1, #0]
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _02016270
	ldr r0, [r6, #0]
	add r0, r0, #4
	str r0, [r6, #0]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _02016270
	ldr r0, _02016274 ; =0x000001CD
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0201625E
	add r0, r5, #0
	bl sub_02016A60
	add r0, r5, #0
	bl sub_02016AA8
	pop {r3, r4, r5, r6, r7, pc}
_0201625E:
	mov r0, #1
	ldr r1, [r5, #0x44]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02016218
	bl sub_02022974
	mov r0, #1
	str r0, [r5, #0x1c]
_02016270:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02016274: .word 0x000001CD
_02016278: .word 0x000001CF
_0201627C: .word 0x020E55D4
	thumb_func_end sub_02016188

	thumb_func_start sub_02016280
sub_02016280: ; 0x02016280
	push {r4, lr}
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	cmp r2, #1
	beq _0201628E
	bl sub_02022974
_0201628E:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016280

	thumb_func_start sub_02016294
sub_02016294: ; 0x02016294
	ldr r3, _0201629C ; =sub_02016280
	add r2, r1, #0
	mov r1, #0
	bx r3
	; .align 2, 0
_0201629C: .word sub_02016280
	thumb_func_end sub_02016294

	thumb_func_start sub_020162A0
sub_020162A0: ; 0x020162A0
	ldr r3, _020162A8 ; =sub_02016294
	mov r1, #1
	bx r3
	nop
_020162A8: .word sub_02016294
	thumb_func_end sub_020162A0

	thumb_func_start sub_020162AC
sub_020162AC: ; 0x020162AC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r3, #0
	add r0, #0x7c
	mov r2, #0x54
_020162B6:
	add r1, r3, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _020162E0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	bl sub_020C4CF4
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _020162F4 ; =0x020E5598
	ldr r0, [r0, r1]
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_020162E0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _020162B6
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020162F4: .word 0x020E5598
	thumb_func_end sub_020162AC

	thumb_func_start sub_020162F8
sub_020162F8: ; 0x020162F8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020162F8

	thumb_func_start sub_0201630C
sub_0201630C: ; 0x0201630C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201630C

	thumb_func_start sub_02016320
sub_02016320: ; 0x02016320
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #8
	blo _0201633C
	bl sub_02022974
_0201633C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016320

	thumb_func_start sub_02016340
sub_02016340: ; 0x02016340
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02016320
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016320
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016340

	thumb_func_start sub_02016354
sub_02016354: ; 0x02016354
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016320
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02016394
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020162F8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02016394:
	cmp r0, #0x13
	bne _020163C0
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, #1
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0, #2]
	add sp, #4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [r4, #0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, pc}
_020163C0:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02016354

	thumb_func_start sub_020163C8
sub_020163C8: ; 0x020163C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016320
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x12
	bne _020163FA
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020162F8
	b _0201641A
_020163FA:
	cmp r0, #0x13
	bne _02016416
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0]
	b _0201641A
_02016416:
	bl sub_02022974
_0201641A:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _0201642E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020162F8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0201642E:
	cmp r0, #0x13
	bne _0201644C
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add sp, #4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, pc}
_0201644C:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020163C8

	thumb_func_start sub_02016454
sub_02016454: ; 0x02016454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r2, #3
	add r5, r0, #0
	add r6, r3, #0
	bl sub_02016340
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r7, [r0, #0x24]
	add r0, r5, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0201648A
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020162F8
	b _020164AA
_0201648A:
	cmp r0, #0x15
	bne _020164A6
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	b _020164AA
_020164A6:
	bl sub_02022974
_020164AA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020164C4
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _020164E4
_020164C4:
	cmp r0, #0x15
	bne _020164E0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020164E4
_020164E0:
	bl sub_02022974
_020164E4:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02016454

	thumb_func_start sub_020164FC
sub_020164FC: ; 0x020164FC
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	bpl _02016508
	mov r0, #0xf
	bx lr
_02016508:
	cmp r0, #0
	ble _02016510
	mov r0, #0x10
	bx lr
_02016510:
	mov r0, #0x11
	bx lr
	thumb_func_end sub_020164FC

	thumb_func_start sub_02016514
sub_02016514: ; 0x02016514
	add r2, r0, #0
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x74]
	mov r1, #1
	neg r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldr r3, _0201652C ; =sub_02008274
	asr r2, r2, #3
	bx r3
	nop
_0201652C: .word sub_02008274
	thumb_func_end sub_02016514

	thumb_func_start sub_02016530
sub_02016530: ; 0x02016530
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016548
	mov r0, #1
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_02016530

	thumb_func_start sub_02016540
sub_02016540: ; 0x02016540
	mov r1, #1
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02016540

	thumb_func_start sub_02016548
sub_02016548: ; 0x02016548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x58]
	mov r1, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x5c]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0xa
	mov r2, #0
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf3
	bl sub_02007DEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016548

	thumb_func_start sub_02016590
sub_02016590: ; 0x02016590
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	add r4, r0, #0
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, #0x24]
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016590

	thumb_func_start sub_020165B8
sub_020165B8: ; 0x020165B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016354
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_020165B8

	thumb_func_start sub_020165DC
sub_020165DC: ; 0x020165DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016354
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020165DC

	thumb_func_start sub_02016604
sub_02016604: ; 0x02016604
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02016604

	thumb_func_start sub_02016628
sub_02016628: ; 0x02016628
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020E1F6C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016628

	thumb_func_start sub_02016650
sub_02016650: ; 0x02016650
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020E1F6C
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016650

	thumb_func_start sub_02016678
sub_02016678: ; 0x02016678
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r1, sp, #0
	add r5, r0, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020166AC
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_020162F8
	b _020166DA
_020166AC:
	cmp r0, #0x15
	bne _020166D6
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	b _020166DA
_020166D6:
	bl sub_02022974
_020166DA:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x11
	bls _020166F0
	bl sub_02022974
_020166F0:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_020164FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0201671E
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _02016742
_0201671E:
	cmp r0, #0x15
	bne _0201673E
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_02016340
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02016742
_0201673E:
	bl sub_02022974
_02016742:
	add r0, sp, #0
	ldrb r1, [r0, #1]
	cmp r1, r4
	bne _02016754
	ldrb r0, [r0, #3]
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [r0, #0x24]
_02016754:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016678

	thumb_func_start sub_02016758
sub_02016758: ; 0x02016758
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02016320
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_020162A0
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02016758

	thumb_func_start sub_0201677C
sub_0201677C: ; 0x0201677C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0201678A
	bl sub_02022974
_0201678A:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0xc]
	bl sub_020162A0
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
	thumb_func_end sub_0201677C

	thumb_func_start sub_020167A0
sub_020167A0: ; 0x020167A0
	ldr r1, [r0, #0x4c]
	add r2, r1, #1
	str r2, [r0, #0x4c]
	ldr r1, [r0, #0x48]
	cmp r2, r1
	blt _020167B6
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x48]
	bx lr
_020167B6:
	ldr r1, [r0, #0x50]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020167A0

	thumb_func_start sub_020167BC
sub_020167BC: ; 0x020167BC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_020162F8
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02016320
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020167BC

	thumb_func_start sub_020167E8
sub_020167E8: ; 0x020167E8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_020162F8
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02016320
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02008274
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020167E8

	thumb_func_start sub_02016814
sub_02016814: ; 0x02016814
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #8
	add r4, r0, #0
	bl sub_020162F8
	add r1, sp, #0
	add r0, r4, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _0201683C
	add r0, r4, #0
	add r1, sp, #4
	bl sub_020162F8
	b _0201685C
_0201683C:
	cmp r0, #0x15
	bne _02016858
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _0201685C
_02016858:
	bl sub_02022974
_0201685C:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0201687A
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0201687A:
	cmp r0, #0x17
	bne _0201688C
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02008274
	add sp, #0xc
	pop {r3, r4, pc}
_0201688C:
	bl sub_02022974
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02016814

	thumb_func_start sub_02016894
sub_02016894: ; 0x02016894
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016454
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020168C4 ; =0x020F983C
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_020168C4: .word 0x020F983C
	thumb_func_end sub_02016894

	thumb_func_start sub_020168C8
sub_020168C8: ; 0x020168C8
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016454
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _020168FC ; =0x020F983C
	ldrsh r1, [r1, r2]
	mul r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	asr r1, r1, #0xc
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_020168FC: .word 0x020F983C
	thumb_func_end sub_020168C8

	thumb_func_start sub_02016900
sub_02016900: ; 0x02016900
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02016320
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _0201692C
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_0201692C:
	cmp r1, #9
	bne _0201693E
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_0201693E:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016900

	thumb_func_start sub_02016948
sub_02016948: ; 0x02016948
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02016320
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _02016978
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x60]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02016978:
	cmp r1, #9
	bne _0201698E
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x64]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_0201698E:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016948

	thumb_func_start sub_02016998
sub_02016998: ; 0x02016998
	push {r3, r4, r5, lr}
	sub sp, #8
	add r1, sp, #0
	add r1, #3
	add r5, r0, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _020169B4
	add r4, r5, #0
	add r4, #0x60
	b _020169F4
_020169B4:
	cmp r0, #9
	bne _020169BE
	add r4, r5, #0
	add r4, #0x64
	b _020169F4
_020169BE:
	cmp r0, #0xa
	bne _020169C8
	add r4, r5, #0
	add r4, #0x68
	b _020169F4
_020169C8:
	cmp r0, #0xb
	bne _020169D2
	add r4, r5, #0
	add r4, #0x6c
	b _020169F4
_020169D2:
	cmp r0, #0xc
	bne _020169DC
	add r4, r5, #0
	add r4, #0x70
	b _020169F4
_020169DC:
	cmp r0, #0xd
	bne _020169E6
	add r4, r5, #0
	add r4, #0x74
	b _020169F4
_020169E6:
	cmp r0, #0xe
	bne _020169F0
	add r4, r5, #0
	add r4, #0x78
	b _020169F4
_020169F0:
	bl sub_02022974
_020169F4:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _02016A10
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _02016A30
_02016A10:
	cmp r0, #0x15
	bne _02016A2C
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02016A30
_02016A2C:
	bl sub_02022974
_02016A30:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _02016A48
	ldr r0, [sp, #4]
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02016A48:
	cmp r0, #0x17
	bne _02016A58
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	add sp, #8
	add r0, r1, r0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02016A58:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016998

	thumb_func_start sub_02016A60
sub_02016A60: ; 0x02016A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _02016A82
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x68]
	ldr r5, [r4, #0x58]
	add r2, r3, r2
	mov r1, #0
	sub r2, r5, r2
	bl sub_02007DEC
	b _02016A92
_02016A82:
	ldr r3, [r4, #0x58]
	ldr r2, [r4, #0x60]
	ldr r5, [r4, #0x68]
	add r2, r3, r2
	mov r1, #0
	add r2, r5, r2
	bl sub_02007DEC
_02016A92:
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	ldr r5, [r4, #0x6c]
	add r2, r3, r2
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, r5, r2
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02016A60

	thumb_func_start sub_02016AA8
sub_02016AA8: ; 0x02016AA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	add r2, r1, #0
	ldr r3, [r4, #0x70]
	add r2, #0xf4
	ldr r0, [r4, #0]
	add r2, r3, r2
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r3, [r4, #0x74]
	add r2, #0xf3
	ldr r0, [r4, #0]
	add r2, r3, r2
	bl sub_02007DEC
	ldr r2, [r4, #0x78]
	ldr r0, [r4, #0]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	ldr r0, _02016B0C ; =0x000001CE
	ldrb r0, [r4, r0]
	cmp r0, #0x1b
	bne _02016AF0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bge _02016B0A
	add r0, r4, #0
	bl sub_02016514
	pop {r4, pc}
_02016AF0:
	cmp r0, #0x1d
	bne _02016B02
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02016B0A
	add r0, r4, #0
	bl sub_02016514
	pop {r4, pc}
_02016B02:
	cmp r0, #0x1c
	beq _02016B0A
	bl sub_02022974
_02016B0A:
	pop {r4, pc}
	; .align 2, 0
_02016B0C: .word 0x000001CE
	thumb_func_end sub_02016AA8

	thumb_func_start sub_02016B10
sub_02016B10: ; 0x02016B10
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02016320
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_020162A0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	beq _02016B32
	cmp r0, #0xa
	bne _02016B42
_02016B32:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x68]
	pop {r3, r4, pc}
_02016B42:
	cmp r0, #9
	beq _02016B4A
	cmp r0, #0xb
	bne _02016B5A
_02016B4A:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x6c]
	pop {r3, r4, pc}
_02016B5A:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B10

	thumb_func_start sub_02016B64
sub_02016B64: ; 0x02016B64
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	bl sub_020162F8
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B64

	thumb_func_start sub_02016B78
sub_02016B78: ; 0x02016B78
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #4
	add r1, #2
	add r4, r0, #0
	bl sub_0201630C
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	bl sub_0201630C
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0201630C
	add r0, r4, #0
	add r1, sp, #8
	bl sub_020162F8
	ldr r0, [sp, #8]
	add r3, sp, #4
	str r0, [sp]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	bl sub_020086FC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B78

	thumb_func_start sub_02016BB8
sub_02016BB8: ; 0x02016BB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020087B4
	cmp r0, #0
	beq _02016BCE
	ldr r0, _02016BD0 ; =0x000001CF
	mov r1, #1
	strb r1, [r4, r0]
	str r1, [r4, #0x18]
_02016BCE:
	pop {r4, pc}
	; .align 2, 0
_02016BD0: .word 0x000001CF
	thumb_func_end sub_02016BB8

	thumb_func_start sub_02016BD4
sub_02016BD4: ; 0x02016BD4
	ldr r1, _02016BDC ; =0x000001CD
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02016BDC: .word 0x000001CD
	thumb_func_end sub_02016BD4

	thumb_func_start sub_02016BE0
sub_02016BE0: ; 0x02016BE0
	push {r4, lr}
	ldr r1, _02016C14 ; =0x000001CE
	add r4, r0, #0
	add r1, r4, r1
	bl sub_0201630C
	ldr r0, _02016C14 ; =0x000001CE
	mov r1, #1
	ldrb r0, [r4, r0]
	add r2, r1, #0
	cmp r0, #0x1b
	beq _02016BFE
	cmp r0, #0x1d
	beq _02016BFE
	mov r2, #0
_02016BFE:
	cmp r2, #0
	bne _02016C08
	cmp r0, #0x1c
	beq _02016C08
	mov r1, #0
_02016C08:
	cmp r1, #0
	bne _02016C10
	bl sub_02022974
_02016C10:
	pop {r4, pc}
	nop
_02016C14: .word 0x000001CE
	thumb_func_end sub_02016BE0

	thumb_func_start sub_02016C18
sub_02016C18: ; 0x02016C18
	ldr r3, _02016C20 ; =sub_02016D04
	mov r1, #0
	bx r3
	nop
_02016C20: .word sub_02016D04
	thumb_func_end sub_02016C18

	thumb_func_start sub_02016C24
sub_02016C24: ; 0x02016C24
	ldr r3, _02016C2C ; =sub_02016D04
	mov r1, #1
	bx r3
	nop
_02016C2C: .word sub_02016D04
	thumb_func_end sub_02016C24

	thumb_func_start sub_02016C30
sub_02016C30: ; 0x02016C30
	ldr r3, _02016C38 ; =sub_02016D04
	mov r1, #2
	bx r3
	nop
_02016C38: .word sub_02016D04
	thumb_func_end sub_02016C30

	thumb_func_start sub_02016C3C
sub_02016C3C: ; 0x02016C3C
	ldr r3, _02016C44 ; =sub_02016D04
	mov r1, #3
	bx r3
	nop
_02016C44: .word sub_02016D04
	thumb_func_end sub_02016C3C

	thumb_func_start sub_02016C48
sub_02016C48: ; 0x02016C48
	ldr r3, _02016C50 ; =sub_02016D04
	mov r1, #4
	bx r3
	nop
_02016C50: .word sub_02016D04
	thumb_func_end sub_02016C48

	thumb_func_start sub_02016C54
sub_02016C54: ; 0x02016C54
	push {r3, lr}
	cmp r0, #0x18
	bne _02016C60
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	pop {r3, pc}
_02016C60:
	cmp r0, #0x19
	bne _02016C6E
	ldr r1, [r1, #0]
	ldr r0, [r2, #0]
	add r0, r1, r0
	str r0, [r3, #0]
	pop {r3, pc}
_02016C6E:
	cmp r0, #0x1a
	bne _02016C7C
	ldr r1, [r3, #0]
	ldr r0, [r2, #0]
	add r0, r1, r0
	str r0, [r3, #0]
	pop {r3, pc}
_02016C7C:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02016C54

	thumb_func_start sub_02016C84
sub_02016C84: ; 0x02016C84
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #4
	bhi _02016CFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016C98: ; jump table
	.short _02016CA2 - _02016C98 - 2 ; case 0
	.short _02016CB4 - _02016C98 - 2 ; case 1
	.short _02016CC6 - _02016C98 - 2 ; case 2
	.short _02016CD8 - _02016C98 - 2 ; case 3
	.short _02016CEA - _02016C98 - 2 ; case 4
_02016CA2:
	add r0, r1, #0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CB4:
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CC6:
	add r0, r1, #0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CD8:
	add r0, r1, #0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CEA:
	add r0, r1, #0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CFC:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02016C84

	thumb_func_start sub_02016D04
sub_02016D04: ; 0x02016D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_020162AC
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2c
	bl sub_0201630C
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2d
	bl sub_0201630C
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02016DA0 ; =0x020E559C
	str r0, [sp]
	ldr r0, [r1, r0]
	mov r4, #0
	cmp r0, #0
	ble _02016D5A
	ldr r1, _02016DA4 ; =0x020E5598
	ldr r0, [sp]
	add r6, r1, r0
	ldr r0, [sp, #4]
	add r7, r0, #4
_02016D44:
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r7, r1
	bl sub_020162F8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #4]
	cmp r4, r0
	blt _02016D44
_02016D5A:
	ldr r1, _02016DA8 ; =0x020E55A0
	ldr r0, [sp]
	add r2, r5, #0
	ldr r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02016C84
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02016D8C
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r0, #0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02016D8C:
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2d
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02016DA0: .word 0x020E559C
_02016DA4: .word 0x020E5598
_02016DA8: .word 0x020E55A0
	thumb_func_end sub_02016D04

	thumb_func_start sub_02016DAC
sub_02016DAC: ; 0x02016DAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	ldr r2, [r4, #0x14]
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02016E38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016DD4: ; jump table
	.short _02016DDC - _02016DD4 - 2 ; case 0
	.short _02016DF0 - _02016DD4 - 2 ; case 1
	.short _02016E08 - _02016DD4 - 2 ; case 2
	.short _02016E1E - _02016DD4 - 2 ; case 3
_02016DDC:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016E60 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016DF0:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016E60 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	b _02016E3C
_02016E08:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016E60 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016E1E:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016E60 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016E38:
	bl sub_02022974
_02016E3C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02016E5E
	mov r0, #0
	str r0, [r4, #0]
_02016E5E:
	pop {r4, pc}
	; .align 2, 0
_02016E60: .word 0x020F983C
	thumb_func_end sub_02016DAC

	thumb_func_start sub_02016E64
sub_02016E64: ; 0x02016E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	mul r0, r1
	ldr r1, [r4, #0x18]
	bl sub_020E1F6C
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02016EF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016E92: ; jump table
	.short _02016E9A - _02016E92 - 2 ; case 0
	.short _02016EAE - _02016E92 - 2 ; case 1
	.short _02016EC6 - _02016E92 - 2 ; case 2
	.short _02016EDC - _02016E92 - 2 ; case 3
_02016E9A:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016F20 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EAE:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016F20 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	b _02016EFA
_02016EC6:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016F20 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EDC:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016F20 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EF6:
	bl sub_02022974
_02016EFA:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02016F1C
	mov r0, #0
	str r0, [r4, #0]
_02016F1C:
	pop {r4, pc}
	nop
_02016F20: .word 0x020F983C
	thumb_func_end sub_02016E64

	thumb_func_start sub_02016F24
sub_02016F24: ; 0x02016F24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x14]
	ldr r5, [r4, #8]
	mul r2, r3
	ldr r0, [r1, #0]
	add r2, r5, r2
	add r0, r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02016F5C
	mov r0, #0
	str r0, [r4, #0]
_02016F5C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02016F24

	thumb_func_start sub_02016F60
sub_02016F60: ; 0x02016F60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	ldr r0, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0xc]
	bl sub_020E1F6C
	ldr r1, [r4, #0x24]
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	str r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02016F98
	mov r0, #0
	str r0, [r4, #0]
_02016F98:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016F60

	thumb_func_start sub_02016F9C
sub_02016F9C: ; 0x02016F9C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0x24]
	add r2, r2, r0
	ldr r0, [r1, #0]
	add r0, r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02016FC0
	cmp r0, #0x1a
	bne _02016FE6
_02016FC0:
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02016FD6
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0]
	cmp r0, r2
	bgt _0201701C
	str r2, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02016FD6:
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0]
	cmp r0, r2
	blt _0201701C
	str r2, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02016FE6:
	cmp r0, #0x19
	bne _02017018
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x30]
	ldr r0, [r1, #0]
	add r3, r3, r0
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017008
	cmp r3, r2
	bgt _0201701C
	sub r2, r2, r3
	add r0, r0, r2
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02017008:
	cmp r3, r2
	blt _0201701C
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02017018:
	bl sub_02022974
_0201701C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016F9C

	thumb_func_start sub_02017038
sub_02017038: ; 0x02017038
	ldr r3, _02017054 ; =0x020E565C
	mov r2, #0
_0201703C:
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhs _02017046
	add r0, r2, #0
	bx lr
_02017046:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #2
	blt _0201703C
	add r0, r2, #0
	bx lr
	nop
_02017054: .word 0x020E565C
	thumb_func_end sub_02017038

	thumb_func_start sub_02017058
sub_02017058: ; 0x02017058
	push {r4, lr}
	add r4, r0, #0
	bl sub_02017038
	lsl r1, r0, #1
	ldr r0, _0201706C ; =0x020E565C
	ldrh r0, [r0, r1]
	sub r0, r4, r0
	pop {r4, pc}
	nop
_0201706C: .word 0x020E565C
	thumb_func_end sub_02017058

	thumb_func_start sub_02017070
sub_02017070: ; 0x02017070
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #3
	blt _0201707E
	bl sub_02022974
_0201707E:
	ldr r0, _02017088 ; =0x020E565C
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017088: .word 0x020E565C
	thumb_func_end sub_02017070

	thumb_func_start sub_0201708C
sub_0201708C: ; 0x0201708C
	cmp r0, #1
	blo _02017094
	cmp r0, #0x6f
	bls _020170AE
_02017094:
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	blo _020170A2
	add r1, #0xa
	cmp r0, r1
	bls _020170AE
_020170A2:
	ldr r1, _020170B8 ; =0x00000BB8
	cmp r0, r1
	blo _020170B2
	add r1, #0x4c
	cmp r0, r1
	bhi _020170B2
_020170AE:
	mov r0, #1
	bx lr
_020170B2:
	mov r0, #0
	bx lr
	nop
_020170B8: .word 0x00000BB8
	thumb_func_end sub_0201708C

	thumb_func_start sub_020170BC
sub_020170BC: ; 0x020170BC
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_02006FE8
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020173CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170BC

	thumb_func_start sub_020170D8
sub_020170D8: ; 0x020170D8
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_0200723C
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020173CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170D8

	thumb_func_start sub_020170F4
sub_020170F4: ; 0x020170F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201CBCC
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170F4

	thumb_func_start sub_02017110
sub_02017110: ; 0x02017110
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02017140
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020AE9B8
	ldr r1, _0201715C ; =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0201715C ; =0x02100DF0
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0xc]
	bl sub_020AEA70
	ldr r1, _02017160 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
_02017140:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0201714A
	bl sub_020181C4
_0201714A:
	mov r1, #0x10
	mov r0, #0
_0201714E:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0201714E
	add sp, #8
	pop {r4, pc}
	nop
_0201715C: .word 0x02100DF0
_02017160: .word 0x02100DF8
	thumb_func_end sub_02017110

	thumb_func_start sub_02017164
sub_02017164: ; 0x02017164
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r6, #0
	add r1, r3, #0
	add r5, r0, #0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	add r2, r6, #0
	str r6, [sp]
	bl sub_0200723C
	add r2, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020173A0
	add r0, r6, #0
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02017164

	thumb_func_start sub_02017190
sub_02017190: ; 0x02017190
	push {r4, lr}
	add r4, r0, #0
	bl sub_020173A0
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02017190

	thumb_func_start sub_020171A0
sub_020171A0: ; 0x020171A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020171BE
	add r0, r1, #0
	ldr r1, [r4, #8]
	bl sub_020B2CD8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020171BE
	ldr r0, [r4, #0]
	bl sub_020181C4
_020171BE:
	mov r1, #0x14
	mov r0, #0
_020171C2:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _020171C2
	pop {r4, pc}
	thumb_func_end sub_020171A0

	thumb_func_start sub_020171CC
sub_020171CC: ; 0x020171CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _020171EA
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl sub_020E1F6C
	str r1, [r4, #0xc]
	b _020171FC
_020171EA:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _020171FC
	ldr r0, [r3, #0]
	add r0, r0, r2
	str r0, [r3, #0]
_020171FC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_020171CC

	thumb_func_start sub_02017204
sub_02017204: ; 0x02017204
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _02017226
	add r1, r3, r1
	cmp r1, r4
	bge _02017220
	str r1, [r0, #0xc]
	b _02017232
_02017220:
	str r4, [r0, #0xc]
	mov r2, #1
	b _02017232
_02017226:
	add r1, r3, r1
	bmi _0201722E
	str r1, [r0, #0xc]
	b _02017232
_0201722E:
	str r2, [r0, #0xc]
	mov r2, #1
_02017232:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017204

	thumb_func_start sub_02017240
sub_02017240: ; 0x02017240
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02017240

	thumb_func_start sub_02017248
sub_02017248: ; 0x02017248
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02017248

	thumb_func_start sub_0201724C
sub_0201724C: ; 0x0201724C
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201724C

	thumb_func_start sub_02017258
sub_02017258: ; 0x02017258
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020AE608
	mov r0, #1
	str r0, [r4, #0x6c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017258

	thumb_func_start sub_0201727C
sub_0201727C: ; 0x0201727C
	ldr r3, _02017284 ; =sub_020AE77C
	ldr r1, [r1, #8]
	bx r3
	nop
_02017284: .word sub_020AE77C
	thumb_func_end sub_0201727C

	thumb_func_start sub_02017288
sub_02017288: ; 0x02017288
	ldr r3, _02017290 ; =sub_020AE870
	ldr r1, [r1, #8]
	bx r3
	nop
_02017290: .word sub_020AE870
	thumb_func_end sub_02017288

	thumb_func_start sub_02017294
sub_02017294: ; 0x02017294
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02017328
	add r0, sp, #0x24
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5AC
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5E4
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x72
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x60
	add r1, #0x54
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201CA74
_02017328:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_0201732C: .word 0x020F983C
	thumb_func_end sub_02017294

	thumb_func_start sub_02017330
sub_02017330: ; 0x02017330
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _02017346
	add r1, r0, #0
	add r3, r0, #0
	add r1, #0x54
	add r3, #0x60
	bl sub_0201CA74
_02017346:
	pop {r3, pc}
	thumb_func_end sub_02017330

	thumb_func_start sub_02017348
sub_02017348: ; 0x02017348
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02017348

	thumb_func_start sub_0201734C
sub_0201734C: ; 0x0201734C
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_0201734C

	thumb_func_start sub_02017350
sub_02017350: ; 0x02017350
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	str r3, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02017350

	thumb_func_start sub_02017358
sub_02017358: ; 0x02017358
	push {r3, r4}
	ldr r4, [r0, #0x54]
	str r4, [r1, #0]
	ldr r1, [r0, #0x58]
	str r1, [r2, #0]
	ldr r0, [r0, #0x5c]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017358

	thumb_func_start sub_0201736C
sub_0201736C: ; 0x0201736C
	str r1, [r0, #0x60]
	str r2, [r0, #0x64]
	str r3, [r0, #0x68]
	bx lr
	thumb_func_end sub_0201736C

	thumb_func_start sub_02017374
sub_02017374: ; 0x02017374
	push {r3, r4}
	ldr r4, [r0, #0x60]
	str r4, [r1, #0]
	ldr r1, [r0, #0x64]
	str r1, [r2, #0]
	ldr r0, [r0, #0x68]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017374

	thumb_func_start sub_02017388
sub_02017388: ; 0x02017388
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017388

	thumb_func_start sub_02017394
sub_02017394: ; 0x02017394
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x70
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017394

	thumb_func_start sub_020173A0
sub_020173A0: ; 0x020173A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5, #0]
	add r0, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_020B3C5C
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020B2CB4
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_020AE4F0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020173A0

	thumb_func_start sub_020173CC
sub_020173CC: ; 0x020173CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020173DA
	bl sub_02022974
_020173DA:
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02017406
	add r2, r0, #0
	add r2, #8
	beq _020173FA
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _020173FA
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _020173FC
_020173FA:
	mov r1, #0
_020173FC:
	cmp r1, #0
	beq _02017406
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02017408
_02017406:
	mov r0, #0
_02017408:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _02017422
	mov r2, #1
	ldr r0, _02017424 ; =sub_020170F4
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
_02017422:
	pop {r4, pc}
	; .align 2, 0
_02017424: .word sub_020170F4
	thumb_func_end sub_020173CC

	thumb_func_start sub_02017428
sub_02017428: ; 0x02017428
	ldr r0, _02017430 ; =0x021BF658
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_02017430: .word 0x021BF658
	thumb_func_end sub_02017428

	thumb_func_start sub_02017434
sub_02017434: ; 0x02017434
	push {r3, lr}
	ldr r1, _02017454 ; =0x021BF658
	mov r2, #1
	str r2, [r1, #0]
	mov r2, #0
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r0, [r1, #4]
	bl sub_0202293C
	ldr r2, _02017454 ; =0x021BF658
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	pop {r3, pc}
	; .align 2, 0
_02017454: .word 0x021BF658
	thumb_func_end sub_02017434

	thumb_func_start sub_02017458
sub_02017458: ; 0x02017458
	push {r3, r4, r5, lr}
	ldr r0, _02017494 ; =0x021BF658
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02017492
	bl sub_0202293C
	ldr r2, _02017494 ; =0x021BF658
	ldr r3, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_0202295C
	add r5, r1, #0
	ldr r1, _02017494 ; =0x021BF658
	add r4, r0, #0
	ldr r3, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r3, r4
	sbc r2, r5
	bhs _02017492
	ldr r0, [r1, #4]
	sub r1, r4, r3
	bl sub_0202CBF0
	ldr r0, _02017494 ; =0x021BF658
	str r4, [r0, #8]
	str r5, [r0, #0xc]
_02017492:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017494: .word 0x021BF658
	thumb_func_end sub_02017458

	thumb_func_start sub_02017498
sub_02017498: ; 0x02017498
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _02017514 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _02017518 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0201751C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x74
	lsl r2, r2, #0xe
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x74
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x80
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	ldr r1, _02017520 ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02017514: .word 0xFFFFE0FF
_02017518: .word 0x04001000
_0201751C: .word 0xFFFF1FFF
_02017520: .word 0x00000497
	thumb_func_end sub_02017498

	thumb_func_start sub_02017524
sub_02017524: ; 0x02017524
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #8
	bhi _02017622
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02017540: ; jump table
	.short _02017552 - _02017540 - 2 ; case 0
	.short _0201755C - _02017540 - 2 ; case 1
	.short _0201757E - _02017540 - 2 ; case 2
	.short _02017592 - _02017540 - 2 ; case 3
	.short _020175BA - _02017540 - 2 ; case 4
	.short _020175D6 - _02017540 - 2 ; case 5
	.short _020175EE - _02017540 - 2 ; case 6
	.short _02017602 - _02017540 - 2 ; case 7
	.short _0201761E - _02017540 - 2 ; case 8
_02017552:
	bl sub_0201767C
	mov r0, #1
	str r0, [r5, #0]
	b _02017622
_0201755C:
	bl sub_020334A4
	cmp r0, #0
	beq _02017622
	ldr r1, [r4, #0x10]
	ldr r0, _02017648 ; =0x021BF678
	str r1, [r0, #0]
	ldr r0, _0201764C ; =sub_020176DC
	ldr r1, _02017650 ; =sub_02017704
	bl ov4_021D776C
	mov r0, #1
	str r0, [r4, #0x78]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_0201757E:
	ldr r0, _02017654 ; =0x020E5664
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_02017592:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _020175B4
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175B4:
	mov r0, #8
	str r0, [r5, #0]
	b _02017622
_020175BA:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0xc]
	bl sub_0208BE5C
	ldr r1, [r4, #0]
	mov r2, #0x74
	ldr r1, [r1, #0]
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175D6:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175EE:
	ldr r0, _02017654 ; =0x020E5664
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_02017602:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_0201761E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02017622:
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _02017644
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02017644
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02017644
	bl ov4_021D8018
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02017644:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017648: .word 0x021BF678
_0201764C: .word sub_020176DC
_02017650: .word sub_02017704
_02017654: .word 0x020E5664
	thumb_func_end sub_02017524

	thumb_func_start sub_02017658
sub_02017658: ; 0x02017658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020176B4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x74
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017658

	thumb_func_start sub_0201767C
sub_0201767C: ; 0x0201767C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _020176AE
	ldr r1, _020176B0 ; =0x00020020
	mov r0, #0x74
	bl sub_02018144
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020A5404
	str r0, [r4, #0x10]
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
_020176AE:
	pop {r4, pc}
	; .align 2, 0
_020176B0: .word 0x00020020
	thumb_func_end sub_0201767C

	thumb_func_start sub_020176B4
sub_020176B4: ; 0x020176B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _020176DA
	ldr r0, [r4, #0x10]
	bl sub_020A543C
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	bl sub_020334CC
	mov r0, #0
	str r0, [r4, #0x78]
_020176DA:
	pop {r4, pc}
	thumb_func_end sub_020176B4

	thumb_func_start sub_020176DC
sub_020176DC: ; 0x020176DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020C3D98
	add r6, r0, #0
	ldr r0, _02017700 ; =0x021BF678
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_020A5448
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020C3DAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02017700: .word 0x021BF678
	thumb_func_end sub_020176DC

	thumb_func_start sub_02017704
sub_02017704: ; 0x02017704
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02017720
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _02017724 ; =0x021BF678
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
_02017720:
	pop {r3, r4, r5, pc}
	nop
_02017724: .word 0x021BF678
	thumb_func_end sub_02017704

	thumb_func_start sub_02017728
sub_02017728: ; 0x02017728
	push {r3, lr}
	ldr r3, _02017750 ; =0x027E0000
	ldr r1, _02017754 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #3
	bl sub_020C458C
	ldr r0, _02017758 ; =0x021BF67C
	ldr r0, [r0, #0x1c]
	bl sub_0201CDD4
	ldr r0, _02017758 ; =0x021BF67C
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	pop {r3, pc}
	nop
_02017750: .word 0x027E0000
_02017754: .word 0x00003FF8
_02017758: .word 0x021BF67C
	thumb_func_end sub_02017728

	thumb_func_start sub_0201775C
sub_0201775C: ; 0x0201775C
	ldr r3, _02017770 ; =0x027E0000
	ldr r1, _02017774 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _02017778 ; =sub_020C458C
	mov r0, #3
	bx r3
	nop
_02017770: .word 0x027E0000
_02017774: .word 0x00003FF8
_02017778: .word sub_020C458C
	thumb_func_end sub_0201775C

	thumb_func_start sub_0201777C
sub_0201777C: ; 0x0201777C
	push {r3, lr}
	mov r0, #1
	bl sub_020C164C
	ldr r1, _02017794 ; =sub_0201775C
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
	pop {r3, pc}
	; .align 2, 0
_02017794: .word sub_0201775C
	thumb_func_end sub_0201777C

	thumb_func_start sub_02017798
sub_02017798: ; 0x02017798
	ldr r2, _020177A0 ; =0x021BF67C
	str r0, [r2, #0]
	str r1, [r2, #4]
	bx lr
	; .align 2, 0
_020177A0: .word 0x021BF67C
	thumb_func_end sub_02017798

	thumb_func_start sub_020177A4
sub_020177A4: ; 0x020177A4
	push {r3, lr}
	mov r0, #0
	bl sub_02017808
	ldr r0, _020177B8 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_020177B8: .word 0x021BF67C
	thumb_func_end sub_020177A4

	thumb_func_start sub_020177BC
sub_020177BC: ; 0x020177BC
	push {r3, lr}
	cmp r0, #0
	bne _020177D4
	mov r0, #0
	bl sub_02017808
	ldr r0, _020177F0 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #1
	pop {r3, pc}
_020177D4:
	ldr r2, _020177F0 ; =0x021BF67C
	ldr r3, [r2, #8]
	cmp r3, #0
	bne _020177EA
	str r1, [r2, #0xc]
	str r0, [r2, #8]
	mov r0, #1
	bl sub_02017808
	mov r0, #1
	pop {r3, pc}
_020177EA:
	mov r0, #0
	pop {r3, pc}
	nop
_020177F0: .word 0x021BF67C
	thumb_func_end sub_020177BC

	thumb_func_start sub_020177F4
sub_020177F4: ; 0x020177F4
	push {r3, lr}
	ldr r0, _02017804 ; =0x021BF67C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02017802
	ldr r0, [r0, #0xc]
	blx r1
_02017802:
	pop {r3, pc}
	; .align 2, 0
_02017804: .word 0x021BF67C
	thumb_func_end sub_020177F4

	thumb_func_start sub_02017808
sub_02017808: ; 0x02017808
	push {r3, lr}
	ldr r2, _02017848 ; =0x04000208
	ldrh r1, [r2]
	mov r1, #0
	strh r1, [r2]
	cmp r0, #0
	bne _02017826
	ldr r0, [r2, #8]
	mov r0, #2
	bl sub_020C164C
	mov r0, #0
	bl sub_020BDD54
	b _0201783C
_02017826:
	ldr r0, [r2, #8]
	ldr r1, _0201784C ; =sub_020177F4
	mov r0, #2
	bl sub_020C144C
	mov r0, #2
	bl sub_020C161C
	mov r0, #1
	bl sub_020BDD54
_0201783C:
	ldr r1, _02017848 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	nop
_02017848: .word 0x04000208
_0201784C: .word sub_020177F4
	thumb_func_end sub_02017808

	thumb_func_start sub_02017850
sub_02017850: ; 0x02017850
	push {r3, lr}
	sub sp, #0x30
	add r0, sp, #0x10
	bl sub_020C41D8
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, #0x20
	bl sub_020D3028
	mov r3, #0
	add r1, r3, #0
	add r2, sp, #0
_0201786A:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	add r3, r3, r0
	cmp r1, #0x10
	blo _0201786A
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	mov r0, #3
	tst r0, r3
	beq _0201788A
	mov r0, #3
_02017882:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _02017882
_0201788A:
	ldr r0, _02017898 ; =0x020E5674
	mov r1, #4
	mov r2, #0x7b
	bl sub_02017E74
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
_02017898: .word 0x020E5674
	thumb_func_end sub_02017850

	thumb_func_start sub_0201789C
sub_0201789C: ; 0x0201789C
	push {r3, r4, r5, lr}
	bl sub_020C2CCC
	bl sub_020BDBC8
	ldr r2, _020179C0 ; =0x04000304
	ldr r0, _020179C4 ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _020179C8 ; =0x0000020E
	orr r0, r1
	strh r0, [r2]
	bl sub_020BDC08
	bl sub_020C3790
	bl sub_02017850
	mov r0, #0xa0
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	add r1, r0, #0
	mov r0, #0xa0
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x18]
	mov r0, #0x20
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x1c]
	mov r0, #0x20
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x20]
	mov r0, #4
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	add r1, r0, #0
	mov r0, #4
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x24]
	bl sub_020BDDBC
	ldr r2, _020179D0 ; =0x04001000
	ldr r0, _020179D4 ; =0xFFFEFFFF
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r2, _020179C0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r1, _020179D8 ; =sub_02017728
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_020C161C
	ldr r1, _020179DC ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl sub_020BDD88
	mov r0, #1
	bl sub_020C7D68
	bl sub_02024358
	mov r0, #0
	add r1, r0, #0
	bl sub_020C8530
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_020C3060
	add r5, r0, #0
	bne _02017990
	bl sub_02022974
_02017990:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020C8530
	ldr r0, _020179CC ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x70]
	str r1, [r0, #0x2c]
	ldr r0, _020179E0 ; =0x021BF6DC
	strb r1, [r0, #5]
	mov r0, #5
	mov r1, #9
	lsl r0, r0, #8
	lsl r1, r1, #0xa
	bl sub_020CC8C4
	mov r0, #0
	bl sub_0201D640
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020179C0: .word 0x04000304
_020179C4: .word 0xFFFFFDF1
_020179C8: .word 0x0000020E
_020179CC: .word 0x021BF67C
_020179D0: .word 0x04001000
_020179D4: .word 0xFFFEFFFF
_020179D8: .word sub_02017728
_020179DC: .word 0x04000208
_020179E0: .word 0x021BF6DC
	thumb_func_end sub_0201789C

	thumb_func_start sub_020179E4
sub_020179E4: ; 0x020179E4
	push {r3, lr}
	ldr r0, _02017A34 ; =0x000001FF
	bl sub_020BEA30
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	bl sub_020C4BB8
	bl sub_020BEF60
	mov r1, #7
	mov r2, #1
	mov r0, #0xc0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020C4BB8
	mov r2, #1
	ldr r1, _02017A38 ; =0x07000400
	mov r0, #0xc0
	lsl r2, r2, #0xa
	bl sub_020C4BB8
	mov r1, #5
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020C4BB8
	mov r2, #1
	ldr r1, _02017A3C ; =0x05000400
	mov r0, #0
	lsl r2, r2, #0xa
	bl sub_020C4BB8
	pop {r3, pc}
	; .align 2, 0
_02017A34: .word 0x000001FF
_02017A38: .word 0x07000400
_02017A3C: .word 0x05000400
	thumb_func_end sub_020179E4

	thumb_func_start sub_02017A40
sub_02017A40: ; 0x02017A40
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r6, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020C8080
	cmp r0, #0
	beq _02017A8C
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r5, r1, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02017A84
	add r0, sp, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020C81D4
	cmp r5, r0
	beq _02017A84
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02018238
	mov r4, #0
_02017A84:
	add r0, sp, #0
	bl sub_020C80C8
	b _02017A8E
_02017A8C:
	mov r4, #0
_02017A8E:
	add r0, r4, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02017A40

	thumb_func_start sub_02017A94
sub_02017A94: ; 0x02017A94
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020C8080
	cmp r0, #0
	beq _02017AC6
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r2, r1, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02017AC0
	add r0, sp, #0
	bl sub_020C81D4
_02017AC0:
	add r0, sp, #0
	bl sub_020C80C8
_02017AC6:
	add sp, #0x48
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02017A94

	thumb_func_start sub_02017ACC
sub_02017ACC: ; 0x02017ACC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _02017AF0 ; =0x021BFAE8
	mov r4, #0x7f
	sub r7, r6, #1
_02017AD6:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02017AE4
	bl sub_020181C4
	str r6, [r5, #0]
	str r6, [r5, #4]
_02017AE4:
	sub r4, r4, #1
	sub r5, #8
	cmp r4, r7
	bgt _02017AD6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02017AF0: .word 0x021BFAE8
	thumb_func_end sub_02017ACC

	thumb_func_start sub_02017AF4
sub_02017AF4: ; 0x02017AF4
	push {r3, lr}
	sub sp, #8
	ldr r0, _02017B54 ; =0x021BF67C
	mov r2, #0
	str r2, [r0, #0x34]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	mov r1, #4
	str r1, [r0, #0x54]
	mov r1, #8
	str r1, [r0, #0x58]
	ldr r0, _02017B58 ; =0x021BF6BC
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	ldr r0, _02017B5C ; =0x021BF6DC
	strb r2, [r0, #4]
	bl sub_020C9CF8
	add r0, sp, #0
	bl sub_020C9D70
	cmp r0, #1
	add r0, sp, #0
	bne _02017B3A
	bl sub_020C9E04
	add sp, #8
	pop {r3, pc}
_02017B3A:
	ldr r1, _02017B60 ; =0x000002AE
	strh r1, [r0]
	ldr r1, _02017B64 ; =0x0000058C
	strh r1, [r0, #2]
	ldr r1, _02017B68 ; =0x00000E25
	strh r1, [r0, #4]
	ldr r1, _02017B6C ; =0x00001208
	strh r1, [r0, #6]
	add r0, sp, #0
	bl sub_020C9E04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_02017B54: .word 0x021BF67C
_02017B58: .word 0x021BF6BC
_02017B5C: .word 0x021BF6DC
_02017B60: .word 0x000002AE
_02017B64: .word 0x0000058C
_02017B68: .word 0x00000E25
_02017B6C: .word 0x00001208
	thumb_func_end sub_02017AF4

	thumb_func_start sub_02017B70
sub_02017B70: ; 0x02017B70
	ldr r1, _02017B78 ; =0x021BF6DC
	strb r0, [r1, #6]
	bx lr
	nop
_02017B78: .word 0x021BF6DC
	thumb_func_end sub_02017B70

	thumb_func_start sub_02017B7C
sub_02017B7C: ; 0x02017B7C
	ldr r1, _02017B88 ; =0x021BF6DC
	ldrb r2, [r1, #7]
	orr r0, r2
	strb r0, [r1, #7]
	bx lr
	nop
_02017B88: .word 0x021BF6DC
	thumb_func_end sub_02017B7C

	thumb_func_start sub_02017B8C
sub_02017B8C: ; 0x02017B8C
	ldr r1, _02017B98 ; =0x021BF6DC
	mvn r0, r0
	ldrb r2, [r1, #7]
	and r0, r2
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
_02017B98: .word 0x021BF6DC
	thumb_func_end sub_02017B8C

	thumb_func_start sub_02017B9C
sub_02017B9C: ; 0x02017B9C
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _02017C88 ; =0x027FFFA8
	mov r0, #2
	ldrh r1, [r2]
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _02017BC2
	ldr r0, _02017C8C ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x4c]
	ldr r0, _02017C90 ; =0x021BF6BC
	add sp, #0x10
	strh r1, [r0, #0x20]
	strh r1, [r0, #0x22]
	pop {r4, pc}
_02017BC2:
	ldr r0, _02017C94 ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r1, r0
	ldr r0, _02017C98 ; =0x00002FFF
	eor r1, r0
	and r0, r1
	ldr r1, _02017C8C ; =0x021BF67C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r2, [r1, #0x38]
	add r3, r0, #0
	eor r3, r2
	and r3, r0
	str r3, [r1, #0x3c]
	str r3, [r1, #0x40]
	cmp r0, #0
	beq _02017BFA
	cmp r2, r0
	bne _02017BFA
	ldr r2, [r1, #0x50]
	sub r2, r2, #1
	str r2, [r1, #0x50]
	bne _02017C00
	str r0, [r1, #0x40]
	ldr r2, [r1, #0x54]
	str r2, [r1, #0x50]
	b _02017C00
_02017BFA:
	ldr r1, _02017C8C ; =0x021BF67C
	ldr r2, [r1, #0x58]
	str r2, [r1, #0x50]
_02017C00:
	ldr r1, _02017C8C ; =0x021BF67C
	str r0, [r1, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r1, #0x48]
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r1, #0x4c]
	bl sub_02017CA0
	ldr r0, _02017C9C ; =0x021BF6DC
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02017C2C
	add r4, sp, #8
_02017C1C:
	bl sub_020C9F2C
	add r0, r4, #0
	bl sub_020C9FC0
	cmp r0, #0
	bne _02017C1C
	b _02017C32
_02017C2C:
	add r0, sp, #8
	bl sub_020CA1A8
_02017C32:
	add r0, sp, #0
	add r1, sp, #8
	bl sub_020CA4E8
	add r1, sp, #0
	ldrh r3, [r1, #6]
	cmp r3, #0
	bne _02017C4E
	ldrh r2, [r1]
	ldr r0, _02017C90 ; =0x021BF6BC
	strh r2, [r0, #0x1c]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1e]
	b _02017C72
_02017C4E:
	ldr r0, _02017C90 ; =0x021BF6BC
	ldrh r2, [r0, #0x22]
	cmp r2, #0
	beq _02017C6E
	cmp r3, #1
	beq _02017C62
	cmp r3, #2
	beq _02017C68
	cmp r3, #3
	b _02017C72
_02017C62:
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1e]
	b _02017C72
_02017C68:
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	b _02017C72
_02017C6E:
	mov r0, #0
	strh r0, [r1, #4]
_02017C72:
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldr r0, _02017C90 ; =0x021BF6BC
	ldrh r1, [r0, #0x22]
	eor r1, r2
	and r1, r2
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	add sp, #0x10
	pop {r4, pc}
	nop
_02017C88: .word 0x027FFFA8
_02017C8C: .word 0x021BF67C
_02017C90: .word 0x021BF6BC
_02017C94: .word 0x04000130
_02017C98: .word 0x00002FFF
_02017C9C: .word 0x021BF6DC
	thumb_func_end sub_02017B9C

	thumb_func_start sub_02017CA0
sub_02017CA0: ; 0x02017CA0
	ldr r0, _02017DC8 ; =0x021BF67C
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bls _02017CAA
	b _02017DC4
_02017CAA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02017CB6: ; jump table
	.short _02017DC4 - _02017CB6 - 2 ; case 0
	.short _02017CBE - _02017CB6 - 2 ; case 1
	.short _02017CF4 - _02017CB6 - 2 ; case 2
	.short _02017D7A - _02017CB6 - 2 ; case 3
_02017CBE:
	ldr r2, [r0, #0x48]
	mov r1, #8
	add r3, r2, #0
	tst r3, r1
	beq _02017CCE
	lsl r1, r1, #7
	orr r1, r2
	str r1, [r0, #0x48]
_02017CCE:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #8
	ldr r2, [r1, #0x44]
	add r3, r2, #0
	tst r3, r0
	beq _02017CE0
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x44]
_02017CE0:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #8
	ldr r2, [r1, #0x4c]
	add r3, r2, #0
	tst r3, r0
	beq _02017DC4
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x4c]
	bx lr
_02017CF4:
	ldr r3, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, #0
	mov r1, #0
	tst r2, r0
	beq _02017D06
	lsl r0, r0, #1
	orr r1, r0
_02017D06:
	mov r0, #2
	lsl r0, r0, #0xa
	add r2, r3, #0
	tst r2, r0
	beq _02017D14
	lsr r0, r0, #1
	orr r1, r0
_02017D14:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r0, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x48]
	and r0, r3
	orr r0, r1
	str r0, [r2, #0x48]
	ldr r3, [r2, #0x44]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _02017D32
	lsl r1, r1, #1
	orr r0, r1
_02017D32:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _02017D40
	lsr r1, r1, #1
	orr r0, r1
_02017D40:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r1, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x44]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x44]
	ldr r3, [r2, #0x4c]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _02017D5E
	lsl r1, r1, #1
	orr r0, r1
_02017D5E:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _02017D6C
	lsr r1, r1, #1
	orr r0, r1
_02017D6C:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r1, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x4c]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x4c]
	bx lr
_02017D7A:
	mov r1, #2
	ldr r2, [r0, #0x48]
	lsl r1, r1, #8
	tst r1, r2
	beq _02017D8A
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0x48]
_02017D8A:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #2
	ldr r2, [r1, #0x44]
	lsl r0, r0, #8
	tst r0, r2
	beq _02017D9C
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x44]
_02017D9C:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #2
	ldr r2, [r1, #0x4c]
	lsl r0, r0, #8
	tst r0, r2
	beq _02017DAE
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x4c]
_02017DAE:
	ldr r1, _02017DC8 ; =0x021BF67C
	ldr r0, _02017DD0 ; =0x0000FCFF
	ldr r2, [r1, #0x48]
	and r2, r0
	str r2, [r1, #0x48]
	ldr r2, [r1, #0x44]
	and r2, r0
	str r2, [r1, #0x44]
	ldr r2, [r1, #0x4c]
	and r0, r2
	str r0, [r1, #0x4c]
_02017DC4:
	bx lr
	nop
_02017DC8: .word 0x021BF67C
_02017DCC: .word 0x0000F3FF
_02017DD0: .word 0x0000FCFF
	thumb_func_end sub_02017CA0

	thumb_func_start sub_02017DD4
sub_02017DD4: ; 0x02017DD4
	ldr r2, _02017DDC ; =0x021BF67C
	str r0, [r2, #0x54]
	str r1, [r2, #0x58]
	bx lr
	; .align 2, 0
_02017DDC: .word 0x021BF67C
	thumb_func_end sub_02017DD4

	thumb_func_start sub_02017DE0
sub_02017DE0: ; 0x02017DE0
	ldr r1, _02017DEC ; =0x021BF6DC
	ldrb r2, [r1, #8]
	orr r0, r2
	strb r0, [r1, #8]
	bx lr
	nop
_02017DEC: .word 0x021BF6DC
	thumb_func_end sub_02017DE0

	thumb_func_start sub_02017DF0
sub_02017DF0: ; 0x02017DF0
	ldr r1, _02017DFC ; =0x021BF6DC
	mvn r0, r0
	ldrb r2, [r1, #8]
	and r0, r2
	strb r0, [r1, #8]
	bx lr
	; .align 2, 0
_02017DFC: .word 0x021BF6DC
	thumb_func_end sub_02017DF0

	thumb_func_start sub_02017E00
sub_02017E00: ; 0x02017E00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02017E24 ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02017E10
	bl sub_02022974
_02017E10:
	add r0, r4, #0
	mov r1, #4
	bl sub_02018184
	ldr r1, _02017E24 ; =0x021BF67C
	str r0, [r1, #0x70]
	ldr r1, _02017E28 ; =0x2F93A1BC
	str r1, [r0, #0]
	pop {r4, pc}
	nop
_02017E24: .word 0x021BF67C
_02017E28: .word 0x2F93A1BC
	thumb_func_end sub_02017E00

	thumb_func_start sub_02017E2C
sub_02017E2C: ; 0x02017E2C
	push {r3, lr}
	ldr r0, _02017E50 ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _02017E3A
	bl sub_02022974
_02017E3A:
	ldr r0, _02017E50 ; =0x021BF67C
	mov r2, #0
	ldr r1, [r0, #0x70]
	str r2, [r1, #0]
	ldr r0, [r0, #0x70]
	bl sub_020181C4
	ldr r0, _02017E50 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x70]
	pop {r3, pc}
	; .align 2, 0
_02017E50: .word 0x021BF67C
	thumb_func_end sub_02017E2C

	thumb_func_start sub_02017E54
sub_02017E54: ; 0x02017E54
	ldr r0, _02017E6C ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02017E68
	ldr r1, [r0, #0]
	ldr r0, _02017E70 ; =0x2F93A1BC
	cmp r1, r0
	bne _02017E68
	mov r0, #1
	bx lr
_02017E68:
	mov r0, #0
	bx lr
	; .align 2, 0
_02017E6C: .word 0x021BF67C
_02017E70: .word 0x2F93A1BC
	thumb_func_end sub_02017E54

	thumb_func_start sub_02017E74
sub_02017E74: ; 0x02017E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x18
	add r6, r2, #0
	str r0, [sp, #4]
	cmp r6, r0
	bhs _02017E8C
	add r6, r0, #0
_02017E8C:
	cmp r3, #0
	beq _02017EAA
	mov r0, #3
	tst r0, r3
	beq _02017EA0
	mov r0, #3
_02017E98:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _02017E98
_02017EA0:
	mov r0, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020C3060
_02017EAA:
	ldr r1, [sp, #4]
	lsl r7, r6, #1
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r7, r1
	mov r0, #0
	add r1, r6, r1
	mov r2, #4
	bl sub_020C3060
	ldr r1, _02017F9C ; =0x021BFAF0
	str r0, [r1, #0]
	ldr r1, [sp, #4]
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02017F9C ; =0x021BFAF0
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r1, _02017F9C ; =0x021BFAF0
	str r2, [r1, #8]
	add r1, r2, r0
	ldr r0, _02017F9C ; =0x021BFAF0
	str r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0x10]
	strh r6, [r0, #0x14]
	strh r4, [r0, #0x16]
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02017F9C ; =0x021BFAF0
	cmp r4, #0
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	bls _02017F4C
	str r7, [sp]
_02017EFE:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02017F08
	cmp r0, #2
	beq _02017F14
_02017F08:
	ldr r1, [r5, #0]
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	b _02017F1E
_02017F14:
	ldr r1, [r5, #0]
	mov r0, #2
	mov r2, #4
	bl sub_020C30CC
_02017F1E:
	cmp r0, #0
	beq _02017F3A
	ldr r1, [r5, #0]
	mov r2, #0
	bl sub_020A5404
	ldr r1, _02017F9C ; =0x021BFAF0
	ldr r2, [r1, #0]
	ldr r1, [sp]
	str r0, [r2, r1]
	ldr r0, _02017F9C ; =0x021BFAF0
	ldr r0, [r0, #0x10]
	strb r7, [r0, r7]
	b _02017F3E
_02017F3A:
	bl sub_02022974
_02017F3E:
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	add r5, #8
	str r0, [sp]
	cmp r7, r4
	blo _02017EFE
_02017F4C:
	ldr r0, [sp, #4]
	add r1, r0, #1
	cmp r4, r1
	bhs _02017F6C
	ldr r3, _02017F9C ; =0x021BFAF0
	lsl r2, r4, #2
	mov r0, #0
_02017F5A:
	ldr r5, [r3, #0]
	str r0, [r5, r2]
	ldrh r7, [r3, #0x1a]
	ldr r5, [r3, #0x10]
	add r2, r2, #4
	strb r7, [r5, r4]
	add r4, r4, #1
	cmp r4, r1
	blo _02017F5A
_02017F6C:
	cmp r4, r6
	bhs _02017F7E
	ldr r0, _02017F9C ; =0x021BFAF0
_02017F72:
	ldrh r2, [r0, #0x1a]
	ldr r1, [r0, #0x10]
	strb r2, [r1, r4]
	add r4, r4, #1
	cmp r4, r6
	blo _02017F72
_02017F7E:
	mov r4, #0
	cmp r6, #0
	bls _02017F96
	ldr r0, _02017F9C ; =0x021BFAF0
	add r3, r4, #0
	add r2, r4, #0
_02017F8A:
	ldr r1, [r0, #0xc]
	add r4, r4, #1
	strh r2, [r1, r3]
	add r3, r3, #2
	cmp r4, r6
	blo _02017F8A
_02017F96:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02017F9C: .word 0x021BFAF0
	thumb_func_end sub_02017E74

	thumb_func_start sub_02017FA0
sub_02017FA0: ; 0x02017FA0
	ldr r1, _02017FC4 ; =0x021BFAF0
	ldrh r0, [r1, #0x16]
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bge _02017FBE
	ldr r2, [r1, #0]
	lsl r1, r0, #2
	add r2, r2, r1
_02017FB0:
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02017FC2
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r3
	blt _02017FB0
_02017FBE:
	mov r0, #0
	mvn r0, r0
_02017FC2:
	bx lr
	; .align 2, 0
_02017FC4: .word 0x021BFAF0
	thumb_func_end sub_02017FA0

	thumb_func_start sub_02017FC8
sub_02017FC8: ; 0x02017FC8
	push {r3, lr}
	mov r3, #4
	bl sub_02017FE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02017FC8

	thumb_func_start sub_02017FD4
sub_02017FD4: ; 0x02017FD4
	push {r3, lr}
	mov r3, #3
	mvn r3, r3
	bl sub_02017FE0
	pop {r3, pc}
	thumb_func_end sub_02017FD4

	thumb_func_start sub_02017FE0
sub_02017FE0: ; 0x02017FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _02017FF8
	bl sub_02022974
_02017FF8:
	ldr r1, _02018078 ; =0x021BFAF0
	ldr r0, [r1, #0x10]
	ldrh r3, [r1, #0x1a]
	ldrb r2, [r0, r5]
	cmp r3, r2
	bne _0201806E
	ldrb r0, [r0, r4]
	ldr r1, [r1, #0]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _02018068
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020A5448
	str r0, [sp, #4]
	cmp r0, #0
	beq _02018062
	bl sub_02017FA0
	add r7, r0, #0
	bmi _0201805C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	mov r2, #0
	lsl r4, r7, #2
	bl sub_020A5404
	ldr r1, _02018078 ; =0x021BFAF0
	ldr r2, [r1, #0]
	str r0, [r2, r4]
	ldr r0, [r1, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02018056
	ldr r0, [r1, #4]
	str r6, [r0, r4]
	ldr r0, [sp, #4]
	ldr r2, [r1, #8]
	add sp, #8
	str r0, [r2, r4]
	ldr r0, [r1, #0x10]
	strb r7, [r0, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02018056:
	bl sub_02022974
	b _02018072
_0201805C:
	bl sub_02022974
	b _02018072
_02018062:
	bl sub_02022974
	b _02018072
_02018068:
	bl sub_02022974
	b _02018072
_0201806E:
	bl sub_02022974
_02018072:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02018078: .word 0x021BFAF0
	thumb_func_end sub_02017FE0

	thumb_func_start sub_0201807C
sub_0201807C: ; 0x0201807C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _0201808C
	bl sub_02022974
_0201808C:
	ldr r0, _020180EC ; =0x021BFAF0
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020180EA
	bl sub_020A543C
	ldr r1, _020180EC ; =0x021BFAF0
	ldr r0, [r1, #0x10]
	ldrb r0, [r0, r4]
	lsl r2, r0, #2
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	cmp r0, #0
	beq _020180BE
	cmp r1, #0
	beq _020180BE
	bl sub_020A55D8
	b _020180C2
_020180BE:
	bl sub_02022974
_020180C2:
	ldr r1, _020180EC ; =0x021BFAF0
	mov r0, #0
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #4]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #8]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldrh r2, [r1, #0x1a]
	ldr r0, [r1, #0x10]
	strb r2, [r0, r4]
_020180EA:
	pop {r4, pc}
	; .align 2, 0
_020180EC: .word 0x021BFAF0
	thumb_func_end sub_0201807C

	thumb_func_start sub_020180F0
sub_020180F0: ; 0x020180F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r5, #0
	bne _02018102
	bl sub_02022974
_02018102:
	bl sub_020C3D98
	add r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020A5448
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020C3DAC
	cmp r4, #0
	beq _02018130
	ldr r1, [r4, #0xc]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0xc]
	add r4, #0x10
_02018130:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020180F0

	thumb_func_start sub_02018134
sub_02018134: ; 0x02018134
	push {r3, lr}
	bl sub_02036780
	cmp r0, #0
	beq _02018142
	bl sub_0209B49C
_02018142:
	pop {r3, pc}
	thumb_func_end sub_02018134

	thumb_func_start sub_02018144
sub_02018144: ; 0x02018144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02018180 ; =0x021BFAF0
	mov r4, #0
	ldrh r2, [r0, #0x14]
	cmp r5, r2
	bhs _02018166
	ldr r2, [r0, #0]
	ldr r0, [r0, #0x10]
	add r3, r5, #0
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #4
	bl sub_020180F0
	add r4, r0, #0
_02018166:
	cmp r4, #0
	beq _02018178
	ldr r0, _02018180 ; =0x021BFAF0
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201817C
_02018178:
	bl sub_02018134
_0201817C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02018180: .word 0x021BFAF0
	thumb_func_end sub_02018144

	thumb_func_start sub_02018184
sub_02018184: ; 0x02018184
	push {r3, r4, r5, lr}
	ldr r2, _020181C0 ; =0x021BFAF0
	add r5, r0, #0
	ldrh r0, [r2, #0x14]
	mov r4, #0
	cmp r5, r0
	bhs _020181A6
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	add r3, r5, #0
	ldrb r2, [r2, r5]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	sub r2, r4, #4
	bl sub_020180F0
	add r4, r0, #0
_020181A6:
	cmp r4, #0
	beq _020181B8
	ldr r0, _020181C0 ; =0x021BFAF0
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _020181BC
_020181B8:
	bl sub_02018134
_020181BC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020181C0: .word 0x021BFAF0
	thumb_func_end sub_02018184

	thumb_func_start sub_020181C4
sub_020181C4: ; 0x020181C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	sub r0, r6, #4
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02018234 ; =0x021BFAF0
	ldrh r1, [r0, #0x14]
	cmp r4, r1
	bhs _0201822C
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	bne _020181EA
	bl sub_02022974
_020181EA:
	ldr r0, _02018234 ; =0x021BFAF0
	lsl r5, r4, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _020181FC
	add r0, r4, #0
	bl sub_0201833C
_020181FC:
	ldr r0, _02018234 ; =0x021BFAF0
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201820A
	bl sub_02022974
_0201820A:
	ldr r0, _02018234 ; =0x021BFAF0
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r5]
	sub r0, r0, #1
	strh r0, [r1, r5]
	bl sub_020C3D98
	sub r6, #0x10
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
	pop {r3, r4, r5, r6, r7, pc}
_0201822C:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02018234: .word 0x021BFAF0
	thumb_func_end sub_020181C4

	thumb_func_start sub_02018238
sub_02018238: ; 0x02018238
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _0201824A
	bl sub_02022974
_0201824A:
	ldr r0, _020182A0 ; =0x021BFAF0
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	bhs _0201829A
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	bne _02018264
	bl sub_02022974
_02018264:
	sub r0, r4, #4
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	beq _02018274
	bl sub_02022974
_02018274:
	sub r4, #0x10
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020A55D8
	ldr r0, _020182A0 ; =0x021BFAF0
	lsl r4, r5, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r4]
	cmp r0, #0
	bne _0201828E
	bl sub_02022974
_0201828E:
	ldr r0, _020182A0 ; =0x021BFAF0
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r4]
	sub r0, r0, #1
	strh r0, [r1, r4]
	pop {r4, r5, r6, pc}
_0201829A:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020182A0: .word 0x021BFAF0
	thumb_func_end sub_02018238

	thumb_func_start sub_020182A4
sub_020182A4: ; 0x020182A4
	push {r3, lr}
	ldr r1, _020182C8 ; =0x021BFAF0
	ldrh r2, [r1, #0x14]
	cmp r0, r2
	bhs _020182BE
	ldr r2, [r1, #0]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_020A5614
	pop {r3, pc}
_020182BE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_020182C8: .word 0x021BFAF0
	thumb_func_end sub_020182A4

	thumb_func_start sub_020182CC
sub_020182CC: ; 0x020182CC
	push {r4, lr}
	ldr r4, _020182EC ; =0x021BFAF0
	ldrh r3, [r4, #0x14]
	cmp r1, r3
	bhs _020182E6
	ldr r3, [r4, #0]
	ldr r4, [r4, #0x10]
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020A5A14
	pop {r4, pc}
_020182E6:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_020182EC: .word 0x021BFAF0
	thumb_func_end sub_020182CC

	thumb_func_start sub_020182F0
sub_020182F0: ; 0x020182F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _02018302
	bl sub_02022974
_02018302:
	add r0, r5, #0
	sub r0, #0x10
	bl sub_020A564C
	add r4, #0x10
	cmp r0, r4
	blo _02018330
	sub r2, r5, #4
	ldr r0, _02018338 ; =0x021BFAF0
	ldr r2, [r2, #0]
	ldr r1, [r0, #0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	lsr r2, r2, #0x18
	ldrb r0, [r0, r2]
	sub r5, #0x10
	add r2, r4, #0
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_020A5478
	pop {r3, r4, r5, pc}
_02018330:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02018338: .word 0x021BFAF0
	thumb_func_end sub_020182F0

	thumb_func_start sub_0201833C
sub_0201833C: ; 0x0201833C
	mov r0, #1
	bx lr
	thumb_func_end sub_0201833C

	thumb_func_start sub_02018340
sub_02018340: ; 0x02018340
	push {r3, r4, r5, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	str r5, [r4, #0]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018340

	thumb_func_start sub_02018364
sub_02018364: ; 0x02018364
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02018364

	thumb_func_start sub_02018368
sub_02018368: ; 0x02018368
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl sub_020BDE40
	ldr r0, [r4, #8]
	bl sub_020BDEA8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0201839C ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2, #0]
	ldr r1, [r2, #0]
	asr r0, r0, #3
	and r0, r1
	str r0, [r2, #0]
	bl sub_0201FF00
	bl sub_0201FF68
	pop {r4, pc}
	nop
_0201839C: .word 0xC7FFFFFF
	thumb_func_end sub_02018368

	thumb_func_start sub_020183A0
sub_020183A0: ; 0x020183A0
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _020183B8
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	bl sub_020BDE40
	bl sub_0201FF00
	pop {r3, pc}
_020183B8:
	ldr r0, [r2, #8]
	bl sub_020BDEA8
	bl sub_0201FF68
	pop {r3, pc}
	thumb_func_end sub_020183A0

	thumb_func_start sub_020183C4
sub_020183C4: ; 0x020183C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r4, r2, #0
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #8]
	bl sub_02018F80
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #7
	bls _020183E2
	b _02018800
_020183E2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020183EE: ; jump table
	.short _020183FE - _020183EE - 2 ; case 0
	.short _02018456 - _020183EE - 2 ; case 1
	.short _020184AE - _020183EE - 2 ; case 2
	.short _02018550 - _020183EE - 2 ; case 3
	.short _020185F2 - _020183EE - 2 ; case 4
	.short _0201864A - _020183EE - 2 ; case 5
	.short _020186A2 - _020183EE - 2 ; case 6
	.short _02018760 - _020183EE - 2 ; case 7
_020183FE:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0xc]
	ldr r2, _02018744 ; =0x04000008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201844C
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_0201844C:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_02018456:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x10]
	ldr r2, _02018748 ; =0x0400000A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020184A4
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_020184A4:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_020184AE:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020184C4
	cmp r0, #1
	beq _020184E6
	cmp r0, #2
	beq _02018508
_020184C4:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201874C ; =0x0400000C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _02018528
_020184E6:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201874C ; =0x0400000C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _02018528
_02018508:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201874C ; =0x0400000C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_02018528:
	ldr r0, _0201874C ; =0x0400000C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _02018546
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_02018546:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
_02018550:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02018566
	cmp r0, #1
	beq _02018588
	cmp r0, #2
	beq _020185AA
_02018566:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018750 ; =0x0400000E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020185CA
_02018588:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _02018750 ; =0x0400000E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020185CA
_020185AA:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018750 ; =0x0400000E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_020185CA:
	ldr r0, _02018750 ; =0x0400000E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020185E8
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_020185E8:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
_020185F2:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x14]
	ldr r2, _02018754 ; =0x04001008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02018640
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_02018640:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_0201864A:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrb r3, [r4, #0x14]
	lsl r0, r0, #7
	mov ip, r0
	ldr r2, _02018758 ; =0x0400100A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	lsl r3, r3, #0xd
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	mov r1, ip
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02018698
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_02018698:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_020186A2:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020186B8
	cmp r0, #1
	beq _020186DA
	cmp r0, #2
	beq _020186FC
_020186B8:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201875C ; =0x0400100C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201871C
_020186DA:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201875C ; =0x0400100C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201871C
_020186FC:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201875C ; =0x0400100C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201871C:
	ldr r0, _0201875C ; =0x0400100C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201873A
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_0201873A:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
	; .align 2, 0
_02018744: .word 0x04000008
_02018748: .word 0x0400000A
_0201874C: .word 0x0400000C
_02018750: .word 0x0400000E
_02018754: .word 0x04001008
_02018758: .word 0x0400100A
_0201875C: .word 0x0400100C
_02018760:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02018776
	cmp r0, #1
	beq _02018798
	cmp r0, #2
	beq _020187BA
_02018776:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018894 ; =0x0400100E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020187DA
_02018798:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _02018894 ; =0x0400100E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020187DA
_020187BA:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018894 ; =0x0400100E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_020187DA:
	ldr r0, _02018894 ; =0x0400100E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020187F8
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_020187F8:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
_02018800:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r5, r0, #0
	ldr r0, [sp]
	mul r5, r1
	add r2, r0, r5
	mov r3, #0
	mov r0, #1
	strh r3, [r2, #0x20]
	lsl r0, r0, #0xc
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	str r3, [r2, #0x30]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02018848
	ldr r0, [sp]
	ldr r6, [sp]
	ldr r0, [r0, #0]
	add r6, #8
	bl sub_02018144
	str r0, [r6, r5]
	ldr r1, [r6, r5]
	ldr r2, [r4, #8]
	mov r0, #0
	bl sub_020C4AF0
	ldr r0, [sp]
	ldr r2, [r4, #8]
	add r1, r0, r5
	str r2, [r1, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0x10]
	b _0201884E
_02018848:
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
_0201884E:
	ldr r0, [sp]
	ldrb r1, [r4, #0x10]
	add r0, r0, r5
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #8]
	strb r1, [r0, #0x1c]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0x1e]
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _02018870
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	bne _02018870
	mov r1, #0x20
	strb r1, [r0, #0x1f]
	b _02018878
_02018870:
	ldr r0, [sp]
	mov r1, #0x40
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_02018878:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #0]
	mov r2, #0
	bl sub_02019184
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #4]
	mov r2, #3
	bl sub_02019184
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02018894: .word 0x0400100E
	thumb_func_end sub_020183C4

	thumb_func_start sub_02018898
sub_02018898: ; 0x02018898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	add r0, r3, #0
	cmp r1, #0
	bne _020188B0
	mov r2, #0x2c
	mul r2, r4
	add r2, r5, r2
	strb r0, [r2, #0x1e]
_020188B0:
	cmp r4, #7
	bls _020188B6
	b _02018F7C
_020188B6:
	add r2, r4, r4
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020188C2: ; jump table
	.short _020188D2 - _020188C2 - 2 ; case 0
	.short _0201893E - _020188C2 - 2 ; case 1
	.short _020189AA - _020188C2 - 2 ; case 2
	.short _02018ADE - _020188C2 - 2 ; case 3
	.short _02018C28 - _020188C2 - 2 ; case 4
	.short _02018C94 - _020188C2 - 2 ; case 5
	.short _02018D00 - _020188C2 - 2 ; case 6
	.short _02018E34 - _020188C2 - 2 ; case 7
_020188D2:
	ldr r2, _02018BE8 ; =0x04000008
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x1e]
	bne _020188EE
	ldrh r3, [r2, #0x1e]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1e]
	b _02018900
_020188EE:
	cmp r1, #2
	bne _02018900
	ldrh r3, [r2, #0x1e]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1e]
_02018900:
	add r0, sp, #0
	ldrh r3, [r0, #0x1e]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018BE8 ; =0x04000008
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0201893E:
	ldr r2, _02018BF0 ; =0x0400000A
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x1c]
	bne _0201895A
	ldrh r3, [r2, #0x1c]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1c]
	b _0201896C
_0201895A:
	cmp r1, #2
	bne _0201896C
	ldrh r3, [r2, #0x1c]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1c]
_0201896C:
	add r0, sp, #0
	ldrh r3, [r0, #0x1c]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018BF0 ; =0x0400000A
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_020189AA:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _020189BE
	cmp r3, #1
	beq _02018A1E
	cmp r3, #2
	beq _02018A7E
_020189BE:
	ldr r3, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0x1a]
	bne _020189DA
	ldrh r4, [r3, #0x1a]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x1a]
	b _020189EC
_020189DA:
	cmp r1, #2
	bne _020189EC
	ldrh r4, [r3, #0x1a]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x1a]
_020189EC:
	add r0, sp, #0
	ldrh r3, [r0, #0x1a]
	add r2, r5, r2
	ldr r6, _02018BF4 ; =0x0400000C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018A1E:
	ldr r2, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x18]
	bne _02018A3A
	ldrh r3, [r2, #0x18]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x18]
	b _02018A4C
_02018A3A:
	cmp r1, #2
	bne _02018A4C
	ldrh r3, [r2, #0x18]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x18]
_02018A4C:
	add r0, sp, #0
	ldrh r3, [r0, #0x18]
	ldr r6, _02018BF4 ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018A7E:
	ldr r2, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x16]
	bne _02018A9A
	ldrh r3, [r2, #0x16]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x16]
	b _02018AAC
_02018A9A:
	cmp r1, #2
	bne _02018AAC
	ldrh r3, [r2, #0x16]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x16]
_02018AAC:
	add r0, sp, #0
	ldrh r3, [r0, #0x16]
	ldr r6, _02018BF4 ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018ADE:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018AF2
	cmp r3, #1
	beq _02018B52
	cmp r3, #2
	beq _02018BB2
_02018AF2:
	ldr r3, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0x14]
	bne _02018B0E
	ldrh r4, [r3, #0x14]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x14]
	b _02018B20
_02018B0E:
	cmp r1, #2
	bne _02018B20
	ldrh r4, [r3, #0x14]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x14]
_02018B20:
	add r0, sp, #0
	ldrh r3, [r0, #0x14]
	add r2, r5, r2
	ldr r6, _02018BF8 ; =0x0400000E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018B52:
	ldr r2, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x12]
	bne _02018B6E
	ldrh r3, [r2, #0x12]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x12]
	b _02018B80
_02018B6E:
	cmp r1, #2
	bne _02018B80
	ldrh r3, [r2, #0x12]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x12]
_02018B80:
	add r0, sp, #0
	ldrh r3, [r0, #0x12]
	ldr r6, _02018BF8 ; =0x0400000E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018BB2:
	ldr r2, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x10]
	bne _02018BCE
	ldrh r3, [r2, #0x10]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x10]
	b _02018BE0
_02018BCE:
	cmp r1, #2
	bne _02018BE0
	ldrh r3, [r2, #0x10]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x10]
_02018BE0:
	add r0, sp, #0
	ldrh r3, [r0, #0x10]
	ldr r6, _02018BF8 ; =0x0400000E
	b _02018BFC
	; .align 2, 0
_02018BE8: .word 0x04000008
_02018BEC: .word 0xFFFFE0FF
_02018BF0: .word 0x0400000A
_02018BF4: .word 0x0400000C
_02018BF8: .word 0x0400000E
_02018BFC:
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018C28:
	ldr r2, _02018F40 ; =0x04001008
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0xe]
	bne _02018C44
	ldrh r3, [r2, #0xe]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xe]
	b _02018C56
_02018C44:
	cmp r1, #2
	bne _02018C56
	ldrh r3, [r2, #0xe]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xe]
_02018C56:
	add r0, sp, #0
	ldrh r3, [r0, #0xe]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018F40 ; =0x04001008
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02018C94:
	ldr r2, _02018F48 ; =0x0400100A
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0xc]
	bne _02018CB0
	ldrh r3, [r2, #0xc]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xc]
	b _02018CC2
_02018CB0:
	cmp r1, #2
	bne _02018CC2
	ldrh r3, [r2, #0xc]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xc]
_02018CC2:
	add r0, sp, #0
	ldrh r3, [r0, #0xc]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018F48 ; =0x0400100A
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02018D00:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018D14
	cmp r3, #1
	beq _02018D74
	cmp r3, #2
	beq _02018DD4
_02018D14:
	ldr r3, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0xa]
	bne _02018D30
	ldrh r4, [r3, #0xa]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0xa]
	b _02018D42
_02018D30:
	cmp r1, #2
	bne _02018D42
	ldrh r4, [r3, #0xa]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0xa]
_02018D42:
	add r0, sp, #0
	ldrh r3, [r0, #0xa]
	add r2, r5, r2
	ldr r6, _02018F4C ; =0x0400100C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018D74:
	ldr r2, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #8]
	bne _02018D90
	ldrh r3, [r2, #8]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #8]
	b _02018DA2
_02018D90:
	cmp r1, #2
	bne _02018DA2
	ldrh r3, [r2, #8]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #8]
_02018DA2:
	add r0, sp, #0
	ldrh r3, [r0, #8]
	ldr r6, _02018F4C ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018DD4:
	ldr r2, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #6]
	bne _02018DF0
	ldrh r3, [r2, #6]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #6]
	b _02018E02
_02018DF0:
	cmp r1, #2
	bne _02018E02
	ldrh r3, [r2, #6]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #6]
_02018E02:
	add r0, sp, #0
	ldrh r3, [r0, #6]
	ldr r6, _02018F4C ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018E34:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018E48
	cmp r3, #1
	beq _02018EA8
	cmp r3, #2
	beq _02018F08
_02018E48:
	ldr r3, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #4]
	bne _02018E64
	ldrh r4, [r3, #4]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #4]
	b _02018E76
_02018E64:
	cmp r1, #2
	bne _02018E76
	ldrh r4, [r3, #4]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #4]
_02018E76:
	add r0, sp, #0
	ldrh r3, [r0, #4]
	add r2, r5, r2
	ldr r6, _02018F50 ; =0x0400100E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018EA8:
	ldr r2, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #2]
	bne _02018EC4
	ldrh r3, [r2, #2]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #2]
	b _02018ED6
_02018EC4:
	cmp r1, #2
	bne _02018ED6
	ldrh r3, [r2, #2]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #2]
_02018ED6:
	add r0, sp, #0
	ldrh r3, [r0, #2]
	ldr r6, _02018F50 ; =0x0400100E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018F08:
	ldr r2, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2]
	bne _02018F24
	ldrh r3, [r2]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2]
	b _02018F36
_02018F24:
	cmp r1, #2
	bne _02018F36
	ldrh r3, [r2]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2]
_02018F36:
	add r0, sp, #0
	ldrh r3, [r0]
	ldr r6, _02018F50 ; =0x0400100E
	b _02018F54
	nop
_02018F40: .word 0x04001008
_02018F44: .word 0xFFFFE0FF
_02018F48: .word 0x0400100A
_02018F4C: .word 0x0400100C
_02018F50: .word 0x0400100E
_02018F54:
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
_02018F7C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02018898

	thumb_func_start sub_02018F80
sub_02018F80: ; 0x02018F80
	cmp r1, #0
	beq _02018F8E
	cmp r1, #1
	beq _02018FAE
	cmp r1, #2
	beq _02018FCE
	b _02018FEE
_02018F8E:
	cmp r0, #1
	bne _02018F96
	mov r0, #0
	bx lr
_02018F96:
	cmp r0, #2
	bne _02018F9E
	mov r0, #2
	bx lr
_02018F9E:
	cmp r0, #3
	bne _02018FA6
	mov r0, #1
	bx lr
_02018FA6:
	cmp r0, #4
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FAE:
	cmp r0, #0
	bne _02018FB6
	mov r0, #0
	bx lr
_02018FB6:
	cmp r0, #1
	bne _02018FBE
	mov r0, #1
	bx lr
_02018FBE:
	cmp r0, #4
	bne _02018FC6
	mov r0, #2
	bx lr
_02018FC6:
	cmp r0, #5
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FCE:
	cmp r0, #0
	bne _02018FD6
	mov r0, #0
	bx lr
_02018FD6:
	cmp r0, #1
	bne _02018FDE
	mov r0, #1
	bx lr
_02018FDE:
	cmp r0, #4
	bne _02018FE6
	mov r0, #2
	bx lr
_02018FE6:
	cmp r0, #5
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FEE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02018F80

	thumb_func_start sub_02018FF4
sub_02018FF4: ; 0x02018FF4
	cmp r0, #5
	bhi _02019042
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019004: ; jump table
	.short _02019010 - _02019004 - 2 ; case 0
	.short _02019018 - _02019004 - 2 ; case 1
	.short _02019020 - _02019004 - 2 ; case 2
	.short _0201902A - _02019004 - 2 ; case 3
	.short _02019034 - _02019004 - 2 ; case 4
	.short _0201903C - _02019004 - 2 ; case 5
_02019010:
	mov r0, #0x10
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02019018:
	mov r0, #0x20
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02019020:
	mov r0, #0x20
	strb r0, [r1]
	mov r0, #0x40
	strb r0, [r2]
	bx lr
_0201902A:
	mov r0, #0x40
	strb r0, [r1]
	mov r0, #0x20
	strb r0, [r2]
	bx lr
_02019034:
	mov r0, #0x40
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_0201903C:
	mov r0, #0x80
	strb r0, [r1]
	strb r0, [r2]
_02019042:
	bx lr
	thumb_func_end sub_02018FF4

	thumb_func_start sub_02019044
sub_02019044: ; 0x02019044
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0x2c
	add r5, r1, #0
	mul r5, r2
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0201905E
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, r5]
_0201905E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019044

	thumb_func_start sub_02019060
sub_02019060: ; 0x02019060
	cmp r0, #7
	bhi _020190FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019070: ; jump table
	.short _02019080 - _02019070 - 2 ; case 0
	.short _02019090 - _02019070 - 2 ; case 1
	.short _020190A0 - _02019070 - 2 ; case 2
	.short _020190B0 - _02019070 - 2 ; case 3
	.short _020190C0 - _02019070 - 2 ; case 4
	.short _020190D0 - _02019070 - 2 ; case 5
	.short _020190E0 - _02019070 - 2 ; case 6
	.short _020190F0 - _02019070 - 2 ; case 7
_02019080:
	ldr r2, _02019100 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02019090:
	ldr r2, _02019104 ; =0x0400000A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190A0:
	ldr r2, _02019108 ; =0x0400000C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190B0:
	ldr r2, _0201910C ; =0x0400000E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190C0:
	ldr r2, _02019110 ; =0x04001008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190D0:
	ldr r2, _02019114 ; =0x0400100A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190E0:
	ldr r2, _02019118 ; =0x0400100C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190F0:
	ldr r2, _0201911C ; =0x0400100E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
_020190FE:
	bx lr
	; .align 2, 0
_02019100: .word 0x04000008
_02019104: .word 0x0400000A
_02019108: .word 0x0400000C
_0201910C: .word 0x0400000E
_02019110: .word 0x04001008
_02019114: .word 0x0400100A
_02019118: .word 0x0400100C
_0201911C: .word 0x0400100E
	thumb_func_end sub_02019060

	thumb_func_start sub_02019120
sub_02019120: ; 0x02019120
	push {r3, lr}
	cmp r0, #7
	bhi _02019180
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019132: ; jump table
	.short _02019142 - _02019132 - 2 ; case 0
	.short _0201914A - _02019132 - 2 ; case 1
	.short _02019152 - _02019132 - 2 ; case 2
	.short _0201915A - _02019132 - 2 ; case 3
	.short _02019162 - _02019132 - 2 ; case 4
	.short _0201916A - _02019132 - 2 ; case 5
	.short _02019172 - _02019132 - 2 ; case 6
	.short _0201917A - _02019132 - 2 ; case 7
_02019142:
	mov r0, #1
	bl sub_0201FF0C
	pop {r3, pc}
_0201914A:
	mov r0, #2
	bl sub_0201FF0C
	pop {r3, pc}
_02019152:
	mov r0, #4
	bl sub_0201FF0C
	pop {r3, pc}
_0201915A:
	mov r0, #8
	bl sub_0201FF0C
	pop {r3, pc}
_02019162:
	mov r0, #1
	bl sub_0201FF74
	pop {r3, pc}
_0201916A:
	mov r0, #2
	bl sub_0201FF74
	pop {r3, pc}
_02019172:
	mov r0, #4
	bl sub_0201FF74
	pop {r3, pc}
_0201917A:
	mov r0, #8
	bl sub_0201FF74
_02019180:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019120

	thumb_func_start sub_02019184
sub_02019184: ; 0x02019184
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r0, #0x2c
	add r6, r5, #0
	mul r6, r0
	add r0, r4, #0
	add r0, #8
	add r1, r2, #0
	add r2, r3, #0
	add r0, r0, r6
	bl sub_02019304
	add r0, r4, r6
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	cmp r5, #7
	bls _020191AA
	b _020192C0
_020191AA:
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020191B6: ; jump table
	.short _020191C6 - _020191B6 - 2 ; case 0
	.short _020191DC - _020191B6 - 2 ; case 1
	.short _020191F2 - _020191B6 - 2 ; case 2
	.short _0201921C - _020191B6 - 2 ; case 3
	.short _02019246 - _020191B6 - 2 ; case 4
	.short _0201925C - _020191B6 - 2 ; case 5
	.short _02019272 - _020191B6 - 2 ; case 6
	.short _0201929A - _020191B6 - 2 ; case 7
_020191C6:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192C8 ; =0x04000010
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020191DC:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192CC ; =0x04000014
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020191F2:
	add r2, r4, #0
	add r2, #0x74
	ldrb r2, [r2]
	cmp r2, #0
	bne _02019212
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D0 ; =0x04000018
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019212:
	add r0, r4, #0
	mov r1, #2
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_0201921C:
	add r2, r4, #0
	add r2, #0xa0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201923C
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D4 ; =0x0400001C
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_0201923C:
	add r0, r4, #0
	mov r1, #3
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_02019246:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D8 ; =0x04001010
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_0201925C:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192DC ; =0x04001014
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019272:
	mov r2, #0x49
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _02019290
	add r2, #0xdb
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _020192E0 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _020192E4 ; =0x04001018
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019290:
	add r0, r4, #0
	mov r1, #6
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_0201929A:
	mov r2, #0x15
	lsl r2, r2, #4
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _020192B8
	add r2, #0xaf
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _020192E0 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _020192E8 ; =0x0400101C
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020192B8:
	add r0, r4, #0
	mov r1, #7
	bl sub_020193E4
_020192C0:
	pop {r4, r5, r6, pc}
	nop
_020192C4: .word 0x000001FF
_020192C8: .word 0x04000010
_020192CC: .word 0x04000014
_020192D0: .word 0x04000018
_020192D4: .word 0x0400001C
_020192D8: .word 0x04001010
_020192DC: .word 0x04001014
_020192E0: .word 0x01FF0000
_020192E4: .word 0x04001018
_020192E8: .word 0x0400101C
	thumb_func_end sub_02019184

	thumb_func_start sub_020192EC
sub_020192EC: ; 0x020192EC
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020192EC

	thumb_func_start sub_020192F8
sub_020192F8: ; 0x020192F8
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020192F8

	thumb_func_start sub_02019304
sub_02019304: ; 0x02019304
	cmp r1, #5
	bhi _02019346
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02019314: ; jump table
	.short _02019320 - _02019314 - 2 ; case 0
	.short _02019324 - _02019314 - 2 ; case 1
	.short _0201932C - _02019314 - 2 ; case 2
	.short _02019334 - _02019314 - 2 ; case 3
	.short _02019338 - _02019314 - 2 ; case 4
	.short _02019340 - _02019314 - 2 ; case 5
_02019320:
	str r2, [r0, #0xc]
	bx lr
_02019324:
	ldr r1, [r0, #0xc]
	add r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_0201932C:
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02019334:
	str r2, [r0, #0x10]
	bx lr
_02019338:
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
_02019340:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
_02019346:
	bx lr
	thumb_func_end sub_02019304

	thumb_func_start sub_02019348
sub_02019348: ; 0x02019348
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	cmp r4, #7
	bhi _020193D0
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02019364: ; jump table
	.short _020193D0 - _02019364 - 2 ; case 0
	.short _020193D0 - _02019364 - 2 ; case 1
	.short _02019374 - _02019364 - 2 ; case 2
	.short _0201938C - _02019364 - 2 ; case 3
	.short _020193D0 - _02019364 - 2 ; case 4
	.short _020193D0 - _02019364 - 2 ; case 5
	.short _020193A4 - _02019364 - 2 ; case 6
	.short _020193BC - _02019364 - 2 ; case 7
_02019374:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193D4 ; =0x04000020
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_0201938C:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193D8 ; =0x04000030
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_020193A4:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193DC ; =0x04001020
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_020193BC:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193E0 ; =0x04001030
	bl sub_020BF4AC
_020193D0:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020193D4: .word 0x04000020
_020193D8: .word 0x04000030
_020193DC: .word 0x04001020
_020193E0: .word 0x04001030
	thumb_func_end sub_02019348

	thumb_func_start sub_020193E4
sub_020193E4: ; 0x020193E4
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #4
	add r3, r2, #0
	str r1, [sp]
	bl sub_0201D470
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	str r3, [sp]
	bl sub_02019348
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020193E4

	thumb_func_start sub_02019410
sub_02019410: ; 0x02019410
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _0201941C
	bl sub_020C4F48
	pop {r3, r4, r5, pc}
_0201941C:
	mov r4, #3
	add r3, r0, #0
	tst r3, r4
	bne _02019442
	add r3, r1, #0
	tst r3, r4
	bne _02019442
	lsl r3, r2, #0x10
	lsr r3, r3, #0x10
	lsr r4, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r4
	mov r3, #0x1e
	ror r5, r3
	add r3, r4, r5
	bne _02019442
	bl sub_020C4B68
	pop {r3, r4, r5, pc}
_02019442:
	bl sub_020C4B18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019410

	thumb_func_start sub_02019448
sub_02019448: ; 0x02019448
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019448

	thumb_func_start sub_02019460
sub_02019460: ; 0x02019460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _020194CE
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r7
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201949E
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_02019410
	add r3, r5, r7
	ldr r2, [r3, #0x10]
	ldr r1, [sp, #4]
	ldr r3, [r3, #0xc]
	add r0, r4, #0
	lsl r2, r2, #1
	bl sub_020194E0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201949E:
	ldr r0, [r6, #0]
	lsr r7, r0, #8
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02018184
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02019410
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #1
	add r3, r7, #0
	bl sub_020194E0
	add r0, r5, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020194CE:
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #1
	bl sub_020194E0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019460

	thumb_func_start sub_020194E0
sub_020194E0: ; 0x020194E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl sub_020C2C54
	cmp r7, #7
	bhi _02019570
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019502: ; jump table
	.short _02019512 - _02019502 - 2 ; case 0
	.short _0201951E - _02019502 - 2 ; case 1
	.short _0201952A - _02019502 - 2 ; case 2
	.short _02019536 - _02019502 - 2 ; case 3
	.short _02019542 - _02019502 - 2 ; case 4
	.short _0201954E - _02019502 - 2 ; case 5
	.short _0201955A - _02019502 - 2 ; case 6
	.short _02019566 - _02019502 - 2 ; case 7
_02019512:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C036C
	pop {r3, r4, r5, r6, r7, pc}
_0201951E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C042C
	pop {r3, r4, r5, r6, r7, pc}
_0201952A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C04EC
	pop {r3, r4, r5, r6, r7, pc}
_02019536:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C05AC
	pop {r3, r4, r5, r6, r7, pc}
_02019542:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C03CC
	pop {r3, r4, r5, r6, r7, pc}
_0201954E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C048C
	pop {r3, r4, r5, r6, r7, pc}
_0201955A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C054C
	pop {r3, r4, r5, r6, r7, pc}
_02019566:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C060C
_02019570:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020194E0

	thumb_func_start sub_02019574
sub_02019574: ; 0x02019574
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #8]
	add r2, r3, #0
	bl sub_02019410
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02019574

	thumb_func_start sub_0201958C
sub_0201958C: ; 0x0201958C
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0x2c
	mul r4, r1
	add r4, r0, r4
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _020195AA
	ldr r4, [sp, #0x10]
	lsl r4, r4, #5
	str r4, [sp]
	bl sub_020195B8
	add sp, #4
	pop {r3, r4, pc}
_020195AA:
	ldr r4, [sp, #0x10]
	lsl r4, r4, #6
	str r4, [sp]
	bl sub_020195B8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201958C

	thumb_func_start sub_020195B8
sub_020195B8: ; 0x020195B8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _020195F0
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	lsr r4, r1, #8
	add r1, r4, #0
	bl sub_02018184
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02019410
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_020195FC
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_020195F0:
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020195FC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020195B8

	thumb_func_start sub_020195FC
sub_020195FC: ; 0x020195FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl sub_020C2C54
	cmp r7, #7
	bhi _0201968C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201961E: ; jump table
	.short _0201962E - _0201961E - 2 ; case 0
	.short _0201963A - _0201961E - 2 ; case 1
	.short _02019646 - _0201961E - 2 ; case 2
	.short _02019652 - _0201961E - 2 ; case 3
	.short _0201965E - _0201961E - 2 ; case 4
	.short _0201966A - _0201961E - 2 ; case 5
	.short _02019676 - _0201961E - 2 ; case 6
	.short _02019682 - _0201961E - 2 ; case 7
_0201962E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C066C
	pop {r3, r4, r5, r6, r7, pc}
_0201963A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C072C
	pop {r3, r4, r5, r6, r7, pc}
_02019646:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C07EC
	pop {r3, r4, r5, r6, r7, pc}
_02019652:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C08AC
	pop {r3, r4, r5, r6, r7, pc}
_0201965E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C06CC
	pop {r3, r4, r5, r6, r7, pc}
_0201966A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C078C
	pop {r3, r4, r5, r6, r7, pc}
_02019676:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C084C
	pop {r3, r4, r5, r6, r7, pc}
_02019682:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C090C
_0201968C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020195FC

	thumb_func_start sub_02019690
sub_02019690: ; 0x02019690
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020195FC
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02018238
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02019690

	thumb_func_start sub_020196C0
sub_020196C0: ; 0x020196C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #0x2c
	add r6, r7, #0
	add r4, #0x1f
	mul r6, r1
	ldrb r1, [r4, r6]
	ldr r0, [r0, #0]
	add r5, r2, #0
	mul r1, r3
	str r1, [sp]
	bl sub_02018184
	str r0, [sp, #4]
	ldrb r0, [r4, r6]
	cmp r0, #0x20
	bne _020196FA
	lsl r2, r5, #0xc
	lsl r1, r5, #8
	lsl r0, r5, #4
	orr r1, r2
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	lsl r0, r1, #0x10
	add r5, r1, #0
	b _02019704
_020196FA:
	lsl r2, r5, #0x18
	lsl r1, r5, #0x10
	lsl r0, r5, #8
	orr r1, r2
	orr r0, r1
_02019704:
	orr r5, r0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_020C4BB8
	lsl r0, r7, #0x18
	ldrb r2, [r4, r6]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #4]
	mul r2, r3
	ldr r3, [sp]
	lsr r0, r0, #0x18
	bl sub_020195FC
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020196C0

	thumb_func_start sub_0201972C
sub_0201972C: ; 0x0201972C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020C2C54
	cmp r6, #4
	bhs _0201974E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020C00B4
	pop {r3, r4, r5, r6, r7, pc}
_0201974E:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020C0108
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201972C

	thumb_func_start sub_0201975C
sub_0201975C: ; 0x0201975C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0201972C
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_0201975C

	thumb_func_start sub_02019774
sub_02019774: ; 0x02019774
	cmp r2, #5
	bhi _020197DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02019784: ; jump table
	.short _02019790 - _02019784 - 2 ; case 0
	.short _0201979A - _02019784 - 2 ; case 1
	.short _0201979A - _02019784 - 2 ; case 2
	.short _020197A4 - _02019784 - 2 ; case 3
	.short _020197BA - _02019784 - 2 ; case 4
	.short _020197DC - _02019784 - 2 ; case 5
_02019790:
	lsl r1, r1, #4
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0201979A:
	lsl r1, r1, #5
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197A4:
	mov r2, #0x1f
	add r3, r0, #0
	and r3, r2
	mov r2, #0x1f
	bic r0, r2
	add r0, r1, r0
	lsl r0, r0, #5
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197BA:
	asr r2, r1, #5
	asr r3, r0, #5
	lsl r2, r2, #1
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1a
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x16
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197DC:
	mov r0, #0
_020197DE:
	bx lr
	thumb_func_end sub_02019774

	thumb_func_start sub_020197E0
sub_020197E0: ; 0x020197E0
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	str r3, [sp]
	add r6, r2, #0
	ldr r5, [sp]
	add r4, r6, #0
	sub r4, #0x20
	sub r5, #0x20
	mov r2, #0
	lsl r4, r4, #0x10
	lsl r5, r5, #0x10
	add r3, r2, #0
	asr r4, r4, #0x10
	asr r7, r5, #0x10
	lsr r5, r0, #5
	beq _02019806
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02019806:
	lsr r5, r1, #5
	beq _02019810
	add r2, r2, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02019810:
	cmp r2, #3
	bhi _020198B8
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02019820: ; jump table
	.short _02019828 - _02019820 - 2 ; case 0
	.short _02019846 - _02019820 - 2 ; case 1
	.short _0201986C - _02019820 - 2 ; case 2
	.short _02019898 - _02019820 - 2 ; case 3
_02019828:
	cmp r4, #0
	blt _02019838
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019838:
	add r2, r1, #0
	mul r2, r6
	add r0, r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019846:
	cmp r7, #0
	blt _02019850
	mov r2, #1
	lsl r2, r2, #0xa
	b _02019854
_02019850:
	ldr r2, [sp]
	lsl r2, r2, #5
_02019854:
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	add r0, r1, #0
	mul r0, r4
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_0201986C:
	lsl r2, r6, #5
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r4, #0
	blt _02019886
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019886:
	mov r3, #0x1f
	and r1, r3
	add r3, r1, #0
	mul r3, r6
	add r0, r0, r3
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019898:
	add r2, r6, r7
	lsl r2, r2, #5
	add r2, r3, r2
	add r5, r0, #0
	mov r3, #0x1f
	add r0, r1, #0
	and r0, r3
	add r1, r0, #0
	lsl r2, r2, #0x10
	and r5, r3
	mul r1, r4
	lsr r2, r2, #0x10
	add r0, r5, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
_020198B8:
	add r0, r3, #0
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_020197E0

	thumb_func_start sub_020198C0
sub_020198C0: ; 0x020198C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, sp, #0x20
	ldrb r5, [r6, #0x14]
	str r5, [sp]
	ldrb r4, [r6, #0x18]
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	add r2, r3, #0
	ldrb r3, [r6, #0x10]
	bl sub_020198E8
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020198C0

	thumb_func_start sub_020198E8
sub_020198E8: ; 0x020198E8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _02019932
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_020199E0
	add sp, #0x1c
	pop {r4, r5, pc}
_02019932:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019B54
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020198E8

	thumb_func_start sub_02019964
sub_02019964: ; 0x02019964
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _020199AE
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_020199E0
	add sp, #0x1c
	pop {r4, r5, pc}
_020199AE:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019B54
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_02019964

	thumb_func_start sub_020199E0
sub_020199E0: ; 0x020199E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _02019A04
	b _02019B4E
_02019A04:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_02018FF4
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _02019AB2
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019A42
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x18]
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x14]
_02019A34:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	blt _02019A44
_02019A42:
	b _02019B4E
_02019A44:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _02019B4E
	mov r5, #0
	cmp r6, #0
	bls _02019A9E
	add r1, r4, #0
	mul r1, r2
	lsl r2, r1, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_02019A68:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019A9E
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02019A9E
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_02019774
	ldr r1, [sp, #0x10]
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	lsl r2, r0, #1
	ldr r0, [sp, #0x2c]
	strh r1, [r0, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019A68
_02019A9E:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019A34
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_02019AB2:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019B4E
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_02019AC6:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _02019B4E
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _02019B4E
	mov r5, #0
	cmp r6, #0
	bls _02019B3E
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_02019AF2:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019B3E
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _02019B3E
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02019774
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020197E0
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #1
	ldr r1, [sp, #0x2c]
	strh r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019AF2
_02019B3E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019AC6
_02019B4E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020199E0

	thumb_func_start sub_02019B54
sub_02019B54: ; 0x02019B54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _02019B78
	b _02019CB4
_02019B78:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_02018FF4
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _02019C1C
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bhi _02019B98
	b _02019CB4
_02019B98:
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x14]
_02019BA8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	bge _02019CB4
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _02019CB4
	mov r5, #0
	cmp r6, #0
	bls _02019C08
	ldr r1, [sp, #0x14]
	mul r2, r4
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_02019BD6:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019C08
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02019C08
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_02019774
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r5]
	ldr r1, [sp, #0x2c]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019BD6
_02019C08:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019BA8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_02019C1C:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019CB4
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_02019C30:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _02019CB4
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _02019CB4
	mov r5, #0
	cmp r6, #0
	bls _02019CA4
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_02019C5C:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019CA4
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _02019CA4
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02019774
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020197E0
	ldr r1, [sp, #0x5c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019C5C
_02019CA4:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019C30
_02019CB4:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02019B54

	thumb_func_start sub_02019CB8
sub_02019CB8: ; 0x02019CB8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #8
	cmp r1, #1
	beq _02019CEC
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019D08
	add sp, #0xc
	pop {r4, r5, pc}
_02019CEC:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_02019DB8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02019CB8

	thumb_func_start sub_02019D08
sub_02019D08: ; 0x02019D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [r0, #0]
	add r7, r1, #0
	str r0, [sp]
	ldr r6, [sp, #0x38]
	cmp r4, #0
	beq _02019DB2
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x18
	add r1, #1
	add r2, sp, #0x18
	bl sub_02018FF4
	add r0, sp, #0x20
	ldrb r2, [r0, #0x14]
	ldr r1, [sp, #8]
	add r1, r1, r2
	ldr r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, r1
	bge _02019DB2
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #4]
	lsl r1, r6, #0xc
	add r0, r0, r2
	add r1, r1, r7
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_02019D4A:
	add r0, sp, #0x18
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bhs _02019DB2
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	cmp r1, r0
	bge _02019DA2
_02019D5E:
	add r0, sp, #0x18
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _02019DA2
	ldr r2, [sp]
	ldr r1, [sp, #8]
	ldrb r2, [r2, #0x15]
	add r0, r5, #0
	bl sub_02019774
	cmp r6, #0x11
	bne _02019D7C
	lsl r0, r0, #1
	strh r7, [r4, r0]
	b _02019D96
_02019D7C:
	cmp r6, #0x10
	bne _02019D90
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	add r1, r7, r1
	strh r1, [r4, r0]
	b _02019D96
_02019D90:
	lsl r1, r0, #1
	ldr r0, [sp, #0x14]
	strh r0, [r4, r1]
_02019D96:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _02019D5E
_02019DA2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02019D4A
_02019DB2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019D08

	thumb_func_start sub_02019DB8
sub_02019DB8: ; 0x02019DB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [r7, #0]
	add r5, r3, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02019E28
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_02018FF4
	add r1, sp, #0x18
	ldrb r0, [r1, #0x14]
	add r0, r5, r0
	str r0, [sp, #8]
	cmp r5, r0
	bge _02019E28
	ldrb r1, [r1, #0x10]
	ldr r0, [sp, #4]
	add r6, r0, r1
_02019DEA:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r5, r0
	bhs _02019E28
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _02019E1C
_02019DFA:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _02019E1C
	ldrb r2, [r7, #0x15]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02019774
	ldr r2, [sp]
	ldr r1, [sp, #0xc]
	strb r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _02019DFA
_02019E1C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _02019DEA
_02019E28:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02019DB8

	thumb_func_start sub_02019E2C
sub_02019E2C: ; 0x02019E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	mul r7, r0
	str r2, [sp]
	add r0, r5, r7
	ldr r4, [r0, #8]
	add r6, r3, #0
	cmp r4, #0
	beq _02019EB4
	ldrb r0, [r0, #0x1d]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_02018FF4
	add r0, sp, #0x18
	ldrb r1, [r0, #0x14]
	add r1, r6, r1
	str r1, [sp, #4]
	cmp r6, r1
	bge _02019EB4
	add r1, r5, r7
	str r1, [sp, #0xc]
	ldrb r1, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r0, #0x10]
	ldr r0, [sp]
	add r7, r0, r1
_02019E6C:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r6, r0
	bhs _02019EB4
	ldr r5, [sp]
	add r0, r5, #0
	cmp r0, r7
	bge _02019EA8
_02019E7C:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _02019EA8
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldrb r2, [r2, #0x1d]
	add r1, r6, #0
	bl sub_02019774
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r1, _02019EB8 ; =0x00000FFF
	and r2, r1
	ldr r1, [sp, #8]
	orr r1, r2
	strh r1, [r4, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blt _02019E7C
_02019EA8:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _02019E6C
_02019EB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02019EB8: .word 0x00000FFF
	thumb_func_end sub_02019E2C

	thumb_func_start sub_02019EBC
sub_02019EBC: ; 0x02019EBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r2, r5, r0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02019EDE
	ldr r2, [r2, #0xc]
	mov r0, #0
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019448
_02019EDE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019EBC

	thumb_func_start sub_02019EE0
sub_02019EE0: ; 0x02019EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02019F02
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019448
_02019F02:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019EE0

	thumb_func_start sub_02019F04
sub_02019F04: ; 0x02019F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02019F26
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201C3C0
_02019F26:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019F04

	thumb_func_start sub_02019F28
sub_02019F28: ; 0x02019F28
	push {r3, lr}
	cmp r0, #7
	bhi _02019F7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019F3A: ; jump table
	.short _02019F4A - _02019F3A - 2 ; case 0
	.short _02019F50 - _02019F3A - 2 ; case 1
	.short _02019F56 - _02019F3A - 2 ; case 2
	.short _02019F5C - _02019F3A - 2 ; case 3
	.short _02019F62 - _02019F3A - 2 ; case 4
	.short _02019F68 - _02019F3A - 2 ; case 5
	.short _02019F6E - _02019F3A - 2 ; case 6
	.short _02019F74 - _02019F3A - 2 ; case 7
_02019F4A:
	bl sub_020BF2D4
	pop {r3, pc}
_02019F50:
	bl sub_020BF328
	pop {r3, pc}
_02019F56:
	bl sub_020BF37C
	pop {r3, pc}
_02019F5C:
	bl sub_020BF40C
	pop {r3, pc}
_02019F62:
	bl sub_020BF308
	pop {r3, pc}
_02019F68:
	bl sub_020BF35C
	pop {r3, pc}
_02019F6E:
	bl sub_020BF3CC
	pop {r3, pc}
_02019F74:
	bl sub_020BF464
	pop {r3, pc}
_02019F7A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019F28

	thumb_func_start sub_02019F80
sub_02019F80: ; 0x02019F80
	push {r4, r5, r6, r7}
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	mov r4, #0
	cmp r1, #0
	bls _02019FBA
	mov r5, #0xf
	add r6, r5, #0
_02019F90:
	ldrb r7, [r0, r4]
	and r7, r6
	strb r7, [r2]
	ldrb r7, [r2]
	cmp r7, #0
	beq _02019FA0
	add r7, r7, r3
	strb r7, [r2]
_02019FA0:
	ldrb r7, [r0, r4]
	asr r7, r7, #4
	and r7, r5
	strb r7, [r2, #1]
	ldrb r7, [r2, #1]
	cmp r7, #0
	beq _02019FB2
	add r7, r7, r3
	strb r7, [r2, #1]
_02019FB2:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, r1
	blo _02019F90
_02019FBA:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019F80

	thumb_func_start sub_02019FC0
sub_02019FC0: ; 0x02019FC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r3, #0
	lsl r1, r5, #1
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02019F80
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019FC0

	thumb_func_start sub_02019FE4
sub_02019FE4: ; 0x02019FE4
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FE4

	thumb_func_start sub_02019FF0
sub_02019FF0: ; 0x02019FF0
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FF0

	thumb_func_start sub_02019FFC
sub_02019FFC: ; 0x02019FFC
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FFC

	thumb_func_start sub_0201A008
sub_0201A008: ; 0x0201A008
	sub sp, #0x20
	cmp r1, #7
	bls _0201A010
	b _0201A1BC
_0201A010:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201A01C: ; jump table
	.short _0201A02C - _0201A01C - 2 ; case 0
	.short _0201A040 - _0201A01C - 2 ; case 1
	.short _0201A054 - _0201A01C - 2 ; case 2
	.short _0201A0A4 - _0201A01C - 2 ; case 3
	.short _0201A0F4 - _0201A01C - 2 ; case 4
	.short _0201A108 - _0201A01C - 2 ; case 5
	.short _0201A11C - _0201A01C - 2 ; case 6
	.short _0201A16C - _0201A01C - 2 ; case 7
_0201A02C:
	ldr r0, _0201A1C4 ; =0x04000008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1e]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A040:
	ldr r0, _0201A1C8 ; =0x0400000A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1c]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A054:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A068
	cmp r0, #1
	beq _0201A07C
	cmp r0, #2
	beq _0201A090
_0201A068:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1a]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A07C:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x18]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A090:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x16]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0A4:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A0B8
	cmp r0, #1
	beq _0201A0CC
	cmp r0, #2
	beq _0201A0E0
_0201A0B8:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x14]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0CC:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x12]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0E0:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x10]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0F4:
	ldr r0, _0201A1D4 ; =0x04001008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xe]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A108:
	ldr r0, _0201A1D8 ; =0x0400100A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xc]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A11C:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A130
	cmp r0, #1
	beq _0201A144
	cmp r0, #2
	beq _0201A158
_0201A130:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xa]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A144:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #8]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A158:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #6]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A16C:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A180
	cmp r0, #1
	beq _0201A194
	cmp r0, #2
	beq _0201A1A8
_0201A180:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A194:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #2]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A1A8:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A1BC:
	mov r0, #0
	add sp, #0x20
	bx lr
	nop
_0201A1C4: .word 0x04000008
_0201A1C8: .word 0x0400000A
_0201A1CC: .word 0x0400000C
_0201A1D0: .word 0x0400000E
_0201A1D4: .word 0x04001008
_0201A1D8: .word 0x0400100A
_0201A1DC: .word 0x0400100C
_0201A1E0: .word 0x0400100E
	thumb_func_end sub_0201A008

	thumb_func_start sub_0201A1E4
sub_0201A1E4: ; 0x0201A1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x70
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201A20C
	ldr r0, [sp, #8]
	add r0, r0, r3
	str r0, [sp, #0x50]
	b _0201A212
_0201A20C:
	ldr r0, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #0x50]
_0201A212:
	ldr r2, [sp, #4]
	add r3, sp, #0x70
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201A22A
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	str r2, [sp, #0x4c]
	b _0201A230
_0201A22A:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [sp, #0x4c]
_0201A230:
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x48]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x44]
	add r1, sp, #0x70
	ldrh r1, [r1, #0x20]
	ldr r2, _0201A41C ; =0x0000FFFF
	str r1, [sp, #0x38]
	cmp r1, r2
	bne _0201A338
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201A262
	cmp r2, r1
	blt _0201A264
_0201A262:
	b _0201A416
_0201A264:
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201A26E:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201A31A
	cmp r1, r0
	bge _0201A31A
	add r0, r3, #0
	lsl r5, r0, #2
	add r0, r4, #0
	lsl r6, r0, #2
	ldr r0, _0201A420 ; =0x00003FE0
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x48]
	and r1, r0
	mul r2, r1
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x28]
	mov r1, #0x1c
	and r2, r1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	and r0, r2
	ldr r2, [sp, #0x44]
	mul r2, r0
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x18]
	and r0, r1
	str r0, [sp, #0x14]
_0201A2AA:
	ldr r0, [sp, #4]
	asr r2, r4, #1
	mov r1, #3
	ldr r0, [r0, #0]
	and r1, r2
	add r1, r0, r1
	ldr r0, _0201A420 ; =0x00003FE0
	and r0, r6
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r6, r6, #4
	add r0, r1, r0
	str r0, [sp, #0x64]
	lsl r0, r4, #0x1f
	lsr r2, r0, #0x1d
	ldr r0, [sp]
	asr r1, r3, #1
	ldr r7, [r0, #0]
	mov r0, #3
	and r0, r1
	ldr r1, _0201A420 ; =0x00003FE0
	add r4, r4, #1
	and r1, r5
	str r1, [sp, #0x54]
	add r1, r7, r0
	ldr r0, [sp, #0x54]
	add r5, r5, #4
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0, r1]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	lsl r7, r2
	ldrb r0, [r0, r1]
	add r3, r3, #1
	str r0, [sp, #0x58]
	mov r0, #0xf0
	asr r0, r2
	ldr r1, [sp, #0x58]
	add r2, r7, #0
	and r0, r1
	orr r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	strb r2, [r0, r1]
	ldr r0, [sp, #0x50]
	cmp r3, r0
	blt _0201A2AA
_0201A31A:
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201A26E
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_0201A338:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201A416
	cmp r2, r1
	bge _0201A416
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x40]
	str r0, [sp, #0x3c]
_0201A34E:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201A3FC
	cmp r1, r0
	bge _0201A3FC
	add r0, r3, #0
	lsl r1, r0, #2
	add r0, r4, #0
	lsl r2, r0, #2
	ldr r0, _0201A420 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x48]
	and r5, r0
	mul r6, r5
	str r6, [sp, #0x34]
	ldr r6, [sp, #0x40]
	mov r5, #0x1c
	and r6, r5
	str r6, [sp, #0x30]
	ldr r6, [sp, #0x3c]
	and r0, r6
	ldr r6, [sp, #0x44]
	mul r6, r0
	ldr r0, [sp, #0x3c]
	str r6, [sp, #0x2c]
	and r0, r5
	str r0, [sp, #0x60]
_0201A38A:
	ldr r0, [sp, #4]
	asr r6, r4, #1
	mov r5, #3
	and r5, r6
	ldr r0, [r0, #0]
	asr r6, r3, #1
	add r5, r0, r5
	ldr r0, _0201A420 ; =0x00003FE0
	and r0, r2
	add r5, r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
	ldr r0, [sp]
	ldr r7, [r0, #0]
	mov r0, #3
	and r0, r6
	ldr r6, _0201A420 ; =0x00003FE0
	and r6, r1
	str r6, [sp, #0x5c]
	add r6, r7, r0
	ldr r0, [sp, #0x5c]
	add r6, r0, r6
	ldr r0, [sp, #0x34]
	add r6, r0, r6
	ldr r0, [sp, #0x30]
	ldrb r6, [r0, r6]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r6, r0
	mov r0, #0xf
	and r0, r6
	ldr r6, [sp, #0x38]
	cmp r0, r6
	beq _0201A3EE
	lsl r6, r4, #0x1f
	lsr r7, r6, #0x1d
	lsl r0, r7
	mov lr, r0
	ldr r0, [sp, #0x60]
	ldrb r0, [r5, r0]
	mov ip, r0
	mov r0, #0xf0
	add r6, r0, #0
	asr r6, r7
	mov r0, ip
	and r0, r6
	mov r6, lr
	orr r6, r0
	ldr r0, [sp, #0x60]
	strb r6, [r5, r0]
_0201A3EE:
	ldr r0, [sp, #0x50]
	add r3, r3, #1
	add r1, r1, #4
	add r2, r2, #4
	add r4, r4, #1
	cmp r3, r0
	blt _0201A38A
_0201A3FC:
	ldr r0, [sp, #0x40]
	add r0, r0, #4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201A34E
_0201A416:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A41C: .word 0x0000FFFF
_0201A420: .word 0x00003FE0
	thumb_func_end sub_0201A1E4

	thumb_func_start sub_0201A424
sub_0201A424: ; 0x0201A424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x58
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201A44A
	ldr r0, [sp, #8]
	add r0, r0, r3
	b _0201A44E
_0201A44A:
	ldr r0, [sp, #8]
	add r0, r2, r0
_0201A44E:
	ldr r2, [sp, #4]
	add r3, sp, #0x58
	mov ip, r0
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201A466
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	b _0201A46A
_0201A466:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
_0201A46A:
	mov lr, r2
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x4c]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x48]
	add r1, sp, #0x58
	ldrh r1, [r1, #0x20]
	ldr r2, _0201A604 ; =0x0000FFFF
	str r1, [sp, #0x3c]
	cmp r1, r2
	bne _0201A54A
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201A4A0
	mov r1, lr
	cmp r2, r1
	blt _0201A4A2
_0201A4A0:
	b _0201A600
_0201A4A2:
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201A4AC:
	ldr r1, [sp, #8]
	mov r0, ip
	add r2, r1, #0
	ldr r7, [sp, #0x10]
	cmp r2, r0
	bge _0201A52C
	mov r0, ip
	cmp r2, r0
	bge _0201A52C
	add r0, r1, #0
	lsl r2, r0, #3
	add r0, r7, #0
	lsl r3, r0, #3
	ldr r6, _0201A608 ; =0x00007FC0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x4c]
	and r0, r6
	mul r4, r0
	str r4, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x48]
	and r0, r6
	mul r4, r0
	ldr r0, [sp, #0x24]
	str r4, [sp, #0x18]
	and r0, r5
	str r0, [sp, #0x14]
_0201A4EA:
	ldr r0, [sp]
	add r5, r1, #0
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r2
	add r4, r4, r0
	ldr r0, [sp, #0x20]
	add r5, r7, #0
	add r4, r0, r4
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	ldrb r6, [r0, r4]
	ldr r0, [sp, #4]
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r3
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r2, #8
	add r4, r0, r4
	ldr r0, [sp, #0x14]
	add r3, #8
	strb r6, [r0, r4]
	mov r0, ip
	add r7, r7, #1
	cmp r1, r0
	blt _0201A4EA
_0201A52C:
	ldr r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x24]
	mov r0, lr
	cmp r1, r0
	blt _0201A4AC
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_0201A54A:
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201A600
	mov r1, lr
	cmp r2, r1
	bge _0201A600
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
_0201A562:
	ldr r2, [sp, #8]
	mov r0, ip
	add r1, r2, #0
	ldr r3, [sp, #0x10]
	cmp r1, r0
	bge _0201A5E6
	mov r0, ip
	cmp r1, r0
	bge _0201A5E6
	add r0, r2, #0
	lsl r6, r0, #3
	add r0, r3, #0
	lsl r1, r0, #3
	ldr r7, _0201A608 ; =0x00007FC0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	and r0, r7
	mul r4, r0
	str r4, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	and r0, r7
	mul r4, r0
	ldr r0, [sp, #0x40]
	str r4, [sp, #0x30]
	and r0, r5
	str r0, [sp, #0x2c]
_0201A5A0:
	ldr r0, [sp, #4]
	mov r4, #7
	ldr r0, [r0, #0]
	and r4, r3
	add r0, r0, r4
	ldr r4, _0201A608 ; =0x00007FC0
	add r5, r2, #0
	and r4, r1
	add r4, r0, r4
	ldr r0, [sp, #0x30]
	add r7, r4, r0
	ldr r0, [sp]
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r6
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r4, r0, r4
	ldr r0, [sp, #0x34]
	ldrb r0, [r0, r4]
	ldr r4, [sp, #0x3c]
	cmp r0, r4
	beq _0201A5D8
	ldr r4, [sp, #0x2c]
	strb r0, [r7, r4]
_0201A5D8:
	add r2, r2, #1
	mov r0, ip
	add r6, #8
	add r1, #8
	add r3, r3, #1
	cmp r2, r0
	blt _0201A5A0
_0201A5E6:
	ldr r0, [sp, #0x44]
	add r0, #8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x40]
	mov r0, lr
	cmp r1, r0
	blt _0201A562
_0201A600:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A604: .word 0x0000FFFF
_0201A608: .word 0x00007FC0
	thumb_func_end sub_0201A424

	thumb_func_start sub_0201A60C
sub_0201A60C: ; 0x0201A60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _0201A628
	add r6, r0, #0
_0201A628:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _0201A63E
	mov ip, r2
_0201A63E:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	ldr r1, [sp, #8]
	mov r0, ip
	cmp r1, r0
	bge _0201A6C8
	add r0, r1, #0
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #4
	str r0, [sp, #0x10]
_0201A65C:
	ldr r1, [sp, #4]
	add r0, r1, #0
	cmp r0, r6
	bge _0201A6B6
	lsl r5, r0, #2
	ldr r2, _0201A6CC ; =0x00003FE0
	ldr r0, [sp, #0xc]
	and r0, r2
	add r7, r0, #0
	mov r2, lr
	mul r7, r2
	ldr r0, [sp, #0xc]
	mov r2, #0x1c
	and r2, r0
_0201A678:
	ldr r0, [sp]
	asr r3, r1, #1
	ldr r4, [r0, #0]
	mov r0, #3
	and r0, r3
	ldr r3, _0201A6CC ; =0x00003FE0
	add r0, r4, r0
	and r3, r5
	add r0, r0, r3
	add r0, r0, r7
	mov r3, #1
	tst r3, r1
	ldrb r4, [r0, r2]
	beq _0201A6A0
	mov r3, #0xf
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x10]
	b _0201A6AA
_0201A6A0:
	mov r3, #0xf0
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x2c]
_0201A6AA:
	orr r3, r4
	add r1, r1, #1
	strb r3, [r0, r2]
	add r5, r5, #4
	cmp r1, r6
	blt _0201A678
_0201A6B6:
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201A65C
_0201A6C8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A6CC: .word 0x00003FE0
	thumb_func_end sub_0201A60C

	thumb_func_start sub_0201A6D0
sub_0201A6D0: ; 0x0201A6D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r5, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r5, r0
	ble _0201A6EC
	add r5, r0, #0
_0201A6EC:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov lr, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, lr
	cmp r1, r2
	ble _0201A702
	mov lr, r2
_0201A702:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	mov r0, lr
	cmp r1, r0
	bge _0201A76E
	add r0, r1, #0
	lsl r0, r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	mov ip, r0
_0201A720:
	ldr r2, [sp, #4]
	add r0, r2, #0
	cmp r0, r5
	bge _0201A75C
	ldr r1, [sp, #0xc]
	ldr r0, _0201A774 ; =0x00007FC0
	mov r3, ip
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	mov r0, #0x38
	mul r7, r1
	ldr r1, [sp, #0xc]
	add r6, r1, #0
	and r6, r0
_0201A73E:
	ldr r0, [sp]
	ldr r4, _0201A774 ; =0x00007FC0
	ldr r1, [r0, #0]
	mov r0, #7
	and r0, r2
	and r4, r3
	add r0, r1, r0
	add r0, r4, r0
	add r1, r7, r0
	ldr r0, [sp, #0x2c]
	add r2, r2, #1
	strb r0, [r6, r1]
	add r3, #8
	cmp r2, r5
	blt _0201A73E
_0201A75C:
	ldr r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, lr
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201A720
_0201A76E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0201A774: .word 0x00007FC0
	thumb_func_end sub_0201A6D0

	thumb_func_start sub_0201A778
sub_0201A778: ; 0x0201A778
	push {r4, r5, r6, lr}
	add r5, r1, #0
	lsl r1, r5, #4
	bl sub_02018144
	add r6, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0201A79C
_0201A78A:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201A7A0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _0201A78A
_0201A79C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A778

	thumb_func_start sub_0201A7A0
sub_0201A7A0: ; 0x0201A7A0
	mov r3, #0
	str r3, [r0, #0]
	mov r1, #0xff
	strb r1, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	ldrh r2, [r0, #0xa]
	ldr r1, _0201A7C8 ; =0xFFFF8000
	and r2, r1
	strh r2, [r0, #0xa]
	str r3, [r0, #0xc]
	ldrh r2, [r0, #0xa]
	sub r1, r1, #1
	and r1, r2
	strh r1, [r0, #0xa]
	bx lr
	nop
_0201A7C8: .word 0xFFFF8000
	thumb_func_end sub_0201A7A0

	thumb_func_start sub_0201A7CC
sub_0201A7CC: ; 0x0201A7CC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0201A7DE
	ldrb r1, [r0, #4]
	cmp r1, #0xff
	beq _0201A7DE
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0201A7E2
_0201A7DE:
	mov r0, #0
	bx lr
_0201A7E2:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201A7CC

	thumb_func_start sub_0201A7E8
sub_0201A7E8: ; 0x0201A7E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r6, #0
	mul r7, r0
	add r4, r1, #0
	str r3, [sp]
	add r1, r5, r7
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201A864
	add r3, sp, #8
	ldrb r2, [r1, #0x1f]
	ldrb r1, [r3, #0x14]
	ldrb r3, [r3, #0x18]
	ldr r0, [r5, #0]
	mul r3, r1
	add r1, r2, #0
	mul r1, r3
	bl sub_02018144
	add r1, r0, #0
	beq _0201A864
	str r5, [r4, #0]
	strb r6, [r4, #4]
	ldr r0, [sp]
	add r3, sp, #8
	strb r0, [r4, #5]
	ldrb r0, [r3, #0x10]
	ldr r2, _0201A868 ; =0xFFFF8000
	strb r0, [r4, #6]
	ldrb r0, [r3, #0x14]
	strb r0, [r4, #7]
	ldrb r0, [r3, #0x18]
	strb r0, [r4, #8]
	ldrb r0, [r3, #0x1c]
	strb r0, [r4, #9]
	ldrh r0, [r4, #0xa]
	ldrh r3, [r3, #0x20]
	and r0, r2
	lsr r2, r2, #0x11
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	str r1, [r4, #0xc]
	add r0, r5, r7
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0201A850
	mov r2, #0
	b _0201A852
_0201A850:
	mov r2, #1
_0201A852:
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A86C ; =0xFFFF7FFF
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0xa]
_0201A864:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A868: .word 0xFFFF8000
_0201A86C: .word 0xFFFF7FFF
	thumb_func_end sub_0201A7E8

	thumb_func_start sub_0201A870
sub_0201A870: ; 0x0201A870
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp]
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r2, #0
	str r0, [sp, #0x24]
	ldr r0, [sp]
	add r4, r1, #0
	mul r0, r6
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	bl sub_02018144
	ldr r1, [sp, #0x24]
	add r7, r0, #0
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x18
	ldr r2, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_020D5124
	cmp r7, #0
	beq _0201A8CC
	str r5, [r4, #0]
	strb r6, [r4, #7]
	ldr r0, [sp]
	strb r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A8D0 ; =0xFFFF8000
	add r3, r1, #0
	add r1, sp, #0x10
	ldrh r2, [r1, #0x10]
	lsr r1, r0, #0x11
	and r3, r0
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	sub r0, r0, #1
	and r0, r1
	strh r0, [r4, #0xa]
_0201A8CC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A8D0: .word 0xFFFF8000
	thumb_func_end sub_0201A870

	thumb_func_start sub_0201A8D4
sub_0201A8D4: ; 0x0201A8D4
	push {lr}
	sub sp, #0x14
	add r3, r2, #0
	ldrb r2, [r3, #2]
	str r2, [sp]
	ldrb r2, [r3, #3]
	str r2, [sp, #4]
	ldrb r2, [r3, #4]
	str r2, [sp, #8]
	ldrb r2, [r3, #5]
	str r2, [sp, #0xc]
	ldrh r2, [r3, #6]
	str r2, [sp, #0x10]
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_0201A8D4

	thumb_func_start sub_0201A8FC
sub_0201A8FC: ; 0x0201A8FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r2, #0
	str r2, [r4, #0]
	mov r0, #0xff
	strb r0, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	strb r2, [r4, #8]
	strb r2, [r4, #9]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A924 ; =0xFFFF8000
	and r0, r1
	strh r0, [r4, #0xa]
	str r2, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
_0201A924: .word 0xFFFF8000
	thumb_func_end sub_0201A8FC

	thumb_func_start sub_0201A928
sub_0201A928: ; 0x0201A928
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0201A94C
_0201A934:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0201A942
	bl sub_020181C4
_0201A942:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0201A934
_0201A94C:
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A928

	thumb_func_start sub_0201A954
sub_0201A954: ; 0x0201A954
	push {r4, lr}
	add r4, r0, #0
	bne _0201A95E
	bl sub_02022974
_0201A95E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0201A968
	bl sub_02022974
_0201A968:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201A972
	bl sub_02022974
_0201A972:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201A986
	bl sub_02022974
_0201A986:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201A9A0 ; =0x020E56CC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201A9A0: .word 0x020E56CC
	thumb_func_end sub_0201A954

	thumb_func_start sub_0201A9A4
sub_0201A9A4: ; 0x0201A9A4
	push {r4, lr}
	add r4, r0, #0
	bne _0201A9AE
	bl sub_02022974
_0201A9AE:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0201A9B8
	bl sub_02022974
_0201A9B8:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201A9C2
	bl sub_02022974
_0201A9C2:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201A9D6
	bl sub_02022974
_0201A9D6:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201A9F0 ; =0x020E56C0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201A9F0: .word 0x020E56C0
	thumb_func_end sub_0201A9A4

	thumb_func_start sub_0201A9F4
sub_0201A9F4: ; 0x0201A9F4
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA0C ; =0x020E569C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AA0C: .word 0x020E569C
	thumb_func_end sub_0201A9F4

	thumb_func_start sub_0201AA10
sub_0201AA10: ; 0x0201AA10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r6, [r5, #7]
	ldrb r4, [r5, #8]
	strb r1, [r5, #7]
	strb r2, [r5, #8]
	ldrb r3, [r5, #4]
	mov r2, #0x2c
	ldr r1, [r5, #0]
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA38 ; =0x020E569C
	ldr r1, [r1, r2]
	blx r1
	strb r6, [r5, #7]
	strb r4, [r5, #8]
	pop {r4, r5, r6, pc}
	nop
_0201AA38: .word 0x020E569C
	thumb_func_end sub_0201AA10

	thumb_func_start sub_0201AA3C
sub_0201AA3C: ; 0x0201AA3C
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA54 ; =0x020E56D8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AA54: .word 0x020E56D8
	thumb_func_end sub_0201AA3C

	thumb_func_start sub_0201AA58
sub_0201AA58: ; 0x0201AA58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r1, [r5, #4]
	mov r0, #0x2c
	ldr r2, [r5, #0]
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201AAD8
	ldrh r0, [r5, #0xa]
	ldrb r1, [r5, #5]
	lsl r0, r0, #0x11
	lsr r3, r0, #0x11
	ldrb r0, [r5, #7]
	add r7, r1, r0
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #8]
	mov ip, r0
	add r0, r0, r1
	mov r1, ip
	mov lr, r0
	cmp r1, r0
	bhs _0201AAD8
_0201AA8C:
	ldrb r2, [r5, #5]
	cmp r2, r7
	bhs _0201AACC
	mov r0, ip
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	lsl r1, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, r1
	mov r1, ip
	str r0, [sp]
	mov r0, #0x20
	add r6, r1, #0
	and r6, r0
_0201AAA8:
	ldrb r0, [r5, #9]
	mov r4, #0x20
	add r1, r3, #0
	lsl r0, r0, #0xc
	and r4, r2
	orr r1, r0
	mov r0, #0x1f
	add r4, r6, r4
	and r0, r2
	lsl r4, r4, #5
	add r0, r0, r4
	lsl r4, r0, #1
	ldr r0, [sp]
	add r2, r2, #1
	strh r1, [r0, r4]
	add r3, r3, #1
	cmp r2, r7
	blo _0201AAA8
_0201AACC:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _0201AA8C
_0201AAD8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AA58

	thumb_func_start sub_0201AADC
sub_0201AADC: ; 0x0201AADC
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0, #0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201AB30
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201AB34 ; =0x020E5694
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	add r2, r3, r2
	ldrb r1, [r0, #5]
	mov r3, #0
	add r4, r2, r1
	ldrh r1, [r0, #0xa]
	lsl r1, r1, #0x11
	lsr r5, r1, #0x11
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201AB30
	add r1, r3, #0
_0201AB12:
	ldrb r7, [r0, #7]
	add r2, r1, #0
	cmp r7, #0
	ble _0201AB26
_0201AB1A:
	strb r5, [r4, r2]
	ldrb r7, [r0, #7]
	add r2, r2, #1
	add r5, r5, #1
	cmp r2, r7
	blt _0201AB1A
_0201AB26:
	ldrb r2, [r0, #8]
	add r3, r3, #1
	add r4, r4, r6
	cmp r3, r2
	blt _0201AB12
_0201AB30:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0201AB34: .word 0x020E5694
	thumb_func_end sub_0201AADC

	thumb_func_start sub_0201AB38
sub_0201AB38: ; 0x0201AB38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldrb r2, [r0, #4]
	str r0, [sp]
	mov r0, #0x2c
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp]
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldr r0, [r1, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201ABC0
	ldrb r1, [r1, #0x1d]
	ldr r0, _0201ABC4 ; =0x020E5694
	ldrb r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldrb r1, [r0, #5]
	ldrb r0, [r0, #7]
	add r2, r1, r0
	ldr r0, [sp]
	ldrb r0, [r0, #6]
	mov ip, r0
	ldr r0, [sp]
	ldrb r1, [r0, #8]
	mov r0, ip
	add r0, r0, r1
	mov r1, ip
	mov lr, r0
	cmp r1, r0
	bhs _0201ABC0
	mov r6, #0
	mov r7, #0x20
_0201AB7E:
	ldr r0, [sp]
	ldrb r1, [r0, #5]
	cmp r1, r2
	bhs _0201ABB4
	mov r3, ip
	mov r0, #0x1f
	and r3, r0
	ldr r0, [sp, #8]
	mul r0, r3
	lsl r3, r0, #1
	ldr r0, [sp, #4]
	add r5, r0, r3
	mov r3, ip
	mov r0, #0x20
	and r3, r0
_0201AB9C:
	add r4, r1, #0
	and r4, r7
	mov r0, #0x1f
	add r4, r3, r4
	and r0, r1
	lsl r4, r4, #5
	add r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #1
	strh r6, [r5, r0]
	cmp r1, r2
	blo _0201AB9C
_0201ABB4:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _0201AB7E
_0201ABC0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201ABC4: .word 0x020E5694
	thumb_func_end sub_0201AB38

	thumb_func_start sub_0201ABC8
sub_0201ABC8: ; 0x0201ABC8
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0, #0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201AC16
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201AC1C ; =0x020E5694
	mov r4, #0
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	ldrb r1, [r0, #5]
	add r2, r3, r2
	add r5, r2, r1
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201AC16
	add r1, r4, #0
	add r2, r4, #0
_0201ABFA:
	ldrb r7, [r0, #7]
	add r3, r2, #0
	cmp r7, #0
	ble _0201AC0C
_0201AC02:
	strb r1, [r5, r3]
	ldrb r7, [r0, #7]
	add r3, r3, #1
	cmp r3, r7
	blt _0201AC02
_0201AC0C:
	ldrb r3, [r0, #8]
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, r3
	blt _0201ABFA
_0201AC16:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0201AC1C: .word 0x020E5694
	thumb_func_end sub_0201ABC8

	thumb_func_start sub_0201AC20
sub_0201AC20: ; 0x0201AC20
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201AA58
	add r0, r4, #0
	bl sub_0201ACCC
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201AC20

	thumb_func_start sub_0201AC4C
sub_0201AC4C: ; 0x0201AC4C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201AA58
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	thumb_func_end sub_0201AC4C

	thumb_func_start sub_0201AC64
sub_0201AC64: ; 0x0201AC64
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201AADC
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201AC64

	thumb_func_start sub_0201ACA0
sub_0201ACA0: ; 0x0201ACA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201AADC
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ACA0

	thumb_func_start sub_0201ACCC
sub_0201ACCC: ; 0x0201ACCC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldrh r2, [r3, #0xa]
	ldrb r1, [r3, #4]
	mov r4, #0x2c
	lsl r2, r2, #0x11
	ldr r0, [r3, #0]
	lsr r2, r2, #0x11
	str r2, [sp]
	mul r4, r1
	add r4, r0, r4
	ldr r2, [r3, #0xc]
	ldrb r5, [r3, #7]
	ldrb r3, [r3, #8]
	ldrb r4, [r4, #0x1f]
	mul r3, r5
	mul r3, r4
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ACCC

	thumb_func_start sub_0201ACF4
sub_0201ACF4: ; 0x0201ACF4
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AD0C ; =0x020E56B4
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AD0C: .word 0x020E56B4
	thumb_func_end sub_0201ACF4

	thumb_func_start sub_0201AD10
sub_0201AD10: ; 0x0201AD10
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AD28 ; =0x020E56A8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AD28: .word 0x020E56A8
	thumb_func_end sub_0201AD10

	thumb_func_start sub_0201AD2C
sub_0201AD2C: ; 0x0201AD2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201AB38
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD2C

	thumb_func_start sub_0201AD54
sub_0201AD54: ; 0x0201AD54
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201AB38
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD54

	thumb_func_start sub_0201AD68
sub_0201AD68: ; 0x0201AD68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201ABC8
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD68

	thumb_func_start sub_0201AD90
sub_0201AD90: ; 0x0201AD90
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201ABC8
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD90

	thumb_func_start sub_0201ADA4
sub_0201ADA4: ; 0x0201ADA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r2, [r4, #4]
	mov r0, #0x2c
	ldr r3, [r4, #0]
	mul r0, r2
	add r0, r3, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _0201ADC0
	lsl r0, r1, #4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0201ADC0:
	lsl r3, r1, #0x18
	lsl r0, r1, #0x10
	orr r0, r3
	lsl r5, r1, #8
	orr r0, r5
	orr r0, r1
	ldr r1, [r4, #0xc]
	ldrb r3, [r4, #8]
	ldrb r4, [r4, #7]
	mul r2, r4
	mul r2, r3
	bl sub_020C4BB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ADA4

	thumb_func_start sub_0201ADDC
sub_0201ADDC: ; 0x0201ADDC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r5, [r4, #0x10]
	str r5, [sp]
	ldrh r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrh r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrh r5, [r4, #0x1c]
	str r5, [sp, #0xc]
	ldrh r5, [r4, #0x20]
	str r5, [sp, #0x10]
	ldrh r4, [r4, #0x24]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl sub_0201AE08
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201ADDC

	thumb_func_start sub_0201AE08
sub_0201AE08: ; 0x0201AE08
	push {r4, r5, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	add r4, sp, #0x20
	ldrh r5, [r4, #0x10]
	add r1, sp, #0x14
	strh r5, [r1, #0xc]
	ldrh r5, [r4, #0x14]
	strh r5, [r1, #0xe]
	ldr r5, [r0, #0xc]
	str r5, [sp, #0x14]
	ldrb r5, [r0, #7]
	lsl r5, r5, #3
	strh r5, [r1, #4]
	ldrb r5, [r0, #8]
	lsl r5, r5, #3
	strh r5, [r1, #6]
	ldrb r5, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0x2c
	mul r0, r5
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r1, sp, #0x14
	cmp r0, #0
	ldrh r0, [r4, #0x18]
	bne _0201AE5A
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A1E4
	add sp, #0x24
	pop {r4, r5, pc}
_0201AE5A:
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A424
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201AE08

	thumb_func_start sub_0201AE78
sub_0201AE78: ; 0x0201AE78
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	add r4, r2, #0
	str r1, [sp, #8]
	ldrb r1, [r0, #7]
	add r2, r3, #0
	lsl r3, r1, #3
	add r1, sp, #8
	strh r3, [r1, #4]
	ldrb r3, [r0, #8]
	lsl r3, r3, #3
	strh r3, [r1, #6]
	ldrb r3, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0x2c
	mul r0, r3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r3, sp, #0x10
	cmp r0, #0
	bne _0201AEBA
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201A60C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0201AEBA:
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201A6D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201AE78

	thumb_func_start sub_0201AED0
sub_0201AED0: ; 0x0201AED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x118
	add r5, r0, #0
	ldr r0, [sp, #0x330]
	str r1, [sp]
	str r0, [sp, #0x330]
	add r1, sp, #0x318
	ldrh r1, [r1, #0x10]
	ldr r0, [r5, #0xc]
	str r1, [sp, #0x5c]
	ldrb r1, [r5, #7]
	str r0, [sp, #0x278]
	ldrb r0, [r5, #8]
	lsl r1, r1, #0x13
	lsr r4, r1, #0x10
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0x13
	sub r1, r4, r1
	lsr r0, r0, #0x10
	str r4, [sp, #0x58]
	str r1, [sp, #8]
	cmp r1, r2
	blt _0201AF02
	str r2, [sp, #8]
_0201AF02:
	add r1, sp, #0x318
	ldrh r1, [r1, #0x14]
	sub r0, r0, r1
	str r1, [sp, #0x48]
	str r0, [sp, #4]
	cmp r0, r3
	blt _0201AF12
	str r3, [sp, #4]
_0201AF12:
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #8
	ble _0201AF22
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201AF22:
	ldr r0, [sp, #4]
	cmp r0, #8
	ble _0201AF30
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201AF30:
	ldrh r0, [r5, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _0201AF3C
	bl sub_0201B8B0
_0201AF3C:
	cmp r4, #3
	bls _0201AF44
	bl sub_0201C040
_0201AF44:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201AF50: ; jump table
	.short _0201AF58 - _0201AF50 - 2 ; case 0
	.short _0201B05A - _0201AF50 - 2 ; case 1
	.short _0201B26A - _0201AF50 - 2 ; case 2
	.short _0201B48A - _0201AF50 - 2 ; case 3
_0201AF58:
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x70]
	mov r0, #0
	str r0, [sp, #0x274]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201AF6E
	bl sub_0201C040
_0201AF6E:
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x6c]
_0201AF7A:
	ldr r0, [sp]
	ldr r1, [sp, #0x70]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x274]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x270]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B02E
	ble _0201B02E
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x6c]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x68]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x6c]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x64]
	str r0, [sp, #0x60]
_0201AFCC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x68]
	str r5, [sp, #0x27c]
	add r0, r5, r0
	ldr r5, [sp, #0x26c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B020
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x280]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x284]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x284]
	and r6, r5
	ldr r5, [sp, #0x280]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201B020
	ldr r6, [sp, #0x27c]
	ldr r0, [sp, #0x64]
	add r6, r6, r0
	ldr r0, [sp, #0x60]
	strb r5, [r0, r6]
_0201B020:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201AFCC
_0201B02E:
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201B03C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B042
_0201B03C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B042:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x274]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x274]
	cmp r1, r0
	blt _0201AF7A
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B05A:
	ldr r0, [sp]
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	mov r0, #0
	str r0, [sp, #0x268]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201B156
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x80]
_0201B086:
	ldr r0, [sp, #0x25c]
	ldr r1, [sp, #0x84]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x258]
	ldr r0, [sp, #0x268]
	ldr r6, [sp, #0x80]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x260]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x264]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x264]
	str r6, [sp, #0x7c]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x80]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x78]
	str r0, [sp, #0x74]
_0201B0D0:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x7c]
	str r5, [sp, #0x288]
	add r0, r5, r0
	ldr r5, [sp, #0x258]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B124
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x28c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x290]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x290]
	and r6, r5
	ldr r5, [sp, #0x28c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201B124
	ldr r6, [sp, #0x288]
	ldr r0, [sp, #0x78]
	add r6, r6, r0
	ldr r0, [sp, #0x74]
	strb r5, [r0, r6]
_0201B124:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B0D0
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201B13E
	ldr r0, [sp, #0x264]
	add r0, r0, #2
	str r0, [sp, #0x264]
	b _0201B144
_0201B13E:
	ldr r0, [sp, #0x264]
	add r0, r0, #1
	str r0, [sp, #0x264]
_0201B144:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x268]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x268]
	cmp r1, r0
	blt _0201B086
_0201B156:
	ldr r0, [sp]
	add r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r0, #0
	str r0, [sp, #0x254]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201B172
	bl sub_0201C040
_0201B172:
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x94]
_0201B184:
	ldr r0, [sp]
	ldr r1, [sp, #0x98]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x24c]
	ldr r0, [sp, #0x254]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x250]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x294]
	sub r0, #8
	str r0, [sp, #0x294]
	cmp r0, #0
	ble _0201B23E
	ble _0201B23E
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x94]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x90]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x94]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x8c]
	str r0, [sp, #0x88]
_0201B1DC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x298]
	add r0, r5, r0
	ldr r5, [sp, #0x24c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B230
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x29c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2a0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2a0]
	and r6, r5
	ldr r5, [sp, #0x29c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201B230
	ldr r6, [sp, #0x298]
	ldr r0, [sp, #0x8c]
	add r6, r6, r0
	ldr r0, [sp, #0x88]
	strb r5, [r0, r6]
_0201B230:
	ldr r0, [sp, #0x294]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B1DC
_0201B23E:
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201B24C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B252
_0201B24C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B252:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x254]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x254]
	cmp r1, r0
	blt _0201B184
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B26A:
	ldr r0, [sp]
	mov r1, #7
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x244]
	mov r0, #0
	str r0, [sp, #0x248]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x40]
_0201B28A:
	ldr r0, [sp, #0x23c]
	ldr r1, [sp, #0xa8]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x238]
	ldr r0, [sp, #0x248]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x240]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B346
	ble _0201B346
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x244]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x244]
	str r6, [sp, #0xa4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xa0]
	str r0, [sp, #0x9c]
_0201B2DC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	b _0201B2F0
	nop
_0201B2EC: .word 0x00003FE0
_0201B2F0:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xa4]
	str r5, [sp, #0x2a4]
	add r0, r5, r0
	ldr r5, [sp, #0x238]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B338
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2a8]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2ac]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2ac]
	and r6, r5
	ldr r5, [sp, #0x2a8]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201B338
	ldr r6, [sp, #0x2a4]
	ldr r0, [sp, #0xa0]
	add r6, r6, r0
	ldr r0, [sp, #0x9c]
	strb r5, [r0, r6]
_0201B338:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B2DC
_0201B346:
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201B354
	ldr r0, [sp, #0x244]
	add r0, r0, #2
	str r0, [sp, #0x244]
	b _0201B35A
_0201B354:
	ldr r0, [sp, #0x244]
	add r0, r0, #1
	str r0, [sp, #0x244]
_0201B35A:
	ldr r0, [sp, #0x23c]
	add r0, r0, #4
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x248]
	add r0, r0, #1
	str r0, [sp, #0x248]
	cmp r0, #8
	blt _0201B28A
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
_0201B37A:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B388
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B388:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B37A
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xb8]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201B3A8
	bl sub_0201C040
_0201B3A8:
	ldr r0, [sp]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x230]
	ldr r0, [sp, #0x20]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x234]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B45C
	ble _0201B45C
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xb4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xb0]
	str r0, [sp, #0xac]
_0201B3FA:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xb4]
	str r5, [sp, #0x2b0]
	add r0, r5, r0
	ldr r5, [sp, #0x230]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B44E
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2b4]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2b8]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2b8]
	and r6, r5
	ldr r5, [sp, #0x2b4]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201B44E
	ldr r6, [sp, #0x2b0]
	ldr r0, [sp, #0xb0]
	add r6, r6, r0
	ldr r0, [sp, #0xac]
	strb r5, [r0, r6]
_0201B44E:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B3FA
_0201B45C:
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201B46A
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B470
_0201B46A:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B470:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0201B3A8
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B48A:
	ldr r0, [sp]
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x228]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x22c]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x38]
_0201B4AE:
	ldr r0, [sp, #0x220]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x21c]
	ldr r0, [sp, #0x22c]
	ldr r6, [sp, #0x38]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x224]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x228]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x228]
	str r6, [sp, #0xc4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	str r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xc0]
	str r0, [sp, #0xbc]
_0201B4FA:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xc4]
	str r5, [sp, #0x2bc]
	add r0, r5, r0
	ldr r5, [sp, #0x21c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B54E
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2c0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2c4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2c4]
	and r6, r5
	ldr r5, [sp, #0x2c0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201B54E
	ldr r6, [sp, #0x2bc]
	ldr r0, [sp, #0xc0]
	add r6, r6, r0
	ldr r0, [sp, #0xbc]
	strb r5, [r0, r6]
_0201B54E:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B4FA
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201B568
	ldr r0, [sp, #0x228]
	add r0, r0, #2
	str r0, [sp, #0x228]
	b _0201B56E
_0201B568:
	ldr r0, [sp, #0x228]
	add r0, r0, #1
	str r0, [sp, #0x228]
_0201B56E:
	ldr r0, [sp, #0x220]
	add r0, r0, #4
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x22c]
	add r0, r0, #1
	str r0, [sp, #0x22c]
	cmp r0, #8
	blt _0201B4AE
	ldr r0, [sp]
	str r0, [sp, #0x20c]
	add r0, #0x20
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x214]
	mov r0, #0
	str r0, [sp, #0x218]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xd4]
	add r0, #8
	str r0, [sp, #0xd4]
_0201B596:
	ldr r0, [sp, #0x20c]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0xd4]
	str r0, [sp, #0x208]
	ldr r0, [sp, #0x218]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x210]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2c8]
	sub r0, #8
	str r0, [sp, #0x2c8]
	cmp r0, #0
	ble _0201B650
	ble _0201B650
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x214]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x214]
	str r6, [sp, #0xd0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xcc]
	str r0, [sp, #0xc8]
_0201B5EE:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xd0]
	str r5, [sp, #0x2cc]
	add r0, r5, r0
	ldr r5, [sp, #0x208]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B642
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2d0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2d4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2d4]
	and r6, r5
	ldr r5, [sp, #0x2d0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201B642
	ldr r6, [sp, #0x2cc]
	ldr r0, [sp, #0xcc]
	add r6, r6, r0
	ldr r0, [sp, #0xc8]
	strb r5, [r0, r6]
_0201B642:
	ldr r0, [sp, #0x2c8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B5EE
_0201B650:
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201B65E
	ldr r0, [sp, #0x214]
	add r0, r0, #2
	str r0, [sp, #0x214]
	b _0201B664
_0201B65E:
	ldr r0, [sp, #0x214]
	add r0, r0, #1
	str r0, [sp, #0x214]
_0201B664:
	ldr r0, [sp, #0x20c]
	add r0, r0, #4
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x218]
	add r0, r0, #1
	str r0, [sp, #0x218]
	cmp r0, #8
	blt _0201B596
	ldr r0, [sp]
	mov r2, #0
	str r0, [sp, #0x1fc]
	add r0, #0x40
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
	str r0, [sp, #0x204]
_0201B688:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B696
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201B696:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B688
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201B78C
_0201B6B4:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0xe4]
	ldr r0, [r0, #0]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x1f8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x200]
	ldr r0, [sp, #0x204]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x204]
	str r6, [sp, #0xe0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	ldr r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xdc]
	str r0, [sp, #0xd8]
_0201B6FC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	b _0201B710
	nop
_0201B70C: .word 0x00003FE0
_0201B710:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xe0]
	str r5, [sp, #0x2d8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f8]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B758
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2dc]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2e0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2e0]
	and r6, r5
	ldr r5, [sp, #0x2dc]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201B758
	ldr r6, [sp, #0x2d8]
	ldr r0, [sp, #0xdc]
	add r6, r6, r0
	ldr r0, [sp, #0xd8]
	strb r5, [r0, r6]
_0201B758:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B6FC
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201B772
	ldr r0, [sp, #0x204]
	add r0, r0, #2
	str r0, [sp, #0x204]
	b _0201B778
_0201B772:
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201B778:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x1c]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _0201B6B4
_0201B78C:
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x60
	str r0, [sp]
	mov r1, #1
_0201B796:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B7A4
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B7A4:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B796
	ldr r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xf4]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201B7C2
	bl sub_0201C040
_0201B7C2:
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201B7C8:
	ldr r0, [sp]
	ldr r1, [sp, #0xf4]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x1f0]
	ldr r0, [sp, #0x18]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1f4]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2e4]
	sub r0, #8
	str r0, [sp, #0x2e4]
	cmp r0, #0
	ble _0201B882
	ble _0201B882
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201BAF4 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xf0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201BAF4 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xec]
	str r0, [sp, #0xe8]
_0201B820:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201BAF4 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xf0]
	str r5, [sp, #0x2e8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f0]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B874
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2ec]
	ldrb r5, [r0, r7]
	mov ip, r5
	mov r5, #0xf0
	asr r5, r6
	mov r6, ip
	and r6, r5
	ldr r5, [sp, #0x2ec]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201B874
	ldr r6, [sp, #0x2e8]
	ldr r0, [sp, #0xec]
	add r6, r6, r0
	ldr r0, [sp, #0xe8]
	strb r5, [r0, r6]
_0201B874:
	ldr r0, [sp, #0x2e4]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B820
_0201B882:
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201B890
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B896
_0201B890:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B896:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0201B7C8
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AED0

	thumb_func_start sub_0201B8B0
sub_0201B8B0: ; 0x0201B8B0
	lsl r1, r2, #2
	mul r1, r3
	ldr r3, [r5, #0]
	ldrb r2, [r5, #9]
	ldr r0, [sp]
	ldr r3, [r3, #0]
	lsl r1, r1, #3
	bl sub_02019FC0
	str r0, [sp, #0x1ec]
	cmp r4, #3
	bhi _0201B9A2
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201B8D4: ; jump table
	.short _0201B8DC - _0201B8D4 - 2 ; case 0
	.short _0201B9A4 - _0201B8D4 - 2 ; case 1
	.short _0201BB50 - _0201B8D4 - 2 ; case 2
	.short _0201BCF4 - _0201B8D4 - 2 ; case 3
_0201B8DC:
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10c]
	mov r0, #0
	str r0, [sp, #0x1e8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201B9A2
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x108]
_0201B8FC:
	ldr r1, [sp, #0x10c]
	ldr r0, [sp, #0x1e8]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x310]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201B980
	ble _0201B980
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x108]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x100]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x104]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x108]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0xfc]
	str r0, [sp, #0xf8]
_0201B948:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x104]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201B974
	ldr r0, [sp, #0x100]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201B974
	ldr r0, [sp, #0xfc]
	add r2, r3, r0
	ldr r0, [sp, #0xf8]
	strb r1, [r0, r2]
_0201B974:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201B948
_0201B980:
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201B98E
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B994
_0201B98E:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B994:
	ldr r0, [sp, #0x1e8]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e8]
	cmp r1, r0
	blt _0201B8FC
_0201B9A2:
	b _0201C03A
_0201B9A4:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1e0]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x124]
	mov r0, #0
	str r0, [sp, #0x1e4]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201BA6A
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x120]
_0201B9CE:
	ldr r1, [sp, #0x124]
	ldr r0, [sp, #0x1e4]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30c]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1e0]
	ldr r2, [sp, #0x120]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x1e0]
	str r2, [sp, #0x11c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x120]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r2, [sp, #0x114]
	str r0, [sp, #0x110]
_0201BA12:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x11c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BA3E
	ldr r0, [sp, #0x118]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201BA3E
	ldr r0, [sp, #0x114]
	add r2, r3, r0
	ldr r0, [sp, #0x110]
	strb r1, [r0, r2]
_0201BA3E:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BA12
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201BA56
	ldr r0, [sp, #0x1e0]
	add r0, r0, #2
	str r0, [sp, #0x1e0]
	b _0201BA5C
_0201BA56:
	ldr r0, [sp, #0x1e0]
	add r0, r0, #1
	str r0, [sp, #0x1e0]
_0201BA5C:
	ldr r0, [sp, #0x1e4]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e4]
	cmp r1, r0
	blt _0201B9CE
_0201BA6A:
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x308]
	add r0, #0x40
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x13c]
	mov r0, #0
	str r0, [sp, #0x1dc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201BB4E
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x138]
_0201BA96:
	ldr r1, [sp, #0x13c]
	ldr r0, [sp, #0x1dc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1d8]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201BB28
	ble _0201BB28
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x138]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x130]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x134]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x138]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x12c]
	str r0, [sp, #0x128]
_0201BAE4:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	b _0201BAFC
	nop
_0201BAF4: .word 0x00003FE0
_0201BAF8: .word 0x00007FC0
_0201BAFC:
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x134]
	add r2, r3, r0
	ldr r0, [sp, #0x308]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201BB1E
	ldr r0, [sp, #0x130]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201BB1E
	ldr r0, [sp, #0x12c]
	add r2, r3, r0
	ldr r0, [sp, #0x128]
	strb r1, [r0, r2]
_0201BB1E:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BAE4
_0201BB28:
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201BB36
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201BB3C
_0201BB36:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BB3C:
	ldr r0, [sp, #0x308]
	add r0, #8
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x1dc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1dc]
	cmp r1, r0
	blt _0201BA96
_0201BB4E:
	b _0201C03A
_0201BB50:
	ldr r0, [sp, #0x48]
	mov r1, #7
	str r0, [sp, #0x1d0]
	mov r0, #0
	str r0, [sp, #0x1d4]
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x30]
_0201BB6E:
	ldr r1, [sp, #0x150]
	ldr r0, [sp, #0x1d4]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x304]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201BBF2
	ble _0201BBF2
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1d0]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x148]
	ldr r0, [sp, #0x1d0]
	str r2, [sp, #0x14c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x144]
	str r0, [sp, #0x140]
_0201BBBA:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x14c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BBE6
	ldr r0, [sp, #0x148]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201BBE6
	ldr r0, [sp, #0x144]
	add r2, r3, r0
	ldr r0, [sp, #0x140]
	strb r1, [r0, r2]
_0201BBE6:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201BBBA
_0201BBF2:
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201BC00
	ldr r0, [sp, #0x1d0]
	add r0, r0, #2
	str r0, [sp, #0x1d0]
	b _0201BC06
_0201BC00:
	ldr r0, [sp, #0x1d0]
	add r0, r0, #1
	str r0, [sp, #0x1d0]
_0201BC06:
	ldr r0, [sp, #0x1d4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1d4]
	cmp r0, #8
	blt _0201BB6E
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	str r0, [sp, #0x48]
	add r7, #0x80
	mov r0, #0
	mov r2, #1
_0201BC20:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201BC2E
	ldr r1, [sp, #0x48]
	add r1, r1, #1
	str r1, [sp, #0x48]
_0201BC2E:
	add r0, r0, #1
	cmp r0, #8
	blt _0201BC20
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x164]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201BCF2
_0201BC4A:
	ldr r1, [sp, #0x164]
	ldr r0, [sp, #0x14]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x300]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201BCCE
	ble _0201BCCE
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x15c]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x160]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x158]
	str r0, [sp, #0x154]
_0201BC96:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x160]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BCC2
	ldr r0, [sp, #0x15c]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201BCC2
	ldr r0, [sp, #0x158]
	add r2, r3, r0
	ldr r0, [sp, #0x154]
	strb r1, [r0, r2]
_0201BCC2:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201BC96
_0201BCCE:
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201BCDC
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201BCE2
_0201BCDC:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BCE2:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0201BC4A
_0201BCF2:
	b _0201C03A
_0201BCF4:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1c8]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x1cc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x28]
_0201BD16:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1cc]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2fc]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c8]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x170]
	ldr r0, [sp, #0x1c8]
	str r2, [sp, #0x174]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r6, [sp, #0x24]
	str r2, [sp, #0x16c]
	str r0, [sp, #0x168]
_0201BD5C:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x174]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BD88
	ldr r0, [sp, #0x170]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201BD88
	ldr r0, [sp, #0x16c]
	add r2, r3, r0
	ldr r0, [sp, #0x168]
	strb r1, [r0, r2]
_0201BD88:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BD5C
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201BDA0
	ldr r0, [sp, #0x1c8]
	add r0, r0, #2
	str r0, [sp, #0x1c8]
	b _0201BDA6
_0201BDA0:
	ldr r0, [sp, #0x1c8]
	add r0, r0, #1
	str r0, [sp, #0x1c8]
_0201BDA6:
	ldr r0, [sp, #0x1cc]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1cc]
	cmp r0, #8
	blt _0201BD16
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x2f8]
	add r0, #0x40
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c0]
	mov r0, #0
	str r0, [sp, #0x1c4]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x188]
	add r0, #8
	str r0, [sp, #0x188]
_0201BDCA:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c4]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1bc]
	ldr r5, [sp, #0x188]
	cmp r7, #0
	ble _0201BE50
	ble _0201BE50
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c0]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x180]
	ldr r0, [sp, #0x1c0]
	str r2, [sp, #0x184]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x17c]
	str r0, [sp, #0x178]
_0201BE18:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x184]
	add r2, r3, r0
	ldr r0, [sp, #0x2f8]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201BE46
	ldr r0, [sp, #0x180]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201BE46
	ldr r0, [sp, #0x17c]
	add r2, r3, r0
	ldr r0, [sp, #0x178]
	strb r1, [r0, r2]
_0201BE46:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BE18
_0201BE50:
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201BE64
	ldr r0, [sp, #0x1c0]
	add r0, r0, #2
	str r0, [sp, #0x1c0]
	b _0201BE6A
	nop
_0201BE60: .word 0x00007FC0
_0201BE64:
	ldr r0, [sp, #0x1c0]
	add r0, r0, #1
	str r0, [sp, #0x1c0]
_0201BE6A:
	ldr r0, [sp, #0x2f8]
	add r0, #8
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x1c4]
	add r0, r0, #1
	str r0, [sp, #0x1c4]
	cmp r0, #8
	blt _0201BDCA
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	add r7, #0x80
	str r0, [sp, #0x48]
	str r0, [sp, #0x1b8]
	mov r0, #0
	mov r2, #1
_0201BE8A:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201BE98
	ldr r1, [sp, #0x1b8]
	add r1, r1, #1
	str r1, [sp, #0x1b8]
_0201BE98:
	add r0, r0, #1
	cmp r0, #8
	blt _0201BE8A
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x19c]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201BF52
_0201BEB6:
	ldr r1, [sp, #0x19c]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x1b8]
	mov r3, #0x38
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r5, [sp, #0x5c]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x194]
	ldr r0, [sp, #0x1b8]
	str r2, [sp, #0x198]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	ldr r6, [sp, #0x24]
	mov r4, #0
	str r2, [sp, #0x190]
	str r0, [sp, #0x18c]
_0201BEF8:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201C048 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x198]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BF24
	ldr r0, [sp, #0x194]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201BF24
	ldr r0, [sp, #0x190]
	add r2, r3, r0
	ldr r0, [sp, #0x18c]
	strb r1, [r0, r2]
_0201BF24:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BEF8
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201BF3C
	ldr r0, [sp, #0x1b8]
	add r0, r0, #2
	str r0, [sp, #0x1b8]
	b _0201BF42
_0201BF3C:
	ldr r0, [sp, #0x1b8]
	add r0, r0, #1
	str r0, [sp, #0x1b8]
_0201BF42:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0201BEB6
_0201BF52:
	ldr r0, [sp, #0x1ec]
	mov r2, #0
	str r0, [sp, #0x2f0]
	add r0, #0xc0
	str r0, [sp, #0x2f0]
	mov r1, #1
_0201BF5E:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201BF6C
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BF6C:
	add r2, r2, #1
	cmp r2, #8
	blt _0201BF5E
	ldr r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1b0]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201C03A
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201BF8C:
	ldr r1, [sp, #0x1b0]
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1b4]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201C012
	ble _0201C012
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x1a8]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x1ac]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x1a4]
	str r0, [sp, #0x1a0]
_0201BFDA:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201C048 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x1ac]
	add r2, r3, r0
	ldr r0, [sp, #0x2f0]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201C008
	ldr r0, [sp, #0x1a8]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201C008
	ldr r0, [sp, #0x1a4]
	add r2, r3, r0
	ldr r0, [sp, #0x1a0]
	strb r1, [r0, r2]
_0201C008:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BFDA
_0201C012:
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201C020
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201C026
_0201C020:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201C026:
	ldr r0, [sp, #0x2f0]
	ldr r1, [sp, #4]
	add r0, #8
	str r0, [sp, #0x2f0]
	ldr r0, [sp, #0xc]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0201BF8C
_0201C03A:
	ldr r0, [sp, #0x1ec]
	bl sub_020181C4
	thumb_func_end sub_0201B8B0

	thumb_func_start sub_0201C040
sub_0201C040: ; 0x0201C040
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	nop
_0201C048: .word 0x00007FC0
	thumb_func_end sub_0201C040

	thumb_func_start sub_0201C04C
sub_0201C04C: ; 0x0201C04C
	push {r4, r5, r6, lr}
	ldrb r6, [r0, #4]
	mov r5, #0x2c
	ldr r4, [r0, #0]
	mul r5, r6
	add r4, r4, r5
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _0201C064
	bl sub_0201C06C
	pop {r4, r5, r6, pc}
_0201C064:
	bl sub_0201C158
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201C04C

	thumb_func_start sub_0201C06C
sub_0201C06C: ; 0x0201C06C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r0, #0
	add r0, r1, #0
	lsl r3, r6, #0x18
	lsl r1, r6, #0x10
	str r2, [sp]
	orr r1, r3
	lsl r5, r6, #8
	orr r1, r5
	orr r1, r6
	str r1, [sp, #4]
	ldrb r1, [r4, #7]
	ldrb r3, [r4, #8]
	ldr r2, [r4, #0xc]
	str r1, [sp, #8]
	mul r1, r3
	lsl r1, r1, #5
	str r1, [sp, #0xc]
	cmp r0, #3
	bhi _0201C152
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201C0A4: ; jump table
	.short _0201C0AC - _0201C0A4 - 2 ; case 0
	.short _0201C0FA - _0201C0A4 - 2 ; case 1
	.short _0201C152 - _0201C0A4 - 2 ; case 2
	.short _0201C152 - _0201C0A4 - 2 ; case 3
_0201C0AC:
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201C152
	mov r0, #7
	mov lr, r0
_0201C0B8:
	ldr r3, [sp]
	mov r4, #0
	add r5, r7, #0
_0201C0BE:
	mov r0, #7
	add r6, r3, #0
	and r6, r0
	add r1, r3, #0
	mov r0, lr
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201C0E0
	ldr r0, [r2, r1]
	b _0201C0E2
_0201C0E0:
	ldr r0, [sp, #4]
_0201C0E2:
	add r4, r4, #1
	str r0, [r2, r5]
	add r3, r3, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0201C0BE
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201C0B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0201C0FA:
	add r0, r1, #0
	sub r0, r0, #4
	add r2, r2, r0
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201C152
	mov r0, #7
	mov ip, r0
_0201C10C:
	ldr r4, [sp]
	mov r5, #0
	add r3, r7, #0
_0201C112:
	mov r0, #7
	add r6, r4, #0
	and r6, r0
	add r1, r4, #0
	mov r0, ip
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201C13A
	sub r0, r2, r1
	ldr r1, [r0, #0]
	sub r0, r2, r3
	str r1, [r0, #0]
	b _0201C140
_0201C13A:
	ldr r0, [sp, #4]
	sub r1, r2, r3
	str r0, [r1, #0]
_0201C140:
	add r5, r5, #1
	add r4, r4, #1
	add r3, r3, #4
	cmp r5, #8
	blt _0201C112
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201C10C
_0201C152:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201C06C

	thumb_func_start sub_0201C158
sub_0201C158: ; 0x0201C158
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r3, #0
	add r4, r0, #0
	str r2, [sp]
	lsl r2, r6, #0x18
	lsl r0, r6, #0x10
	orr r0, r2
	ldrb r2, [r4, #7]
	ldr r3, [r4, #0xc]
	lsl r5, r6, #8
	orr r0, r5
	ldrb r4, [r4, #8]
	str r2, [sp, #0x10]
	orr r0, r6
	mul r2, r4
	lsl r2, r2, #6
	str r2, [sp, #0x1c]
	cmp r1, #3
	bls _0201C182
	b _0201C288
_0201C182:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C18E: ; jump table
	.short _0201C196 - _0201C18E - 2 ; case 0
	.short _0201C204 - _0201C18E - 2 ; case 1
	.short _0201C288 - _0201C18E - 2 ; case 2
	.short _0201C288 - _0201C18E - 2 ; case 3
_0201C196:
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, r2, #0
	cmp r1, #0
	ble _0201C288
	add r1, r1, #4
	str r1, [sp, #0x14]
	mov r1, #7
	mov lr, r1
_0201C1A8:
	ldr r4, [sp]
	ldr r5, [sp, #0xc]
	mov r7, #0
_0201C1AE:
	mov r1, #7
	add r6, r4, #0
	and r6, r1
	add r2, r4, #0
	mov r1, lr
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _0201C1D4
	ldr r2, [r3, r1]
	str r2, [r3, r5]
	b _0201C1D6
_0201C1D4:
	str r0, [r3, r5]
_0201C1D6:
	add r2, r1, #4
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bge _0201C1E6
	ldr r2, [r3, r2]
	add r1, r5, #4
	str r2, [r3, r1]
	b _0201C1EA
_0201C1E6:
	add r1, r5, #4
	str r0, [r3, r1]
_0201C1EA:
	add r7, r7, #1
	add r4, r4, #1
	add r5, #8
	cmp r7, #8
	blt _0201C1AE
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #0xc]
	cmp r2, r1
	blt _0201C1A8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0201C204:
	add r1, r2, #0
	sub r1, #8
	add r3, r3, r1
	mov r1, #0
	str r1, [sp, #8]
	add r1, r2, #0
	cmp r1, #0
	ble _0201C288
_0201C214:
	mov r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	ldr r5, [sp]
	sub r1, r1, #4
	str r1, [sp, #0x18]
	mov r1, #7
	ldr r4, [sp, #8]
	mov ip, r1
_0201C226:
	mov r1, #7
	add r6, r5, #0
	and r6, r1
	add r2, r5, #0
	mov r1, ip
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #8]
	add r6, r1, r2
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bge _0201C250
	sub r1, r3, r6
	ldr r2, [r1, #0]
	sub r1, r3, r4
	str r2, [r1, #0]
	b _0201C254
_0201C250:
	sub r1, r3, r4
	str r0, [r1, #0]
_0201C254:
	ldr r1, [sp, #0x18]
	sub r2, r6, #4
	cmp r2, r1
	bge _0201C268
	sub r1, r3, r2
	sub r2, r4, #4
	ldr r1, [r1, #0]
	sub r2, r3, r2
	str r1, [r2, #0]
	b _0201C26E
_0201C268:
	sub r1, r4, #4
	sub r1, r3, r1
	str r0, [r1, #0]
_0201C26E:
	ldr r1, [sp, #4]
	add r5, r5, #1
	add r1, r1, #1
	add r4, #8
	str r1, [sp, #4]
	cmp r1, #8
	blt _0201C226
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #8]
	cmp r2, r1
	blt _0201C214
_0201C288:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C158

	thumb_func_start sub_0201C28C
sub_0201C28C: ; 0x0201C28C
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0201C28C

	thumb_func_start sub_0201C290
sub_0201C290: ; 0x0201C290
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_0201C290

	thumb_func_start sub_0201C294
sub_0201C294: ; 0x0201C294
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_0201C294

	thumb_func_start sub_0201C298
sub_0201C298: ; 0x0201C298
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end sub_0201C298

	thumb_func_start sub_0201C29C
sub_0201C29C: ; 0x0201C29C
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0201C29C

	thumb_func_start sub_0201C2A0
sub_0201C2A0: ; 0x0201C2A0
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0201C2A0

	thumb_func_start sub_0201C2A4
sub_0201C2A4: ; 0x0201C2A4
	ldrh r0, [r0, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	bx lr
	thumb_func_end sub_0201C2A4

	thumb_func_start sub_0201C2AC
sub_0201C2AC: ; 0x0201C2AC
	strb r1, [r0, #5]
	bx lr
	thumb_func_end sub_0201C2AC

	thumb_func_start sub_0201C2B0
sub_0201C2B0: ; 0x0201C2B0
	strb r1, [r0, #6]
	bx lr
	thumb_func_end sub_0201C2B0

	thumb_func_start sub_0201C2B4
sub_0201C2B4: ; 0x0201C2B4
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_0201C2B4

	thumb_func_start sub_0201C2B8
sub_0201C2B8: ; 0x0201C2B8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201C3D0
	add r0, r4, #0
	bl sub_0201C2D0
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201C2B8

	thumb_func_start sub_0201C2D0
sub_0201C2D0: ; 0x0201C2D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #6]
	mov r0, #1
	tst r0, r1
	beq _0201C2EA
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0xc]
	mov r0, #0
	lsl r2, r2, #1
	bl sub_020194E0
_0201C2EA:
	ldrh r1, [r4, #6]
	mov r0, #2
	tst r0, r1
	beq _0201C300
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r0, #1
	lsl r2, r2, #1
	bl sub_020194E0
_0201C300:
	ldrh r1, [r4, #6]
	mov r0, #4
	tst r0, r1
	beq _0201C316
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x60]
	ldr r3, [r4, #0x64]
	mov r0, #2
	lsl r2, r2, #1
	bl sub_020194E0
_0201C316:
	ldrh r1, [r4, #6]
	mov r0, #8
	tst r0, r1
	beq _0201C338
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0x94
	add r3, r4, #0
	add r1, #0x8c
	ldr r2, [r2, #0]
	add r3, #0x90
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #3
	lsl r2, r2, #1
	bl sub_020194E0
_0201C338:
	ldrh r1, [r4, #6]
	mov r0, #0x10
	tst r0, r1
	beq _0201C35A
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xc0
	add r3, r4, #0
	add r1, #0xb8
	ldr r2, [r2, #0]
	add r3, #0xbc
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #4
	lsl r2, r2, #1
	bl sub_020194E0
_0201C35A:
	ldrh r1, [r4, #6]
	mov r0, #0x20
	tst r0, r1
	beq _0201C37C
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xec
	add r3, r4, #0
	add r1, #0xe4
	ldr r2, [r2, #0]
	add r3, #0xe8
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #5
	lsl r2, r2, #1
	bl sub_020194E0
_0201C37C:
	ldrh r0, [r4, #6]
	mov r3, #0x40
	tst r0, r3
	beq _0201C39C
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xd8
	add r1, #0xd0
	ldr r2, [r4, r2]
	add r3, #0xd4
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #6
	lsl r2, r2, #1
	bl sub_020194E0
_0201C39C:
	ldrh r0, [r4, #6]
	mov r3, #0x80
	tst r0, r3
	beq _0201C3BC
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xc4
	add r1, #0xbc
	ldr r2, [r4, r2]
	add r3, #0xc0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #7
	lsl r2, r2, #1
	bl sub_020194E0
_0201C3BC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201C2D0

	thumb_func_start sub_0201C3C0
sub_0201C3C0: ; 0x0201C3C0
	ldrh r3, [r0, #6]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C3C0

	thumb_func_start sub_0201C3D0
sub_0201C3D0: ; 0x0201C3D0
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201C3F6
	ldr r1, [r4, #0x14]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x18]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C60C ; =0x04000010
	str r1, [r0, #0]
_0201C3F6:
	ldrh r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201C416
	ldr r1, [r4, #0x40]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x44]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C610 ; =0x04000014
	str r1, [r0, #0]
_0201C416:
	ldrh r1, [r4, #4]
	mov r0, #4
	tst r0, r1
	beq _0201C476
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C442
	ldr r1, [r4, #0x6c]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x70]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C614 ; =0x04000018
	str r1, [r0, #0]
	b _0201C476
_0201C442:
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0
	add r1, #0x78
	add r3, r4, #0
	add r3, #0x80
	ldrh r1, [r1]
	ldr r2, [r4, #0x7c]
	ldr r3, [r3, #0]
	add r0, sp, #0x38
	bl sub_0201D470
	ldr r0, [r4, #0x6c]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0x84
	add r3, #0x88
	ldr r0, _0201C618 ; =0x04000020
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, sp, #0x38
	bl sub_020BF4AC
_0201C476:
	ldrh r1, [r4, #4]
	mov r0, #8
	tst r0, r1
	beq _0201C4E6
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C4A6
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x98
	add r2, #0x9c
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C61C ; =0x0400001C
	str r1, [r0, #0]
	b _0201C4E6
_0201C4A6:
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r1, #0xa4
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0xa8
	add r3, #0xac
	ldrh r1, [r1]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r0, sp, #0x28
	bl sub_0201D470
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0xb0
	add r3, #0xb4
	ldr r0, _0201C620 ; =0x04000030
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, sp, #0x28
	bl sub_020BF4AC
_0201C4E6:
	ldrh r1, [r4, #4]
	mov r0, #0x10
	tst r0, r1
	beq _0201C50A
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc4
	add r2, #0xc8
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C624 ; =0x04001010
	str r1, [r0, #0]
_0201C50A:
	ldrh r1, [r4, #4]
	mov r0, #0x20
	tst r0, r1
	beq _0201C52E
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xf0
	add r2, #0xf4
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C628 ; =0x04001014
	str r1, [r0, #0]
_0201C52E:
	ldrh r0, [r4, #4]
	mov r3, #0x40
	tst r0, r3
	beq _0201C596
	add r0, r3, #0
	add r0, #0xe4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201C55C
	ldr r1, _0201C608 ; =0x000001FF
	add r3, #0xdc
	add r2, r1, #0
	sub r2, #0xdf
	ldr r0, [r4, r3]
	ldr r2, [r4, r2]
	and r0, r1
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C62C ; =0x04001018
	str r1, [r0, #0]
	b _0201C596
_0201C55C:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xe8
	add r2, #0xec
	add r3, #0xf0
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #0x18
	bl sub_0201D470
	mov r3, #0x47
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201C630 ; =0x04001020
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #0x18
	bl sub_020BF4AC
_0201C596:
	ldrh r0, [r4, #4]
	mov r3, #0x80
	tst r0, r3
	beq _0201C604
	add r0, r3, #0
	add r0, #0xd0
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201C5CA
	add r3, #0xc8
	ldr r1, [r4, r3]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	add r1, r0, #0
	sub r1, #0xb3
	ldr r1, [r4, r1]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C634 ; =0x0400101C
	add sp, #0x48
	str r1, [r0, #0]
	pop {r4, pc}
_0201C5CA:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xd4
	add r2, #0xd8
	add r3, #0xdc
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #8
	bl sub_0201D470
	mov r3, #0x52
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201C638 ; =0x04001030
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #8
	bl sub_020BF4AC
_0201C604:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_0201C608: .word 0x000001FF
_0201C60C: .word 0x04000010
_0201C610: .word 0x04000014
_0201C614: .word 0x04000018
_0201C618: .word 0x04000020
_0201C61C: .word 0x0400001C
_0201C620: .word 0x04000030
_0201C624: .word 0x04001010
_0201C628: .word 0x04001014
_0201C62C: .word 0x04001018
_0201C630: .word 0x04001020
_0201C634: .word 0x0400101C
_0201C638: .word 0x04001030
	thumb_func_end sub_0201C3D0

	thumb_func_start sub_0201C63C
sub_0201C63C: ; 0x0201C63C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_02019304
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C63C

	thumb_func_start sub_0201C660
sub_0201C660: ; 0x0201C660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C684
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C660

	thumb_func_start sub_0201C684
sub_0201C684: ; 0x0201C684
	cmp r1, #0
	beq _0201C692
	cmp r1, #1
	beq _0201C696
	cmp r1, #2
	beq _0201C69E
	bx lr
_0201C692:
	strh r2, [r0, #0x18]
	bx lr
_0201C696:
	ldrh r1, [r0, #0x18]
	add r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_0201C69E:
	ldrh r1, [r0, #0x18]
	sub r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C684

	thumb_func_start sub_0201C6A8
sub_0201C6A8: ; 0x0201C6A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C6CC
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C6A8

	thumb_func_start sub_0201C6CC
sub_0201C6CC: ; 0x0201C6CC
	cmp r1, #8
	bhi _0201C714
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C6DC: ; jump table
	.short _0201C714 - _0201C6DC - 2 ; case 0
	.short _0201C714 - _0201C6DC - 2 ; case 1
	.short _0201C714 - _0201C6DC - 2 ; case 2
	.short _0201C6EE - _0201C6DC - 2 ; case 3
	.short _0201C6F2 - _0201C6DC - 2 ; case 4
	.short _0201C6FA - _0201C6DC - 2 ; case 5
	.short _0201C702 - _0201C6DC - 2 ; case 6
	.short _0201C706 - _0201C6DC - 2 ; case 7
	.short _0201C70E - _0201C6DC - 2 ; case 8
_0201C6EE:
	str r2, [r0, #0x1c]
	bx lr
_0201C6F2:
	ldr r1, [r0, #0x1c]
	add r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201C6FA:
	ldr r1, [r0, #0x1c]
	sub r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201C702:
	str r2, [r0, #0x20]
	bx lr
_0201C706:
	ldr r1, [r0, #0x20]
	add r1, r1, r2
	str r1, [r0, #0x20]
	bx lr
_0201C70E:
	ldr r1, [r0, #0x20]
	sub r1, r1, r2
	str r1, [r0, #0x20]
_0201C714:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C6CC

	thumb_func_start sub_0201C718
sub_0201C718: ; 0x0201C718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C73C
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C718

	thumb_func_start sub_0201C73C
sub_0201C73C: ; 0x0201C73C
	sub r1, #9
	cmp r1, #5
	bhi _0201C780
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C74E: ; jump table
	.short _0201C75A - _0201C74E - 2 ; case 0
	.short _0201C75E - _0201C74E - 2 ; case 1
	.short _0201C766 - _0201C74E - 2 ; case 2
	.short _0201C76E - _0201C74E - 2 ; case 3
	.short _0201C772 - _0201C74E - 2 ; case 4
	.short _0201C77A - _0201C74E - 2 ; case 5
_0201C75A:
	str r2, [r0, #0x24]
	bx lr
_0201C75E:
	ldr r1, [r0, #0x24]
	add r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201C766:
	ldr r1, [r0, #0x24]
	sub r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201C76E:
	str r2, [r0, #0x28]
	bx lr
_0201C772:
	ldr r1, [r0, #0x28]
	add r1, r1, r2
	str r1, [r0, #0x28]
	bx lr
_0201C77A:
	ldr r1, [r0, #0x28]
	sub r1, r1, r2
	str r1, [r0, #0x28]
_0201C780:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C73C

	thumb_func_start sub_0201C784
sub_0201C784: ; 0x0201C784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0x30]
	ldr r0, [sp]
	add r4, r7, #0
	mov r1, #0x2c
	add r5, r0, #0
	mul r5, r1
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0201C7AC
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0201C7AC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, r5
	lsl r0, r0, #0x15
	lsl r1, r1, #0x15
	ldrb r2, [r2, #0x1d]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019774
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02019F28
	str r0, [sp, #0x18]
	ldr r1, [sp, #4]
	mov r0, #7
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, r5
	str r0, [sp, #0x10]
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0201C85E
	ldr r0, [r4, r5]
	mov r1, #0x40
	str r0, [sp, #0xc]
	ldr r0, [r7, #0]
	bl sub_02018184
	add r4, r0, #0
	lsl r0, r6, #1
	ldr r1, [sp, #0xc]
	mov ip, r0
	ldrh r0, [r1, r0]
	mov r3, #0
	mov r6, #0xf
	lsl r0, r0, #0x16
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x18]
	add r2, r0, r1
_0201C80A:
	ldrb r5, [r2, r3]
	lsl r0, r3, #1
	add r1, r4, r0
	and r5, r6
	strb r5, [r4, r0]
	ldrb r0, [r2, r3]
	asr r0, r0, #4
	strb r0, [r1, #1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x20
	blo _0201C80A
	ldr r2, [sp, #0xc]
	mov r1, ip
	ldrh r1, [r2, r1]
	add r0, r7, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_0201C8E0
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r5, [r4, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r5
	tst r1, r2
	beq _0201C8D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0201C85E:
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	beq _0201C8A8
	ldr r0, [r7, #0]
	ldr r4, [r4, r5]
	mov r1, #0x40
	bl sub_02018184
	lsl r6, r6, #1
	ldrh r1, [r4, r6]
	add r5, r0, #0
	lsl r1, r1, #0x16
	lsr r2, r1, #0x10
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	mov r2, #0x40
	bl sub_020D50B8
	ldrh r1, [r4, r6]
	add r0, r7, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_0201C8E0
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0
	bl sub_020181C4
	b _0201C8BC
_0201C8A8:
	ldr r1, [r4, r5]
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r6]
	lsl r0, r0, #3
	lsl r2, r1, #6
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r4, [r0, r1]
_0201C8BC:
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0201C8DC ; =0x0000FFFF
_0201C8C6:
	cmp r2, r0
	beq _0201C8D4
	cmp r4, r1
	bne _0201C8C6
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0201C8D4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0201C8DC: .word 0x0000FFFF
	thumb_func_end sub_0201C784

	thumb_func_start sub_0201C8E0
sub_0201C8E0: ; 0x0201C8E0
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	ldr r1, [sp]
	add r7, r2, #0
	cmp r1, #0
	beq _0201C96C
	ldr r0, [r0, #0]
	mov r1, #0x40
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	beq _0201C92E
	mov r0, #0
	mov r5, #7
_0201C902:
	lsl r3, r0, #3
	add r2, r7, r3
	mov r1, #0
	add r3, r4, r3
_0201C90A:
	sub r6, r5, r1
	ldrb r6, [r2, r6]
	strb r6, [r3, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0201C90A
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	blo _0201C902
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020D50B8
_0201C92E:
	ldr r0, [sp]
	mov r1, #2
	tst r0, r1
	beq _0201C966
	mov r5, #0
	mov r6, #7
_0201C93A:
	lsl r0, r5, #3
	add r3, r4, r0
	sub r0, r6, r5
	lsl r0, r0, #3
	add r2, r7, r0
	mov r1, #8
_0201C946:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0201C946
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0201C93A
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020D50B8
_0201C966:
	add r0, r4, #0
	bl sub_020181C4
_0201C96C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201C8E0

	thumb_func_start sub_0201C970
sub_0201C970: ; 0x0201C970
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r2, #0
	bl sub_02017A40
	str r0, [r5, #0]
	bl sub_020B3C1C
	cmp r0, #0
	beq _0201C99A
	bl sub_0201CA5C
	cmp r0, #0
	bne _0201C99A
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	bl sub_020C2C54
	ldr r0, [r5, #0]
	bl sub_020B28F4
_0201C99A:
	ldr r0, [r5, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _0201C9C4
	add r2, r0, #0
	add r2, #8
	beq _0201C9B8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0201C9B8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0201C9BA
_0201C9B8:
	mov r1, #0
_0201C9BA:
	cmp r1, #0
	beq _0201C9C4
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0201C9C6
_0201C9C4:
	mov r0, #0
_0201C9C6:
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201C970

	thumb_func_start sub_0201C9CC
sub_0201C9CC: ; 0x0201C9CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_020B3C1C
	cmp r0, #0
	beq _0201C9F2
	bl sub_0201CA5C
	cmp r0, #0
	bne _0201C9F2
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	bl sub_020C2C54
	ldr r0, [r5, #0]
	bl sub_020B28F4
_0201C9F2:
	ldr r0, [r5, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _0201CA1C
	add r2, r0, #0
	add r2, #8
	beq _0201CA10
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0201CA10
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0201CA12
_0201CA10:
	mov r1, #0
_0201CA12:
	cmp r1, #0
	beq _0201CA1C
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0201CA1E
_0201CA1C:
	mov r0, #0
_0201CA1E:
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201C9CC

	thumb_func_start sub_0201CA24
sub_0201CA24: ; 0x0201CA24
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r2, #0
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl sub_0201C970
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_020AE608
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CA24

	thumb_func_start sub_0201CA3C
sub_0201CA3C: ; 0x0201CA3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0201C9CC
	cmp r4, #0
	bne _0201CA52
	bl sub_02022974
_0201CA52:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_020AE608
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CA3C

	thumb_func_start sub_0201CA5C
sub_0201CA5C: ; 0x0201CA5C
	ldrh r2, [r0, #0x10]
	mov r1, #1
	tst r2, r1
	bne _0201CA6A
	ldrh r0, [r0, #0x20]
	tst r0, r1
	beq _0201CA6E
_0201CA6A:
	mov r0, #1
	bx lr
_0201CA6E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CA5C

	thumb_func_start sub_0201CA74
sub_0201CA74: ; 0x0201CA74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020AF4BC
	ldr r1, _0201CAA8 ; =0x021C5B48
	add r0, r4, #0
	bl sub_020C4C88
	ldr r1, _0201CAAC ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r6, #0
	str r2, [r1, #0x7c]
	bl sub_020AF4EC
	bl sub_020AF480
	add r0, r5, #0
	bl sub_020AFEFC
	pop {r4, r5, r6, pc}
	nop
_0201CAA8: .word 0x021C5B48
_0201CAAC: .word 0x021C5B0C
	thumb_func_end sub_0201CA74

	thumb_func_start sub_0201CAB0
sub_0201CAB0: ; 0x0201CAB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020AF4BC
	ldr r1, _0201CAEC ; =0x021C5B48
	add r0, r4, #0
	bl sub_020C4C88
	ldr r1, _0201CAF0 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	add r0, r6, #0
	bl sub_020AF4EC
	bl sub_020AF480
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #1
	bl sub_020B2384
	bl sub_020B2628
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201CAEC: .word 0x021C5B48
_0201CAF0: .word 0x021C5B0C
	thumb_func_end sub_0201CAB0

	thumb_func_start sub_0201CAF4
sub_0201CAF4: ; 0x0201CAF4
	push {r3, lr}
	sub sp, #8
	mov r1, #4
	str r1, [sp]
	ldr r1, _0201CB14 ; =sub_0201CB1C
	mov r2, #2
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	ldr r1, _0201CB18 ; =0x021BFB0C
	str r0, [r1, #0]
	add sp, #8
	pop {r3, pc}
	nop
_0201CB14: .word sub_0201CB1C
_0201CB18: .word 0x021BFB0C
	thumb_func_end sub_0201CAF4

	thumb_func_start sub_0201CB1C
sub_0201CB1C: ; 0x0201CB1C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0201CB88 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0201CB8C ; =0xFFFFCFFD
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
	ldr r2, _0201CB90 ; =0x0000CFFB
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
	ldr r2, _0201CB94 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0201CB98 ; =0xBFFF0000
	ldr r0, _0201CB9C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0201CB88: .word 0x04000008
_0201CB8C: .word 0xFFFFCFFD
_0201CB90: .word 0x0000CFFB
_0201CB94: .word 0x00007FFF
_0201CB98: .word 0xBFFF0000
_0201CB9C: .word 0x04000580
	thumb_func_end sub_0201CB1C

	thumb_func_start sub_0201CBA0
sub_0201CBA0: ; 0x0201CBA0
	ldr r0, _0201CBA8 ; =0x021BFB0C
	ldr r3, _0201CBAC ; =sub_020242C4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0201CBA8: .word 0x021BFB0C
_0201CBAC: .word sub_020242C4
	thumb_func_end sub_0201CBA0

	thumb_func_start sub_0201CBB0
sub_0201CBB0: ; 0x0201CBB0
	push {r4, lr}
	add r4, r1, #0
	bl sub_020B3C0C
	cmp r4, #0
	beq _0201CBC6
	add r1, r4, #0
	bl sub_020AF1E8
	mov r0, #1
	pop {r4, pc}
_0201CBC6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201CBB0

	thumb_func_start sub_0201CBCC
sub_0201CBCC: ; 0x0201CBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _0201CBDA
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CBDA:
	mov r1, #0
	str r1, [r5, #8]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #4]
	str r1, [sp]
	cmp r5, #0
	beq _0201CCD8
	bl sub_020AE8C4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020AE8D8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020AEA04
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _0201CC1A
	ldr r3, _0201CCE0 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, r1, #0
	blx r3
	add r7, r0, #0
	bne _0201CC1C
	mov r0, #0
	str r0, [sp, #8]
	b _0201CC1C
_0201CC1A:
	mov r7, #0
_0201CC1C:
	cmp r4, #0
	beq _0201CC36
	ldr r3, _0201CCE0 ; =0x02100DEC
	add r0, r4, #0
	ldr r3, [r3, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	add r6, r0, #0
	bne _0201CC38
	mov r0, #0
	str r0, [sp, #4]
	b _0201CC38
_0201CC36:
	mov r6, #0
_0201CC38:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0201CC58
	ldr r3, _0201CCE4 ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	mov r2, #0
	blx r3
	add r4, r0, #0
	bne _0201CC5A
	mov r0, #0
	str r0, [sp]
	b _0201CC5A
_0201CC58:
	mov r4, #0
_0201CC5A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0201CC76
	ldr r1, _0201CCE8 ; =0x02100DF0
	add r0, r7, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CC70
	bl sub_02022974
_0201CC70:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CC76:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0201CC92
	ldr r1, _0201CCE8 ; =0x02100DF0
	add r0, r6, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CC8C
	bl sub_02022974
_0201CC8C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CC92:
	ldr r0, [sp]
	cmp r0, #0
	bne _0201CCAE
	ldr r1, _0201CCEC ; =0x02100DF8
	add r0, r4, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CCA8
	bl sub_02022974
_0201CCA8:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CCAE:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020AE8EC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020AEA18
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl sub_020C2C54
	add r0, r5, #0
	mov r1, #1
	bl sub_020AE900
	add r0, r5, #0
	mov r1, #1
	bl sub_020AEA20
_0201CCD8:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201CCE0: .word 0x02100DEC
_0201CCE4: .word 0x02100DF4
_0201CCE8: .word 0x02100DF0
_0201CCEC: .word 0x02100DF8
	thumb_func_end sub_0201CBCC

	thumb_func_start sub_0201CCF0
sub_0201CCF0: ; 0x0201CCF0
	str r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #8]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CCF0

	thumb_func_start sub_0201CD04
sub_0201CD04: ; 0x0201CD04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r7, #0
	cmp r0, #0
	ble _0201CD32
	add r4, r7, #0
	add r6, r7, #0
_0201CD14:
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_0201CCF0
	ldr r0, [r5, #0x24]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #0x20]
	add r4, #0x1c
	str r1, [r0, r6]
	ldrh r0, [r5]
	add r6, r6, #4
	cmp r7, r0
	blt _0201CD14
_0201CD32:
	mov r0, #0
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201CD04

	thumb_func_start sub_0201CD38
sub_0201CD38: ; 0x0201CD38
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	cmp r3, r1
	bne _0201CD44
	mov r0, #0
	bx lr
_0201CD44:
	ldr r2, [r0, #0x20]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	strh r1, [r0, #2]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CD38

	thumb_func_start sub_0201CD54
sub_0201CD54: ; 0x0201CD54
	ldrh r2, [r0, #2]
	cmp r2, #0
	bne _0201CD5E
	mov r0, #0
	bx lr
_0201CD5E:
	str r0, [r1, #0]
	add r2, r0, #4
	str r2, [r1, #8]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #2]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldr r2, [r0, #0x20]
	ldrh r0, [r0, #2]
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0201CD54

	thumb_func_start sub_0201CD80
sub_0201CD80: ; 0x0201CD80
	lsl r0, r0, #5
	add r0, #0x34
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CD80

	thumb_func_start sub_0201CD88
sub_0201CD88: ; 0x0201CD88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0201CD94
	bl sub_02022974
_0201CD94:
	add r1, r4, #0
	add r1, #0x34
	lsl r0, r5, #2
	str r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x24]
	strh r5, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl sub_0201CDB4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201CD88

	thumb_func_start sub_0201CDB4
sub_0201CDB4: ; 0x0201CDB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CD04
	str r4, [r4, #4]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201CDB4

	thumb_func_start sub_0201CDD4
sub_0201CDD4: ; 0x0201CDD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _0201CE10
	ldr r1, [r5, #0xc]
	add r4, r5, #4
	str r1, [r5, #0x2c]
	cmp r1, r4
	beq _0201CE0C
	mov r6, #0
_0201CDEA:
	ldr r0, [r1, #8]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0201CE02
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0201CE04
	ldr r1, [r0, #0x10]
	blx r2
	b _0201CE04
_0201CE02:
	str r6, [r0, #0x18]
_0201CE04:
	ldr r1, [r5, #0x30]
	str r1, [r5, #0x2c]
	cmp r1, r4
	bne _0201CDEA
_0201CE0C:
	mov r0, #0
	str r0, [r1, #0x14]
_0201CE10:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201CDD4

	thumb_func_start sub_0201CE14
sub_0201CE14: ; 0x0201CE14
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	str r5, [r4, #0x28]
	bl sub_0201CE28
	mov r1, #0
	str r1, [r4, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201CE14

	thumb_func_start sub_0201CE28
sub_0201CE28: ; 0x0201CE28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201CD38
	cmp r0, #0
	bne _0201CE3E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CE3E:
	str r4, [r0, #0xc]
	str r7, [r0, #0x10]
	str r6, [r0, #0x14]
	ldr r2, [r5, #0x2c]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0201CE5E
	ldr r1, [r2, #0xc]
	cmp r1, r4
	bhi _0201CE58
	mov r1, #1
	str r1, [r0, #0x18]
	b _0201CE62
_0201CE58:
	mov r1, #0
	str r1, [r0, #0x18]
	b _0201CE62
_0201CE5E:
	mov r1, #0
	str r1, [r0, #0x18]
_0201CE62:
	ldr r3, [r5, #0xc]
	add r2, r5, #4
	cmp r3, r2
	beq _0201CE8E
	ldr r4, [r0, #0xc]
_0201CE6C:
	ldr r1, [r3, #0xc]
	cmp r1, r4
	bls _0201CE88
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r3, #4]
	str r0, [r1, #8]
	str r0, [r3, #4]
	ldr r1, [r5, #0x30]
	cmp r3, r1
	bne _0201CEA6
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_0201CE88:
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0201CE6C
_0201CE8E:
	ldr r2, [r5, #0x30]
	add r1, r5, #4
	cmp r2, r1
	bne _0201CE98
	str r0, [r5, #0x30]
_0201CE98:
	ldr r1, [r5, #8]
	str r1, [r0, #4]
	add r1, r5, #4
	str r1, [r0, #8]
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	str r0, [r5, #8]
_0201CEA6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201CE28

	thumb_func_start sub_0201CEA8
sub_0201CEA8: ; 0x0201CEA8
	add r1, r0, #0
	ldr r2, [r1, #0]
	ldr r0, [r2, #0x30]
	cmp r0, r1
	bne _0201CEB6
	ldr r0, [r1, #8]
	str r0, [r2, #0x30]
_0201CEB6:
	ldr r2, [r1, #8]
	ldr r0, [r1, #4]
	ldr r3, _0201CEC8 ; =sub_0201CD54
	str r2, [r0, #8]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	str r2, [r0, #4]
	ldr r0, [r1, #0]
	bx r3
	; .align 2, 0
_0201CEC8: .word sub_0201CD54
	thumb_func_end sub_0201CEA8

	thumb_func_start sub_0201CECC
sub_0201CECC: ; 0x0201CECC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0201CECC

	thumb_func_start sub_0201CED0
sub_0201CED0: ; 0x0201CED0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0201CED0

	thumb_func_start sub_0201CED4
sub_0201CED4: ; 0x0201CED4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0201CED4

	thumb_func_start sub_0201CED8
sub_0201CED8: ; 0x0201CED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	add r7, r3, #0
	str r0, [r2, #0]
	cmp r4, #0
	beq _0201CEF6
	add r4, #0x14
	b _0201CEF8
_0201CEF6:
	mov r4, #0
_0201CEF8:
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	mov r1, #0x1a
	mov r2, #0x1c
	str r0, [sp]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r3, #0x1e
	str r0, [sp, #4]
	add r0, sp, #0x28
	str r0, [sp, #8]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl sub_0201D018
	add r0, sp, #0x1c
	bl sub_020AF4BC
	ldr r1, _0201CF74 ; =0x021C5B48
	add r0, r5, #0
	bl sub_020C4C88
	ldr r1, _0201CF78 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r7, #0
	str r2, [r1, #0x7c]
	bl sub_020AF4EC
	bl sub_020AF480
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	ldr r0, [r4, #0x24]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
	add r0, sp, #0x28
	bl sub_0201D03C
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	bl sub_020B275C
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201CF74: .word 0x021C5B48
_0201CF78: .word 0x021C5B0C
	thumb_func_end sub_0201CED8

	thumb_func_start sub_0201CF7C
sub_0201CF7C: ; 0x0201CF7C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	ldrsh r0, [r4, r0]
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r4, r0]
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0201D018
	add r0, r5, #0
	bl sub_020AF4BC
	bl sub_020AF480
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	ldr r0, [r4, #0x10]
	lsl r2, r0, #0xc
	ldr r0, [r4, #0xc]
	lsl r1, r0, #0xc
	ldr r0, [r4, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	mov r0, #0x1b
	add r1, sp, #0x10
	mov r2, #3
	bl sub_020B275C
	add r0, sp, #0x1c
	bl sub_0201D03C
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	bl sub_020B275C
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201CF7C

	thumb_func_start sub_0201CFEC
sub_0201CFEC: ; 0x0201CFEC
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r4, r2, #0
	add r2, r6, #0
	add r5, r1, #0
	add r1, r6, #0
	add r2, #8
	bl sub_0201D090
	add r2, r6, #0
	add r0, r5, #0
	add r1, r6, #2
	add r2, #0xc
	bl sub_0201D090
	add r1, r6, #4
	add r6, #0x10
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0201D090
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201CFEC

	thumb_func_start sub_0201D018
sub_0201D018: ; 0x0201D018
	push {r3, r4}
	ldr r4, [sp, #0x10]
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r1, _0201D038 ; =0xFFFFFFF8
	strh r2, [r4, #4]
	strh r3, [r4, #6]
	add r1, sp
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	strh r0, [r4, #8]
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0xa]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0201D038: .word 0xFFFFFFF8
	thumb_func_end sub_0201D018

	thumb_func_start sub_0201D03C
sub_0201D03C: ; 0x0201D03C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0201D08C ; =0x000030C1
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x29
	add r1, sp, #4
	str r2, [sp, #8]
	bl sub_020B275C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	add r1, sp, #0
	mov r2, #1
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x41
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #0x70
	add r1, r4, #0
	mov r2, #3
	bl sub_020B275C
	bl sub_020B2628
	add r4, sp, #8
_0201D07A:
	add r0, r4, #0
	bl sub_020BFE80
	cmp r0, #0
	bne _0201D07A
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0201D08C: .word 0x000030C1
	thumb_func_end sub_0201D03C

	thumb_func_start sub_0201D090
sub_0201D090: ; 0x0201D090
	push {r3, r4}
	ldr r4, _0201D0C4 ; =0x00007FFF
	mov r3, #0
	cmp r0, r4
	blo _0201D0A6
_0201D09A:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r0, r0, #1
	lsr r3, r3, #0x18
	cmp r0, r4
	bhs _0201D09A
_0201D0A6:
	strh r0, [r1]
	mov r0, #1
	mov r1, #0
	str r0, [r2, #0]
	cmp r3, #0
	ble _0201D0BE
_0201D0B2:
	ldr r0, [r2, #0]
	add r1, r1, #1
	lsl r0, r0, #1
	str r0, [r2, #0]
	cmp r1, r3
	blt _0201D0B2
_0201D0BE:
	pop {r3, r4}
	bx lr
	nop
_0201D0C4: .word 0x00007FFF
	thumb_func_end sub_0201D090

	thumb_func_start sub_0201D0C8
sub_0201D0C8: ; 0x0201D0C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201D0EC ; =0x0000FFFE
	cmp r1, r0
	beq _0201D0D8
	bl sub_02022974
_0201D0D8:
	ldrh r1, [r4]
	ldr r0, _0201D0EC ; =0x0000FFFE
	cmp r1, r0
	bne _0201D0E8
	ldrh r0, [r4, #4]
	add r1, r4, #6
	lsl r0, r0, #1
	add r4, r1, r0
_0201D0E8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201D0EC: .word 0x0000FFFE
	thumb_func_end sub_0201D0C8

	thumb_func_start sub_0201D0F0
sub_0201D0F0: ; 0x0201D0F0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201D104 ; =0x0000FFFE
	cmp r1, r0
	beq _0201D100
	bl sub_02022974
_0201D100:
	ldrh r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
_0201D104: .word 0x0000FFFE
	thumb_func_end sub_0201D0F0

	thumb_func_start sub_0201D108
sub_0201D108: ; 0x0201D108
	push {r3, lr}
	bl sub_0201D0F0
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _0201D12C
	mov r0, #6
	lsl r0, r0, #8
	cmp r1, r0
	beq _0201D12C
	mov r0, #5
	lsl r0, r0, #8
	cmp r1, r0
	bne _0201D130
_0201D12C:
	mov r0, #1
	pop {r3, pc}
_0201D130:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0201D108

	thumb_func_start sub_0201D134
sub_0201D134: ; 0x0201D134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	ldr r0, _0201D158 ; =0x0000FFFE
	cmp r1, r0
	beq _0201D146
	bl sub_02022974
_0201D146:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _0201D150
	bl sub_02022974
_0201D150:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201D158: .word 0x0000FFFE
	thumb_func_end sub_0201D134

	thumb_func_start sub_0201D15C
sub_0201D15C: ; 0x0201D15C
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D16A
	mov r0, #0
	pop {r4, pc}
_0201D16A:
	bl sub_0201D278
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0201D1CC ; =0x020F983C
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _0201D1AA
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D1D0 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0201D1C6
_0201D1AA:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D1D0 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0201D1C6:
	bl sub_020E1740
	pop {r4, pc}
	; .align 2, 0
_0201D1CC: .word 0x020F983C
_0201D1D0: .word 0x45800000
	thumb_func_end sub_0201D15C

	thumb_func_start sub_0201D1D4
sub_0201D1D4: ; 0x0201D1D4
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D1E2
	mov r0, #0
	pop {r4, pc}
_0201D1E2:
	bl sub_0201D278
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0201D248 ; =0x020F983C
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _0201D226
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D24C ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0201D242
_0201D226:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D24C ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0201D242:
	bl sub_020E1740
	pop {r4, pc}
	; .align 2, 0
_0201D248: .word 0x020F983C
_0201D24C: .word 0x45800000
	thumb_func_end sub_0201D1D4

	thumb_func_start sub_0201D250
sub_0201D250: ; 0x0201D250
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	pop {r3, pc}
	thumb_func_end sub_0201D250

	thumb_func_start sub_0201D264
sub_0201D264: ; 0x0201D264
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	pop {r3, pc}
	thumb_func_end sub_0201D264

	thumb_func_start sub_0201D278
sub_0201D278: ; 0x0201D278
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D286
	mov r0, #0
	pop {r3, pc}
_0201D286:
	lsl r0, r0, #0xc
	ldr r2, _0201D29C ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	bl sub_020E1F1C
	ldr r0, _0201D2A0 ; =0x00000800
	adc r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	pop {r3, pc}
	; .align 2, 0
_0201D29C: .word 0x0B60B60B
_0201D2A0: .word 0x00000800
	thumb_func_end sub_0201D278

	thumb_func_start sub_0201D2A4
sub_0201D2A4: ; 0x0201D2A4
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D278
	pop {r3, pc}
	thumb_func_end sub_0201D2A4

	thumb_func_start sub_0201D2B8
sub_0201D2B8: ; 0x0201D2B8
	ldr r3, _0201D2C0 ; =sub_0201D250
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	; .align 2, 0
_0201D2C0: .word sub_0201D250
	thumb_func_end sub_0201D2B8

	thumb_func_start sub_0201D2C4
sub_0201D2C4: ; 0x0201D2C4
	ldr r3, _0201D2CC ; =sub_0201D264
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	; .align 2, 0
_0201D2CC: .word sub_0201D264
	thumb_func_end sub_0201D2C4

	thumb_func_start sub_0201D2D0
sub_0201D2D0: ; 0x0201D2D0
	ldr r0, _0201D2D8 ; =0x021BFB10
	ldr r0, [r0, #4]
	bx lr
	nop
_0201D2D8: .word 0x021BFB10
	thumb_func_end sub_0201D2D0

	thumb_func_start sub_0201D2DC
sub_0201D2DC: ; 0x0201D2DC
	ldr r1, _0201D2E4 ; =0x021BFB10
	str r0, [r1, #4]
	bx lr
	nop
_0201D2E4: .word 0x021BFB10
	thumb_func_end sub_0201D2DC

	thumb_func_start sub_0201D2E8
sub_0201D2E8: ; 0x0201D2E8
	ldr r1, _0201D300 ; =0x021BFB10
	ldr r0, _0201D304 ; =0x41C64E6D
	ldr r2, [r1, #4]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0201D308 ; =0x00006073
	add r0, r3, r0
	str r0, [r1, #4]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
_0201D300: .word 0x021BFB10
_0201D304: .word 0x41C64E6D
_0201D308: .word 0x00006073
	thumb_func_end sub_0201D2E8

	thumb_func_start sub_0201D30C
sub_0201D30C: ; 0x0201D30C
	ldr r1, _0201D314 ; =0x6C078965
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0201D314: .word 0x6C078965
	thumb_func_end sub_0201D30C

	thumb_func_start sub_0201D318
sub_0201D318: ; 0x0201D318
	push {r4, r5}
	ldr r1, _0201D34C ; =0x021BFB10
	mov r4, #0x27
	str r0, [r1, #8]
	ldr r1, _0201D350 ; =0x02100834
	mov r0, #1
	str r0, [r1, #0]
	ldr r1, _0201D354 ; =0x021BFB1C
	ldr r3, _0201D358 ; =0x6C078965
	lsl r4, r4, #4
_0201D32C:
	sub r2, r1, #4
	ldr r5, [r2, #0]
	lsr r2, r5, #0x1e
	eor r2, r5
	add r5, r2, #0
	mul r5, r3
	add r2, r0, r5
	add r0, r0, #1
	stmia r1!, {r2}
	cmp r0, r4
	blt _0201D32C
	ldr r1, _0201D350 ; =0x02100834
	str r0, [r1, #0]
	pop {r4, r5}
	bx lr
	nop
_0201D34C: .word 0x021BFB10
_0201D350: .word 0x02100834
_0201D354: .word 0x021BFB1C
_0201D358: .word 0x6C078965
	thumb_func_end sub_0201D318

	thumb_func_start sub_0201D35C
sub_0201D35C: ; 0x0201D35C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0201D440 ; =0x02100834
	ldr r1, [r0, #0]
	mov r0, #0x27
	lsl r0, r0, #4
	cmp r1, r0
	blt _0201D414
	add r0, r0, #1
	cmp r1, r0
	bne _0201D376
	ldr r0, _0201D444 ; =0x00001571
	bl sub_0201D318
_0201D376:
	ldr r4, _0201D448 ; =0x021BFB18
	ldr r1, _0201D44C ; =0x02100838
	ldr r5, _0201D450 ; =0x7FFFFFFF
	ldr r6, _0201D454 ; =0x00000634
	mov r0, #0
_0201D380:
	mov r2, #2
	ldr r3, [r4, #0]
	lsl r2, r2, #0x1e
	and r3, r2
	ldr r2, [r4, #4]
	add r0, r0, #1
	and r2, r5
	orr r3, r2
	lsr r7, r3, #1
	lsl r3, r3, #0x1f
	ldr r2, [r4, r6]
	lsr r3, r3, #0x1d
	ldr r3, [r1, r3]
	eor r2, r7
	eor r2, r3
	stmia r4!, {r2}
	cmp r0, #0xe3
	blt _0201D380
	ldr r1, _0201D458 ; =0x0000026F
	cmp r0, r1
	bge _0201D3E0
	ldr r2, _0201D448 ; =0x021BFB18
	lsl r1, r0, #2
	add r1, r2, r1
	mov r2, #0xe3
	ldr r4, _0201D44C ; =0x02100838
	ldr r3, _0201D458 ; =0x0000026F
	lsl r2, r2, #2
_0201D3B8:
	mov r5, #2
	ldr r6, [r1, #0]
	lsl r5, r5, #0x1e
	and r5, r6
	ldr r7, [r1, #4]
	ldr r6, _0201D450 ; =0x7FFFFFFF
	add r0, r0, #1
	and r6, r7
	orr r6, r5
	lsr r5, r6, #1
	sub r7, r1, r2
	lsl r6, r6, #0x1f
	ldr r7, [r7, #0]
	lsr r6, r6, #0x1d
	ldr r6, [r4, r6]
	eor r5, r7
	eor r5, r6
	stmia r1!, {r5}
	cmp r0, r3
	blt _0201D3B8
_0201D3E0:
	ldr r2, _0201D45C ; =0x021C0490
	mov r0, #2
	ldr r1, [r2, #0x44]
	lsl r0, r0, #0x1e
	add r3, r1, #0
	ldr r1, _0201D460 ; =0x021BFB10
	and r3, r0
	ldr r1, [r1, #8]
	sub r0, r0, #1
	and r0, r1
	add r4, r3, #0
	orr r4, r0
	ldr r0, _0201D464 ; =0x021C0110
	ldr r1, [r0, #0x38]
	lsr r0, r4, #1
	add r3, r1, #0
	eor r3, r0
	lsl r0, r4, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0201D44C ; =0x02100838
	ldr r0, [r0, r1]
	mov r1, #0
	eor r0, r3
	str r0, [r2, #0x44]
	ldr r0, _0201D440 ; =0x02100834
	str r1, [r0, #0]
_0201D414:
	ldr r0, _0201D440 ; =0x02100834
	ldr r2, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #0]
	ldr r0, _0201D448 ; =0x021BFB18
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	lsr r0, r1, #0xb
	add r2, r1, #0
	eor r2, r0
	ldr r0, _0201D468 ; =0x9D2C5680
	lsl r1, r2, #7
	and r0, r1
	eor r2, r0
	ldr r0, _0201D46C ; =0xEFC60000
	lsl r1, r2, #0xf
	and r0, r1
	add r1, r2, #0
	eor r1, r0
	lsr r0, r1, #0x12
	eor r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D440: .word 0x02100834
_0201D444: .word 0x00001571
_0201D448: .word 0x021BFB18
_0201D44C: .word 0x02100838
_0201D450: .word 0x7FFFFFFF
_0201D454: .word 0x00000634
_0201D458: .word 0x0000026F
_0201D45C: .word 0x021C0490
_0201D460: .word 0x021BFB10
_0201D464: .word 0x021C0110
_0201D468: .word 0x9D2C5680
_0201D46C: .word 0xEFC60000
	thumb_func_end sub_0201D35C

	thumb_func_start sub_0201D470
sub_0201D470: ; 0x0201D470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, sp, #0
	ldrb r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _0201D48A
	ldr r0, _0201D4C4 ; =0x0000FFFF
	mul r0, r1
	lsl r0, r0, #8
	lsr r1, r0, #0x10
	b _0201D49E
_0201D48A:
	cmp r0, #2
	bne _0201D49E
	ldr r0, _0201D4C4 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0201D49E:
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _0201D4C8 ; =0x020F983C
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0
	bl sub_020BB464
	add r0, r5, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020BB470
	pop {r4, r5, r6, pc}
	nop
_0201D4C4: .word 0x0000FFFF
_0201D4C8: .word 0x020F983C
	thumb_func_end sub_0201D470

	thumb_func_start sub_0201D4CC
sub_0201D4CC: ; 0x0201D4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	lsl r5, r0, #0xc
	lsl r4, r1, #0xc
	mov r1, #0
	lsl r0, r2, #0xc
	lsl r6, r3, #0xc
	str r1, [sp, #0x34]
	str r0, [sp]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	bl sub_020E1F1C
	str r0, [sp, #4]
	add r2, r4, #0
	ldr r0, [sp, #0x20]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	ldr r3, [sp, #4]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201D57C ; =0x00000000
	str r4, [sp, #0x2c]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201D57C ; =0x00000000
	str r5, [sp, #0x30]
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	sub r2, r3, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r0, r1, r0
	add r7, r2, r0
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	add r1, sp, #0x14
	bl sub_020BD3E4
	mov r1, #0
	ldr r0, [sp]
	str r1, [sp, #0x34]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	add r0, sp, #0x20
	add r1, sp, #0x2c
	add r2, sp, #8
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	bl sub_020BD1B0
	add r0, sp, #0x14
	add r1, sp, #8
	bl sub_020BD218
	asr r0, r0, #0xc
	bpl _0201D56E
	neg r0, r0
_0201D56E:
	cmp r7, #0
	bgt _0201D578
	mov r1, #0
	mvn r1, r1
	mul r0, r1
_0201D578:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D57C: .word 0x00000000
	thumb_func_end sub_0201D4CC

	thumb_func_start sub_0201D580
sub_0201D580: ; 0x0201D580
	push {r3, r4, r5, lr}
	lsl r0, r0, #0xd
	add r4, r1, #0
	ldr r2, _0201D5B0 ; =0x0000323D
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	add r5, r0, #0
	ldr r0, _0201D5B4 ; =0x0000FFFF
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	mul r0, r4
	add r2, r5, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	asr r1, r2, #0xc
	bl sub_020E1F6C
	pop {r3, r4, r5, pc}
	nop
_0201D5B0: .word 0x0000323D
_0201D5B4: .word 0x0000FFFF
	thumb_func_end sub_0201D580

	thumb_func_start sub_0201D5B8
sub_0201D5B8: ; 0x0201D5B8
	push {r3, r4}
	mov r3, #0
	add r4, r3, #0
	cmp r1, #0
	bls _0201D5CE
_0201D5C2:
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r0, #1
	add r3, r3, r2
	cmp r4, r1
	blo _0201D5C2
_0201D5CE:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0201D5B8

	thumb_func_start sub_0201D5D4
sub_0201D5D4: ; 0x0201D5D4
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	lsr r6, r1, #1
	beq _0201D5F6
	add r7, sp, #0x20
_0201D5E2:
	add r0, r7, #0
	bl sub_0201D608
	ldrh r1, [r5]
	add r4, r4, #1
	eor r0, r1
	strh r0, [r5]
	add r5, r5, #2
	cmp r4, r6
	blo _0201D5E2
_0201D5F6:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_0201D5D4

	thumb_func_start sub_0201D600
sub_0201D600: ; 0x0201D600
	ldr r3, _0201D604 ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_0201D604: .word sub_0201D5D4
	thumb_func_end sub_0201D600

	thumb_func_start sub_0201D608
sub_0201D608: ; 0x0201D608
	ldr r2, [r0, #0]
	ldr r1, _0201D620 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0201D624 ; =0x00006073
	add r1, r3, r1
	str r1, [r0, #0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0201D620: .word 0x41C64E6D
_0201D624: .word 0x00006073
	thumb_func_end sub_0201D608

	thumb_func_start sub_0201D628
sub_0201D628: ; 0x0201D628
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _0201D638 ; =0x021BFB10
	add r1, r3, #0
	ldr r3, _0201D63C ; =sub_020D32FC
	ldr r0, [r0, #0]
	bx r3
	nop
_0201D638: .word 0x021BFB10
_0201D63C: .word sub_020D32FC
	thumb_func_end sub_0201D628

	thumb_func_start sub_0201D640
sub_0201D640: ; 0x0201D640
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201D668 ; =0x021BFB10
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201D650
	bl sub_02022974
_0201D650:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_02018144
	ldr r1, _0201D668 ; =0x021BFB10
	str r0, [r1, #0]
	ldr r1, _0201D66C ; =0x00001021
	bl sub_020D3120
	pop {r4, pc}
	nop
_0201D668: .word 0x021BFB10
_0201D66C: .word 0x00001021
	thumb_func_end sub_0201D640

	thumb_func_start sub_0201D670
sub_0201D670: ; 0x0201D670
	ldr r1, _0201D678 ; =0x02100840
	str r0, [r1, #0]
	bx lr
	nop
_0201D678: .word 0x02100840
	thumb_func_end sub_0201D670

	thumb_func_start sub_0201D67C
sub_0201D67C: ; 0x0201D67C
	push {r4, r5, r6, lr}
	ldr r4, _0201D6AC ; =0x021C04E0
	mov r5, #0
_0201D682:
	ldr r3, [r4, #0]
	cmp r3, #0
	bne _0201D69C
	ldr r6, _0201D6AC ; =0x021C04E0
	lsl r4, r5, #2
	bl sub_0200DA20
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0201D6A4
	mov r5, #8
	b _0201D6A4
_0201D69C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0201D682
_0201D6A4:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_0201D6AC: .word 0x021C04E0
	thumb_func_end sub_0201D67C

	thumb_func_start sub_0201D6B0
sub_0201D6B0: ; 0x0201D6B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #8
	blo _0201D6BC
	bl sub_02022974
_0201D6BC:
	ldr r6, _0201D6F4 ; =0x021C04E0
	lsl r4, r5, #2
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0201D6CA
	bl sub_02022974
_0201D6CA:
	cmp r5, #8
	bhs _0201D6F0
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _0201D6F0
	bl sub_0201CED0
	add r5, r0, #0
	beq _0201D6E6
	bl sub_0201DBD8
	add r0, r5, #0
	bl sub_020181C4
_0201D6E6:
	ldr r0, [r6, r4]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r6, r4]
_0201D6F0:
	pop {r4, r5, r6, pc}
	nop
_0201D6F4: .word 0x021C04E0
	thumb_func_end sub_0201D6B0

	thumb_func_start sub_0201D6F8
sub_0201D6F8: ; 0x0201D6F8
	lsl r1, r0, #2
	ldr r0, _0201D70C ; =0x021C04E0
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0201D706
	mov r0, #1
	bx lr
_0201D706:
	mov r0, #0
	bx lr
	nop
_0201D70C: .word 0x021C04E0
	thumb_func_end sub_0201D6F8

	thumb_func_start sub_0201D710
sub_0201D710: ; 0x0201D710
	mov r1, #0
	ldr r2, _0201D720 ; =0x021C04E0
	add r0, r1, #0
_0201D716:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #8
	blt _0201D716
	bx lr
	; .align 2, 0
_0201D720: .word 0x021C04E0
	thumb_func_end sub_0201D710

	thumb_func_start sub_0201D724
sub_0201D724: ; 0x0201D724
	push {r3, lr}
	bl sub_0201D6F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_0201D724

	thumb_func_start sub_0201D730
sub_0201D730: ; 0x0201D730
	ldr r3, _0201D734 ; =sub_0201D6B0
	bx r3
	; .align 2, 0
_0201D734: .word sub_0201D6B0
	thumb_func_end sub_0201D730

	thumb_func_start sub_0201D738
sub_0201D738: ; 0x0201D738
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _0201D788 ; =0x02100840
	lsl r1, r1, #3
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	strb r0, [r2, #0x14]
	ldrb r0, [r1, #5]
	strb r0, [r2, #0x15]
	ldrb r0, [r1, #6]
	strb r0, [r2, #0x16]
	ldrb r0, [r1, #7]
	ldr r1, [sp, #0x24]
	strb r0, [r2, #0x17]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r2, [sp, #0x28]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D788: .word 0x02100840
	thumb_func_end sub_0201D738

	thumb_func_start sub_0201D78C
sub_0201D78C: ; 0x0201D78C
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _0201D7DC ; =0x02100840
	lsl r1, r1, #3
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D7DC: .word 0x02100840
	thumb_func_end sub_0201D78C

	thumb_func_start sub_0201D7E0
sub_0201D7E0: ; 0x0201D7E0
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, [sp, #0x2c]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x30]
	strh r0, [r2, #0x12]
	ldr r0, _0201D830 ; =0x02100840
	ldr r3, [r0, #0]
	lsl r0, r1, #3
	add r0, r3, r0
	ldrb r0, [r0, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x34]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D830: .word 0x02100840
	thumb_func_end sub_0201D7E0

	thumb_func_start sub_0201D834
sub_0201D834: ; 0x0201D834
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0201D970 ; =0x02100840
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	cmp r0, #0
	bne _0201D848
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0201D848:
	mov r0, #0
	mov r1, #0x34
	bl sub_02018144
	add r4, r0, #0
	mov r1, #1
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x28
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r0, #0x7f
	bic r2, r0
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2b
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r3, [r0]
	add r1, r3, #0
_0201D890:
	add r0, r4, r3
	add r0, #0x20
	add r3, r3, #1
	strb r1, [r0]
	cmp r3, #7
	blt _0201D890
	add r3, r7, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl sub_02023E2C
	str r0, [r4, #0]
	ldr r0, _0201D974 ; =0x021C04D8
	str r5, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0201DB48
	cmp r6, #0xff
	beq _0201D916
	cmp r6, #0
	beq _0201D916
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, #0xff
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	mov r2, #1
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, _0201D978 ; =sub_0201D97C
	add r1, r4, #0
	bl sub_0201D67C
	add r1, r4, #0
	add r1, #0x2c
	strb r0, [r1]
	add r4, #0x2c
	ldrb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0201D916:
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x7f
	mov r5, #0
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldrb r0, [r7, #0x15]
	ldrb r1, [r7, #0x16]
	ldrb r2, [r7, #0x17]
	bl sub_0201D9FC
	mov r7, #1
	lsl r7, r7, #0xa
_0201D946:
	add r0, r4, #0
	bl sub_0201D9E8
	cmp r0, #1
	beq _0201D956
	add r5, r5, #1
	cmp r5, r7
	blo _0201D946
_0201D956:
	cmp r6, #0xff
	beq _0201D960
	ldr r0, [r4, #4]
	bl sub_0201A954
_0201D960:
	add r0, r4, #0
	bl sub_0201DBD8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D970: .word 0x02100840
_0201D974: .word 0x021C04D8
_0201D978: .word sub_0201D97C
	thumb_func_end sub_0201D834

	thumb_func_start sub_0201D97C
sub_0201D97C: ; 0x0201D97C
	push {r4, lr}
	ldr r0, _0201D9E4 ; =0x021C04D8
	add r4, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201D9E2
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201D9D6
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0201D9FC
	add r0, r4, #0
	bl sub_0201D9E8
	cmp r0, #0
	beq _0201D9B4
	cmp r0, #1
	beq _0201D9CC
	cmp r0, #3
	beq _0201D9BA
	pop {r4, pc}
_0201D9B4:
	ldr r0, [r4, #4]
	bl sub_0201A954
_0201D9BA:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _0201D9E2
	ldrh r1, [r4, #0x2e]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
_0201D9CC:
	add r4, #0x2c
	ldrb r0, [r4]
	bl sub_0201D6B0
	pop {r4, pc}
_0201D9D6:
	ldrh r1, [r4, #0x2e]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
_0201D9E2:
	pop {r4, pc}
	; .align 2, 0
_0201D9E4: .word 0x021C04D8
	thumb_func_end sub_0201D97C

	thumb_func_start sub_0201D9E8
sub_0201D9E8: ; 0x0201D9E8
	push {r4, lr}
	add r4, r0, #0
_0201D9EC:
	ldrb r0, [r4, #9]
	add r1, r4, #0
	bl sub_02002D18
	cmp r0, #2
	beq _0201D9EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201D9E8

	thumb_func_start sub_0201D9FC
sub_0201D9FC: ; 0x0201D9FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _0201DA98 ; =0x021C04D8
	mov r5, #0
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	strh r1, [r3, #6]
	strh r0, [r3, #2]
	add r0, sp, #0x20
	strh r2, [r3, #4]
	str r5, [sp, #0x14]
	str r0, [sp, #8]
	mov ip, r0
	mov lr, r0
	str r0, [sp, #0x18]
_0201DA1E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	str r0, [sp, #0x1c]
_0201DA2C:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	lsl r7, r0, #4
_0201DA3A:
	ldr r0, [sp]
	mov r3, #0
	ldr r0, [r0, #0]
	mov r4, ip
	lsl r6, r0, #8
_0201DA44:
	ldr r0, [r4, #0]
	add r1, r7, #0
	lsl r0, r0, #0xc
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x1c]
	add r3, r3, #1
	add r2, r0, #0
	orr r2, r1
	lsl r1, r5, #1
	ldr r0, _0201DA9C ; =0x021C0500
	add r5, r5, #1
	add r4, r4, #4
	strh r2, [r0, r1]
	cmp r3, #4
	blt _0201DA44
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0201DA3A
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0201DA2C
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0201DA1E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201DA98: .word 0x021C04D8
_0201DA9C: .word 0x021C0500
	thumb_func_end sub_0201D9FC

	thumb_func_start sub_0201DAA0
sub_0201DAA0: ; 0x0201DAA0
	ldrh r2, [r0]
	lsr r2, r2, #8
	lsl r3, r2, #1
	ldr r2, _0201DB44 ; =0x021C0500
	ldrh r3, [r2, r3]
	strh r3, [r1]
	ldrh r3, [r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #2]
	ldrh r3, [r0, #2]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #4]
	ldrh r3, [r0, #2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #6]
	ldrh r3, [r0, #4]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xa]
	ldrh r3, [r0, #6]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xc]
	ldrh r3, [r0, #6]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xe]
	ldrh r3, [r0, #8]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0xa]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x14]
	ldrh r3, [r0, #0xa]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x16]
	ldrh r3, [r0, #0xc]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x18]
	ldrh r3, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1a]
	ldrh r3, [r0, #0xe]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1c]
	ldrh r0, [r0, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x17
	ldrh r0, [r2, r0]
	strh r0, [r1, #0x1e]
	bx lr
	; .align 2, 0
_0201DB44: .word 0x021C0500
	thumb_func_end sub_0201DAA0

	thumb_func_start sub_0201DB48
sub_0201DB48: ; 0x0201DB48
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DB48

	thumb_func_start sub_0201DB50
sub_0201DB50: ; 0x0201DB50
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #0
	add r5, r0, #0
	str r2, [sp]
	mov r0, #0xe
	mov r1, #5
	add r3, sp, #4
	bl sub_02006F50
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r2, #6
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	lsl r2, r2, #8
	bl sub_020C4B68
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201DB50

	thumb_func_start sub_0201DB8C
sub_0201DB8C: ; 0x0201DB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r7, r3, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	bne _0201DBA2
	bl sub_0201DB50
	str r0, [r4, #0x30]
_0201DBA2:
	mov r0, #6
	lsl r0, r0, #6
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	ldr r4, [r4, #0x30]
	bl sub_0201C294
	sub r0, r0, #3
	lsl r0, r0, #0x13
	mov r1, #0x18
	lsr r2, r0, #0x10
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, r6
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201DB8C

	thumb_func_start sub_0201DBD8
sub_0201DBD8: ; 0x0201DBD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201DBEA
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x30]
_0201DBEA:
	pop {r4, pc}
	thumb_func_end sub_0201DBD8

	thumb_func_start sub_0201DBEC
sub_0201DBEC: ; 0x0201DBEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0201DC38 ; =0x021C0700
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201DBFE
	bl sub_02022974
_0201DBFE:
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02018144
	ldr r1, _0201DC38 ; =0x021C0700
	cmp r0, #0
	str r0, [r1, #0]
	bne _0201DC12
	bl sub_02022974
_0201DC12:
	add r0, r4, #0
	lsl r1, r5, #4
	bl sub_02018144
	ldr r1, _0201DC38 ; =0x021C0700
	ldr r2, [r1, #0]
	str r0, [r2, #8]
	ldr r0, [r1, #0]
	mov r2, #0
	str r5, [r0, #0]
	ldr r0, [r1, #0]
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0]
	bl sub_020A6338
	pop {r3, r4, r5, pc}
	nop
_0201DC38: .word 0x021C0700
	thumb_func_end sub_0201DBEC

	thumb_func_start sub_0201DC3C
sub_0201DC3C: ; 0x0201DC3C
	push {r3, lr}
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201DC4A
	bl sub_02022974
_0201DC4A:
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_020181C4
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201DC64 ; =0x021C0700
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0201DC64: .word 0x021C0700
	thumb_func_end sub_0201DC3C

	thumb_func_start sub_0201DC68
sub_0201DC68: ; 0x0201DC68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0201DCA8 ; =0x021C0700
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _0201DC7E
	bl sub_02022974
_0201DC7E:
	ldr r1, _0201DCA8 ; =0x021C0700
	ldr r0, [r1, #0]
	ldr r2, [r0, #4]
	add r2, r2, #1
	str r2, [r0, #4]
	ldr r0, [r1, #0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	cmp r1, r0
	blo _0201DC9A
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201DC9A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020A63BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201DCA8: .word 0x021C0700
	thumb_func_end sub_0201DC68

	thumb_func_start sub_0201DCAC
sub_0201DCAC: ; 0x0201DCAC
	push {r3, lr}
	ldr r0, _0201DCC4 ; =0x021C0700
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201DCC2
	bl sub_020A635C
	ldr r0, _0201DCC4 ; =0x021C0700
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0201DCC2:
	pop {r3, pc}
	; .align 2, 0
_0201DCC4: .word 0x021C0700
	thumb_func_end sub_0201DCAC

	thumb_func_start sub_0201DCC8
sub_0201DCC8: ; 0x0201DCC8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x30
	mul r1, r4
	bl sub_02018144
	ldr r2, _0201DCE4 ; =sub_0201DCF8
	add r1, r4, #0
	add r5, r0, #0
	bl sub_020AB220
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201DCE4: .word sub_0201DCF8
	thumb_func_end sub_0201DCC8

	thumb_func_start sub_0201DCE8
sub_0201DCE8: ; 0x0201DCE8
	ldr r3, _0201DCEC ; =sub_020AB284
	bx r3
	; .align 2, 0
_0201DCEC: .word sub_020AB284
	thumb_func_end sub_0201DCE8

	thumb_func_start sub_0201DCF0
sub_0201DCF0: ; 0x0201DCF0
	ldr r3, _0201DCF4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0201DCF4: .word sub_020181C4
	thumb_func_end sub_0201DCF0

	thumb_func_start sub_0201DCF8
sub_0201DCF8: ; 0x0201DCF8
	push {r3, lr}
	bl sub_0201DC68
	pop {r3, pc}
	thumb_func_end sub_0201DCF8

	thumb_func_start sub_0201DD00
sub_0201DD00: ; 0x0201DD00
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	mov r1, #0x14
	add r4, r0, #0
	add r0, r6, #0
	mul r1, r5
	bl sub_02018144
	str r0, [r4, #0]
	mov r6, #0
	str r5, [r4, #4]
	cmp r5, #0
	ble _0201DD38
	add r5, r6, #0
_0201DD26:
	ldr r0, [r4, #0]
	add r0, r0, r5
	bl sub_0201DDE4
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, #0x14
	cmp r6, r0
	blt _0201DD26
_0201DD38:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201DD00

	thumb_func_start sub_0201DD3C
sub_0201DD3C: ; 0x0201DD3C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DDB4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DD3C

	thumb_func_start sub_0201DD54
sub_0201DD54: ; 0x0201DD54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	add r7, r2, #0
	mov ip, r1
	add r6, r3, #0
	add r2, r4, #0
	cmp r0, #0
	ble _0201DD82
	ldr r5, [r5, #0]
	add r3, r5, #0
_0201DD6C:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _0201DD7A
	mov r0, #0x14
	mul r0, r2
	add r4, r5, r0
	b _0201DD82
_0201DD7A:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r0
	blt _0201DD6C
_0201DD82:
	cmp r4, #0
	bne _0201DD8A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201DD8A:
	mov r0, ip
	str r0, [r4, #0]
	str r7, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0xff
	strb r0, [r4, #0x10]
	lsl r1, r1, #4
	strb r0, [r4, #0x11]
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0201DDF4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201DD54

	thumb_func_start sub_0201DDAC
sub_0201DDAC: ; 0x0201DDAC
	ldr r3, _0201DDB0 ; =sub_0201DDE4
	bx r3
	; .align 2, 0
_0201DDB0: .word sub_0201DDE4
	thumb_func_end sub_0201DDAC

	thumb_func_start sub_0201DDB4
sub_0201DDB4: ; 0x0201DDB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201DDD4
	add r4, r6, #0
_0201DDC2:
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl sub_0201DDE4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0201DDC2
_0201DDD4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201DDB4

	thumb_func_start sub_0201DDD8
sub_0201DDD8: ; 0x0201DDD8
	ldr r3, _0201DDE0 ; =sub_0201DDF4
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bx r3
	; .align 2, 0
_0201DDE0: .word sub_0201DDF4
	thumb_func_end sub_0201DDD8

	thumb_func_start sub_0201DDE4
sub_0201DDE4: ; 0x0201DDE4
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	bx lr
	thumb_func_end sub_0201DDE4

	thumb_func_start sub_0201DDF4
sub_0201DDF4: ; 0x0201DDF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0202414C
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, sp, #0
	add r1, #2
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	ldrb r3, [r4, #0x10]
	ldrb r0, [r2, #2]
	cmp r3, r0
	beq _0201DE22
	add r0, r4, #0
	bl sub_0201DE3C
_0201DE22:
	add r0, sp, #0
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0, #3]
	cmp r1, r0
	beq _0201DE36
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_0201DE68
_0201DE36:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DDF4

	thumb_func_start sub_0201DE3C
sub_0201DE3C: ; 0x0201DE3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201DE94
	ldr r3, [r5, #8]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _0201DE64 ; =0x7FFF0000
	mov r0, #0
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #4
	bl sub_0201DC68
	ldrb r0, [r4]
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_0201DE64: .word 0x7FFF0000
	thumb_func_end sub_0201DE3C

	thumb_func_start sub_0201DE68
sub_0201DE68: ; 0x0201DE68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201DEA0
	ldr r3, [r5, #0xc]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _0201DE90 ; =0xFFFF0000
	mov r0, #1
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #3
	bl sub_0201DC68
	ldrb r0, [r4, #1]
	strb r0, [r5, #0x11]
	pop {r4, r5, r6, pc}
	nop
_0201DE90: .word 0xFFFF0000
	thumb_func_end sub_0201DE68

	thumb_func_start sub_0201DE94
sub_0201DE94: ; 0x0201DE94
	ldr r3, _0201DE9C ; =sub_0201DEAC
	ldr r0, [r0, #4]
	ldrb r1, [r1]
	bx r3
	; .align 2, 0
_0201DE9C: .word sub_0201DEAC
	thumb_func_end sub_0201DE94

	thumb_func_start sub_0201DEA0
sub_0201DEA0: ; 0x0201DEA0
	ldr r3, _0201DEA8 ; =sub_0201DEFC
	ldr r0, [r0, #4]
	ldrb r1, [r1, #1]
	bx r3
	; .align 2, 0
_0201DEA8: .word sub_0201DEFC
	thumb_func_end sub_0201DEA0

	thumb_func_start sub_0201DEAC
sub_0201DEAC: ; 0x0201DEAC
	push {r3, r4}
	cmp r0, #0
	beq _0201DED8
	add r2, r0, #0
	add r2, #0x3c
	beq _0201DED4
	add r3, r0, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r1, r3
	bhs _0201DED4
	add r3, r0, #0
	add r3, #0x42
	ldrh r4, [r3]
	add r3, r2, r4
	ldrh r2, [r2, r4]
	add r3, r3, #4
	mul r1, r2
	add r3, r3, r1
	b _0201DEDA
_0201DED4:
	mov r3, #0
	b _0201DEDA
_0201DED8:
	mov r3, #0
_0201DEDA:
	cmp r3, #0
	bne _0201DEE4
	mov r0, #0
	pop {r3, r4}
	bx lr
_0201DEE4:
	ldr r1, [r0, #0x14]
	add r2, r0, r1
	ldr r1, [r3, #0]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DEAC

	thumb_func_start sub_0201DEFC
sub_0201DEFC: ; 0x0201DEFC
	push {r3, r4}
	cmp r0, #0
	beq _0201DF24
	ldrh r2, [r0, #0x34]
	cmp r2, #0
	beq _0201DF24
	add r4, r0, r2
	beq _0201DF20
	ldrb r2, [r4, #1]
	cmp r1, r2
	bhs _0201DF20
	ldrh r2, [r4, #6]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #4
	mul r1, r2
	add r2, r3, r1
	b _0201DF26
_0201DF20:
	mov r2, #0
	b _0201DF26
_0201DF24:
	mov r2, #0
_0201DF26:
	cmp r2, #0
	bne _0201DF30
	mov r0, #0
	pop {r3, r4}
	bx lr
_0201DF30:
	ldr r1, [r0, #0x38]
	add r1, r0, r1
	ldrh r0, [r2]
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DEFC

	thumb_func_start sub_0201DF40
sub_0201DF40: ; 0x0201DF40
	ldr r1, [r1, #0]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0xd
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0201DF40

	thumb_func_start sub_0201DF50
sub_0201DF50: ; 0x0201DF50
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0201E140
	cmp r4, #0
	beq _0201DF6E
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl sub_020B38E4
	add r1, r0, #0
	b _0201DF70
_0201DF6E:
	mov r1, #0
_0201DF70:
	cmp r1, #0
	bne _0201DF7A
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_0201DF7A:
	add r0, r4, #0
	bl sub_0201DF40
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0201DF50

	thumb_func_start sub_0201DF84
sub_0201DF84: ; 0x0201DF84
	push {r3, lr}
	ldr r0, [r1, #0]
	mov r1, #7
	lsl r1, r1, #0x1a
	and r1, r0
	lsr r1, r1, #0x1a
	cmp r1, #6
	bhi _0201DFC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201DFA0: ; jump table
	.short _0201DFC2 - _0201DFA0 - 2 ; case 0
	.short _0201DFBA - _0201DFA0 - 2 ; case 1
	.short _0201DFAE - _0201DFA0 - 2 ; case 2
	.short _0201DFB2 - _0201DFA0 - 2 ; case 3
	.short _0201DFB6 - _0201DFA0 - 2 ; case 4
	.short _0201DFC2 - _0201DFA0 - 2 ; case 5
	.short _0201DFBE - _0201DFA0 - 2 ; case 6
_0201DFAE:
	mov r1, #4
	b _0201DFC6
_0201DFB2:
	mov r1, #2
	b _0201DFC6
_0201DFB6:
	mov r1, #1
	b _0201DFC6
_0201DFBA:
	mov r1, #1
	b _0201DFC6
_0201DFBE:
	mov r1, #1
	b _0201DFC6
_0201DFC2:
	mov r0, #0
	pop {r3, pc}
_0201DFC6:
	mov r3, #7
	lsl r3, r3, #0x14
	add r2, r0, #0
	and r2, r3
	lsl r3, r3, #3
	and r0, r3
	lsr r2, r2, #0x14
	lsr r0, r0, #0x17
	lsl r2, r2, #4
	lsl r0, r0, #4
	mul r0, r2
	bl sub_020E2178
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201DF84

	thumb_func_start sub_0201DFE4
sub_0201DFE4: ; 0x0201DFE4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0201E140
	cmp r4, #0
	beq _0201E002
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl sub_020B38E4
	add r1, r0, #0
	b _0201E004
_0201E002:
	mov r1, #0
_0201E004:
	add r0, r4, #0
	bl sub_0201DF84
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DFE4

	thumb_func_start sub_0201E010
sub_0201E010: ; 0x0201E010
	ldrb r3, [r0]
	strb r3, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E010

	thumb_func_start sub_0201E01C
sub_0201E01C: ; 0x0201E01C
	ldrb r3, [r0, #2]
	strb r3, [r1]
	ldrb r0, [r0, #3]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E01C

	thumb_func_start sub_0201E028
sub_0201E028: ; 0x0201E028
	push {r4, r5}
	ldr r5, _0201E0A0 ; =0xFFFFFFF8
	ldr r4, [sp, #0xc]
	add r5, sp
	ldrb r5, [r5, #0x18]
	cmp r5, #3
	bhi _0201E068
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0201E042: ; jump table
	.short _0201E04A - _0201E042 - 2 ; case 0
	.short _0201E052 - _0201E042 - 2 ; case 1
	.short _0201E05A - _0201E042 - 2 ; case 2
	.short _0201E062 - _0201E042 - 2 ; case 3
_0201E04A:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #4]
	b _0201E068
_0201E052:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #5]
	b _0201E068
_0201E05A:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #6]
	b _0201E068
_0201E062:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #7]
_0201E068:
	cmp r1, #0
	beq _0201E072
	lsl r5, r4, #3
	ldrb r5, [r0, r5]
	strb r5, [r1]
_0201E072:
	cmp r2, #0
	beq _0201E07E
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #1]
	strb r1, [r2]
_0201E07E:
	cmp r3, #0
	beq _0201E08A
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #2]
	strb r1, [r3]
_0201E08A:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0201E098
	lsl r1, r4, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	strb r0, [r2]
_0201E098:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	nop
_0201E0A0: .word 0xFFFFFFF8
	thumb_func_end sub_0201E028

	thumb_func_start sub_0201E0A4
sub_0201E0A4: ; 0x0201E0A4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _0201E0B4
_0201E0AC:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _0201E0AC
_0201E0B4:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0201E0A4

	thumb_func_start sub_0201E0B8
sub_0201E0B8: ; 0x0201E0B8
	push {r4, r5}
	mov r4, #1
	mov r3, #0
	lsl r4, r4, #8
_0201E0C0:
	ldrsb r5, [r0, r3]
	strb r5, [r1, r3]
	ldrsb r5, [r0, r3]
	cmp r2, r5
	beq _0201E0CE
	cmp r5, #0
	bne _0201E0EE
_0201E0CE:
	mov r4, #0
	strb r4, [r1, r3]
	cmp r2, #0xd
	bne _0201E0E6
	add r1, r3, #1
	ldrsb r1, [r0, r1]
	cmp r1, #0xa
	bne _0201E0E6
	add r1, r3, #2
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_0201E0E6:
	add r1, r3, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_0201E0EE:
	add r3, r3, #1
	cmp r3, r4
	blt _0201E0C0
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E0B8

	thumb_func_start sub_0201E0FC
sub_0201E0FC: ; 0x0201E0FC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0201E0A4
	mov r5, #1
	mov r6, #0
	sub r3, r0, #1
	bmi _0201E13A
	sub r1, r6, #1
	mov r0, #0xa
_0201E110:
	ldrsb r2, [r4, r3]
	cmp r2, #0x30
	blt _0201E122
	cmp r2, #0x39
	bgt _0201E122
	sub r2, #0x30
	mul r2, r5
	add r6, r6, r2
	b _0201E134
_0201E122:
	cmp r3, #0
	bne _0201E12E
	cmp r2, #0x2d
	bne _0201E134
	mul r6, r1
	b _0201E134
_0201E12E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0201E134:
	mul r5, r0
	sub r3, r3, #1
	bpl _0201E110
_0201E13A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201E0FC

	thumb_func_start sub_0201E140
sub_0201E140: ; 0x0201E140
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
_0201E14A:
	lsl r0, r2, #2
	str r1, [r5, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0201E14A
	add r0, r4, #0
	bl sub_0201E0A4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r2, _0201E178 ; =0x00000000
	beq _0201E174
_0201E166:
	ldrsb r0, [r4, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	blo _0201E166
_0201E174:
	pop {r3, r4, r5, pc}
	nop
_0201E178: .word 0x00000000
	thumb_func_end sub_0201E140

	thumb_func_start sub_0201E17C
sub_0201E17C: ; 0x0201E17C
	ldr r1, _0201E18C ; =0x00000121
	cmp r0, r1
	bhs _0201E186
	mov r0, #1
	bx lr
_0201E186:
	mov r0, #0
	bx lr
	nop
_0201E18C: .word 0x00000121
	thumb_func_end sub_0201E17C

	thumb_func_start sub_0201E190
sub_0201E190: ; 0x0201E190
	cmp r0, r1
	blt _0201E196
	add r0, r1, #0
_0201E196:
	bx lr
	thumb_func_end sub_0201E190

	thumb_func_start sub_0201E198
sub_0201E198: ; 0x0201E198
	cmp r0, r1
	bgt _0201E19E
	add r0, r1, #0
_0201E19E:
	bx lr
	thumb_func_end sub_0201E198

	thumb_func_start sub_0201E1A0
sub_0201E1A0: ; 0x0201E1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x24
	bl sub_020BD3E4
	add r0, r4, #0
	add r1, sp, #0x18
	bl sub_020BD3E4
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x18]
	str r0, [sp]
	asr r0, r0, #0x1f
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	asr r6, r4, #0x1f
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #8]
	asr r7, r0, #0x1f
	ldr r3, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_020E1F1C
	str r0, [sp, #0x14]
	add r5, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	ldr r3, [sp, #0x14]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201E264 ; =0x00000000
	adc r5, r2
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201E264 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r5, r3, r0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020E1F1C
	add r6, r0, #0
	add r4, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r4, r3
	lsl r4, r4, #0x14
	lsr r6, r6, #0xc
	orr r6, r4
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	sub r0, r6, r1
	cmp r5, #0
	bne _0201E25A
	cmp r0, #0
	ble _0201E252
	add sp, #0x30
	lsl r0, r2, #3
	pop {r3, r4, r5, r6, r7, pc}
_0201E252:
	mov r0, #3
	add sp, #0x30
	lsl r0, r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0201E25A:
	add r1, r5, #0
	bl sub_020BDA20
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E264: .word 0x00000000
	thumb_func_end sub_0201E1A0

	thumb_func_start sub_0201E268
sub_0201E268: ; 0x0201E268
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r2, r1, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0
	bl sub_020BB5AC
	ldr r0, [r4, #4]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl sub_020BB8EC
	ldr r0, [r4, #8]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5E4
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl sub_020BB8EC
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0201E2DC: .word 0x020F983C
	thumb_func_end sub_0201E268

	thumb_func_start sub_0201E2E0
sub_0201E2E0: ; 0x0201E2E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201D1D4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201D15C
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r7, #0
	bl sub_020BB5AC
	add r0, r4, #0
	bl sub_0201D1D4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201D15C
	add r1, r0, #0
	add r0, sp, #4
	add r2, r5, #0
	bl sub_020BB5C8
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl sub_020BB8EC
	add r0, r6, #0
	bl sub_0201D1D4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201D15C
	add r1, r0, #0
	add r0, sp, #4
	add r2, r4, #0
	bl sub_020BB5E4
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl sub_020BB8EC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201E2E0

	thumb_func_start sub_0201E34C
sub_0201E34C: ; 0x0201E34C
	push {r3, r4, r5, r6, r7, lr}
	asr r0, r0, #4
	add r7, r2, #0
	lsl r2, r0, #1
	add r6, r1, #0
	lsl r0, r2, #1
	ldr r1, _0201E3B8 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	bl sub_020BCFD0
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r6, #2
	mov r2, #0
	lsl r6, r6, #0xa
	add r0, r0, r6
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r3, r0, #0x1f
	lsr r1, r0, #0x13
	lsl r3, r3, #0xd
	orr r3, r1
	lsl r0, r0, #0xd
	add r0, r0, r6
	adc r3, r2
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	str r0, [r4, #0]
	bl sub_020E1F1C
	mov r3, #0
	add r2, r6, #0
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E3B8: .word 0x020F983C
	thumb_func_end sub_0201E34C

	thumb_func_start sub_0201E3BC
sub_0201E3BC: ; 0x0201E3BC
	push {r3, lr}
	sub r0, r0, r2
	sub r2, r1, r3
	add r1, r0, #0
	mul r1, r0
	add r0, r2, #0
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201E3BC

	thumb_func_start sub_0201E3D8
sub_0201E3D8: ; 0x0201E3D8
	push {r3, lr}
	ldr r0, _0201E3F0 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E3E6
	bl sub_02022974
_0201E3E6:
	ldr r0, _0201E3F0 ; =0x021C0744
	mov r1, #0
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	pop {r3, pc}
	; .align 2, 0
_0201E3F0: .word 0x021C0744
	thumb_func_end sub_0201E3D8

	thumb_func_start sub_0201E3F4
sub_0201E3F4: ; 0x0201E3F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0201E44C ; =0x021C0744
	add r6, r1, #0
	ldrh r0, [r0, #0x1a]
	add r4, r2, #0
	cmp r0, #0
	beq _0201E40A
	bl sub_02022974
_0201E40A:
	cmp r4, #5
	bhs _0201E412
	cmp r4, #0
	bne _0201E418
_0201E412:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201E418:
	ldr r0, _0201E44C ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E426
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201E426:
	add r0, r4, #0
	bl sub_0201E658
	cmp r0, #1
	bne _0201E446
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0201E4A4
	mov r0, #1
_0201E446:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0201E44C: .word 0x021C0744
	thumb_func_end sub_0201E3F4

	thumb_func_start sub_0201E450
sub_0201E450: ; 0x0201E450
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0201E4A0 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E462
	bl sub_02022974
_0201E462:
	cmp r4, #5
	bhs _0201E46A
	cmp r4, #0
	bne _0201E470
_0201E46A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0201E470:
	ldr r0, _0201E4A0 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E47E
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0201E47E:
	add r0, r4, #0
	bl sub_0201E658
	cmp r0, #1
	bne _0201E49C
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_0201E4A4
	mov r0, #1
_0201E49C:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0201E4A0: .word 0x021C0744
	thumb_func_end sub_0201E450

	thumb_func_start sub_0201E4A4
sub_0201E4A4: ; 0x0201E4A4
	push {r4, lr}
	ldr r4, _0201E4C8 ; =0x021C0744
	strh r0, [r4, #0x18]
	ldr r0, _0201E4CC ; =0x021BF6DC
	strb r1, [r0, #4]
	ldr r0, _0201E4D0 ; =0x021C0704
	ldr r1, [sp, #0xc]
	str r2, [r0, #0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0x54]
	ldr r0, _0201E4D4 ; =0x021C0710
	mov r1, #9
	bl sub_0201E4D8
	pop {r4, pc}
	nop
_0201E4C8: .word 0x021C0744
_0201E4CC: .word 0x021BF6DC
_0201E4D0: .word 0x021C0704
_0201E4D4: .word 0x021C0710
	thumb_func_end sub_0201E4A4

	thumb_func_start sub_0201E4D8
sub_0201E4D8: ; 0x0201E4D8
	mov r3, #0
	cmp r1, #0
	ble _0201E4EA
	add r2, r3, #0
_0201E4E0:
	add r3, r3, #1
	strh r2, [r0, #4]
	add r0, #8
	cmp r3, r1
	blt _0201E4E0
_0201E4EA:
	bx lr
	thumb_func_end sub_0201E4D8

	thumb_func_start sub_0201E4EC
sub_0201E4EC: ; 0x0201E4EC
	push {r4, r5, r6, lr}
	ldr r0, _0201E52C ; =0x021C0744
	mov r5, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _0201E4FC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0201E4FC:
	mov r4, #4
	add r6, r4, #0
_0201E500:
	bl sub_020CA110
	add r0, r4, #0
	bl sub_020CA60C
	add r0, r6, #0
	bl sub_020CA624
	cmp r0, #0
	beq _0201E516
	add r5, r5, #1
_0201E516:
	cmp r0, #0
	beq _0201E51E
	cmp r5, #5
	bls _0201E500
_0201E51E:
	cmp r5, #5
	bls _0201E526
	mov r0, #2
	pop {r4, r5, r6, pc}
_0201E526:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0201E52C: .word 0x021C0744
	thumb_func_end sub_0201E4EC

	thumb_func_start sub_0201E530
sub_0201E530: ; 0x0201E530
	push {r4, lr}
	sub sp, #8
	ldr r0, _0201E560 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E540
	bl sub_02022974
_0201E540:
	bl sub_0201E4EC
	add r4, r0, #0
	cmp r4, #1
	bne _0201E55A
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_0201E4A4
_0201E55A:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0201E560: .word 0x021C0744
	thumb_func_end sub_0201E530

	thumb_func_start sub_0201E564
sub_0201E564: ; 0x0201E564
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0201E5B8 ; =0x021C0744
	add r6, r1, #0
	ldrh r0, [r0, #0x1a]
	add r7, r2, #0
	mov r5, #3
	cmp r0, #0
	beq _0201E57A
	bl sub_02022974
_0201E57A:
	ldr r0, _0201E5B8 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E5B4
	bl sub_020CA2EC
	add r5, r0, #0
	ldr r0, _0201E5BC ; =0x021C0710
	mov r1, #9
	bl sub_0201E5C0
	cmp r4, #0
	beq _0201E59C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201E7FC
_0201E59C:
	ldr r0, _0201E5B8 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	bne _0201E5B2
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0201E69C
	add r5, r0, #0
	b _0201E5B4
_0201E5B2:
	mov r5, #1
_0201E5B4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E5B8: .word 0x021C0744
_0201E5BC: .word 0x021C0710
	thumb_func_end sub_0201E564

	thumb_func_start sub_0201E5C0
sub_0201E5C0: ; 0x0201E5C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	str r1, [sp]
	add r0, r1, #0
	beq _0201E5F6
	add r4, r5, #0
	add r6, sp, #4
_0201E5D2:
	add r0, sp, #4
	add r1, r5, #0
	bl sub_020CA4E8
	ldrh r0, [r6]
	add r7, r7, #1
	add r5, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrh r0, [r6, #6]
	strh r0, [r4, #6]
	ldr r0, [sp]
	add r4, #8
	cmp r7, r0
	blo _0201E5D2
_0201E5F6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201E5C0

	thumb_func_start sub_0201E5FC
sub_0201E5FC: ; 0x0201E5FC
	push {r3, lr}
	ldr r0, _0201E628 ; =0x021C0744
	ldrh r1, [r0, #0x1a]
	cmp r1, #0
	beq _0201E624
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E624
	ldr r0, _0201E62C ; =0x021C0704
	ldr r0, [r0, #8]
	lsr r0, r0, #1
	bl sub_0201E658
	cmp r0, #1
	beq _0201E61E
	bl sub_02022974
_0201E61E:
	ldr r0, _0201E628 ; =0x021C0744
	mov r1, #0
	strh r1, [r0, #0x1a]
_0201E624:
	pop {r3, pc}
	nop
_0201E628: .word 0x021C0744
_0201E62C: .word 0x021C0704
	thumb_func_end sub_0201E5FC

	thumb_func_start sub_0201E630
sub_0201E630: ; 0x0201E630
	push {r3, lr}
	ldr r0, _0201E654 ; =0x021C0744
	ldrh r1, [r0, #0x1a]
	cmp r1, #1
	beq _0201E652
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E652
	bl sub_0201E4EC
	cmp r0, #1
	beq _0201E64C
	bl sub_02022974
_0201E64C:
	ldr r0, _0201E654 ; =0x021C0744
	mov r1, #1
	strh r1, [r0, #0x1a]
_0201E652:
	pop {r3, pc}
	; .align 2, 0
_0201E654: .word 0x021C0744
	thumb_func_end sub_0201E630

	thumb_func_start sub_0201E658
sub_0201E658: ; 0x0201E658
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	lsl r0, r0, #0x10
	ldr r7, _0201E698 ; =0x021C0710
	add r6, r5, #0
	lsr r4, r0, #0x10
_0201E664:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #9
	bl sub_020CA010
	mov r0, #2
	bl sub_020CA60C
	mov r0, #2
	bl sub_020CA624
	cmp r0, #0
	beq _0201E682
	add r5, r5, #1
_0201E682:
	cmp r0, #0
	beq _0201E68A
	cmp r5, #5
	ble _0201E664
_0201E68A:
	cmp r5, #5
	ble _0201E692
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0201E692:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E698: .word 0x021C0710
	thumb_func_end sub_0201E658

	thumb_func_start sub_0201E69C
sub_0201E69C: ; 0x0201E69C
	push {r3, lr}
	cmp r0, #5
	bhi _0201E6C6
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0201E6AE: ; jump table
	.short _0201E6C6 - _0201E6AE - 2 ; case 0
	.short _0201E6BA - _0201E6AE - 2 ; case 1
	.short _0201E6C6 - _0201E6AE - 2 ; case 2
	.short _0201E6BA - _0201E6AE - 2 ; case 3
	.short _0201E6C0 - _0201E6AE - 2 ; case 4
	.short _0201E6C0 - _0201E6AE - 2 ; case 5
_0201E6BA:
	bl sub_0201E6CC
	pop {r3, pc}
_0201E6C0:
	bl sub_0201E784
	pop {r3, pc}
_0201E6C6:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201E69C

	thumb_func_start sub_0201E6CC
sub_0201E6CC: ; 0x0201E6CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0201E77C ; =0x021C0704
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r0, [sp]
	add r7, r2, #0
	mov r4, #0
	cmp r1, #0
	bls _0201E772
_0201E6E0:
	ldr r0, [sp, #4]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bpl _0201E6F4
	add r0, #9
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0201E6F4:
	lsl r1, r0, #3
	ldr r0, _0201E780 ; =0x021C0704
	add r1, r0, r1
	ldrh r0, [r1, #0x10]
	cmp r0, #1
	bne _0201E76A
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _0201E76A
	ldr r2, [r5, #0x54]
	ldr r0, [r5, #0]
	lsl r2, r2, #3
	add r2, r0, r2
	add r0, r2, #0
	sub r0, #8
	ldrh r3, [r1, #0xc]
	ldrh r0, [r0]
	cmp r0, r3
	blt _0201E71E
	sub r3, r0, r3
	b _0201E720
_0201E71E:
	sub r3, r3, r0
_0201E720:
	sub r6, r2, #6
	ldrh r0, [r1, #0xe]
	ldrh r6, [r6]
	cmp r6, r0
	blt _0201E72E
	sub r0, r6, r0
	b _0201E730
_0201E72E:
	sub r0, r0, r6
_0201E730:
	cmp r3, r7
	bhs _0201E738
	cmp r0, r7
	blo _0201E76A
_0201E738:
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #2]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x12]
	strh r0, [r2, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _0201E76A
	ldr r2, [sp]
	cmp r2, #1
	bne _0201E762
	bl sub_020E2178
	str r1, [r5, #0x54]
	b _0201E76A
_0201E762:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0201E76A:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _0201E6E0
_0201E772:
	ldr r0, _0201E77C ; =0x021C0704
	ldr r0, [r0, #0x54]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E77C: .word 0x021C0704
_0201E780: .word 0x021C0704
	thumb_func_end sub_0201E6CC

	thumb_func_start sub_0201E784
sub_0201E784: ; 0x0201E784
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0201E7F4 ; =0x021C0704
	str r1, [sp]
	ldr r1, [r5, #8]
	add r7, r0, #0
	mov r4, #0
	cmp r1, #0
	bls _0201E7EC
_0201E794:
	ldr r0, [sp]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	bpl _0201E7A8
	add r1, #9
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
_0201E7A8:
	ldr r0, [r5, #0x54]
	lsl r1, r1, #3
	lsl r3, r0, #3
	ldr r0, _0201E7F8 ; =0x021C0704
	ldr r6, [r5, #0]
	add r2, r0, r1
	ldrh r0, [r2, #0xc]
	add r1, r6, r3
	strh r0, [r6, r3]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #4]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _0201E7E4
	cmp r7, #4
	bne _0201E7DE
	bl sub_020E2178
	str r1, [r5, #0x54]
	b _0201E7E4
_0201E7DE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0201E7E4:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _0201E794
_0201E7EC:
	ldr r0, _0201E7F4 ; =0x021C0704
	ldr r0, [r0, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E7F4: .word 0x021C0704
_0201E7F8: .word 0x021C0704
	thumb_func_end sub_0201E784
