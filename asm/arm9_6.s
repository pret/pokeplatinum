	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0205AC28
sub_0205AC28: ; 0x0205AC28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0205AC36
	bl sub_020181C4
_0205AC36:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0205AC40
	bl sub_020181C4
_0205AC40:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0205AC4A
	bl sub_020181C4
_0205AC4A:
	ldr r0, [r4, #0x2c]
	bl sub_0200B190
	ldr r0, [r4, #0x28]
	bl sub_0200B3F0
	ldr r0, [r4, #0xc]
	bl sub_020237BC
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	ldr r0, [r4, #0x78]
	bl sub_02014A20
	add r0, r4, #0
	mov r1, #1
	bl sub_0205AAA0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AC28

	thumb_func_start sub_0205AC74
sub_0205AC74: ; 0x0205AC74
	ldr r3, _0205AC7C ; =sub_02050A64
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0205AC7C: .word sub_02050A64
	thumb_func_end sub_0205AC74

	thumb_func_start sub_0205AC80
sub_0205AC80: ; 0x0205AC80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x24]
	add r5, r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	ldr r4, [r7, #0x4c]
	bl sub_02076AF0
	add r6, r0, #0
	lsl r0, r6, #1
	add r0, r6, r0
	str r5, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0205ACC4
	mov r5, #0
_0205ACA6:
	add r1, r7, r5
	add r1, #0x3d
	ldrb r1, [r1]
	ldr r0, [sp]
	sub r1, r1, #1
	bl sub_0207A0FC
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020C4DB0
	add r5, r5, #1
	add r4, r4, r6
	cmp r5, #3
	blt _0205ACA6
_0205ACC4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205AC80

	thumb_func_start sub_0205ACC8
sub_0205ACC8: ; 0x0205ACC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x89
	ldrb r1, [r0]
	mov r0, #1
	tst r1, r0
	bne _0205AD0C
	ldr r4, [r5, #0x4c]
	bl sub_0205B0E4
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	bne _0205ACF2
	mov r0, #0x6a
	add r1, r4, #0
	bl sub_02035A3C
	b _0205ACFA
_0205ACF2:
	mov r0, #0x6a
	add r1, r4, #0
	bl sub_0203597C
_0205ACFA:
	cmp r0, #0
	beq _0205AD0C
	add r1, r5, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #1
	add r5, #0x89
	orr r1, r2
	strb r1, [r5]
_0205AD0C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205ACC8

	thumb_func_start sub_0205AD10
sub_0205AD10: ; 0x0205AD10
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #3
	bne _0205AD1C
	mov r0, #1
	bx lr
_0205AD1C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205AD10

	thumb_func_start sub_0205AD20
sub_0205AD20: ; 0x0205AD20
	push {r4, lr}
	add r4, r0, #0
	bl sub_02076AF0
	lsl r1, r0, #1
	ldr r2, [r4, #0x48]
	add r0, r0, r1
	ldr r0, [r2, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD20

	thumb_func_start sub_0205AD34
sub_0205AD34: ; 0x0205AD34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	bne _0205AD4E
	add r1, r4, #0
	mov r0, #0x6b
	add r1, #0x84
	mov r2, #1
	bl sub_02035AC4
	b _0205AD5A
_0205AD4E:
	add r1, r4, #0
	mov r0, #0x6b
	add r1, #0x84
	mov r2, #1
	bl sub_020359DC
_0205AD5A:
	cmp r0, #0
	beq _0205AD6C
	add r1, r4, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #1
	add r4, #0x89
	orr r1, r2
	strb r1, [r4]
_0205AD6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD34

	thumb_func_start sub_0205AD70
sub_0205AD70: ; 0x0205AD70
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #3
	bne _0205AD7C
	mov r0, #1
	bx lr
_0205AD7C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205AD70

	thumb_func_start sub_0205AD80
sub_0205AD80: ; 0x0205AD80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02076AF0
	add r6, r0, #0
	ldr r0, [r5, #0x50]
	mov r1, #3
	bl sub_0207A014
	mov r4, #0
_0205AD94:
	add r1, r4, #0
	ldr r2, [r5, #0x48]
	mul r1, r6
	ldr r0, [r5, #0x50]
	add r1, r2, r1
	bl sub_0207A048
	add r4, r4, #1
	cmp r4, #3
	blt _0205AD94
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD80

	thumb_func_start sub_0205ADAC
sub_0205ADAC: ; 0x0205ADAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02076AF0
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x84
	ldrb r0, [r0]
	ldr r2, [r6, #0x48]
	ldr r3, [r6, #0x4c]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	add r1, r6, #0
	add r1, #0x85
	ldrb r1, [r1]
	add r2, r1, #0
	mul r2, r4
	add r1, r3, r2
	add r2, r4, #0
	bl sub_020C4DB0
	ldr r0, [r6, #0x50]
	mov r1, #3
	bl sub_0207A014
	mov r5, #0
_0205ADE2:
	add r1, r5, #0
	ldr r2, [r6, #0x4c]
	mul r1, r4
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	bl sub_0207A048
	add r5, r5, #1
	cmp r5, #3
	blt _0205ADE2
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205ADAC

	thumb_func_start sub_0205ADF8
sub_0205ADF8: ; 0x0205ADF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r0, [sp, #0x20]
	add r0, #0x54
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AEC6
	mov r2, #0x67
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x18]
	bl sub_02076AF0
	str r0, [sp, #0x1c]
	mov r0, #9
	str r0, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r0, [sp, #0x20]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r7, #0
	add r6, r7, #0
	add r4, r7, #0
_0205AE68:
	ldr r0, [r5, #0x48]
	mov r1, #5
	add r0, r0, r6
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r2, [r5, #0xc]
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D738
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r6, r6, r0
	add r4, #0x10
	cmp r7, #3
	blt _0205AE68
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0xc]
	mov r1, #0x15
	bl sub_0200B1B8
	lsl r0, r7, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r2, [r5, #0xc]
	mov r3, #0x10
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_0200B190
_0205AEC6:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, #0
	ldrb r0, [r0, #8]
	mov r1, #0xf
	add r3, r2, #0
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	bl sub_0201AE78
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r5, #0x78]
	add r1, #0x54
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	add r0, r5, #0
	add r0, #0x54
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	add r1, #0x81
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #4
	add r0, #0x80
	strb r1, [r0]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x7c]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205ADF8

	thumb_func_start sub_0205AF18
sub_0205AF18: ; 0x0205AF18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x64
	add r0, r7, #0
	str r1, [sp, #0x14]
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AF9A
	mov r0, #0xb
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5a
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x14
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0205AF70:
	add r1, r6, #0
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0xc]
	add r1, #0x16
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #0xc]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #3
	blt _0205AF70
_0205AF9A:
	add r0, r5, #0
	mov r1, #3
	add r0, #0x80
	strb r1, [r0]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	str r7, [r5, #0x7c]
	add r1, #0x81
	strb r0, [r1]
	mov r0, #0x10
	str r0, [sp]
	ldrb r0, [r7, #8]
	mov r2, #0
	mov r1, #0xf
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0201AE78
	ldr r3, [sp, #0x14]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r5, #0x7c]
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205AF18

	thumb_func_start sub_0205AFE4
sub_0205AFE4: ; 0x0205AFE4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0205B0AC ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0205B00E
	mov r0, #0x81
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0205B004
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	b _0205B004
_0205B004:
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x81
	strb r1, [r0]
	b _0205B070
_0205B00E:
	mov r1, #0x80
	tst r1, r0
	beq _0205B032
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bne _0205B028
	mov r1, #0
	b _0205B02A
_0205B028:
	add r1, r1, #1
_0205B02A:
	add r0, r4, #0
	add r0, #0x81
	strb r1, [r0]
	b _0205B070
_0205B032:
	mov r1, #1
	tst r1, r0
	beq _0205B058
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r4, #0x80
	ldrb r0, [r4]
	sub r0, r0, #1
	cmp r1, r0
	bge _0205B052
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0205B052:
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_0205B058:
	mov r1, #2
	tst r0, r1
	beq _0205B06A
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_0205B06A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0205B070:
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x7c]
	mov r1, #0x10
	str r1, [sp]
	ldrb r1, [r0, #8]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r1, #0x13
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	mov r3, #0x81
	ldrsb r3, [r4, r3]
	ldr r0, [r4, #0x78]
	ldr r1, [r4, #0x7c]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r4, #0x7c]
	bl sub_0201ACCC
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0205B0AC: .word 0x021BF67C
_0205B0B0: .word 0x000005DC
	thumb_func_end sub_0205AFE4

	thumb_func_start sub_0205B0B4
sub_0205B0B4: ; 0x0205B0B4
	ldr r3, _0205B0BC ; =sub_0200DC9C
	ldr r0, [r0, #0x7c]
	mov r1, #1
	bx r3
	; .align 2, 0
_0205B0BC: .word sub_0200DC9C
	thumb_func_end sub_0205B0B4

	thumb_func_start sub_0205B0C0
sub_0205B0C0: ; 0x0205B0C0
	push {r4, lr}
	add r4, r0, #0
	add r0, r3, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r4
	beq _0205B0E2
	add r1, r0, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #2
	add r0, #0x89
	orr r1, r2
	strb r1, [r0]
_0205B0E2:
	pop {r4, pc}
	thumb_func_end sub_0205B0C0

	thumb_func_start sub_0205B0E4
sub_0205B0E4: ; 0x0205B0E4
	push {r3, lr}
	bl sub_02076AF0
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205B0E4

	thumb_func_start sub_0205B0F4
sub_0205B0F4: ; 0x0205B0F4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r4
	beq _0205B10C
	ldr r0, [r0, #0x48]
	pop {r4, pc}
_0205B10C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205B0F4

	thumb_func_start sub_0205B110
sub_0205B110: ; 0x0205B110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r3, #0
	add r4, r2, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r5
	beq _0205B13C
	ldrb r2, [r4]
	add r1, r0, #0
	add r1, #0x85
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #2
	add r0, #0x89
	orr r1, r2
	strb r1, [r0]
_0205B13C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205B110

	thumb_func_start sub_0205B140
sub_0205B140: ; 0x0205B140
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_02059EBC
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #7
	bls _0205B166
	b _0205B2C6
_0205B166:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205B172: ; jump table
	.short _0205B182 - _0205B172 - 2 ; case 0
	.short _0205B20C - _0205B172 - 2 ; case 1
	.short _0205B25C - _0205B172 - 2 ; case 2
	.short _0205B26C - _0205B172 - 2 ; case 3
	.short _0205B27C - _0205B172 - 2 ; case 4
	.short _0205B28E - _0205B172 - 2 ; case 5
	.short _0205B29C - _0205B172 - 2 ; case 6
	.short _0205B2B8 - _0205B172 - 2 ; case 7
_0205B182:
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x18]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xb
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x1c]
	mov r0, #0xc8
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0]
	mov r0, #0xc8
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #4]
	ldrb r1, [r6, #3]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0]
	add r1, r1, #2
	bl sub_0200B1B8
	ldr r0, [r4, #0x24]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	bl sub_0200C388
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #8
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	bl sub_0205D944
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #8
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B20C:
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205B2CA
	ldr r0, _0205B2D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0205B2CA
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	ldr r0, [r4, #0x18]
	bl sub_0200B3F0
	ldr r0, [r4, #0]
	bl sub_020237BC
	ldr r0, [r4, #4]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B25C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205B2CA
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B26C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203E09C
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B27C:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0205B2CA
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B28E:
	add r0, r5, #0
	bl sub_020509D4
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B29C:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	bne _0205B2CA
	mov r0, #1
	bl ov5_021D1744
	bl sub_020576A0
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B2B8:
	bl sub_02059514
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B2C6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B2CA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0205B2D0: .word 0x021BF67C
	thumb_func_end sub_0205B140

	thumb_func_start sub_0205B2D4
sub_0205B2D4: ; 0x0205B2D4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0203608C
	add r5, r0, #0
	bl sub_02058D88
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058DC0
	add r6, r0, #0
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _0205B336
_0205B2F6:
	cmp r4, r5
	beq _0205B32C
	add r0, r4, #0
	bl sub_02058CA0
	cmp r7, r0
	bne _0205B32C
	add r0, r4, #0
	bl sub_02058CF4
	cmp r6, r0
	bne _0205B32C
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	add r2, r0, #0
	str r4, [r2, #0x24]
	mov r0, #0
	str r0, [r2, #0x28]
	ldr r0, [sp]
	ldr r1, _0205B338 ; =sub_0205B140
	bl sub_02050904
	bl sub_0203D128
	pop {r3, r4, r5, r6, r7, pc}
_0205B32C:
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _0205B2F6
_0205B336:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205B338: .word sub_0205B140
	thumb_func_end sub_0205B2D4

	thumb_func_start sub_0205B33C
sub_0205B33C: ; 0x0205B33C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _0205B346
	bl sub_02022974
_0205B346:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0205B350
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205B350:
	mov r2, #0x2a
	mov r0, #3
	mov r1, #0x1f
	lsl r2, r2, #6
	bl sub_02017FD4
	add r0, r4, #0
	bl sub_0205B3A0
	add r5, r0, #0
	bne _0205B368
	ldr r5, [r4, #0x7c]
_0205B368:
	add r0, r4, #0
	bl sub_02099514
	mov r0, #2
	bl sub_02037B58
	ldr r1, _0205B384 ; =sub_0205B408
	add r0, r5, #0
	mov r2, #0x28
	bl sub_0205B5B4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0205B384: .word sub_0205B408
	thumb_func_end sub_0205B33C

	thumb_func_start sub_0205B388
sub_0205B388: ; 0x0205B388
	push {r3, lr}
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	beq _0205B398
	ldr r1, _0205B39C ; =sub_0205B5FC
	mov r2, #5
	bl sub_0205B5B4
_0205B398:
	pop {r3, pc}
	nop
_0205B39C: .word sub_0205B5FC
	thumb_func_end sub_0205B388

	thumb_func_start sub_0205B3A0
sub_0205B3A0: ; 0x0205B3A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	beq _0205B3AE
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205B3AE:
	bl sub_0203D174
	add r6, r0, #0
	bl sub_020369EC
	mov r1, #0x19
	mov r0, #0x1f
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x28
	str r0, [r4, #0x14]
	ldr r0, _0205B404 ; =sub_0205B5BC
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	str r0, [r4, #0xc]
	str r5, [r4, #0]
	str r6, [r4, #4]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r4, #8]
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_020361BC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0205B404: .word sub_0205B5BC
	thumb_func_end sub_0205B3A0

	thumb_func_start sub_0205B408
sub_0205B408: ; 0x0205B408
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02033E1C
	cmp r0, #0
	beq _0205B434
	add r0, sp, #0
	bl sub_02014AB4
	add r0, sp, #0
	bl sub_0205C12C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205C010
	ldr r1, _0205B438 ; =sub_0205B43C
	add r0, r4, #0
	mov r2, #0x28
	bl sub_0205B5B4
_0205B434:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0205B438: .word sub_0205B43C
	thumb_func_end sub_0205B408

	thumb_func_start sub_0205B43C
sub_0205B43C: ; 0x0205B43C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036AA0
	cmp r0, #0
	beq _0205B458
	ldr r0, _0205B4A4 ; =0x021C0850
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, _0205B4A8 ; =sub_0205B4F8
	add r0, r4, #0
	bl sub_0205B5B4
	pop {r4, pc}
_0205B458:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0205B4A2
	mov r0, #2
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0205B488
	ldr r0, [r4, #0x30]
	cmp r0, #5
	bne _0205B476
	ldr r0, [r4, #0x18]
	bl sub_02037888
	b _0205B498
_0205B476:
	cmp r0, #6
	ldr r0, [r4, #0x18]
	bne _0205B482
	bl sub_020378C8
	b _0205B498
_0205B482:
	bl sub_02036A38
	b _0205B498
_0205B488:
	cmp r0, #2
	bne _0205B498
	mov r0, #0
	bl sub_02095E98
	ldr r0, [r4, #0x18]
	bl sub_02037854
_0205B498:
	ldr r1, _0205B4AC ; =sub_0205B634
	add r0, r4, #0
	mov r2, #0xc
	bl sub_0205B5B4
_0205B4A2:
	pop {r4, pc}
	; .align 2, 0
_0205B4A4: .word 0x021C0850
_0205B4A8: .word sub_0205B4F8
_0205B4AC: .word sub_0205B634
	thumb_func_end sub_0205B43C

	thumb_func_start sub_0205B4B0
sub_0205B4B0: ; 0x0205B4B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036B44
	cmp r0, #1
	bne _0205B4CC
	ldr r0, [r4, #0]
	bl sub_02099514
	ldr r1, _0205B4D0 ; =sub_0205B43C
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B4CC:
	pop {r4, pc}
	nop
_0205B4D0: .word sub_0205B43C
	thumb_func_end sub_0205B4B0

	thumb_func_start sub_0205B4D4
sub_0205B4D4: ; 0x0205B4D4
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_0205B4DA:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0205B4E6
	add r5, r5, #1
_0205B4E6:
	add r4, r4, #1
	cmp r4, #5
	blt _0205B4DA
	cmp r5, #1
	blt _0205B4F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205B4F4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205B4D4

	thumb_func_start sub_0205B4F8
sub_0205B4F8: ; 0x0205B4F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0205B508
	sub r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_0205B508:
	ldr r0, _0205B56C ; =0x021C0850
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl sub_020340E8
	add r5, r0, #0
	bl sub_020360E8
	cmp r0, #0
	beq _0205B548
	bl sub_0205B4D4
	cmp r0, #1
	bne _0205B548
	ldrb r0, [r5, #0x1c]
	cmp r0, #4
	beq _0205B548
	bl sub_02032AC0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0xb
	bl sub_0205BEA8
	ldr r1, _0205B570 ; =sub_0205B578
	add r0, r4, #0
	mov r2, #0
	bl sub_0205B5B4
_0205B548:
	bl sub_02036AA0
	cmp r0, #0
	bne _0205B56A
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B574 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B56A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205B56C: .word 0x021C0850
_0205B570: .word sub_0205B578
_0205B574: .word sub_0205B4B0
	thumb_func_end sub_0205B4F8

	thumb_func_start sub_0205B578
sub_0205B578: ; 0x0205B578
	push {r4, lr}
	add r4, r0, #0
	bl sub_02038938
	cmp r0, #0
	beq _0205B58C
	bl sub_020360E8
	cmp r0, #0
	beq _0205B5AE
_0205B58C:
	bl sub_020360E8
	cmp r0, #0
	bne _0205B5AE
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B5B0 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B5AE:
	pop {r4, pc}
	; .align 2, 0
_0205B5B0: .word sub_0205B4B0
	thumb_func_end sub_0205B578

	thumb_func_start sub_0205B5B4
sub_0205B5B4: ; 0x0205B5B4
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B5B4

	thumb_func_start sub_0205B5BC
sub_0205B5BC: ; 0x0205B5BC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	cmp r1, #0
	bne _0205B5CA
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_0205B5CA:
	mov r7, #0x11
	ldr r5, _0205B5F8 ; =0x021C085C
	mov r6, #0
	add r4, r1, #0
	lsl r7, r7, #4
_0205B5D4:
	add r0, r6, #0
	bl sub_02033F3C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	stmia r5!, {r0}
	cmp r6, #0x10
	blt _0205B5D4
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0205B5F6
	blx r1
_0205B5F6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205B5F8: .word 0x021C085C
	thumb_func_end sub_0205B5BC

	thumb_func_start sub_0205B5FC
sub_0205B5FC: ; 0x0205B5FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0205B60C
	sub r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_0205B60C:
	bl sub_02036B68
	ldr r1, _0205B61C ; =sub_0205B620
	add r0, r4, #0
	mov r2, #0
	bl sub_0205B5B4
	pop {r4, pc}
	; .align 2, 0
_0205B61C: .word sub_0205B620
	thumb_func_end sub_0205B5FC

	thumb_func_start sub_0205B620
sub_0205B620: ; 0x0205B620
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0205B632
	add r0, r4, #0
	bl sub_0205B754
_0205B632:
	pop {r4, pc}
	thumb_func_end sub_0205B620

	thumb_func_start sub_0205B634
sub_0205B634: ; 0x0205B634
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #1
	bne _0205B650
	bl sub_02032AC0
	ldr r1, _0205B688 ; =sub_0205B6C4
	add r0, r4, #0
	mov r2, #3
	bl sub_0205B5B4
	pop {r4, pc}
_0205B650:
	bl sub_020360E8
	cmp r0, #0
	beq _0205B668
	mov r2, #0
	str r2, [r4, #0x20]
	mov r0, #3
	str r0, [r4, #0x1c]
	ldr r1, _0205B68C ; =sub_0205B4F8
	add r0, r4, #0
	bl sub_0205B5B4
_0205B668:
	bl sub_02036A68
	cmp r0, #0
	beq _0205B686
	ldr r1, _0205B690 ; =sub_0205B694
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
	mov r1, #0
	str r1, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x44]
_0205B686:
	pop {r4, pc}
	; .align 2, 0
_0205B688: .word sub_0205B6C4
_0205B68C: .word sub_0205B4F8
_0205B690: .word sub_0205B694
	thumb_func_end sub_0205B634

	thumb_func_start sub_0205B694
sub_0205B694: ; 0x0205B694
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020509A4
	cmp r0, #0
	bne _0205B6BC
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B6C0 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B6BC:
	pop {r4, pc}
	nop
_0205B6C0: .word sub_0205B4B0
	thumb_func_end sub_0205B694

	thumb_func_start sub_0205B6C4
sub_0205B6C4: ; 0x0205B6C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #1
	bne _0205B6F8
	bl sub_0203608C
	bl sub_02032EE8
	cmp r0, #0
	beq _0205B720
	mov r1, #0
	str r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x1c]
	str r1, [r4, #0x44]
	add r1, r0, #0
	bl sub_020388F4
	ldr r1, _0205B724 ; =sub_0205B72C
	add r0, r4, #0
	mov r2, #3
	bl sub_0205B5B4
	pop {r4, pc}
_0205B6F8:
	bl sub_02036A68
	cmp r0, #0
	bne _0205B720
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	ldr r1, _0205B728 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
	mov r1, #0
	str r1, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x44]
_0205B720:
	pop {r4, pc}
	nop
_0205B724: .word sub_0205B72C
_0205B728: .word sub_0205B4B0
	thumb_func_end sub_0205B6C4

	thumb_func_start sub_0205B72C
sub_0205B72C: ; 0x0205B72C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #0
	bne _0205B74C
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	ldr r1, _0205B750 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B74C:
	pop {r4, pc}
	nop
_0205B750: .word sub_0205B4B0
	thumb_func_end sub_0205B72C

	thumb_func_start sub_0205B754
sub_0205B754: ; 0x0205B754
	push {r4, lr}
	add r4, r0, #0
	beq _0205B76C
	ldr r0, [r4, #0xc]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1f
	bl sub_0201807C
_0205B76C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205B754

	thumb_func_start sub_0205B770
sub_0205B770: ; 0x0205B770
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0205B770

	thumb_func_start sub_0205B774
sub_0205B774: ; 0x0205B774
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0205B774

	thumb_func_start sub_0205B780
sub_0205B780: ; 0x0205B780
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	sub r0, r5, #1
	bl sub_02033FB0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205C154
	cmp r6, #0
	bne _0205B79C
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B79C:
	sub r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	cmp r1, #0
	bne _0205B7B0
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B7B0:
	add r1, #0x50
	ldr r0, _0205B800 ; =0x021C0850
	add r1, #0x30
	str r1, [r0, #4]
	ldrb r0, [r1, #0x1c]
	cmp r0, #0xd
	bhi _0205B7FA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205B7CA: ; jump table
	.short _0205B7E6 - _0205B7CA - 2 ; case 0
	.short _0205B7EA - _0205B7CA - 2 ; case 1
	.short _0205B7EE - _0205B7CA - 2 ; case 2
	.short _0205B7F2 - _0205B7CA - 2 ; case 3
	.short _0205B7F6 - _0205B7CA - 2 ; case 4
	.short _0205B7F6 - _0205B7CA - 2 ; case 5
	.short _0205B7F6 - _0205B7CA - 2 ; case 6
	.short _0205B7F6 - _0205B7CA - 2 ; case 7
	.short _0205B7F6 - _0205B7CA - 2 ; case 8
	.short _0205B7FA - _0205B7CA - 2 ; case 9
	.short _0205B7FA - _0205B7CA - 2 ; case 10
	.short _0205B7F6 - _0205B7CA - 2 ; case 11
	.short _0205B7FA - _0205B7CA - 2 ; case 12
	.short _0205B7F2 - _0205B7CA - 2 ; case 13
_0205B7E6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B7EA:
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205B7EE:
	mov r0, #3
	pop {r4, r5, r6, pc}
_0205B7F2:
	mov r0, #4
	pop {r4, r5, r6, pc}
_0205B7F6:
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B7FA:
	mov r0, #5
	pop {r4, r5, r6, pc}
	nop
_0205B800: .word 0x021C0850
	thumb_func_end sub_0205B780

	thumb_func_start sub_0205B804
sub_0205B804: ; 0x0205B804
	push {r3, r4}
	sub r1, r1, #1
	lsl r3, r1, #2
	add r4, r0, r3
	mov r3, #0x11
	lsl r3, r3, #4
	ldr r4, [r4, r3]
	cmp r4, #0
	bne _0205B81C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B81C:
	add r4, #0x50
	ldr r3, _0205B8D4 ; =0x021C0850
	add r4, #0x30
	str r4, [r3, #4]
	ldrb r3, [r4, #0x1c]
	cmp r3, #0xd
	bhi _0205B8CE
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0205B836: ; jump table
	.short _0205B872 - _0205B836 - 2 ; case 0
	.short _0205B88E - _0205B836 - 2 ; case 1
	.short _0205B852 - _0205B836 - 2 ; case 2
	.short _0205B8AA - _0205B836 - 2 ; case 3
	.short _0205B8C8 - _0205B836 - 2 ; case 4
	.short _0205B8C8 - _0205B836 - 2 ; case 5
	.short _0205B8C8 - _0205B836 - 2 ; case 6
	.short _0205B8C8 - _0205B836 - 2 ; case 7
	.short _0205B8C8 - _0205B836 - 2 ; case 8
	.short _0205B8CE - _0205B836 - 2 ; case 9
	.short _0205B8CE - _0205B836 - 2 ; case 10
	.short _0205B8C8 - _0205B836 - 2 ; case 11
	.short _0205B8CE - _0205B836 - 2 ; case 12
	.short _0205B8AA - _0205B836 - 2 ; case 13
_0205B852:
	cmp r2, #3
	beq _0205B85C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B85C:
	mov r2, #5
	str r2, [r0, #0x30]
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B872:
	cmp r2, #1
	beq _0205B87C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B87C:
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B88E:
	cmp r2, #2
	beq _0205B898
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B898:
	str r1, [r0, #0x18]
	mov r1, #2
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	mov r0, #1
	pop {r3, r4}
	bx lr
_0205B8AA:
	cmp r2, #4
	beq _0205B8B4
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B8B4:
	mov r2, #6
	str r2, [r0, #0x30]
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B8C8:
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B8CE:
	mov r0, #5
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205B8D4: .word 0x021C0850
	thumb_func_end sub_0205B804

	thumb_func_start sub_0205B8D8
sub_0205B8D8: ; 0x0205B8D8
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0205B8D8

	thumb_func_start sub_0205B8DC
sub_0205B8DC: ; 0x0205B8DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0205B8EA
	mov r0, #7
	pop {r4, pc}
_0205B8EA:
	bl sub_02035E18
	cmp r0, #2
	bge _0205B8F6
	mov r0, #7
	pop {r4, pc}
_0205B8F6:
	bl sub_0203608C
	cmp r0, #0
	bne _0205B90A
	bl sub_02036AA0
	cmp r0, #1
	bne _0205B916
	ldr r0, [r4, #0x40]
	pop {r4, pc}
_0205B90A:
	bl sub_02036A68
	cmp r0, #1
	bne _0205B916
	ldr r0, [r4, #0x40]
	pop {r4, pc}
_0205B916:
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205B8DC

	thumb_func_start sub_0205B91C
sub_0205B91C: ; 0x0205B91C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036AA0
	cmp r0, #1
	bne _0205B92C
	ldr r0, [r4, #0x30]
	pop {r4, pc}
_0205B92C:
	mov r0, #7
	pop {r4, pc}
	thumb_func_end sub_0205B91C

	thumb_func_start sub_0205B930
sub_0205B930: ; 0x0205B930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, sp, #0
	strb r4, [r0, #2]
	cmp r1, #0
	beq _0205B944
	cmp r1, #1
	beq _0205B95C
	pop {r3, r4, r5, pc}
_0205B944:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	bne _0205B984
	ldrb r0, [r0, #2]
	add r1, sp, #0
	add r1, #2
	str r0, [r5, #0x34]
	mov r0, #0x63
	mov r2, #1
	bl sub_020359DC
	pop {r3, r4, r5, pc}
_0205B95C:
	cmp r4, #0
	bne _0205B974
	ldr r1, [r5, #0x30]
	mov r2, #1
	strb r1, [r0, #1]
	add r1, sp, #0
	mov r0, #0x67
	add r1, #1
	bl sub_02035AC4
	str r4, [r5, #0x3c]
	pop {r3, r4, r5, pc}
_0205B974:
	mov r1, #7
	strb r1, [r0]
	mov r0, #0x67
	add r1, sp, #0
	mov r2, #1
	bl sub_02035AC4
	str r4, [r5, #0x3c]
_0205B984:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205B930

	thumb_func_start sub_0205B988
sub_0205B988: ; 0x0205B988
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B988

	thumb_func_start sub_0205B98C
sub_0205B98C: ; 0x0205B98C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B98C

	thumb_func_start sub_0205B990
sub_0205B990: ; 0x0205B990
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x7c]
	ldr r1, _0205B9A8 ; =sub_0205B43C
	mov r2, #2
	bl sub_0205B5B4
	ldr r0, [r4, #0x7c]
	bl sub_0205C160
	pop {r4, pc}
	nop
_0205B9A8: .word sub_0205B43C
	thumb_func_end sub_0205B990

	thumb_func_start sub_0205B9AC
sub_0205B9AC: ; 0x0205B9AC
	ldr r1, [r3, #0x7c]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	bne _0205B9BE
	ldrb r0, [r2]
	str r0, [r1, #0x30]
	ldrb r1, [r2]
	ldr r0, _0205B9C0 ; =0x021C0850
	str r1, [r0, #8]
_0205B9BE:
	bx lr
	; .align 2, 0
_0205B9C0: .word 0x021C0850
	thumb_func_end sub_0205B9AC

	thumb_func_start sub_0205B9C4
sub_0205B9C4: ; 0x0205B9C4
	push {r3, lr}
	ldr r0, [r3, #0x7c]
	mov r1, #1
	str r1, [r0, #0x2c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x7c]
	str r1, [r0, #0x40]
	ldrb r0, [r2]
	cmp r0, #4
	bne _0205B9DC
	bl sub_0203781C
_0205B9DC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205B9C4

	thumb_func_start sub_0205B9E0
sub_0205B9E0: ; 0x0205B9E0
	ldr r0, [r3, #0x7c]
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
	thumb_func_end sub_0205B9E0

	thumb_func_start sub_0205B9E8
sub_0205B9E8: ; 0x0205B9E8
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_0205B9E8

	thumb_func_start sub_0205B9EC
sub_0205B9EC: ; 0x0205B9EC
	push {r4, lr}
	ldr r0, [r0, #0x30]
	add r4, r1, #0
	cmp r0, #0
	bne _0205BA04
	mov r1, #0
	mov r0, #0x68
	add r2, r1, #0
	bl sub_020359DC
	add r0, r4, #0
	pop {r4, pc}
_0205BA04:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205B9EC

	thumb_func_start sub_0205BA08
sub_0205BA08: ; 0x0205BA08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, _0205BA58 ; =0x0000066A
	mov r1, #1
	strh r1, [r6, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0205BA54
	add r0, r7, #0
	bl sub_02025EF0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02025F30
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x1f
	bl sub_0202C0EC
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #4
	bl sub_0202B758
_0205BA54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205BA58: .word 0x0000066A
	thumb_func_end sub_0205BA08

	thumb_func_start sub_0205BA5C
sub_0205BA5C: ; 0x0205BA5C
	ldr r1, [r1, #0x7c]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205BA5C

	thumb_func_start sub_0205BA6C
sub_0205BA6C: ; 0x0205BA6C
	ldr r1, [r3, #0x7c]
	ldrb r2, [r2]
	add r1, r1, r0
	ldr r0, _0205BA78 ; =0x00000176
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0205BA78: .word 0x00000176
	thumb_func_end sub_0205BA6C

	thumb_func_start sub_0205BA7C
sub_0205BA7C: ; 0x0205BA7C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	ldr r2, _0205BAA8 ; =0x00000176
	add r1, r4, r0
	ldrb r1, [r1, r2]
	cmp r1, #2
	bne _0205BA92
	mov r0, #1
	pop {r4, pc}
_0205BA92:
	mov r1, #1
	eor r0, r1
	add r0, r4, r0
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _0205BAA2
	mov r0, #2
	pop {r4, pc}
_0205BAA2:
	mov r0, #0
	pop {r4, pc}
	nop
_0205BAA8: .word 0x00000176
	thumb_func_end sub_0205BA7C

	thumb_func_start sub_0205BAAC
sub_0205BAAC: ; 0x0205BAAC
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x65
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205BAAC

	thumb_func_start sub_0205BAC0
sub_0205BAC0: ; 0x0205BAC0
	ldr r3, _0205BAE4 ; =0x020ED570
	mov r2, #0
_0205BAC4:
	ldrh r1, [r3]
	cmp r1, r0
	bgt _0205BAD4
	add r1, r1, #4
	cmp r1, r0
	ble _0205BAD4
	add r0, r2, #0
	bx lr
_0205BAD4:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xa
	blt _0205BAC4
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_0205BAE4: .word 0x020ED570
	thumb_func_end sub_0205BAC0

	thumb_func_start sub_0205BAE8
sub_0205BAE8: ; 0x0205BAE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	cmp r4, #9
	ble _0205BB08
	add r0, r4, #0
	bl sub_0205BAC0
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0205BB0A
	bl sub_02022974
	b _0205BB0A
_0205BB08:
	add r5, r4, #0
_0205BB0A:
	mov r0, #0x11
	lsl r0, r0, #4
	add r6, r6, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	cmp r0, #0
	bne _0205BB1C
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205BB1C:
	add r0, r5, #0
	bl sub_02033FB0
	ldr r5, [r6, r7]
	add r5, #0x50
	add r5, #0x30
	cmp r0, #0
	bne _0205BB30
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205BB30:
	cmp r4, #9
	ble _0205BB4A
	sub r4, #0xa
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0, #0x18]
	asr r4, r0, #7
	b _0205BB50
_0205BB4A:
	bl sub_02025F30
	add r4, r0, #0
_0205BB50:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0xd
	bhi _0205BC2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BB62: ; jump table
	.short _0205BC2E - _0205BB62 - 2 ; case 0
	.short _0205BBDA - _0205BB62 - 2 ; case 1
	.short _0205BBF6 - _0205BB62 - 2 ; case 2
	.short _0205BC12 - _0205BB62 - 2 ; case 3
	.short _0205BB7E - _0205BB62 - 2 ; case 4
	.short _0205BB86 - _0205BB62 - 2 ; case 5
	.short _0205BBA2 - _0205BB62 - 2 ; case 6
	.short _0205BBBE - _0205BB62 - 2 ; case 7
	.short _0205BBDA - _0205BB62 - 2 ; case 8
	.short _0205BBF6 - _0205BB62 - 2 ; case 9
	.short _0205BC12 - _0205BB62 - 2 ; case 10
	.short _0205BB7E - _0205BB62 - 2 ; case 11
	.short _0205BC12 - _0205BB62 - 2 ; case 12
	.short _0205BC12 - _0205BB62 - 2 ; case 13
_0205BB7E:
	ldr r0, _0205BC34 ; =0x020ED548
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0205BB86:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC38 ; =0x020ED560
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBA2:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC3C ; =0x020ED620
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBBE:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC40 ; =0x020ED550
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBDA:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC44 ; =0x020ED600
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBF6:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC48 ; =0x020ED640
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BC12:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC4C ; =0x020ED660
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BC2E:
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205BC34: .word 0x020ED548
_0205BC38: .word 0x020ED560
_0205BC3C: .word 0x020ED620
_0205BC40: .word 0x020ED550
_0205BC44: .word 0x020ED600
_0205BC48: .word 0x020ED640
_0205BC4C: .word 0x020ED660
	thumb_func_end sub_0205BAE8

	thumb_func_start sub_0205BC50
sub_0205BC50: ; 0x0205BC50
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0203608C
	bl sub_02032F78
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032F78
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	bl sub_0203608C
	bl sub_02032F9C
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032F9C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r4, #0
	bne _0205BC94
	mov r0, #0xf
	pop {r3, r4, r5, r6, r7, pc}
_0205BC94:
	beq _0205BCB0
	ldr r0, [sp]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200BDD0
	cmp r5, #0
	beq _0205BCB0
	ldr r0, [sp]
	mov r1, #4
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200BE08
_0205BCB0:
	cmp r7, r4
	beq _0205BCC8
	cmp r5, #0
	bne _0205BCBC
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_0205BCBC:
	cmp r6, r5
	bne _0205BCC4
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_0205BCC4:
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0205BCC8:
	cmp r6, r5
	beq _0205BCD0
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0205BCD0:
	mov r0, #0xf
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205BC50

	thumb_func_start sub_0205BCD4
sub_0205BCD4: ; 0x0205BCD4
	push {r3, lr}
	cmp r0, #0
	beq _0205BCE6
	lsl r2, r0, #3
	ldr r0, _0205BCF0 ; =0x020ED6E8
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, pc}
_0205BCE6:
	add r0, r2, #0
	bl sub_0205BC50
	pop {r3, pc}
	nop
_0205BCF0: .word 0x020ED6E8
	thumb_func_end sub_0205BCD4

	thumb_func_start sub_0205BCF4
sub_0205BCF4: ; 0x0205BCF4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, #0
	bne _0205BD08
	sub r1, r1, #1
	bl sub_0205BAE8
	pop {r4, r5, r6, pc}
_0205BD08:
	sub r0, r1, #1
	bl sub_02033FB0
	cmp r0, #0
	bne _0205BD24
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205BD24:
	bl sub_02025F30
	add r1, r0, #0
	cmp r4, #0x1a
	bhi _0205BE04
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BD3A: ; jump table
	.short _0205BE04 - _0205BD3A - 2 ; case 0
	.short _0205BD70 - _0205BD3A - 2 ; case 1
	.short _0205BD7C - _0205BD3A - 2 ; case 2
	.short _0205BDA8 - _0205BD3A - 2 ; case 3
	.short _0205BDA8 - _0205BD3A - 2 ; case 4
	.short _0205BDA8 - _0205BD3A - 2 ; case 5
	.short _0205BDA8 - _0205BD3A - 2 ; case 6
	.short _0205BDA8 - _0205BD3A - 2 ; case 7
	.short _0205BDA8 - _0205BD3A - 2 ; case 8
	.short _0205BD84 - _0205BD3A - 2 ; case 9
	.short _0205BDB6 - _0205BD3A - 2 ; case 10
	.short _0205BDB6 - _0205BD3A - 2 ; case 11
	.short _0205BDB6 - _0205BD3A - 2 ; case 12
	.short _0205BDC4 - _0205BD3A - 2 ; case 13
	.short _0205BDC4 - _0205BD3A - 2 ; case 14
	.short _0205BDC4 - _0205BD3A - 2 ; case 15
	.short _0205BDD2 - _0205BD3A - 2 ; case 16
	.short _0205BDD2 - _0205BD3A - 2 ; case 17
	.short _0205BDD2 - _0205BD3A - 2 ; case 18
	.short _0205BD9A - _0205BD3A - 2 ; case 19
	.short _0205BD9A - _0205BD3A - 2 ; case 20
	.short _0205BD9A - _0205BD3A - 2 ; case 21
	.short _0205BDE0 - _0205BD3A - 2 ; case 22
	.short _0205BDE8 - _0205BD3A - 2 ; case 23
	.short _0205BDF0 - _0205BD3A - 2 ; case 24
	.short _0205BDF8 - _0205BD3A - 2 ; case 25
	.short _0205BDFC - _0205BD3A - 2 ; case 26
_0205BD70:
	ldr r0, [r5, #0x34]
	add r2, r6, #0
	sub r0, r0, #1
	bl sub_0205BCD4
	pop {r4, r5, r6, pc}
_0205BD7C:
	ldr r0, _0205BE0C ; =0x020ED520
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BD84:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _0205BD8E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205BD8E:
	lsl r2, r0, #3
	ldr r0, _0205BE10 ; =0x020ED6A8
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BD9A:
	sub r4, #0x13
	ldr r0, _0205BE14 ; =0x020ED5CC
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDA8:
	sub r0, r4, #3
	lsl r2, r0, #3
	ldr r0, _0205BE18 ; =0x020ED680
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDB6:
	sub r4, #0xa
	ldr r0, _0205BE1C ; =0x020ED584
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDC4:
	sub r4, #0xd
	ldr r0, _0205BE20 ; =0x020ED59C
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDD2:
	sub r4, #0x10
	ldr r0, _0205BE24 ; =0x020ED5B4
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDE0:
	ldr r0, _0205BE28 ; =0x020ED530
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDE8:
	ldr r0, _0205BE2C ; =0x020ED528
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDF0:
	ldr r0, _0205BE30 ; =0x020ED538
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDF8:
	mov r0, #0xda
	pop {r4, r5, r6, pc}
_0205BDFC:
	ldr r0, _0205BE34 ; =0x020ED540
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BE04:
	bl sub_02022974
	mov r0, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205BE0C: .word 0x020ED520
_0205BE10: .word 0x020ED6A8
_0205BE14: .word 0x020ED5CC
_0205BE18: .word 0x020ED680
_0205BE1C: .word 0x020ED584
_0205BE20: .word 0x020ED59C
_0205BE24: .word 0x020ED5B4
_0205BE28: .word 0x020ED530
_0205BE2C: .word 0x020ED528
_0205BE30: .word 0x020ED538
_0205BE34: .word 0x020ED540
	thumb_func_end sub_0205BCF4

	thumb_func_start sub_0205BE38
sub_0205BE38: ; 0x0205BE38
	push {r4, lr}
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r4, r0, #0
	bne _0205BE4E
	bl sub_02022974
_0205BE4E:
	add r0, r4, #0
	bl sub_02025FCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205BE38

	thumb_func_start sub_0205BE58
sub_0205BE58: ; 0x0205BE58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #1
_0205BE5E:
	add r0, r7, #0
	sub r4, r7, #1
	bl sub_02032EE8
	add r6, r0, #0
	beq _0205BE96
	bl sub_0203608C
	cmp r0, #0
	bne _0205BEA0
	add r0, r6, #0
	bl sub_02025F20
	lsl r1, r4, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02025F8C
	str r0, [sp]
	add r0, r6, #0
	bl sub_02025F30
	lsl r1, r0, #7
	ldr r0, [sp]
	orr r1, r0
	add r0, r5, r4
	strb r1, [r0, #0x18]
	b _0205BEA0
_0205BE96:
	lsl r1, r4, #2
	mov r0, #0
	str r0, [r5, r1]
	add r1, r5, r4
	strb r0, [r1, #0x18]
_0205BEA0:
	add r7, r7, #1
	cmp r7, #5
	blt _0205BE5E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205BE58

	thumb_func_start sub_0205BEA8
sub_0205BEA8: ; 0x0205BEA8
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	cmp r4, #0xd
	bhi _0205BF32
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BEC8: ; jump table
	.short _0205BF32 - _0205BEC8 - 2 ; case 0
	.short _0205BF02 - _0205BEC8 - 2 ; case 1
	.short _0205BF16 - _0205BEC8 - 2 ; case 2
	.short _0205BF2A - _0205BEC8 - 2 ; case 3
	.short _0205BF32 - _0205BEC8 - 2 ; case 4
	.short _0205BEEE - _0205BEC8 - 2 ; case 5
	.short _0205BEEE - _0205BEC8 - 2 ; case 6
	.short _0205BEEE - _0205BEC8 - 2 ; case 7
	.short _0205BEF8 - _0205BEC8 - 2 ; case 8
	.short _0205BF0C - _0205BEC8 - 2 ; case 9
	.short _0205BF20 - _0205BEC8 - 2 ; case 10
	.short _0205BEE4 - _0205BEC8 - 2 ; case 11
	.short _0205BF20 - _0205BEC8 - 2 ; case 12
	.short _0205BF2A - _0205BEC8 - 2 ; case 13
_0205BEE4:
	add r0, sp, #0
	mov r1, #2
	bl sub_0205BE58
	b _0205BF32
_0205BEEE:
	add r0, sp, #0
	mov r1, #2
	bl sub_0205BE58
	b _0205BF32
_0205BEF8:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF02:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
	b _0205BF32
_0205BF0C:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF16:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
	b _0205BF32
_0205BF20:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF2A:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
_0205BF32:
	add r0, sp, #0
	strb r4, [r0, #0x1c]
	add r0, sp, #0
	bl sub_020340C4
	bl sub_020340FC
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end sub_0205BEA8

	thumb_func_start sub_0205BF44
sub_0205BF44: ; 0x0205BF44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r3, #0
	mov r0, #0x11
	add r6, r1, #0
	add r2, r3, #0
	add r4, r5, #0
	lsl r0, r0, #4
_0205BF54:
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0205BF5C
	add r3, r3, #1
_0205BF5C:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #0xa
	blt _0205BF54
	cmp r3, #0
	beq _0205BF6C
	mov r0, #0xa6
	pop {r4, r5, r6, pc}
_0205BF6C:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014BBC
	cmp r0, #0
	bne _0205BF7E
	mov r0, #0xa7
	pop {r4, r5, r6, pc}
_0205BF7E:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014C80
	cmp r0, #4
	beq _0205BFB0
	ldr r0, [r5, #8]
	bl sub_02025F8C
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_02025F30
	add r1, r4, #0
	mov r2, #2
	bl sub_0205CA14
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B960
	mov r0, #0xa8
	pop {r4, r5, r6, pc}
_0205BFB0:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014C84
	add r4, r0, #0
	cmp r4, #0x14
	blt _0205BFC2
	mov r4, #0
_0205BFC2:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02014C78
	add r2, r0, #0
	ldr r0, _0205BFE8 ; =0x0000FFFF
	cmp r2, r0
	beq _0205BFDE
	add r0, r6, #0
	mov r1, #0
	bl sub_0200BE48
_0205BFDE:
	ldr r0, _0205BFEC ; =0x020ED720
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
	nop
_0205BFE8: .word 0x0000FFFF
_0205BFEC: .word 0x020ED720
	thumb_func_end sub_0205BF44

	thumb_func_start sub_0205BFF0
sub_0205BFF0: ; 0x0205BFF0
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #0x1c]
	add r4, r0, #0
	add r2, r3, #0
_0205BFFA:
	stmia r4!, {r2}
	add r1, r0, r3
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x10]
	add r3, r3, #1
	strb r2, [r1, #0x14]
	cmp r3, #4
	blt _0205BFFA
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205BFF0

	thumb_func_start sub_0205C010
sub_0205C010: ; 0x0205C010
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_02014CC0
	mov r0, #6
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end sub_0205C010

	thumb_func_start sub_0205C028
sub_0205C028: ; 0x0205C028
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _0205C036
	mov r0, #0
	bx lr
_0205C036:
	mov r2, #0
	str r2, [r0, r1]
	sub r1, #8
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0205C028

	thumb_func_start sub_0205C040
sub_0205C040: ; 0x0205C040
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #8]
	ldr r2, _0205C124 ; =0x0000027B
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	cmp r4, #0
	bne _0205C066
	sub r0, r7, #1
	bl sub_02033FB0
	b _0205C072
_0205C066:
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
_0205C072:
	add r4, r0, #0
	cmp r4, #0
	bne _0205C082
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205C082:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B498
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B498
	add r0, r4, #0
	bl sub_02025FD8
	add r4, r0, #0
	cmp r4, #1
	blt _0205C0C0
	cmp r4, #7
	bgt _0205C0C0
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #7
	bhs _0205C0C0
	lsl r1, r0, #2
	ldr r0, _0205C128 ; =0x020ED5E4
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _0205C0C0
	ldr r0, [sp, #0x20]
	bl sub_02014F98
_0205C0C0:
	cmp r4, #7
	bhi _0205C0F8
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205C0D0: ; jump table
	.short _0205C0F8 - _0205C0D0 - 2 ; case 0
	.short _0205C0E0 - _0205C0D0 - 2 ; case 1
	.short _0205C0E4 - _0205C0D0 - 2 ; case 2
	.short _0205C0E8 - _0205C0D0 - 2 ; case 3
	.short _0205C0EC - _0205C0D0 - 2 ; case 4
	.short _0205C0F0 - _0205C0D0 - 2 ; case 5
	.short _0205C0F8 - _0205C0D0 - 2 ; case 6
	.short _0205C0F4 - _0205C0D0 - 2 ; case 7
_0205C0E0:
	mov r1, #0xd3
	b _0205C0FA
_0205C0E4:
	mov r1, #0xd4
	b _0205C0FA
_0205C0E8:
	mov r1, #0xd5
	b _0205C0FA
_0205C0EC:
	mov r1, #0xd6
	b _0205C0FA
_0205C0F0:
	mov r1, #0xd7
	b _0205C0FA
_0205C0F4:
	mov r1, #0xd8
	b _0205C0FA
_0205C0F8:
	mov r1, #0xd9
_0205C0FA:
	add r0, r6, #0
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_0200B48C
	add r0, r7, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C124: .word 0x0000027B
_0205C128: .word 0x020ED5E4
	thumb_func_end sub_0205C040

	thumb_func_start sub_0205C12C
sub_0205C12C: ; 0x0205C12C
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0205BFF0
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #0x1c]
	add r0, r4, #0
	bl sub_020340A8
	add r0, sp, #0
	bl sub_020340C4
	bl sub_020340FC
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C12C

	thumb_func_start sub_0205C154
sub_0205C154: ; 0x0205C154
	mov r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C154

	thumb_func_start sub_0205C160
sub_0205C160: ; 0x0205C160
	mov r2, #0
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x2c]
	str r2, [r0, #0x30]
	mov r1, #0x5d
	str r2, [r0, #0x40]
	lsl r1, r1, #2
	strh r2, [r0, r1]
	add r1, #0xc
	str r2, [r0, r1]
	str r2, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C160

	thumb_func_start sub_0205C17C
sub_0205C17C: ; 0x0205C17C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #8]
	bl sub_02025F30
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_0205CA14
	add r3, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r3, #0x18
	str r0, [sp]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsr r3, r3, #0x18
	str r0, [sp, #4]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02071D40
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205C17C

	thumb_func_start sub_0205C1F0
sub_0205C1F0: ; 0x0205C1F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0205C1F0

	thumb_func_start sub_0205C214
sub_0205C214: ; 0x0205C214
	mov r1, #0x61
	add r2, r0, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r3, _0205C224 ; =sub_0203597C
	mov r0, #0x69
	ldr r2, _0205C228 ; =0x0000066C
	bx r3
	; .align 2, 0
_0205C224: .word sub_0203597C
_0205C228: .word 0x0000066C
	thumb_func_end sub_0205C214

	thumb_func_start sub_0205C22C
sub_0205C22C: ; 0x0205C22C
	push {r3, r4, r5, lr}
	ldr r1, _0205C298 ; =0x000004E8
	add r5, r0, #0
	mov r0, #0x1f
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _0205C298 ; =0x000004E8
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	mov r0, #0x4e
	str r5, [r4, #0]
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0205C29C ; =sub_0205C304
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0205B770
	ldr r1, _0205C2A0 ; =0x000004D4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #9
	ldr r0, [r0, #0xc]
	bl sub_020245BC
	ldr r1, _0205C2A4 ; =0x000004D8
	ldr r2, _0205C2A8 ; =0x00002710
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0x59
	ldr r0, [r0, #0x3c]
	str r0, [r4, #8]
	mov r0, #0xb
	bl sub_02017FD4
	mov r0, #0x59
	bl sub_0205C95C
	ldr r1, _0205C2AC ; =0x000004DC
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0205C2C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205C298: .word 0x000004E8
_0205C29C: .word sub_0205C304
_0205C2A0: .word 0x000004D4
_0205C2A4: .word 0x000004D8
_0205C2A8: .word 0x00002710
_0205C2AC: .word 0x000004DC
	thumb_func_end sub_0205C22C

	thumb_func_start sub_0205C2B0
sub_0205C2B0: ; 0x0205C2B0
	mov r3, #0
	mov r1, #3
_0205C2B4:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	beq _0205C2BC
	strb r1, [r0, #0xc]
_0205C2BC:
	add r3, r3, #1
	add r0, #0x18
	cmp r3, #0x33
	blt _0205C2B4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C2B0

	thumb_func_start sub_0205C2C8
sub_0205C2C8: ; 0x0205C2C8
	mov r2, #0
	add r1, r2, #0
_0205C2CC:
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #0x33
	blt _0205C2CC
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C2C8

	thumb_func_start sub_0205C2E0
sub_0205C2E0: ; 0x0205C2E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, _0205C300 ; =0x000004DC
	ldr r0, [r4, r0]
	bl sub_0205C970
	mov r0, #0x59
	bl sub_0201807C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_0205C300: .word 0x000004DC
	thumb_func_end sub_0205C2E0

	thumb_func_start sub_0205C304
sub_0205C304: ; 0x0205C304
	push {r3, r4, r5, lr}
	ldr r0, _0205C33C ; =0x000004D4
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldr r4, [r5, #0]
	bl sub_020509A4
	cmp r0, #0
	bne _0205C33A
	ldr r3, _0205C33C ; =0x000004D4
	add r1, r4, #0
	ldr r0, [r5, r3]
	ldr r0, [r0, #0x3c]
	str r0, [r5, #8]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r2, [r2, #0x38]
	ldr r3, [r5, r3]
	add r0, r5, #0
	bl sub_0205C44C
	ldr r1, _0205C33C ; =0x000004D4
	add r0, r5, #0
	ldr r1, [r5, r1]
	ldr r1, [r1, #0x38]
	bl sub_0205C51C
_0205C33A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205C33C: .word 0x000004D4
	thumb_func_end sub_0205C304

	thumb_func_start sub_0205C340
sub_0205C340: ; 0x0205C340
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	str r0, [sp]
	str r3, [sp, #4]
	cmp r2, #0
	bne _0205C374
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205C35C:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C444
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205C35C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205C374:
	add r0, r2, #0
	str r0, [sp, #0xc]
	add r0, #0x50
	str r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	mov r2, #0x18
	add r3, r1, #0
	mul r3, r2
	ldr r2, [sp]
	add r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r0, r2
	beq _0205C3B8
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205C3A0:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C444
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205C3A0
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205C3B8:
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r7, [r0, r1]
	ldr r0, [sp, #0xc]
	add r6, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
_0205C3CC:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0205C3E6
	cmp r0, #2
	beq _0205C40C
	cmp r0, #4
	beq _0205C426
	b _0205C42A
_0205C3E6:
	ldr r0, [sp, #0xc]
	add r1, r0, r6
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0205C42A
	mov r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r1, #0x18]
	mov r0, #0x7f
	and r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl sub_020280E0
	strb r0, [r4, #0xe]
	mov r5, #1
	b _0205C42A
_0205C40C:
	ldr r0, [sp, #0xc]
	add r0, r0, r6
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0205C422
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #3
	bl sub_0205C444
	b _0205C42A
_0205C422:
	mov r5, #1
	b _0205C42A
_0205C426:
	mov r0, #0
	strb r0, [r4, #0xc]
_0205C42A:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	add r7, r7, #1
	str r0, [sp, #8]
	cmp r6, #4
	blt _0205C3CC
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0205C440: .word 0x020ED570
	thumb_func_end sub_0205C340

	thumb_func_start sub_0205C444
sub_0205C444: ; 0x0205C444
	mov r3, #0x18
	mul r3, r1
	strb r2, [r0, r3]
	bx lr
	thumb_func_end sub_0205C444

	thumb_func_start sub_0205C44C
sub_0205C44C: ; 0x0205C44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r0, #0xc
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	str r0, [sp, #0x10]
_0205C460:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0205B774
	add r6, r0, #0
	beq _0205C47A
	add r7, r6, #0
	add r7, #0x50
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
	b _0205C480
_0205C47A:
	mov r7, #0
	add r0, r7, #0
	str r0, [sp, #0xc]
_0205C480:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0205C490
	cmp r0, #2
	beq _0205C4CC
	cmp r0, #4
	beq _0205C50A
	b _0205C50E
_0205C490:
	cmp r6, #0
	beq _0205C50E
	ldr r0, [sp, #0xc]
	bl sub_02025F8C
	strb r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_02025F20
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_020280E0
	strb r0, [r5, #0xe]
	ldr r0, [r7, #0]
	ldr r3, [sp, #8]
	str r0, [r5, #0x18]
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C340
	cmp r0, #0
	beq _0205C4C6
	mov r0, #2
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C4C6:
	mov r0, #1
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C4CC:
	cmp r6, #0
	bne _0205C4DC
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205C444
	b _0205C4EE
_0205C4DC:
	ldr r1, [r7, #0]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	beq _0205C4EE
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205C444
_0205C4EE:
	ldr r0, [sp]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C340
	cmp r0, #0
	beq _0205C50E
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _0205C50E
	mov r0, #3
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C50A:
	mov r0, #0
	strb r0, [r5, #0xc]
_0205C50E:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0xa
	blt _0205C460
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205C44C

	thumb_func_start sub_0205C51C
sub_0205C51C: ; 0x0205C51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #8]
	str r1, [sp, #4]
	cmp r0, #0
	bne _0205C52E
	bl sub_02022974
_0205C52E:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EABC
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EAC8
	ldr r4, [sp]
	str r0, [sp, #8]
	add r6, r4, #0
	mov r7, #0
	add r6, #0xc
_0205C54A:
	ldr r0, [sp, #4]
	add r1, r7, #1
	bl sub_0206251C
	add r5, r0, #0
	bne _0205C55A
	bl sub_02022974
_0205C55A:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _0205C64E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205C56C: ; jump table
	.short _0205C576 - _0205C56C - 2 ; case 0
	.short _0205C596 - _0205C56C - 2 ; case 1
	.short _0205C5F6 - _0205C56C - 2 ; case 2
	.short _0205C61E - _0205C56C - 2 ; case 3
	.short _0205C64A - _0205C56C - 2 ; case 4
_0205C576:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0205C64E
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C6E0
	b _0205C64E
_0205C596:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205C5B6
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl sub_0205C680
	b _0205C64E
_0205C5B6:
	add r0, r5, #0
	bl sub_020656AC
	add r0, r5, #0
	mov r1, #0
	bl sub_02062DB4
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0205C5EC
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0205C5EC
	add r0, r5, #0
	mov r1, #3
	bl sub_020633A8
	add r0, r5, #0
	mov r1, #1
	bl sub_020629FC
	add r0, r5, #0
	mov r1, #1
	bl sub_02062A04
	mov r0, #1
	strb r0, [r4, #0x15]
_0205C5EC:
	mov r0, #2
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	b _0205C64E
_0205C5F6:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C7BC
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205C616
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C788
_0205C616:
	add r0, r6, #0
	bl sub_0205C6BC
	b _0205C64E
_0205C61E:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	add r0, r5, #0
	bl sub_020656AC
	mov r0, #4
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x15]
	add r0, r5, #0
	mov r1, #1
	bl sub_02062D64
	add r0, r5, #0
	mov r1, #0
	bl sub_02062D80
	b _0205C64E
_0205C64A:
	mov r0, #0
	strb r0, [r4, #0xd]
_0205C64E:
	add r7, r7, #1
	add r4, #0x18
	add r6, #0x18
	cmp r7, #0x32
	bge _0205C65A
	b _0205C54A
_0205C65A:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EB3C
	add r1, r0, #0
	ldr r2, _0205C67C ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r2
	bl sub_0205C7BC
	ldr r1, _0205C67C ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_0205C6BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C67C: .word 0x000004BC
	thumb_func_end sub_0205C51C

	thumb_func_start sub_0205C680
sub_0205C680: ; 0x0205C680
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _0205C69E
	bl sub_020714F0
	cmp r0, #0
	beq _0205C69A
	ldr r0, [r5, #0x10]
	bl sub_0207136C
_0205C69A:
	mov r0, #0
	str r0, [r5, #0x10]
_0205C69E:
	cmp r4, #0
	beq _0205C6BA
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0205C6BA
	bl sub_020714F0
	cmp r0, #0
	beq _0205C6B6
	ldr r0, [r5, #0x14]
	bl sub_0207136C
_0205C6B6:
	mov r0, #0
	str r0, [r5, #0x14]
_0205C6BA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205C680

	thumb_func_start sub_0205C6BC
sub_0205C6BC: ; 0x0205C6BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #0
	beq _0205C6DC
	ldrh r1, [r4, #6]
	sub r1, r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _0205C6DC
	mov r1, #0
	bl sub_0205C680
	mov r0, #0
	strb r0, [r4, #4]
_0205C6DC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C6BC

	thumb_func_start sub_0205C6E0
sub_0205C6E0: ; 0x0205C6E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02062FF8
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063000
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r7, r0
	bne _0205C710
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0205C780
_0205C710:
	ldr r0, _0205C784 ; =0x0000064F
	bl sub_02005748
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_02061AD4
	add r0, r5, #0
	mov r1, #0
	bl sub_0205C680
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02063340
	add r0, r4, #0
	mov r1, #1
	bl sub_0206296C
	add r0, r4, #0
	mov r1, #0x44
	bl sub_02065638
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D80
	mov r1, #1
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205C780
	cmp r0, #1
	bne _0205C76E
	add r0, r4, #0
	bl ov5_021F16D4
	str r0, [r5, #0x14]
	b _0205C77C
_0205C76E:
	cmp r0, #2
	blo _0205C77C
	add r0, r4, #0
	mov r1, #2
	bl ov5_021F16D4
	str r0, [r5, #0x14]
_0205C77C:
	mov r0, #0
	strb r0, [r5, #2]
_0205C780:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C784: .word 0x0000064F
	thumb_func_end sub_0205C6E0

	thumb_func_start sub_0205C788
sub_0205C788: ; 0x0205C788
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	bl sub_02065638
	add r0, r5, #0
	mov r1, #1
	bl sub_02062DB4
	add r0, r5, #0
	mov r1, #0
	bl sub_020633A8
	add r0, r4, #0
	mov r1, #1
	bl sub_0205C680
	mov r0, #0
	strb r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #3
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205C788

	thumb_func_start sub_0205C7BC
sub_0205C7BC: ; 0x0205C7BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _0205C7E0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0205C7E0
	add r0, r1, #0
	bl ov5_021F6094
	str r0, [r4, #0x10]
	mov r0, #0x1e
	strh r0, [r4, #6]
	mov r0, #0
	strb r0, [r4, #3]
	mov r0, #1
	strb r0, [r4, #4]
_0205C7E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C7BC

	thumb_func_start sub_0205C7E4
sub_0205C7E4: ; 0x0205C7E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	cmp r5, r6
	bge _0205C81E
_0205C7F0:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C800
	bl sub_02022974
_0205C800:
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	add r0, r4, #0
	mov r1, #1
	bl sub_02062DB4
	add r5, r5, #1
	cmp r5, r6
	blt _0205C7F0
_0205C81E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205C7E4

	thumb_func_start sub_0205C820
sub_0205C820: ; 0x0205C820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C834
	bl sub_02022974
_0205C834:
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C8DA
	bl sub_02036AA0
	cmp r0, #0
	bne _0205C84E
	bl sub_02036A68
	cmp r0, #0
	beq _0205C8D0
_0205C84E:
	mov r6, #0
	add r5, #0xc
_0205C852:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _0205C8BC
	add r0, r7, #0
	add r1, r6, #1
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C868
	bl sub_02022974
_0205C868:
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_02061AD4
	add r0, r4, #0
	mov r1, #1
	bl sub_0206296C
	add r0, r4, #0
	mov r1, #0x44
	bl sub_02065638
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D80
	mov r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205C8BC
	cmp r0, #1
	bne _0205C8AA
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F16D4
	str r0, [r5, #0x14]
	b _0205C8B8
_0205C8AA:
	cmp r0, #2
	blo _0205C8B8
	add r0, r4, #0
	mov r1, #2
	bl ov5_021F16D4
	str r0, [r5, #0x14]
_0205C8B8:
	mov r0, #0
	strb r0, [r5, #2]
_0205C8BC:
	add r6, r6, #1
	add r5, #0x18
	cmp r6, #0xa
	blt _0205C852
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0x33
	bl sub_0205C7E4
	pop {r3, r4, r5, r6, r7, pc}
_0205C8D0:
	add r0, r7, #0
	mov r1, #1
	mov r2, #0x33
	bl sub_0205C7E4
_0205C8DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205C820

	thumb_func_start sub_0205C8DC
sub_0205C8DC: ; 0x0205C8DC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x59
	bl sub_02023790
	str r0, [r4, #0]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #4]
	add r0, #0x14
	str r1, [r4, #8]
	bl sub_02014A9C
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0205C8DC

	thumb_func_start sub_0205C900
sub_0205C900: ; 0x0205C900
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0205C908:
	add r0, r5, #0
	bl sub_0205C8DC
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205C908
	mov r0, #0xd2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205C900

	thumb_func_start sub_0205C924
sub_0205C924: ; 0x0205C924
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205C938
	bl sub_020237BC
_0205C938:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205C942
	bl sub_020237BC
_0205C942:
	pop {r4, pc}
	thumb_func_end sub_0205C924

	thumb_func_start sub_0205C944
sub_0205C944: ; 0x0205C944
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0205C94A:
	add r0, r5, #0
	bl sub_0205C924
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205C94A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205C944

	thumb_func_start sub_0205C95C
sub_0205C95C: ; 0x0205C95C
	push {r4, lr}
	mov r1, #0x35
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	bl sub_0205C900
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205C95C

	thumb_func_start sub_0205C970
sub_0205C970: ; 0x0205C970
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C944
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0205C970

	thumb_func_start sub_0205C980
sub_0205C980: ; 0x0205C980
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	lsl r0, r0, #0x1d
	ldr r2, _0205C9B4 ; =0x020ED770
	lsr r0, r0, #0x19
	add r5, r2, r0
	lsl r2, r1, #3
	mov r1, #0xc
	ldr r0, _0205C9B8 ; =0x020ED7F0
	mul r1, r2
	mov r4, #0
	add r6, r0, r1
_0205C998:
	ldr r3, [r5, #0]
	mov r2, #0xc
	mul r2, r3
	add r2, r6, r2
	ldr r2, [r2, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B960
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0205C998
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C9B4: .word 0x020ED770
_0205C9B8: .word 0x020ED7F0
	thumb_func_end sub_0205C980

	thumb_func_start sub_0205C9BC
sub_0205C9BC: ; 0x0205C9BC
	lsl r0, r0, #0x1d
	lsr r3, r0, #0x19
	ldr r0, _0205C9D8 ; =0x020ED770
	lsl r2, r2, #2
	add r0, r0, r3
	ldr r0, [r2, r0]
	lsl r1, r1, #3
	add r1, r1, r0
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0205C9DC ; =0x020ED7F0
	ldr r0, [r0, r2]
	bx lr
	; .align 2, 0
_0205C9D8: .word 0x020ED770
_0205C9DC: .word 0x020ED7F0
	thumb_func_end sub_0205C9BC

	thumb_func_start sub_0205C9E0
sub_0205C9E0: ; 0x0205C9E0
	push {r3, r4}
	lsl r4, r0, #3
	mov r0, #0xc
	ldr r2, _0205CA08 ; =0x020ED7F0
	mul r0, r4
	mov r3, #0
	add r2, r2, r0
_0205C9EE:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0205C9FA
	add r0, r3, r4
	pop {r3, r4}
	bx lr
_0205C9FA:
	add r3, r3, #1
	add r2, #0xc
	cmp r3, #8
	blt _0205C9EE
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205CA08: .word 0x020ED7F0
	thumb_func_end sub_0205C9E0

	thumb_func_start sub_0205CA0C
sub_0205CA0C: ; 0x0205CA0C
	ldr r3, _0205CA10 ; =sub_0205C9E0
	bx r3
	; .align 2, 0
_0205CA10: .word sub_0205C9E0
	thumb_func_end sub_0205CA0C

	thumb_func_start sub_0205CA14
sub_0205CA14: ; 0x0205CA14
	push {r4, lr}
	add r4, r2, #0
	bl sub_0205C9E0
	cmp r4, #0
	beq _0205CA42
	cmp r4, #1
	beq _0205CA32
	cmp r4, #2
	bne _0205CA3C
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0205CA44 ; =0x020ED7F4
	ldr r0, [r0, r1]
	pop {r4, pc}
_0205CA32:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0205CA48 ; =0x020ED7F8
	ldr r0, [r0, r1]
	pop {r4, pc}
_0205CA3C:
	bl sub_02022974
	mov r0, #0
_0205CA42:
	pop {r4, pc}
	; .align 2, 0
_0205CA44: .word 0x020ED7F4
_0205CA48: .word 0x020ED7F8
	thumb_func_end sub_0205CA14

	thumb_func_start sub_0205CA4C
sub_0205CA4C: ; 0x0205CA4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x56
	mov r1, #7
	add r2, sp, #0
	add r3, r5, #0
	bl sub_02006F88
	mov r1, #9
	add r4, r0, #0
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #0
	ldr r3, [r0, #0xc]
	mov r0, #1
	add r6, r5, #0
	lsl r0, r0, #8
_0205CA78:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6]
	add r6, r6, #2
	cmp r2, r0
	blt _0205CA78
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205CA4C

	thumb_func_start sub_0205CA94
sub_0205CA94: ; 0x0205CA94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205CAA6
	bl sub_020219F8
_0205CAA6:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #5
	bls _0205CAB2
	b _0205CBF6
_0205CAB2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CABE: ; jump table
	.short _0205CACA - _0205CABE - 2 ; case 0
	.short _0205CAEE - _0205CABE - 2 ; case 1
	.short _0205CB1E - _0205CABE - 2 ; case 2
	.short _0205CBA0 - _0205CABE - 2 ; case 3
	.short _0205CBB6 - _0205CABE - 2 ; case 4
	.short _0205CBE6 - _0205CABE - 2 ; case 5
_0205CACA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CAEE:
	sub r1, #0x24
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0205D274
	mov r1, #0x5b
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #1
	bl sub_0205D274
	mov r0, #0x5f
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0x18
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CB1E:
	mov r0, #0
	str r0, [sp, #0xc]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0205CB54
	sub r1, #0x24
	add r7, r4, r1
	add r6, r4, #0
	add r5, sp, #0x10
_0205CB32:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r7, #0
	blx r1
	stmia r5!, {r0}
	ldr r0, [sp, #0xc]
	add r7, #0x10
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r6, #0x10
	cmp r0, r1
	blt _0205CB32
_0205CB54:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _0205CB72
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
_0205CB72:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r3, #0
	cmp r2, #0
	ble _0205CB8E
	add r1, sp, #0x10
_0205CB80:
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0205CB8E
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, r2
	blt _0205CB80
_0205CB8E:
	cmp r3, r2
	bne _0205CBF6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBA0:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CBF6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBB6:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	ble _0205CBD8
	sub r1, #0x24
	mov r7, #0x5f
	add r5, r4, r1
	lsl r7, r7, #2
_0205CBC8:
	add r0, r5, #0
	bl sub_0205D3AC
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, r0
	blt _0205CBC8
_0205CBD8:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBE6:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CBF6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205CA94

	thumb_func_start sub_0205CBFC
sub_0205CBFC: ; 0x0205CBFC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #5
	beq _0205CC1A
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CC1A:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #5
	bls _0205CC26
	b _0205CD2E
_0205CC26:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CC32: ; jump table
	.short _0205CC3E - _0205CC32 - 2 ; case 0
	.short _0205CC56 - _0205CC32 - 2 ; case 1
	.short _0205CCB2 - _0205CC32 - 2 ; case 2
	.short _0205CCE6 - _0205CC32 - 2 ; case 3
	.short _0205CD08 - _0205CC32 - 2 ; case 4
	.short _0205CD1E - _0205CC32 - 2 ; case 5
_0205CC3E:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CC56:
	mov r0, #4
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0201972C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl sub_0205D274
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _0205CD34 ; =0x0000062F
	bl sub_02005748
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CCB2:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	cmp r0, #0
	bne _0205CD2E
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CD2E
	ldr r0, _0205CD38 ; =0x00000631
	bl sub_02005748
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0xfe
	mvn r1, r1
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CCE6:
	add r0, r1, #4
	ldr r2, [r4, r0]
	add r2, #0x10
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0205CD2E
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0205CD08:
	sub r1, #0x24
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CD1E:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CD2E:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0205CD34: .word 0x0000062F
_0205CD38: .word 0x00000631
	thumb_func_end sub_0205CBFC

	thumb_func_start sub_0205CD3C
sub_0205CD3C: ; 0x0205CD3C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _0205CD54
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CD54:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #6
	bls _0205CD60
	b _0205CE74
_0205CD60:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CD6C: ; jump table
	.short _0205CD7A - _0205CD6C - 2 ; case 0
	.short _0205CD92 - _0205CD6C - 2 ; case 1
	.short _0205CDBC - _0205CD6C - 2 ; case 2
	.short _0205CDE4 - _0205CD6C - 2 ; case 3
	.short _0205CE26 - _0205CD6C - 2 ; case 4
	.short _0205CE44 - _0205CD6C - 2 ; case 5
	.short _0205CE5A - _0205CD6C - 2 ; case 6
_0205CD7A:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CD92:
	sub r1, #0x24
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #3
	bl sub_0205D274
	mov r0, #0x63
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CDBC:
	add r0, r1, #4
	ldr r2, [r4, r0]
	sub r2, #0x20
	str r2, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xfe
	mvn r0, r0
	cmp r1, r0
	bge _0205CE74
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CDE4:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	add r5, r0, #0
	cmp r5, #2
	bne _0205CE14
	mov r1, #0x61
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r3, _0205CE78 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_0205CE14:
	cmp r5, #0
	bne _0205CE74
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE26:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CE74
	mov r0, #0x61
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE44:
	sub r1, #0x24
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE5A:
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CE74:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0205CE78: .word 0x00007FFF
	thumb_func_end sub_0205CD3C

	thumb_func_start sub_0205CE7C
sub_0205CE7C: ; 0x0205CE7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _0205CE94
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CE94:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #6
	bls _0205CEA0
	b _0205CFD0
_0205CEA0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CEAC: ; jump table
	.short _0205CEBA - _0205CEAC - 2 ; case 0
	.short _0205CEF6 - _0205CEAC - 2 ; case 1
	.short _0205CF1A - _0205CEAC - 2 ; case 2
	.short _0205CF36 - _0205CEAC - 2 ; case 3
	.short _0205CF66 - _0205CEAC - 2 ; case 4
	.short _0205CFAA - _0205CEAC - 2 ; case 5
	.short _0205CFC0 - _0205CEAC - 2 ; case 6
_0205CEBA:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #4
	bl sub_0205D274
	mov r1, #0x5b
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #5
	bl sub_0205D274
	mov r0, #0x5f
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CEF6:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _0205CFD4 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF1A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CFD0
	ldr r0, _0205CFD8 ; =0x00000632
	bl sub_02005748
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF36:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	cmp r0, #0
	bne _0205CFD0
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #0x61
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF66:
	add r0, r1, #0
	sub r1, #8
	sub r0, #0x14
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bgt _0205CF94
	bne _0205CF98
	sub r0, #0x28
	add r0, r4, r0
	bl sub_0205D3AC
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	b _0205CF98
_0205CF94:
	sub r1, r1, #1
	str r1, [r4, r0]
_0205CF98:
	cmp r5, #0
	bne _0205CFD0
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CFAA:
	sub r1, #0x14
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CFC0:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CFD0:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0205CFD4: .word 0x00007FFF
_0205CFD8: .word 0x00000632
	thumb_func_end sub_0205CE7C

	thumb_func_start sub_0205CFDC
sub_0205CFDC: ; 0x0205CFDC
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #3
	bhi _0205D032
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205CFF4: ; jump table
	.short _0205CFFC - _0205CFF4 - 2 ; case 0
	.short _0205D00A - _0205CFF4 - 2 ; case 1
	.short _0205D018 - _0205CFF4 - 2 ; case 2
	.short _0205D026 - _0205CFF4 - 2 ; case 3
_0205CFFC:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D040 ; =sub_0205CA94
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D00A:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D044 ; =sub_0205CBFC
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D018:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D048 ; =sub_0205CD3C
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D026:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D04C ; =sub_0205CE7C
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
_0205D032:
	mov r1, #0x62
	lsl r1, r1, #2
	str r5, [r0, r1]
	str r4, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205D03C: .word 0x020ED8B0
_0205D040: .word sub_0205CA94
_0205D044: .word sub_0205CBFC
_0205D048: .word sub_0205CD3C
_0205D04C: .word sub_0205CE7C
	thumb_func_end sub_0205CFDC

	thumb_func_start sub_0205D050
sub_0205D050: ; 0x0205D050
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x63
	add r6, r2, #0
	lsl r1, r1, #2
	mov r2, #5
	mov r3, #4
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #4
	add r2, r6, #0
	bl sub_0205D094
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D050

	thumb_func_start sub_0205D080
sub_0205D080: ; 0x0205D080
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #4
	bl sub_0205D0AC
	add r0, r4, #0
	bl sub_020067D0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D080

	thumb_func_start sub_0205D094
sub_0205D094: ; 0x0205D094
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205D0B4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205D0D8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D094

	thumb_func_start sub_0205D0AC
sub_0205D0AC: ; 0x0205D0AC
	ldr r3, _0205D0B0 ; =sub_0205D22C
	bx r3
	; .align 2, 0
_0205D0B0: .word sub_0205D22C
	thumb_func_end sub_0205D0AC

	thumb_func_start sub_0205D0B4
sub_0205D0B4: ; 0x0205D0B4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r0, #2
	add r1, #0x30
	mov r2, #4
	bl sub_020095C4
	str r0, [r4, #0]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end sub_0205D0B4

	thumb_func_start sub_0205D0D8
sub_0205D0D8: ; 0x0205D0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r7, r2, #0
	mov r6, #0
	add r4, r5, #0
_0205D0E6:
	mov r0, #2
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r4, #8]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0205D0E6
	ldr r3, _0205D1BC ; =0x020ED8B4
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldrb r2, [r3, r2]
	ldr r0, [r5, #8]
	add r1, #0x18
	bl sub_0205D1C4
	str r0, [r5, #0x20]
	ldr r1, [r5, #0x18]
	mov r6, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _0205D12E
	add r4, r6, #0
_0205D118:
	ldr r0, [r1, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02009F08
	ldr r1, [r5, #0x18]
	add r6, r6, #1
	ldr r0, [r1, #8]
	add r4, r4, #4
	cmp r6, r0
	blt _0205D118
_0205D12E:
	ldr r3, _0205D1C0 ; =0x020ED8B6
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldrb r2, [r3, r2]
	ldr r0, [r5, #0xc]
	add r1, #0x1c
	bl sub_0205D1C4
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x1c]
	mov r6, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _0205D162
	add r4, r6, #0
_0205D14C:
	ldr r0, [r1, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02009F08
	ldr r1, [r5, #0x1c]
	add r6, r6, #1
	ldr r0, [r1, #8]
	add r4, r4, #4
	cmp r6, r0
	blt _0205D14C
_0205D162:
	mov r1, #0
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	bl sub_0205D1C4
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #1
	bl sub_0205D1C4
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	bl sub_0200A41C
	ldr r0, [r5, #0x1c]
	bl sub_0200A684
	mov r2, #0
	mov r1, #4
	str r2, [sp]
	mov r0, #0xb1
	add r3, r1, #0
	bl sub_02006FE8
	ldr r1, [r5, #0x10]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0x14]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	mov r1, #4
	bl sub_02009508
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0205D1BC: .word 0x020ED8B4
_0205D1C0: .word 0x020ED8B6
	thumb_func_end sub_0205D0D8

	thumb_func_start sub_0205D1C4
sub_0205D1C4: ; 0x0205D1C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02009F34
	add r1, r0, #0
	mov r0, #4
	bl sub_02018184
	add r4, r0, #0
	mov r2, #0
	mov r0, #0xb1
	add r1, r6, #0
	mov r3, #4
	str r2, [sp]
	bl sub_02006FE8
	add r6, r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02009F40
	add r0, r6, #0
	bl sub_020181C4
	cmp r5, #0
	beq _0205D20E
	add r0, r4, #0
	bl sub_02009FA4
	mov r1, #4
	bl sub_02009CFC
	str r0, [r5, #0]
	add r2, r0, #0
	b _0205D210
_0205D20E:
	mov r2, #0
_0205D210:
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #4
	bl sub_02009C80
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02009F8C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205D1C4

	thumb_func_start sub_0205D22C
sub_0205D22C: ; 0x0205D22C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #4]
	bl sub_020095A8
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0x18]
	bl sub_0200A508
	ldr r0, [r5, #0x1c]
	bl sub_0200A700
	mov r6, #0
	add r4, r5, #0
_0205D254:
	ldr r0, [r4, #0x18]
	bl sub_02009D20
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _0205D254
	mov r4, #0
_0205D264:
	ldr r0, [r5, #8]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0205D264
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D22C

	thumb_func_start sub_0205D274
sub_0205D274: ; 0x0205D274
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x10
	mov r3, #0
_0205D27C:
	strb r3, [r5]
	add r5, r5, #1
	sub r4, r4, #1
	bne _0205D27C
	cmp r2, #5
	bhi _0205D2F2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0205D294: ; jump table
	.short _0205D2A0 - _0205D294 - 2 ; case 0
	.short _0205D2AE - _0205D294 - 2 ; case 1
	.short _0205D2BC - _0205D294 - 2 ; case 2
	.short _0205D2CA - _0205D294 - 2 ; case 3
	.short _0205D2D8 - _0205D294 - 2 ; case 4
	.short _0205D2E6 - _0205D294 - 2 ; case 5
_0205D2A0:
	ldr r2, _0205D2FC ; =sub_0205D3C4
	str r2, [r1, #4]
	ldr r2, _0205D300 ; =sub_0205D404
	str r2, [r1, #8]
	ldr r2, _0205D304 ; =sub_0205D424
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2AE:
	ldr r2, _0205D308 ; =sub_0205D4A4
	str r2, [r1, #4]
	ldr r2, _0205D30C ; =sub_0205D4E0
	str r2, [r1, #8]
	ldr r2, _0205D310 ; =sub_0205D500
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2BC:
	ldr r2, _0205D314 ; =sub_0205D524
	str r2, [r1, #4]
	ldr r2, _0205D318 ; =sub_0205D564
	str r2, [r1, #8]
	ldr r2, _0205D31C ; =sub_0205D584
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2CA:
	ldr r2, _0205D320 ; =sub_0205D5E0
	str r2, [r1, #4]
	ldr r2, _0205D324 ; =sub_0205D624
	str r2, [r1, #8]
	ldr r2, _0205D328 ; =sub_0205D644
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2D8:
	ldr r2, _0205D32C ; =sub_0205D714
	str r2, [r1, #4]
	ldr r2, _0205D330 ; =sub_0205D768
	str r2, [r1, #8]
	ldr r2, _0205D334 ; =sub_0205D788
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2E6:
	ldr r2, _0205D338 ; =sub_0205D844
	str r2, [r1, #4]
	ldr r2, _0205D33C ; =sub_0205D888
	str r2, [r1, #8]
	ldr r2, _0205D340 ; =sub_0205D8A8
	str r2, [r1, #0xc]
_0205D2F2:
	ldr r2, [r1, #4]
	add r0, r0, #4
	blx r2
	pop {r3, r4, r5, pc}
	nop
_0205D2FC: .word sub_0205D3C4
_0205D300: .word sub_0205D404
_0205D304: .word sub_0205D424
_0205D308: .word sub_0205D4A4
_0205D30C: .word sub_0205D4E0
_0205D310: .word sub_0205D500
_0205D314: .word sub_0205D524
_0205D318: .word sub_0205D564
_0205D31C: .word sub_0205D584
_0205D320: .word sub_0205D5E0
_0205D324: .word sub_0205D624
_0205D328: .word sub_0205D644
_0205D32C: .word sub_0205D714
_0205D330: .word sub_0205D768
_0205D334: .word sub_0205D788
_0205D338: .word sub_0205D844
_0205D33C: .word sub_0205D888
_0205D340: .word sub_0205D8A8
	thumb_func_end sub_0205D274

	thumb_func_start sub_0205D344
sub_0205D344: ; 0x0205D344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r7, sp, #0
	add r6, r3, #0
	mov r0, #0
	add r4, r1, #0
	add r3, r7, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r3, sp, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r0, #0]
	mov r0, #0x24
	mul r0, r4
	add r0, r1, r0
	str r0, [sp, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r2, sp, #0x14
	str r0, [r3, #0]
	ldr r3, _0205D3A8 ; =0x020ED8B8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	add r0, r7, #0
	bl sub_02021AA0
	add r4, r0, #0
	bne _0205D3A0
	bl sub_02022974
_0205D3A0:
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205D3A8: .word 0x020ED8B8
	thumb_func_end sub_0205D344

	thumb_func_start sub_0205D3AC
sub_0205D3AC: ; 0x0205D3AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	blx r1
	mov r1, #0x10
	mov r0, #0
_0205D3B8:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0205D3B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D3AC

	thumb_func_start sub_0205D3C4
sub_0205D3C4: ; 0x0205D3C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D3D8:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D3D8
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D3C4

	thumb_func_start sub_0205D404
sub_0205D404: ; 0x0205D404
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D420
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D420:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D404

	thumb_func_start sub_0205D424
sub_0205D424: ; 0x0205D424
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [r0, #0]
	mov r2, #2
	ldr r0, [r4, #0x10]
	lsl r2, r2, #0xe
	cmp r0, r2
	bgt _0205D49A
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #0
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	lsr r2, r2, #4
	str r0, [r5, #0]
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	asr r0, r0, #4
	lsl r5, r0, #2
	ldr r0, _0205D4A0 ; =0x020F983C
	ldrsh r5, [r0, r5]
	asr r0, r5, #0x1f
	lsr r6, r5, #0x10
	lsl r0, r0, #0x10
	orr r0, r6
	lsl r6, r5, #0x10
	mov r5, #0
	add r2, r6, r2
	adc r0, r5
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	sub r0, r1, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r3, #0
	bl sub_02021C50
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #1
	bl sub_02021E2C
	mov r0, #2
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _0205D494
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_0205D494:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0205D49A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0205D4A0: .word 0x020F983C
	thumb_func_end sub_0205D424

	thumb_func_start sub_0205D4A4
sub_0205D4A4: ; 0x0205D4A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D4B8:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D4B8
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #6
	lsl r0, r0, #0x10
	mov r1, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp]
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205D4A4

	thumb_func_start sub_0205D4E0
sub_0205D4E0: ; 0x0205D4E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D4FC
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D4FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D4E0

	thumb_func_start sub_0205D500
sub_0205D500: ; 0x0205D500
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #7
	bge _0205D51E
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_0205D51E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D500

	thumb_func_start sub_0205D524
sub_0205D524: ; 0x0205D524
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D538:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D538
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D524

	thumb_func_start sub_0205D564
sub_0205D564: ; 0x0205D564
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D580
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D580:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D564

	thumb_func_start sub_0205D584
sub_0205D584: ; 0x0205D584
	push {r4, lr}
	ldr r4, [r0, #0]
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r0, #0
	bne _0205D5C0
	mov r0, #6
	lsl r0, r0, #0x12
	cmp r1, r0
	blt _0205D5D6
	ldr r0, _0205D5DC ; =0xFFFE0000
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D5D6
_0205D5C0:
	mov r0, #0x45
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _0205D5D6
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	mov r0, #0
	pop {r4, pc}
_0205D5D6:
	mov r0, #1
	pop {r4, pc}
	nop
_0205D5DC: .word 0xFFFE0000
	thumb_func_end sub_0205D584

	thumb_func_start sub_0205D5E0
sub_0205D5E0: ; 0x0205D5E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x18
	mov r1, #0
_0205D5F4:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D5F4
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205D5E0

	thumb_func_start sub_0205D624
sub_0205D624: ; 0x0205D624
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D640
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D640:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D624

	thumb_func_start sub_0205D644
sub_0205D644: ; 0x0205D644
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	mov r5, #1
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bhi _0205D708
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205D65C: ; jump table
	.short _0205D666 - _0205D65C - 2 ; case 0
	.short _0205D684 - _0205D65C - 2 ; case 1
	.short _0205D6B2 - _0205D65C - 2 ; case 2
	.short _0205D6DE - _0205D65C - 2 ; case 3
	.short _0205D706 - _0205D65C - 2 ; case 4
_0205D666:
	ldr r1, [r4, #0x14]
	ldr r0, _0205D70C ; =0x00000333
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	ldr r1, [r4, #0x14]
	lsl r0, r5, #0xd
	cmp r1, r0
	blt _0205D708
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D684:
	ldr r1, [r4, #4]
	ldr r0, _0205D710 ; =0xFFFE0000
	cmp r1, r0
	ble _0205D6A4
	lsl r0, r5, #0xf
	sub r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	b _0205D708
_0205D6A4:
	mov r0, #6
	lsl r0, r0, #0x12
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D6B2:
	ldr r1, [r4, #4]
	lsl r0, r5, #0xf
	sub r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	mov r0, #0x4b
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _0205D708
	ldr r0, [r4, #0x10]
	mov r5, #2
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D6DE:
	mov r1, #3
	ldr r2, [r4, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	ble _0205D700
	lsl r0, r5, #0xf
	sub r0, r2, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	b _0205D708
_0205D700:
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D706:
	mov r5, #0
_0205D708:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205D70C: .word 0x00000333
_0205D710: .word 0xFFFE0000
	thumb_func_end sub_0205D644

	thumb_func_start sub_0205D714
sub_0205D714: ; 0x0205D714
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x18
	mov r1, #0
_0205D728:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D728
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D714

	thumb_func_start sub_0205D768
sub_0205D768: ; 0x0205D768
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D784
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D784:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D768

	thumb_func_start sub_0205D788
sub_0205D788: ; 0x0205D788
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, [r0, #0]
	mov r5, #1
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bhi _0205D834
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205D7A2: ; jump table
	.short _0205D7AA - _0205D7A2 - 2 ; case 0
	.short _0205D7BA - _0205D7A2 - 2 ; case 1
	.short _0205D816 - _0205D7A2 - 2 ; case 2
	.short _0205D832 - _0205D7A2 - 2 ; case 3
_0205D7AA:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D7BA:
	ldr r2, [r4, #0x14]
	lsl r1, r5, #0xf
	cmp r2, r1
	bgt _0205D810
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r7, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x14]
	ldr r6, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0205D83C ; =0x020F983C
	ldrsh r0, [r0, r1]
	asr r3, r0, #0x1f
	lsr r1, r0, #0xf
	lsl r3, r3, #0x11
	orr r3, r1
	lsl r1, r0, #0x11
	lsl r0, r5, #0xb
	add r0, r1, r0
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	sub r0, r6, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl sub_02021C50
	ldr r0, [r4, #0x14]
	lsl r1, r5, #0xc
	add r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	b _0205D834
_0205D810:
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D816:
	ldr r1, [r4, #0x14]
	ldr r0, _0205D840 ; =0x00000666
	sub r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bgt _0205D834
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D832:
	mov r5, #0
_0205D834:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0205D83C: .word 0x020F983C
_0205D840: .word 0x00000666
	thumb_func_end sub_0205D788

	thumb_func_start sub_0205D844
sub_0205D844: ; 0x0205D844
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D858:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D858
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #6
	lsl r0, r0, #0x10
	mov r1, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp]
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D844

	thumb_func_start sub_0205D888
sub_0205D888: ; 0x0205D888
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D8A4
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D8A4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D888

	thumb_func_start sub_0205D8A8
sub_0205D8A8: ; 0x0205D8A8
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #8
	bge _0205D8C6
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_0205D8C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D8A8

	thumb_func_start sub_0205D8CC
sub_0205D8CC: ; 0x0205D8CC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _0205D8D8
	bl sub_0201D710
_0205D8D8:
	mov r1, #0x1a
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #4
	bl sub_02002E7C
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #4
	bl sub_02002E98
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D8CC

	thumb_func_start sub_0205D8F4
sub_0205D8F4: ; 0x0205D8F4
	push {lr}
	sub sp, #0x14
	cmp r2, #3
	bne _0205D91C
	mov r2, #0x13
	str r2, [sp]
	mov r2, #0x1b
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0xc
	str r2, [sp, #0xc]
	ldr r2, _0205D940 ; =0x00000237
	mov r3, #2
	str r2, [sp, #0x10]
	mov r2, #3
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
_0205D91C:
	mov r2, #0x13
	str r2, [sp]
	mov r2, #0x1b
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0xc
	str r2, [sp, #0xc]
	mov r2, #0x65
	lsl r2, r2, #2
	str r2, [sp, #0x10]
	mov r2, #7
	mov r3, #2
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	nop
_0205D940: .word 0x00000237
	thumb_func_end sub_0205D8F4

	thumb_func_start sub_0205D944
sub_0205D944: ; 0x0205D944
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0201C290
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0205D984 ; =0x000003E2
	add r1, r6, #0
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r5, #0
	bl sub_0205D988
	ldr r2, _0205D984 ; =0x000003E2
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205D984: .word 0x000003E2
	thumb_func_end sub_0205D944

	thumb_func_start sub_0205D988
sub_0205D988: ; 0x0205D988
	ldr r3, _0205D990 ; =sub_0201ADA4
	mov r1, #0xf
	bx r3
	nop
_0205D990: .word sub_0201ADA4
	thumb_func_end sub_0205D988

	thumb_func_start sub_0205D994
sub_0205D994: ; 0x0205D994
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	add r0, r6, #0
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0205D994

	thumb_func_start sub_0205D9CC
sub_0205D9CC: ; 0x0205D9CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02002AC8
	ldr r0, [sp, #0x24]
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205D9CC

	thumb_func_start sub_0205DA04
sub_0205DA04: ; 0x0205DA04
	push {r3, lr}
	bl sub_0201D724
	cmp r0, #0
	bne _0205DA12
	mov r0, #1
	b _0205DA14
_0205DA12:
	mov r0, #0
_0205DA14:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205DA04

	thumb_func_start sub_0205DA1C
sub_0205DA1C: ; 0x0205DA1C
	push {r4, r5, lr}
	sub sp, #0x14
	cmp r2, #1
	bhi _0205DA2A
	mov r4, #9
	mov r5, #0x14
	b _0205DA2E
_0205DA2A:
	mov r4, #2
	mov r5, #0x1b
_0205DA2E:
	cmp r3, #3
	bne _0205DA56
	mov r2, #0x13
	str r2, [sp]
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #9
	str r2, [sp, #0xc]
	ldr r2, _0205DA7C ; =0x00000237
	lsl r3, r4, #0x18
	str r2, [sp, #0x10]
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
_0205DA56:
	mov r2, #0x13
	str r2, [sp]
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #9
	str r2, [sp, #0xc]
	mov r2, #0x65
	lsl r2, r2, #2
	lsl r3, r4, #0x18
	str r2, [sp, #0x10]
	mov r2, #7
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0205DA7C: .word 0x00000237
	thumb_func_end sub_0205DA1C

	thumb_func_start sub_0205DA80
sub_0205DA80: ; 0x0205DA80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _0205DAC4 ; =0x000002A3
	mov r3, #9
	bl sub_0200E2A4
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r2, _0205DAC4 ; =0x000002A3
	add r0, r5, #0
	mov r1, #0
	mov r3, #9
	bl sub_0200E69C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0205DAC4: .word 0x000002A3
	thumb_func_end sub_0205DA80

	thumb_func_start sub_0205DAC8
sub_0205DAC8: ; 0x0205DAC8
	cmp r0, #2
	bne _0205DAD0
	mov r0, #1
	bx lr
_0205DAD0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAC8

	thumb_func_start sub_0205DAD4
sub_0205DAD4: ; 0x0205DAD4
	cmp r0, #3
	bne _0205DADC
	mov r0, #1
	bx lr
_0205DADC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAD4

	thumb_func_start sub_0205DAE0
sub_0205DAE0: ; 0x0205DAE0
	cmp r0, #0x80
	bne _0205DAE8
	mov r0, #1
	bx lr
_0205DAE8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAE0

	thumb_func_start sub_0205DAEC
sub_0205DAEC: ; 0x0205DAEC
	cmp r0, #0x69
	bne _0205DAF4
	mov r0, #1
	bx lr
_0205DAF4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAEC

	thumb_func_start sub_0205DAF8
sub_0205DAF8: ; 0x0205DAF8
	cmp r0, #0x62
	bne _0205DB00
	mov r0, #1
	bx lr
_0205DB00:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAF8

	thumb_func_start sub_0205DB04
sub_0205DB04: ; 0x0205DB04
	cmp r0, #0x63
	bne _0205DB0C
	mov r0, #1
	bx lr
_0205DB0C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB04

	thumb_func_start sub_0205DB10
sub_0205DB10: ; 0x0205DB10
	cmp r0, #0x64
	bne _0205DB18
	mov r0, #1
	bx lr
_0205DB18:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB10

	thumb_func_start sub_0205DB1C
sub_0205DB1C: ; 0x0205DB1C
	cmp r0, #0x65
	bne _0205DB24
	mov r0, #1
	bx lr
_0205DB24:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB1C

	thumb_func_start sub_0205DB28
sub_0205DB28: ; 0x0205DB28
	cmp r0, #0x6c
	bne _0205DB30
	mov r0, #1
	bx lr
_0205DB30:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB28

	thumb_func_start sub_0205DB34
sub_0205DB34: ; 0x0205DB34
	cmp r0, #0x6d
	bne _0205DB3C
	mov r0, #1
	bx lr
_0205DB3C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB34

	thumb_func_start sub_0205DB40
sub_0205DB40: ; 0x0205DB40
	cmp r0, #0x6e
	bne _0205DB48
	mov r0, #1
	bx lr
_0205DB48:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB40

	thumb_func_start sub_0205DB4C
sub_0205DB4C: ; 0x0205DB4C
	cmp r0, #0x6f
	bne _0205DB54
	mov r0, #1
	bx lr
_0205DB54:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB4C

	thumb_func_start sub_0205DB58
sub_0205DB58: ; 0x0205DB58
	ldr r1, _0205DB68 ; =0x020ED8C4
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	bne _0205DB64
	mov r0, #0
_0205DB64:
	bx lr
	nop
_0205DB68: .word 0x020ED8C4
	thumb_func_end sub_0205DB58

	thumb_func_start sub_0205DB6C
sub_0205DB6C: ; 0x0205DB6C
	cmp r0, #0x21
	bne _0205DB74
	mov r0, #1
	bx lr
_0205DB74:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB6C

	thumb_func_start sub_0205DB78
sub_0205DB78: ; 0x0205DB78
	cmp r0, #0x17
	bne _0205DB80
	mov r0, #1
	bx lr
_0205DB80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB78

	thumb_func_start sub_0205DB84
sub_0205DB84: ; 0x0205DB84
	cmp r0, #0x3a
	bne _0205DB8C
	mov r0, #1
	bx lr
_0205DB8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB84

	thumb_func_start sub_0205DB90
sub_0205DB90: ; 0x0205DB90
	cmp r0, #0x3b
	bne _0205DB98
	mov r0, #1
	bx lr
_0205DB98:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB90

	thumb_func_start sub_0205DB9C
sub_0205DB9C: ; 0x0205DB9C
	cmp r0, #0x39
	bne _0205DBA4
	mov r0, #1
	bx lr
_0205DBA4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB9C

	thumb_func_start sub_0205DBA8
sub_0205DBA8: ; 0x0205DBA8
	cmp r0, #0x38
	bne _0205DBB0
	mov r0, #1
	bx lr
_0205DBB0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBA8

	thumb_func_start sub_0205DBB4
sub_0205DBB4: ; 0x0205DBB4
	cmp r0, #0x5a
	bne _0205DBBC
	mov r0, #1
	bx lr
_0205DBBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBB4

	thumb_func_start sub_0205DBC0
sub_0205DBC0: ; 0x0205DBC0
	cmp r0, #0x5b
	bne _0205DBC8
	mov r0, #1
	bx lr
_0205DBC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBC0

	thumb_func_start sub_0205DBCC
sub_0205DBCC: ; 0x0205DBCC
	cmp r0, #0x5c
	bne _0205DBD4
	mov r0, #1
	bx lr
_0205DBD4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBCC

	thumb_func_start sub_0205DBD8
sub_0205DBD8: ; 0x0205DBD8
	cmp r0, #0x5d
	bne _0205DBE0
	mov r0, #1
	bx lr
_0205DBE0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBD8

	thumb_func_start sub_0205DBE4
sub_0205DBE4: ; 0x0205DBE4
	cmp r0, #0x83
	bne _0205DBEC
	mov r0, #1
	bx lr
_0205DBEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBE4

	thumb_func_start sub_0205DBF0
sub_0205DBF0: ; 0x0205DBF0
	cmp r0, #0x85
	bne _0205DBF8
	mov r0, #1
	bx lr
_0205DBF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBF0

	thumb_func_start sub_0205DBFC
sub_0205DBFC: ; 0x0205DBFC
	cmp r0, #0x56
	bne _0205DC04
	mov r0, #1
	bx lr
_0205DC04:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBFC

	thumb_func_start sub_0205DC08
sub_0205DC08: ; 0x0205DC08
	cmp r0, #0x57
	bne _0205DC10
	mov r0, #1
	bx lr
_0205DC10:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC08

	thumb_func_start sub_0205DC14
sub_0205DC14: ; 0x0205DC14
	cmp r0, #0x58
	bne _0205DC1C
	mov r0, #1
	bx lr
_0205DC1C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC14

	thumb_func_start sub_0205DC20
sub_0205DC20: ; 0x0205DC20
	cmp r0, #0x59
	bne _0205DC28
	mov r0, #1
	bx lr
_0205DC28:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC20

	thumb_func_start sub_0205DC2C
sub_0205DC2C: ; 0x0205DC2C
	cmp r0, #0x6a
	bne _0205DC34
	mov r0, #1
	bx lr
_0205DC34:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC2C

	thumb_func_start sub_0205DC38
sub_0205DC38: ; 0x0205DC38
	cmp r0, #0x6b
	bne _0205DC40
	mov r0, #1
	bx lr
_0205DC40:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC38

	thumb_func_start sub_0205DC44
sub_0205DC44: ; 0x0205DC44
	cmp r0, #0x5e
	bne _0205DC4C
	mov r0, #1
	bx lr
_0205DC4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC44

	thumb_func_start sub_0205DC50
sub_0205DC50: ; 0x0205DC50
	cmp r0, #0x5f
	bne _0205DC58
	mov r0, #1
	bx lr
_0205DC58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC50

	thumb_func_start sub_0205DC5C
sub_0205DC5C: ; 0x0205DC5C
	cmp r0, #0x20
	bne _0205DC64
	mov r0, #1
	bx lr
_0205DC64:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC5C

	thumb_func_start sub_0205DC68
sub_0205DC68: ; 0x0205DC68
	cmp r0, #0x4b
	bne _0205DC70
	mov r0, #1
	bx lr
_0205DC70:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC68

	thumb_func_start sub_0205DC74
sub_0205DC74: ; 0x0205DC74
	cmp r0, #0x4c
	bne _0205DC7C
	mov r0, #1
	bx lr
_0205DC7C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC74

	thumb_func_start sub_0205DC80
sub_0205DC80: ; 0x0205DC80
	cmp r0, #0xe0
	bne _0205DC88
	mov r0, #1
	bx lr
_0205DC88:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC80

	thumb_func_start sub_0205DC8C
sub_0205DC8C: ; 0x0205DC8C
	cmp r0, #0xea
	bne _0205DC94
	mov r0, #1
	bx lr
_0205DC94:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC8C

	thumb_func_start sub_0205DC98
sub_0205DC98: ; 0x0205DC98
	cmp r0, #0xe1
	bne _0205DCA0
	mov r0, #1
	bx lr
_0205DCA0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC98

	thumb_func_start sub_0205DCA4
sub_0205DCA4: ; 0x0205DCA4
	cmp r0, #0xe2
	bne _0205DCAC
	mov r0, #1
	bx lr
_0205DCAC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCA4

	thumb_func_start sub_0205DCB0
sub_0205DCB0: ; 0x0205DCB0
	cmp r0, #0xe4
	bne _0205DCB8
	mov r0, #1
	bx lr
_0205DCB8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCB0

	thumb_func_start sub_0205DCBC
sub_0205DCBC: ; 0x0205DCBC
	cmp r0, #0xe5
	bne _0205DCC4
	mov r0, #1
	bx lr
_0205DCC4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCBC

	thumb_func_start sub_0205DCC8
sub_0205DCC8: ; 0x0205DCC8
	cmp r0, #0xeb
	bne _0205DCD0
	mov r0, #1
	bx lr
_0205DCD0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCC8

	thumb_func_start sub_0205DCD4
sub_0205DCD4: ; 0x0205DCD4
	cmp r0, #0xec
	bne _0205DCDC
	mov r0, #1
	bx lr
_0205DCDC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCD4

	thumb_func_start sub_0205DCE0
sub_0205DCE0: ; 0x0205DCE0
	cmp r0, #0xa4
	beq _0205DCE8
	cmp r0, #0xa5
	bne _0205DCEC
_0205DCE8:
	mov r0, #1
	bx lr
_0205DCEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCE0

	thumb_func_start sub_0205DCF0
sub_0205DCF0: ; 0x0205DCF0
	cmp r0, #0xa5
	bne _0205DCF8
	mov r0, #1
	bx lr
_0205DCF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCF0

	thumb_func_start sub_0205DCFC
sub_0205DCFC: ; 0x0205DCFC
	cmp r0, #0xa6
	beq _0205DD04
	cmp r0, #0xa7
	bne _0205DD08
_0205DD04:
	mov r0, #1
	bx lr
_0205DD08:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCFC

	thumb_func_start sub_0205DD0C
sub_0205DD0C: ; 0x0205DD0C
	cmp r0, #0xa7
	bne _0205DD14
	mov r0, #1
	bx lr
_0205DD14:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD0C

	thumb_func_start sub_0205DD18
sub_0205DD18: ; 0x0205DD18
	add r0, #0x5f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #7
	bhi _0205DD32
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x87
	tst r0, r2
	beq _0205DD32
	add r3, r1, #0
_0205DD32:
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DD18

	thumb_func_start sub_0205DD38
sub_0205DD38: ; 0x0205DD38
	cmp r0, #0xa8
	bne _0205DD40
	mov r0, #1
	bx lr
_0205DD40:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD38

	thumb_func_start sub_0205DD44
sub_0205DD44: ; 0x0205DD44
	cmp r0, #0xa1
	bne _0205DD4C
	mov r0, #1
	bx lr
_0205DD4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD44

	thumb_func_start sub_0205DD50
sub_0205DD50: ; 0x0205DD50
	cmp r0, #0xa2
	bne _0205DD58
	mov r0, #1
	bx lr
_0205DD58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD50

	thumb_func_start sub_0205DD5C
sub_0205DD5C: ; 0x0205DD5C
	cmp r0, #0xa3
	bne _0205DD64
	mov r0, #1
	bx lr
_0205DD64:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD5C

	thumb_func_start sub_0205DD68
sub_0205DD68: ; 0x0205DD68
	cmp r0, #0xd9
	beq _0205DD70
	cmp r0, #0xda
	bne _0205DD74
_0205DD70:
	mov r0, #1
	bx lr
_0205DD74:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD68

	thumb_func_start sub_0205DD78
sub_0205DD78: ; 0x0205DD78
	cmp r0, #0xd9
	bne _0205DD80
	mov r0, #1
	bx lr
_0205DD80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD78

	thumb_func_start sub_0205DD84
sub_0205DD84: ; 0x0205DD84
	cmp r0, #0xda
	bne _0205DD8C
	mov r0, #1
	bx lr
_0205DD8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD84

	thumb_func_start sub_0205DD90
sub_0205DD90: ; 0x0205DD90
	cmp r0, #0xd7
	bne _0205DD98
	mov r0, #1
	bx lr
_0205DD98:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD90

	thumb_func_start sub_0205DD9C
sub_0205DD9C: ; 0x0205DD9C
	cmp r0, #0xd8
	bne _0205DDA4
	mov r0, #1
	bx lr
_0205DDA4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD9C

	thumb_func_start sub_0205DDA8
sub_0205DDA8: ; 0x0205DDA8
	cmp r0, #8
	bne _0205DDB0
	mov r0, #1
	bx lr
_0205DDB0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDA8

	thumb_func_start sub_0205DDB4
sub_0205DDB4: ; 0x0205DDB4
	cmp r0, #0x13
	bne _0205DDBC
	mov r0, #1
	bx lr
_0205DDBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDB4

	thumb_func_start sub_0205DDC0
sub_0205DDC0: ; 0x0205DDC0
	cmp r0, #0xdb
	bne _0205DDC8
	mov r0, #1
	bx lr
_0205DDC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDC0

	thumb_func_start sub_0205DDCC
sub_0205DDCC: ; 0x0205DDCC
	add r0, #0xce
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x17
	bhi _0205DDE6
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DDEC ; =0x0080000D
	tst r0, r2
	beq _0205DDE6
	add r3, r1, #0
_0205DDE6:
	add r0, r3, #0
	bx lr
	nop
_0205DDEC: .word 0x0080000D
	thumb_func_end sub_0205DDCC

	thumb_func_start sub_0205DDF0
sub_0205DDF0: ; 0x0205DDF0
	add r0, #0xcd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x16
	bhi _0205DE0A
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE10 ; =0x00400019
	tst r0, r2
	beq _0205DE0A
	add r3, r1, #0
_0205DE0A:
	add r0, r3, #0
	bx lr
	nop
_0205DE10: .word 0x00400019
	thumb_func_end sub_0205DDF0

	thumb_func_start sub_0205DE14
sub_0205DE14: ; 0x0205DE14
	add r0, #0xcf
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x19
	bhi _0205DE2E
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE34 ; =0x02000051
	tst r0, r2
	beq _0205DE2E
	add r3, r1, #0
_0205DE2E:
	add r0, r3, #0
	bx lr
	nop
_0205DE34: .word 0x02000051
	thumb_func_end sub_0205DE14

	thumb_func_start sub_0205DE38
sub_0205DE38: ; 0x0205DE38
	add r0, #0xd0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x1a
	bhi _0205DE52
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE58 ; =0x04000051
	tst r0, r2
	beq _0205DE52
	add r3, r1, #0
_0205DE52:
	add r0, r3, #0
	bx lr
	nop
_0205DE58: .word 0x04000051
	thumb_func_end sub_0205DE38

	thumb_func_start sub_0205DE5C
sub_0205DE5C: ; 0x0205DE5C
	cmp r0, #0x16
	beq _0205DE64
	cmp r0, #0x1d
	bne _0205DE68
_0205DE64:
	mov r0, #1
	bx lr
_0205DE68:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DE5C

	thumb_func_start sub_0205DE6C
sub_0205DE6C: ; 0x0205DE6C
	ldr r1, _0205DE80 ; =0x020ED8C4
	ldrb r1, [r1, r0]
	mov r0, #2
	tst r0, r1
	beq _0205DE7A
	mov r0, #1
	bx lr
_0205DE7A:
	mov r0, #0
	bx lr
	nop
_0205DE80: .word 0x020ED8C4
	thumb_func_end sub_0205DE6C

	thumb_func_start sub_0205DE84
sub_0205DE84: ; 0x0205DE84
	cmp r0, #0x86
	bne _0205DE8C
	mov r0, #1
	bx lr
_0205DE8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DE84

	thumb_func_start sub_0205DE90
sub_0205DE90: ; 0x0205DE90
	add r0, #0xf0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x1c
	bhi _0205DEAA
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DEB0 ; =0x10002041
	tst r0, r2
	beq _0205DEAA
	add r3, r1, #0
_0205DEAA:
	add r0, r3, #0
	bx lr
	nop
_0205DEB0: .word 0x10002041
	thumb_func_end sub_0205DE90

	thumb_func_start sub_0205DEB4
sub_0205DEB4: ; 0x0205DEB4
	cmp r0, #0x40
	bne _0205DEBC
	mov r0, #1
	bx lr
_0205DEBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEB4

	thumb_func_start sub_0205DEC0
sub_0205DEC0: ; 0x0205DEC0
	cmp r0, #0x41
	bne _0205DEC8
	mov r0, #1
	bx lr
_0205DEC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEC0

	thumb_func_start sub_0205DECC
sub_0205DECC: ; 0x0205DECC
	cmp r0, #0x42
	bne _0205DED4
	mov r0, #1
	bx lr
_0205DED4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DECC

	thumb_func_start sub_0205DED8
sub_0205DED8: ; 0x0205DED8
	cmp r0, #0x43
	bne _0205DEE0
	mov r0, #1
	bx lr
_0205DEE0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DED8

	thumb_func_start sub_0205DEE4
sub_0205DEE4: ; 0x0205DEE4
	cmp r0, #0x67
	bne _0205DEEC
	mov r0, #1
	bx lr
_0205DEEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEE4

	thumb_func_start sub_0205DEF0
sub_0205DEF0: ; 0x0205DEF0
	cmp r0, #0x70
	bne _0205DEF8
	mov r0, #1
	bx lr
_0205DEF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEF0

	thumb_func_start sub_0205DEFC
sub_0205DEFC: ; 0x0205DEFC
	add r0, #0x8f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	bhi _0205DF0A
	mov r0, #1
	bx lr
_0205DF0A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DEFC

	thumb_func_start sub_0205DF10
sub_0205DF10: ; 0x0205DF10
	add r0, #0x8d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #9
	bhi _0205DF2A
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DF30 ; =0x00000221
	tst r0, r2
	beq _0205DF2A
	add r3, r1, #0
_0205DF2A:
	add r0, r3, #0
	bx lr
	nop
_0205DF30: .word 0x00000221
	thumb_func_end sub_0205DF10

	thumb_func_start sub_0205DF34
sub_0205DF34: ; 0x0205DF34
	add r0, #0x8c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #9
	bhi _0205DF4E
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DF54 ; =0x00000221
	tst r0, r2
	beq _0205DF4E
	add r3, r1, #0
_0205DF4E:
	add r0, r3, #0
	bx lr
	nop
_0205DF54: .word 0x00000221
	thumb_func_end sub_0205DF34

	thumb_func_start sub_0205DF58
sub_0205DF58: ; 0x0205DF58
	cmp r0, #0x75
	bne _0205DF60
	mov r0, #1
	bx lr
_0205DF60:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF58

	thumb_func_start sub_0205DF64
sub_0205DF64: ; 0x0205DF64
	add r0, #0x8a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0205DF72
	mov r0, #1
	bx lr
_0205DF72:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DF64

	thumb_func_start sub_0205DF78
sub_0205DF78: ; 0x0205DF78
	add r0, #0x86
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0205DF86
	mov r0, #1
	bx lr
_0205DF86:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DF78

	thumb_func_start sub_0205DF8C
sub_0205DF8C: ; 0x0205DF8C
	cmp r0, #0xff
	bne _0205DF94
	mov r0, #1
	bx lr
_0205DF94:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF8C

	thumb_func_start sub_0205DF98
sub_0205DF98: ; 0x0205DF98
	mov r0, #0xff
	bx lr
	thumb_func_end sub_0205DF98

	thumb_func_start sub_0205DF9C
sub_0205DF9C: ; 0x0205DF9C
	cmp r0, #0x2c
	beq _0205DFA4
	cmp r0, #0x1d
	bne _0205DFA8
_0205DFA4:
	mov r0, #1
	bx lr
_0205DFA8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF9C

	thumb_func_start sub_0205DFAC
sub_0205DFAC: ; 0x0205DFAC
	cmp r0, #0xa9
	bne _0205DFB4
	mov r0, #1
	bx lr
_0205DFB4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DFAC

	thumb_func_start sub_0205DFB8
sub_0205DFB8: ; 0x0205DFB8
	cmp r0, #0x2d
	bne _0205DFC0
	mov r0, #1
	bx lr
_0205DFC0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DFB8

	thumb_func_start sub_0205DFC4
sub_0205DFC4: ; 0x0205DFC4
	push {r4, lr}
	mov r1, #0xa
	add r4, r0, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205DFD6
	mov r0, #1
	pop {r4, pc}
_0205DFD6:
	add r0, r4, #0
	mov r1, #0x64
	bl sub_020E2178
	cmp r0, #0
	bne _0205DFE6
	mov r0, #2
	pop {r4, pc}
_0205DFE6:
	mov r1, #0xfa
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020E2178
	cmp r0, #0
	bne _0205DFF8
	mov r0, #3
	pop {r4, pc}
_0205DFF8:
	ldr r1, _0205E04C ; =0x00002710
	add r0, r4, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205E008
	mov r0, #4
	pop {r4, pc}
_0205E008:
	ldr r1, _0205E050 ; =0x000186A0
	add r0, r4, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205E018
	mov r0, #5
	pop {r4, pc}
_0205E018:
	ldr r1, _0205E054 ; =0x000F4240
	add r0, r4, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205E028
	mov r0, #6
	pop {r4, pc}
_0205E028:
	ldr r1, _0205E058 ; =0x00989680
	add r0, r4, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205E038
	mov r0, #7
	pop {r4, pc}
_0205E038:
	ldr r1, _0205E05C ; =0x05F5E100
	add r0, r4, #0
	bl sub_020E2178
	cmp r0, #0
	bne _0205E048
	mov r0, #8
	pop {r4, pc}
_0205E048:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0205E04C: .word 0x00002710
_0205E050: .word 0x000186A0
_0205E054: .word 0x000F4240
_0205E058: .word 0x00989680
_0205E05C: .word 0x05F5E100
	thumb_func_end sub_0205DFC4

	thumb_func_start sub_0205E060
sub_0205E060: ; 0x0205E060
	mov r1, #0x52
	lsl r1, r1, #2
	cmp r0, r1
	blo _0205E072
	add r1, #0x63
	cmp r0, r1
	bhi _0205E072
	mov r0, #1
	bx lr
_0205E072:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205E060

	thumb_func_start sub_0205E078
sub_0205E078: ; 0x0205E078
	cmp r0, #0xf
	bhi _0205E080
	mov r0, #6
	bx lr
_0205E080:
	cmp r0, #0x1e
	bhi _0205E088
	mov r0, #7
	bx lr
_0205E088:
	cmp r0, #0x2d
	bhi _0205E090
	mov r0, #8
	bx lr
_0205E090:
	cmp r0, #0x3c
	bhi _0205E098
	mov r0, #9
	bx lr
_0205E098:
	cmp r0, #0x50
	bhi _0205E0A0
	mov r0, #0xa
	bx lr
_0205E0A0:
	cmp r0, #0x64
	bhi _0205E0A8
	mov r0, #0xb
	bx lr
_0205E0A8:
	cmp r0, #0x78
	bhi _0205E0B0
	mov r0, #0xc
	bx lr
_0205E0B0:
	cmp r0, #0x8c
	bhi _0205E0B8
	mov r0, #0xd
	bx lr
_0205E0B8:
	cmp r0, #0xa0
	bhi _0205E0C0
	mov r0, #0xe
	bx lr
_0205E0C0:
	cmp r0, #0xb4
	bhi _0205E0C8
	mov r0, #0xf
	bx lr
_0205E0C8:
	cmp r0, #0xc8
	bhi _0205E0D0
	mov r0, #0x10
	bx lr
_0205E0D0:
	cmp r0, #0xd1
	bhi _0205E0D8
	mov r0, #0x11
	bx lr
_0205E0D8:
	cmp r1, #0
	beq _0205E0E0
	mov r0, #4
	bx lr
_0205E0E0:
	mov r0, #5
	bx lr
	thumb_func_end sub_0205E078

	thumb_func_start sub_0205E0E4
sub_0205E0E4: ; 0x0205E0E4
	cmp r0, #0x27
	bhi _0205E0EC
	mov r0, #0x16
	bx lr
_0205E0EC:
	cmp r0, #0x3b
	bhi _0205E0F4
	mov r0, #0x17
	bx lr
_0205E0F4:
	cmp r0, #0x59
	bhi _0205E0FC
	mov r0, #0x18
	bx lr
_0205E0FC:
	cmp r0, #0x77
	bhi _0205E104
	mov r0, #0x19
	bx lr
_0205E104:
	cmp r0, #0x95
	bhi _0205E10C
	mov r0, #0x1a
	bx lr
_0205E10C:
	cmp r0, #0xbd
	bhi _0205E114
	mov r0, #0x1b
	bx lr
_0205E114:
	cmp r0, #0xe5
	bhi _0205E11C
	mov r0, #0x1c
	bx lr
_0205E11C:
	ldr r2, _0205E1B0 ; =0x0000010D
	cmp r0, r2
	bhi _0205E126
	mov r0, #0x1d
	bx lr
_0205E126:
	add r3, r2, #0
	add r3, #0x28
	cmp r0, r3
	bhi _0205E132
	mov r0, #0x1e
	bx lr
_0205E132:
	add r3, r2, #0
	add r3, #0x50
	cmp r0, r3
	bhi _0205E13E
	mov r0, #0x1f
	bx lr
_0205E13E:
	add r3, r2, #0
	add r3, #0x6e
	cmp r0, r3
	bhi _0205E14A
	mov r0, #0x20
	bx lr
_0205E14A:
	add r3, r2, #0
	add r3, #0x8c
	cmp r0, r3
	bhi _0205E156
	mov r0, #0x21
	bx lr
_0205E156:
	add r3, r2, #0
	add r3, #0xa0
	cmp r0, r3
	bhi _0205E16A
	cmp r1, #0
	beq _0205E166
	mov r0, #0x23
	bx lr
_0205E166:
	mov r0, #0x22
	bx lr
_0205E16A:
	add r3, r2, #0
	add r3, #0xb4
	cmp r0, r3
	bhi _0205E176
	mov r0, #0x24
	bx lr
_0205E176:
	add r3, r2, #0
	add r3, #0xbe
	cmp r0, r3
	bhi _0205E182
	mov r0, #0x25
	bx lr
_0205E182:
	add r3, r2, #0
	add r3, #0xc8
	cmp r0, r3
	bhi _0205E18E
	mov r0, #0x26
	bx lr
_0205E18E:
	add r3, r2, #0
	add r3, #0xce
	cmp r0, r3
	bhi _0205E19A
	mov r0, #0x27
	bx lr
_0205E19A:
	add r2, #0xd4
	cmp r0, r2
	bhi _0205E1A4
	mov r0, #0x28
	bx lr
_0205E1A4:
	cmp r1, #0
	beq _0205E1AC
	mov r0, #0x2a
	bx lr
_0205E1AC:
	mov r0, #0x29
	bx lr
	; .align 2, 0
_0205E1B0: .word 0x0000010D
	thumb_func_end sub_0205E0E4

	thumb_func_start sub_0205E1B4
sub_0205E1B4: ; 0x0205E1B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r4, _0205E1F4 ; =0x00000000
	beq _0205E1F0
	mov r7, #0x4c
_0205E1CA:
	add r0, r6, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0205E1E6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205E1E6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _0205E1CA
_0205E1F0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E1F4: .word 0x00000000
	thumb_func_end sub_0205E1B4

	thumb_func_start sub_0205E1F8
sub_0205E1F8: ; 0x0205E1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0
	bl sub_0207A268
	str r0, [sp]
	bl sub_0207A0F8
	add r4, r0, #0
	add r6, r7, #0
	cmp r4, #0
	ble _0205E22C
	add r5, sp, #4
_0205E212:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, r4
	blt _0205E212
_0205E22C:
	ldr r2, _0205E264 ; =0x020ED9C4
	mov r6, #0
_0205E230:
	mov r1, #0
	cmp r4, #0
	ble _0205E24C
	ldrh r5, [r2]
	add r3, sp, #4
_0205E23A:
	ldrh r0, [r3]
	cmp r0, r5
	bne _0205E244
	add r7, r7, #1
	b _0205E24C
_0205E244:
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, r4
	blt _0205E23A
_0205E24C:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, #3
	blt _0205E230
	cmp r7, #3
	bne _0205E25E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205E25E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E264: .word 0x020ED9C4
	thumb_func_end sub_0205E1F8

	thumb_func_start sub_0205E268
sub_0205E268: ; 0x0205E268
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp]
	str r0, [sp, #8]
	ldrh r0, [r4, #0xe]
	ldr r5, [r4, #4]
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp]
	ldrh r0, [r4, #0xe]
	ldr r5, [r4, #8]
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #8]
	str r3, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_020630AC
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x10]
	add r0, r1, r0
	strh r0, [r4, #0xe]
	mov r0, #0x5a
	ldrh r1, [r4, #0xe]
	lsl r0, r0, #2
	cmp r1, r0
	blo _0205E2F0
	mov r0, #0
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
_0205E2F0:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0205E312
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_020630AC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0205E312:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0205E268

	thumb_func_start sub_0205E318
sub_0205E318: ; 0x0205E318
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0205E352
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0205E360
_0205E352:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0205E360:
	bl sub_020E1740
	str r0, [r4, #4]
	add r0, sp, #8
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _0205E380
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0205E38E
_0205E380:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0205E38E:
	bl sub_020E1740
	str r0, [r4, #8]
	strh r6, [r4, #0xc]
	strh r7, [r4, #0x10]
	ldr r0, [sp]
	str r5, [r4, #0]
	ldr r0, [r0, #0x10]
	ldr r1, _0205E3A8 ; =sub_0205E268
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E3A8: .word sub_0205E268
	thumb_func_end sub_0205E318

	thumb_func_start sub_0205E3AC
sub_0205E3AC: ; 0x0205E3AC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl sub_02062D64
	ldrb r1, [r4, #8]
	add r0, r1, #1
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	cmp r1, r0
	blt _0205E3F0
	ldrb r1, [r4, #9]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #9]
	mov r0, #0
	strb r0, [r4, #8]
	ldrh r1, [r4, #4]
	sub r0, r1, #1
	strh r0, [r4, #4]
	cmp r1, #0
	bne _0205E3F0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0205E3F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205E3AC

	thumb_func_start sub_0205E3F4
sub_0205E3F4: ; 0x0205E3F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	strh r6, [r4, #4]
	strh r7, [r4, #6]
	str r5, [r4, #0]
	mov r0, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldr r1, _0205E42C ; =sub_0205E3AC
	ldr r0, [r0, #0x10]
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E42C: .word sub_0205E3AC
	thumb_func_end sub_0205E3F4

	thumb_func_start sub_0205E430
sub_0205E430: ; 0x0205E430
	cmp r1, #3
	bhi _0205E456
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E440: ; jump table
	.short _0205E448 - _0205E440 - 2 ; case 0
	.short _0205E44C - _0205E440 - 2 ; case 1
	.short _0205E450 - _0205E440 - 2 ; case 2
	.short _0205E454 - _0205E440 - 2 ; case 3
_0205E448:
	mov r2, #0xb
	b _0205E456
_0205E44C:
	mov r2, #0x13
	b _0205E456
_0205E450:
	mov r2, #0x1b
	b _0205E456
_0205E454:
	mov r2, #0x73
_0205E456:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E430

	thumb_func_start sub_0205E45C
sub_0205E45C: ; 0x0205E45C
	cmp r1, #3
	bhi _0205E482
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E46C: ; jump table
	.short _0205E474 - _0205E46C - 2 ; case 0
	.short _0205E478 - _0205E46C - 2 ; case 1
	.short _0205E47C - _0205E46C - 2 ; case 2
	.short _0205E480 - _0205E46C - 2 ; case 3
_0205E474:
	mov r2, #0xa
	b _0205E482
_0205E478:
	mov r2, #0x12
	b _0205E482
_0205E47C:
	mov r2, #0x1a
	b _0205E482
_0205E480:
	mov r2, #0x72
_0205E482:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E45C

	thumb_func_start sub_0205E488
sub_0205E488: ; 0x0205E488
	cmp r1, #3
	bhi _0205E4AE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E498: ; jump table
	.short _0205E4A0 - _0205E498 - 2 ; case 0
	.short _0205E4A4 - _0205E498 - 2 ; case 1
	.short _0205E4A8 - _0205E498 - 2 ; case 2
	.short _0205E4AC - _0205E498 - 2 ; case 3
_0205E4A0:
	mov r2, #0xd
	b _0205E4AE
_0205E4A4:
	mov r2, #0x15
	b _0205E4AE
_0205E4A8:
	mov r2, #0x1d
	b _0205E4AE
_0205E4AC:
	mov r2, #0x75
_0205E4AE:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E488

	thumb_func_start sub_0205E4B4
sub_0205E4B4: ; 0x0205E4B4
	cmp r1, #3
	bhi _0205E4DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E4C4: ; jump table
	.short _0205E4CC - _0205E4C4 - 2 ; case 0
	.short _0205E4D0 - _0205E4C4 - 2 ; case 1
	.short _0205E4D4 - _0205E4C4 - 2 ; case 2
	.short _0205E4D8 - _0205E4C4 - 2 ; case 3
_0205E4CC:
	mov r2, #0xc
	b _0205E4DA
_0205E4D0:
	mov r2, #0x14
	b _0205E4DA
_0205E4D4:
	mov r2, #0x1c
	b _0205E4DA
_0205E4D8:
	mov r2, #0x74
_0205E4DA:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E4B4

	thumb_func_start sub_0205E4E0
sub_0205E4E0: ; 0x0205E4E0
	cmp r0, #3
	bhi _0205E506
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E4F0: ; jump table
	.short _0205E4F8 - _0205E4F0 - 2 ; case 0
	.short _0205E4FC - _0205E4F0 - 2 ; case 1
	.short _0205E500 - _0205E4F0 - 2 ; case 2
	.short _0205E504 - _0205E4F0 - 2 ; case 3
_0205E4F8:
	mov r2, #0x25
	b _0205E506
_0205E4FC:
	mov r2, #0x31
	b _0205E506
_0205E500:
	mov r2, #0x3d
	b _0205E506
_0205E504:
	mov r2, #0x7d
_0205E506:
	lsr r0, r1, #1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E4E0

	thumb_func_start sub_0205E50C
sub_0205E50C: ; 0x0205E50C
	cmp r0, #3
	bhi _0205E532
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E51C: ; jump table
	.short _0205E524 - _0205E51C - 2 ; case 0
	.short _0205E528 - _0205E51C - 2 ; case 1
	.short _0205E52C - _0205E51C - 2 ; case 2
	.short _0205E530 - _0205E51C - 2 ; case 3
_0205E524:
	mov r0, #0x23
	bx lr
_0205E528:
	mov r0, #0x2f
	bx lr
_0205E52C:
	mov r0, #0x3b
	bx lr
_0205E530:
	mov r0, #0x7b
_0205E532:
	bx lr
	thumb_func_end sub_0205E50C

	thumb_func_start sub_0205E534
sub_0205E534: ; 0x0205E534
	cmp r0, #3
	bhi _0205E55A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E544: ; jump table
	.short _0205E54C - _0205E544 - 2 ; case 0
	.short _0205E550 - _0205E544 - 2 ; case 1
	.short _0205E554 - _0205E544 - 2 ; case 2
	.short _0205E558 - _0205E544 - 2 ; case 3
_0205E54C:
	mov r0, #0x22
	bx lr
_0205E550:
	mov r0, #0x2e
	bx lr
_0205E554:
	mov r0, #0x3a
	bx lr
_0205E558:
	mov r0, #0x7a
_0205E55A:
	bx lr
	thumb_func_end sub_0205E534

	thumb_func_start sub_0205E55C
sub_0205E55C: ; 0x0205E55C
	cmp r0, #3
	bhi _0205E582
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E56C: ; jump table
	.short _0205E574 - _0205E56C - 2 ; case 0
	.short _0205E578 - _0205E56C - 2 ; case 1
	.short _0205E57C - _0205E56C - 2 ; case 2
	.short _0205E580 - _0205E56C - 2 ; case 3
_0205E574:
	mov r0, #0x24
	bx lr
_0205E578:
	mov r0, #0x30
	bx lr
_0205E57C:
	mov r0, #0x3c
	bx lr
_0205E580:
	mov r0, #0x7c
_0205E582:
	bx lr
	thumb_func_end sub_0205E55C

	thumb_func_start sub_0205E584
sub_0205E584: ; 0x0205E584
	push {r4, lr}
	cmp r0, #3
	bhi _0205E5B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E596: ; jump table
	.short _0205E59E - _0205E596 - 2 ; case 0
	.short _0205E5A2 - _0205E596 - 2 ; case 1
	.short _0205E5A6 - _0205E596 - 2 ; case 2
	.short _0205E5AA - _0205E596 - 2 ; case 3
_0205E59E:
	mov r4, #0
	b _0205E5B0
_0205E5A2:
	mov r4, #1
	b _0205E5B0
_0205E5A6:
	mov r4, #2
	b _0205E5B0
_0205E5AA:
	mov r4, #2
	bl sub_02022974
_0205E5B0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E584

	thumb_func_start sub_0205E5B4
sub_0205E5B4: ; 0x0205E5B4
	cmp r0, #3
	bhi _0205E5DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E5C4: ; jump table
	.short _0205E5CC - _0205E5C4 - 2 ; case 0
	.short _0205E5D0 - _0205E5C4 - 2 ; case 1
	.short _0205E5D4 - _0205E5C4 - 2 ; case 2
	.short _0205E5D8 - _0205E5C4 - 2 ; case 3
_0205E5CC:
	mov r2, #0x4b
	b _0205E5DA
_0205E5D0:
	mov r2, #0x53
	b _0205E5DA
_0205E5D4:
	mov r2, #0x5b
	b _0205E5DA
_0205E5D8:
	mov r2, #0x8b
_0205E5DA:
	add r0, r2, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205E5B4

	thumb_func_start sub_0205E5E0
sub_0205E5E0: ; 0x0205E5E0
	cmp r0, #3
	bhi _0205E606
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E5F0: ; jump table
	.short _0205E5F8 - _0205E5F0 - 2 ; case 0
	.short _0205E5FC - _0205E5F0 - 2 ; case 1
	.short _0205E600 - _0205E5F0 - 2 ; case 2
	.short _0205E604 - _0205E5F0 - 2 ; case 3
_0205E5F8:
	mov r0, #0x47
	bx lr
_0205E5FC:
	mov r0, #0x4f
	bx lr
_0205E600:
	mov r0, #0x57
	bx lr
_0205E604:
	mov r0, #0x87
_0205E606:
	bx lr
	thumb_func_end sub_0205E5E0

	thumb_func_start sub_0205E608
sub_0205E608: ; 0x0205E608
	cmp r0, #3
	bhi _0205E62E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E618: ; jump table
	.short _0205E620 - _0205E618 - 2 ; case 0
	.short _0205E624 - _0205E618 - 2 ; case 1
	.short _0205E628 - _0205E618 - 2 ; case 2
	.short _0205E62C - _0205E618 - 2 ; case 3
_0205E620:
	mov r0, #0x46
	bx lr
_0205E624:
	mov r0, #0x4e
	bx lr
_0205E628:
	mov r0, #0x56
	bx lr
_0205E62C:
	mov r0, #0x86
_0205E62E:
	bx lr
	thumb_func_end sub_0205E608

	thumb_func_start sub_0205E630
sub_0205E630: ; 0x0205E630
	cmp r0, #3
	bhi _0205E656
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E640: ; jump table
	.short _0205E648 - _0205E640 - 2 ; case 0
	.short _0205E64C - _0205E640 - 2 ; case 1
	.short _0205E650 - _0205E640 - 2 ; case 2
	.short _0205E654 - _0205E640 - 2 ; case 3
_0205E648:
	mov r0, #0x48
	bx lr
_0205E64C:
	mov r0, #0x50
	bx lr
_0205E650:
	mov r0, #0x58
	bx lr
_0205E654:
	mov r0, #0x88
_0205E656:
	bx lr
	thumb_func_end sub_0205E630

	thumb_func_start sub_0205E658
sub_0205E658: ; 0x0205E658
	cmp r0, #3
	bhi _0205E67E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E668: ; jump table
	.short _0205E670 - _0205E668 - 2 ; case 0
	.short _0205E674 - _0205E668 - 2 ; case 1
	.short _0205E678 - _0205E668 - 2 ; case 2
	.short _0205E67C - _0205E668 - 2 ; case 3
_0205E670:
	mov r0, #0x49
	bx lr
_0205E674:
	mov r0, #0x51
	bx lr
_0205E678:
	mov r0, #0x59
	bx lr
_0205E67C:
	mov r0, #0x89
_0205E67E:
	bx lr
	thumb_func_end sub_0205E658

	thumb_func_start sub_0205E680
sub_0205E680: ; 0x0205E680
	cmp r0, #3
	bhi _0205E6A6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E690: ; jump table
	.short _0205E698 - _0205E690 - 2 ; case 0
	.short _0205E69C - _0205E690 - 2 ; case 1
	.short _0205E6A0 - _0205E690 - 2 ; case 2
	.short _0205E6A4 - _0205E690 - 2 ; case 3
_0205E698:
	mov r0, #0x4a
	bx lr
_0205E69C:
	mov r0, #0x52
	bx lr
_0205E6A0:
	mov r0, #0x5a
	bx lr
_0205E6A4:
	mov r0, #0x8a
_0205E6A6:
	bx lr
	thumb_func_end sub_0205E680

	thumb_func_start sub_0205E6A8
sub_0205E6A8: ; 0x0205E6A8
	push {r3, lr}
	cmp r0, #0x64
	bhs _0205E6B2
	mov r0, #0xff
	pop {r3, pc}
_0205E6B2:
	bl ov4_021D2388
	pop {r3, pc}
	thumb_func_end sub_0205E6A8

	thumb_func_start sub_0205E6B8
sub_0205E6B8: ; 0x0205E6B8
	push {r4, lr}
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r4, r0, #0
	bne _0205E6CE
	bl sub_02022974
_0205E6CE:
	add r0, r4, #0
	bl sub_02025FCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205E6B8

	thumb_func_start sub_0205E6D8
sub_0205E6D8: ; 0x0205E6D8
	push {r3, lr}
	bl sub_02025E38
	bl sub_02025FCC
	cmp r0, #0
	bne _0205E6EA
	mov r0, #1
	pop {r3, pc}
_0205E6EA:
	bl sub_0205E6B8
	cmp r0, #0
	bne _0205E6F6
	mov r0, #1
	b _0205E6F8
_0205E6F6:
	mov r0, #0
_0205E6F8:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205E6D8

	thumb_func_start sub_0205E700
sub_0205E700: ; 0x0205E700
	cmp r0, #3
	bhi _0205E726
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E710: ; jump table
	.short _0205E718 - _0205E710 - 2 ; case 0
	.short _0205E71C - _0205E710 - 2 ; case 1
	.short _0205E720 - _0205E710 - 2 ; case 2
	.short _0205E724 - _0205E710 - 2 ; case 3
_0205E718:
	mov r0, #0x5f
	bx lr
_0205E71C:
	mov r0, #0x61
	bx lr
_0205E720:
	mov r0, #0x63
	bx lr
_0205E724:
	mov r0, #0x8f
_0205E726:
	bx lr
	thumb_func_end sub_0205E700

	thumb_func_start sub_0205E728
sub_0205E728: ; 0x0205E728
	cmp r0, #3
	bhi _0205E74E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E738: ; jump table
	.short _0205E740 - _0205E738 - 2 ; case 0
	.short _0205E744 - _0205E738 - 2 ; case 1
	.short _0205E748 - _0205E738 - 2 ; case 2
	.short _0205E74C - _0205E738 - 2 ; case 3
_0205E740:
	mov r0, #0x5e
	bx lr
_0205E744:
	mov r0, #0x60
	bx lr
_0205E748:
	mov r0, #0x62
	bx lr
_0205E74C:
	mov r0, #0x8e
_0205E74E:
	bx lr
	thumb_func_end sub_0205E728

	thumb_func_start sub_0205E750
sub_0205E750: ; 0x0205E750
	push {r4, lr}
	cmp r0, #6
	bhi _0205E788
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E762: ; jump table
	.short _0205E770 - _0205E762 - 2 ; case 0
	.short _0205E774 - _0205E762 - 2 ; case 1
	.short _0205E778 - _0205E762 - 2 ; case 2
	.short _0205E77C - _0205E762 - 2 ; case 3
	.short _0205E780 - _0205E762 - 2 ; case 4
	.short _0205E788 - _0205E762 - 2 ; case 5
	.short _0205E784 - _0205E762 - 2 ; case 6
_0205E770:
	mov r4, #1
	b _0205E78C
_0205E774:
	mov r4, #3
	b _0205E78C
_0205E778:
	mov r4, #5
	b _0205E78C
_0205E77C:
	mov r4, #7
	b _0205E78C
_0205E780:
	mov r4, #9
	b _0205E78C
_0205E784:
	mov r4, #0x71
	b _0205E78C
_0205E788:
	bl sub_02022974
_0205E78C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E750

	thumb_func_start sub_0205E790
sub_0205E790: ; 0x0205E790
	push {r4, lr}
	cmp r0, #6
	bhi _0205E7C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E7A2: ; jump table
	.short _0205E7B0 - _0205E7A2 - 2 ; case 0
	.short _0205E7B4 - _0205E7A2 - 2 ; case 1
	.short _0205E7B8 - _0205E7A2 - 2 ; case 2
	.short _0205E7BC - _0205E7A2 - 2 ; case 3
	.short _0205E7C0 - _0205E7A2 - 2 ; case 4
	.short _0205E7C8 - _0205E7A2 - 2 ; case 5
	.short _0205E7C4 - _0205E7A2 - 2 ; case 6
_0205E7B0:
	mov r4, #0
	b _0205E7CC
_0205E7B4:
	mov r4, #2
	b _0205E7CC
_0205E7B8:
	mov r4, #4
	b _0205E7CC
_0205E7BC:
	mov r4, #6
	b _0205E7CC
_0205E7C0:
	mov r4, #8
	b _0205E7CC
_0205E7C4:
	mov r4, #0x70
	b _0205E7CC
_0205E7C8:
	bl sub_02022974
_0205E7CC:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E790

	thumb_func_start sub_0205E7D0
sub_0205E7D0: ; 0x0205E7D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #8]
	bl sub_0205E8FC
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x2c]
	add r6, r0, #0
	bl sub_0205E91C
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0205E7FE
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl sub_0205ED6C
	add r2, r0, #0
	b _0205E80A
_0205E7FE:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0205E808
	mov r2, #0xfc
	b _0205E80A
_0205E808:
	mov r2, #0xfd
_0205E80A:
	ldr r3, [sp, #8]
	str r5, [sp]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #4]
	bl sub_0205E988
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205E7D0

	thumb_func_start sub_0205E820
sub_0205E820: ; 0x0205E820
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	bl sub_0205E8FC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205EC94
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0205E91C
	add r0, r7, #0
	bl sub_0205EA64
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206291C
	mov r1, #9
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02062F90
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB38
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205E820

	thumb_func_start sub_0205E884
sub_0205E884: ; 0x0205E884
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	bne _0205E896
	bl sub_02022974
_0205E896:
	add r0, r6, #0
	bl sub_02062A40
	add r0, r5, #0
	bl ov5_021F6218
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _0205E8DE
	cmp r4, #9
	beq _0205E8DE
	add r0, r5, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205EA78
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov5_021F261C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EC00
_0205E8DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205E884

	thumb_func_start sub_0205E8E0
sub_0205E8E0: ; 0x0205E8E0
	ldr r3, _0205E8E4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0205E8E4: .word sub_020181C4
	thumb_func_end sub_0205E8E0

	thumb_func_start sub_0205E8E8
sub_0205E8E8: ; 0x0205E8E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB3C
	bl sub_02061AF4
	add r0, r4, #0
	bl sub_0205E8E0
	pop {r4, pc}
	thumb_func_end sub_0205E8E8

	thumb_func_start sub_0205E8FC
sub_0205E8FC: ; 0x0205E8FC
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	bne _0205E90E
	bl sub_02022974
_0205E90E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E8FC

	thumb_func_start sub_0205E91C
sub_0205E91C: ; 0x0205E91C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r3, #0
	add r6, r2, #0
	bl sub_0205EC08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB58
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205EB94
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB8C
	add r0, r5, #0
	bl sub_0205EBC0
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205EBDC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205EBE4
	add r0, r5, #0
	mov r1, #0xff
	mov r2, #0
	bl sub_0205EC20
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EFF0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205E91C

	thumb_func_start sub_0205E988
sub_0205E988: ; 0x0205E988
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl sub_020619DC
	add r5, r0, #0
	bne _0205E9A8
	bl sub_02022974
_0205E9A8:
	add r0, r5, #0
	mov r1, #0xff
	bl sub_0206290C
	add r0, r5, #0
	mov r1, #0
	bl sub_0206294C
	add r0, r5, #0
	mov r1, #0
	bl sub_02062954
	add r0, r5, #0
	mov r1, #0
	bl sub_0206295C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_020629B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_020629B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl sub_020629B4
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_020629FC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02062A04
	mov r1, #9
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F90
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EB38
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205E988

	thumb_func_start sub_0205EA24
sub_0205EA24: ; 0x0205EA24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r5, r0, #0
	bl sub_020625B0
	cmp r0, #0
	beq _0205EA5E
	add r4, sp, #0
	add r6, sp, #4
	mov r7, #1
_0205EA44:
	ldr r0, [sp]
	bl sub_02062948
	cmp r0, #1
	beq _0205EA5E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020625B0
	cmp r0, #0
	bne _0205EA44
_0205EA5E:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205EA24

	thumb_func_start sub_0205EA64
sub_0205EA64: ; 0x0205EA64
	push {r4, lr}
	bl sub_0205EA24
	add r4, r0, #0
	bne _0205EA72
	bl sub_02022974
_0205EA72:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205EA64

	thumb_func_start sub_0205EA78
sub_0205EA78: ; 0x0205EA78
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_0206298C
	pop {r3, pc}
	thumb_func_end sub_0205EA78

	thumb_func_start sub_0205EA84
sub_0205EA84: ; 0x0205EA84
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062974
	pop {r4, pc}
	thumb_func_end sub_0205EA84

	thumb_func_start sub_0205EA94
sub_0205EA94: ; 0x0205EA94
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_0206299C
	pop {r3, pc}
	thumb_func_end sub_0205EA94

	thumb_func_start sub_0205EAA0
sub_0205EAA0: ; 0x0205EAA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F16C
	cmp r0, #1
	bne _0205EAB4
	add r0, r4, #0
	bl sub_0205EA78
	pop {r4, pc}
_0205EAB4:
	add r0, r4, #0
	bl sub_0205EA94
	pop {r4, pc}
	thumb_func_end sub_0205EAA0

	thumb_func_start sub_0205EABC
sub_0205EABC: ; 0x0205EABC
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063020
	pop {r3, pc}
	thumb_func_end sub_0205EABC

	thumb_func_start sub_0205EAC8
sub_0205EAC8: ; 0x0205EAC8
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063040
	pop {r3, pc}
	thumb_func_end sub_0205EAC8

	thumb_func_start sub_0205EAD4
sub_0205EAD4: ; 0x0205EAD4
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063008
	pop {r3, pc}
	thumb_func_end sub_0205EAD4

	thumb_func_start sub_0205EAE0
sub_0205EAE0: ; 0x0205EAE0
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063018
	pop {r3, pc}
	thumb_func_end sub_0205EAE0

	thumb_func_start sub_0205EAEC
sub_0205EAEC: ; 0x0205EAEC
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02063050
	pop {r4, pc}
	thumb_func_end sub_0205EAEC

	thumb_func_start sub_0205EAFC
sub_0205EAFC: ; 0x0205EAFC
	push {r3, lr}
	bl sub_0205EB54
	bl sub_02063070
	pop {r3, pc}
	thumb_func_end sub_0205EAFC

	thumb_func_start sub_0205EB08
sub_0205EB08: ; 0x0205EB08
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0205EB08

	thumb_func_start sub_0205EB0C
sub_0205EB0C: ; 0x0205EB0C
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0205EB0C

	thumb_func_start sub_0205EB10
sub_0205EB10: ; 0x0205EB10
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0205EB10

	thumb_func_start sub_0205EB14
sub_0205EB14: ; 0x0205EB14
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0205EB14

	thumb_func_start sub_0205EB18
sub_0205EB18: ; 0x0205EB18
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	cmp r4, #1
	bne _0205EB2E
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628C4
	pop {r4, pc}
_0205EB2E:
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628BC
	pop {r4, pc}
	thumb_func_end sub_0205EB18

	thumb_func_start sub_0205EB38
sub_0205EB38: ; 0x0205EB38
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_0205EB38

	thumb_func_start sub_0205EB3C
sub_0205EB3C: ; 0x0205EB3C
	push {r4, lr}
	add r4, r0, #0
	bne _0205EB46
	bl sub_02022974
_0205EB46:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0205EB50
	bl sub_02022974
_0205EB50:
	ldr r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end sub_0205EB3C

	thumb_func_start sub_0205EB54
sub_0205EB54: ; 0x0205EB54
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_0205EB54

	thumb_func_start sub_0205EB58
sub_0205EB58: ; 0x0205EB58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blt _0205EB66
	bl sub_02022974
_0205EB66:
	add r0, r5, #0
	add r1, r4, #0
	str r4, [r5, #0x1c]
	bl sub_0205ECA8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205EB58

	thumb_func_start sub_0205EB74
sub_0205EB74: ; 0x0205EB74
	push {r4, lr}
	add r4, r0, #0
	bne _0205EB7E
	bl sub_02022974
_0205EB7E:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205EB74

	thumb_func_start sub_0205EB84
sub_0205EB84: ; 0x0205EB84
	ldr r2, [r0, #4]
	orr r1, r2
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB84

	thumb_func_start sub_0205EB8C
sub_0205EB8C: ; 0x0205EB8C
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB8C

	thumb_func_start sub_0205EB90
sub_0205EB90: ; 0x0205EB90
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB90

	thumb_func_start sub_0205EB94
sub_0205EB94: ; 0x0205EB94
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0205EB94

	thumb_func_start sub_0205EB98
sub_0205EB98: ; 0x0205EB98
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0205EB98

	thumb_func_start sub_0205EB9C
sub_0205EB9C: ; 0x0205EB9C
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_0205EB9C

	thumb_func_start sub_0205EBA4
sub_0205EBA4: ; 0x0205EBA4
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EBA4

	thumb_func_start sub_0205EBB0
sub_0205EBB0: ; 0x0205EBB0
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EBB0

	thumb_func_start sub_0205EBB8
sub_0205EBB8: ; 0x0205EBB8
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBB8

	thumb_func_start sub_0205EBBC
sub_0205EBBC: ; 0x0205EBBC
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBBC

	thumb_func_start sub_0205EBC0
sub_0205EBC0: ; 0x0205EBC0
	ldr r3, _0205EBC8 ; =sub_0205EF98
	mov r1, #0
	str r1, [r0, #0x24]
	bx r3
	; .align 2, 0
_0205EBC8: .word sub_0205EF98
	thumb_func_end sub_0205EBC0

	thumb_func_start sub_0205EBCC
sub_0205EBCC: ; 0x0205EBCC
	ldr r3, [r0, #0x24]
	add r1, r3, r1
	str r1, [r0, #0x24]
	cmp r1, r2
	ble _0205EBD8
	str r2, [r0, #0x24]
_0205EBD8:
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBCC

	thumb_func_start sub_0205EBDC
sub_0205EBDC: ; 0x0205EBDC
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0205EBDC

	thumb_func_start sub_0205EBE0
sub_0205EBE0: ; 0x0205EBE0
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0205EBE0

	thumb_func_start sub_0205EBE4
sub_0205EBE4: ; 0x0205EBE4
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0205EBE4

	thumb_func_start sub_0205EBE8
sub_0205EBE8: ; 0x0205EBE8
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0205EBE8

	thumb_func_start sub_0205EBEC
sub_0205EBEC: ; 0x0205EBEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0205EBDC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBE4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205EBEC

	thumb_func_start sub_0205EC00
sub_0205EC00: ; 0x0205EC00
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_0205EC00

	thumb_func_start sub_0205EC04
sub_0205EC04: ; 0x0205EC04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0205EC04

	thumb_func_start sub_0205EC08
sub_0205EC08: ; 0x0205EC08
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end sub_0205EC08

	thumb_func_start sub_0205EC0C
sub_0205EC0C: ; 0x0205EC0C
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_0205EC0C

	thumb_func_start sub_0205EC10
sub_0205EC10: ; 0x0205EC10
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0205EC10

	thumb_func_start sub_0205EC14
sub_0205EC14: ; 0x0205EC14
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0205EC14

	thumb_func_start sub_0205EC18
sub_0205EC18: ; 0x0205EC18
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0205EC18

	thumb_func_start sub_0205EC1C
sub_0205EC1C: ; 0x0205EC1C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0205EC1C

	thumb_func_start sub_0205EC20
sub_0205EC20: ; 0x0205EC20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0205EC10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EC18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205EC20

	thumb_func_start sub_0205EC34
sub_0205EC34: ; 0x0205EC34
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EC34

	thumb_func_start sub_0205EC40
sub_0205EC40: ; 0x0205EC40
	cmp r0, #0
	beq _0205EC4E
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _0205EC4E
	mov r0, #1
	bx lr
_0205EC4E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EC40

	thumb_func_start sub_0205EC54
sub_0205EC54: ; 0x0205EC54
	cmp r1, #1
	bne _0205EC5E
	mov r1, #1
	strh r1, [r0, #2]
	bx lr
_0205EC5E:
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_0205EC54

	thumb_func_start sub_0205EC64
sub_0205EC64: ; 0x0205EC64
	cmp r0, #0
	bne _0205EC6C
	mov r0, #0
	bx lr
_0205EC6C:
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0205EC64

	thumb_func_start sub_0205EC70
sub_0205EC70: ; 0x0205EC70
	cmp r0, #0
	beq _0205EC76
	strh r1, [r0]
_0205EC76:
	bx lr
	thumb_func_end sub_0205EC70

	thumb_func_start sub_0205EC78
sub_0205EC78: ; 0x0205EC78
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EC0C
	add r1, r4, #0
	bl sub_0205EC70
	pop {r4, pc}
	thumb_func_end sub_0205EC78

	thumb_func_start sub_0205EC88
sub_0205EC88: ; 0x0205EC88
	push {r3, lr}
	bl sub_0205EC0C
	bl sub_0205EC64
	pop {r3, pc}
	thumb_func_end sub_0205EC88

	thumb_func_start sub_0205EC94
sub_0205EC94: ; 0x0205EC94
	cmp r0, #0
	beq _0205EC9C
	ldr r0, [r0, #4]
	bx lr
_0205EC9C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205EC94

	thumb_func_start sub_0205ECA0
sub_0205ECA0: ; 0x0205ECA0
	cmp r0, #0
	beq _0205ECA6
	str r1, [r0, #4]
_0205ECA6:
	bx lr
	thumb_func_end sub_0205ECA0

	thumb_func_start sub_0205ECA8
sub_0205ECA8: ; 0x0205ECA8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EC0C
	add r1, r4, #0
	bl sub_0205ECA0
	pop {r4, pc}
	thumb_func_end sub_0205ECA8

	thumb_func_start sub_0205ECB8
sub_0205ECB8: ; 0x0205ECB8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	bl sub_0205EB3C
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020632D4
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205ECB8

	thumb_func_start sub_0205ECE0
sub_0205ECE0: ; 0x0205ECE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0205EB3C
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02063340
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205ECE0

	thumb_func_start sub_0205ED0C
sub_0205ED0C: ; 0x0205ED0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #0
	str r5, [sp, #4]
	bl sub_02063060
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0205ED0C

	thumb_func_start sub_0205ED2C
sub_0205ED2C: ; 0x0205ED2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	cmp r4, #1
	bne _0205ED40
	mov r1, #0
	bl sub_02062E28
	pop {r4, pc}
_0205ED40:
	mov r1, #1
	bl sub_02062E28
	pop {r4, pc}
	thumb_func_end sub_0205ED2C

	thumb_func_start sub_0205ED48
sub_0205ED48: ; 0x0205ED48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	cmp r5, #1
	bne _0205ED64
	mov r1, #0
	bl sub_02062E28
	add r0, r4, #0
	bl sub_020642F8
	pop {r3, r4, r5, pc}
_0205ED64:
	mov r1, #1
	bl sub_02062E28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205ED48

	thumb_func_start sub_0205ED6C
sub_0205ED6C: ; 0x0205ED6C
	push {r3, lr}
	cmp r1, #0
	bne _0205EE10
	cmp r0, #0x1e
	bls _0205ED78
	b _0205EEA6
_0205ED78:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205ED84: ; jump table
	.short _0205EDC2 - _0205ED84 - 2 ; case 0
	.short _0205EDC6 - _0205ED84 - 2 ; case 1
	.short _0205EDCA - _0205ED84 - 2 ; case 2
	.short _0205EEA6 - _0205ED84 - 2 ; case 3
	.short _0205EEA6 - _0205ED84 - 2 ; case 4
	.short _0205EEA6 - _0205ED84 - 2 ; case 5
	.short _0205EEA6 - _0205ED84 - 2 ; case 6
	.short _0205EEA6 - _0205ED84 - 2 ; case 7
	.short _0205EEA6 - _0205ED84 - 2 ; case 8
	.short _0205EEA6 - _0205ED84 - 2 ; case 9
	.short _0205EEA6 - _0205ED84 - 2 ; case 10
	.short _0205EEA6 - _0205ED84 - 2 ; case 11
	.short _0205EEA6 - _0205ED84 - 2 ; case 12
	.short _0205EEA6 - _0205ED84 - 2 ; case 13
	.short _0205EEA6 - _0205ED84 - 2 ; case 14
	.short _0205EEA6 - _0205ED84 - 2 ; case 15
	.short _0205EDCE - _0205ED84 - 2 ; case 16
	.short _0205EDD2 - _0205ED84 - 2 ; case 17
	.short _0205EDD6 - _0205ED84 - 2 ; case 18
	.short _0205EDDA - _0205ED84 - 2 ; case 19
	.short _0205EDDE - _0205ED84 - 2 ; case 20
	.short _0205EDE2 - _0205ED84 - 2 ; case 21
	.short _0205EDE6 - _0205ED84 - 2 ; case 22
	.short _0205EDEA - _0205ED84 - 2 ; case 23
	.short _0205EDF0 - _0205ED84 - 2 ; case 24
	.short _0205EDF4 - _0205ED84 - 2 ; case 25
	.short _0205EDF8 - _0205ED84 - 2 ; case 26
	.short _0205EDFE - _0205ED84 - 2 ; case 27
	.short _0205EE02 - _0205ED84 - 2 ; case 28
	.short _0205EE06 - _0205ED84 - 2 ; case 29
	.short _0205EE0C - _0205ED84 - 2 ; case 30
_0205EDC2:
	mov r0, #0
	pop {r3, pc}
_0205EDC6:
	mov r0, #0x15
	pop {r3, pc}
_0205EDCA:
	mov r0, #0xb2
	pop {r3, pc}
_0205EDCE:
	mov r0, #0xb0
	pop {r3, pc}
_0205EDD2:
	mov r0, #0xb4
	pop {r3, pc}
_0205EDD6:
	mov r0, #0xba
	pop {r3, pc}
_0205EDDA:
	mov r0, #0xbc
	pop {r3, pc}
_0205EDDE:
	mov r0, #0xc4
	pop {r3, pc}
_0205EDE2:
	mov r0, #0xc6
	pop {r3, pc}
_0205EDE6:
	mov r0, #0xc8
	pop {r3, pc}
_0205EDEA:
	mov r0, #1
	lsl r0, r0, #8
	pop {r3, pc}
_0205EDF0:
	mov r0, #0xd4
	pop {r3, pc}
_0205EDF4:
	ldr r0, _0205EEB0 ; =0x00000102
	pop {r3, pc}
_0205EDF8:
	mov r0, #0x43
	lsl r0, r0, #2
	pop {r3, pc}
_0205EDFE:
	ldr r0, _0205EEB4 ; =0x0000010E
	pop {r3, pc}
_0205EE02:
	mov r0, #0xd2
	pop {r3, pc}
_0205EE06:
	mov r0, #0x11
	lsl r0, r0, #4
	pop {r3, pc}
_0205EE0C:
	ldr r0, _0205EEB8 ; =0x00000112
	pop {r3, pc}
_0205EE10:
	cmp r0, #0x1e
	bhi _0205EEA6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205EE20: ; jump table
	.short _0205EE5E - _0205EE20 - 2 ; case 0
	.short _0205EE62 - _0205EE20 - 2 ; case 1
	.short _0205EE66 - _0205EE20 - 2 ; case 2
	.short _0205EEA6 - _0205EE20 - 2 ; case 3
	.short _0205EEA6 - _0205EE20 - 2 ; case 4
	.short _0205EEA6 - _0205EE20 - 2 ; case 5
	.short _0205EEA6 - _0205EE20 - 2 ; case 6
	.short _0205EEA6 - _0205EE20 - 2 ; case 7
	.short _0205EEA6 - _0205EE20 - 2 ; case 8
	.short _0205EEA6 - _0205EE20 - 2 ; case 9
	.short _0205EEA6 - _0205EE20 - 2 ; case 10
	.short _0205EEA6 - _0205EE20 - 2 ; case 11
	.short _0205EEA6 - _0205EE20 - 2 ; case 12
	.short _0205EEA6 - _0205EE20 - 2 ; case 13
	.short _0205EEA6 - _0205EE20 - 2 ; case 14
	.short _0205EEA6 - _0205EE20 - 2 ; case 15
	.short _0205EE6A - _0205EE20 - 2 ; case 16
	.short _0205EE6E - _0205EE20 - 2 ; case 17
	.short _0205EE72 - _0205EE20 - 2 ; case 18
	.short _0205EE76 - _0205EE20 - 2 ; case 19
	.short _0205EE7A - _0205EE20 - 2 ; case 20
	.short _0205EE7E - _0205EE20 - 2 ; case 21
	.short _0205EE82 - _0205EE20 - 2 ; case 22
	.short _0205EE86 - _0205EE20 - 2 ; case 23
	.short _0205EE8A - _0205EE20 - 2 ; case 24
	.short _0205EE8E - _0205EE20 - 2 ; case 25
	.short _0205EE92 - _0205EE20 - 2 ; case 26
	.short _0205EE96 - _0205EE20 - 2 ; case 27
	.short _0205EE9A - _0205EE20 - 2 ; case 28
	.short _0205EE9E - _0205EE20 - 2 ; case 29
	.short _0205EEA2 - _0205EE20 - 2 ; case 30
_0205EE5E:
	mov r0, #0x61
	pop {r3, pc}
_0205EE62:
	mov r0, #0x62
	pop {r3, pc}
_0205EE66:
	mov r0, #0xb3
	pop {r3, pc}
_0205EE6A:
	mov r0, #0xb1
	pop {r3, pc}
_0205EE6E:
	mov r0, #0xb5
	pop {r3, pc}
_0205EE72:
	mov r0, #0xbb
	pop {r3, pc}
_0205EE76:
	mov r0, #0xbd
	pop {r3, pc}
_0205EE7A:
	mov r0, #0xc5
	pop {r3, pc}
_0205EE7E:
	mov r0, #0xc7
	pop {r3, pc}
_0205EE82:
	mov r0, #0xc9
	pop {r3, pc}
_0205EE86:
	ldr r0, _0205EEBC ; =0x00000101
	pop {r3, pc}
_0205EE8A:
	ldr r0, _0205EEC0 ; =0x00000107
	pop {r3, pc}
_0205EE8E:
	ldr r0, _0205EEC4 ; =0x00000103
	pop {r3, pc}
_0205EE92:
	ldr r0, _0205EEC8 ; =0x0000010D
	pop {r3, pc}
_0205EE96:
	ldr r0, _0205EECC ; =0x0000010F
	pop {r3, pc}
_0205EE9A:
	mov r0, #0xd3
	pop {r3, pc}
_0205EE9E:
	ldr r0, _0205EED0 ; =0x00000111
	pop {r3, pc}
_0205EEA2:
	ldr r0, _0205EED4 ; =0x00000113
	pop {r3, pc}
_0205EEA6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0205EEB0: .word 0x00000102
_0205EEB4: .word 0x0000010E
_0205EEB8: .word 0x00000112
_0205EEBC: .word 0x00000101
_0205EEC0: .word 0x00000107
_0205EEC4: .word 0x00000103
_0205EEC8: .word 0x0000010D
_0205EECC: .word 0x0000010F
_0205EED0: .word 0x00000111
_0205EED4: .word 0x00000113
	thumb_func_end sub_0205ED6C

	thumb_func_start sub_0205EED8
sub_0205EED8: ; 0x0205EED8
	push {r3, lr}
	cmp r0, #0x11
	bgt _0205EEF4
	bge _0205EF1C
	cmp r0, #2
	bgt _0205EF32
	cmp r0, #0
	blt _0205EF32
	beq _0205EF10
	cmp r0, #1
	beq _0205EF14
	cmp r0, #2
	beq _0205EF18
	b _0205EF32
_0205EEF4:
	cmp r0, #0x13
	bgt _0205EEFC
	beq _0205EF20
	b _0205EF32
_0205EEFC:
	cmp r0, #0x16
	bgt _0205EF32
	cmp r0, #0x14
	blt _0205EF32
	beq _0205EF24
	cmp r0, #0x15
	beq _0205EF28
	cmp r0, #0x16
	beq _0205EF2C
	b _0205EF32
_0205EF10:
	mov r0, #1
	pop {r3, pc}
_0205EF14:
	mov r0, #2
	pop {r3, pc}
_0205EF18:
	mov r0, #4
	pop {r3, pc}
_0205EF1C:
	mov r0, #0x10
	pop {r3, pc}
_0205EF20:
	mov r0, #0x20
	pop {r3, pc}
_0205EF24:
	mov r0, #0x40
	pop {r3, pc}
_0205EF28:
	mov r0, #0x80
	pop {r3, pc}
_0205EF2C:
	mov r0, #1
	lsl r0, r0, #8
	pop {r3, pc}
_0205EF32:
	bl sub_02022974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EED8

	thumb_func_start sub_0205EF3C
sub_0205EF3C: ; 0x0205EF3C
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0205EF3C

	thumb_func_start sub_0205EF40
sub_0205EF40: ; 0x0205EF40
	push {r3, lr}
	cmp r1, #1
	bne _0205EF4E
	mov r1, #1
	bl sub_0205EB9C
	pop {r3, pc}
_0205EF4E:
	mov r1, #1
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF40

	thumb_func_start sub_0205EF58
sub_0205EF58: ; 0x0205EF58
	push {r3, lr}
	mov r1, #1
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EF68
	mov r0, #1
	pop {r3, pc}
_0205EF68:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EF58

	thumb_func_start sub_0205EF6C
sub_0205EF6C: ; 0x0205EF6C
	push {r3, lr}
	cmp r1, #1
	bne _0205EF7A
	mov r1, #2
	bl sub_0205EB9C
	pop {r3, pc}
_0205EF7A:
	mov r1, #2
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF6C

	thumb_func_start sub_0205EF84
sub_0205EF84: ; 0x0205EF84
	push {r3, lr}
	mov r1, #2
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EF94
	mov r0, #1
	pop {r3, pc}
_0205EF94:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EF84

	thumb_func_start sub_0205EF98
sub_0205EF98: ; 0x0205EF98
	push {r3, lr}
	cmp r1, #1
	bne _0205EFA6
	mov r1, #4
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFA6:
	mov r1, #4
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF98

	thumb_func_start sub_0205EFB0
sub_0205EFB0: ; 0x0205EFB0
	push {r3, lr}
	mov r1, #4
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EFC0
	mov r0, #1
	pop {r3, pc}
_0205EFC0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EFB0

	thumb_func_start sub_0205EFC4
sub_0205EFC4: ; 0x0205EFC4
	push {r3, lr}
	cmp r1, #1
	bne _0205EFD2
	mov r1, #8
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFD2:
	mov r1, #8
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EFC4

	thumb_func_start sub_0205EFDC
sub_0205EFDC: ; 0x0205EFDC
	push {r3, lr}
	mov r1, #8
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EFEC
	mov r0, #1
	pop {r3, pc}
_0205EFEC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EFDC

	thumb_func_start sub_0205EFF0
sub_0205EFF0: ; 0x0205EFF0
	push {r3, lr}
	cmp r1, #1
	bne _0205EFFE
	mov r1, #0x10
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFFE:
	mov r1, #0x10
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EFF0

	thumb_func_start sub_0205F008
sub_0205F008: ; 0x0205F008
	push {r3, lr}
	mov r1, #0x10
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F018
	mov r0, #1
	pop {r3, pc}
_0205F018:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F008

	thumb_func_start sub_0205F01C
sub_0205F01C: ; 0x0205F01C
	push {r3, lr}
	cmp r1, #1
	bne _0205F02A
	mov r1, #0x20
	bl sub_0205EB9C
	pop {r3, pc}
_0205F02A:
	mov r1, #0x20
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F01C

	thumb_func_start sub_0205F034
sub_0205F034: ; 0x0205F034
	push {r3, lr}
	mov r1, #0x20
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F044
	mov r0, #1
	pop {r3, pc}
_0205F044:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F034

	thumb_func_start sub_0205F048
sub_0205F048: ; 0x0205F048
	ldr r3, _0205F050 ; =sub_0205EB9C
	mov r1, #0x40
	bx r3
	nop
_0205F050: .word sub_0205EB9C
	thumb_func_end sub_0205F048

	thumb_func_start sub_0205F054
sub_0205F054: ; 0x0205F054
	ldr r3, _0205F05C ; =sub_0205EBA4
	mov r1, #0x40
	bx r3
	nop
_0205F05C: .word sub_0205EBA4
	thumb_func_end sub_0205F054

	thumb_func_start sub_0205F060
sub_0205F060: ; 0x0205F060
	push {r3, lr}
	mov r1, #0x40
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F070
	mov r0, #1
	pop {r3, pc}
_0205F070:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F060

	thumb_func_start sub_0205F074
sub_0205F074: ; 0x0205F074
	push {r3, lr}
	cmp r1, #1
	bne _0205F082
	mov r1, #0x80
	bl sub_0205EB9C
	pop {r3, pc}
_0205F082:
	mov r1, #0x80
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F074

	thumb_func_start sub_0205F08C
sub_0205F08C: ; 0x0205F08C
	ldr r3, _0205F094 ; =sub_0205EBB0
	mov r1, #0x80
	bx r3
	nop
_0205F094: .word sub_0205EBB0
	thumb_func_end sub_0205F08C

	thumb_func_start sub_0205F098
sub_0205F098: ; 0x0205F098
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x1f
	lsl r1, r1, #8
	add r4, r0, #0
	bl sub_0205EBA4
	cmp r5, #5
	bhi _0205F100
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205F0B6: ; jump table
	.short _0205F0C2 - _0205F0B6 - 2 ; case 0
	.short _0205F0C4 - _0205F0B6 - 2 ; case 1
	.short _0205F0D0 - _0205F0B6 - 2 ; case 2
	.short _0205F0DC - _0205F0B6 - 2 ; case 3
	.short _0205F0E8 - _0205F0B6 - 2 ; case 4
	.short _0205F0F4 - _0205F0B6 - 2 ; case 5
_0205F0C2:
	pop {r3, r4, r5, pc}
_0205F0C4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0D0:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0DC:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0E8:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0F4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F100:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F098

	thumb_func_start sub_0205F108
sub_0205F108: ; 0x0205F108
	push {r4, lr}
	mov r1, #0x1f
	lsl r1, r1, #8
	mov r4, #0
	bl sub_0205EBB0
	mov r2, #1
	lsl r2, r2, #0xa
	cmp r0, r2
	bhi _0205F130
	bhs _0205F14A
	lsr r1, r2, #2
	cmp r0, r1
	bhi _0205F128
	beq _0205F142
	b _0205F154
_0205F128:
	lsr r1, r2, #1
	cmp r0, r1
	beq _0205F146
	b _0205F154
_0205F130:
	lsl r1, r2, #1
	cmp r0, r1
	bhi _0205F13A
	beq _0205F14E
	b _0205F154
_0205F13A:
	lsl r1, r2, #2
	cmp r0, r1
	beq _0205F152
	b _0205F154
_0205F142:
	mov r4, #1
	b _0205F154
_0205F146:
	mov r4, #2
	b _0205F154
_0205F14A:
	mov r4, #3
	b _0205F154
_0205F14E:
	mov r4, #4
	b _0205F154
_0205F152:
	mov r4, #5
_0205F154:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205F108

	thumb_func_start sub_0205F158
sub_0205F158: ; 0x0205F158
	push {r3, lr}
	bl sub_0205F108
	cmp r0, #1
	bls _0205F166
	mov r0, #1
	pop {r3, pc}
_0205F166:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F158

	thumb_func_start sub_0205F16C
sub_0205F16C: ; 0x0205F16C
	push {r3, lr}
	bl sub_0205F108
	cmp r0, #2
	bhi _0205F17A
	mov r0, #1
	pop {r3, pc}
_0205F17A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F16C

	thumb_func_start sub_0205F180
sub_0205F180: ; 0x0205F180
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0
	add r4, r2, #0
	mvn r1, r1
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, r1
	bne _0205F19E
	add r2, sp, #8
	ldrh r2, [r2, #0x10]
	add r1, r6, #0
	bl sub_02061348
	add r4, r0, #0
_0205F19E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02060324
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205F22C
	cmp r0, #0
	beq _0205F222
	add r3, sp, #8
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205F350
	add r0, r5, #0
	bl ov5_021DFB5C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205F62C
	cmp r0, #1
	bne _0205F1DA
	add r0, r5, #0
	bl ov5_021E0EEC
	pop {r3, r4, r5, r6, r7, pc}
_0205F1DA:
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #0
	bne _0205F204
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205FC48
	cmp r0, #0
	beq _0205F1F8
	add r0, r5, #0
	bl ov5_021E0EEC
	b _0205F204
_0205F1F8:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0205F204
	add r0, r5, #0
	bl ov5_021E0E94
_0205F204:
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0205FB88
	add r0, r5, #0
	bl sub_0205F378
	add r0, r5, #0
	bl sub_0205F3B8
_0205F222:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F180

	thumb_func_start sub_0205F224
sub_0205F224: ; 0x0205F224
	ldr r3, _0205F228 ; =sub_0205F22C
	bx r3
	; .align 2, 0
_0205F228: .word sub_0205F22C
	thumb_func_end sub_0205F224

	thumb_func_start sub_0205F22C
sub_0205F22C: ; 0x0205F22C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205F248
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F248:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0205F256
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205F256:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _0205F34A
	add r0, r5, #0
	bl sub_0205F158
	cmp r0, #1
	bne _0205F318
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020611FC
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #0x80
	bic r1, r0
	beq _0205F324
	add r0, r5, #0
	bl sub_0205F108
	cmp r0, #2
	bne _0205F324
	add r0, r4, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x20
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	str r0, [sp]
	add r0, r5, #0
	bl sub_02061674
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02250FBC
	cmp r0, #0
	bne _0205F324
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02250FD8
	cmp r0, #1
	bne _0205F324
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02251000
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020611FC
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl ov9_02251000
	b _0205F324
_0205F318:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	str r0, [sp, #8]
_0205F324:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0205F330
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F330:
	cmp r0, #0x20
	bne _0205F344
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _0205F344
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F344:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205F34A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F22C

	thumb_func_start sub_0205F350
sub_0205F350: ; 0x0205F350
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02061310
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206132C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBEC
	add r0, r5, #0
	bl sub_0205F054
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205F350

	thumb_func_start sub_0205F378
sub_0205F378: ; 0x0205F378
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F060
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	bl sub_0205EB0C
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EF6C
	add r0, r4, #0
	bl sub_0205F008
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EFF0
	add r0, r4, #0
	bl sub_0205EB3C
	mov r1, #0
	bl sub_02062EE0
_0205F3B4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205F378

	thumb_func_start sub_0205F3B8
sub_0205F3B8: ; 0x0205F3B8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0205EB0C
	cmp r0, #1
	bne _0205F47A
	add r0, r4, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_0206587C
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0205F3EC
	add r6, r5, #0
	b _0205F3F6
_0205F3EC:
	add r0, r4, #0
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_0205F3F6:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020640D4
	cmp r0, #1
	beq _0205F40C
	add r0, r5, #0
	bl sub_0205DFAC
	cmp r0, #1
	bne _0205F412
_0205F40C:
	ldr r0, _0205F47C ; =0x00000549
	bl sub_02005748
_0205F412:
	add r0, r5, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _0205F422
	ldr r0, _0205F480 ; =0x00000641
	bl sub_02005748
_0205F422:
	add r0, r5, #0
	bl sub_0205DB78
	cmp r0, #1
	bne _0205F432
	ldr r0, _0205F484 ; =0x00000642
	bl sub_02005748
_0205F432:
	add r0, r5, #0
	bl sub_0205DB6C
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _0205F452
	add r0, r5, #0
	bl sub_0205DCF0
	cmp r0, #1
	beq _0205F452
	ldr r0, _0205F488 ; =0x00000655
	bl sub_02005748
_0205F452:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #0
	bne _0205F47A
	add r0, r5, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _0205F474
	add r0, r6, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _0205F47A
_0205F474:
	ldr r0, _0205F48C ; =0x00000653
	bl sub_02005748
_0205F47A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205F47C: .word 0x00000549
_0205F480: .word 0x00000641
_0205F484: .word 0x00000642
_0205F488: .word 0x00000655
_0205F48C: .word 0x00000653
	thumb_func_end sub_0205F3B8

	thumb_func_start sub_0205F490
sub_0205F490: ; 0x0205F490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205EB0C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205EB14
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB3C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205F644
	cmp r0, #0
	beq _0205F4CE
	cmp r0, #5
	beq _0205F4CE
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F4CE:
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #0
	bne _0205F51A
	cmp r6, #0
	beq _0205F568
	cmp r6, #1
	beq _0205F4E6
	cmp r6, #2
	beq _0205F510
	pop {r3, r4, r5, r6, r7, pc}
_0205F4E6:
	add r0, r7, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	beq _0205F568
	cmp r4, #0
	beq _0205F4FC
	cmp r4, #3
	bne _0205F506
_0205F4FC:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F506:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F510:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F51A:
	add r0, r7, #0
	bl sub_02065684
	cmp r0, #1
	bne _0205F568
	cmp r6, #0
	beq _0205F568
	cmp r6, #1
	beq _0205F532
	cmp r6, #2
	beq _0205F54E
	pop {r3, r4, r5, r6, r7, pc}
_0205F532:
	cmp r4, #0
	beq _0205F568
	cmp r4, #3
	bne _0205F544
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F544:
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F54E:
	cmp r4, #0
	beq _0205F568
	cmp r4, #3
	bne _0205F560
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F560:
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EB10
_0205F568:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205F490

	thumb_func_start sub_0205F56C
sub_0205F56C: ; 0x0205F56C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r4, #0
	bl sub_0205EBC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205F56C

	thumb_func_start sub_0205F588
sub_0205F588: ; 0x0205F588
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB0C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB14
	cmp r4, #0
	bne _0205F5A0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5A0:
	cmp r4, #2
	bne _0205F5A8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5A8:
	cmp r4, #1
	bne _0205F5DE
	cmp r0, #0
	beq _0205F5B4
	cmp r0, #3
	bne _0205F5B8
_0205F5B4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5B8:
	add r0, r5, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205F5CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5CC:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _0205F5DE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5DE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F588

	thumb_func_start sub_0205F5E4
sub_0205F5E4: ; 0x0205F5E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r4, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r1, r5, #0
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02064208
	add r0, r4, #0
	bl sub_020656DC
	add r0, r5, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205F5E4

	thumb_func_start sub_0205F62C
sub_0205F62C: ; 0x0205F62C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F644
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0205F6A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F62C

	thumb_func_start sub_0205F644
sub_0205F644: ; 0x0205F644
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02061630
	cmp r0, #1
	bne _0205F668
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0205F668:
	add r0, r5, #0
	bl sub_0205EF84
	cmp r0, #1
	bne _0205F676
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F676:
	lsl r0, r7, #0x18
	ldr r5, _0205F69C ; =0x020EDB84
	lsr r6, r0, #0x18
_0205F67C:
	ldr r1, [r5, #0]
	add r0, r6, #0
	blx r1
	cmp r0, #1
	bne _0205F68E
	ldr r0, _0205F6A0 ; =0x020EDB88
	lsl r1, r4, #3
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0205F68E:
	add r5, #8
	ldr r0, [r5, #0]
	add r4, r4, #1
	cmp r0, #0
	bne _0205F67C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205F69C: .word 0x020EDB84
_0205F6A0: .word 0x020EDB88
	thumb_func_end sub_0205F644

	thumb_func_start sub_0205F6A4
sub_0205F6A4: ; 0x0205F6A4
	push {r3, lr}
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _0205F6C0 ; =0x020EDAEC
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _0205F6BA
	mov r0, #1
	pop {r3, pc}
_0205F6BA:
	mov r0, #0
	pop {r3, pc}
	nop
_0205F6C0: .word 0x020EDAEC
	thumb_func_end sub_0205F6A4

	thumb_func_start sub_0205F6C4
sub_0205F6C4: ; 0x0205F6C4
	push {r3, lr}
	bl sub_0205FA6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F6C4

	thumb_func_start sub_0205F6D0
sub_0205F6D0: ; 0x0205F6D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205FAB0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	ldr r0, [sp]
	cmp r0, #0
	beq _0205F782
	add r0, r5, #0
	bl sub_0205FA6C
	cmp r7, #1
	beq _0205F722
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F722:
	add r0, r6, #0
	bl sub_0206447C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F73C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F73C:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r6, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F782:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0205FB10
	cmp r0, #0
	bne _0205F7EA
	add r0, r5, #0
	bl sub_0205FA6C
	add r0, r6, #0
	bl sub_0206447C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F7AE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F7AE:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r6, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0205F7FC
_0205F7EA:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205FB40
_0205F7FC:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F6D0

	thumb_func_start sub_0205F808
sub_0205F808: ; 0x0205F808
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_0206299C
	add r4, r0, #0
	ldr r0, _0205F958 ; =0x00000654
	bl sub_02005748
	cmp r4, #0
	bne _0205F8C2
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #1
	bne _0205F85C
	add r0, r5, #0
	bl sub_0205EBB8
	cmp r0, #3
	blt _0205F85C
	cmp r7, #0
	bne _0205F85C
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F85C:
	add r0, r4, #0
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F876
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F876:
	mov r1, #6
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F01C
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F8C2:
	cmp r4, #1
	bne _0205F954
	add r0, r5, #0
	bl sub_0205F034
	cmp r0, #0
	bne _0205F90E
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F8FE
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EBBC
_0205F8FE:
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F90E:
	mov r1, #6
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F01C
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F954:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205F958: .word 0x00000654
	thumb_func_end sub_0205F808

	thumb_func_start sub_0205F95C
sub_0205F95C: ; 0x0205F95C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F988
	ldr r0, _0205F9A8 ; =0x00000656
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5f
	mov r3, #2
	bl sub_02060B64
	b _0205F994
_0205F988:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5d
	mov r3, #3
	bl sub_02060B64
_0205F994:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F074
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205F9A8: .word 0x00000656
	thumb_func_end sub_0205F95C

	thumb_func_start sub_0205F9AC
sub_0205F9AC: ; 0x0205F9AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F9D8
	ldr r0, _0205F9F8 ; =0x00000656
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5e
	mov r3, #2
	bl sub_02060B64
	b _0205F9E4
_0205F9D8:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5c
	mov r3, #2
	bl sub_02060B64
_0205F9E4:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F074
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205F9F8: .word 0x00000656
	thumb_func_end sub_0205F9AC

	thumb_func_start sub_0205F9FC
sub_0205F9FC: ; 0x0205F9FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02060B7C
	cmp r0, #0
	bne _0205FA3C
	mov r0, #1
	mov r1, #0x14
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EBBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205FA3C:
	mov r0, #1
	add r1, r0, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F9FC

	thumb_func_start sub_0205FA6C
sub_0205FA6C: ; 0x0205FA6C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EF58
	cmp r0, #1
	bne _0205FAAE
	add r0, r4, #0
	bl sub_0205EB3C
	mov r1, #6
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r4, #0
	bl sub_0205F08C
	cmp r0, #0
	bne _0205FA96
	add r0, r4, #0
	bl sub_0205EBC0
_0205FA96:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EF40
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F074
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F01C
_0205FAAE:
	pop {r4, pc}
	thumb_func_end sub_0205FA6C

	thumb_func_start sub_0205FAB0
sub_0205FAB0: ; 0x0205FAB0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062C00
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02063050
	add r4, sp, #0xc
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	mov r2, #1
	str r0, [r3, #0]
	add r0, r5, #0
	lsl r2, r2, #0xe
	bl sub_02064418
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020644A4
	cmp r0, #0
	beq _0205FAF8
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _0205FAFE
_0205FAF8:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205FAFE:
	cmp r0, r1
	ble _0205FB08
	add sp, #0x18
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205FB08:
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FAB0

	thumb_func_start sub_0205FB10
sub_0205FB10: ; 0x0205FB10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EBB8
	add r1, r0, #0
	cmp r4, #1
	bne _0205FB28
	sub r1, r1, #1
	bpl _0205FB34
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205FB28:
	cmp r4, #2
	bne _0205FB34
	add r1, r1, #1
	cmp r1, #3
	ble _0205FB34
	mov r1, #3
_0205FB34:
	add r0, r5, #0
	bl sub_0205EBBC
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FB10

	thumb_func_start sub_0205FB40
sub_0205FB40: ; 0x0205FB40
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0205EB3C
	str r0, [sp]
	add r0, r6, #0
	mov r4, #0x10
	bl sub_0205EBB8
	mov r5, #5
	cmp r0, #1
	beq _0205FB64
	cmp r0, #2
	beq _0205FB68
	cmp r0, #3
	beq _0205FB6E
	b _0205FB72
_0205FB64:
	mov r4, #0x50
	b _0205FB72
_0205FB68:
	mov r4, #0x14
	mov r5, #6
	b _0205FB72
_0205FB6E:
	mov r4, #0x14
	mov r5, #6
_0205FB72:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02065838
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl sub_02060B64
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FB40

	thumb_func_start sub_0205FB88
sub_0205FB88: ; 0x0205FB88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_0205EB74
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EB3C
	add r1, r0, #0
	cmp r4, #0
	beq _0205FBAE
	cmp r4, #1
	beq _0205FBC4
	cmp r4, #2
	bne _0205FBDA
_0205FBAE:
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0205FBE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205FBC4:
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020602DC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205FBDA:
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205FB88

	thumb_func_start sub_0205FBE4
sub_0205FBE4: ; 0x0205FBE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r3, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	bl sub_0205FC48
	cmp r0, #0
	beq _0205FC04
	cmp r0, #1
	beq _0205FC1A
	cmp r0, #2
	beq _0205FC30
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC04:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_0205FD20
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC1A:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_0205FD40
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC30:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_02060258
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FBE4

	thumb_func_start sub_0205FC48
sub_0205FC48: ; 0x0205FC48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205FCC0
	add r4, r0, #0
	bl sub_0205FC64
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FC48

	thumb_func_start sub_0205FC64
sub_0205FC64: ; 0x0205FC64
	push {r3, lr}
	cmp r0, #0
	beq _0205FC74
	cmp r0, #1
	beq _0205FC78
	cmp r0, #2
	beq _0205FC7C
	b _0205FC80
_0205FC74:
	mov r0, #0
	pop {r3, pc}
_0205FC78:
	mov r0, #1
	pop {r3, pc}
_0205FC7C:
	mov r0, #2
	pop {r3, pc}
_0205FC80:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205FC64

	thumb_func_start sub_0205FC88
sub_0205FC88: ; 0x0205FC88
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0205DD5C
	cmp r0, #1
	bne _0205FC9C
	mov r0, #4
	pop {r3, r4, r5, pc}
_0205FC9C:
	add r0, r5, #0
	bl sub_0205DD50
	cmp r0, #1
	bne _0205FCAA
	mov r0, #8
	pop {r3, r4, r5, pc}
_0205FCAA:
	add r0, r5, #0
	bl sub_0205DD44
	cmp r0, #1
	bne _0205FCB6
	mov r4, #0xc
_0205FCB6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FC88

	thumb_func_start sub_0205FCBC
sub_0205FCBC: ; 0x0205FCBC
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0205FCBC

	thumb_func_start sub_0205FCC0
sub_0205FCC0: ; 0x0205FCC0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	bne _0205FCD8
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205FCD8:
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F108
	cmp r0, #0
	beq _0205FCF8
	cmp r0, #1
	beq _0205FCF8
	cmp r0, #2
	beq _0205FCF8
	add r0, r5, #0
	bl sub_0205EA94
	add r6, r0, #0
_0205FCF8:
	cmp r6, r4
	beq _0205FD12
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _0205FD12
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205FD12:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FCC0

	thumb_func_start sub_0205FD20
sub_0205FD20: ; 0x0205FD20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205FD20

	thumb_func_start sub_0205FD40
sub_0205FD40: ; 0x0205FD40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r4, [sp, #0x20]
	bl sub_0205F108
	cmp r0, #5
	bhi _0205FDB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205FD62: ; jump table
	.short _0205FDB6 - _0205FD62 - 2 ; case 0
	.short _0205FDB6 - _0205FD62 - 2 ; case 1
	.short _0205FD6E - _0205FD62 - 2 ; case 2
	.short _0205FD80 - _0205FD62 - 2 ; case 3
	.short _0205FD92 - _0205FD62 - 2 ; case 4
	.short _0205FDA4 - _0205FD62 - 2 ; case 5
_0205FD6E:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205FECC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FD80:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020600CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FD92:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060150
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FDA4:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020601D4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FDB6:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205FDC8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FD40

	thumb_func_start sub_0205FDC8
sub_0205FDC8: ; 0x0205FDC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	bl sub_02060B7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0205FE66
	mov r6, #4
	add r0, r4, #0
	tst r0, r6
	beq _0205FDF2
	mov r0, #0x38
	str r0, [sp, #4]
	mov r6, #3
	b _0205FEAE
_0205FDF2:
	mov r0, #0x80
	tst r0, r4
	beq _0205FE00
	mov r0, #0x75
	str r0, [sp, #4]
	mov r6, #2
	b _0205FEAE
_0205FE00:
	cmp r4, #0
	beq _0205FE20
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0205FE16
	ldr r0, _0205FEC8 ; =0x00000601
	bl sub_02005748
_0205FE16:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02062994
	b _0205FEAE
_0205FE20:
	add r0, r5, #0
	mov r4, #0xc
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _0205FE42
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _0205FE42
	mov r4, #0x58
	mov r6, #5
_0205FE42:
	add r0, r7, #0
	bl sub_02062BE8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_0205FC88
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FEAE
_0205FE66:
	cmp r4, #0
	beq _0205FE6E
	cmp r4, #0x20
	bne _0205FE94
_0205FE6E:
	add r0, r7, #0
	mov r6, #5
	bl sub_02062BE8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #0x10
	bl sub_0205FCBC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FEAE
_0205FE94:
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0205FEA6
	ldr r0, _0205FEC8 ; =0x00000601
	bl sub_02005748
_0205FEA6:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02062994
_0205FEAE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205FEC8: .word 0x00000601
	thumb_func_end sub_0205FDC8

	thumb_func_start sub_0205FECC
sub_0205FECC: ; 0x0205FECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	bl sub_020611FC
	add r6, r0, #0
	mov r0, #0x80
	add r1, r6, #0
	bic r1, r0
	beq _0205FF56
	add r0, r4, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02063030
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063040
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02250FBC
	cmp r0, #0
	bne _0205FF56
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02250FD8
	cmp r0, #1
	bne _0205FF56
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02251000
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020611FC
	add r6, r0, #0
_0205FF56:
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0205FFC2
	mov r0, #0x80
	tst r0, r6
	beq _0205FF78
	add r0, r5, #0
	mov r7, #0x75
	mov r6, #2
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FF78:
	cmp r6, #0
	beq _0205FF90
	ldr r0, _02060008 ; =0x00000601
	mov r7, #0x1c
	mov r6, #1
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02062994
	b _0205FFEE
_0205FF90:
	add r0, r5, #0
	mov r7, #0xc
	mov r6, #4
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _0205FFB4
	add r1, sp, #0x18
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _0205FFB4
	mov r7, #0x58
	mov r6, #5
_0205FFB4:
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FFC2:
	cmp r6, #0
	beq _0205FFCA
	cmp r6, #0x20
	bne _0205FFDC
_0205FFCA:
	add r0, r5, #0
	mov r6, #5
	mov r7, #0x10
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FFDC:
	ldr r0, _02060008 ; =0x00000601
	mov r7, #0x1c
	mov r6, #1
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02062994
_0205FFEE:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02060008: .word 0x00000601
	thumb_func_end sub_0205FECC

	thumb_func_start sub_0206000C
sub_0206000C: ; 0x0206000C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r3, [sp, #0x34]
	add r5, r0, #0
	str r1, [sp]
	add r4, r2, #0
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x34]
	bl sub_020611FC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0206007E
	cmp r6, #0
	beq _0206004C
	lsl r0, r4, #2
	str r0, [sp, #8]
	ldr r4, [r7, r0]
	ldr r0, _020600C8 ; =0x00000601
	mov r6, #1
	bl sub_02005748
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r2, r1]
	bl sub_02062994
	b _020600B6
_0206004C:
	ldr r0, [sp, #0x24]
	lsl r7, r4, #2
	ldr r4, [r0, r7]
	add r0, r5, #0
	mov r6, #4
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _02060076
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _02060076
	ldr r0, [sp, #0x28]
	mov r6, #5
	ldr r4, [r0, r7]
_02060076:
	add r0, r5, #0
	bl sub_020615C8
	b _020600B6
_0206007E:
	cmp r6, #0
	beq _02060086
	cmp r6, #0x20
	bne _0206009C
_02060086:
	ldr r1, [sp, #0x2c]
	lsl r0, r4, #2
	ldr r4, [r1, r0]
	add r0, r5, #0
	mov r6, #4
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _020600B6
_0206009C:
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r4, [r7, r0]
	ldr r0, _020600C8 ; =0x00000601
	mov r6, #1
	bl sub_02005748
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r2, r1]
	bl sub_02062994
_020600B6:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020600C8: .word 0x00000601
	thumb_func_end sub_0206000C

	thumb_func_start sub_020600CC
sub_020600CC: ; 0x020600CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _0206013C ; =0x020EDACC
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060140 ; =0x020EDABC
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060144 ; =0x020EDAAC
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060148 ; =0x020EDA9C
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _0206014C ; =0x020EDA8C
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206013C: .word 0x020EDACC
_02060140: .word 0x020EDABC
_02060144: .word 0x020EDAAC
_02060148: .word 0x020EDA9C
_0206014C: .word 0x020EDA8C
	thumb_func_end sub_020600CC

	thumb_func_start sub_02060150
sub_02060150: ; 0x02060150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _020601C0 ; =0x020EDA7C
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601C4 ; =0x020EDA5C
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601C8 ; =0x020ED9EC
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601CC ; =0x020ED9CC
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601D0 ; =0x020EDADC
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020601C0: .word 0x020EDA7C
_020601C4: .word 0x020EDA5C
_020601C8: .word 0x020ED9EC
_020601CC: .word 0x020ED9CC
_020601D0: .word 0x020EDADC
	thumb_func_end sub_02060150

	thumb_func_start sub_020601D4
sub_020601D4: ; 0x020601D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _02060244 ; =0x020EDA2C
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060248 ; =0x020EDA1C
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _0206024C ; =0x020EDA6C
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060250 ; =0x020ED9DC
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060254 ; =0x020EDA3C
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02060244: .word 0x020EDA2C
_02060248: .word 0x020EDA1C
_0206024C: .word 0x020EDA6C
_02060250: .word 0x020ED9DC
_02060254: .word 0x020EDA3C
	thumb_func_end sub_020601D4

	thumb_func_start sub_02060258
sub_02060258: ; 0x02060258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r2, #0
	add r7, r0, #0
	add r6, r1, #0
	add r4, r5, #0
	bl sub_0205F108
	cmp r0, #3
	beq _02060276
	cmp r0, #4
	beq _0206028A
	cmp r0, #5
	beq _0206029E
	b _020602B0
_02060276:
	ldr r4, _020602D0 ; =0x020EDA0C
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
	b _020602B0
_0206028A:
	ldr r4, _020602D4 ; =0x020EDA4C
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
	b _020602B0
_0206029E:
	ldr r4, _020602D8 ; =0x020ED9FC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
_020602B0:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020602D0: .word 0x020EDA0C
_020602D4: .word 0x020EDA4C
_020602D8: .word 0x020ED9FC
	thumb_func_end sub_02060258

	thumb_func_start sub_020602DC
sub_020602DC: ; 0x020602DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EC88
	cmp r0, #1
	add r0, sp, #0x10
	bne _0206030A
	ldrh r1, [r0, #0x10]
	add r2, r6, #0
	add r3, r7, #0
	str r1, [sp]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0206078C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206030A:
	ldrh r1, [r0, #0x10]
	add r2, r6, #0
	add r3, r7, #0
	str r1, [sp]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02060420
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020602DC

	thumb_func_start sub_02060324
sub_02060324: ; 0x02060324
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0205EB74
	cmp r0, #1
	bne _02060384
	mov r0, #2
	tst r0, r5
	beq _02060384
	add r0, r4, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	add r5, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD90
	cmp r0, #0
	bne _02060384
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD9C
	cmp r0, #0
	bne _02060384
	add r0, r4, #0
	mov r5, #1
	bl sub_0205EC88
	cmp r0, #1
	bne _0206036A
	mov r5, #0
_0206036A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EC78
	cmp r5, #0
	bne _0206037E
	ldr r0, _02060388 ; =0x0000061C
	bl sub_02005748
	pop {r3, r4, r5, pc}
_0206037E:
	ldr r0, _0206038C ; =0x00000619
	bl sub_02005748
_02060384:
	pop {r3, r4, r5, pc}
	nop
_02060388: .word 0x0000061C
_0206038C: .word 0x00000619
	thumb_func_end sub_02060324

	thumb_func_start sub_02060390
sub_02060390: ; 0x02060390
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x4c
	bl sub_0205EBB8
	cmp r0, #1
	beq _020603A8
	cmp r0, #2
	beq _020603AC
	cmp r0, #3
	beq _020603B0
	b _020603B2
_020603A8:
	mov r4, #0x10
	b _020603B2
_020603AC:
	mov r4, #0x50
	b _020603B2
_020603B0:
	mov r4, #0x14
_020603B2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065838
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02060390

	thumb_func_start sub_020603BC
sub_020603BC: ; 0x020603BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #1
	mov r2, #3
	bl sub_0205EBCC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EFB0
	cmp r0, #0
	bne _020603E0
	cmp r4, #2
	blt _020603E0
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF98
_020603E0:
	cmp r4, #3
	bne _020603E8
	mov r0, #1
	pop {r3, r4, r5, pc}
_020603E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020603BC

	thumb_func_start sub_020603EC
sub_020603EC: ; 0x020603EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #1
	bl sub_0205EBB8
	sub r4, r0, #1
	bpl _020603FE
	mov r4, #0
	add r6, r4, #0
_020603FE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBBC
	add r0, r5, #0
	bl sub_0205EFB0
	cmp r0, #1
	bne _0206041C
	cmp r4, #0
	bne _0206041C
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_0206041C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020603EC

	thumb_func_start sub_02060420
sub_02060420: ; 0x02060420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r1, r3, #0
	add r6, r0, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl sub_02060494
	cmp r0, #3
	bhi _02060490
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02060444: ; jump table
	.short _0206044C - _02060444 - 2 ; case 0
	.short _0206045E - _02060444 - 2 ; case 1
	.short _02060470 - _02060444 - 2 ; case 2
	.short _02060482 - _02060444 - 2 ; case 3
_0206044C:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060548
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206045E:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060570
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02060470:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060688
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02060482:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020606C8
_02060490:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060420

	thumb_func_start sub_02060494
sub_02060494: ; 0x02060494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020604E4
	add r4, r0, #0
	bl sub_020604B0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060494

	thumb_func_start sub_020604B0
sub_020604B0: ; 0x020604B0
	push {r3, lr}
	cmp r0, #3
	bhi _020604DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020604C2: ; jump table
	.short _020604CA - _020604C2 - 2 ; case 0
	.short _020604CE - _020604C2 - 2 ; case 1
	.short _020604D2 - _020604C2 - 2 ; case 2
	.short _020604D6 - _020604C2 - 2 ; case 3
_020604CA:
	mov r0, #0
	pop {r3, pc}
_020604CE:
	mov r0, #1
	pop {r3, pc}
_020604D2:
	mov r0, #2
	pop {r3, pc}
_020604D6:
	mov r0, #1
	pop {r3, pc}
_020604DA:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020604B0

	thumb_func_start sub_020604E4
sub_020604E4: ; 0x020604E4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	bne _02060512
	bl sub_0205EFB0
	cmp r0, #1
	bne _02060506
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_02060506:
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02060512:
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
	cmp r6, r4
	beq _0206053A
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _0206053A
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_0206053A:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020604E4

	thumb_func_start sub_02060548
sub_02060548: ; 0x02060548
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060548

	thumb_func_start sub_02060570
sub_02060570: ; 0x02060570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _02060598
	add r0, r5, #0
	mov r7, #0x38
	mov r6, #3
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0206066C
_02060598:
	mov r0, #0x80
	tst r0, r4
	beq _020605B0
	add r0, r5, #0
	mov r7, #0x75
	mov r6, #2
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0206066C
_020605B0:
	mov r0, #0x10
	tst r0, r4
	beq _020605D0
	add r0, r5, #0
	mov r7, #0x50
	mov r6, #5
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	b _0206066C
_020605D0:
	mov r0, #0x40
	tst r0, r4
	beq _020605FC
	ldr r0, [sp]
	mov r7, #0
	mov r6, #1
	bl sub_0206299C
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r6, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0206066C
_020605FC:
	cmp r4, #0
	beq _02060654
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_020615E0
	cmp r0, #0
	bne _0206062E
	mov r0, #8
	mov r7, #0x1c
	mov r6, #1
	tst r0, r4
	bne _0206061E
	ldr r0, _02060684 ; =0x00000601
	bl sub_02005748
_0206061E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _0206066C
_0206062E:
	ldr r0, [sp]
	mov r7, #0
	mov r6, #1
	bl sub_0206299C
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r6, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0206066C
_02060654:
	add r0, r5, #0
	mov r7, #0x50
	mov r6, #5
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EBBC
_0206066C:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02065838
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02060684: .word 0x00000601
	thumb_func_end sub_02060570

	thumb_func_start sub_02060688
sub_02060688: ; 0x02060688
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EBC0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #1
	beq _020606C4
	add r0, r6, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
_020606C4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02060688

	thumb_func_start sub_020606C8
sub_020606C8: ; 0x020606C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_020603EC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205EA94
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _020606FE
	add r0, r7, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #3
	b _02060768
_020606FE:
	mov r0, #0x80
	tst r0, r4
	beq _02060712
	add r0, r7, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #2
	b _02060768
_02060712:
	mov r0, #0x40
	tst r0, r4
	beq _0206072C
	add r0, r7, #0
	mov r1, #0
	bl sub_02065838
	str r0, [sp, #8]
	add r0, r5, #0
	mov r6, #1
	bl sub_0205EBC0
	b _02060768
_0206072C:
	cmp r4, #0
	beq _0206075C
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #8]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0206074C
	ldr r0, _02060788 ; =0x00000601
	bl sub_02005748
_0206074C:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060768
_0206075C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02060390
	str r0, [sp, #8]
	mov r6, #5
_02060768:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02060776
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_02060776:
	ldr r1, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02060788: .word 0x00000601
	thumb_func_end sub_020606C8

	thumb_func_start sub_0206078C
sub_0206078C: ; 0x0206078C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r1, r3, #0
	add r6, r0, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl sub_02060800
	cmp r0, #3
	bhi _020607FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020607B0: ; jump table
	.short _020607B8 - _020607B0 - 2 ; case 0
	.short _020607CA - _020607B0 - 2 ; case 1
	.short _020607DC - _020607B0 - 2 ; case 2
	.short _020607EE - _020607B0 - 2 ; case 3
_020607B8:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020608BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607CA:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020608E4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607DC:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060A60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607EE:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060AA0
_020607FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206078C

	thumb_func_start sub_02060800
sub_02060800: ; 0x02060800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02060850
	add r4, r0, #0
	bl sub_0206081C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060800

	thumb_func_start sub_0206081C
sub_0206081C: ; 0x0206081C
	push {r3, lr}
	cmp r0, #3
	bhi _02060846
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206082E: ; jump table
	.short _02060836 - _0206082E - 2 ; case 0
	.short _0206083A - _0206082E - 2 ; case 1
	.short _0206083E - _0206082E - 2 ; case 2
	.short _02060842 - _0206082E - 2 ; case 3
_02060836:
	mov r0, #0
	pop {r3, pc}
_0206083A:
	mov r0, #1
	pop {r3, pc}
_0206083E:
	mov r0, #2
	pop {r3, pc}
_02060842:
	mov r0, #1
	pop {r3, pc}
_02060846:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206081C

	thumb_func_start sub_02060850
sub_02060850: ; 0x02060850
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EBB8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02060880
	cmp r6, #2
	bge _02060874
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02060874:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_02060880:
	add r0, r5, #0
	bl sub_0205EA78
	cmp r0, r4
	beq _020608B0
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _020608B0
	cmp r6, #2
	bge _020608A4
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_020608A4:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_020608B0:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02060850

	thumb_func_start sub_020608BC
sub_020608BC: ; 0x020608BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020608BC

	thumb_func_start sub_020608E4
sub_020608E4: ; 0x020608E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _0206091A
	add r0, r6, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #3
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _02060A4A
_0206091A:
	mov r0, #0x80
	tst r0, r4
	beq _02060940
	add r0, r6, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #2
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _02060A4A
_02060940:
	mov r0, #0x10
	tst r0, r4
	beq _02060994
	add r0, r5, #0
	bl sub_0205EBB8
	cmp r0, #3
	blt _0206096C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02060390
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #5
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	b _02060A4A
_0206096C:
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #4]
	mov r0, #8
	mov r7, #1
	tst r0, r4
	bne _02060984
	ldr r0, _02060A5C ; =0x00000601
	bl sub_02005748
_02060984:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060A4A
_02060994:
	mov r0, #0x40
	tst r0, r4
	beq _020609C6
	ldr r0, [sp]
	bl sub_0206299C
	mov r1, #0
	add r4, r0, #0
	bl sub_02065838
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	mov r7, #1
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r7, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _02060A4A
_020609C6:
	cmp r4, #0
	beq _02060A2C
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #0
	bne _02060A00
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #4]
	mov r0, #8
	mov r7, #1
	tst r0, r4
	bne _020609F0
	ldr r0, _02060A5C ; =0x00000601
	bl sub_02005748
_020609F0:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060A4A
_02060A00:
	ldr r0, [sp]
	mov r7, #1
	bl sub_0206299C
	mov r1, #0
	add r4, r0, #0
	bl sub_02065838
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r7, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _02060A4A
_02060A2C:
	add r0, r5, #0
	add r1, r6, #0
	mov r7, #5
	bl sub_02060390
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
_02060A4A:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r3, r7, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02060A5C: .word 0x00000601
	thumb_func_end sub_020608E4

	thumb_func_start sub_02060A60
sub_02060A60: ; 0x02060A60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EBC0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #1
	beq _02060A9C
	add r0, r6, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
_02060A9C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02060A60

	thumb_func_start sub_02060AA0
sub_02060AA0: ; 0x02060AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_020603EC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205EA94
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _02060AD6
	add r0, r7, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #3
	b _02060B40
_02060AD6:
	mov r0, #0x80
	tst r0, r4
	beq _02060AEA
	add r0, r7, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #2
	b _02060B40
_02060AEA:
	mov r0, #0x40
	tst r0, r4
	beq _02060B04
	add r0, r7, #0
	mov r1, #0
	bl sub_02065838
	str r0, [sp, #8]
	add r0, r5, #0
	mov r6, #1
	bl sub_0205EBC0
	b _02060B40
_02060B04:
	cmp r4, #0
	beq _02060B34
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1c
	mov r6, #1
	bl sub_02065838
	str r0, [sp, #8]
	mov r0, #8
	tst r0, r4
	bne _02060B24
	ldr r0, _02060B60 ; =0x00000601
	bl sub_02005748
_02060B24:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060B40
_02060B34:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02060390
	str r0, [sp, #8]
	mov r6, #5
_02060B40:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02060B4E
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_02060B4E:
	ldr r1, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02060B60: .word 0x00000601
	thumb_func_end sub_02060AA0

	thumb_func_start sub_02060B64
sub_02060B64: ; 0x02060B64
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_0205EC20
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065638
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02060B64

	thumb_func_start sub_02060B7C
sub_02060B7C: ; 0x02060B7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02060C24
	mov r1, #0xa
	str r0, [sp]
	tst r0, r1
	beq _02060BA8
	mov r0, #1
	orr r4, r0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060E40
	cmp r0, #0
	beq _02060BA8
	mov r0, #8
	orr r4, r0
_02060BA8:
	ldr r0, [sp]
	mov r1, #4
	tst r0, r1
	beq _02060BB4
	mov r0, #2
	orr r4, r0
_02060BB4:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060CE4
	cmp r0, #0
	beq _02060BC6
	mov r0, #4
	orr r4, r0
_02060BC6:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060D98
	cmp r0, #0
	beq _02060BD8
	mov r0, #0x80
	orr r4, r0
_02060BD8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060EE4
	cmp r0, #1
	bne _02060BEA
	mov r0, #0x10
	orr r4, r0
_02060BEA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060F4C
	cmp r0, #1
	bne _02060BFC
	mov r0, #0x20
	orr r4, r0
_02060BFC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060FA8
	cmp r0, #1
	bne _02060C0E
	mov r0, #0x41
	orr r4, r0
_02060C0E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061058
	cmp r0, #1
	bne _02060C20
	mov r0, #1
	orr r4, r0
_02060C20:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060B7C

	thumb_func_start sub_02060C24
sub_02060C24: ; 0x02060C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r2, [sp, #4]
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_0206419C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_020641A8
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_02063050
	ldr r1, [sp, #0x14]
	ldr r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r6, r3
	mov r4, #0
	bl sub_02063FAC
	cmp r0, #1
	bne _02060C78
	mov r0, #1
	orr r4, r0
_02060C78:
	add r0, r5, #0
	bl sub_02062C00
	ldr r2, [sp, #0x14]
	add r1, sp, #0x18
	str r1, [sp]
	ldr r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x1c
	add r2, r7, r2
	add r3, r6, r3
	bl sub_0205507C
	cmp r0, #1
	bne _02060CA8
	mov r0, #2
	orr r4, r0
	add r1, sp, #0x18
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02060CA8
	mov r0, #8
	orr r4, r0
_02060CA8:
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r7, r1
	bl sub_02064004
	cmp r0, #1
	bne _02060CC2
	mov r0, #2
	orr r4, r0
_02060CC2:
	add r0, r5, #0
	ldr r1, [sp, #0x14]
	ldr r5, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	add r1, r7, r1
	add r3, r5, r3
	bl sub_02063F00
	cmp r0, #1
	bne _02060CDC
	mov r0, #4
	orr r4, r0
_02060CDC:
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02060C24

	thumb_func_start sub_02060CE4
sub_02060CE4: ; 0x02060CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r7, r1, #0
	cmp r4, r0
	beq _02060D92
	add r0, r7, #0
	bl sub_02062C00
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r5, r6
	add r2, r7, r2
	mov r3, #0
	str r4, [sp]
	bl sub_020683D8
	cmp r0, #1
	bne _02060D36
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D36:
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl sub_02054F94
	cmp r4, #3
	bhi _02060D92
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060D52: ; jump table
	.short _02060D5A - _02060D52 - 2 ; case 0
	.short _02060D68 - _02060D52 - 2 ; case 1
	.short _02060D76 - _02060D52 - 2 ; case 2
	.short _02060D84 - _02060D52 - 2 ; case 3
_02060D5A:
	bl sub_0205DB84
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D68:
	bl sub_0205DB90
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D76:
	bl sub_0205DB9C
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D84:
	bl sub_0205DBA8
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060CE4

	thumb_func_start sub_02060D98
sub_02060D98: ; 0x02060D98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0
	add r4, r2, #0
	sub r0, r5, #1
	add r7, r1, #0
	cmp r4, r0
	beq _02060E3A
	add r0, r7, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r7, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r1, r6, r1
	add r2, r7, r2
	bl sub_02054F94
	cmp r4, #3
	bhi _02060E14
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060DEE: ; jump table
	.short _02060DF6 - _02060DEE - 2 ; case 0
	.short _02060DFE - _02060DEE - 2 ; case 1
	.short _02060E06 - _02060DEE - 2 ; case 2
	.short _02060E0E - _02060DEE - 2 ; case 3
_02060DF6:
	bl sub_0205DBB4
	add r5, r0, #0
	b _02060E14
_02060DFE:
	bl sub_0205DBC0
	add r5, r0, #0
	b _02060E14
_02060E06:
	bl sub_0205DBCC
	add r5, r0, #0
	b _02060E14
_02060E0E:
	bl sub_0205DBD8
	add r5, r0, #0
_02060E14:
	cmp r5, #1
	bne _02060E3A
	ldr r0, [sp]
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _02060E3A
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r1, r6, r1
	add r2, r7, r2
	add r3, r4, #0
	bl ov9_022511A0
	cmp r0, #1
	bne _02060E3A
	mov r5, #0
_02060E3A:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060D98

	thumb_func_start sub_02060E40
sub_02060E40: ; 0x02060E40
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02060EE0
	add r0, r5, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02054F94
	cmp r4, #3
	bhi _02060EB8
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060E80: ; jump table
	.short _02060E88 - _02060E80 - 2 ; case 0
	.short _02060E94 - _02060E80 - 2 ; case 1
	.short _02060EA0 - _02060E80 - 2 ; case 2
	.short _02060EAC - _02060E80 - 2 ; case 3
_02060E88:
	bl sub_0205DB10
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060E94:
	bl sub_0205DB1C
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EA0:
	bl sub_0205DB04
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EAC:
	bl sub_0205DAF8
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EB8:
	add r0, r4, #0
	bl sub_0206419C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	add r2, r2, r3
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #1
	bne _02060EE0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EE0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060E40

	thumb_func_start sub_02060EE4
sub_02060EE4: ; 0x02060EE4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	add r5, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r5, r0
	beq _02060F48
	add r0, r4, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r4, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r4, r2
	bl sub_02054F94
	add r4, r0, #0
	cmp r5, #3
	bne _02060F36
	bl sub_0205DD90
	cmp r0, #0
	beq _02060F36
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060F36:
	cmp r5, #2
	bne _02060F48
	add r0, r4, #0
	bl sub_0205DD9C
	cmp r0, #0
	beq _02060F48
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060F48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060EE4

	thumb_func_start sub_02060F4C
sub_02060F4C: ; 0x02060F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02060FA2
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp, #4]
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r2, r3
	bl sub_02054F94
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206406C
	cmp r0, #0
	beq _02060FA2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060FA2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060F4C

	thumb_func_start sub_02060FA8
sub_02060FA8: ; 0x02060FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02061052
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r3, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r6, r7
	add r2, r3, r2
	bl sub_02054F94
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_0205EB74
	cmp r0, #1
	bne _02061034
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	bne _02061016
	cmp r4, #1
	bls _02061010
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02061010:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02061016:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _02061052
	sub r0, r4, #2
	cmp r0, #1
	bls _0206102E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206102E:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02061034:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	beq _0206104C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _02061052
_0206104C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02061052:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060FA8

	thumb_func_start sub_02061058
sub_02061058: ; 0x02061058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	mvn r1, r1
	cmp r4, r1
	beq _020610FA
	bl sub_0205EB74
	cmp r0, #1
	bne _020610FA
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp, #4]
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r2, r3
	bl sub_02054F94
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #0
	beq _020610B8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610B8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #0
	beq _020610CA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610CA:
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #0
	beq _020610DA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610DA:
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #0
	beq _020610EA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610EA:
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #0
	beq _020610FA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610FA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061058

	thumb_func_start sub_02061100
sub_02061100: ; 0x02061100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02062C00
	mov r1, #9
	str r0, [sp, #4]
	bl sub_02071CB4
	cmp r0, #1
	bne _02061178
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl ov9_02250F90
	cmp r0, #1
	bne _02061160
	mov r0, #2
	orr r4, r0
_02061160:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsl r2, r0, #1
	ldr r3, [sp, #8]
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl sub_02063F00
	cmp r0, #1
	bne _02061178
	mov r0, #4
	orr r4, r0
_02061178:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061100

	thumb_func_start sub_02061180
sub_02061180: ; 0x02061180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r6, r0
	beq _020611F6
	add r0, r4, #0
	bl sub_02062C00
	mov r1, #9
	add r7, r0, #0
	bl sub_02071CB4
	cmp r0, #1
	bne _020611F6
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02061674
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r7, #0
	bl ov9_02251044
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _020611F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020611F6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02061180

	thumb_func_start sub_020611FC
sub_020611FC: ; 0x020611FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02061100
	mov r1, #0xa
	tst r1, r0
	beq _02061214
	mov r1, #1
	orr r4, r1
_02061214:
	mov r1, #4
	tst r0, r1
	beq _0206121E
	mov r0, #2
	orr r4, r0
_0206121E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061180
	cmp r0, #1
	bne _02061230
	mov r0, #0x20
	orr r4, r0
_02061230:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061248
	cmp r0, #1
	bne _02061242
	mov r0, #0x80
	orr r4, r0
_02061242:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020611FC

	thumb_func_start sub_02061248
sub_02061248: ; 0x02061248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #0
	add r5, r1, #0
	add r4, r2, #0
	sub r1, r6, #1
	add r7, r0, #0
	cmp r4, r1
	beq _02061302
	bl sub_0205F108
	cmp r0, #2
	bne _02061302
	add r0, r5, #0
	bl sub_02062C00
	mov r1, #9
	str r0, [sp, #4]
	bl sub_02071CB4
	cmp r0, #1
	bne _02061302
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl ov9_02251044
	add r6, r0, #0
	cmp r4, #3
	bhi _02061302
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020612C4: ; jump table
	.short _020612CC - _020612C4 - 2 ; case 0
	.short _020612DA - _020612C4 - 2 ; case 1
	.short _020612E8 - _020612C4 - 2 ; case 2
	.short _020612F6 - _020612C4 - 2 ; case 3
_020612CC:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBB4
	add r6, r0, #0
	b _02061302
_020612DA:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBC0
	add r6, r0, #0
	b _02061302
_020612E8:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBCC
	add r6, r0, #0
	b _02061302
_020612F6:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBD8
	add r6, r0, #0
_02061302:
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061248

	thumb_func_start sub_02061308
sub_02061308: ; 0x02061308
	ldr r3, _0206130C ; =sub_02061348
	bx r3
	; .align 2, 0
_0206130C: .word sub_02061348
	thumb_func_end sub_02061308

	thumb_func_start sub_02061310
sub_02061310: ; 0x02061310
	mov r1, #0x20
	tst r1, r0
	beq _0206131A
	mov r0, #2
	bx lr
_0206131A:
	mov r1, #0x10
	tst r0, r1
	beq _02061324
	mov r1, #3
	b _02061326
_02061324:
	sub r1, #0x11
_02061326:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02061310

	thumb_func_start sub_0206132C
sub_0206132C: ; 0x0206132C
	mov r1, #0x40
	tst r1, r0
	beq _02061336
	mov r0, #0
	bx lr
_02061336:
	mov r1, #0x80
	tst r0, r1
	beq _02061340
	mov r1, #1
	b _02061342
_02061340:
	sub r1, #0x81
_02061342:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206132C

	thumb_func_start sub_02061348
sub_02061348: ; 0x02061348
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02061310
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206132C
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	beq _020613A8
	cmp r5, r1
	bne _0206136E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206136E:
	add r0, r6, #0
	bl sub_0205EA94
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205EBE0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0205EBE8
	mov r1, #0
	mvn r1, r1
	cmp r7, r1
	beq _020613A6
	ldr r1, [sp]
	cmp r4, r1
	bne _0206139A
	cmp r5, r0
	bne _0206139A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206139A:
	cmp r5, r0
	beq _020613A2
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020613A2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020613A6:
	add r0, r5, #0
_020613A8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061348

	thumb_func_start sub_020613AC
sub_020613AC: ; 0x020613AC
	push {r4, lr}
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020613C0
	mov r0, #1
	pop {r4, pc}
_020613C0:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _020613D2
	mov r0, #1
	pop {r4, pc}
_020613D2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020613AC

	thumb_func_start sub_020613D8
sub_020613D8: ; 0x020613D8
	sub r0, #0x1c
	cmp r0, #3
	bhi _020613F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020613EA: ; jump table
	.short _020613F2 - _020613EA - 2 ; case 0
	.short _020613F2 - _020613EA - 2 ; case 1
	.short _020613F2 - _020613EA - 2 ; case 2
	.short _020613F2 - _020613EA - 2 ; case 3
_020613F2:
	mov r0, #1
	bx lr
_020613F6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020613D8

	thumb_func_start sub_020613FC
sub_020613FC: ; 0x020613FC
	mov r0, #2
	tst r0, r1
	beq _02061406
	mov r0, #1
	bx lr
_02061406:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020613FC

	thumb_func_start sub_0206140C
sub_0206140C: ; 0x0206140C
	push {r3, lr}
	bl sub_0205EC14
	sub r0, #0x58
	cmp r0, #3
	bhi _02061430
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02061424: ; jump table
	.short _0206142C - _02061424 - 2 ; case 0
	.short _0206142C - _02061424 - 2 ; case 1
	.short _0206142C - _02061424 - 2 ; case 2
	.short _0206142C - _02061424 - 2 ; case 3
_0206142C:
	mov r0, #1
	pop {r3, pc}
_02061430:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206140C

	thumb_func_start sub_02061434
sub_02061434: ; 0x02061434
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EB74
	cmp r0, #0
	beq _0206144A
	cmp r0, #1
	beq _0206145A
	cmp r0, #2
	bne _02061470
_0206144A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205FCC0
	bl sub_0205FC64
	add r4, r0, #0
	b _02061476
_0206145A:
	add r0, r5, #0
	bl sub_0205EC88
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060850
	bl sub_0206081C
	add r4, r0, #0
	b _02061476
_02061470:
	mov r4, #0
	bl sub_02022974
_02061476:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061434

	thumb_func_start sub_0206147C
sub_0206147C: ; 0x0206147C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02061348
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02061434
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB08
	cmp r4, #0
	bne _020614AE
	add r0, r5, #0
	bl sub_0205EA78
	mov r1, #0
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
_020614AE:
	cmp r4, #2
	bne _020614BC
	ldr r0, [sp]
	mov r1, #0x28
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
_020614BC:
	add r0, r5, #0
	bl sub_0205EB3C
	ldr r0, [sp, #0x1c]
	mov r4, #4
	add r1, r0, #0
	tst r1, r4
	beq _020614D0
	mov r4, #0x38
	b _02061536
_020614D0:
	mov r1, #0x80
	tst r1, r0
	beq _020614DA
	mov r4, #0x75
	b _02061536
_020614DA:
	cmp r0, #0
	beq _020614EE
	mov r1, #8
	mov r4, #0x1c
	tst r0, r1
	bne _02061536
	ldr r0, _02061540 ; =0x00000601
	bl sub_02005748
	b _02061536
_020614EE:
	cmp r6, #5
	bhi _02061520
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020614FE: ; jump table
	.short _0206150A - _020614FE - 2 ; case 0
	.short _0206150C - _020614FE - 2 ; case 1
	.short _02061510 - _020614FE - 2 ; case 2
	.short _02061514 - _020614FE - 2 ; case 3
	.short _02061518 - _020614FE - 2 ; case 4
	.short _0206151C - _020614FE - 2 ; case 5
_0206150A:
	b _02061522
_0206150C:
	mov r4, #8
	b _02061522
_02061510:
	mov r4, #0xc
	b _02061522
_02061514:
	mov r4, #0x4c
	b _02061522
_02061518:
	mov r4, #0x10
	b _02061522
_0206151C:
	mov r4, #0x14
	b _02061522
_02061520:
	mov r4, #4
_02061522:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02061536
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020613FC
	cmp r0, #1
	bne _02061536
	mov r4, #0x58
_02061536:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02061540: .word 0x00000601
	thumb_func_end sub_0206147C

	thumb_func_start sub_02061544
sub_02061544: ; 0x02061544
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_020655F4
	pop {r3, pc}
	thumb_func_end sub_02061544

	thumb_func_start sub_02061550
sub_02061550: ; 0x02061550
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EB3C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02061550

	thumb_func_start sub_0206156C
sub_0206156C: ; 0x0206156C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02064238
	pop {r4, pc}
	thumb_func_end sub_0206156C

	thumb_func_start sub_0206157C
sub_0206157C: ; 0x0206157C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r0, r4, r0
	str r0, [r6, #0]
	ldr r0, [sp]
	bl sub_0205EAC8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020641A8
	add r0, r4, r0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206157C

	thumb_func_start sub_020615AC
sub_020615AC: ; 0x020615AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EA78
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0206157C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020615AC

	thumb_func_start sub_020615C8
sub_020615C8: ; 0x020615C8
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02062C00
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0
	bl sub_0202CF28
	pop {r3, pc}
	thumb_func_end sub_020615C8

	thumb_func_start sub_020615E0
sub_020615E0: ; 0x020615E0
	push {r4, r5, r6, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _0206162A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	bne _02061610
	cmp r4, #1
	bls _0206160C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206160C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02061610:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _0206162A
	sub r0, r4, #2
	cmp r0, #1
	bls _02061626
	mov r0, #1
	pop {r4, r5, r6, pc}
_02061626:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206162A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020615E0

	thumb_func_start sub_02061630
sub_02061630: ; 0x02061630
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r2, r1
	beq _02061642
	mov r0, #0
	pop {r3, r4, r5, pc}
_02061642:
	bl sub_0205EB74
	cmp r0, #1
	beq _0206164E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206164E:
	add r0, r5, #0
	bl sub_0205EFDC
	cmp r0, #0
	bne _0206165C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206165C:
	add r0, r5, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_0206413C
	cmp r0, #1
	bne _02061670
	mov r0, #1
	pop {r3, r4, r5, pc}
_02061670:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02061630

	thumb_func_start sub_02061674
sub_02061674: ; 0x02061674
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0205F108
	cmp r0, #5
	bhi _020616DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02061690: ; jump table
	.short _0206169C - _02061690 - 2 ; case 0
	.short _0206169C - _02061690 - 2 ; case 1
	.short _0206169C - _02061690 - 2 ; case 2
	.short _020616A4 - _02061690 - 2 ; case 3
	.short _020616AC - _02061690 - 2 ; case 4
	.short _020616B4 - _02061690 - 2 ; case 5
_0206169C:
	ldr r1, _020616E0 ; =0x020EDB04
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616A4:
	ldr r1, _020616E4 ; =0x020EDB24
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616AC:
	ldr r1, _020616E8 ; =0x020EDB44
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616B4:
	ldr r1, _020616EC ; =0x020EDB64
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616BC:
	.byte 0x70, 0xBD
_020616BE:
	mov r1, #0
	ldrsh r1, [r0, r1]
	ldr r2, [r5, #0]
	ldr r3, [sp, #0x10]
	add r1, r2, r1
	str r1, [r5, #0]
	mov r1, #2
	ldrsh r1, [r0, r1]
	ldr r2, [r6, #0]
	add r1, r2, r1
	str r1, [r6, #0]
	mov r1, #4
	ldrsh r0, [r0, r1]
	ldr r2, [r3, #0]
	add r0, r2, r0
	str r0, [r3, #0]
_020616DE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020616E0: .word 0x020EDB04
_020616E4: .word 0x020EDB24
_020616E8: .word 0x020EDB44
_020616EC: .word 0x020EDB64
	thumb_func_end sub_02061674

	thumb_func_start sub_020616F0
sub_020616F0: ; 0x020616F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0205F158
	cmp r0, #0
	bne _0206170C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206156C
	str r0, [sp, #0x10]
	b _02061758
_0206170C:
	add r0, r5, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02061674
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r7, #0
	bl ov9_02251044
_02061758:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020616F0

	thumb_func_start sub_02061760
sub_02061760: ; 0x02061760
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062C00
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	add r0, r5, #0
	asr r4, r1, #1
	bl sub_02063040
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_0205F158
	cmp r0, #0
	bne _020617A6
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02054F94
	str r0, [sp, #8]
	b _020617B6
_020617A6:
	add r0, sp, #8
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ov9_02251044
_020617B6:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02061760

	thumb_func_start sub_020617BC
sub_020617BC: ; 0x020617BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0205EAA0
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_0205EB3C
	str r0, [sp, #8]
	bl sub_02063020
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [r6, #0]
	ldr r0, [sp, #8]
	bl sub_02063040
	str r0, [r4, #0]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_02061674
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020617BC

	thumb_func_start sub_02061804
sub_02061804: ; 0x02061804
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	bl sub_020618C8
	add r4, r0, #0
	add r1, r6, #0
	bl sub_0206288C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062820
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02062854
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061804

	thumb_func_start sub_02061830
sub_02061830: ; 0x02061830
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062878
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02018238
	mov r0, #0xb
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02061830

	thumb_func_start sub_0206184C
sub_0206184C: ; 0x0206184C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r2, #0
	str r3, [sp, #4]
	ldr r7, [sp, #0x20]
	bl sub_02062824
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02062878
	add r4, r0, #0
	cmp r6, #0
	beq _020618B4
_0206186A:
	add r0, r4, #0
	bl sub_02062CF8
	cmp r0, #1
	bne _020618AA
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_0206244C
	cmp r0, #0
	beq _0206188C
	cmp r0, #1
	beq _020618AA
	cmp r0, #2
	b _020618AA
_0206188C:
	add r0, r4, #0
	bl sub_02062918
	cmp r5, r0
	beq _020618AA
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628D8
	cmp r0, #0
	bne _020618AA
	add r0, r4, #0
	bl sub_02061AF4
_020618AA:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	sub r6, r6, #1
	bne _0206186A
_020618B4:
	ldr r0, [sp]
	bl sub_0206285C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov5_021EDA38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206184C

	thumb_func_start sub_020618C8
sub_020618C8: ; 0x020618C8
	push {r4, r5, r6, lr}
	mov r1, #0x4b
	add r4, r0, #0
	mov r0, #0xb
	lsl r1, r1, #2
	bl sub_02018144
	add r5, r0, #0
	bne _020618DE
	bl sub_02022974
_020618DE:
	mov r2, #0x4b
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	mov r0, #0x4a
	lsl r0, r0, #2
	add r6, r4, #0
	mul r6, r0
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02061902
	bl sub_02022974
_02061902:
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_020D5124
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062860
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020618C8

	thumb_func_start sub_02061918
sub_02061918: ; 0x02061918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r2, sp, #0
	add r3, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	bl sub_020630F4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020631D8
	cmp r0, #0
	bne _02061964
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02062154
	add r4, r0, #0
	beq _02061986
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020626D0
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02061964:
	add r0, r6, #0
	bl sub_020631F4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020624CC
	add r4, r0, #0
	beq _02061986
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02062714
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02061986:
	add r0, r5, #0
	bl sub_02062120
	add r4, r0, #0
	beq _020619D8
	add r0, r5, #0
	bl sub_02062894
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020621E8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206234C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02062914
	add r0, r4, #0
	bl sub_02062660
	add r0, r4, #0
	bl sub_02062670
	add r0, r4, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020621AC
	add r0, r5, #0
	bl sub_0206281C
	bl sub_02062828
	add r0, r4, #0
_020619D8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061918

	thumb_func_start sub_020619DC
sub_020619DC: ; 0x020619DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020630F0
	ldr r1, [sp, #0x38]
	add r0, sp, #0
	bl sub_020630F8
	ldr r1, [sp, #0x3c]
	add r0, sp, #0
	bl sub_02063100
	add r0, sp, #0
	mov r1, #0
	bl sub_02063108
	add r0, sp, #0
	mov r1, #0
	bl sub_02063110
	add r0, sp, #0
	mov r1, #0
	bl sub_02063118
	add r0, sp, #0
	add r1, r7, #0
	bl sub_02063120
	mov r1, #0
	add r0, sp, #0
	add r2, r1, #0
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	mov r2, #1
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	bl sub_02063174
	add r0, sp, #0
	mov r1, #0
	bl sub_02063180
	add r0, sp, #0
	add r1, r4, #0
	bl sub_0206318C
	add r0, sp, #0
	add r1, r6, #0
	bl sub_0206319C
	add r0, sp, #0
	mov r1, #0
	bl sub_02063194
	ldr r2, [sp, #0x40]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02061918
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020619DC

	thumb_func_start sub_02061A74
sub_02061A74: ; 0x02061A74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [sp, #0x18]
	add r7, r3, #0
	mov r6, #0
	bl sub_020631A4
	str r0, [sp]
	cmp r0, #0
	beq _02061AB0
	bl sub_02063114
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062894
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F188
	cmp r0, #0
	bne _02061AB0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02061918
	add r6, r0, #0
_02061AB0:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061A74

	thumb_func_start sub_02061AB4
sub_02061AB4: ; 0x02061AB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206291C
	add r0, r4, #0
	bl sub_02062604
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062670
	pop {r4, pc}
	thumb_func_end sub_02061AB4

	thumb_func_start sub_02061AD4
sub_02061AD4: ; 0x02061AD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _02061AE8
	add r0, r5, #0
	bl sub_02061B48
_02061AE8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02061AB4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061AD4

	thumb_func_start sub_02061AF4
sub_02061AF4: ; 0x02061AF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _02061B0A
	add r0, r4, #0
	bl sub_02062B7C
_02061B0A:
	add r0, r4, #0
	bl sub_02062B28
	add r0, r4, #0
	bl sub_02062A2C
	add r0, r4, #0
	bl sub_02062A48
	bl sub_02062830
	add r0, r4, #0
	bl sub_0206243C
	pop {r4, pc}
	thumb_func_end sub_02061AF4

	thumb_func_start sub_02061B28
sub_02061B28: ; 0x02061B28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062958
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062C00
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F19C
	add r0, r4, #0
	bl sub_02061AF4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02061B28

	thumb_func_start sub_02061B48
sub_02061B48: ; 0x02061B48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _02061B76
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02061B6C
	add r0, r4, #0
	bl sub_02062B7C
_02061B6C:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628C4
_02061B76:
	ldr r1, _02061BA8 ; =0x0000FFFF
	add r0, r4, #0
	bl sub_0206291C
	ldr r1, _02061BAC ; =sub_020633F0
	add r0, r4, #0
	bl sub_02062B4C
	ldr r1, _02061BB0 ; =sub_020633F4
	add r0, r4, #0
	bl sub_02062B60
	ldr r1, _02061BB0 ; =sub_020633F4
	add r0, r4, #0
	bl sub_02062B74
	ldr r1, _02061BB4 ; =sub_020633F8
	add r0, r4, #0
	bl sub_02062B88
	ldr r1, _02061BB8 ; =sub_020633FC
	add r0, r4, #0
	bl sub_02062B9C
	pop {r4, pc}
	; .align 2, 0
_02061BA8: .word 0x0000FFFF
_02061BAC: .word sub_020633F0
_02061BB0: .word sub_020633F4
_02061BB4: .word sub_020633F8
_02061BB8: .word sub_020633FC
	thumb_func_end sub_02061B48

	thumb_func_start sub_02061BBC
sub_02061BBC: ; 0x02061BBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061BD4:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02061BE6
	add r0, r5, #0
	bl sub_02061AF4
_02061BE6:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061BD4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061BBC

	thumb_func_start sub_02061BF0
sub_02061BF0: ; 0x02061BF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062CA8
	cmp r0, #1
	beq _02061C00
	bl sub_02022974
_02061C00:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061C16:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02061C3C
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02061C3C
	add r0, r5, #0
	bl sub_02062B90
	add r0, r5, #0
	bl sub_02062628
_02061C3C:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061C16
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061BF0

	thumb_func_start sub_02061C48
sub_02061C48: ; 0x02061C48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062CA8
	cmp r0, #1
	beq _02061C58
	bl sub_02022974
_02061C58:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061C6E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #1
	bne _02061C9C
	add r0, r5, #0
	bl sub_02062D4C
	cmp r0, #1
	bne _02061C8A
	add r0, r5, #0
	bl sub_02062BA4
	b _02061C90
_02061C8A:
	add r0, r5, #0
	bl sub_02062670
_02061C90:
	add r0, r5, #0
	bl sub_02062604
	add r0, r5, #0
	bl sub_02064464
_02061C9C:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061C6E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061C48

	thumb_func_start sub_02061CA8
sub_02061CA8: ; 0x02061CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0
	add r5, r2, #0
	add r4, r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02061CEE
_02061CC8:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02061D3C
	sub r4, r4, #1
	add r5, #0x50
	cmp r4, #0
	bgt _02061CDE
	bl sub_02022974
_02061CDE:
	add r0, r6, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02061CC8
_02061CEE:
	cmp r4, #0
	beq _02061CFE
	mov r2, #0x50
	add r0, r5, #0
	mov r1, #0
	mul r2, r4
	bl sub_020D5124
_02061CFE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061CA8

	thumb_func_start sub_02061D04
sub_02061D04: ; 0x02061D04
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	beq _02061D3A
_02061D0E:
	ldr r1, [r5, #0]
	mov r0, #1
	tst r0, r1
	beq _02061D34
	add r0, r6, #0
	bl sub_02062120
	add r4, r0, #0
	bne _02061D24
	bl sub_02022974
_02061D24:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02061E80
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02061FA8
_02061D34:
	add r5, #0x50
	sub r7, r7, #1
	bne _02061D0E
_02061D3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061D04

	thumb_func_start sub_02061D3C
sub_02061D3C: ; 0x02061D3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl sub_020628B8
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020628EC
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02062910
	strb r0, [r4, #8]
	add r0, r5, #0
	bl sub_02062918
	strh r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02062920
	strh r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_02062948
	strb r0, [r4, #9]
	add r0, r5, #0
	bl sub_02062950
	strh r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02062958
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl sub_02062960
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02062968
	strb r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0206298C
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0206299C
	strb r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	strh r0, [r4, #0x1a]
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl sub_020629D8
	strh r0, [r4, #0x1e]
	add r0, r5, #0
	bl sub_02062A00
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl sub_02062A08
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl sub_02062FF0
	strh r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_02062FF8
	strh r0, [r4, #0x22]
	add r0, r5, #0
	bl sub_02063000
	strh r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02063020
	strh r0, [r4, #0x26]
	add r0, r5, #0
	bl sub_02063030
	strh r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_02063040
	strh r0, [r4, #0x2a]
	mov r0, #0x26
	mov r1, #0x2a
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	add r2, sp, #0
	bl sub_02064450
	add r0, r5, #0
	bl sub_02063074
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02062FAC
	add r2, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020644D0
	cmp r0, #0
	bne _02061E38
	add r0, r5, #0
	bl sub_02063074
	str r0, [r4, #0x2c]
	b _02061E4E
_02061E38:
	add r0, r5, #0
	bl sub_02062E44
	cmp r0, #1
	bne _02061E4A
	add r0, r5, #0
	bl sub_02063074
	str r0, [sp, #4]
_02061E4A:
	ldr r0, [sp, #4]
	str r0, [r4, #0x2c]
_02061E4E:
	add r0, r5, #0
	bl sub_02062A78
	add r3, r4, #0
	add r3, #0x30
	mov r2, #0x10
_02061E5A:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02061E5A
	add r0, r5, #0
	bl sub_02062AA0
	add r4, #0x40
	mov r2, #0x10
_02061E70:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _02061E70
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02061D3C

	thumb_func_start sub_02061E80
sub_02061E80: ; 0x02061E80
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	bl sub_020628B4
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_020628E8
	ldrb r1, [r4, #8]
	add r0, r5, #0
	bl sub_0206290C
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02062914
	ldrh r1, [r4, #0x12]
	add r0, r5, #0
	bl sub_0206291C
	ldrb r1, [r4, #9]
	add r0, r5, #0
	bl sub_02062944
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_0206294C
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	bl sub_02062954
	ldrh r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_0206295C
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062964
	mov r1, #0xd
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_0206296C
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062994
	mov r1, #0x1a
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0
	bl sub_020629B4
	mov r1, #0x1c
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #1
	bl sub_020629B4
	mov r1, #0x1e
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #2
	bl sub_020629B4
	mov r1, #0xa
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020629FC
	mov r1, #0xb
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062A04
	mov r1, #0x20
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062FF4
	mov r1, #0x22
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062FFC
	mov r1, #0x24
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063004
	mov r1, #0x26
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063024
	mov r1, #0x28
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063034
	mov r1, #0x2a
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063044
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02062A78
	add r3, r4, #0
	add r3, #0x30
	mov r2, #0x10
_02061F80:
	ldrb r1, [r3]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02061F80
	add r0, r5, #0
	bl sub_02062AA0
	add r4, #0x40
	mov r2, #0x10
_02061F96:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02061F96
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061E80

	thumb_func_start sub_02061FA8
sub_02061FA8: ; 0x02061FA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02061FF0
	add r0, r4, #0
	bl sub_02062010
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062A38
	add r0, r4, #0
	bl sub_0206239C
	add r0, r4, #0
	bl sub_020656DC
	add r0, r4, #0
	bl sub_02062670
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020621AC
	add r0, r4, #0
	bl sub_02062B34
	add r0, r5, #0
	bl sub_0206281C
	bl sub_02062828
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061FA8

	thumb_func_start sub_02061FF0
sub_02061FF0: ; 0x02061FF0
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl sub_020628BC
	ldr r1, _0206200C ; =0x00EF4248
	add r0, r4, #0
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	nop
_0206200C: .word 0x00EF4248
	thumb_func_end sub_02061FF0

	thumb_func_start sub_02062010
sub_02062010: ; 0x02062010
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r4, #0
	bl sub_02063020
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0206300C
	add r0, r4, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063014
	add r0, r4, #0
	bl sub_02063040
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0206301C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062010

	thumb_func_start sub_02062068
sub_02062068: ; 0x02062068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	str r1, [sp]
	cmp r5, #0
	bne _0206207C
	bl sub_02022974
_0206207C:
	lsl r0, r5, #5
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, #0xb
	bl sub_02018184
	add r6, r0, #0
	bne _02062090
	bl sub_02022974
_02062090:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020D50B8
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _020620AA
	bl sub_02022974
_020620AA:
	ldr r0, [sp]
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r4, #0
	str r6, [r4, #0x10]
	bl sub_020620C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02062068

	thumb_func_start sub_020620C4
sub_020620C4: ; 0x020620C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02062894
	add r6, r5, #0
	ldr r4, [r5, #0x10]
	add r7, r0, #0
	add r6, #8
_020620D6:
	add r0, r4, #0
	bl sub_020631D8
	cmp r0, #1
	beq _020620EC
	ldrh r1, [r4, #8]
	add r0, r7, #0
	bl sub_0203F188
	cmp r0, #0
	bne _020620FE
_020620EC:
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_02061918
	cmp r0, #0
	bne _020620FE
	bl sub_02022974
_020620FE:
	ldr r0, [r6, #0]
	add r4, #0x20
	add r0, r0, #1
	str r0, [r6, #0]
	ldr r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _020620D6
	ldr r1, [r5, #0x10]
	mov r0, #0xb
	bl sub_02018238
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02018238
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020620C4

	thumb_func_start sub_02062120
sub_02062120: ; 0x02062120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02062138:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	bne _02062148
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02062148:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02062138
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02062120

	thumb_func_start sub_02062154
sub_02062154: ; 0x02062154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _020621A6
	add r7, sp, #0
_02062172:
	ldr r0, [sp]
	bl sub_02062E94
	cmp r0, #1
	bne _02062196
	ldr r0, [sp]
	bl sub_02062910
	cmp r5, r0
	bne _02062196
	ldr r0, [sp]
	bl sub_02062C18
	cmp r4, r0
	bne _02062196
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02062196:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02062172
_020621A6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02062154

	thumb_func_start sub_020621AC
sub_020621AC: ; 0x020621AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_02062858
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062948
	cmp r0, #0x30
	beq _020621C4
	cmp r0, #0x32
	bne _020621C6
_020621C4:
	add r5, r5, #2
_020621C6:
	ldr r0, _020621E4 ; =sub_020627E8
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200D9E8
	add r5, r0, #0
	bne _020621D8
	bl sub_02022974
_020621D8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062A1C
	pop {r3, r4, r5, pc}
	nop
_020621E4: .word sub_020627E8
	thumb_func_end sub_020621AC

	thumb_func_start sub_020621E8
sub_020621E8: ; 0x020621E8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_020630F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206290C
	add r0, r4, #0
	bl sub_020630FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0206262C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206291C
	add r0, r4, #0
	bl sub_02063104
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062944
	add r0, r4, #0
	bl sub_0206310C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206294C
	add r0, r4, #0
	bl sub_02063114
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	add r0, r4, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r4, #0
	bl sub_02063124
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062964
	add r0, r4, #0
	mov r1, #0
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_020629B4
	add r0, r4, #0
	mov r1, #1
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_020629B4
	add r0, r4, #0
	mov r1, #2
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #2
	bl sub_020629B4
	add r0, r4, #0
	bl sub_02063178
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020629FC
	add r0, r4, #0
	bl sub_02063184
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062A04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020622B8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020621E8

	thumb_func_start sub_020622B8
sub_020622B8: ; 0x020622B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02063190
	add r5, r0, #0
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062FF4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206300C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063024
	add r0, r6, #0
	bl sub_02063198
	asr r1, r0, #3
	str r0, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062FFC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063014
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063034
	add r0, r6, #0
	bl sub_020631A0
	add r5, r0, #0
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063004
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206301C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063044
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020622B8

	thumb_func_start sub_0206234C
sub_0206234C: ; 0x0206234C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02062398 ; =0x00001801
	add r5, r0, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_020626B4
	cmp r0, #1
	bne _0206236A
	add r0, r5, #0
	mov r1, #1
	bl sub_02062E78
_0206236A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062A38
	add r0, r5, #0
	bl sub_02062968
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206296C
	add r0, r5, #0
	bl sub_02062968
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_020656DC
	pop {r3, r4, r5, pc}
	nop
_02062398: .word 0x00001801
	thumb_func_end sub_0206234C

	thumb_func_start sub_0206239C
sub_0206239C: ; 0x0206239C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062948
	bl sub_0206320C
	add r4, r0, #0
	bl sub_02063224
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062AF8
	add r0, r4, #0
	bl sub_02063228
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062B0C
	add r0, r4, #0
	bl sub_0206322C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062B20
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206239C

	thumb_func_start sub_020623D4
sub_020623D4: ; 0x020623D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062920
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _020623E8
	ldr r5, _02062438 ; =0x021FB470
	b _020623EE
_020623E8:
	bl sub_02063244
	add r5, r0, #0
_020623EE:
	add r0, r5, #0
	bl sub_02063230
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B4C
	add r0, r5, #0
	bl sub_02063234
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B60
	add r0, r5, #0
	bl sub_02063238
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B74
	add r0, r5, #0
	bl sub_0206323C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B88
	add r0, r5, #0
	bl sub_02063240
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B9C
	pop {r3, r4, r5, pc}
	nop
_02062438: .word 0x021FB470
	thumb_func_end sub_020623D4

	thumb_func_start sub_0206243C
sub_0206243C: ; 0x0206243C
	ldr r3, _02062448 ; =sub_020D5124
	mov r2, #0x4a
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_02062448: .word sub_020D5124
	thumb_func_end sub_0206243C

	thumb_func_start sub_0206244C
sub_0206244C: ; 0x0206244C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r7, #0
	beq _020624C6
_0206245A:
	add r0, r6, #0
	bl sub_020630F4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062910
	cmp r4, r0
	bne _020624BE
	add r0, r6, #0
	bl sub_020631D8
	cmp r0, #1
	bne _020624A4
	add r0, r6, #0
	bl sub_020631F4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #1
	bne _02062496
	add r0, r5, #0
	bl sub_02062C18
	cmp r4, r0
	bne _020624BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02062496:
	add r0, r5, #0
	bl sub_02062918
	cmp r4, r0
	bne _020624BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020624A4:
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #1
	bne _020624BE
	add r0, r5, #0
	bl sub_02062C18
	ldr r1, [sp]
	cmp r1, r0
	bne _020624BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020624BE:
	sub r7, r7, #1
	add r6, #0x20
	cmp r7, #0
	bne _0206245A
_020624C6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206244C

	thumb_func_start sub_020624CC
sub_020624CC: ; 0x020624CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _02062514
	add r7, sp, #0
_020624EA:
	ldr r0, [sp]
	bl sub_02062910
	cmp r5, r0
	bne _02062504
	ldr r0, [sp]
	bl sub_02062918
	cmp r4, r0
	bne _02062504
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02062504:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _020624EA
_02062514:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020624CC

	thumb_func_start sub_0206251C
sub_0206251C: ; 0x0206251C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	bne _0206252A
	bl sub_02022974
_0206252A:
	add r0, r5, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062870
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_0206253E:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D8
	cmp r0, #1
	bne _02062562
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #0
	bne _02062562
	add r0, r5, #0
	bl sub_02062910
	cmp r6, r0
	bne _02062562
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02062562:
	sub r4, r4, #1
	add r5, r5, r7
	cmp r4, #0
	bgt _0206253E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206251C

	thumb_func_start sub_02062570
sub_02062570: ; 0x02062570
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062870
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02062588:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D8
	cmp r0, #1
	bne _020625A2
	add r0, r5, #0
	bl sub_02062948
	cmp r6, r0
	bne _020625A2
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020625A2:
	sub r4, r4, #1
	add r5, r5, r7
	cmp r4, #0
	bgt _02062588
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02062570

	thumb_func_start sub_020625B0
sub_020625B0: ; 0x020625B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r0, #0
	str r1, [sp]
	add r6, r3, #0
	bl sub_02062824
	add r7, r0, #0
	ldr r0, [r5, #0]
	cmp r0, r7
	blt _020625CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020625CA:
	add r0, r4, #0
	bl sub_02062870
	mov r1, #0x4a
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	mul r1, r2
	add r4, r0, r1
_020625DA:
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020628D0
	cmp r6, r0
	bne _020625F4
	ldr r0, [sp]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020625F4:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [r5, #0]
	cmp r0, r7
	blt _020625DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020625B0

	thumb_func_start sub_02062604
sub_02062604: ; 0x02062604
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062604

	thumb_func_start sub_02062618
sub_02062618: ; 0x02062618
	ldr r3, _02062620 ; =sub_020628C4
	ldr r1, _02062624 ; =0x05108000
	bx r3
	nop
_02062620: .word sub_020628C4
_02062624: .word 0x05108000
	thumb_func_end sub_02062618

	thumb_func_start sub_02062628
sub_02062628: ; 0x02062628
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062628

	thumb_func_start sub_0206262C
sub_0206262C: ; 0x0206262C
	push {r3, lr}
	cmp r1, #0x65
	blt _02062642
	cmp r1, #0x74
	bgt _02062642
	sub r1, #0x65
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F164
	add r1, r0, #0
_02062642:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206262C

	thumb_func_start sub_02062648
sub_02062648: ; 0x02062648
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206265E
	add r0, r4, #0
	bl sub_020642F8
_0206265E:
	pop {r4, pc}
	thumb_func_end sub_02062648

	thumb_func_start sub_02062660
sub_02062660: ; 0x02062660
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206239C
	add r0, r4, #0
	bl sub_02063400
	pop {r4, pc}
	thumb_func_end sub_02062660

	thumb_func_start sub_02062670
sub_02062670: ; 0x02062670
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #0
	beq _020626B2
	add r0, r4, #0
	bl sub_02062648
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	mov r1, #0
	bl ov5_021EDD78
	add r0, r4, #0
	bl sub_02062D4C
	cmp r0, #0
	bne _020626B2
	add r0, r4, #0
	bl sub_020623D4
	add r0, r4, #0
	bl sub_02062B54
	add r0, r4, #0
	bl sub_02062D40
_020626B2:
	pop {r4, pc}
	thumb_func_end sub_02062670

	thumb_func_start sub_020626B4
sub_020626B4: ; 0x020626B4
	push {r3, lr}
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020626CC ; =0x0000FFFF
	cmp r1, r0
	bne _020626C8
	mov r0, #1
	pop {r3, pc}
_020626C8:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020626CC: .word 0x0000FFFF
	thumb_func_end sub_020626B4

	thumb_func_start sub_020626D0
sub_020626D0: ; 0x020626D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02062E94
	cmp r0, #1
	beq _020626E4
	bl sub_02022974
_020626E4:
	add r0, r5, #0
	mov r1, #0
	bl sub_02062E78
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062914
	add r0, r4, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r4, #0
	bl sub_02063114
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020626D0

	thumb_func_start sub_02062714
sub_02062714: ; 0x02062714
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_020631D8
	cmp r0, #1
	beq _0206272A
	bl sub_02022974
_0206272A:
	add r0, r5, #0
	mov r1, #1
	bl sub_02062E78
	add r0, r6, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r6, #0
	bl sub_020631F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062914
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02062714

	thumb_func_start sub_02062758
sub_02062758: ; 0x02062758
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062C0C
	add r0, r0, r4
	pop {r4, pc}
	thumb_func_end sub_02062758

	thumb_func_start sub_02062764
sub_02062764: ; 0x02062764
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020628D8
	cmp r0, #0
	bne _0206277A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206277A:
	add r0, r5, #0
	bl sub_02062910
	cmp r6, r0
	beq _02062788
	mov r0, #0
	pop {r4, r5, r6, pc}
_02062788:
	add r0, r5, #0
	bl sub_02062918
	cmp r4, r0
	beq _020627AE
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #0
	bne _020627A0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020627A0:
	add r0, r5, #0
	bl sub_02062C18
	cmp r4, r0
	beq _020627AE
	mov r0, #0
	pop {r4, r5, r6, pc}
_020627AE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062764

	thumb_func_start sub_020627B4
sub_020627B4: ; 0x020627B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020628D8
	cmp r0, #0
	bne _020627CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020627CC:
	add r0, r5, #0
	bl sub_02062924
	cmp r0, r4
	beq _020627DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020627DA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02062764
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020627B4

	thumb_func_start sub_020627E8
sub_020627E8: ; 0x020627E8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02063410
	add r0, r4, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062802
	add r0, r4, #0
	bl sub_02062804
_02062802:
	pop {r4, pc}
	thumb_func_end sub_020627E8

	thumb_func_start sub_02062804
sub_02062804: ; 0x02062804
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _0206281A
	add r0, r4, #0
	bl ov5_021ECCC8
_0206281A:
	pop {r4, pc}
	thumb_func_end sub_02062804

	thumb_func_start sub_0206281C
sub_0206281C: ; 0x0206281C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206281C

	thumb_func_start sub_02062820
sub_02062820: ; 0x02062820
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02062820

	thumb_func_start sub_02062824
sub_02062824: ; 0x02062824
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02062824

	thumb_func_start sub_02062828
sub_02062828: ; 0x02062828
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02062828

	thumb_func_start sub_02062830
sub_02062830: ; 0x02062830
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02062830

	thumb_func_start sub_02062838
sub_02062838: ; 0x02062838
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02062838

	thumb_func_start sub_02062840
sub_02062840: ; 0x02062840
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062840

	thumb_func_start sub_0206284C
sub_0206284C: ; 0x0206284C
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206284C

	thumb_func_start sub_02062854
sub_02062854: ; 0x02062854
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062854

	thumb_func_start sub_02062858
sub_02062858: ; 0x02062858
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062858

	thumb_func_start sub_0206285C
sub_0206285C: ; 0x0206285C
	add r0, #0x18
	bx lr
	thumb_func_end sub_0206285C

	thumb_func_start sub_02062860
sub_02062860: ; 0x02062860
	mov r2, #0x49
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02062860

	thumb_func_start sub_02062868
sub_02062868: ; 0x02062868
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062868

	thumb_func_start sub_02062870
sub_02062870: ; 0x02062870
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062870

	thumb_func_start sub_02062878
sub_02062878: ; 0x02062878
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062878

	thumb_func_start sub_02062880
sub_02062880: ; 0x02062880
	mov r1, #0x4a
	ldr r2, [r0, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02062880

	thumb_func_start sub_0206288C
sub_0206288C: ; 0x0206288C
	mov r2, #0x4a
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0206288C

	thumb_func_start sub_02062894
sub_02062894: ; 0x02062894
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062894

	thumb_func_start sub_0206289C
sub_0206289C: ; 0x0206289C
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0206289C

	thumb_func_start sub_020628A0
sub_020628A0: ; 0x020628A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _020628AE
	bl sub_02022974
_020628AE:
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020628A0

	thumb_func_start sub_020628B4
sub_020628B4: ; 0x020628B4
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020628B4

	thumb_func_start sub_020628B8
sub_020628B8: ; 0x020628B8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020628B8

	thumb_func_start sub_020628BC
sub_020628BC: ; 0x020628BC
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020628BC

	thumb_func_start sub_020628C4
sub_020628C4: ; 0x020628C4
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628C4

	thumb_func_start sub_020628D0
sub_020628D0: ; 0x020628D0
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628D0

	thumb_func_start sub_020628D8
sub_020628D8: ; 0x020628D8
	ldr r0, [r0, #0]
	tst r0, r1
	beq _020628E2
	mov r0, #1
	bx lr
_020628E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628D8

	thumb_func_start sub_020628E8
sub_020628E8: ; 0x020628E8
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020628E8

	thumb_func_start sub_020628EC
sub_020628EC: ; 0x020628EC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020628EC

	thumb_func_start sub_020628F0
sub_020628F0: ; 0x020628F0
	ldr r2, [r0, #4]
	orr r1, r2
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020628F0

	thumb_func_start sub_020628F8
sub_020628F8: ; 0x020628F8
	ldr r2, [r0, #4]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628F8

	thumb_func_start sub_02062904
sub_02062904: ; 0x02062904
	ldr r0, [r0, #4]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062904

	thumb_func_start sub_0206290C
sub_0206290C: ; 0x0206290C
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0206290C

	thumb_func_start sub_02062910
sub_02062910: ; 0x02062910
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02062910

	thumb_func_start sub_02062914
sub_02062914: ; 0x02062914
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062914

	thumb_func_start sub_02062918
sub_02062918: ; 0x02062918
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062918

	thumb_func_start sub_0206291C
sub_0206291C: ; 0x0206291C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0206291C

	thumb_func_start sub_02062920
sub_02062920: ; 0x02062920
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02062920

	thumb_func_start sub_02062924
sub_02062924: ; 0x02062924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062920
	add r4, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _0206293E
	add r0, r5, #0
	bl sub_02067800
	add r4, r0, #0
_0206293E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062924

	thumb_func_start sub_02062944
sub_02062944: ; 0x02062944
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02062944

	thumb_func_start sub_02062948
sub_02062948: ; 0x02062948
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02062948

	thumb_func_start sub_0206294C
sub_0206294C: ; 0x0206294C
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0206294C

	thumb_func_start sub_02062950
sub_02062950: ; 0x02062950
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02062950

	thumb_func_start sub_02062954
sub_02062954: ; 0x02062954
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02062954

	thumb_func_start sub_02062958
sub_02062958: ; 0x02062958
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02062958

	thumb_func_start sub_0206295C
sub_0206295C: ; 0x0206295C
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0206295C

	thumb_func_start sub_02062960
sub_02062960: ; 0x02062960
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02062960

	thumb_func_start sub_02062964
sub_02062964: ; 0x02062964
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02062964

	thumb_func_start sub_02062968
sub_02062968: ; 0x02062968
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_02062968

	thumb_func_start sub_0206296C
sub_0206296C: ; 0x0206296C
	ldr r2, [r0, #0x28]
	str r2, [r0, #0x30]
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0206296C

	thumb_func_start sub_02062974
sub_02062974: ; 0x02062974
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x80
	add r5, r0, #0
	bl sub_020628D0
	cmp r0, #0
	bne _0206298A
	ldr r0, [r5, #0x28]
	str r0, [r5, #0x30]
	str r4, [r5, #0x28]
_0206298A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02062974

	thumb_func_start sub_0206298C
sub_0206298C: ; 0x0206298C
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0206298C

	thumb_func_start sub_02062990
sub_02062990: ; 0x02062990
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_02062990

	thumb_func_start sub_02062994
sub_02062994: ; 0x02062994
	ldr r2, [r0, #0x2c]
	str r2, [r0, #0x34]
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_02062994

	thumb_func_start sub_0206299C
sub_0206299C: ; 0x0206299C
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0206299C

	thumb_func_start sub_020629A0
sub_020629A0: ; 0x020629A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062994
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020629A0

	thumb_func_start sub_020629B4
sub_020629B4: ; 0x020629B4
	push {r3, lr}
	cmp r2, #0
	beq _020629C4
	cmp r2, #1
	beq _020629C8
	cmp r2, #2
	beq _020629CC
	b _020629D0
_020629C4:
	str r1, [r0, #0x38]
	pop {r3, pc}
_020629C8:
	str r1, [r0, #0x3c]
	pop {r3, pc}
_020629CC:
	str r1, [r0, #0x40]
	pop {r3, pc}
_020629D0:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020629B4

	thumb_func_start sub_020629D8
sub_020629D8: ; 0x020629D8
	push {r3, lr}
	cmp r1, #0
	beq _020629E8
	cmp r1, #1
	beq _020629EC
	cmp r1, #2
	beq _020629F0
	b _020629F4
_020629E8:
	ldr r0, [r0, #0x38]
	pop {r3, pc}
_020629EC:
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
_020629F0:
	ldr r0, [r0, #0x40]
	pop {r3, pc}
_020629F4:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020629D8

	thumb_func_start sub_020629FC
sub_020629FC: ; 0x020629FC
	str r1, [r0, #0x44]
	bx lr
	thumb_func_end sub_020629FC

	thumb_func_start sub_02062A00
sub_02062A00: ; 0x02062A00
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_02062A00

	thumb_func_start sub_02062A04
sub_02062A04: ; 0x02062A04
	str r1, [r0, #0x48]
	bx lr
	thumb_func_end sub_02062A04

	thumb_func_start sub_02062A08
sub_02062A08: ; 0x02062A08
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_02062A08

	thumb_func_start sub_02062A0C
sub_02062A0C: ; 0x02062A0C
	add r0, #0xa0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A0C

	thumb_func_start sub_02062A14
sub_02062A14: ; 0x02062A14
	add r0, #0xa0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A14

	thumb_func_start sub_02062A1C
sub_02062A1C: ; 0x02062A1C
	add r0, #0xb0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A1C

	thumb_func_start sub_02062A24
sub_02062A24: ; 0x02062A24
	add r0, #0xb0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A24

	thumb_func_start sub_02062A2C
sub_02062A2C: ; 0x02062A2C
	push {r3, lr}
	bl sub_02062A24
	bl sub_0200DA58
	pop {r3, pc}
	thumb_func_end sub_02062A2C

	thumb_func_start sub_02062A38
sub_02062A38: ; 0x02062A38
	add r0, #0xb4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A38

	thumb_func_start sub_02062A40
sub_02062A40: ; 0x02062A40
	add r0, #0xb4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A40

	thumb_func_start sub_02062A48
sub_02062A48: ; 0x02062A48
	ldr r3, _02062A50 ; =sub_0206281C
	add r0, #0xb4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_02062A50: .word sub_0206281C
	thumb_func_end sub_02062A48

	thumb_func_start sub_02062A54
sub_02062A54: ; 0x02062A54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062A62
	bl sub_02022974
_02062A62:
	add r0, r4, #0
	bl sub_02062A78
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062A54

	thumb_func_start sub_02062A78
sub_02062A78: ; 0x02062A78
	add r0, #0xd8
	bx lr
	thumb_func_end sub_02062A78

	thumb_func_start sub_02062A7C
sub_02062A7C: ; 0x02062A7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062A8A
	bl sub_02022974
_02062A8A:
	add r0, r4, #0
	bl sub_02062AA0
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062A7C

	thumb_func_start sub_02062AA0
sub_02062AA0: ; 0x02062AA0
	add r0, #0xe8
	bx lr
	thumb_func_end sub_02062AA0

	thumb_func_start sub_02062AA4
sub_02062AA4: ; 0x02062AA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062AB2
	bl sub_02022974
_02062AB2:
	add r0, r4, #0
	bl sub_02062AC8
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062AA4

	thumb_func_start sub_02062AC8
sub_02062AC8: ; 0x02062AC8
	add r0, #0xf8
	bx lr
	thumb_func_end sub_02062AC8

	thumb_func_start sub_02062ACC
sub_02062ACC: ; 0x02062ACC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	ble _02062ADA
	bl sub_02022974
_02062ADA:
	add r0, r4, #0
	bl sub_02062AF0
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062ACC

	thumb_func_start sub_02062AF0
sub_02062AF0: ; 0x02062AF0
	mov r1, #0x42
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end sub_02062AF0

	thumb_func_start sub_02062AF8
sub_02062AF8: ; 0x02062AF8
	add r0, #0xb8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062AF8

	thumb_func_start sub_02062B00
sub_02062B00: ; 0x02062B00
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B00

	thumb_func_start sub_02062B0C
sub_02062B0C: ; 0x02062B0C
	add r0, #0xbc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B0C

	thumb_func_start sub_02062B14
sub_02062B14: ; 0x02062B14
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B14

	thumb_func_start sub_02062B20
sub_02062B20: ; 0x02062B20
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B20

	thumb_func_start sub_02062B28
sub_02062B28: ; 0x02062B28
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B28

	thumb_func_start sub_02062B34
sub_02062B34: ; 0x02062B34
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062948
	bl sub_0206320C
	add r1, r0, #0
	ldr r1, [r1, #0x10]
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062B34

	thumb_func_start sub_02062B4C
sub_02062B4C: ; 0x02062B4C
	add r0, #0xc4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B4C

	thumb_func_start sub_02062B54
sub_02062B54: ; 0x02062B54
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B54

	thumb_func_start sub_02062B60
sub_02062B60: ; 0x02062B60
	add r0, #0xc8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B60

	thumb_func_start sub_02062B68
sub_02062B68: ; 0x02062B68
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc8
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B68

	thumb_func_start sub_02062B74
sub_02062B74: ; 0x02062B74
	add r0, #0xcc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B74

	thumb_func_start sub_02062B7C
sub_02062B7C: ; 0x02062B7C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xcc
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B7C

	thumb_func_start sub_02062B88
sub_02062B88: ; 0x02062B88
	add r0, #0xd0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B88

	thumb_func_start sub_02062B90
sub_02062B90: ; 0x02062B90
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B90

	thumb_func_start sub_02062B9C
sub_02062B9C: ; 0x02062B9C
	add r0, #0xd4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B9C

	thumb_func_start sub_02062BA4
sub_02062BA4: ; 0x02062BA4
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062BA4

	thumb_func_start sub_02062BB0
sub_02062BB0: ; 0x02062BB0
	add r0, #0xa4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BB0

	thumb_func_start sub_02062BB8
sub_02062BB8: ; 0x02062BB8
	add r0, #0xa4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BB8

	thumb_func_start sub_02062BC0
sub_02062BC0: ; 0x02062BC0
	add r0, #0xa8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BC0

	thumb_func_start sub_02062BC8
sub_02062BC8: ; 0x02062BC8
	add r1, r0, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, #0xa8
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BC8

	thumb_func_start sub_02062BD8
sub_02062BD8: ; 0x02062BD8
	add r0, #0xa8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BD8

	thumb_func_start sub_02062BE0
sub_02062BE0: ; 0x02062BE0
	add r0, #0xac
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BE0

	thumb_func_start sub_02062BE8
sub_02062BE8: ; 0x02062BE8
	add r0, #0xac
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BE8

	thumb_func_start sub_02062BF0
sub_02062BF0: ; 0x02062BF0
	add r0, #0xae
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BF0

	thumb_func_start sub_02062BF8
sub_02062BF8: ; 0x02062BF8
	add r0, #0xae
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BF8

	thumb_func_start sub_02062C00
sub_02062C00: ; 0x02062C00
	push {r3, lr}
	bl sub_02062A48
	bl sub_02062894
	pop {r3, pc}
	thumb_func_end sub_02062C00

	thumb_func_start sub_02062C0C
sub_02062C0C: ; 0x02062C0C
	push {r3, lr}
	bl sub_02062A40
	bl sub_02062858
	pop {r3, pc}
	thumb_func_end sub_02062C0C

	thumb_func_start sub_02062C18
sub_02062C18: ; 0x02062C18
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062E94
	cmp r0, #1
	beq _02062C28
	bl sub_02022974
_02062C28:
	add r0, r4, #0
	bl sub_02062958
	pop {r4, pc}
	thumb_func_end sub_02062C18

	thumb_func_start sub_02062C30
sub_02062C30: ; 0x02062C30
	ldr r3, _02062C38 ; =sub_02062838
	mov r1, #6
	bx r3
	nop
_02062C38: .word sub_02062838
	thumb_func_end sub_02062C30

	thumb_func_start sub_02062C3C
sub_02062C3C: ; 0x02062C3C
	ldr r3, _02062C44 ; =sub_02062840
	mov r1, #6
	bx r3
	nop
_02062C44: .word sub_02062840
	thumb_func_end sub_02062C3C

	thumb_func_start sub_02062C48
sub_02062C48: ; 0x02062C48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r6, #0x4a
	add r5, r0, #0
	lsl r6, r6, #2
_02062C5E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062C6E
	add r0, r5, #0
	bl sub_02062DD0
_02062C6E:
	add r5, r5, r6
	sub r4, r4, #1
	bne _02062C5E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062C48

	thumb_func_start sub_02062C78
sub_02062C78: ; 0x02062C78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r6, #0x4a
	add r5, r0, #0
	lsl r6, r6, #2
_02062C8E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062C9E
	add r0, r5, #0
	bl sub_02062DDC
_02062C9E:
	add r5, r5, r6
	sub r4, r4, #1
	bne _02062C8E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062C78

	thumb_func_start sub_02062CA8
sub_02062CA8: ; 0x02062CA8
	push {r3, lr}
	mov r1, #1
	bl sub_0206284C
	cmp r0, #0
	beq _02062CB8
	mov r0, #1
	pop {r3, pc}
_02062CB8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062CA8

	thumb_func_start sub_02062CBC
sub_02062CBC: ; 0x02062CBC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062A40
	add r1, r4, #0
	bl sub_0206284C
	pop {r4, pc}
	thumb_func_end sub_02062CBC

	thumb_func_start sub_02062CCC
sub_02062CCC: ; 0x02062CCC
	push {r3, lr}
	cmp r1, #0
	bne _02062CDA
	mov r1, #8
	bl sub_02062838
	pop {r3, pc}
_02062CDA:
	mov r1, #8
	bl sub_02062840
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062CCC

	thumb_func_start sub_02062CE4
sub_02062CE4: ; 0x02062CE4
	push {r3, lr}
	mov r1, #8
	bl sub_0206284C
	cmp r0, #0
	bne _02062CF4
	mov r0, #1
	pop {r3, pc}
_02062CF4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062CE4

	thumb_func_start sub_02062CF8
sub_02062CF8: ; 0x02062CF8
	ldr r3, _02062D00 ; =sub_020628D8
	mov r1, #1
	bx r3
	nop
_02062D00: .word sub_020628D8
	thumb_func_end sub_02062CF8

	thumb_func_start sub_02062D04
sub_02062D04: ; 0x02062D04
	ldr r3, _02062D0C ; =sub_020628BC
	mov r1, #2
	bx r3
	nop
_02062D0C: .word sub_020628BC
	thumb_func_end sub_02062D04

	thumb_func_start sub_02062D10
sub_02062D10: ; 0x02062D10
	ldr r3, _02062D18 ; =sub_020628C4
	mov r1, #2
	bx r3
	nop
_02062D18: .word sub_020628C4
	thumb_func_end sub_02062D10

	thumb_func_start sub_02062D1C
sub_02062D1C: ; 0x02062D1C
	ldr r3, _02062D24 ; =sub_020628D8
	mov r1, #2
	bx r3
	nop
_02062D24: .word sub_020628D8
	thumb_func_end sub_02062D1C

	thumb_func_start sub_02062D28
sub_02062D28: ; 0x02062D28
	ldr r3, _02062D30 ; =sub_020628BC
	mov r1, #4
	bx r3
	nop
_02062D30: .word sub_020628BC
	thumb_func_end sub_02062D28

	thumb_func_start sub_02062D34
sub_02062D34: ; 0x02062D34
	ldr r3, _02062D3C ; =sub_020628C4
	mov r1, #8
	bx r3
	nop
_02062D3C: .word sub_020628C4
	thumb_func_end sub_02062D34

	thumb_func_start sub_02062D40
sub_02062D40: ; 0x02062D40
	ldr r3, _02062D48 ; =sub_020628BC
	mov r1, #1
	lsl r1, r1, #0xe
	bx r3
	; .align 2, 0
_02062D48: .word sub_020628BC
	thumb_func_end sub_02062D40

	thumb_func_start sub_02062D4C
sub_02062D4C: ; 0x02062D4C
	ldr r3, _02062D54 ; =sub_020628D8
	mov r1, #1
	lsl r1, r1, #0xe
	bx r3
	; .align 2, 0
_02062D54: .word sub_020628D8
	thumb_func_end sub_02062D4C

	thumb_func_start sub_02062D58
sub_02062D58: ; 0x02062D58
	ldr r3, _02062D60 ; =sub_020628D8
	mov r1, #2
	lsl r1, r1, #8
	bx r3
	; .align 2, 0
_02062D60: .word sub_020628D8
	thumb_func_end sub_02062D58

	thumb_func_start sub_02062D64
sub_02062D64: ; 0x02062D64
	push {r3, lr}
	cmp r1, #1
	bne _02062D74
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628BC
	pop {r3, pc}
_02062D74:
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D64

	thumb_func_start sub_02062D80
sub_02062D80: ; 0x02062D80
	push {r3, lr}
	cmp r1, #1
	bne _02062D90
	mov r1, #1
	lsl r1, r1, #0x12
	bl sub_020628C4
	pop {r3, pc}
_02062D90:
	mov r1, #1
	lsl r1, r1, #0x12
	bl sub_020628BC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D80

	thumb_func_start sub_02062D9C
sub_02062D9C: ; 0x02062D9C
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628D8
	cmp r0, #1
	beq _02062DAE
	mov r0, #1
	pop {r3, pc}
_02062DAE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D9C

	thumb_func_start sub_02062DB4
sub_02062DB4: ; 0x02062DB4
	push {r3, lr}
	cmp r1, #1
	bne _02062DC4
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628BC
	pop {r3, pc}
_02062DC4:
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062DB4

	thumb_func_start sub_02062DD0
sub_02062DD0: ; 0x02062DD0
	ldr r3, _02062DD8 ; =sub_020628BC
	mov r1, #0x40
	bx r3
	nop
_02062DD8: .word sub_020628BC
	thumb_func_end sub_02062DD0

	thumb_func_start sub_02062DDC
sub_02062DDC: ; 0x02062DDC
	ldr r3, _02062DE4 ; =sub_020628C4
	mov r1, #0x40
	bx r3
	nop
_02062DE4: .word sub_020628C4
	thumb_func_end sub_02062DDC

	thumb_func_start sub_02062DE8
sub_02062DE8: ; 0x02062DE8
	push {r3, lr}
	mov r1, #0x40
	bl sub_020628D8
	cmp r0, #1
	bne _02062DF8
	mov r0, #1
	pop {r3, pc}
_02062DF8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062DE8

	thumb_func_start sub_02062DFC
sub_02062DFC: ; 0x02062DFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #0
	bne _02062E10
	mov r0, #0
	pop {r4, pc}
_02062E10:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02062E22
	mov r0, #1
	pop {r4, pc}
_02062E22:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062DFC

	thumb_func_start sub_02062E28
sub_02062E28: ; 0x02062E28
	push {r3, lr}
	cmp r1, #1
	bne _02062E38
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628BC
	pop {r3, pc}
_02062E38:
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E28

	thumb_func_start sub_02062E44
sub_02062E44: ; 0x02062E44
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628D0
	cmp r0, #0
	beq _02062E56
	mov r0, #1
	pop {r3, pc}
_02062E56:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E44

	thumb_func_start sub_02062E5C
sub_02062E5C: ; 0x02062E5C
	push {r3, lr}
	cmp r1, #1
	bne _02062E6C
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_020628BC
	pop {r3, pc}
_02062E6C:
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E5C

	thumb_func_start sub_02062E78
sub_02062E78: ; 0x02062E78
	push {r3, lr}
	cmp r1, #1
	bne _02062E88
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628BC
	pop {r3, pc}
_02062E88:
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E78

	thumb_func_start sub_02062E94
sub_02062E94: ; 0x02062E94
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628D0
	cmp r0, #0
	beq _02062EA6
	mov r0, #1
	pop {r3, pc}
_02062EA6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E94

	thumb_func_start sub_02062EAC
sub_02062EAC: ; 0x02062EAC
	push {r3, lr}
	cmp r1, #1
	bne _02062EBC
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628BC
	pop {r3, pc}
_02062EBC:
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EAC

	thumb_func_start sub_02062EC8
sub_02062EC8: ; 0x02062EC8
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628D0
	cmp r0, #0
	beq _02062EDA
	mov r0, #1
	pop {r3, pc}
_02062EDA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EC8

	thumb_func_start sub_02062EE0
sub_02062EE0: ; 0x02062EE0
	push {r3, lr}
	cmp r1, #1
	bne _02062EF0
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628BC
	pop {r3, pc}
_02062EF0:
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EE0

	thumb_func_start sub_02062EFC
sub_02062EFC: ; 0x02062EFC
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628D0
	cmp r0, #0
	beq _02062F0E
	mov r0, #1
	pop {r3, pc}
_02062F0E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EFC

	thumb_func_start sub_02062F14
sub_02062F14: ; 0x02062F14
	push {r3, lr}
	cmp r1, #1
	bne _02062F24
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628BC
	pop {r3, pc}
_02062F24:
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F14

	thumb_func_start sub_02062F30
sub_02062F30: ; 0x02062F30
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628D0
	cmp r0, #0
	beq _02062F42
	mov r0, #1
	pop {r3, pc}
_02062F42:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F30

	thumb_func_start sub_02062F48
sub_02062F48: ; 0x02062F48
	push {r3, lr}
	cmp r1, #1
	bne _02062F58
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628BC
	pop {r3, pc}
_02062F58:
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F48

	thumb_func_start sub_02062F64
sub_02062F64: ; 0x02062F64
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628D0
	cmp r0, #0
	beq _02062F76
	mov r0, #1
	pop {r3, pc}
_02062F76:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F64

	thumb_func_start sub_02062F7C
sub_02062F7C: ; 0x02062F7C
	push {r3, lr}
	mov r1, #0x10
	bl sub_020628D0
	cmp r0, #0
	beq _02062F8C
	mov r0, #1
	pop {r3, pc}
_02062F8C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062F7C

	thumb_func_start sub_02062F90
sub_02062F90: ; 0x02062F90
	push {r3, lr}
	cmp r1, #1
	bne _02062FA0
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628BC
	pop {r3, pc}
_02062FA0:
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F90

	thumb_func_start sub_02062FAC
sub_02062FAC: ; 0x02062FAC
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628D0
	cmp r0, #0
	beq _02062FBE
	mov r0, #1
	pop {r3, pc}
_02062FBE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062FAC

	thumb_func_start sub_02062FC4
sub_02062FC4: ; 0x02062FC4
	push {r3, lr}
	cmp r1, #1
	bne _02062FD2
	mov r1, #4
	bl sub_020628F0
	pop {r3, pc}
_02062FD2:
	mov r1, #4
	bl sub_020628F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062FC4

	thumb_func_start sub_02062FDC
sub_02062FDC: ; 0x02062FDC
	push {r3, lr}
	mov r1, #4
	bl sub_02062904
	cmp r0, #0
	beq _02062FEC
	mov r0, #1
	pop {r3, pc}
_02062FEC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062FDC

	thumb_func_start sub_02062FF0
sub_02062FF0: ; 0x02062FF0
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02062FF0

	thumb_func_start sub_02062FF4
sub_02062FF4: ; 0x02062FF4
	str r1, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02062FF4

	thumb_func_start sub_02062FF8
sub_02062FF8: ; 0x02062FF8
	ldr r0, [r0, #0x50]
	bx lr
	thumb_func_end sub_02062FF8

	thumb_func_start sub_02062FFC
sub_02062FFC: ; 0x02062FFC
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end sub_02062FFC

	thumb_func_start sub_02063000
sub_02063000: ; 0x02063000
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_02063000

	thumb_func_start sub_02063004
sub_02063004: ; 0x02063004
	str r1, [r0, #0x54]
	bx lr
	thumb_func_end sub_02063004

	thumb_func_start sub_02063008
sub_02063008: ; 0x02063008
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end sub_02063008

	thumb_func_start sub_0206300C
sub_0206300C: ; 0x0206300C
	str r1, [r0, #0x58]
	bx lr
	thumb_func_end sub_0206300C

	thumb_func_start sub_02063010
sub_02063010: ; 0x02063010
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02063010

	thumb_func_start sub_02063014
sub_02063014: ; 0x02063014
	str r1, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02063014

	thumb_func_start sub_02063018
sub_02063018: ; 0x02063018
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end sub_02063018

	thumb_func_start sub_0206301C
sub_0206301C: ; 0x0206301C
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_0206301C

	thumb_func_start sub_02063020
sub_02063020: ; 0x02063020
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063020

	thumb_func_start sub_02063024
sub_02063024: ; 0x02063024
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063024

	thumb_func_start sub_02063028
sub_02063028: ; 0x02063028
	ldr r2, [r0, #0x64]
	add r1, r2, r1
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063028

	thumb_func_start sub_02063030
sub_02063030: ; 0x02063030
	ldr r0, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063030

	thumb_func_start sub_02063034
sub_02063034: ; 0x02063034
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063034

	thumb_func_start sub_02063038
sub_02063038: ; 0x02063038
	ldr r2, [r0, #0x68]
	add r1, r2, r1
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063038

	thumb_func_start sub_02063040
sub_02063040: ; 0x02063040
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063040

	thumb_func_start sub_02063044
sub_02063044: ; 0x02063044
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063044

	thumb_func_start sub_02063048
sub_02063048: ; 0x02063048
	ldr r2, [r0, #0x6c]
	add r1, r2, r1
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063048

	thumb_func_start sub_02063050
sub_02063050: ; 0x02063050
	add r2, r0, #0
	add r2, #0x70
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02063050

	thumb_func_start sub_02063060
sub_02063060: ; 0x02063060
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x70
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02063060

	thumb_func_start sub_02063070
sub_02063070: ; 0x02063070
	add r0, #0x70
	bx lr
	thumb_func_end sub_02063070

	thumb_func_start sub_02063074
sub_02063074: ; 0x02063074
	ldr r0, [r0, #0x74]
	bx lr
	thumb_func_end sub_02063074

	thumb_func_start sub_02063078
sub_02063078: ; 0x02063078
	add r2, r0, #0
	add r2, #0x7c
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02063078

	thumb_func_start sub_02063088
sub_02063088: ; 0x02063088
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x7c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02063088

	thumb_func_start sub_02063098
sub_02063098: ; 0x02063098
	add r0, #0x7c
	bx lr
	thumb_func_end sub_02063098

	thumb_func_start sub_0206309C
sub_0206309C: ; 0x0206309C
	add r2, r0, #0
	add r2, #0x88
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_0206309C

	thumb_func_start sub_020630AC
sub_020630AC: ; 0x020630AC
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x88
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020630AC

	thumb_func_start sub_020630BC
sub_020630BC: ; 0x020630BC
	add r2, r0, #0
	add r2, #0x94
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_020630BC

	thumb_func_start sub_020630CC
sub_020630CC: ; 0x020630CC
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x94
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020630CC

	thumb_func_start sub_020630DC
sub_020630DC: ; 0x020630DC
	push {r3, lr}
	bl sub_02063074
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020630DC

	thumb_func_start sub_020630F0
sub_020630F0: ; 0x020630F0
	strh r1, [r0]
	bx lr
	thumb_func_end sub_020630F0

	thumb_func_start sub_020630F4
sub_020630F4: ; 0x020630F4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_020630F4

	thumb_func_start sub_020630F8
sub_020630F8: ; 0x020630F8
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_020630F8

	thumb_func_start sub_020630FC
sub_020630FC: ; 0x020630FC
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_020630FC

	thumb_func_start sub_02063100
sub_02063100: ; 0x02063100
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_02063100

	thumb_func_start sub_02063104
sub_02063104: ; 0x02063104
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063104

	thumb_func_start sub_02063108
sub_02063108: ; 0x02063108
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_02063108

	thumb_func_start sub_0206310C
sub_0206310C: ; 0x0206310C
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end sub_0206310C

	thumb_func_start sub_02063110
sub_02063110: ; 0x02063110
	strh r1, [r0, #8]
	bx lr
	thumb_func_end sub_02063110

	thumb_func_start sub_02063114
sub_02063114: ; 0x02063114
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063114

	thumb_func_start sub_02063118
sub_02063118: ; 0x02063118
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_02063118

	thumb_func_start sub_0206311C
sub_0206311C: ; 0x0206311C
	ldrh r0, [r0, #0xa]
	bx lr
	thumb_func_end sub_0206311C

	thumb_func_start sub_02063120
sub_02063120: ; 0x02063120
	strh r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02063120

	thumb_func_start sub_02063124
sub_02063124: ; 0x02063124
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063124

	thumb_func_start sub_0206312C
sub_0206312C: ; 0x0206312C
	push {r3, lr}
	cmp r2, #0
	beq _0206313C
	cmp r2, #1
	beq _02063140
	cmp r2, #2
	beq _02063144
	b _02063148
_0206313C:
	strh r1, [r0, #0xe]
	pop {r3, pc}
_02063140:
	strh r1, [r0, #0x10]
	pop {r3, pc}
_02063144:
	strh r1, [r0, #0x12]
	pop {r3, pc}
_02063148:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206312C

	thumb_func_start sub_02063150
sub_02063150: ; 0x02063150
	push {r3, lr}
	cmp r1, #0
	beq _02063160
	cmp r1, #1
	beq _02063164
	cmp r1, #2
	beq _02063168
	b _0206316C
_02063160:
	ldrh r0, [r0, #0xe]
	pop {r3, pc}
_02063164:
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
_02063168:
	ldrh r0, [r0, #0x12]
	pop {r3, pc}
_0206316C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02063150

	thumb_func_start sub_02063174
sub_02063174: ; 0x02063174
	strh r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02063174

	thumb_func_start sub_02063178
sub_02063178: ; 0x02063178
	mov r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063178

	thumb_func_start sub_02063180
sub_02063180: ; 0x02063180
	strh r1, [r0, #0x16]
	bx lr
	thumb_func_end sub_02063180

	thumb_func_start sub_02063184
sub_02063184: ; 0x02063184
	mov r1, #0x16
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063184

	thumb_func_start sub_0206318C
sub_0206318C: ; 0x0206318C
	strh r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0206318C

	thumb_func_start sub_02063190
sub_02063190: ; 0x02063190
	ldrh r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02063190

	thumb_func_start sub_02063194
sub_02063194: ; 0x02063194
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02063194

	thumb_func_start sub_02063198
sub_02063198: ; 0x02063198
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02063198

	thumb_func_start sub_0206319C
sub_0206319C: ; 0x0206319C
	strh r1, [r0, #0x1a]
	bx lr
	thumb_func_end sub_0206319C

	thumb_func_start sub_020631A0
sub_020631A0: ; 0x020631A0
	ldrh r0, [r0, #0x1a]
	bx lr
	thumb_func_end sub_020631A0

	thumb_func_start sub_020631A4
sub_020631A4: ; 0x020631A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	mov r4, #0
	add r5, r2, #0
_020631B0:
	add r0, r5, #0
	bl sub_020631D8
	cmp r0, #0
	bne _020631CC
	add r0, r5, #0
	bl sub_020630F4
	cmp r6, r0
	bne _020631CC
	ldr r0, [sp]
	lsl r1, r4, #5
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
_020631CC:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, r7
	blt _020631B0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020631A4

	thumb_func_start sub_020631D8
sub_020631D8: ; 0x020631D8
	push {r3, lr}
	bl sub_0206311C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020631F0 ; =0x0000FFFF
	cmp r1, r0
	bne _020631EC
	mov r0, #1
	pop {r3, pc}
_020631EC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020631F0: .word 0x0000FFFF
	thumb_func_end sub_020631D8

	thumb_func_start sub_020631F4
sub_020631F4: ; 0x020631F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020631D8
	cmp r0, #1
	beq _02063204
	bl sub_02022974
_02063204:
	add r0, r4, #0
	bl sub_02063114
	pop {r4, pc}
	thumb_func_end sub_020631F4

	thumb_func_start sub_0206320C
sub_0206320C: ; 0x0206320C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x44
	blo _02063218
	bl sub_02022974
_02063218:
	ldr r0, _02063220 ; =0x020EE3A8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02063220: .word 0x020EE3A8
	thumb_func_end sub_0206320C

	thumb_func_start sub_02063224
sub_02063224: ; 0x02063224
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063224

	thumb_func_start sub_02063228
sub_02063228: ; 0x02063228
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063228

	thumb_func_start sub_0206322C
sub_0206322C: ; 0x0206322C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0206322C

	thumb_func_start sub_02063230
sub_02063230: ; 0x02063230
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02063230

	thumb_func_start sub_02063234
sub_02063234: ; 0x02063234
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063234

	thumb_func_start sub_02063238
sub_02063238: ; 0x02063238
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063238

	thumb_func_start sub_0206323C
sub_0206323C: ; 0x0206323C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0206323C

	thumb_func_start sub_02063240
sub_02063240: ; 0x02063240
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02063240

	thumb_func_start sub_02063244
sub_02063244: ; 0x02063244
	push {r3, lr}
	ldr r3, _02063264 ; =0x021FB97C
	ldr r1, _02063268 ; =0x0000FFFF
_0206324A:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _02063254
	ldr r0, [r3, #4]
	pop {r3, pc}
_02063254:
	add r3, #8
	ldr r2, [r3, #0]
	cmp r2, r1
	bne _0206324A
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02063264: .word 0x021FB97C
_02063268: .word 0x0000FFFF
	thumb_func_end sub_02063244

	thumb_func_start sub_0206326C
sub_0206326C: ; 0x0206326C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02062824
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02062878
	add r4, r0, #0
_02063284:
	add r0, r4, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _020632C6
	ldr r0, [sp]
	cmp r0, #0
	beq _020632AE
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	bne _020632AE
	add r0, r4, #0
	bl sub_02063018
	cmp r6, r0
	bne _020632AE
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020632AE:
	add r0, r4, #0
	bl sub_02063020
	cmp r5, r0
	bne _020632C6
	add r0, r4, #0
	bl sub_02063040
	cmp r6, r0
	bne _020632C6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020632C6:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	sub r7, r7, #1
	bne _02063284
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206326C

	thumb_func_start sub_020632D4
sub_020632D4: ; 0x020632D4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r2, #0
	asr r2, r1, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	add r5, r0, #0
	bl sub_02063024
	ldr r1, [r4, #4]
	add r0, r5, #0
	asr r2, r1, #3
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063034
	ldr r1, [r4, #8]
	add r0, r5, #0
	asr r2, r1, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063044
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206296C
	add r0, r5, #0
	bl sub_020656DC
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020628C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020632D4

	thumb_func_start sub_02063340
sub_02063340: ; 0x02063340
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #2
	add r6, r3, #0
	lsl r3, r1, #0x10
	lsl r2, r2, #0xe
	add r2, r3, r2
	add r5, r0, #0
	str r2, [sp]
	bl sub_02063024
	lsl r0, r4, #0xf
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063034
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063044
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02064208
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl sub_0206296C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020628C4
	add r0, r5, #0
	bl sub_020656DC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063340

	thumb_func_start sub_020633A8
sub_020633A8: ; 0x020633A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062B28
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062944
	add r0, r5, #0
	bl sub_0206239C
	add r0, r5, #0
	bl sub_02063400
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020633A8

	thumb_func_start sub_020633C8
sub_020633C8: ; 0x020633C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206290C
	add r0, r4, #0
	bl sub_02062D28
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020633C8

	thumb_func_start sub_020633E0
sub_020633E0: ; 0x020633E0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E0

	thumb_func_start sub_020633E4
sub_020633E4: ; 0x020633E4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E4

	thumb_func_start sub_020633E8
sub_020633E8: ; 0x020633E8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E8

	thumb_func_start sub_020633EC
sub_020633EC: ; 0x020633EC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633EC

	thumb_func_start sub_020633F0
sub_020633F0: ; 0x020633F0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F0

	thumb_func_start sub_020633F4
sub_020633F4: ; 0x020633F4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F4

	thumb_func_start sub_020633F8
sub_020633F8: ; 0x020633F8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F8

	thumb_func_start sub_020633FC
sub_020633FC: ; 0x020633FC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633FC

	thumb_func_start sub_02063400
sub_02063400: ; 0x02063400
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062B00
	add r0, r4, #0
	bl sub_020673B8
	pop {r4, pc}
	thumb_func_end sub_02063400

	thumb_func_start sub_02063410
sub_02063410: ; 0x02063410
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl sub_02062CBC
	cmp r0, #0
	bne _02063474
	add r0, r4, #0
	bl sub_020634DC
	add r0, r4, #0
	bl sub_020634F4
	add r0, r4, #0
	bl sub_02063518
	add r0, r4, #0
	mov r1, #0x10
	bl sub_020628D0
	cmp r0, #0
	beq _02063444
	add r0, r4, #0
	bl sub_020658B4
	b _02063468
_02063444:
	add r0, r4, #0
	bl sub_02062DE8
	cmp r0, #0
	bne _02063468
	add r0, r4, #0
	bl sub_02063478
	cmp r0, #1
	bne _02063468
	add r0, r4, #0
	bl sub_020673C0
	cmp r0, #0
	bne _02063468
	add r0, r4, #0
	bl sub_02062B14
_02063468:
	add r0, r4, #0
	bl sub_0206353C
	add r0, r4, #0
	bl sub_02063574
_02063474:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02063410

	thumb_func_start sub_02063478
sub_02063478: ; 0x02063478
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _02063488
	mov r0, #1
	pop {r4, pc}
_02063488:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628D0
	cmp r0, #0
	bne _0206349A
	mov r0, #1
	pop {r4, pc}
_0206349A:
	add r0, r4, #0
	bl sub_02062948
	cmp r0, #0x32
	bne _020634A8
	mov r0, #1
	pop {r4, pc}
_020634A8:
	add r0, r4, #0
	bl sub_020628B8
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r0, #0
	tst r2, r1
	beq _020634C2
	lsl r1, r1, #0xb
	tst r1, r0
	bne _020634C2
	mov r0, #0
	pop {r4, pc}
_020634C2:
	mov r1, #2
	lsl r1, r1, #0xa
	tst r0, r1
	beq _020634D8
	add r0, r4, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _020634D8
	mov r0, #0
	pop {r4, pc}
_020634D8:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02063478

	thumb_func_start sub_020634DC
sub_020634DC: ; 0x020634DC
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _020634F2
	add r0, r4, #0
	bl sub_020642F8
_020634F2:
	pop {r4, pc}
	thumb_func_end sub_020634DC

	thumb_func_start sub_020634F4
sub_020634F4: ; 0x020634F4
	push {r4, lr}
	mov r1, #2
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _02063514
	add r0, r4, #0
	bl sub_02064390
	cmp r0, #1
	bne _02063514
	add r0, r4, #0
	bl sub_02062D28
_02063514:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020634F4

	thumb_func_start sub_02063518
sub_02063518: ; 0x02063518
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206352C
	add r0, r4, #0
	bl sub_020635AC
_0206352C:
	ldr r1, _02063538 ; =0x00010004
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	nop
_02063538: .word 0x00010004
	thumb_func_end sub_02063518

	thumb_func_start sub_0206353C
sub_0206353C: ; 0x0206353C
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0x10
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _02063554
	add r0, r4, #0
	bl sub_020636F0
	b _02063566
_02063554:
	add r0, r4, #0
	mov r1, #4
	bl sub_020628D0
	cmp r0, #0
	beq _02063566
	add r0, r4, #0
	bl sub_0206363C
_02063566:
	ldr r1, _02063570 ; =0x00010004
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
_02063570: .word 0x00010004
	thumb_func_end sub_0206353C

	thumb_func_start sub_02063574
sub_02063574: ; 0x02063574
	push {r4, lr}
	mov r1, #2
	lsl r1, r1, #0x10
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206358C
	add r0, r4, #0
	bl sub_020637D4
	b _0206359E
_0206358C:
	add r0, r4, #0
	mov r1, #8
	bl sub_020628D0
	cmp r0, #0
	beq _0206359E
	add r0, r4, #0
	bl sub_0206375C
_0206359E:
	ldr r1, _020635A8 ; =0x00020008
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
_020635A8: .word 0x00020008
	thumb_func_end sub_02063574

	thumb_func_start sub_020635AC
sub_020635AC: ; 0x020635AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206363A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063964
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A70
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C00
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
_0206363A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020635AC

	thumb_func_start sub_0206363C
sub_0206363C: ; 0x0206363C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _020636EE
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0206397C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063994
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A78
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C18
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C48
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C60
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063E14
_020636EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206363C

	thumb_func_start sub_020636F0
sub_020636F0: ; 0x020636F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206375A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A78
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A64
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063E14
_0206375A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020636F0

	thumb_func_start sub_0206375C
sub_0206375C: ; 0x0206375C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _020637D2
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CFC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DA8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063B20
_020637D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206375C

	thumb_func_start sub_020637D4
sub_020637D4: ; 0x020637D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _02063862
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CFC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DA8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063B20
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0206397C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063BB4
_02063862:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020637D4

	thumb_func_start sub_02063864
sub_02063864: ; 0x02063864
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02062EFC
	cmp r0, #0
	bne _0206393C
	add r0, r5, #0
	bl sub_0205DCF0
	cmp r0, #1
	beq _02063888
	add r0, r5, #0
	bl sub_0205DD0C
	cmp r0, #1
	bne _020638A2
_02063888:
	ldr r5, _02063950 ; =0x020EE738
	add r3, sp, #0x3c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638A2:
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _020638B6
	add r0, r5, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _020638D0
_020638B6:
	ldr r5, _02063954 ; =0x020EE744
	add r3, sp, #0x30
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638D0:
	add r0, r5, #0
	bl sub_0205DD5C
	cmp r0, #1
	bne _020638F4
	ldr r5, _02063958 ; =0x020EE720
	add r3, sp, #0x24
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638F4:
	add r0, r5, #0
	bl sub_0205DD50
	cmp r0, #1
	bne _02063918
	ldr r5, _0206395C ; =0x020EE72C
	add r3, sp, #0x18
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_02063918:
	add r0, r5, #0
	bl sub_0205DD44
	cmp r0, #1
	bne _0206393C
	ldr r5, _02063960 ; =0x020EE750
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_0206393C:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02063950: .word 0x020EE738
_02063954: .word 0x020EE744
_02063958: .word 0x020EE720
_0206395C: .word 0x020EE72C
_02063960: .word 0x020EE750
	thumb_func_end sub_02063864

	thumb_func_start sub_02063964
sub_02063964: ; 0x02063964
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAC8
	cmp r0, #1
	bne _0206397A
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F2EA4
_0206397A:
	pop {r4, pc}
	thumb_func_end sub_02063964

	thumb_func_start sub_0206397C
sub_0206397C: ; 0x0206397C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAC8
	cmp r0, #1
	bne _02063992
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F2EA4
_02063992:
	pop {r4, pc}
	thumb_func_end sub_0206397C

	thumb_func_start sub_02063994
sub_02063994: ; 0x02063994
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	add r4, r2, #0
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	beq _02063A2C
	add r0, r4, #0
	bl sub_0205DFAC
	cmp r0, #1
	bne _020639CA
	ldr r0, [r6, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _020639C0
	add r0, r5, #0
	bl ov5_021F1EBC
	b _020639CA
_020639C0:
	cmp r0, #2
	bne _020639CA
	add r0, r5, #0
	bl ov5_021F1EC8
_020639CA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640A0
	cmp r0, #1
	bne _020639F4
	ldr r0, [r6, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _020639E8
	add r0, r5, #0
	bl ov5_021F1E8C
	pop {r4, r5, r6, pc}
_020639E8:
	cmp r0, #2
	bne _02063A2C
	add r0, r5, #0
	bl ov5_021F1E98
	pop {r4, r5, r6, pc}
_020639F4:
	add r0, r4, #0
	bl sub_0205DD50
	cmp r0, #1
	beq _02063A12
	add r0, r4, #0
	bl sub_0205DD5C
	cmp r0, #1
	beq _02063A12
	add r0, r4, #0
	bl sub_0205DD44
	cmp r0, #0
	beq _02063A1A
_02063A12:
	add r0, r5, #0
	bl ov5_021F1EB0
	pop {r4, r5, r6, pc}
_02063A1A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02064108
	cmp r0, #1
	bne _02063A2C
	add r0, r5, #0
	bl ov5_021F1EA4
_02063A2C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063994

	thumb_func_start sub_02063A30
sub_02063A30: ; 0x02063A30
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DB78
	cmp r0, #1
	bne _02063A5A
	add r0, r4, #0
	bl sub_02062EC8
	cmp r0, #0
	bne _02063A62
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F331C
	add r0, r4, #0
	mov r1, #1
	bl sub_02062EAC
	pop {r4, pc}
_02063A5A:
	add r0, r4, #0
	mov r1, #0
	bl sub_02062EAC
_02063A62:
	pop {r4, pc}
	thumb_func_end sub_02063A30

	thumb_func_start sub_02063A64
sub_02063A64: ; 0x02063A64
	ldr r3, _02063A6C ; =sub_02062EAC
	mov r1, #0
	bx r3
	nop
_02063A6C: .word sub_02062EAC
	thumb_func_end sub_02063A64

	thumb_func_start sub_02063A70
sub_02063A70: ; 0x02063A70
	push {r3, lr}
	bl sub_02063A78
	pop {r3, pc}
	thumb_func_end sub_02063A70

	thumb_func_start sub_02063A78
sub_02063A78: ; 0x02063A78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02062A40
	bl sub_02062CE4
	cmp r0, #0
	beq _02063B1C
	ldr r0, [r6, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02063B1C
	add r0, r4, #0
	bl sub_0205DAC8
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _02063AF2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063AF2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #0
	beq _02063AFE
_02063AF2:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, r5, r6, pc}
_02063AFE:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	bne _02063B1C
	add r0, r5, #0
	bl ov5_021F1570
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628BC
_02063B1C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063A78

	thumb_func_start sub_02063B20
sub_02063B20: ; 0x02063B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02062A40
	bl sub_02062CE4
	cmp r0, #0
	beq _02063BB0
	ldr r0, [r6, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02063BB0
	add r0, r4, #0
	bl sub_0205DAC8
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _02063B9A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063B9A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #0
	beq _02063BA6
_02063B9A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, r5, r6, pc}
_02063BA6:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_02063BB0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063B20

	thumb_func_start sub_02063BB4
sub_02063BB4: ; 0x02063BB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DC5C
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063BFC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063BFC
	add r0, r5, #0
	bl ov5_021F3638
_02063BFC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02063BB4

	thumb_func_start sub_02063C00
sub_02063C00: ; 0x02063C00
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _02063C16
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F3844
_02063C16:
	pop {r4, pc}
	thumb_func_end sub_02063C00

	thumb_func_start sub_02063C18
sub_02063C18: ; 0x02063C18
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _02063C2E
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F3844
_02063C2E:
	pop {r4, pc}
	thumb_func_end sub_02063C18

	thumb_func_start sub_02063C30
sub_02063C30: ; 0x02063C30
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _02063C46
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F3AEC
_02063C46:
	pop {r4, pc}
	thumb_func_end sub_02063C30

	thumb_func_start sub_02063C48
sub_02063C48: ; 0x02063C48
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _02063C5E
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F3AEC
_02063C5E:
	pop {r4, pc}
	thumb_func_end sub_02063C48

	thumb_func_start sub_02063C60
sub_02063C60: ; 0x02063C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063C90
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063010
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2AE4
_02063C90:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063C60

	thumb_func_start sub_02063C94
sub_02063C94: ; 0x02063C94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063CC4
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063030
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2AE4
_02063CC4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063C94

	thumb_func_start sub_02063CC8
sub_02063CC8: ; 0x02063CC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _02063CF8
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063010
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2C38
_02063CF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063CC8

	thumb_func_start sub_02063CFC
sub_02063CFC: ; 0x02063CFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _02063D2C
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063030
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2C38
_02063D2C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063CFC

	thumb_func_start sub_02063D30
sub_02063D30: ; 0x02063D30
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, [r3, #4]
	add r5, r0, #0
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	beq _02063DA6
	bl sub_02062F64
	cmp r0, #0
	bne _02063DA6
	bl sub_0205DF98
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205DE90
	cmp r0, #1
	bne _02063D5A
	add r4, r6, #0
	b _02063D72
_02063D5A:
	add r0, r5, #0
	mov r1, #1
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl sub_0205DE90
	cmp r0, #1
	bne _02063D72
	add r4, r6, #0
_02063D72:
	bl sub_0205DF98
	cmp r4, r0
	beq _02063DA6
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F48
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #1
	bne _02063D90
	mov r1, #2
	b _02063DA0
_02063D90:
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063D9E
	mov r1, #0
	b _02063DA0
_02063D9E:
	mov r1, #1
_02063DA0:
	add r0, r5, #0
	bl ov5_021F1800
_02063DA6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02063D30

	thumb_func_start sub_02063DA8
sub_02063DA8: ; 0x02063DA8
	push {r4, lr}
	ldr r1, [r3, #4]
	add r4, r0, #0
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	beq _02063DD8
	bl sub_02062F64
	cmp r0, #0
	beq _02063DD8
	add r0, r4, #0
	mov r1, #1
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DE90
	cmp r0, #0
	bne _02063DD8
	add r0, r4, #0
	mov r1, #0
	bl sub_02062F48
_02063DD8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02063DA8

	thumb_func_start sub_02063DDC
sub_02063DDC: ; 0x02063DDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205DEF0
	cmp r0, #1
	bne _02063DF6
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F14
	pop {r3, r4, r5, pc}
_02063DF6:
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02063E12
	add r0, r4, #0
	bl sub_0205DEFC
	cmp r0, #0
	bne _02063E12
	add r0, r5, #0
	mov r1, #0
	bl sub_02062F14
_02063E12:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02063DDC

	thumb_func_start sub_02063E14
sub_02063E14: ; 0x02063E14
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063E14

	thumb_func_start sub_02063E18
sub_02063E18: ; 0x02063E18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, [sp, #0x28]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r2, r3, #0
	add r1, r5, #0
	add r3, r7, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_02063FAC
	cmp r0, #1
	bne _02063E3A
	mov r0, #1
	orr r4, r0
_02063E3A:
	add r0, r6, #0
	bl sub_02062C00
	add r1, sp, #0xc
	str r1, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r7, #0
	bl sub_02055024
	cmp r0, #1
	bne _02063E64
	mov r0, #2
	orr r4, r0
	add r1, sp, #0xc
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02063E64
	mov r0, #8
	orr r4, r0
_02063E64:
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02064004
	cmp r0, #1
	bne _02063E78
	mov r0, #2
	orr r4, r0
_02063E78:
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_02063F00
	cmp r0, #1
	bne _02063E8C
	mov r0, #4
	orr r4, r0
_02063E8C:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063E18

	thumb_func_start sub_02063E94
sub_02063E94: ; 0x02063E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r1, sp, #8
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02063050
	ldr r0, [sp, #0x28]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #8
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02063E18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02063E94

	thumb_func_start sub_02063EBC
sub_02063EBC: ; 0x02063EBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020641A8
	str r4, [sp]
	add r3, r0, #0
	ldr r4, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, r7
	add r3, r4, r3
	bl sub_02063E94
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063EBC

	thumb_func_start sub_02063F00
sub_02063F00: ; 0x02063F00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062A40
	add r5, r0, #0
	bl sub_02062868
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02062824
	str r0, [sp, #4]
_02063F20:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	cmp r0, r1
	beq _02063F98
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02063F98
	mov r1, #1
	ldr r0, [sp, #8]
	lsl r1, r1, #0x12
	bl sub_020628D0
	cmp r0, #0
	bne _02063F98
	ldr r0, [sp, #8]
	bl sub_02063020
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02063040
	cmp r5, r4
	bne _02063F6C
	cmp r0, r7
	bne _02063F6C
	ldr r0, [sp, #8]
	bl sub_02063030
	sub r0, r0, r6
	bpl _02063F62
	neg r0, r0
_02063F62:
	cmp r0, #2
	bge _02063F6C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02063F6C:
	ldr r0, [sp, #8]
	bl sub_02063008
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02063018
	cmp r5, r4
	bne _02063F98
	cmp r0, r7
	bne _02063F98
	ldr r0, [sp, #8]
	bl sub_02063030
	sub r0, r0, r6
	bpl _02063F8E
	neg r0, r0
_02063F8E:
	cmp r0, #2
	bge _02063F98
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02063F98:
	add r0, sp, #8
	bl sub_02062880
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #4]
	bne _02063F20
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02063F00

	thumb_func_start sub_02063FAC
sub_02063FAC: ; 0x02063FAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r3, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02062A00
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02063FD8
	add r1, r7, r0
	sub r0, r7, r0
	cmp r0, r5
	bgt _02063FD4
	cmp r1, r5
	bge _02063FD8
_02063FD4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02063FD8:
	add r0, r6, #0
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02062A08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02063FFE
	add r1, r5, r0
	sub r0, r5, r0
	cmp r0, r4
	bgt _02063FFA
	cmp r1, r4
	bge _02063FFE
_02063FFA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02063FFE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063FAC

	thumb_func_start sub_02064004
sub_02064004: ; 0x02064004
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _0206405E
	add r0, r4, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r4, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	add r6, r0, #0
	bl sub_0205DF98
	cmp r6, r0
	bne _02064040
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02064040:
	ldr r1, _02064064 ; =0x020EE76C
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	beq _0206405A
	ldr r1, _02064068 ; =0x020EE77C
	add r0, r6, #0
	ldr r1, [r1, r5]
	blx r1
	cmp r0, #1
	bne _0206405E
_0206405A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206405E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064064: .word 0x020EE76C
_02064068: .word 0x020EE77C
	thumb_func_end sub_02064004

	thumb_func_start sub_0206406C
sub_0206406C: ; 0x0206406C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF10
	cmp r0, #0
	beq _0206408C
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _0206409C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206408C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _0206409C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206409C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206406C

	thumb_func_start sub_020640A0
sub_020640A0: ; 0x020640A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF34
	cmp r0, #0
	beq _020640C0
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _020640D0
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640C0:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB6C
	cmp r0, #0
	beq _020640D0
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020640A0

	thumb_func_start sub_020640D4
sub_020640D4: ; 0x020640D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF58
	cmp r0, #0
	beq _020640F4
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _02064104
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640F4:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD18
	cmp r0, #0
	beq _02064104
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064104:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020640D4

	thumb_func_start sub_02064108
sub_02064108: ; 0x02064108
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF58
	cmp r0, #0
	beq _02064128
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _02064138
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064128:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD38
	cmp r0, #0
	beq _02064138
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064138:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064108

	thumb_func_start sub_0206413C
sub_0206413C: ; 0x0206413C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064158
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	bne _02064158
	mov r0, #1
	pop {r4, pc}
_02064158:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206413C

	thumb_func_start sub_0206415C
sub_0206415C: ; 0x0206415C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064178
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF64
	cmp r0, #1
	bne _02064178
	mov r0, #1
	pop {r4, pc}
_02064178:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206415C

	thumb_func_start sub_0206417C
sub_0206417C: ; 0x0206417C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064198
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF78
	cmp r0, #1
	bne _02064198
	mov r0, #1
	pop {r4, pc}
_02064198:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206417C

	thumb_func_start sub_0206419C
sub_0206419C: ; 0x0206419C
	lsl r1, r0, #2
	ldr r0, _020641A4 ; =0x020EE75C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_020641A4: .word 0x020EE75C
	thumb_func_end sub_0206419C

	thumb_func_start sub_020641A8
sub_020641A8: ; 0x020641A8
	lsl r1, r0, #2
	ldr r0, _020641B0 ; =0x020EE78C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_020641B0: .word 0x020EE78C
	thumb_func_end sub_020641A8

	thumb_func_start sub_020641B4
sub_020641B4: ; 0x020641B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	add r0, r4, #0
	bl sub_0206419C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063028
	add r0, r5, #0
	mov r1, #0
	bl sub_02063038
	add r0, r4, #0
	bl sub_020641A8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063048
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020641B4

	thumb_func_start sub_02064208
sub_02064208: ; 0x02064208
	push {r4, lr}
	add r4, r0, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206300C
	add r0, r4, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063014
	add r0, r4, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206301C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064208

	thumb_func_start sub_02064238
sub_02064238: ; 0x02064238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp]
	add r0, r5, #0
	bl sub_020641A8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062C00
	ldr r2, [sp]
	add r1, r6, r7
	add r2, r2, r5
	bl sub_02054F94
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064238

	thumb_func_start sub_02064270
sub_02064270: ; 0x02064270
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02063050
	ldr r1, [sp]
	ldr r0, [r4, #0]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064270

	thumb_func_start sub_020642A4
sub_020642A4: ; 0x020642A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, sp, #0
	add r6, r0, #0
	add r4, r2, #0
	bl sub_02063050
	cmp r5, #3
	bhi _020642EA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020642C4: ; jump table
	.short _020642CC - _020642C4 - 2 ; case 0
	.short _020642D4 - _020642C4 - 2 ; case 1
	.short _020642DC - _020642C4 - 2 ; case 2
	.short _020642E4 - _020642C4 - 2 ; case 3
_020642CC:
	ldr r0, [sp, #8]
	sub r0, r0, r4
	str r0, [sp, #8]
	b _020642EA
_020642D4:
	ldr r0, [sp, #8]
	add r0, r0, r4
	str r0, [sp, #8]
	b _020642EA
_020642DC:
	ldr r0, [sp]
	sub r0, r0, r4
	str r0, [sp]
	b _020642EA
_020642E4:
	ldr r0, [sp]
	add r0, r0, r4
	str r0, [sp]
_020642EA:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020642A4

	thumb_func_start sub_020642F8
sub_020642F8: ; 0x020642F8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r1, sp, #0xc
	add r5, r0, #0
	bl sub_02063050
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02062E44
	cmp r0, #1
	bne _0206432A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628C4
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206432A:
	add r0, r5, #0
	bl sub_02062FAC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, sp, #0
	add r2, r4, #0
	bl sub_020644D0
	add r4, r0, #0
	cmp r4, #1
	bne _0206437E
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	asr r2, r1, #3
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063034
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628C4
	b _02064388
_0206437E:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628BC
_02064388:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020642F8

	thumb_func_start sub_02064390
sub_02064390: ; 0x02064390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205DF98
	add r6, r0, #0
	add r0, r5, #0
	add r4, r6, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _020643E2
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r4, #0
	add r2, r6, #0
	add r7, r0, #0
	bl sub_02054F94
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02054F94
	add r4, r0, #0
_020643E2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062BF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062BE0
	add r0, r4, #0
	bl sub_0205DF8C
	cmp r0, #1
	bne _0206440A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206440A:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02064390

	thumb_func_start sub_02064418
sub_02064418: ; 0x02064418
	cmp r0, #3
	bhi _0206444E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02064428: ; jump table
	.short _02064430 - _02064428 - 2 ; case 0
	.short _02064438 - _02064428 - 2 ; case 1
	.short _02064440 - _02064428 - 2 ; case 2
	.short _02064448 - _02064428 - 2 ; case 3
_02064430:
	ldr r0, [r1, #8]
	sub r0, r0, r2
	str r0, [r1, #8]
	bx lr
_02064438:
	ldr r0, [r1, #8]
	add r0, r0, r2
	str r0, [r1, #8]
	bx lr
_02064440:
	ldr r0, [r1, #0]
	sub r0, r0, r2
	str r0, [r1, #0]
	bx lr
_02064448:
	ldr r0, [r1, #0]
	add r0, r0, r2
	str r0, [r1, #0]
_0206444E:
	bx lr
	thumb_func_end sub_02064418

	thumb_func_start sub_02064450
sub_02064450: ; 0x02064450
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r3, r3, r0
	lsl r1, r1, #0x10
	str r3, [r2, #0]
	add r0, r1, r0
	str r0, [r2, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064450

	thumb_func_start sub_02064464
sub_02064464: ; 0x02064464
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062948
	sub r0, #0x33
	cmp r0, #3
	bhi _02064478
	add r0, r4, #0
	bl sub_02062B14
_02064478:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064464

	thumb_func_start sub_0206447C
sub_0206447C: ; 0x0206447C
	lsl r1, r0, #2
	ldr r0, _02064484 ; =0x020EE79C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02064484: .word 0x020EE79C
	thumb_func_end sub_0206447C

	thumb_func_start sub_02064488
sub_02064488: ; 0x02064488
	cmp r0, r2
	ble _02064490
	mov r0, #2
	bx lr
_02064490:
	cmp r0, r2
	bge _02064498
	mov r0, #3
	bx lr
_02064498:
	cmp r1, r3
	bgt _020644A0
	mov r0, #1
	bx lr
_020644A0:
	mov r0, #0
	bx lr
	thumb_func_end sub_02064488

	thumb_func_start sub_020644A4
sub_020644A4: ; 0x020644A4
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	ldr r3, [r4, #8]
	bl sub_02054FBC
	add r1, sp, #4
	ldrb r1, [r1]
	cmp r1, #0
	bne _020644C6
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020644C6:
	str r0, [r4, #4]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020644A4

	thumb_func_start sub_020644D0
sub_020644D0: ; 0x020644D0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r4, r2, #0
	ldr r1, [r5, #4]
	ldr r2, [r5, #0]
	ldr r3, [r5, #8]
	bl sub_02054FBC
	add r1, sp, #4
	ldrb r1, [r1]
	cmp r1, #0
	bne _020644F4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020644F4:
	cmp r1, #2
	bne _02064502
	cmp r4, #0
	bne _02064502
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02064502:
	str r0, [r5, #4]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020644D0

	thumb_func_start sub_0206450C
sub_0206450C: ; 0x0206450C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #8
	add r5, r0, #0
	bl sub_02062A54
	add r4, r0, #0
	mov r1, #0
	ldr r0, _02064538 ; =0x020EEA88
	mvn r1, r1
	bl sub_0206530C
	strh r0, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	str r6, [r4, #4]
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02064538: .word 0x020EEA88
	thumb_func_end sub_0206450C

	thumb_func_start sub_0206453C
sub_0206453C: ; 0x0206453C
	ldr r3, _02064544 ; =sub_0206450C
	mov r1, #0
	bx r3
	nop
_02064544: .word sub_0206450C
	thumb_func_end sub_0206453C

	thumb_func_start sub_02064548
sub_02064548: ; 0x02064548
	ldr r3, _02064550 ; =sub_0206450C
	mov r1, #1
	bx r3
	nop
_02064550: .word sub_0206450C
	thumb_func_end sub_02064548

	thumb_func_start sub_02064554
sub_02064554: ; 0x02064554
	ldr r3, _0206455C ; =sub_0206450C
	mov r1, #2
	bx r3
	nop
_0206455C: .word sub_0206450C
	thumb_func_end sub_02064554

	thumb_func_start sub_02064560
sub_02064560: ; 0x02064560
	ldr r3, _02064568 ; =sub_0206450C
	mov r1, #3
	bx r3
	nop
_02064568: .word sub_0206450C
	thumb_func_end sub_02064560

	thumb_func_start sub_0206456C
sub_0206456C: ; 0x0206456C
	ldr r3, _02064574 ; =sub_0206450C
	mov r1, #4
	bx r3
	nop
_02064574: .word sub_0206450C
	thumb_func_end sub_0206456C

	thumb_func_start sub_02064578
sub_02064578: ; 0x02064578
	ldr r3, _02064580 ; =sub_0206450C
	mov r1, #5
	bx r3
	nop
_02064580: .word sub_0206450C
	thumb_func_end sub_02064578

	thumb_func_start sub_02064584
sub_02064584: ; 0x02064584
	ldr r3, _0206458C ; =sub_0206450C
	mov r1, #6
	bx r3
	nop
_0206458C: .word sub_0206450C
	thumb_func_end sub_02064584

	thumb_func_start sub_02064590
sub_02064590: ; 0x02064590
	ldr r3, _02064598 ; =sub_0206450C
	mov r1, #7
	bx r3
	nop
_02064598: .word sub_0206450C
	thumb_func_end sub_02064590

	thumb_func_start sub_0206459C
sub_0206459C: ; 0x0206459C
	ldr r3, _020645A4 ; =sub_0206450C
	mov r1, #8
	bx r3
	nop
_020645A4: .word sub_0206450C
	thumb_func_end sub_0206459C

	thumb_func_start sub_020645A8
sub_020645A8: ; 0x020645A8
	ldr r3, _020645B0 ; =sub_0206450C
	mov r1, #9
	bx r3
	nop
_020645B0: .word sub_0206450C
	thumb_func_end sub_020645A8

	thumb_func_start sub_020645B4
sub_020645B4: ; 0x020645B4
	ldr r3, _020645BC ; =sub_0206450C
	mov r1, #0xa
	bx r3
	nop
_020645BC: .word sub_0206450C
	thumb_func_end sub_020645B4

	thumb_func_start sub_020645C0
sub_020645C0: ; 0x020645C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	mov r2, #0
	ldr r1, [r4, #4]
	add r0, r5, #0
	mvn r2, r2
	bl sub_02065448
	mov r2, #0
	add r1, r0, #0
	mvn r2, r2
	cmp r1, r2
	beq _020645E8
	add r0, r5, #0
	bl sub_02062974
	b _02064618
_020645E8:
	ldrh r0, [r4]
	cmp r0, #0
	bne _02064618
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _02064618
	ldr r0, _02064620 ; =0x020EEA88
	add r1, r2, #0
	bl sub_0206530C
	strh r0, [r4, #2]
	mov r1, #0
	ldr r0, [r4, #4]
	mvn r1, r1
	bl sub_02065330
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062974
_02064618:
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02064620: .word 0x020EEA88
	thumb_func_end sub_020645C0

	thumb_func_start sub_02064624
sub_02064624: ; 0x02064624
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064624

	thumb_func_start sub_02064628
sub_02064628: ; 0x02064628
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xb
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064628

	thumb_func_start sub_02064638
sub_02064638: ; 0x02064638
	push {r3, lr}
	mov r1, #0xc
	add r2, r1, #0
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064638

	thumb_func_start sub_02064648
sub_02064648: ; 0x02064648
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064648

	thumb_func_start sub_02064658
sub_02064658: ; 0x02064658
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #2
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064658

	thumb_func_start sub_02064668
sub_02064668: ; 0x02064668
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02062A54
	str r7, [r0, #4]
	str r4, [r0, #8]
	str r6, [r0, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064668

	thumb_func_start sub_02064690
sub_02064690: ; 0x02064690
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #4
	bhi _02064798
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020646AE: ; jump table
	.short _020646B8 - _020646AE - 2 ; case 0
	.short _020646E2 - _020646AE - 2 ; case 1
	.short _02064700 - _020646AE - 2 ; case 2
	.short _02064716 - _020646AE - 2 ; case 3
	.short _02064784 - _020646AE - 2 ; case 4
_020646B8:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_020646E2:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	beq _02064798
	mov r1, #0
	ldr r0, _0206479C ; =0x020EEA88
	mvn r1, r1
	bl sub_0206530C
	strh r0, [r4, #2]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064700:
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02064798
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064716:
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	bl sub_02065330
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020629A0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02064742
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206489C
	cmp r0, #0
	bne _02064742
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064742:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063EBC
	cmp r0, #0
	beq _02064766
	ldr r1, [r4, #4]
	cmp r1, #2
	bne _02064760
	mov r1, #1
	tst r0, r1
	beq _02064766
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064760:
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064766:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064784:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	beq _02064798
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strh r0, [r4]
_02064798:
	pop {r4, r5, r6, pc}
	nop
_0206479C: .word 0x020EEA88
	thumb_func_end sub_02064690

	thumb_func_start sub_020647A0
sub_020647A0: ; 0x020647A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	bl sub_02062FF0
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02063000
	add r5, r0, #0
	ldr r0, [sp]
	bl sub_02062A00
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_02062A08
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02062948
	cmp r0, #0xd
	bhi _02064894
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020647DC: ; jump table
	.short _02064894 - _020647DC - 2 ; case 0
	.short _02064894 - _020647DC - 2 ; case 1
	.short _02064894 - _020647DC - 2 ; case 2
	.short _02064894 - _020647DC - 2 ; case 3
	.short _02064894 - _020647DC - 2 ; case 4
	.short _02064894 - _020647DC - 2 ; case 5
	.short _020647F8 - _020647DC - 2 ; case 6
	.short _0206480A - _020647DC - 2 ; case 7
	.short _0206481C - _020647DC - 2 ; case 8
	.short _0206482E - _020647DC - 2 ; case 9
	.short _02064840 - _020647DC - 2 ; case 10
	.short _02064856 - _020647DC - 2 ; case 11
	.short _0206486C - _020647DC - 2 ; case 12
	.short _02064880 - _020647DC - 2 ; case 13
_020647F8:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	sub r0, r5, r0
	str r0, [r4, #4]
	add sp, #8
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206480A:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	add sp, #8
	sub r0, r5, r0
	str r0, [r4, #4]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206481C:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206482E:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064840:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	sub r0, r5, r0
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	add sp, #8
	add r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064856:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	sub r0, r5, r0
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	add sp, #8
	add r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206486C:
	sub r0, r6, r7
	str r0, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	add sp, #8
	sub r0, r5, r0
	str r0, [r4, #4]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064880:
	sub r0, r6, r7
	str r0, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064894:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020647A0

	thumb_func_start sub_0206489C
sub_0206489C: ; 0x0206489C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r1, sp, #0
	bl sub_020647A0
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r5, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020641A8
	add r1, r5, r0
	ldr r0, [sp]
	cmp r0, r4
	bgt _020648D6
	ldr r0, [sp, #8]
	cmp r0, r4
	bge _020648DC
_020648D6:
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_020648DC:
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt _020648E8
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _020648EE
_020648E8:
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_020648EE:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206489C

	thumb_func_start sub_020648F4
sub_020648F4: ; 0x020648F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020648F4

	thumb_func_start sub_02064918
sub_02064918: ; 0x02064918
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0206492C
	cmp r0, #1
	pop {r3, r4, r5, pc}
_0206492C:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_02062974
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064918

	thumb_func_start sub_0206493C
sub_0206493C: ; 0x0206493C
	ldr r3, _02064944 ; =sub_020648F4
	mov r1, #0
	bx r3
	nop
_02064944: .word sub_020648F4
	thumb_func_end sub_0206493C

	thumb_func_start sub_02064948
sub_02064948: ; 0x02064948
	ldr r3, _02064950 ; =sub_020648F4
	mov r1, #1
	bx r3
	nop
_02064950: .word sub_020648F4
	thumb_func_end sub_02064948

	thumb_func_start sub_02064954
sub_02064954: ; 0x02064954
	ldr r3, _0206495C ; =sub_020648F4
	mov r1, #2
	bx r3
	nop
_0206495C: .word sub_020648F4
	thumb_func_end sub_02064954

	thumb_func_start sub_02064960
sub_02064960: ; 0x02064960
	ldr r3, _02064968 ; =sub_020648F4
	mov r1, #3
	bx r3
	nop
_02064968: .word sub_020648F4
	thumb_func_end sub_02064960

	thumb_func_start sub_0206496C
sub_0206496C: ; 0x0206496C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206496C

	thumb_func_start sub_02064990
sub_02064990: ; 0x02064990
	ldr r3, _02064998 ; =sub_0206496C
	mov r1, #2
	bx r3
	nop
_02064998: .word sub_0206496C
	thumb_func_end sub_02064990

	thumb_func_start sub_0206499C
sub_0206499C: ; 0x0206499C
	ldr r3, _020649A4 ; =sub_0206496C
	mov r1, #3
	bx r3
	nop
_020649A4: .word sub_0206496C
	thumb_func_end sub_0206499C

	thumb_func_start sub_020649A8
sub_020649A8: ; 0x020649A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _020649C8 ; =0x020EE900
	add r4, r0, #0
	mov r7, #2
_020649B6:
	ldrsb r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _020649B6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020649C8: .word 0x020EE900
	thumb_func_end sub_020649A8

	thumb_func_start sub_020649CC
sub_020649CC: ; 0x020649CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x26
	add r2, r1, #0
	sub r2, #0x27
	add r5, r0, #0
	bl sub_02065448
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020649EA
	add r0, r5, #0
	bl sub_0206298C
_020649EA:
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020649CC

	thumb_func_start sub_02064A00
sub_02064A00: ; 0x02064A00
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02064A10
	mov r0, #0
	pop {r4, pc}
_02064A10:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02064A00

	thumb_func_start sub_02064A1C
sub_02064A1C: ; 0x02064A1C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02064A40
	mov r1, #0x26
	add r2, r1, #0
	sub r2, #0x27
	bl sub_02065448
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02064A40
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02064A40:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x18
	bge _02064A4E
	mov r0, #0
	pop {r4, pc}
_02064A4E:
	mov r0, #3
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064A1C

	thumb_func_start sub_02064A58
sub_02064A58: ; 0x02064A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _02064AE8 ; =0x020EEA24
	add r2, sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r4, _02064AEC ; =0x020EEA38
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	beq _02064A8E
	add r5, r2, #0
_02064A8E:
	add r0, r7, #0
	bl sub_0206298C
	mov r4, #0
	ldr r2, [r5, #0]
	sub r1, r4, #1
	cmp r2, r1
	beq _02064AB2
	add r1, r5, #0
	sub r2, r4, #1
_02064AA2:
	ldr r3, [r1, #0]
	cmp r0, r3
	beq _02064AB2
	add r1, r1, #4
	ldr r3, [r1, #0]
	add r4, r4, #1
	cmp r3, r2
	bne _02064AA2
_02064AB2:
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064AC2
	bl sub_02022974
_02064AC2:
	add r4, r4, #1
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064AD2
	mov r4, #0
_02064AD2:
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02062974
	mov r0, #0
	strb r0, [r6, #2]
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064AE8: .word 0x020EEA24
_02064AEC: .word 0x020EEA38
	thumb_func_end sub_02064A58

	thumb_func_start sub_02064AF0
sub_02064AF0: ; 0x02064AF0
	ldr r3, _02064AF8 ; =sub_0206496C
	mov r1, #3
	bx r3
	nop
_02064AF8: .word sub_0206496C
	thumb_func_end sub_02064AF0

	thumb_func_start sub_02064AFC
sub_02064AFC: ; 0x02064AFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064B1C ; =0x020EE870
	add r4, r0, #0
	mov r7, #2
_02064B0A:
	ldrsb r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064B0A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02064B1C: .word 0x020EE870
	thumb_func_end sub_02064AFC

	thumb_func_start sub_02064B20
sub_02064B20: ; 0x02064B20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064B20

	thumb_func_start sub_02064B40
sub_02064B40: ; 0x02064B40
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02064B50
	mov r0, #0
	pop {r4, pc}
_02064B50:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02064B40

	thumb_func_start sub_02064B5C
sub_02064B5C: ; 0x02064B5C
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x18
	bge _02064B6A
	mov r0, #0
	bx lr
_02064B6A:
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064B5C

	thumb_func_start sub_02064B74
sub_02064B74: ; 0x02064B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _02064C20 ; =0x020EEA4C
	add r2, sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02064C24 ; =0x020EEA60
	str r0, [r2, #0]
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	beq _02064BAA
	add r5, r4, #0
_02064BAA:
	add r0, r7, #0
	bl sub_0206298C
	mov r4, #0
	ldr r2, [r5, #0]
	sub r1, r4, #1
	cmp r2, r1
	beq _02064BCE
	add r1, r5, #0
	sub r2, r4, #1
_02064BBE:
	ldr r3, [r1, #0]
	cmp r0, r3
	beq _02064BCE
	add r1, r1, #4
	ldr r3, [r1, #0]
	add r4, r4, #1
	cmp r3, r2
	bne _02064BBE
_02064BCE:
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064BDE
	bl sub_02022974
_02064BDE:
	add r4, r4, #1
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064BEE
	mov r4, #0
_02064BEE:
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02062974
	add r0, r7, #0
	bl sub_0206298C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02062968
	cmp r4, r0
	bne _02064C14
	mov r0, #0
	ldrsb r0, [r6, r0]
	bl sub_0206447C
	strb r0, [r6]
_02064C14:
	mov r0, #0
	strb r0, [r6, #2]
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064C20: .word 0x020EEA4C
_02064C24: .word 0x020EEA60
	thumb_func_end sub_02064B74

	thumb_func_start sub_02064C28
sub_02064C28: ; 0x02064C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064C46
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02065550
_02064C46:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064C28

	thumb_func_start sub_02064C48
sub_02064C48: ; 0x02064C48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064C68 ; =0x020EE814
	add r4, r0, #0
	mov r7, #0
_02064C56:
	ldrsh r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064C56
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02064C68: .word 0x020EE814
	thumb_func_end sub_02064C48

	thumb_func_start sub_02064C6C
sub_02064C6C: ; 0x02064C6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062968
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r6, r0, #0
	cmp r1, #1
	bne _02064C86
	bl sub_0206447C
	add r6, r0, #0
_02064C86:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064CA0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062974
_02064CA0:
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02064C6C

	thumb_func_start sub_02064CA8
sub_02064CA8: ; 0x02064CA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #2
	ldrsh r1, [r6, r1]
	add r5, r0, #0
	cmp r1, #0
	beq _02064D06
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063040
	cmp r7, r4
	bne _02064D06
	ldr r1, [sp]
	cmp r1, r0
	bne _02064D06
	add r0, r5, #0
	bl sub_0206299C
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064D02
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062974
_02064D02:
	mov r0, #0
	strh r0, [r6, #2]
_02064D06:
	add r0, r5, #0
	bl sub_0206299C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063EBC
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _02064D30
	add r0, r4, #0
	strh r1, [r6, #2]
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063EBC
_02064D30:
	mov r1, #0xc
	cmp r0, #0
	beq _02064D38
	mov r1, #0x20
_02064D38:
	add r0, r4, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064D58
	add r0, r5, #0
	add r1, r6, #4
	bl sub_02065568
_02064D58:
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #2
	strh r0, [r6]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064CA8

	thumb_func_start sub_02064D68
sub_02064D68: ; 0x02064D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02064D92
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064D8E
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020655E4
_02064D8E:
	mov r0, #0
	strh r0, [r4]
_02064D92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064D68

	thumb_func_start sub_02064D98
sub_02064D98: ; 0x02064D98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02062A54
	add r4, r0, #0
	strb r6, [r4, #2]
	ldr r0, [sp]
	strb r7, [r4, #3]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064DC6
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065550
_02064DC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02064D98

	thumb_func_start sub_02064DC8
sub_02064DC8: ; 0x02064DC8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xe
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DC8

	thumb_func_start sub_02064DD8
sub_02064DD8: ; 0x02064DD8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xf
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DD8

	thumb_func_start sub_02064DE8
sub_02064DE8: ; 0x02064DE8
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x10
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DE8

	thumb_func_start sub_02064DF8
sub_02064DF8: ; 0x02064DF8
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x11
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DF8

	thumb_func_start sub_02064E08
sub_02064E08: ; 0x02064E08
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x12
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E08

	thumb_func_start sub_02064E18
sub_02064E18: ; 0x02064E18
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x13
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E18

	thumb_func_start sub_02064E28
sub_02064E28: ; 0x02064E28
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E28

	thumb_func_start sub_02064E38
sub_02064E38: ; 0x02064E38
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x15
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E38

	thumb_func_start sub_02064E48
sub_02064E48: ; 0x02064E48
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x16
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E48

	thumb_func_start sub_02064E58
sub_02064E58: ; 0x02064E58
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x17
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E58

	thumb_func_start sub_02064E68
sub_02064E68: ; 0x02064E68
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x18
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E68

	thumb_func_start sub_02064E78
sub_02064E78: ; 0x02064E78
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x19
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E78

	thumb_func_start sub_02064E88
sub_02064E88: ; 0x02064E88
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1a
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E88

	thumb_func_start sub_02064E98
sub_02064E98: ; 0x02064E98
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1b
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E98

	thumb_func_start sub_02064EA8
sub_02064EA8: ; 0x02064EA8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1c
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064EA8

	thumb_func_start sub_02064EB8
sub_02064EB8: ; 0x02064EB8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1d
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064EB8

	thumb_func_start sub_02064EC8
sub_02064EC8: ; 0x02064EC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064EE8 ; =0x020EE7AC
	add r4, r0, #0
_02064ED4:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064ED4
	pop {r4, r5, r6, pc}
	nop
_02064EE8: .word 0x020EE7AC
	thumb_func_end sub_02064EC8

	thumb_func_start sub_02064EEC
sub_02064EEC: ; 0x02064EEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	ldrb r1, [r4, #2]
	add r6, r0, #0
	cmp r2, r1
	bne _02064F2E
	ldrb r1, [r4, #3]
	cmp r1, #0
	bne _02064F18
	bl sub_02062FF0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063020
	cmp r5, r0
	bne _02064F2E
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02064F2E
_02064F18:
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r5, r0
	bne _02064F2E
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02064F2E:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _02064F60
	add r0, r6, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r7, r5
	bne _02064F60
	ldr r1, [sp]
	cmp r1, r0
	bne _02064F60
	mov r0, #0
	strb r0, [r4, #1]
_02064F60:
	ldr r0, [r4, #4]
	bl sub_02065358
	add r7, r0, #0
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064F88
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02064F88:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
	mov r1, #1
	tst r1, r0
	beq _02064FC4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064FBC
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02064FBC:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
_02064FC4:
	mov r1, #0xc
	cmp r0, #0
	beq _02064FCC
	mov r1, #0x20
_02064FCC:
	add r0, r5, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065668
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064FEE
	add r1, r4, #0
	add r0, r6, #0
	add r1, #8
	bl sub_02065568
_02064FEE:
	add r0, r6, #0
	bl sub_02062D04
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064EEC

	thumb_func_start sub_02064FFC
sub_02064FFC: ; 0x02064FFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02065028
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02065024
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_020655E4
_02065024:
	mov r0, #0
	strb r0, [r4]
_02065028:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064FFC

	thumb_func_start sub_0206502C
sub_0206502C: ; 0x0206502C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02062A54
	add r4, r0, #0
	strb r6, [r4, #2]
	ldr r0, [sp]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _0206505A
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065550
_0206505A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206502C

	thumb_func_start sub_0206505C
sub_0206505C: ; 0x0206505C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1e
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206505C

	thumb_func_start sub_0206506C
sub_0206506C: ; 0x0206506C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1f
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206506C

	thumb_func_start sub_0206507C
sub_0206507C: ; 0x0206507C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x20
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206507C

	thumb_func_start sub_0206508C
sub_0206508C: ; 0x0206508C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x21
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206508C

	thumb_func_start sub_0206509C
sub_0206509C: ; 0x0206509C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x22
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206509C

	thumb_func_start sub_020650AC
sub_020650AC: ; 0x020650AC
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x23
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650AC

	thumb_func_start sub_020650BC
sub_020650BC: ; 0x020650BC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x24
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650BC

	thumb_func_start sub_020650CC
sub_020650CC: ; 0x020650CC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x25
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650CC

	thumb_func_start sub_020650DC
sub_020650DC: ; 0x020650DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _020650FC ; =0x020EE820
	add r4, r0, #0
_020650E8:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _020650E8
	pop {r4, r5, r6, pc}
	nop
_020650FC: .word 0x020EE820
	thumb_func_end sub_020650DC

	thumb_func_start sub_02065100
sub_02065100: ; 0x02065100
	ldrb r1, [r0, #5]
	cmp r1, #1
	bne _0206511A
	mov r1, #1
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #1]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02065122
	mov r1, #3
	strb r1, [r0, #1]
	bx lr
_0206511A:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	strb r1, [r0, #1]
_02065122:
	bx lr
	thumb_func_end sub_02065100

	thumb_func_start sub_02065124
sub_02065124: ; 0x02065124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062950
	cmp r0, #0xa
	bne _02065180
	add r0, r5, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0206298C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02067D58
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02065180
	add r0, r6, #0
	mov r1, #0x30
	bl sub_02065838
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02065180:
	mov r0, #2
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02065124

	thumb_func_start sub_02065188
sub_02065188: ; 0x02065188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _020651A0
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #2
	strb r0, [r4]
_020651A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065188

	thumb_func_start sub_020651A4
sub_020651A4: ; 0x020651A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	ldrsb r2, [r4, r1]
	ldrb r1, [r4, #2]
	add r6, r0, #0
	cmp r2, r1
	bne _020651E8
	ldrb r1, [r4, #3]
	cmp r1, #0
	bne _020651D2
	bl sub_02062FF0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063020
	cmp r5, r0
	bne _020651E8
	add r0, r4, #0
	bl sub_02065100
	b _020651E8
_020651D2:
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r5, r0
	bne _020651E8
	add r0, r4, #0
	bl sub_02065100
_020651E8:
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0206521C
	add r0, r6, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r7, r5
	bne _0206521C
	ldr r1, [sp]
	cmp r1, r0
	bne _0206521C
	mov r0, #0
	strb r0, [r4, #1]
_0206521C:
	ldrb r0, [r4, #4]
	bl sub_02065358
	add r7, r0, #0
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02065246
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02065246:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
	mov r1, #1
	tst r1, r0
	beq _02065284
	add r0, r4, #0
	bl sub_02065100
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _0206527C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_0206527C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
_02065284:
	mov r1, #0xc
	cmp r0, #0
	beq _0206528C
	mov r1, #0x20
_0206528C:
	add r0, r5, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065668
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #1
	bne _020652AE
	add r1, r4, #0
	add r0, r6, #0
	add r1, #8
	bl sub_02065568
_020652AE:
	add r0, r6, #0
	bl sub_02062D04
	mov r0, #3
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020651A4

	thumb_func_start sub_020652BC
sub_020652BC: ; 0x020652BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _020652E8
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _020652E4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_020655E4
_020652E4:
	mov r0, #0
	strb r0, [r4]
_020652E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020652BC

	thumb_func_start sub_020652EC
sub_020652EC: ; 0x020652EC
	push {r4, lr}
	ldr r2, [r0, #0]
	mov r4, #0
	cmp r1, r2
	beq _02065300
_020652F6:
	add r0, r0, #4
	ldr r2, [r0, #0]
	add r4, r4, #1
	cmp r1, r2
	bne _020652F6
_02065300:
	cmp r4, #0
	bne _02065308
	bl sub_02022974
_02065308:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020652EC

	thumb_func_start sub_0206530C
sub_0206530C: ; 0x0206530C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020652EC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E1F6C
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206530C

	thumb_func_start sub_02065330
sub_02065330: ; 0x02065330
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02065358
	add r4, r0, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020652EC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E1F6C
	lsl r0, r1, #2
	ldr r0, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02065330

	thumb_func_start sub_02065358
sub_02065358: ; 0x02065358
	push {r3, lr}
	ldr r1, _02065378 ; =0x020EEB08
	mov r2, #0
_0206535E:
	cmp r2, r0
	bne _02065366
	ldr r0, [r1, #4]
	pop {r3, pc}
_02065366:
	add r1, #8
	ldr r2, [r1, #0]
	cmp r2, #0x27
	bne _0206535E
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_02065378: .word 0x020EEB08
	thumb_func_end sub_02065358

	thumb_func_start sub_0206537C
sub_0206537C: ; 0x0206537C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062950
	cmp r0, #1
	beq _02065392
	cmp r0, #2
	beq _02065392
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02065392:
	add r0, r5, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r6, r0, #0
	bl sub_0206140C
	cmp r0, #0
	bne _020653AC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653AC:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062948
	ldr r1, _02065444 ; =0x020EEAD0
_020653B6:
	lsl r2, r4, #2
	ldr r2, [r1, r2]
	add r4, r4, #1
	cmp r2, r0
	beq _020653C4
	cmp r2, #0xff
	bne _020653B6
_020653C4:
	cmp r0, r2
	beq _020653CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653CE:
	add r0, r6, #0
	bl sub_0205EB3C
	bl sub_020630DC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020630DC
	cmp r4, r0
	beq _020653EA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653EA:
	add r0, r6, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r3, [sp]
	ldr r0, [sp]
	add r5, r2, r3
	sub r1, r7, r0
	sub r3, r2, r3
	add r0, r7, r0
	cmp r3, r6
	bgt _0206543E
	cmp r5, r6
	blt _0206543E
	cmp r1, r4
	bgt _0206543E
	cmp r0, r4
	blt _0206543E
	add r1, r2, #0
	add r0, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02064488
	pop {r3, r4, r5, r6, r7, pc}
_0206543E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065444: .word 0x020EEAD0
	thumb_func_end sub_0206537C

	thumb_func_start sub_02065448
sub_02065448: ; 0x02065448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r4, r2, #0
	add r0, r1, #0
	bl sub_02065358
	add r1, r4, #0
	add r5, r0, #0
	bl sub_020652EC
	add r4, r0, #0
	cmp r4, #1
	bne _0206546C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0206546C:
	ldr r0, [sp]
	bl sub_0206537C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02065536
	mov r2, #0
	add r3, r5, #0
_0206547E:
	ldr r1, [r3, #0]
	cmp r0, r1
	beq _02065536
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r4
	blt _0206547E
	mov r7, #0
	mvn r7, r7
	ldr r0, [sp]
	add r6, r7, #0
	bl sub_02063020
	str r0, [sp, #8]
	ldr r0, [sp]
	bl sub_02063040
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02062C00
	bl sub_0205EF3C
	str r0, [sp, #0xc]
	bl sub_0205EABC
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_0205EAC8
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	ble _020654C6
	mov r7, #2
	b _020654CC
_020654C6:
	cmp r2, r1
	bge _020654CC
	mov r7, #3
_020654CC:
	ldr r1, [sp, #4]
	cmp r1, r0
	ble _020654D6
	mov r6, #0
	b _020654DC
_020654D6:
	cmp r1, r0
	bge _020654DC
	mov r6, #1
_020654DC:
	mov r0, #0
	sub r1, r0, #1
	cmp r7, r1
	bne _020654FA
_020654E4:
	ldr r1, [r5, #0]
	cmp r6, r1
	bne _020654F0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020654F0:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _020654E4
	b _02065532
_020654FA:
	cmp r6, r1
	bne _02065514
_020654FE:
	ldr r1, [r5, #0]
	cmp r7, r1
	bne _0206550A
	add sp, #0x14
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0206550A:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _020654FE
	b _02065532
_02065514:
	ldr r1, [r5, #0]
	cmp r7, r1
	bne _02065520
	add sp, #0x14
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02065520:
	cmp r6, r1
	bne _0206552A
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0206552A:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _02065514
_02065532:
	mov r0, #0
	mvn r0, r0
_02065536:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02065448

	thumb_func_start sub_0206553C
sub_0206553C: ; 0x0206553C
	push {r3, lr}
	bl sub_02062950
	sub r0, r0, #7
	cmp r0, #1
	bhi _0206554C
	mov r0, #1
	pop {r3, pc}
_0206554C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206553C

	thumb_func_start sub_02065550
sub_02065550: ; 0x02065550
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062950
	cmp r0, #7
	bne _02065562
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_02065562:
	mov r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end sub_02065550

	thumb_func_start sub_02065568
sub_02065568: ; 0x02065568
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0206298C
	mov r4, #0
	add r6, r0, #0
	add r1, r4, #0
	ldr r0, _020655E0 ; =0x020EEAB0
	mov r2, #1
	b _02065582
_0206557E:
	add r1, r1, #4
	add r4, r4, #1
_02065582:
	cmp r4, #4
	bge _02065592
	ldrsb r3, [r5, r2]
	lsl r3, r3, #4
	add r3, r0, r3
	ldr r3, [r1, r3]
	cmp r6, r3
	bne _0206557E
_02065592:
	cmp r4, #4
	blt _0206559A
	bl sub_02022974
_0206559A:
	add r0, r4, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	strb r6, [r5]
	mov r0, #1
	add r1, r2, r1
	ldrsb r0, [r5, r0]
	lsl r1, r1, #2
	lsl r2, r0, #4
	ldr r0, _020655E0 ; =0x020EEAB0
	add r0, r0, r2
	ldr r4, [r1, r0]
	add r0, r7, #0
	mov r1, #0x80
	bl sub_020628D0
	cmp r0, #0
	beq _020655C8
	mov r0, #1
	b _020655CA
_020655C8:
	mov r0, #0
_020655CA:
	strb r0, [r5, #2]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02062974
	add r0, r7, #0
	mov r1, #0x80
	bl sub_020628BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020655E0: .word 0x020EEAB0
	thumb_func_end sub_02065568

	thumb_func_start sub_020655E4
sub_020655E4: ; 0x020655E4
	push {r3, lr}
	ldrb r1, [r1, #2]
	cmp r1, #0
	bne _020655F2
	mov r1, #0x80
	bl sub_020628C4
_020655F2:
	pop {r3, pc}
	thumb_func_end sub_020655E4

	thumb_func_start sub_020655F4
sub_020655F4: ; 0x020655F4
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _02065606
	mov r0, #0
	pop {r4, pc}
_02065606:
	add r0, r4, #0
	mov r1, #2
	bl sub_020628D8
	cmp r0, #1
	bne _02065616
	mov r0, #0
	pop {r4, pc}
_02065616:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_020628D8
	cmp r0, #1
	bne _02065632
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _02065632
	mov r0, #0
	pop {r4, pc}
_02065632:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020655F4

	thumb_func_start sub_02065638
sub_02065638: ; 0x02065638
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x9a
	blt _02065646
	bl sub_02022974
_02065646:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062BB0
	add r0, r5, #0
	mov r1, #0
	bl sub_02062BC0
	add r0, r5, #0
	mov r1, #0x10
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0x20
	bl sub_020628C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065638

	thumb_func_start sub_02065668
sub_02065668: ; 0x02065668
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065668

	thumb_func_start sub_02065684
sub_02065684: ; 0x02065684
	push {r4, lr}
	mov r1, #0x10
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _02065696
	mov r0, #1
	pop {r4, pc}
_02065696:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	beq _020656A6
	mov r0, #1
	pop {r4, pc}
_020656A6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065684

	thumb_func_start sub_020656AC
sub_020656AC: ; 0x020656AC
	push {r4, lr}
	mov r1, #0x10
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _020656BE
	mov r0, #1
	pop {r4, pc}
_020656BE:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _020656CE
	mov r0, #0
	pop {r4, pc}
_020656CE:
	add r0, r4, #0
	mov r1, #0x30
	bl sub_020628C4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020656AC

	thumb_func_start sub_020656DC
sub_020656DC: ; 0x020656DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	pop {r4, pc}
	thumb_func_end sub_020656DC

	thumb_func_start sub_02065700
sub_02065700: ; 0x02065700
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _02065716
	bl sub_02022974
_02065716:
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0206571C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0206571C
	add r0, r5, #0
	bl sub_02062A40
	bl sub_02062858
	sub r2, r0, #1
	ldr r0, _02065748 ; =sub_02065788
	add r1, r4, #0
	bl sub_0200D9E8
	add r7, r0, #0
	bne _02065740
	bl sub_02022974
_02065740:
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065748: .word sub_02065788
	thumb_func_end sub_02065700

	thumb_func_start sub_0206574C
sub_0206574C: ; 0x0206574C
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206574C

	thumb_func_start sub_02065758
sub_02065758: ; 0x02065758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02065684
	cmp r0, #1
	beq _02065770
	bl sub_02022974
_02065770:
	ldr r0, [r4, #0xc]
	bl sub_020656AC
	mov r0, #4
	add r1, r4, #0
	bl sub_02018238
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02065758

	thumb_func_start sub_02065788
sub_02065788: ; 0x02065788
	push {r3, r4, r5, lr}
	ldr r4, _020657A0 ; =0x020EEE54
	add r5, r1, #0
_0206578E:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0206578E
	pop {r3, r4, r5, pc}
	nop
_020657A0: .word 0x020EEE54
	thumb_func_end sub_02065788

	thumb_func_start sub_020657A4
sub_020657A4: ; 0x020657A4
	mov r1, #0
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
	thumb_func_end sub_020657A4

	thumb_func_start sub_020657B0
sub_020657B0: ; 0x020657B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020655F4
	cmp r0, #0
	bne _020657C2
	mov r0, #0
	pop {r4, pc}
_020657C2:
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657B0

	thumb_func_start sub_020657CC
sub_020657CC: ; 0x020657CC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldrh r1, [r1]
	bl sub_02065638
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657CC

	thumb_func_start sub_020657E4
sub_020657E4: ; 0x020657E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02065684
	cmp r0, #0
	bne _020657F6
	mov r0, #0
	pop {r4, pc}
_020657F6:
	mov r0, #4
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657E4

	thumb_func_start sub_02065800
sub_02065800: ; 0x02065800
	ldr r1, [r0, #8]
	ldr r3, [r0, #0x10]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrh r1, [r3, #2]
	cmp r2, r1
	bge _02065816
	mov r1, #1
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02065816:
	add r1, r3, #4
	str r1, [r0, #0x10]
	ldrh r1, [r3, #4]
	cmp r1, #0xfe
	beq _02065828
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_02065828:
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #5
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	thumb_func_end sub_02065800

	thumb_func_start sub_02065834
sub_02065834: ; 0x02065834
	mov r0, #0
	bx lr
	thumb_func_end sub_02065834

	thumb_func_start sub_02065838
sub_02065838: ; 0x02065838
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	cmp r7, #4
	blt _02065846
	bl sub_02022974
_02065846:
	ldr r3, _02065878 ; =0x020EE31C
	ldr r6, [r3, #0]
	cmp r6, #0
	beq _02065870
	mov r1, #0
_02065850:
	add r2, r1, #0
	add r5, r6, #0
_02065854:
	ldr r0, [r5, #0]
	cmp r4, r0
	bne _02065860
	lsl r0, r7, #2
	ldr r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02065860:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, #4
	blt _02065854
	add r3, r3, #4
	ldr r6, [r3, #0]
	cmp r6, #0
	bne _02065850
_02065870:
	bl sub_02022974
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065878: .word 0x020EE31C
	thumb_func_end sub_02065838

	thumb_func_start sub_0206587C
sub_0206587C: ; 0x0206587C
	push {r4, r5}
	ldr r4, _020658B0 ; =0x020EE31C
	ldr r5, [r4, #0]
	cmp r5, #0
	beq _020658A6
	mov r2, #0
_02065888:
	add r3, r2, #0
_0206588A:
	ldr r1, [r5, #0]
	cmp r0, r1
	bne _02065896
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_02065896:
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #4
	blt _0206588A
	add r4, r4, #4
	ldr r5, [r4, #0]
	cmp r5, #0
	bne _02065888
_020658A6:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	nop
_020658B0: .word 0x020EE31C
	thumb_func_end sub_0206587C

	thumb_func_start sub_020658B4
sub_020658B4: ; 0x020658B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
_020658B8:
	add r0, r5, #0
	bl sub_02062BB8
	add r4, r0, #0
	cmp r4, #0xff
	beq _020658D8
	add r0, r5, #0
	bl sub_02062BD8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065910
	cmp r0, #0
	bne _020658B8
_020658D8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020658B4

	thumb_func_start sub_020658DC
sub_020658DC: ; 0x020658DC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020658B4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _020658F4
	mov r0, #0
	pop {r4, pc}
_020658F4:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020658DC

	thumb_func_start sub_02065910
sub_02065910: ; 0x02065910
	push {r3, lr}
	lsl r3, r1, #2
	ldr r1, _02065920 ; =0x020EE4B8
	ldr r3, [r1, r3]
	lsl r1, r2, #2
	ldr r1, [r3, r1]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_02065920: .word 0x020EE4B8
	thumb_func_end sub_02065910

	thumb_func_start sub_02065924
sub_02065924: ; 0x02065924
	push {r3, lr}
	mov r1, #0x20
	bl sub_020628BC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02065924

	thumb_func_start sub_02065930
sub_02065930: ; 0x02065930
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02064208
	add r0, r4, #0
	bl sub_02062BC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065930

	thumb_func_start sub_02065950
sub_02065950: ; 0x02065950
	push {r3, lr}
	mov r1, #0
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065950

	thumb_func_start sub_0206595C
sub_0206595C: ; 0x0206595C
	push {r3, lr}
	mov r1, #1
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0206595C

	thumb_func_start sub_02065968
sub_02065968: ; 0x02065968
	push {r3, lr}
	mov r1, #2
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065968

	thumb_func_start sub_02065974
sub_02065974: ; 0x02065974
	push {r3, lr}
	mov r1, #3
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065974

	thumb_func_start sub_02065980
sub_02065980: ; 0x02065980
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	strh r7, [r0, #2]
	str r4, [r0, #4]
	str r6, [r0, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02065980

	thumb_func_start sub_020659C8
sub_020659C8: ; 0x020659C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _020659F4
	mov r0, #0
	pop {r3, r4, r5, pc}
_020659F4:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020659C8

	thumb_func_start sub_02065A1C
sub_02065A1C: ; 0x02065A1C
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	lsl r2, r2, #0xb
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A1C

	thumb_func_start sub_02065A30
sub_02065A30: ; 0x02065A30
	push {r3, lr}
	mov r1, #1
	lsl r2, r1, #0xb
	mov r3, #0x20
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065A30

	thumb_func_start sub_02065A44
sub_02065A44: ; 0x02065A44
	push {r3, lr}
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xa
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A44

	thumb_func_start sub_02065A58
sub_02065A58: ; 0x02065A58
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	mov r1, #3
	lsl r2, r2, #0xb
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A58

	thumb_func_start sub_02065A6C
sub_02065A6C: ; 0x02065A6C
	push {r3, lr}
	mov r2, #2
	str r2, [sp]
	mov r1, #0
	lsl r2, r2, #0xb
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A6C

	thumb_func_start sub_02065A80
sub_02065A80: ; 0x02065A80
	push {r3, lr}
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xc
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A80

	thumb_func_start sub_02065A94
sub_02065A94: ; 0x02065A94
	push {r3, lr}
	mov r1, #2
	lsl r2, r1, #0xb
	mov r3, #0x10
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065A94

	thumb_func_start sub_02065AA8
sub_02065AA8: ; 0x02065AA8
	push {r3, lr}
	mov r2, #2
	str r2, [sp]
	mov r1, #3
	lsl r2, r2, #0xb
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AA8

	thumb_func_start sub_02065ABC
sub_02065ABC: ; 0x02065ABC
	push {r3, lr}
	mov r1, #3
	mov r2, #2
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xc
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065ABC

	thumb_func_start sub_02065AD4
sub_02065AD4: ; 0x02065AD4
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xd
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AD4

	thumb_func_start sub_02065AE8
sub_02065AE8: ; 0x02065AE8
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xc
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AE8

	thumb_func_start sub_02065AFC
sub_02065AFC: ; 0x02065AFC
	push {r3, lr}
	mov r2, #2
	mov r1, #3
	lsl r2, r2, #0xc
	mov r3, #8
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AFC

	thumb_func_start sub_02065B10
sub_02065B10: ; 0x02065B10
	push {r3, lr}
	mov r3, #4
	mov r1, #0
	lsl r2, r3, #0xc
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B10

	thumb_func_start sub_02065B24
sub_02065B24: ; 0x02065B24
	push {r3, lr}
	mov r1, #1
	mov r3, #4
	lsl r2, r1, #0xe
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B24

	thumb_func_start sub_02065B38
sub_02065B38: ; 0x02065B38
	push {r3, lr}
	mov r1, #2
	mov r3, #4
	lsl r2, r1, #0xd
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B38

	thumb_func_start sub_02065B4C
sub_02065B4C: ; 0x02065B4C
	push {r3, lr}
	mov r3, #4
	mov r1, #3
	lsl r2, r3, #0xc
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B4C

	thumb_func_start sub_02065B60
sub_02065B60: ; 0x02065B60
	push {r3, lr}
	mov r1, #5
	mov r2, #2
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B60

	thumb_func_start sub_02065B78
sub_02065B78: ; 0x02065B78
	push {r3, lr}
	mov r1, #5
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xf
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065B78

	thumb_func_start sub_02065B8C
sub_02065B8C: ; 0x02065B8C
	push {r3, lr}
	mov r1, #5
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xe
	add r3, r1, #0
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065B8C

	thumb_func_start sub_02065BA0
sub_02065BA0: ; 0x02065BA0
	push {r3, lr}
	mov r1, #5
	mov r2, #2
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065BA0

	thumb_func_start sub_02065BB8
sub_02065BB8: ; 0x02065BB8
	push {r3, lr}
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #1
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BB8

	thumb_func_start sub_02065BCC
sub_02065BCC: ; 0x02065BCC
	push {r3, lr}
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0x10
	add r3, r1, #0
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BCC

	thumb_func_start sub_02065BE0
sub_02065BE0: ; 0x02065BE0
	push {r3, lr}
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xf
	mov r3, #1
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BE0

	thumb_func_start sub_02065BF4
sub_02065BF4: ; 0x02065BF4
	push {r3, lr}
	mov r1, #0
	mov r2, #1
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0x10
	mov r3, #1
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065BF4

	thumb_func_start sub_02065C0C
sub_02065C0C: ; 0x02065C0C
	push {r3, lr}
	mov r1, #9
	mov r2, #1
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065C0C

	thumb_func_start sub_02065C24
sub_02065C24: ; 0x02065C24
	push {r3, lr}
	mov r1, #9
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065C24

	thumb_func_start sub_02065C38
sub_02065C38: ; 0x02065C38
	push {r3, lr}
	mov r1, #9
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xd
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065C38

	thumb_func_start sub_02065C4C
sub_02065C4C: ; 0x02065C4C
	push {r3, lr}
	mov r1, #9
	mov r2, #1
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065C4C

	thumb_func_start sub_02065C64
sub_02065C64: ; 0x02065C64
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	mov r1, #0xc
	add r5, r0, #0
	bl sub_02062AA4
	strh r4, [r0]
	add r1, r6, #1
	strh r1, [r0, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02065C64

	thumb_func_start sub_02065C98
sub_02065C98: ; 0x02065C98
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _02065CB2
	mov r0, #0
	pop {r4, pc}
_02065CB2:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02065C98

	thumb_func_start sub_02065CCC
sub_02065CCC: ; 0x02065CCC
	push {r3, lr}
	mov r1, #0
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CCC

	thumb_func_start sub_02065CDC
sub_02065CDC: ; 0x02065CDC
	push {r3, lr}
	mov r1, #1
	mov r2, #0x20
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CDC

	thumb_func_start sub_02065CEC
sub_02065CEC: ; 0x02065CEC
	push {r3, lr}
	mov r1, #2
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CEC

	thumb_func_start sub_02065CFC
sub_02065CFC: ; 0x02065CFC
	push {r3, lr}
	mov r1, #3
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CFC

	thumb_func_start sub_02065D0C
sub_02065D0C: ; 0x02065D0C
	push {r3, lr}
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D0C

	thumb_func_start sub_02065D1C
sub_02065D1C: ; 0x02065D1C
	push {r3, lr}
	mov r1, #1
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D1C

	thumb_func_start sub_02065D2C
sub_02065D2C: ; 0x02065D2C
	push {r3, lr}
	mov r1, #2
	mov r2, #0x10
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D2C

	thumb_func_start sub_02065D3C
sub_02065D3C: ; 0x02065D3C
	push {r3, lr}
	mov r1, #3
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D3C

	thumb_func_start sub_02065D4C
sub_02065D4C: ; 0x02065D4C
	push {r3, lr}
	mov r1, #0
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D4C

	thumb_func_start sub_02065D5C
sub_02065D5C: ; 0x02065D5C
	push {r3, lr}
	mov r1, #1
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D5C

	thumb_func_start sub_02065D6C
sub_02065D6C: ; 0x02065D6C
	push {r3, lr}
	mov r1, #2
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D6C

	thumb_func_start sub_02065D7C
sub_02065D7C: ; 0x02065D7C
	push {r3, lr}
	mov r1, #3
	mov r2, #8
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D7C

	thumb_func_start sub_02065D8C
sub_02065D8C: ; 0x02065D8C
	push {r3, lr}
	mov r2, #4
	mov r1, #0
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D8C

	thumb_func_start sub_02065D9C
sub_02065D9C: ; 0x02065D9C
	push {r3, lr}
	mov r2, #4
	mov r1, #1
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D9C

	thumb_func_start sub_02065DAC
sub_02065DAC: ; 0x02065DAC
	push {r3, lr}
	mov r2, #4
	mov r1, #2
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DAC

	thumb_func_start sub_02065DBC
sub_02065DBC: ; 0x02065DBC
	push {r3, lr}
	mov r2, #4
	mov r1, #3
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DBC

	thumb_func_start sub_02065DCC
sub_02065DCC: ; 0x02065DCC
	push {r3, lr}
	mov r1, #0
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DCC

	thumb_func_start sub_02065DDC
sub_02065DDC: ; 0x02065DDC
	push {r3, lr}
	mov r1, #1
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DDC

	thumb_func_start sub_02065DEC
sub_02065DEC: ; 0x02065DEC
	push {r3, lr}
	mov r1, #2
	add r2, r1, #0
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DEC

	thumb_func_start sub_02065DFC
sub_02065DFC: ; 0x02065DFC
	push {r3, lr}
	mov r1, #3
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DFC

	thumb_func_start sub_02065E0C
sub_02065E0C: ; 0x02065E0C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	strb r4, [r0, #0xc]
	str r6, [r0, #0]
	strb r7, [r0, #0xd]
	add r2, sp, #8
	ldrh r1, [r2, #0x10]
	strb r1, [r0, #0xe]
	mov r1, #0x14
	ldrsh r1, [r2, r1]
	cmp r6, #0
	strb r1, [r0, #0xf]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #8]
	bne _02065E3E
	add r0, r5, #0
	bl sub_02064208
	b _02065E46
_02065E3E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
_02065E46:
	ldr r1, _02065E78 ; =0x00010004
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02065E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_02065E74:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02065E78: .word 0x00010004
	thumb_func_end sub_02065E0C

	thumb_func_start sub_02065E7C
sub_02065E7C: ; 0x02065E7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, sp, #0x10
	ldrh r4, [r5, #0x10]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x18]
	str r4, [sp, #8]
	ldr r4, _02065E9C ; =0x0000060B
	str r4, [sp, #0xc]
	bl sub_02065E0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02065E9C: .word 0x0000060B
	thumb_func_end sub_02065E7C

	thumb_func_start sub_02065EA0
sub_02065EA0: ; 0x02065EA0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _02065EF0
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02065EE2
	mov r0, #0
	str r0, [r4, #4]
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020641B4
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
_02065EE2:
	ldr r1, [r4, #0]
	cmp r1, #0
	bge _02065EEA
	neg r1, r1
_02065EEA:
	ldr r0, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #4]
_02065EF0:
	ldrh r1, [r4, #0xa]
	ldrh r0, [r4, #8]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xf
	ldrh r1, [r4, #0xa]
	lsl r0, r0, #8
	cmp r1, r0
	bls _02065F04
	strh r0, [r4, #0xa]
_02065F04:
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	ldrh r0, [r4, #0xa]
	lsl r2, r1, #2
	ldr r1, _02065F7C ; =0x02100B84
	lsr r0, r0, #8
	lsl r0, r0, #0x10
	ldr r2, [r1, r2]
	mov r1, #0
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	ldr r0, [r2, r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02063088
	mov r0, #0xd
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, #0xd]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02065F3C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02065F3C:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, _02065F80 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, _02065F84 ; =0x00000647
	bl sub_02005748
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02065F7C: .word 0x02100B84
_02065F80: .word 0x00020028
_02065F84: .word 0x00000647
	thumb_func_end sub_02065EA0

	thumb_func_start sub_02065F88
sub_02065F88: ; 0x02065F88
	push {lr}
	sub sp, #0xc
	mov r2, #2
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfe
	str r2, [sp, #8]
	add r2, r1, #0
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065F88

	thumb_func_start sub_02065FA8
sub_02065FA8: ; 0x02065FA8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r1, #0xfe
	str r1, [sp, #8]
	mov r1, #1
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FA8

	thumb_func_start sub_02065FC8
sub_02065FC8: ; 0x02065FC8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	add r3, r1, #0
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r3, #0xfe
	str r3, [sp, #8]
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FC8

	thumb_func_start sub_02065FE8
sub_02065FE8: ; 0x02065FE8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r1, #0xfe
	str r1, [sp, #8]
	mov r1, #3
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FE8

	thumb_func_start sub_02066008
sub_02066008: ; 0x02066008
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	mov r2, #2
	str r1, [sp, #4]
	lsl r2, r2, #8
	str r2, [sp, #8]
	add r2, r1, #0
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066008

	thumb_func_start sub_02066028
sub_02066028: ; 0x02066028
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	mov r1, #2
	str r2, [sp, #4]
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #1
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066028

	thumb_func_start sub_02066048
sub_02066048: ; 0x02066048
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	mov r1, #2
	str r2, [sp, #4]
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #2
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066048

	thumb_func_start sub_02066068
sub_02066068: ; 0x02066068
	push {lr}
	sub sp, #0xc
	mov r1, #3
	mov r3, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r3, r3, #8
	str r3, [sp, #8]
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02066068

	thumb_func_start sub_02066088
sub_02066088: ; 0x02066088
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	mov r2, #2
	str r1, [sp, #4]
	lsl r2, r2, #8
	str r2, [sp, #8]
	lsl r2, r2, #4
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066088

	thumb_func_start sub_020660A8
sub_020660A8: ; 0x020660A8
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #1
	lsl r2, r1, #0xd
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020660A8

	thumb_func_start sub_020660CC
sub_020660CC: ; 0x020660CC
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xc
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020660CC

	thumb_func_start sub_020660F0
sub_020660F0: ; 0x020660F0
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r2, #2
	lsl r2, r2, #8
	str r2, [sp, #8]
	lsl r2, r2, #4
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020660F0

	thumb_func_start sub_02066110
sub_02066110: ; 0x02066110
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066110

	thumb_func_start sub_02066130
sub_02066130: ; 0x02066130
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	mov r1, #1
	str r2, [sp, #8]
	lsl r2, r1, #0xd
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066130

	thumb_func_start sub_02066150
sub_02066150: ; 0x02066150
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	mov r1, #2
	str r2, [sp, #8]
	lsl r2, r1, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066150

	thumb_func_start sub_02066170
sub_02066170: ; 0x02066170
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xfd
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02066170

	thumb_func_start sub_02066194
sub_02066194: ; 0x02066194
	push {lr}
	sub sp, #0xc
	mov r1, #9
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xf0
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xb
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066194

	thumb_func_start sub_020661B4
sub_020661B4: ; 0x020661B4
	push {lr}
	sub sp, #0xc
	mov r1, #9
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xf0
	mov r2, #1
	str r1, [sp, #8]
	mov r1, #3
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020661B4

	thumb_func_start sub_020661D8
sub_020661D8: ; 0x020661D8
	push {lr}
	sub sp, #0xc
	mov r2, #0xa
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsl r1, r2, #5
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xd
	mov r3, #0xc
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020661D8

	thumb_func_start sub_020661F8
sub_020661F8: ; 0x020661F8
	push {lr}
	sub sp, #0xc
	mov r2, #0xa
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsl r1, r2, #5
	mov r2, #1
	str r1, [sp, #8]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #0xc
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020661F8

	thumb_func_start sub_0206621C
sub_0206621C: ; 0x0206621C
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r2, #0xa0
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x18
	str r1, [sp, #0xc]
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206621C

	thumb_func_start sub_02066240
sub_02066240: ; 0x02066240
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r1, #0xa0
	str r1, [sp, #8]
	mov r1, #1
	str r2, [sp, #0xc]
	lsl r2, r1, #0xd
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066240

	thumb_func_start sub_02066264
sub_02066264: ; 0x02066264
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r1, #0xa0
	str r1, [sp, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	lsl r2, r1, #0xc
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066264

	thumb_func_start sub_02066288
sub_02066288: ; 0x02066288
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #0xa0
	str r2, [sp, #8]
	mov r2, #2
	str r3, [sp, #0xc]
	lsl r2, r2, #0xc
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066288

	thumb_func_start sub_020662AC
sub_020662AC: ; 0x020662AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #4
	bl sub_02062AA4
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020662AC

	thumb_func_start sub_020662C4
sub_020662C4: ; 0x020662C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020662DA
	sub r1, r1, #1
	str r1, [r0, #0]
	mov r0, #0
	pop {r4, pc}
_020662DA:
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020662C4

	thumb_func_start sub_020662E4
sub_020662E4: ; 0x020662E4
	push {r3, lr}
	mov r1, #1
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662E4

	thumb_func_start sub_020662F0
sub_020662F0: ; 0x020662F0
	push {r3, lr}
	mov r1, #2
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662F0

	thumb_func_start sub_020662FC
sub_020662FC: ; 0x020662FC
	push {r3, lr}
	mov r1, #4
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662FC

	thumb_func_start sub_02066308
sub_02066308: ; 0x02066308
	push {r3, lr}
	mov r1, #8
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066308

	thumb_func_start sub_02066314
sub_02066314: ; 0x02066314
	push {r3, lr}
	mov r1, #0xf
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066314

	thumb_func_start sub_02066320
sub_02066320: ; 0x02066320
	push {r3, lr}
	mov r1, #0x10
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066320

	thumb_func_start sub_0206632C
sub_0206632C: ; 0x0206632C
	push {r3, lr}
	mov r1, #0x20
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0206632C

	thumb_func_start sub_02066338
sub_02066338: ; 0x02066338
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl sub_02062AA4
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066338

	thumb_func_start sub_0206635C
sub_0206635C: ; 0x0206635C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #0]
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, [r4, #0]
	asr r0, r1, #0xe
	lsr r0, r0, #0x11
	add r0, r1, r0
	asr r0, r0, #0xf
	cmp r0, #0x28
	bge _02066398
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02066398:
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0206635C

	thumb_func_start sub_020663A4
sub_020663A4: ; 0x020663A4
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl sub_02062AA4
	mov r1, #5
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	ldr r1, _020663CC ; =0xFFFF0000
	str r1, [r0, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	nop
_020663CC: .word 0xFFFF0000
	thumb_func_end sub_020663A4

	thumb_func_start sub_020663D0
sub_020663D0: ; 0x020663D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #0]
	bpl _020663EA
	mov r0, #0
	str r0, [r4, #0]
_020663EA:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r0, [r4, #0]
	cmp r0, #0
	ble _0206640A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0206640A:
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020663D0

	thumb_func_start sub_02066418
sub_02066418: ; 0x02066418
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066418

	thumb_func_start sub_02066430
sub_02066430: ; 0x02066430
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066430

	thumb_func_start sub_02066448
sub_02066448: ; 0x02066448
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x80
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02066448

	thumb_func_start sub_0206645C
sub_0206645C: ; 0x0206645C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x80
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206645C

	thumb_func_start sub_02066470
sub_02066470: ; 0x02066470
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066470

	thumb_func_start sub_02066488
sub_02066488: ; 0x02066488
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066488

	thumb_func_start sub_020664A0
sub_020664A0: ; 0x020664A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #8
	add r5, r0, #0
	add r7, r2, #0
	bl sub_02062AA4
	add r4, r0, #0
	str r6, [r4, #0]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov5_021F5D8C
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020664A0

	thumb_func_start sub_020664C8
sub_020664C8: ; 0x020664C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov5_021F5C4C
	cmp r0, #1
	bne _020664EC
	ldr r0, [r4, #4]
	bl sub_0207136C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_020664EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020664C8

	thumb_func_start sub_020664F0
sub_020664F0: ; 0x020664F0
	push {r3, lr}
	mov r1, #0
	add r2, r1, #0
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020664F0

	thumb_func_start sub_02066500
sub_02066500: ; 0x02066500
	push {r3, lr}
	mov r1, #1
	mov r2, #0
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066500

	thumb_func_start sub_02066510
sub_02066510: ; 0x02066510
	push {r3, lr}
	mov r1, #0
	mov r2, #1
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066510

	thumb_func_start sub_02066520
sub_02066520: ; 0x02066520
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #8
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02062AA4
	strh r4, [r0]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062A0C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02066520

	thumb_func_start sub_02066560
sub_02066560: ; 0x02066560
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02062AC8
	add r4, r0, #0
	mov r2, #6
	ldrsh r2, [r4, r2]
	mov r1, #0
	ldrsh r1, [r4, r1]
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _0206659A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206659A:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02066560

	thumb_func_start sub_020665C0
sub_020665C0: ; 0x020665C0
	push {r3, lr}
	mov r2, #6
	mov r1, #0
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665C0

	thumb_func_start sub_020665D0
sub_020665D0: ; 0x020665D0
	push {r3, lr}
	mov r2, #6
	mov r1, #1
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665D0

	thumb_func_start sub_020665E0
sub_020665E0: ; 0x020665E0
	push {r3, lr}
	mov r2, #6
	mov r1, #2
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665E0

	thumb_func_start sub_020665F0
sub_020665F0: ; 0x020665F0
	push {r3, lr}
	mov r2, #6
	mov r1, #3
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665F0

	thumb_func_start sub_02066600
sub_02066600: ; 0x02066600
	push {r3, lr}
	ldr r1, _02066614 ; =0x020EEE6C
	bl sub_02066560
	cmp r0, #1
	bne _02066610
	mov r0, #1
	pop {r3, pc}
_02066610:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02066614: .word 0x020EEE6C
	thumb_func_end sub_02066600

	thumb_func_start sub_02066618
sub_02066618: ; 0x02066618
	push {r3, lr}
	mov r1, #0
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066618

	thumb_func_start sub_02066628
sub_02066628: ; 0x02066628
	push {r3, lr}
	mov r1, #1
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066628

	thumb_func_start sub_02066638
sub_02066638: ; 0x02066638
	push {r3, lr}
	mov r1, #2
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066638

	thumb_func_start sub_02066648
sub_02066648: ; 0x02066648
	push {r3, lr}
	mov r1, #3
	add r2, r1, #0
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066648

	thumb_func_start sub_02066658
sub_02066658: ; 0x02066658
	push {r3, lr}
	ldr r1, _0206666C ; =0x020EECEC
	bl sub_02066560
	cmp r0, #1
	bne _02066668
	mov r0, #1
	pop {r3, pc}
_02066668:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0206666C: .word 0x020EECEC
	thumb_func_end sub_02066658

	thumb_func_start sub_02066670
sub_02066670: ; 0x02066670
	push {r3, lr}
	mov r1, #0
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066670

	thumb_func_start sub_02066680
sub_02066680: ; 0x02066680
	push {r3, lr}
	mov r1, #1
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066680

	thumb_func_start sub_02066690
sub_02066690: ; 0x02066690
	push {r3, lr}
	mov r1, #2
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066690

	thumb_func_start sub_020666A0
sub_020666A0: ; 0x020666A0
	push {r3, lr}
	mov r1, #3
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020666A0

	thumb_func_start sub_020666B0
sub_020666B0: ; 0x020666B0
	push {r3, lr}
	ldr r1, _020666C4 ; =0x020EEE84
	bl sub_02066560
	cmp r0, #1
	bne _020666C0
	mov r0, #1
	pop {r3, pc}
_020666C0:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020666C4: .word 0x020EEE84
	thumb_func_end sub_020666B0

	thumb_func_start sub_020666C8
sub_020666C8: ; 0x020666C8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #9
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020666C8

	thumb_func_start sub_020666E4
sub_020666E4: ; 0x020666E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #8
	blt _0206670C
	add r0, r4, #0
	mov r1, #1
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
_0206670C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020666E4

	thumb_func_start sub_02066710
sub_02066710: ; 0x02066710
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	bl sub_0206A224
	cmp r0, #0
	beq _0206672A
	bl sub_0207136C
_0206672A:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_02063088
	add r0, r4, #0
	bl ov5_021F3F10
	ldr r1, _02066760 ; =0x00010004
	add r0, r4, #0
	bl sub_020628BC
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02066760: .word 0x00010004
	thumb_func_end sub_02066710

	thumb_func_start sub_02066764
sub_02066764: ; 0x02066764
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r0, _020667C4 ; =0x02100B84
	add r1, sp, #0
	ldr r2, [r0, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	cmp r0, #0x10
	bhs _0206679C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0206679C:
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063088
	ldr r1, _020667C8 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_0206A230
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_020667C4: .word 0x02100B84
_020667C8: .word 0x00020028
	thumb_func_end sub_02066764

	thumb_func_start sub_020667CC
sub_020667CC: ; 0x020667CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020667CC

	thumb_func_start sub_020667E8
sub_020667E8: ; 0x020667E8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #1
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020667E8

	thumb_func_start sub_02066804
sub_02066804: ; 0x02066804
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #0x15
	bhs _0206681A
	mov r0, #0
	pop {r4, pc}
_0206681A:
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02066804

	thumb_func_start sub_02066824
sub_02066824: ; 0x02066824
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	str r1, [r0, #0]
	add r2, r0, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02062994
	add r1, sp, #8
	ldrb r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D28
	add r0, r5, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	ldr r0, [r4, #0]
	cmp r0, #0
	bge _020668A0
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063028
	b _020668AA
_020668A0:
	ble _020668AA
	add r0, r5, #0
	mov r1, #1
	bl sub_02063028
_020668AA:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _020668BC
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063038
	b _020668C6
_020668BC:
	ble _020668C6
	add r0, r5, #0
	mov r1, #2
	bl sub_02063038
_020668C6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _020668D8
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063048
	b _020668E2
_020668D8:
	ble _020668E2
	add r0, r5, #0
	mov r1, #1
	bl sub_02063048
_020668E2:
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02066824

	thumb_func_start sub_020668EC
sub_020668EC: ; 0x020668EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02064270
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0
	ble _0206690C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206690C:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020668EC

	thumb_func_start sub_02066934
sub_02066934: ; 0x02066934
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066964 ; =0x020EECC8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066964: .word 0x020EECC8
	thumb_func_end sub_02066934

	thumb_func_start sub_02066968
sub_02066968: ; 0x02066968
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066994 ; =0x020EECD4
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #1
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066994: .word 0x020EECD4
	thumb_func_end sub_02066968

	thumb_func_start sub_02066998
sub_02066998: ; 0x02066998
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _020669C8 ; =0x020EED4C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_020669C8: .word 0x020EED4C
	thumb_func_end sub_02066998

	thumb_func_start sub_020669CC
sub_020669CC: ; 0x020669CC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _020669F8 ; =0x020EECE0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, #8
	str r0, [sp]
	mov r3, #3
	add r0, r2, #0
	mov r2, #0
	str r3, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_020669F8: .word 0x020EECE0
	thumb_func_end sub_020669CC

	thumb_func_start sub_020669FC
sub_020669FC: ; 0x020669FC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A28 ; =0x020EEE48
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #0
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066A28: .word 0x020EEE48
	thumb_func_end sub_020669FC

	thumb_func_start sub_02066A2C
sub_02066A2C: ; 0x02066A2C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A5C ; =0x020EEE3C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066A5C: .word 0x020EEE3C
	thumb_func_end sub_02066A2C

	thumb_func_start sub_02066A60
sub_02066A60: ; 0x02066A60
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A90 ; =0x020EEE30
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066A90: .word 0x020EEE30
	thumb_func_end sub_02066A60

	thumb_func_start sub_02066A94
sub_02066A94: ; 0x02066A94
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066AC4 ; =0x020EEE24
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066AC4: .word 0x020EEE24
	thumb_func_end sub_02066A94

	thumb_func_start sub_02066AC8
sub_02066AC8: ; 0x02066AC8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066AF8 ; =0x020EEE18
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066AF8: .word 0x020EEE18
	thumb_func_end sub_02066AC8

	thumb_func_start sub_02066AFC
sub_02066AFC: ; 0x02066AFC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B2C ; =0x020EEE0C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066B2C: .word 0x020EEE0C
	thumb_func_end sub_02066AFC

	thumb_func_start sub_02066B30
sub_02066B30: ; 0x02066B30
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B5C ; =0x020EEE00
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #2
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066B5C: .word 0x020EEE00
	thumb_func_end sub_02066B30

	thumb_func_start sub_02066B60
sub_02066B60: ; 0x02066B60
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B8C ; =0x020EEDF4
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, #8
	str r0, [sp]
	mov r3, #3
	add r0, r2, #0
	mov r2, #2
	str r3, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066B8C: .word 0x020EEDF4
	thumb_func_end sub_02066B60

	thumb_func_start sub_02066B90
sub_02066B90: ; 0x02066B90
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066BBC ; =0x020EEDE8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066BBC: .word 0x020EEDE8
	thumb_func_end sub_02066B90

	thumb_func_start sub_02066BC0
sub_02066BC0: ; 0x02066BC0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066BEC ; =0x020EEDDC
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066BEC: .word 0x020EEDDC
	thumb_func_end sub_02066BC0

	thumb_func_start sub_02066BF0
sub_02066BF0: ; 0x02066BF0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C1C ; =0x020EEDD0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066C1C: .word 0x020EEDD0
	thumb_func_end sub_02066BF0

	thumb_func_start sub_02066C20
sub_02066C20: ; 0x02066C20
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C4C ; =0x020EEDC4
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066C4C: .word 0x020EEDC4
	thumb_func_end sub_02066C20

	thumb_func_start sub_02066C50
sub_02066C50: ; 0x02066C50
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C80 ; =0x020EEDB8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066C80: .word 0x020EEDB8
	thumb_func_end sub_02066C50

	thumb_func_start sub_02066C84
sub_02066C84: ; 0x02066C84
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066CB4 ; =0x020EEDAC
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066CB4: .word 0x020EEDAC
	thumb_func_end sub_02066C84

	thumb_func_start sub_02066CB8
sub_02066CB8: ; 0x02066CB8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066CE4 ; =0x020EEDA0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r3, #2
	str r3, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066CE4: .word 0x020EEDA0
	thumb_func_end sub_02066CB8

	thumb_func_start sub_02066CE8
sub_02066CE8: ; 0x02066CE8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D14 ; =0x020EED94
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r2, #2
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r3, #0
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066D14: .word 0x020EED94
	thumb_func_end sub_02066CE8

	thumb_func_start sub_02066D18
sub_02066D18: ; 0x02066D18
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D48 ; =0x020EED88
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066D48: .word 0x020EED88
	thumb_func_end sub_02066D18

	thumb_func_start sub_02066D4C
sub_02066D4C: ; 0x02066D4C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D7C ; =0x020EED7C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066D7C: .word 0x020EED7C
	thumb_func_end sub_02066D4C

	thumb_func_start sub_02066D80
sub_02066D80: ; 0x02066D80
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066DB0 ; =0x020EED70
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066DB0: .word 0x020EED70
	thumb_func_end sub_02066D80

	thumb_func_start sub_02066DB4
sub_02066DB4: ; 0x02066DB4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066DE4 ; =0x020EED64
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066DE4: .word 0x020EED64
	thumb_func_end sub_02066DB4

	thumb_func_start sub_02066DE8
sub_02066DE8: ; 0x02066DE8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E18 ; =0x020EED58
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E18: .word 0x020EED58
	thumb_func_end sub_02066DE8

	thumb_func_start sub_02066E1C
sub_02066E1C: ; 0x02066E1C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E4C ; =0x020EED1C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E4C: .word 0x020EED1C
	thumb_func_end sub_02066E1C

	thumb_func_start sub_02066E50
sub_02066E50: ; 0x02066E50
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E80 ; =0x020EED40
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E80: .word 0x020EED40
	thumb_func_end sub_02066E50

	thumb_func_start sub_02066E84
sub_02066E84: ; 0x02066E84
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066EB4 ; =0x020EED10
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066EB4: .word 0x020EED10
	thumb_func_end sub_02066E84

	thumb_func_start sub_02066EB8
sub_02066EB8: ; 0x02066EB8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066EE8 ; =0x020EED34
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066EE8: .word 0x020EED34
	thumb_func_end sub_02066EB8

	thumb_func_start sub_02066EEC
sub_02066EEC: ; 0x02066EEC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F1C ; =0x020EED04
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F1C: .word 0x020EED04
	thumb_func_end sub_02066EEC

	thumb_func_start sub_02066F20
sub_02066F20: ; 0x02066F20
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F50 ; =0x020EED28
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F50: .word 0x020EED28
	thumb_func_end sub_02066F20

	thumb_func_start sub_02066F54
sub_02066F54: ; 0x02066F54
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F84 ; =0x020EECF8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F84: .word 0x020EECF8
	thumb_func_end sub_02066F54

	thumb_func_start sub_02066F88
sub_02066F88: ; 0x02066F88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	str r2, [sp]
	str r3, [sp, #4]
	mov r7, #1
	bl sub_02062AA4
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r1, [r0, #0x10]
	strb r1, [r6]
	str r4, [r6, #4]
	ldrb r1, [r0, #0x18]
	strb r1, [r6, #2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r6, #1]
	add r0, sp, #0x30
	ldrb r0, [r0]
	strb r0, [r6, #3]
	ldrb r1, [r6]
	lsl r0, r7, #0xc
	bl sub_020E1F6C
	strh r0, [r6, #0xe]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02062974
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02062994
	add r1, sp, #0x10
	ldrb r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D28
	add r0, r5, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	bls _02067014
	bl sub_02022974
_02067014:
	cmp r4, #0
	beq _0206705E
	add r0, sp, #0x10
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0206702A
	cmp r0, #1
	beq _0206703C
	cmp r0, #2
	beq _0206704E
	b _0206705E
_0206702A:
	cmp r4, #0
	bge _02067032
	mov r7, #0
	mvn r7, r7
_02067032:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02063028
	b _0206705E
_0206703C:
	cmp r4, #0
	bge _02067044
	mov r7, #0
	mvn r7, r7
_02067044:
	add r0, r5, #0
	lsl r1, r7, #1
	bl sub_02063038
	b _0206705E
_0206704E:
	cmp r4, #0
	bge _02067056
	mov r7, #0
	mvn r7, r7
_02067056:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02063048
_0206705E:
	add r0, r5, #0
	bl sub_02062BC8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02066F88

	thumb_func_start sub_02067068
sub_02067068: ; 0x02067068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02063050
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0206708C
	cmp r0, #1
	beq _02067096
	cmp r0, #2
	beq _020670A0
	b _020670A8
_0206708C:
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x18]
	b _020670A8
_02067096:
	ldr r1, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	b _020670A8
_020670A0:
	ldr r1, [sp, #0x20]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x20]
_020670A8:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02063060
	ldr r1, [r4, #4]
	cmp r1, #0
	bge _020670B8
	neg r1, r1
_020670B8:
	ldr r0, [r4, #8]
	add r0, r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	add r0, r1, r0
	strh r0, [r4, #0xc]
	mov r0, #0xf
	ldrh r1, [r4, #0xc]
	lsl r0, r0, #8
	cmp r1, r0
	bls _020670D2
	strh r0, [r4, #0xc]
_020670D2:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _020671E4 ; =0x02100B84
	ldr r1, [r0, #4]
	ldrh r0, [r4, #0xc]
	lsr r0, r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0xe
	ldr r1, [r1, r0]
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _020670F2
	neg r1, r1
_020670F2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02067102
	cmp r0, #1
	beq _02067106
	cmp r0, #2
	beq _0206710A
	b _0206710C
_02067102:
	str r1, [sp, #0xc]
	b _0206710C
_02067106:
	str r1, [sp, #0x10]
	b _0206710C
_0206710A:
	str r1, [sp, #0x14]
_0206710C:
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02063088
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	ldr r2, [r4, #8]
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _0206719A
	ldrb r1, [r4]
	cmp r1, #0
	beq _0206719A
	sub r0, r2, r0
	str r0, [r4, #8]
	add r0, r5, #0
	mov r6, #1
	ldr r7, [r4, #4]
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0206716C
	cmp r0, #1
	beq _0206717C
	cmp r0, #2
	beq _0206718C
	b _0206719A
_0206716C:
	cmp r7, #0
	bge _02067172
	sub r6, r6, #2
_02067172:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063028
	b _0206719A
_0206717C:
	cmp r7, #0
	bge _02067182
	sub r6, r6, #2
_02067182:
	add r0, r5, #0
	lsl r1, r6, #1
	bl sub_02063038
	b _0206719A
_0206718C:
	cmp r7, #0
	bge _02067192
	sub r6, r6, #2
_02067192:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063048
_0206719A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020671A6
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020671A6:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, _020671E8 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, _020671EC ; =0x00000647
	bl sub_02005748
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020671E4: .word 0x02100B84
_020671E8: .word 0x00020028
_020671EC: .word 0x00000647
	thumb_func_end sub_02067068

	thumb_func_start sub_020671F0
sub_020671F0: ; 0x020671F0
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0
	lsl r1, r1, #0xd
	mov r2, #2
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020671F0

	thumb_func_start sub_02067214
sub_02067214: ; 0x02067214
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r1, _02067238 ; =0xFFFFE000
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	nop
_02067238: .word 0xFFFFE000
	thumb_func_end sub_02067214

	thumb_func_start sub_0206723C
sub_0206723C: ; 0x0206723C
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	lsl r1, r2, #0xd
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_0206723C

	thumb_func_start sub_02067260
sub_02067260: ; 0x02067260
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r3, #3
	str r3, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, #0
	ldr r1, _02067284 ; =0xFFFFE000
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067284: .word 0xFFFFE000
	thumb_func_end sub_02067260

	thumb_func_start sub_02067288
sub_02067288: ; 0x02067288
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0
	lsl r1, r1, #0xd
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02067288

	thumb_func_start sub_020672AC
sub_020672AC: ; 0x020672AC
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r1, _020672D0 ; =0xFFFFE000
	mov r2, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_020672D0: .word 0xFFFFE000
	thumb_func_end sub_020672AC

	thumb_func_start sub_020672D4
sub_020672D4: ; 0x020672D4
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, #0
	ldr r1, _020672F8 ; =0xFFFFE000
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_020672F8: .word 0xFFFFE000
	thumb_func_end sub_020672D4

	thumb_func_start sub_020672FC
sub_020672FC: ; 0x020672FC
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	lsl r1, r2, #0xd
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020672FC

	thumb_func_start sub_02067320
sub_02067320: ; 0x02067320
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r3, #0
	lsl r1, r2, #0xd
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_02067320

	thumb_func_start sub_02067344
sub_02067344: ; 0x02067344
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r3, #1
	ldr r1, _02067368 ; =0xFFFFE000
	str r3, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067368: .word 0xFFFFE000
	thumb_func_end sub_02067344

	thumb_func_start sub_0206736C
sub_0206736C: ; 0x0206736C
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, _02067390 ; =0xFFFFE000
	mov r3, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067390: .word 0xFFFFE000
	thumb_func_end sub_0206736C

	thumb_func_start sub_02067394
sub_02067394: ; 0x02067394
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r3, #3
	str r3, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	lsl r1, r1, #0xd
	mov r2, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_02067394

	thumb_func_start sub_020673B8
sub_020673B8: ; 0x020673B8
	ldr r3, _020673BC ; =sub_020673E4
	bx r3
	; .align 2, 0
_020673BC: .word sub_020673E4
	thumb_func_end sub_020673B8

	thumb_func_start sub_020673C0
sub_020673C0: ; 0x020673C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02067400
	cmp r0, #0
	bne _020673D0
	mov r0, #0
	pop {r4, pc}
_020673D0:
	add r0, r4, #0
	bl sub_0206741C
	cmp r0, #0
	beq _020673DE
	mov r0, #1
	pop {r4, pc}
_020673DE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020673C0

	thumb_func_start sub_020673E4
sub_020673E4: ; 0x020673E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _020673FC ; =0x020EF630
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_020673FC: .word 0x020EF630
	thumb_func_end sub_020673E4

	thumb_func_start sub_02067400
sub_02067400: ; 0x02067400
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _02067418 ; =0x020EF660
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02067418: .word 0x020EF660
	thumb_func_end sub_02067400

	thumb_func_start sub_0206741C
sub_0206741C: ; 0x0206741C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _02067434 ; =0x020EF690
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02067434: .word 0x020EF690
	thumb_func_end sub_0206741C

	thumb_func_start sub_02067438
sub_02067438: ; 0x02067438
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	beq _02067450
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067450:
	add r0, r4, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063018
	cmp r5, r0
	beq _02067466
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067466:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067438

	thumb_func_start sub_0206746C
sub_0206746C: ; 0x0206746C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	beq _02067484
	mov r0, #0
	pop {r3, r4, r5, pc}
_02067484:
	add r0, r4, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063018
	cmp r5, r0
	bne _0206749A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206749A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206746C

	thumb_func_start sub_020674A0
sub_020674A0: ; 0x020674A0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020674A0

	thumb_func_start sub_020674A4
sub_020674A4: ; 0x020674A4
	mov r0, #0
	bx lr
	thumb_func_end sub_020674A4

	thumb_func_start sub_020674A8
sub_020674A8: ; 0x020674A8
	mov r0, #0
	bx lr
	thumb_func_end sub_020674A8

	thumb_func_start sub_020674AC
sub_020674AC: ; 0x020674AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #9
	bl sub_02062A7C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020674AC

	thumb_func_start sub_020674C4
sub_020674C4: ; 0x020674C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0206753C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020674E0: ; jump table
	.short _020674E8 - _020674E0 - 2 ; case 0
	.short _020674FA - _020674E0 - 2 ; case 1
	.short _02067522 - _020674E0 - 2 ; case 2
	.short _02067538 - _020674E0 - 2 ; case 3
_020674E8:
	add r0, r5, #0
	bl sub_02067438
	cmp r0, #1
	bne _0206753C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0206753C
_020674FA:
	add r0, r5, #0
	bl sub_0206746C
	cmp r0, #0
	beq _0206753C
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #2]
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bge _0206751C
	mov r0, #0
	strb r0, [r4]
	b _0206753C
_0206751C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02067522:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _0206753C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
_02067538:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206753C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020674C4

	thumb_func_start sub_02067540
sub_02067540: ; 0x02067540
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0206761E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206755E: ; jump table
	.short _02067566 - _0206755E - 2 ; case 0
	.short _02067588 - _0206755E - 2 ; case 1
	.short _020675BA - _0206755E - 2 ; case 2
	.short _020675D0 - _0206755E - 2 ; case 3
_02067566:
	ldr r3, _02067624 ; =0x020EF5F0
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_0206298C
	strb r0, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0x10
	ldr r0, [r0, r1]
	strb r0, [r4, #5]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067588:
	ldr r6, _02067628 ; =0x020EF600
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #5
	ldrsb r0, [r4, r0]
	lsl r3, r0, #3
	mov r0, #6
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_020675BA:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	bne _020675CA
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_020675CA:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_020675D0:
	mov r0, #8
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #8]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bge _020675E4
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_020675E4:
	mov r0, #0
	strb r0, [r4, #8]
	mov r0, #7
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bge _02067608
	mov r0, #6
	ldrsb r0, [r4, r0]
	add sp, #0x20
	add r1, r0, #1
	mov r0, #1
	and r1, r0
	strb r1, [r4, #6]
	strb r0, [r4, #1]
	pop {r4, r5, r6, pc}
_02067608:
	mov r1, #4
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062974
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
_0206761E:
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02067624: .word 0x020EF5F0
_02067628: .word 0x020EF600
	thumb_func_end sub_02067540

	thumb_func_start sub_0206762C
sub_0206762C: ; 0x0206762C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #9
	bl sub_02062A7C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strb r0, [r4, #3]
	add r0, r5, #0
	bl sub_02062950
	cmp r0, #5
	beq _02067650
	mov r0, #1
	b _02067652
_02067650:
	mov r0, #0
_02067652:
	strb r0, [r4, #5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206762C

	thumb_func_start sub_02067658
sub_02067658: ; 0x02067658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _020676D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067674: ; jump table
	.short _0206767C - _02067674 - 2 ; case 0
	.short _0206768E - _02067674 - 2 ; case 1
	.short _020676B6 - _02067674 - 2 ; case 2
	.short _020676CC - _02067674 - 2 ; case 3
_0206767C:
	add r0, r5, #0
	bl sub_02067438
	cmp r0, #1
	bne _020676D0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020676D0
_0206768E:
	add r0, r5, #0
	bl sub_0206746C
	cmp r0, #0
	beq _020676D0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #2]
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bge _020676B0
	mov r0, #0
	strb r0, [r4]
	b _020676D0
_020676B0:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_020676B6:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _020676D0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
_020676CC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_020676D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067658

	thumb_func_start sub_020676D4
sub_020676D4: ; 0x020676D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _020677F0 ; =0x020EF610
	add r2, sp, #0
	add r7, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _020677EA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067708: ; jump table
	.short _02067710 - _02067708 - 2 ; case 0
	.short _02067756 - _02067708 - 2 ; case 1
	.short _0206777C - _02067708 - 2 ; case 2
	.short _02067792 - _02067708 - 2 ; case 3
_02067710:
	add r0, r7, #0
	bl sub_0206298C
	mov r5, #0
	add r6, r0, #0
	add r1, r5, #0
	add r0, sp, #0
	mov r2, #5
	b _02067726
_02067722:
	add r1, r1, #4
	add r5, r5, #1
_02067726:
	cmp r5, #4
	bge _02067736
	ldrsb r3, [r4, r2]
	lsl r3, r3, #4
	add r3, r0, r3
	ldr r3, [r1, r3]
	cmp r6, r3
	bne _02067722
_02067736:
	cmp r5, #4
	blt _0206773E
	bl sub_02022974
_0206773E:
	add r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	strb r6, [r4, #4]
	add r0, r2, r1
	strb r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067756:
	mov r0, #5
	ldrsb r0, [r4, r0]
	add r2, sp, #0
	lsl r3, r0, #4
	mov r0, #6
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02065668
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_0206777C:
	add r0, r7, #0
	bl sub_020658DC
	cmp r0, #0
	bne _0206778C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206778C:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067792:
	mov r0, #8
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #8]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bge _020677A6
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020677A6:
	mov r0, #0
	strb r0, [r4, #8]
	mov r0, #7
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bge _020677D4
	mov r0, #6
	ldrsb r0, [r4, r0]
	add sp, #0x20
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_020677D4:
	mov r1, #4
	ldrsb r1, [r4, r1]
	add r0, r7, #0
	bl sub_02062974
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
_020677EA:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020677F0: .word 0x020EF610
	thumb_func_end sub_020676D4

	thumb_func_start sub_020677F4
sub_020677F4: ; 0x020677F4
	cmp r0, #0x64
	bne _020677FC
	mov r0, #1
	bx lr
_020677FC:
	mov r0, #0
	bx lr
	thumb_func_end sub_020677F4

	thumb_func_start sub_02067800
sub_02067800: ; 0x02067800
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A78
	ldrh r0, [r0]
	cmp r0, #0
	bne _02067812
	ldr r0, _02067830 ; =0x0000FFFF
	pop {r4, pc}
_02067812:
	add r0, r4, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206782C
	add r0, r4, #0
	bl sub_02062AF0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206782C
	ldr r0, [r0, #0]
	pop {r4, pc}
_0206782C:
	ldr r0, _02067830 ; =0x0000FFFF
	pop {r4, pc}
	; .align 2, 0
_02067830: .word 0x0000FFFF
	thumb_func_end sub_02067800

	thumb_func_start sub_02067834
sub_02067834: ; 0x02067834
	push {r3, lr}
	bl sub_02062A78
	mov r1, #1
	strh r1, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_02067834

	thumb_func_start sub_02067840
sub_02067840: ; 0x02067840
	push {r3, lr}
	mov r1, #4
	bl sub_02062A54
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02067840

	thumb_func_start sub_02067850
sub_02067850: ; 0x02067850
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F00
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067850

	thumb_func_start sub_0206786C
sub_0206786C: ; 0x0206786C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206786C

	thumb_func_start sub_02067870
sub_02067870: ; 0x02067870
	push {r4, lr}
	mov r1, #0x14
	add r4, r0, #0
	bl sub_02062ACC
	ldr r1, _0206788C ; =0x0000FFFF
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	add r0, r4, #0
	bl ov5_021F20D4
	pop {r4, pc}
	nop
_0206788C: .word 0x0000FFFF
	thumb_func_end sub_02067870

	thumb_func_start sub_02067890
sub_02067890: ; 0x02067890
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F00
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _02067948
	ldr r0, [r4, #4]
	cmp r6, r0
	beq _02067914
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECFD8
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F20
	add r1, r6, #0
	bl sub_020679FC
	ldr r1, _0206794C ; =0x0000FFFF
	str r0, [r4, #0]
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _02067900
	cmp r0, #0
	beq _020678F2
	add r0, r5, #0
	bl ov5_021F22BC
_020678F2:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECEB4
	b _02067910
_02067900:
	cmp r0, #0
	beq _02067910
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _02067910
	add r0, r5, #0
	bl ov5_021F22BC
_02067910:
	mov r0, #0
	strh r0, [r7, #2]
_02067914:
	add r0, r5, #0
	str r6, [r4, #4]
	bl ov5_021EDD94
	cmp r0, #1
	beq _02067948
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02067948
	add r0, r5, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _02067940
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_02021368
_02067940:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov5_021EDED8
_02067948:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206794C: .word 0x0000FFFF
	thumb_func_end sub_02067890

	thumb_func_start sub_02067950
sub_02067950: ; 0x02067950
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r2, r0, #0
	add r1, r2, #0
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #8
	bl ov5_021ECFD8
	pop {r4, pc}
	thumb_func_end sub_02067950

	thumb_func_start sub_02067968
sub_02067968: ; 0x02067968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02067980
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED01C
_02067980:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECFD8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067968

	thumb_func_start sub_02067998
sub_02067998: ; 0x02067998
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _020679F6
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020679D6
	ldr r2, [r4, #0]
	ldr r0, _020679F8 ; =0x0000FFFF
	cmp r2, r0
	beq _020679C6
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECEB4
	b _020679D0
_020679C6:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_020679D0:
	add r0, r5, #0
	bl ov5_021F20D4
_020679D6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020679F6
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED03C
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_020679F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020679F8: .word 0x0000FFFF
	thumb_func_end sub_02067998

	thumb_func_start sub_020679FC
sub_020679FC: ; 0x020679FC
	push {r3, lr}
	cmp r1, #0
	beq _02067A08
	cmp r1, #1
	beq _02067A0C
	b _02067A10
_02067A08:
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
_02067A0C:
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
_02067A10:
	sub r2, r0, #1
	mov r0, #0xc
	ldr r3, _02067A54 ; =0x021FB67C
	mul r0, r2
	add r2, r3, r0
	cmp r1, #5
	bhi _02067A48
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067A2A: ; jump table
	.short _02067A48 - _02067A2A - 2 ; case 0
	.short _02067A48 - _02067A2A - 2 ; case 1
	.short _02067A36 - _02067A2A - 2 ; case 2
	.short _02067A3C - _02067A2A - 2 ; case 3
	.short _02067A40 - _02067A2A - 2 ; case 4
	.short _02067A44 - _02067A2A - 2 ; case 5
_02067A36:
	mov r0, #1
	lsl r0, r0, #0xc
	pop {r3, pc}
_02067A3C:
	ldr r0, [r2, #0]
	pop {r3, pc}
_02067A40:
	ldr r0, [r2, #4]
	pop {r3, pc}
_02067A44:
	ldr r0, [r2, #8]
	pop {r3, pc}
_02067A48:
	bl sub_02022974
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
	; .align 2, 0
_02067A50: .word 0x0000FFFF
_02067A54: .word 0x021FB67C
	thumb_func_end sub_020679FC

	thumb_func_start sub_02067A58
sub_02067A58: ; 0x02067A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062920
	bl sub_020677F4
	cmp r0, #0
	bne _02067A6E
	bl sub_02022974
_02067A6E:
	add r0, r5, #0
	bl sub_02062D4C
	cmp r0, #1
	bne _02067A80
	add r0, r5, #0
	bl sub_02062AF0
	ldr r4, [r0, #8]
_02067A80:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067A58

	thumb_func_start sub_02067A84
sub_02067A84: ; 0x02067A84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	ldr r7, [r5, #0x3c]
	add r4, r1, #0
	ldr r6, [r5, #0x38]
	add r1, sp, #0x40
	str r1, [sp]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02067BA8
	cmp r0, #0
	bne _02067AA8
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067AA8:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02067B2E
	ldr r1, _02067BA4 ; =0x00000F58
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_0203E880
	cmp r4, #0
	beq _02067AD0
	add r0, sp, #0x28
	str r0, [sp]
	ldr r3, [sp, #0x54]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02067BA8
	cmp r0, #0
	bne _02067AF0
_02067AD0:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067AF0:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067B2E:
	cmp r0, #1
	bne _02067B9A
	cmp r4, #0
	bne _02067B3C
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067B3C:
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02067F2C
	add r1, r0, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, sp, #0x10
	bl sub_02067C28
	ldr r1, _02067BA4 ; =0x00000F58
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_0203E880
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067B9A:
	bl sub_02022974
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02067BA4: .word 0x00000F58
	thumb_func_end sub_02067A84

	thumb_func_start sub_02067BA8
sub_02067BA8: ; 0x02067BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	str r0, [sp, #0xc]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02067C20
_02067BCA:
	cmp r4, #0
	beq _02067BD4
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _02067C10
_02067BD4:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, sp, #8
	bl sub_02067C80
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02067C10
	ldr r0, [sp, #4]
	bl sub_02067F14
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #0
	bne _02067C10
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r3, [sp, #8]
	bl sub_02067C28
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067C10:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02067BCA
_02067C20:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067BA8

	thumb_func_start sub_02067C28
sub_02067C28: ; 0x02067C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5, #0]
	str r3, [r5, #4]
	add r0, r4, #0
	bl sub_02062960
	str r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	str r0, [r5, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F28C
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067C28

	thumb_func_start sub_02067C54
sub_02067C54: ; 0x02067C54
	push {r3, lr}
	bl sub_02062950
	cmp r0, #8
	bhi _02067C7E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02067C6A: ; jump table
	.short _02067C7E - _02067C6A - 2 ; case 0
	.short _02067C7E - _02067C6A - 2 ; case 1
	.short _02067C7E - _02067C6A - 2 ; case 2
	.short _02067C7E - _02067C6A - 2 ; case 3
	.short _02067C7C - _02067C6A - 2 ; case 4
	.short _02067C7C - _02067C6A - 2 ; case 5
	.short _02067C7C - _02067C6A - 2 ; case 6
	.short _02067C7C - _02067C6A - 2 ; case 7
	.short _02067C7C - _02067C6A - 2 ; case 8
_02067C7C:
	mov r0, #1
_02067C7E:
	pop {r3, pc}
	thumb_func_end sub_02067C54

	thumb_func_start sub_02067C80
sub_02067C80: ; 0x02067C80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	bl sub_02067C54
	cmp r0, #1
	bne _02067CEE
	add r0, r4, #0
	bl sub_0205EABC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205EAC8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206298C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_02067DA8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02067CE6
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02067E74
	cmp r0, #0
	bne _02067CE6
	ldr r0, [sp, #8]
	add sp, #0x14
	str r4, [r0, #0]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02067CE6:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02067CEE:
	cmp r0, #2
	bne _02067D50
	add r0, r4, #0
	bl sub_0205EABC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp, #0xc]
	mov r4, #0
_02067D0E:
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02067DA8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02067D42
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02067E74
	cmp r0, #0
	bne _02067D42
	ldr r0, [sp, #8]
	add sp, #0x14
	str r4, [r0, #0]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02067D42:
	add r4, r4, #1
	cmp r4, #4
	blt _02067D0E
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02067D50:
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02067C80

	thumb_func_start sub_02067D58
sub_02067D58: ; 0x02067D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EABC
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205EAC8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02067DA8
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02067DA0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02067E74
	cmp r0, #1
	bne _02067DA0
	mov r5, #0
	mvn r5, r5
_02067DA0:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067D58

	thumb_func_start sub_02067DA8
sub_02067DA8: ; 0x02067DA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [sp, #0x14]
	lsl r5, r4, #2
	ldr r4, _02067DC0 ; =0x020EF6C0
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	ldr r4, [r4, r5]
	blx r4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02067DC0: .word 0x020EF6C0
	thumb_func_end sub_02067DA8

	thumb_func_start sub_02067DC4
sub_02067DC4: ; 0x02067DC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02063020
	cmp r0, r6
	bne _02067DEA
	add r0, r7, #0
	bl sub_02063040
	cmp r4, r0
	bge _02067DEA
	sub r1, r0, r5
	cmp r4, r1
	blt _02067DEA
	sub r0, r0, r4
	pop {r3, r4, r5, r6, r7, pc}
_02067DEA:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067DC4

	thumb_func_start sub_02067DF0
sub_02067DF0: ; 0x02067DF0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02063020
	cmp r0, r6
	bne _02067E16
	add r0, r7, #0
	bl sub_02063040
	cmp r4, r0
	ble _02067E16
	add r1, r0, r5
	cmp r4, r1
	bgt _02067E16
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
_02067E16:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067DF0

	thumb_func_start sub_02067E1C
sub_02067E1C: ; 0x02067E1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02063040
	cmp r0, r4
	bne _02067E42
	add r0, r7, #0
	bl sub_02063020
	cmp r5, r0
	bge _02067E42
	sub r1, r0, r6
	cmp r5, r1
	blt _02067E42
	sub r0, r0, r5
	pop {r3, r4, r5, r6, r7, pc}
_02067E42:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067E1C

	thumb_func_start sub_02067E48
sub_02067E48: ; 0x02067E48
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02063040
	cmp r0, r4
	bne _02067E6E
	add r0, r7, #0
	bl sub_02063020
	cmp r5, r0
	ble _02067E6E
	add r1, r0, r6
	cmp r5, r1
	bgt _02067E6E
	sub r0, r5, r0
	pop {r3, r4, r5, r6, r7, pc}
_02067E6E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067E48

	thumb_func_start sub_02067E74
sub_02067E74: ; 0x02067E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	cmp r2, #0
	bne _02067E88
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067E88:
	bl sub_02063020
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063030
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0206419C
	add r6, r4, r0
	add r0, r5, #0
	bl sub_020641A8
	add r4, r7, r0
	ldr r0, [sp, #8]
	mov r7, #0
	sub r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02067EF0
	mov r0, #1
	str r0, [sp, #0x14]
_02067EBE:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	add r3, r4, #0
	str r5, [sp]
	bl sub_02063E94
	ldr r1, [sp, #0x14]
	bic r0, r1
	beq _02067ED8
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067ED8:
	add r0, r5, #0
	bl sub_0206419C
	add r6, r6, r0
	add r0, r5, #0
	bl sub_020641A8
	add r4, r4, r0
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _02067EBE
_02067EF0:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	add r3, r4, #0
	str r5, [sp]
	bl sub_02063E94
	mov r1, #1
	bic r0, r1
	cmp r0, #4
	bne _02067F0C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067F0C:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067E74

	thumb_func_start sub_02067F14
sub_02067F14: ; 0x02067F14
	push {r3, lr}
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	pop {r3, pc}
	thumb_func_end sub_02067F14

	thumb_func_start sub_02067F24
sub_02067F24: ; 0x02067F24
	ldr r3, _02067F28 ; =sub_02067F14
	bx r3
	; .align 2, 0
_02067F28: .word sub_02067F14
	thumb_func_end sub_02067F24

	thumb_func_start sub_02067F2C
sub_02067F2C: ; 0x02067F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r0, #0
	add r4, r2, #0
	add r6, r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02067F7C
	add r7, sp, #0
_02067F4C:
	ldr r0, [sp]
	cmp r0, r4
	beq _02067F6C
	bl sub_02067C54
	sub r0, r0, #1
	cmp r0, #1
	bhi _02067F6C
	ldr r0, [sp]
	bl sub_02067F14
	cmp r6, r0
	bne _02067F6C
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02067F6C:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02067F4C
_02067F7C:
	bl sub_02022974
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067F2C

	thumb_func_start sub_02067F88
sub_02067F88: ; 0x02067F88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02067C54
	sub r0, r0, #1
	cmp r0, #1
	bhi _02067FB4
	add r0, r4, #0
	bl sub_02067F14
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #0
	bne _02067FB4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067FB4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067F88

	thumb_func_start sub_02067FB8
sub_02067FB8: ; 0x02067FB8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	ldr r4, [sp, #0x24]
	str r4, [sp, #0xc]
	bl sub_02067FF0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_02067FB8

	thumb_func_start sub_02067FD4
sub_02067FD4: ; 0x02067FD4
	push {r4, lr}
	add r4, r0, #0
	bne _02067FDE
	bl sub_02022974
_02067FDE:
	add r0, r4, #0
	bl sub_02068048
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02067FD4

	thumb_func_start sub_02067FE8
sub_02067FE8: ; 0x02067FE8
	ldr r3, _02067FEC ; =sub_02068054
	bx r3
	; .align 2, 0
_02067FEC: .word sub_02068054
	thumb_func_end sub_02067FE8

	thumb_func_start sub_02067FF0
sub_02067FF0: ; 0x02067FF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	bne _0206800A
	bl sub_02022974
_0206800A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0xff
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	str r5, [r4, #0x2c]
	str r6, [r4, #0x24]
	ldr r0, _02068044 ; =sub_0206806C
	str r7, [r4, #0x28]
	bl sub_0200D9E8
	add r4, r0, #0
	bne _02068040
	bl sub_02022974
_02068040:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02068044: .word sub_0206806C
	thumb_func_end sub_02067FF0

	thumb_func_start sub_02068048
sub_02068048: ; 0x02068048
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02068048

	thumb_func_start sub_02068054
sub_02068054: ; 0x02068054
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	add r1, r0, #0
	mov r0, #4
	bl sub_02018238
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_02068054

	thumb_func_start sub_0206806C
sub_0206806C: ; 0x0206806C
	push {r3, r4, r5, lr}
	ldr r4, _02068084 ; =0x020EF6D0
	add r5, r1, #0
_02068072:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _02068072
	pop {r3, r4, r5, pc}
	nop
_02068084: .word 0x020EF6D0
	thumb_func_end sub_0206806C

	thumb_func_start sub_02068088
sub_02068088: ; 0x02068088
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x24]
	add r0, r4, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _0206809E
	add r0, r4, #0
	bl sub_02062DDC
_0206809E:
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068088

	thumb_func_start sub_020680A4
sub_020680A4: ; 0x020680A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _020680B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020680B8:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #8]
	bl ov5_021ECDFC
	add r0, r5, #0
	mov r1, #0x40
	bl sub_020628BC
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020680A4

	thumb_func_start sub_020680D0
sub_020680D0: ; 0x020680D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0205EB3C
	bl sub_02065684
	cmp r0, #0
	bne _020680E6
	mov r0, #0
	pop {r4, pc}
_020680E6:
	ldr r0, [r4, #0x24]
	bl sub_02062948
	sub r0, #0x33
	cmp r0, #3
	bhi _0206810E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020680FE: ; jump table
	.short _02068106 - _020680FE - 2 ; case 0
	.short _02068106 - _020680FE - 2 ; case 1
	.short _02068106 - _020680FE - 2 ; case 2
	.short _02068106 - _020680FE - 2 ; case 3
_02068106:
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_0206810E:
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020680D0

	thumb_func_start sub_02068118
sub_02068118: ; 0x02068118
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020655F4
	cmp r0, #0
	bne _0206812A
	mov r0, #0
	pop {r4, pc}
_0206812A:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	bne _02068138
	bl sub_02022974
_02068138:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065638
	mov r0, #4
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02068118

	thumb_func_start sub_02068150
sub_02068150: ; 0x02068150
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #0
	bne _02068162
	mov r0, #0
	pop {r4, pc}
_02068162:
	mov r0, #5
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068150

	thumb_func_start sub_0206816C
sub_0206816C: ; 0x0206816C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021F5D8C
	str r0, [r4, #0x20]
	mov r0, #6
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206816C

	thumb_func_start sub_02068188
sub_02068188: ; 0x02068188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov5_021F5C4C
	cmp r0, #1
	bne _020681A0
	ldr r0, [r4, #0x20]
	bl sub_0207136C
	mov r0, #9
	str r0, [r4, #0]
_020681A0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02068188

	thumb_func_start sub_020681A4
sub_020681A4: ; 0x020681A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0x65
	bl sub_02065638
	mov r0, #8
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020681A4

	thumb_func_start sub_020681B8
sub_020681B8: ; 0x020681B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #1
	bne _020681CA
	mov r0, #9
	str r0, [r4, #0]
_020681CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020681B8

	thumb_func_start sub_020681D0
sub_020681D0: ; 0x020681D0
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #0x1e
	blt _020681E2
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xa
	str r1, [r0, #0]
_020681E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020681D0

	thumb_func_start sub_020681E8
sub_020681E8: ; 0x020681E8
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bgt _020681F6
	mov r1, #0xd
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_020681F6:
	mov r1, #0xb
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_020681E8

	thumb_func_start sub_02068200
sub_02068200: ; 0x02068200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020655F4
	cmp r0, #1
	bne _02068222
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065638
	mov r0, #0xc
	str r0, [r4, #0]
_02068222:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068200

	thumb_func_start sub_02068228
sub_02068228: ; 0x02068228
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #0
	bne _0206823A
	mov r0, #0
	pop {r4, pc}
_0206823A:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02068228

	thumb_func_start sub_02068248
sub_02068248: ; 0x02068248
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #8
	bge _02068256
	mov r0, #0
	bx lr
_02068256:
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xe
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02068248

	thumb_func_start sub_02068264
sub_02068264: ; 0x02068264
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02063020
	str r0, [sp]
	ldr r0, [r5, #0x24]
	bl sub_02063040
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02064488
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0205EA78
	cmp r6, r0
	beq _020682D8
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _020682B0
	ldr r0, [r5, #0x14]
	cmp r0, #2
	bne _020682D8
_020682B0:
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020682DC
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628C4
	add r0, r6, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	mov r0, #0xf
	str r0, [r5, #0]
	b _020682DC
_020682D8:
	mov r0, #0x10
	str r0, [r5, #0]
_020682DC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02068264

	thumb_func_start sub_020682E0
sub_020682E0: ; 0x020682E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #0
	bne _020682F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020682F8:
	add r0, r5, #0
	bl sub_020656AC
	mov r0, #0x10
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020682E0

	thumb_func_start sub_02068308
sub_02068308: ; 0x02068308
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020656AC
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #0
	beq _0206832A
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x24]
	bl ov8_0224C5DC
	cmp r0, #0
	bne _02068332
_0206832A:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_020633A8
_02068332:
	mov r0, #0x11
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068308

	thumb_func_start sub_0206833C
sub_0206833C: ; 0x0206833C
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #0
	bx lr
	thumb_func_end sub_0206833C

	thumb_func_start sub_02068344
sub_02068344: ; 0x02068344
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	add r1, r0, #0
	beq _02068362
	lsl r2, r1, #2
	ldr r1, _02068364 ; =0x020EF744
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
_02068362:
	pop {r4, pc}
	; .align 2, 0
_02068364: .word 0x020EF744
	thumb_func_end sub_02068344

	thumb_func_start sub_02068368
sub_02068368: ; 0x02068368
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0
	beq _0206838A
	lsl r1, r0, #2
	ldr r0, _0206838C ; =0x020EF718
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0206838A
	add r0, r4, #0
	blx r1
_0206838A:
	pop {r4, pc}
	; .align 2, 0
_0206838C: .word 0x020EF718
	thumb_func_end sub_02068368

	thumb_func_start sub_02068390
sub_02068390: ; 0x02068390
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0
	bne _020683B2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020683B2:
	lsl r1, r0, #2
	ldr r0, _020683D4 ; =0x020EF770
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _020683CE
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	blx r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020683CE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020683D4: .word 0x020EF770
	thumb_func_end sub_02068390

	thumb_func_start sub_020683D8
sub_020683D8: ; 0x020683D8
	push {r3, lr}
	ldr r3, [r0, #0x1c]
	ldr r3, [r3, #0]
	cmp r3, #0x43
	bne _020683F0
	ldr r3, [sp, #8]
	bl ov8_0224B714
	cmp r0, #0
	beq _020683F0
	mov r0, #1
	pop {r3, pc}
_020683F0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020683D8

	thumb_func_start sub_020683F4
sub_020683F4: ; 0x020683F4
	cmp r0, #0
	bne _02068404
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068420 ; =0x020EF79C
	ldr r0, [r0, r2]
	bx lr
_02068404:
	cmp r0, #1
	bne _02068414
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068424 ; =0x020EF7A0
	ldr r0, [r0, r2]
	bx lr
_02068414:
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068428 ; =0x020EF7A4
	ldr r0, [r0, r2]
	bx lr
	; .align 2, 0
_02068420: .word 0x020EF79C
_02068424: .word 0x020EF7A0
_02068428: .word 0x020EF7A4
	thumb_func_end sub_020683F4

	thumb_func_start sub_0206842C
sub_0206842C: ; 0x0206842C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r5, r1, #0
	bl sub_0205F158
	cmp r0, #1
	bne _02068446
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020684D0
	pop {r3, r4, r5, r6, r7, pc}
_02068446:
	str r4, [r5, #0x18]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	str r0, [r5, #4]
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	strh r0, [r5, #0xe]
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	cmp r0, #3
	bhi _020684AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02068494: ; jump table
	.short _0206849C - _02068494 - 2 ; case 0
	.short _020684A0 - _02068494 - 2 ; case 1
	.short _020684A8 - _02068494 - 2 ; case 2
	.short _020684A4 - _02068494 - 2 ; case 3
_0206849C:
	sub r7, r7, #1
	b _020684AA
_020684A0:
	add r7, r7, #1
	b _020684AA
_020684A4:
	add r6, r6, #1
	b _020684AA
_020684A8:
	sub r6, r6, #1
_020684AA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	strh r0, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0203C9D4
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02055FC8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x3c]
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206842C

	thumb_func_start sub_020684D0
sub_020684D0: ; 0x020684D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r5, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	str r0, [r4, #8]
	ldr r0, [r5, #0x3c]
	bl sub_02061760
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAA0
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_020616F0
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl sub_02055FC8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020684D0

	thumb_func_start sub_0206851C
sub_0206851C: ; 0x0206851C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x20
	mov r1, #0xc
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	str r5, [r0, #0]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	strh r7, [r0, #8]
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206851C

	thumb_func_start sub_02068540
sub_02068540: ; 0x02068540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020509D4
	mov r0, #0x72
	mov r2, #0
	ldr r1, _02068580 ; =sub_020685AC
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r2, [sp]
	ldrh r1, [r5, #4]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0206851C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068580: .word sub_020685AC
	thumb_func_end sub_02068540

	thumb_func_start sub_02068584
sub_02068584: ; 0x02068584
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r0, r1, #0
	ldrh r1, [r4, #0x28]
	add r3, r2, #0
	bl sub_0206851C
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _020685A8 ; =sub_020685AC
	bl sub_02050904
	add sp, #4
	pop {r3, r4, pc}
	nop
_020685A8: .word sub_020685AC
	thumb_func_end sub_02068584

	thumb_func_start sub_020685AC
sub_020685AC: ; 0x020685AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _020685D2
	cmp r0, #1
	beq _02068622
	b _0206862C
_020685D2:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203C9D4
	ldr r1, [r4, #0]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	mov r3, #0
	bl sub_0203E8E0
	add r0, r5, #0
	mov r1, #0x29
	bl sub_0203F098
	ldrh r1, [r4, #4]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2a
	bl sub_0203F098
	ldrh r1, [r4, #6]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2b
	bl sub_0203F098
	ldrh r1, [r4, #8]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2c
	bl sub_0203F098
	ldrh r1, [r4, #0xa]
	strh r1, [r0]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0206862C
_02068622:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206862C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020685AC

	thumb_func_start sub_02068630
sub_02068630: ; 0x02068630
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x20
	strb r1, [r0]
	str r5, [r4, #0x1c]
	ldrh r0, [r6, #4]
	add r2, r4, #0
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _020686C0 ; =0x020F1E88
	add r0, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _020686C4 ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020686C0: .word 0x020F1E88
_020686C4: .word sub_0203B7C0
	thumb_func_end sub_02068630

	thumb_func_start sub_020686C8
sub_020686C8: ; 0x020686C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D8AC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _020686F4 ; =sub_0203C3F4
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_020686F4: .word sub_0203C3F4
	thumb_func_end sub_020686C8

	thumb_func_start sub_020686F8
sub_020686F8: ; 0x020686F8
	push {r3, lr}
	ldr r1, _02068704 ; =sub_02068708
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068704: .word sub_02068708
	thumb_func_end sub_020686F8

	thumb_func_start sub_02068708
sub_02068708: ; 0x02068708
	ldr r3, _0206870C ; =sub_0203D8AC
	bx r3
	; .align 2, 0
_0206870C: .word sub_0203D8AC
	thumb_func_end sub_02068708

	thumb_func_start sub_02068710
sub_02068710: ; 0x02068710
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0206874C ; =sub_02054084
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_02053FAC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	mov r0, #0
	add r5, #0x90
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_0206874C: .word sub_02054084
	thumb_func_end sub_02068710

	thumb_func_start sub_02068750
sub_02068750: ; 0x02068750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02053FAC
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0]
	ldr r1, _02068778 ; =sub_02054084
	add r2, r4, #0
	bl sub_02050904
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, #0x90
	str r0, [r1, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068778: .word sub_02054084
	thumb_func_end sub_02068750

	thumb_func_start sub_0206877C
sub_0206877C: ; 0x0206877C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203A138
	cmp r0, #0
	bne _02068790
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02068790:
	ldr r0, [r5, #0]
	bl sub_0203A24C
	cmp r0, #0
	bne _020687A0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687A0:
	ldr r0, [r5, #0x14]
	bl sub_0205EFDC
	cmp r0, #1
	bne _020687B0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687B0:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _020687D0
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020687D6
_020687D0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687D6:
	ldr r0, [r5, #0x14]
	bl sub_0205EB74
	cmp r0, #2
	bne _020687E6
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687E6:
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	bne _020687FA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687FA:
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DFB8
	cmp r0, #1
	bne _0206880E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206880E:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0203A6A4
	cmp r0, #0
	bne _02068838
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02068838:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206877C

	thumb_func_start sub_0206883C
sub_0206883C: ; 0x0206883C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0206886C ; =sub_02068884
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x30
	str r1, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	nop
_0206886C: .word sub_02068884
	thumb_func_end sub_0206883C

	thumb_func_start sub_02068870
sub_02068870: ; 0x02068870
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r1, _02068880 ; =sub_02068884
	mov r2, #0
	bl sub_02050904
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068880: .word sub_02068884
	thumb_func_end sub_02068870

	thumb_func_start sub_02068884
sub_02068884: ; 0x02068884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #3
	bhi _02068944
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020688A8: ; jump table
	.short _020688B0 - _020688A8 - 2 ; case 0
	.short _020688B6 - _020688A8 - 2 ; case 1
	.short _02068934 - _020688A8 - 2 ; case 2
	.short _0206893A - _020688A8 - 2 ; case 3
_020688B0:
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_020688B6:
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _020688F6
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	add r0, r4, #0
	mov r1, #0
	bl sub_020553F0
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_02055554
	b _0206892C
_020688F6:
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020553F0
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #1
	bl sub_02055554
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_02069434
_0206892C:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_02068934:
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_0206893A:
	ldr r0, [r4, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_02068944:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068884

	thumb_func_start sub_02068948
sub_02068948: ; 0x02068948
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _0206895E
	mov r0, #2
	pop {r3, r4, r5, pc}
_0206895E:
	mov r1, #2
	bl sub_0206AF1C
	cmp r0, #1
	bne _0206896C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206896C:
	ldr r0, [r4, #0x14]
	bl sub_0205EFDC
	cmp r0, #1
	bne _0206897A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206897A:
	ldr r0, [r4, #0x14]
	bl sub_0205EB3C
	ldrh r1, [r4, #0xe]
	add r5, r0, #0
	bl sub_0206415C
	cmp r0, #1
	beq _02068998
	ldrh r1, [r4, #0xe]
	add r0, r5, #0
	bl sub_0206417C
	cmp r0, #1
	bne _0206899C
_02068998:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206899C:
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAD4
	cmp r0, #1
	beq _020689C6
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DCE0
	cmp r0, #1
	beq _020689C6
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DCFC
	cmp r0, #1
	bne _020689CC
_020689C6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689CC:
	ldr r0, [r4, #0]
	bl sub_0203A1F0
	cmp r0, #0
	bne _020689DC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689DC:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _020689E8
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068948

	thumb_func_start sub_020689EC
sub_020689EC: ; 0x020689EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0203D30C
	ldr r1, _02068A14 ; =sub_0203C50C
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02068A14: .word sub_0203C50C
	thumb_func_end sub_020689EC

	thumb_func_start sub_02068A18
sub_02068A18: ; 0x02068A18
	push {r3, lr}
	ldr r1, _02068A24 ; =sub_02068A28
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068A24: .word sub_02068A28
	thumb_func_end sub_02068A18

	thumb_func_start sub_02068A28
sub_02068A28: ; 0x02068A28
	push {r3, lr}
	mov r1, #0
	bl sub_0203D30C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02068A28

	thumb_func_start sub_02068A34
sub_02068A34: ; 0x02068A34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x20
	strb r1, [r0]
	str r5, [r4, #0x1c]
	ldrh r0, [r6, #4]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldrh r0, [r6, #4]
	bl sub_0207D268
	strh r0, [r4, #0x26]
	ldr r1, _02068AC4 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _02068AC8 ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068AC4: .word 0x020F1E88
_02068AC8: .word sub_0203B7C0
	thumb_func_end sub_02068A34

	thumb_func_start sub_02068ACC
sub_02068ACC: ; 0x02068ACC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldrh r0, [r5, #4]
	bl sub_0207D2F0
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #3
	mov r3, #0xb
	bl sub_0203D94C
	add r6, r0, #0
	ldrh r0, [r5, #4]
	mov r1, #3
	mov r2, #0
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r6, [r4, r0]
	ldr r1, _02068B14 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	pop {r4, r5, r6, pc}
	nop
_02068B14: .word sub_0203C558
	thumb_func_end sub_02068ACC

	thumb_func_start sub_02068B18
sub_02068B18: ; 0x02068B18
	mov r0, #0
	bx lr
	thumb_func_end sub_02068B18

	thumb_func_start sub_02068B1C
sub_02068B1C: ; 0x02068B1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_02050A60
	ldr r0, [r5, #0]
	bl sub_02050A64
	ldrh r1, [r4, #0x10]
	mov r0, #1
	tst r0, r1
	beq _02068B42
	ldr r2, _02068B4C ; =0x00000AF1
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068540
	pop {r3, r4, r5, pc}
_02068B42:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068630
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068B4C: .word 0x00000AF1
	thumb_func_end sub_02068B1C

	thumb_func_start sub_02068B50
sub_02068B50: ; 0x02068B50
	ldrh r1, [r0, #0x10]
	mov r0, #1
	tst r1, r0
	bne _02068B5A
	mov r0, #0
_02068B5A:
	bx lr
	thumb_func_end sub_02068B50

	thumb_func_start sub_02068B5C
sub_02068B5C: ; 0x02068B5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0203D9B8
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02068B88 ; =sub_0203C710
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068B88: .word sub_0203C710
	thumb_func_end sub_02068B5C

	thumb_func_start sub_02068B8C
sub_02068B8C: ; 0x02068B8C
	push {r3, lr}
	ldr r1, _02068B98 ; =sub_02068B9C
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068B98: .word sub_02068B9C
	thumb_func_end sub_02068B8C

	thumb_func_start sub_02068B9C
sub_02068B9C: ; 0x02068B9C
	ldr r3, _02068BA4 ; =sub_0203D9B8
	mov r1, #0xb
	bx r3
	nop
_02068BA4: .word sub_0203D9B8
	thumb_func_end sub_02068B9C

	thumb_func_start sub_02068BA8
sub_02068BA8: ; 0x02068BA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203DE78
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _02068BD8 ; =sub_0203C750
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02068BD8: .word sub_0203C750
	thumb_func_end sub_02068BA8

	thumb_func_start sub_02068BDC
sub_02068BDC: ; 0x02068BDC
	push {r3, lr}
	ldr r1, _02068BE8 ; =sub_02068BEC
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068BE8: .word sub_02068BEC
	thumb_func_end sub_02068BDC

	thumb_func_start sub_02068BEC
sub_02068BEC: ; 0x02068BEC
	push {r3, lr}
	ldr r1, [r0, #0xc]
	bl sub_0203DE78
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02068BEC

	thumb_func_start sub_02068BF8
sub_02068BF8: ; 0x02068BF8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068C34 ; =sub_02069A00
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x30
	str r4, [r5, r0]
	mov r0, #0xa
	strh r0, [r5, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_02068C34: .word sub_02069A00
	thumb_func_end sub_02068BF8

	thumb_func_start sub_02068C38
sub_02068C38: ; 0x02068C38
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	ldr r1, _02068C58 ; =sub_02069A00
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	nop
_02068C58: .word sub_02069A00
	thumb_func_end sub_02068C38

	thumb_func_start sub_02068C5C
sub_02068C5C: ; 0x02068C5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02068C6A
	mov r0, #2
	pop {r4, pc}
_02068C6A:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _02068C7C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02068C7C:
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAC8
	cmp r0, #0
	beq _02068C8E
	mov r0, #0
	pop {r4, pc}
_02068C8E:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_02068C5C

	thumb_func_start sub_02068C94
sub_02068C94: ; 0x02068C94
	ldr r3, _02068C9C ; =sub_02068540
	ldr r2, _02068CA0 ; =0x00000AF2
	bx r3
	nop
_02068C9C: .word sub_02068540
_02068CA0: .word 0x00000AF2
	thumb_func_end sub_02068C94

	thumb_func_start sub_02068CA4
sub_02068CA4: ; 0x02068CA4
	push {r3, lr}
	ldr r1, _02068CB0 ; =0x00000AF2
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068CB0: .word 0x00000AF2
	thumb_func_end sub_02068CA4

	thumb_func_start sub_02068CB4
sub_02068CB4: ; 0x02068CB4
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _02068CBE
	mov r0, #2
	bx lr
_02068CBE:
	ldrh r1, [r0, #0x10]
	mov r0, #4
	tst r1, r0
	beq _02068CCA
	mov r0, #0
	bx lr
_02068CCA:
	sub r0, r0, #5
	bx lr
	; .align 2, 0
	thumb_func_end sub_02068CB4

	thumb_func_start sub_02068CD0
sub_02068CD0: ; 0x02068CD0
	ldr r3, _02068CD8 ; =sub_02068540
	ldr r2, _02068CDC ; =0x00000AF3
	bx r3
	nop
_02068CD8: .word sub_02068540
_02068CDC: .word 0x00000AF3
	thumb_func_end sub_02068CD0

	thumb_func_start sub_02068CE0
sub_02068CE0: ; 0x02068CE0
	ldrh r1, [r0, #0x10]
	mov r0, #2
	tst r1, r0
	beq _02068CEC
	mov r0, #0
	bx lr
_02068CEC:
	sub r0, r0, #3
	bx lr
	thumb_func_end sub_02068CE0

	thumb_func_start sub_02068CF0
sub_02068CF0: ; 0x02068CF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	bl ov5_021F0484
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0xb
	bl sub_02018184
	ldr r2, [sp]
	mov r1, #0
	add r7, r0, #0
	bl sub_020D5124
	mov r0, #0x72
	ldr r1, _02068D44 ; =0x021F0489
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r7, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	ldrh r1, [r5, #4]
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D60C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02068D44: .word 0x021F0489
	thumb_func_end sub_02068CF0

	thumb_func_start sub_02068D48
sub_02068D48: ; 0x02068D48
	ldr r3, _02068D50 ; =sub_02068540
	ldr r2, _02068D54 ; =0x000022F6
	bx r3
	nop
_02068D50: .word sub_02068540
_02068D54: .word 0x000022F6
	thumb_func_end sub_02068D48

	thumb_func_start sub_02068D58
sub_02068D58: ; 0x02068D58
	push {r3, lr}
	ldr r1, _02068D64 ; =0x000022F6
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068D64: .word 0x000022F6
	thumb_func_end sub_02068D58

	thumb_func_start sub_02068D68
sub_02068D68: ; 0x02068D68
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _02068D78
	mov r0, #0
	pop {r3, pc}
_02068D78:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02068D68

	thumb_func_start sub_02068D80
sub_02068D80: ; 0x02068D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068DB8 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068DB8: .word 0x021F08F9
	thumb_func_end sub_02068D80

	thumb_func_start sub_02068DBC
sub_02068DBC: ; 0x02068DBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #0
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068DD8 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068DD8: .word 0x021F08F9
	thumb_func_end sub_02068DBC

	thumb_func_start sub_02068DDC
sub_02068DDC: ; 0x02068DDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068E14 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #1
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068E14: .word 0x021F08F9
	thumb_func_end sub_02068DDC

	thumb_func_start sub_02068E18
sub_02068E18: ; 0x02068E18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #1
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068E34 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068E34: .word 0x021F08F9
	thumb_func_end sub_02068E18

	thumb_func_start sub_02068E38
sub_02068E38: ; 0x02068E38
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068E70 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #2
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068E70: .word 0x021F08F9
	thumb_func_end sub_02068E38

	thumb_func_start sub_02068E74
sub_02068E74: ; 0x02068E74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #2
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068E90 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068E90: .word 0x021F08F9
	thumb_func_end sub_02068E74

	thumb_func_start sub_02068E94
sub_02068E94: ; 0x02068E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02068EA2
	mov r0, #2
	pop {r4, pc}
_02068EA2:
	ldr r1, [r4, #0]
	ldr r0, _02068EF8 ; =0x0000023D
	sub r0, r1, r0
	cmp r0, #0xa
	bhi _02068EB0
	mov r0, #3
	pop {r4, pc}
_02068EB0:
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #1
	bne _02068EF2
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	beq _02068EDA
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEF0
	cmp r0, #1
	bne _02068EEE
_02068EDA:
	ldr r0, [r4, #0x14]
	bl sub_0205EB3C
	bl sub_02062F30
	cmp r0, #1
	bne _02068EEE
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02068EEE:
	mov r0, #0
	pop {r4, pc}
_02068EF2:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_02068EF8: .word 0x0000023D
	thumb_func_end sub_02068E94

	thumb_func_start sub_02068EFC
sub_02068EFC: ; 0x02068EFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x80
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	bl sub_0207D3FC
	add r2, r0, #0
	ldr r0, [r5, #0]
	lsl r2, r2, #0x10
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x10]
	lsr r2, r2, #0x10
	mov r3, #0xb
	bl sub_0207CC10
	ldr r0, [r5, #0]
	ldr r1, _02068F44 ; =sub_02068F48
	add r2, r4, #0
	bl sub_02050904
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068F44: .word sub_02068F48
	thumb_func_end sub_02068EFC

	thumb_func_start sub_02068F48
sub_02068F48: ; 0x02068F48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _02068F6A
	cmp r0, #1
	beq _02068FA0
	cmp r0, #2
	beq _02068FC8
	b _02068FE4
_02068F6A:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205D944
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_0205D994
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	b _02068FE4
_02068FA0:
	ldrh r0, [r4, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #1
	bne _02068FE4
	ldr r0, _02068FE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _02068FE4
	add r0, r4, #0
	mov r1, #0
	bl sub_0200E084
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	b _02068FE4
_02068FC8:
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_0201A8FC
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02068FE4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068FE8: .word 0x021BF67C
	thumb_func_end sub_02068F48

	thumb_func_start sub_02068FEC
sub_02068FEC: ; 0x02068FEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	ldrh r0, [r6, #4]
	add r2, r4, #0
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _02069078 ; =0x020F1E88
	add r0, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _0206907C ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02069078: .word 0x020F1E88
_0206907C: .word sub_0203B7C0
	thumb_func_end sub_02068FEC

	thumb_func_start sub_02069080
sub_02069080: ; 0x02069080
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _020690C0 ; =sub_020690F0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x30
	str r1, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	ldrh r1, [r5, #4]
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D60C
	pop {r4, r5, r6, pc}
	nop
_020690C0: .word sub_020690F0
	thumb_func_end sub_02069080

	thumb_func_start sub_020690C4
sub_020690C4: ; 0x020690C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _020690D2
	mov r0, #2
	pop {r4, pc}
_020690D2:
	ldr r0, [r4, #0]
	bl sub_0203A274
	cmp r0, #1
	bne _020690EA
	ldr r0, [r4, #0]
	bl sub_0203A1B8
	cmp r0, #1
	bne _020690EA
	mov r0, #0
	pop {r4, pc}
_020690EA:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_020690C4

	thumb_func_start sub_020690F0
sub_020690F0: ; 0x020690F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	mov r1, #0xb
	bl ov6_02247100
	add r2, r0, #0
	ldr r1, _0206910C ; =0x02247121
	add r0, r4, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0206910C: .word 0x02247121
	thumb_func_end sub_020690F0

	thumb_func_start sub_02069110
sub_02069110: ; 0x02069110
	ldr r3, _02069118 ; =sub_02068540
	ldr r2, _0206911C ; =0x000007F7
	bx r3
	nop
_02069118: .word sub_02068540
_0206911C: .word 0x000007F7
	thumb_func_end sub_02069110

	thumb_func_start sub_02069120
sub_02069120: ; 0x02069120
	push {r3, lr}
	ldr r1, _0206912C ; =0x000007F7
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0206912C: .word 0x000007F7
	thumb_func_end sub_02069120

	thumb_func_start sub_02069130
sub_02069130: ; 0x02069130
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	bl sub_0206A954
	cmp r0, #0
	bne _0206914C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206914C:
	add r0, r5, #0
	mov r1, #2
	bl sub_0206B16C
	cmp r0, #0
	bne _0206915E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206915E:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	cmp r0, #0
	bne _02069174
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02069174:
	ldr r0, [r4, #0]
	bl sub_0203A31C
	cmp r0, #0
	beq _02069182
	mov r0, #0
	pop {r3, r4, r5, pc}
_02069182:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069130

	thumb_func_start sub_02069188
sub_02069188: ; 0x02069188
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203DE88
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _020691B8 ; =sub_0203C784
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_020691B8: .word sub_0203C784
	thumb_func_end sub_02069188

	thumb_func_start sub_020691BC
sub_020691BC: ; 0x020691BC
	push {r3, lr}
	ldr r1, _020691C8 ; =sub_020691CC
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020691C8: .word sub_020691CC
	thumb_func_end sub_020691BC

	thumb_func_start sub_020691CC
sub_020691CC: ; 0x020691CC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021E2064
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0203DE88
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020691CC

	thumb_func_start sub_020691E0
sub_020691E0: ; 0x020691E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r2, _02069210 ; =0x000001D2
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0203E598
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02069214 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02069210: .word 0x000001D2
_02069214: .word sub_0203B7C0
	thumb_func_end sub_020691E0

	thumb_func_start sub_02069218
sub_02069218: ; 0x02069218
	push {r3, lr}
	ldr r1, _02069224 ; =sub_02069228
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02069224: .word sub_02069228
	thumb_func_end sub_02069218

	thumb_func_start sub_02069228
sub_02069228: ; 0x02069228
	ldr r3, _02069230 ; =sub_0203E598
	mov r1, #0xb
	ldr r2, _02069234 ; =0x000001D2
	bx r3
	; .align 2, 0
_02069230: .word sub_0203E598
_02069234: .word 0x000001D2
	thumb_func_end sub_02069228

	thumb_func_start sub_02069238
sub_02069238: ; 0x02069238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _02069248
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02069248:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0206925A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206925A:
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	bl sub_0207D3FC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #6
	mov r2, #0xb
	str r0, [sp]
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #2
	add r1, r4, #0
	bl sub_020683F4
	add r6, r0, #0
	mov r0, #1
	add r1, r4, #0
	bl sub_020683F4
	add r7, r0, #0
	bne _02069290
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02069290:
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl sub_020D5124
	str r5, [r4, #0]
	ldr r0, [sp]
	add r1, r4, #4
	strh r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_0206842C
	mov r5, #0
	cmp r6, #0
	bne _020692BE
	add r0, r4, #0
	blx r7
	add r5, r0, #0
	b _020692D4
_020692BE:
	add r0, r4, #4
	blx r6
	add r1, r0, #0
	bne _020692CE
	add r0, r4, #0
	blx r7
	add r5, r0, #0
	b _020692D4
_020692CE:
	add r0, r4, #0
	bl sub_020692E4
_020692D4:
	cmp r5, #0
	bne _020692DE
	add r0, r4, #0
	bl sub_020181C4
_020692DE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069238

	thumb_func_start sub_020692E4
sub_020692E4: ; 0x020692E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x80
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	mov r1, #0xb
	str r1, [sp]
	ldrh r2, [r5, #0x28]
	ldr r1, [r4, #0x10]
	add r3, r6, #0
	bl sub_0207CD34
	ldr r0, [r5, #0]
	ldr r1, _02069328 ; =sub_02068F48
	add r2, r4, #0
	bl sub_02050904
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02069328: .word sub_02068F48
	thumb_func_end sub_020692E4

	thumb_func_start sub_0206932C
sub_0206932C: ; 0x0206932C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #4
	bhi _020693EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02069352: ; jump table
	.short _0206935C - _02069352 - 2 ; case 0
	.short _02069370 - _02069352 - 2 ; case 1
	.short _02069388 - _02069352 - 2 ; case 2
	.short _020693B8 - _02069352 - 2 ; case 3
	.short _020693D6 - _02069352 - 2 ; case 4
_0206935C:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #0
	bl ov5_021D1744
	mov r0, #1
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_02069370:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020693EE
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	blx r1
	str r0, [r4, #0x24]
	mov r0, #2
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_02069388:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020693EE
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _020693AA
	ldr r2, [r4, #0x20]
	ldr r1, _020693F4 ; =sub_02068B9C
	cmp r2, r1
	bne _020693A6
	bl sub_02098AF0
	b _020693AA
_020693A6:
	bl sub_020181C4
_020693AA:
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #3
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_020693B8:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _020693EE
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #1
	bl ov5_021D1744
	mov r0, #4
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_020693D6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020693EE
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020693EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020693F4: .word sub_02068B9C
	thumb_func_end sub_0206932C

	thumb_func_start sub_020693F8
sub_020693F8: ; 0x020693F8
	add r2, r0, #0
	str r1, [r2, #0x20]
	ldr r3, _02069404 ; =sub_02050904
	ldr r0, [r2, #0]
	ldr r1, _02069408 ; =sub_0206932C
	bx r3
	; .align 2, 0
_02069404: .word sub_02050904
_02069408: .word sub_0206932C
	thumb_func_end sub_020693F8
