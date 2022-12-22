	.include "macros/function.inc"
	.include "include/unk_0203E880.inc"

	

	.text


	thumb_func_start sub_0203E880
sub_0203E880: ; 0x0203E880
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0203EA28
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203EA68
	ldr r1, _0203E8AC ; =sub_0203E950
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E8AC: .word sub_0203E950
	thumb_func_end sub_0203E880

	thumb_func_start sub_0203E8B0
sub_0203E8B0: ; 0x0203E8B0
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02050A64
	ldr r2, [sp, #0x1c]
	mov r1, #0x1c
	add r3, r2, #0
	add r0, #0x50
	mul r3, r1
	add r1, r0, r3
	str r4, [r0, r3]
	ldr r0, [sp, #0x10]
	str r6, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x10]
	str r5, [r1, #0x14]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203E8B0

	thumb_func_start sub_0203E8E0
sub_0203E8E0: ; 0x0203E8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02050A60
	str r0, [sp, #8]
	bl sub_0203EA28
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_0203EA68
	ldr r1, _0203E914 ; =sub_0203E950
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E914: .word sub_0203E950
	thumb_func_end sub_0203E8E0

	thumb_func_start sub_0203E918
sub_0203E918: ; 0x0203E918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02050A60
	str r0, [sp, #4]
	bl sub_0203EA28
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203EA68
	ldr r1, _0203E94C ; =sub_0203E950
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050924
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E94C: .word sub_0203E950
	thumb_func_end sub_0203E918

	thumb_func_start sub_0203E950
sub_0203E950: ; 0x0203E950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldrb r1, [r4, #4]
	str r0, [sp]
	cmp r1, #0
	beq _0203E970
	cmp r1, #1
	beq _0203E9A6
	b _0203EA22
_0203E970:
	ldrh r1, [r4, #0xa]
	bl sub_0203EAB8
	str r0, [r4, #0x38]
	mov r0, #1
	strb r0, [r4, #9]
	mov r0, #8
	mov r1, #0x40
	mov r2, #0xb
	bl sub_0200B368
	str r0, [r4, #0x40]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x44]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x48]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
_0203E9A6:
	mov r0, #0
	add r7, r4, #0
	str r0, [sp, #4]
	add r5, r4, #0
	add r7, #9
_0203E9B0:
	ldr r6, [r5, #0x38]
	cmp r6, #0
	beq _0203E9DA
	add r0, r6, #0
	bl sub_0203E778
	cmp r0, #0
	bne _0203E9DA
	add r0, r6, #0
	bl sub_0203EA50
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0203E9D0
	bl sub_02022974
_0203E9D0:
	mov r0, #0
	str r0, [r5, #0x38]
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r7]
_0203E9DA:
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0203E9B0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0203EA22
	add r0, r4, #0
	add r0, #0xa4
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x40]
	bl sub_0200B3F0
	ldr r0, [r4, #0x44]
	bl sub_020237BC
	ldr r0, [r4, #0x48]
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl sub_020181C4
	cmp r5, #0
	beq _0203EA1C
	ldr r0, [sp]
	blx r5
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203EA1C:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203EA22:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203E950

	thumb_func_start sub_0203EA28
sub_0203EA28: ; 0x0203EA28
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0xdc
	bl sub_02018144
	add r4, r0, #0
	bne _0203EA3A
	bl sub_02022974
_0203EA3A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl memset
	ldr r0, _0203EA4C ; =0x0003643F
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0203EA4C: .word 0x0003643F
	thumb_func_end sub_0203EA28

	thumb_func_start sub_0203EA50
sub_0203EA50: ; 0x0203EA50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	bl sub_0200B190
	ldr r0, [r4, #0x7c]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0203EA50

	thumb_func_start sub_0203EA68
sub_0203EA68: ; 0x0203EA68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x36
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203EF60
	str r0, [sp]
	ldr r0, [r7, #0x3c]
	bl sub_0205EA78
	str r0, [r5, #0x28]
	str r6, [r5, #0x2c]
	ldr r0, [sp, #0x18]
	strh r4, [r5, #0xa]
	str r0, [r5, #0x34]
	cmp r6, #0
	beq _0203EA9A
	add r0, r6, #0
	bl sub_02062910
	ldr r1, [sp]
	strh r0, [r1]
_0203EA9A:
	mov r0, #0x7d
	lsl r0, r0, #6
	cmp r4, r0
	blo _0203EAB0
	ldr r0, _0203EAB4 ; =0x0000225F
	cmp r4, r0
	bhi _0203EAB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203F404
_0203EAB0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203EAB4: .word 0x0000225F
	thumb_func_end sub_0203EA68

	thumb_func_start sub_0203EAB8
sub_0203EAB8: ; 0x0203EAB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	bne _0203EACE
	bl sub_02022974
_0203EACE:
	ldr r2, _0203EAEC ; =0x020EAB80
	ldr r1, _0203EAF0 ; =0x020EAC58
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_0203E724
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0203EAF4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0203EAEC: .word 0x020EAB80
_0203EAF0: .word 0x020EAC58
	thumb_func_end sub_0203EAB8

	thumb_func_start sub_0203EAF4
sub_0203EAF4: ; 0x0203EAF4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r3, r4, #0
	add r5, r0, #0
	add r3, #0x80
	str r5, [r3, #0]
	bl sub_0203EB20
	add r6, r0, #0
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	bl sub_0203E758
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203F0E4
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl sub_0203E774
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203EAF4

	thumb_func_start sub_0203EB20
sub_0203EB20: ; 0x0203EB20
	push {r3, r4, r5, lr}
	ldr r3, _0203EE08 ; =0x000028FA
	add r4, r2, #0
	cmp r4, r3
	blo _0203EB3E
	ldr r2, _0203EE0C ; =0x000001F3
	add r3, r2, #0
	add r3, #0x2a
	bl sub_0203EF14
	ldr r0, _0203EE08 ; =0x000028FA
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB3E:
	add r2, r3, #0
	sub r2, #0x28
	cmp r4, r2
	blo _0203EB5A
	mov r2, #0x7d
	lsl r2, r2, #2
	mov r3, #0x10
	bl sub_0203EF14
	ldr r0, _0203EE10 ; =0x000028D2
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB5A:
	add r2, r3, #0
	sub r2, #0x5a
	cmp r4, r2
	blo _0203EB76
	mov r2, #0x19
	lsl r2, r2, #4
	mov r3, #0xcb
	bl sub_0203EF14
	ldr r0, _0203EE14 ; =0x000028A0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB76:
	sub r3, #0xbe
	cmp r4, r3
	blo _0203EB90
	mov r3, #0x8a
	ldr r2, _0203EE18 ; =0x0000041B
	lsl r3, r3, #2
	bl sub_0203EF14
	ldr r0, _0203EE1C ; =0x0000283C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB90:
	ldr r3, _0203EE20 ; =0x000027D8
	cmp r4, r3
	blo _0203EBAA
	ldr r2, _0203EE24 ; =0x00000197
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE20 ; =0x000027D8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBAA:
	add r2, r3, #0
	sub r2, #0x32
	cmp r4, r2
	blo _0203EBC4
	ldr r2, _0203EE28 ; =0x0000045C
	ldr r3, _0203EE2C ; =0x0000026D
	bl sub_0203EF14
	ldr r0, _0203EE30 ; =0x000027A6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBC4:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EBDE
	ldr r2, _0203EE34 ; =0x0000045B
	ldr r3, _0203EE38 ; =0x0000026E
	bl sub_0203EF14
	ldr r0, _0203EE3C ; =0x00002774
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBDE:
	add r2, r3, #0
	sub r2, #0xc8
	cmp r4, r2
	blo _0203EBFA
	ldr r2, _0203EE40 ; =0x00000199
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE44 ; =0x00002710
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBFA:
	sub r3, #0xfa
	cmp r4, r3
	blo _0203EC14
	ldr r2, _0203EE48 ; =0x0000019B
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE4C ; =0x000026DE
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC14:
	ldr r3, _0203EE50 ; =0x000026AC
	cmp r4, r3
	blo _0203EC2C
	ldr r2, _0203EE54 ; =0x0000018D
	mov r3, #0xd5
	bl sub_0203EF14
	ldr r0, _0203EE50 ; =0x000026AC
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC2C:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EC46
	mov r2, #0xd4
	mov r3, #0xd9
	bl sub_0203EF14
	ldr r0, _0203EE58 ; =0x00002648
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC46:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203EC5E
	ldr r2, _0203EE5C ; =0x000001A6
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE60 ; =0x000025E4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC5E:
	mov r3, #0x96
	lsl r3, r3, #6
	cmp r4, r3
	blo _0203EC7C
	mov r2, #0x67
	lsl r2, r2, #2
	mov r3, #0xd5
	bl sub_0203EF14
	mov r0, #0x96
	lsl r0, r0, #6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC7C:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EC98
	ldr r2, _0203EE64 ; =0x000001F5
	add r3, r2, #0
	add r3, #0x2e
	bl sub_0203EF14
	ldr r0, _0203EE68 ; =0x0000251C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC98:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ECB0
	ldr r2, _0203EE6C ; =0x000001AA
	add r3, r2, #6
	bl sub_0203EF14
	ldr r0, _0203EE70 ; =0x000024B8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECB0:
	ldr r3, _0203EE74 ; =0x00002454
	cmp r4, r3
	blo _0203ECCA
	ldr r2, _0203EE78 ; =0x00000196
	add r3, r2, #0
	sub r3, #0x20
	bl sub_0203EF14
	ldr r0, _0203EE74 ; =0x00002454
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECCA:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203ECE4
	ldr r2, _0203EE7C ; =0x000001A7
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE80 ; =0x000023F0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECE4:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ECFC
	mov r2, #0
	mov r3, #0xb
	bl sub_0203EF14
	ldr r0, _0203EE84 ; =0x0000238C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECFC:
	ldr r3, _0203EE88 ; =0x00002328
	cmp r4, r3
	blo _0203ED14
	mov r2, #0xd5
	mov r3, #0xdd
	bl sub_0203EF14
	ldr r0, _0203EE88 ; =0x00002328
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED14:
	add r2, r3, #0
	sub r2, #0x1e
	cmp r4, r2
	blo _0203ED2E
	ldr r2, _0203EE8C ; =0x000001A9
	mov r3, #7
	bl sub_0203EF14
	ldr r0, _0203EE90 ; =0x0000230A
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED2E:
	add r2, r3, #0
	sub r2, #0x32
	cmp r4, r2
	blo _0203ED4A
	ldr r2, _0203EE94 ; =0x000001F2
	add r3, r2, #0
	add r3, #0x29
	bl sub_0203EF14
	ldr r0, _0203EE98 ; =0x000022F6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED4A:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203ED66
	mov r2, #0x6a
	lsl r2, r2, #2
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE9C ; =0x000022C4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED66:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ED80
	ldr r2, _0203EEA0 ; =0x000001F1
	add r3, r2, #0
	add r3, #0x29
	bl sub_0203EF14
	ldr r0, _0203EEA4 ; =0x00002260
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED80:
	mov r2, #0x7d
	lsl r2, r2, #6
	cmp r4, r2
	blo _0203EDA0
	mov r2, #0x66
	lsl r2, r2, #2
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	mov r0, #0x7d
	lsl r0, r0, #6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDA0:
	ldr r3, _0203EEA8 ; =0x00001B58
	cmp r4, r3
	blo _0203EDBC
	mov r2, #0x65
	lsl r2, r2, #2
	add r3, r2, #0
	sub r3, #0x23
	bl sub_0203EF14
	ldr r0, _0203EEA8 ; =0x00001B58
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDBC:
	ldr r5, _0203EEAC ; =0x00001388
	cmp r4, r5
	blo _0203EDD4
	ldr r2, _0203EEB0 ; =0x0000045A
	mov r3, #0xd5
	bl sub_0203EF14
	add r0, r5, #0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDD4:
	ldr r3, _0203EEB4 ; =0x00000BB8
	cmp r4, r3
	blo _0203EDEC
	ldr r2, _0203EEB0 ; =0x0000045A
	mov r3, #0xd5
	bl sub_0203EF14
	ldr r0, _0203EEB4 ; =0x00000BB8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDEC:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203EEBC
	ldr r2, _0203EEB8 ; =0x0000019D
	add r3, r2, #0
	sub r3, #0x10
	bl sub_0203EF14
	mov r0, #0xaf
	lsl r0, r0, #4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
	; .align 2, 0
_0203EE08: .word 0x000028FA
_0203EE0C: .word 0x000001F3
_0203EE10: .word 0x000028D2
_0203EE14: .word 0x000028A0
_0203EE18: .word 0x0000041B
_0203EE1C: .word 0x0000283C
_0203EE20: .word 0x000027D8
_0203EE24: .word 0x00000197
_0203EE28: .word 0x0000045C
_0203EE2C: .word 0x0000026D
_0203EE30: .word 0x000027A6
_0203EE34: .word 0x0000045B
_0203EE38: .word 0x0000026E
_0203EE3C: .word 0x00002774
_0203EE40: .word 0x00000199
_0203EE44: .word 0x00002710
_0203EE48: .word 0x0000019B
_0203EE4C: .word 0x000026DE
_0203EE50: .word 0x000026AC
_0203EE54: .word 0x0000018D
_0203EE58: .word 0x00002648
_0203EE5C: .word 0x000001A6
_0203EE60: .word 0x000025E4
_0203EE64: .word 0x000001F5
_0203EE68: .word 0x0000251C
_0203EE6C: .word 0x000001AA
_0203EE70: .word 0x000024B8
_0203EE74: .word 0x00002454
_0203EE78: .word 0x00000196
_0203EE7C: .word 0x000001A7
_0203EE80: .word 0x000023F0
_0203EE84: .word 0x0000238C
_0203EE88: .word 0x00002328
_0203EE8C: .word 0x000001A9
_0203EE90: .word 0x0000230A
_0203EE94: .word 0x000001F2
_0203EE98: .word 0x000022F6
_0203EE9C: .word 0x000022C4
_0203EEA0: .word 0x000001F1
_0203EEA4: .word 0x00002260
_0203EEA8: .word 0x00001B58
_0203EEAC: .word 0x00001388
_0203EEB0: .word 0x0000045A
_0203EEB4: .word 0x00000BB8
_0203EEB8: .word 0x0000019D
_0203EEBC:
	lsr r3, r5, #1
	cmp r4, r3
	blo _0203EED4
	mov r2, #1
	mov r3, #0x11
	bl sub_0203EF14
	lsr r0, r5, #1
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EED4:
	lsr r2, r2, #2
	cmp r4, r2
	blo _0203EEEE
	mov r2, #0xd3
	mov r3, #0xd5
	bl sub_0203EF14
	mov r0, #0x7d
	lsl r0, r0, #4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EEEE:
	cmp r4, #1
	blo _0203EEFE
	bl sub_0203EF38
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EEFE:
	ldr r2, _0203EF10 ; =0x00000192
	add r3, r2, #0
	sub r3, #0x2f
	bl sub_0203EF14
	mov r4, #0
_0203EF0A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203EF10: .word 0x00000192
	thumb_func_end sub_0203EB20

	thumb_func_start sub_0203EF14
sub_0203EF14: ; 0x0203EF14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	mov r0, #0xa
	mov r2, #0xb
	bl sub_02006AC0
	str r0, [r5, #0x7c]
	mov r0, #1
	mov r1, #0x1a
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r5, #0x78]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203EF14

	thumb_func_start sub_0203EF38
sub_0203EF38: ; 0x0203EF38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r0, [r0, #0]
	bl sub_0203F0FC
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203F110
	add r2, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x78]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203EF38

	thumb_func_start sub_0203EF60
sub_0203EF60: ; 0x0203EF60
	push {r3, lr}
	cmp r1, #0x36
	bls _0203EF68
	b _0203F090
_0203EF68:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0203EF74: ; jump table
	.short _0203EFE2 - _0203EF74 - 2 ; case 0
	.short _0203EFE6 - _0203EF74 - 2 ; case 1
	.short _0203EFEA - _0203EF74 - 2 ; case 2
	.short _0203EFEE - _0203EF74 - 2 ; case 3
	.short _0203EFF2 - _0203EF74 - 2 ; case 4
	.short _0203EFF6 - _0203EF74 - 2 ; case 5
	.short _0203EFFA - _0203EF74 - 2 ; case 6
	.short _0203EFFE - _0203EF74 - 2 ; case 7
	.short _0203F002 - _0203EF74 - 2 ; case 8
	.short _0203F006 - _0203EF74 - 2 ; case 9
	.short _0203F00A - _0203EF74 - 2 ; case 10
	.short _0203F00E - _0203EF74 - 2 ; case 11
	.short _0203F012 - _0203EF74 - 2 ; case 12
	.short _0203F016 - _0203EF74 - 2 ; case 13
	.short _0203F01A - _0203EF74 - 2 ; case 14
	.short _0203F01E - _0203EF74 - 2 ; case 15
	.short _0203F022 - _0203EF74 - 2 ; case 16
	.short _0203F026 - _0203EF74 - 2 ; case 17
	.short _0203F02A - _0203EF74 - 2 ; case 18
	.short _0203F02E - _0203EF74 - 2 ; case 19
	.short _0203F032 - _0203EF74 - 2 ; case 20
	.short _0203F036 - _0203EF74 - 2 ; case 21
	.short _0203F03A - _0203EF74 - 2 ; case 22
	.short _0203F03E - _0203EF74 - 2 ; case 23
	.short _0203F042 - _0203EF74 - 2 ; case 24
	.short _0203F046 - _0203EF74 - 2 ; case 25
	.short _0203F04A - _0203EF74 - 2 ; case 26
	.short _0203F04E - _0203EF74 - 2 ; case 27
	.short _0203F052 - _0203EF74 - 2 ; case 28
	.short _0203F056 - _0203EF74 - 2 ; case 29
	.short _0203F05A - _0203EF74 - 2 ; case 30
	.short _0203F05E - _0203EF74 - 2 ; case 31
	.short _0203F062 - _0203EF74 - 2 ; case 32
	.short _0203F066 - _0203EF74 - 2 ; case 33
	.short _0203F06A - _0203EF74 - 2 ; case 34
	.short _0203F06E - _0203EF74 - 2 ; case 35
	.short _0203F072 - _0203EF74 - 2 ; case 36
	.short _0203F076 - _0203EF74 - 2 ; case 37
	.short _0203F07A - _0203EF74 - 2 ; case 38
	.short _0203F07E - _0203EF74 - 2 ; case 39
	.short _0203F082 - _0203EF74 - 2 ; case 40
	.short _0203F086 - _0203EF74 - 2 ; case 41
	.short _0203F086 - _0203EF74 - 2 ; case 42
	.short _0203F086 - _0203EF74 - 2 ; case 43
	.short _0203F086 - _0203EF74 - 2 ; case 44
	.short _0203F086 - _0203EF74 - 2 ; case 45
	.short _0203F086 - _0203EF74 - 2 ; case 46
	.short _0203F086 - _0203EF74 - 2 ; case 47
	.short _0203F086 - _0203EF74 - 2 ; case 48
	.short _0203F086 - _0203EF74 - 2 ; case 49
	.short _0203F086 - _0203EF74 - 2 ; case 50
	.short _0203F086 - _0203EF74 - 2 ; case 51
	.short _0203F086 - _0203EF74 - 2 ; case 52
	.short _0203F086 - _0203EF74 - 2 ; case 53
	.short _0203F086 - _0203EF74 - 2 ; case 54
_0203EFE2:
	add r0, #0x10
	pop {r3, pc}
_0203EFE6:
	add r0, #0x14
	pop {r3, pc}
_0203EFEA:
	add r0, #0x24
	pop {r3, pc}
_0203EFEE:
	add r0, r0, #5
	pop {r3, pc}
_0203EFF2:
	add r0, r0, #6
	pop {r3, pc}
_0203EFF6:
	add r0, r0, #7
	pop {r3, pc}
_0203EFFA:
	add r0, #8
	pop {r3, pc}
_0203EFFE:
	add r0, #9
	pop {r3, pc}
_0203F002:
	add r0, #0xa
	pop {r3, pc}
_0203F006:
	add r0, #0x28
	pop {r3, pc}
_0203F00A:
	add r0, #0x2c
	pop {r3, pc}
_0203F00E:
	add r0, #0x30
	pop {r3, pc}
_0203F012:
	add r0, #0x34
	pop {r3, pc}
_0203F016:
	add r0, #0x38
	pop {r3, pc}
_0203F01A:
	add r0, #0x3c
	pop {r3, pc}
_0203F01E:
	add r0, #0x40
	pop {r3, pc}
_0203F022:
	add r0, #0x44
	pop {r3, pc}
_0203F026:
	add r0, #0x48
	pop {r3, pc}
_0203F02A:
	add r0, #0x4c
	pop {r3, pc}
_0203F02E:
	add r0, #0xa8
	pop {r3, pc}
_0203F032:
	add r0, #0xac
	pop {r3, pc}
_0203F036:
	add r0, #0xb0
	pop {r3, pc}
_0203F03A:
	add r0, #0xb4
	pop {r3, pc}
_0203F03E:
	add r0, #0xc
	pop {r3, pc}
_0203F042:
	add r0, #0x50
	pop {r3, pc}
_0203F046:
	add r0, #0x54
	pop {r3, pc}
_0203F04A:
	add r0, #0x58
	pop {r3, pc}
_0203F04E:
	add r0, #0x5c
	pop {r3, pc}
_0203F052:
	add r0, #0x60
	pop {r3, pc}
_0203F056:
	add r0, #0x64
	pop {r3, pc}
_0203F05A:
	add r0, #0x68
	pop {r3, pc}
_0203F05E:
	add r0, #0x6c
	pop {r3, pc}
_0203F062:
	add r0, #0x70
	pop {r3, pc}
_0203F066:
	add r0, #0x74
	pop {r3, pc}
_0203F06A:
	add r0, #0x78
	pop {r3, pc}
_0203F06E:
	add r0, #0x7c
	pop {r3, pc}
_0203F072:
	add r0, #0x80
	pop {r3, pc}
_0203F076:
	add r0, #0x84
	pop {r3, pc}
_0203F07A:
	add r0, #0xb8
	pop {r3, pc}
_0203F07E:
	add r0, #0xc8
	pop {r3, pc}
_0203F082:
	add r0, #0xd8
	pop {r3, pc}
_0203F086:
	sub r1, #0x29
	add r0, #0x88
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0203F090:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203EF60

	thumb_func_start sub_0203F098
sub_0203F098: ; 0x0203F098
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x10]
	add r5, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0203F0BC ; =0x0003643F
	cmp r1, r0
	beq _0203F0B0
	bl sub_02022974
_0203F0B0:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203EF60
	pop {r3, r4, r5, pc}
	nop
_0203F0BC: .word 0x0003643F
	thumb_func_end sub_0203F098

	thumb_func_start sub_0203F0C0
sub_0203F0C0: ; 0x0203F0C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A9C8
	cmp r0, #1
	bne _0203F0DC
	ldr r0, _0203F0E0 ; =sub_0203AB00
	add r4, #0xa4
	str r0, [r4, #0]
_0203F0DC:
	pop {r3, r4, r5, pc}
	nop
_0203F0E0: .word sub_0203AB00
	thumb_func_end sub_0203F0C0

	thumb_func_start sub_0203F0E4
sub_0203F0E4: ; 0x0203F0E4
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r4, #8]
	bl sub_0203E850
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0203F0E4

	thumb_func_start sub_0203F0FC
sub_0203F0FC: ; 0x0203F0FC
	push {r3, lr}
	bl sub_0203A09C
	add r1, r0, #0
	mov r0, #0xa
	mov r2, #0xb
	bl sub_02006AC0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F0FC

	thumb_func_start sub_0203F110
sub_0203F110: ; 0x0203F110
	ldr r3, _0203F114 ; =sub_0203A088
	bx r3
	; .align 2, 0
_0203F114: .word sub_0203A088
	thumb_func_end sub_0203F110

	thumb_func_start sub_0203F118
sub_0203F118: ; 0x0203F118
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r4, r1
	bhs _0203F130
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F130:
	lsl r1, r1, #1
	cmp r4, r1
	bhs _0203F13E
	add r1, r4, #0
	bl sub_020508B8
	pop {r3, r4, r5, pc}
_0203F13E:
	ldr r1, _0203F14C ; =0x00007FD7
	add r0, r5, #0
	sub r1, r4, r1
	bl sub_0203F098
	pop {r3, r4, r5, pc}
	nop
_0203F14C: .word 0x00007FD7
	thumb_func_end sub_0203F118

	thumb_func_start sub_0203F150
sub_0203F150: ; 0x0203F150
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203F118
	cmp r0, #0
	beq _0203F15E
	ldrh r4, [r0]
_0203F15E:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F150

	thumb_func_start sub_0203F164
sub_0203F164: ; 0x0203F164
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x10
	blo _0203F172
	bl sub_02022974
_0203F172:
	ldr r1, _0203F184 ; =0x00004020
	add r0, r5, #0
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F150
	pop {r3, r4, r5, pc}
	nop
_0203F184: .word 0x00004020
	thumb_func_end sub_0203F164

	thumb_func_start sub_0203F188
sub_0203F188: ; 0x0203F188
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_020507F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F188

	thumb_func_start sub_0203F19C
sub_0203F19C: ; 0x0203F19C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0205081C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F19C

	thumb_func_start sub_0203F1B0
sub_0203F1B0: ; 0x0203F1B0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_02050844
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1B0

	thumb_func_start sub_0203F1C4
sub_0203F1C4: ; 0x0203F1C4
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #1
	add r4, r0, #0
	bl sub_02050870
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020508B8
	mov r1, #0
	mov r2, #0x40
	bl memset
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1C4

	thumb_func_start sub_0203F1FC
sub_0203F1FC: ; 0x0203F1FC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0xaa
	lsl r1, r1, #4
	bl sub_02050870
	mov r2, #0x18
	mov r1, #0
_0203F210:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0203F210
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1FC

	thumb_func_start sub_0203F21C
sub_0203F21C: ; 0x0203F21C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x29
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203F098
	strh r4, [r0]
	add r0, r5, #0
	mov r1, #0x2a
	bl sub_0203F098
	strh r6, [r0]
	add r0, r5, #0
	mov r1, #0x2b
	bl sub_0203F098
	strh r7, [r0]
	add r0, r5, #0
	mov r1, #0x2c
	bl sub_0203F098
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203F21C

	thumb_func_start sub_0203F254
sub_0203F254: ; 0x0203F254
	ldr r1, _0203F270 ; =0x00001388
	cmp r0, r1
	bhs _0203F264
	ldr r1, _0203F274 ; =0x00000BB7
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0203F264:
	sub r1, r1, #1
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0203F270: .word 0x00001388
_0203F274: .word 0x00000BB7
	thumb_func_end sub_0203F254

	thumb_func_start sub_0203F278
sub_0203F278: ; 0x0203F278
	ldr r1, _0203F288 ; =0x00001388
	cmp r0, r1
	blo _0203F282
	mov r0, #1
	bx lr
_0203F282:
	mov r0, #0
	bx lr
	nop
_0203F288: .word 0x00001388
	thumb_func_end sub_0203F278

	thumb_func_start sub_0203F28C
sub_0203F28C: ; 0x0203F28C
	push {r3, lr}
	mov r1, #9
	bl sub_02079220
	cmp r0, #0
	beq _0203F29C
	mov r0, #1
	pop {r3, pc}
_0203F29C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203F28C

	thumb_func_start sub_0203F2A0
sub_0203F2A0: ; 0x0203F2A0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020507F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2A0

	thumb_func_start sub_0203F2BC
sub_0203F2BC: ; 0x0203F2BC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0205081C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2BC

	thumb_func_start sub_0203F2D8
sub_0203F2D8: ; 0x0203F2D8
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02050844
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2D8

	thumb_func_start sub_0203F2F4
sub_0203F2F4: ; 0x0203F2F4
	ldr r1, _0203F300 ; =0x00001C66
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0203F300: .word 0x00001C66
	thumb_func_end sub_0203F2F4

	thumb_func_start sub_0203F304
sub_0203F304: ; 0x0203F304
	mov r1, #0x7d
	lsl r1, r1, #6
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0203F304

	thumb_func_start sub_0203F310
sub_0203F310: ; 0x0203F310
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, [r4, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _0203F3B8 ; =0x02100AE0
	ldrh r0, [r0, r1]
	cmp r2, r0
	beq _0203F33E
	ldr r2, _0203F3BC ; =0x02100AE2
	add r0, r4, #0
	ldrh r2, [r2, r1]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F33E:
	bl sub_0201D2E8
	mov r1, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, [r4, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _0203F3B8 ; =0x02100AE0
	ldrh r0, [r0, r1]
	cmp r2, r0
	beq _0203F368
	ldr r2, _0203F3BC ; =0x02100AE2
	add r0, r4, #0
	ldrh r2, [r2, r1]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F368:
	ldr r0, [r4, #0x1c]
	ldr r1, [r0, #0]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _0203F3B4
	bl sub_0201D2E8
	mov r1, #6
	bl _u32_div_f
	lsl r1, r1, #0x18
	lsr r2, r1, #0x17
	ldr r1, _0203F3C4 ; =0x02100AD4
	add r0, r4, #0
	ldrh r2, [r1, r2]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
	bl sub_0201D2E8
	mov r1, #6
	bl _u32_div_f
	lsl r1, r1, #0x18
	lsr r2, r1, #0x17
	ldr r1, _0203F3C4 ; =0x02100AD4
	add r0, r4, #0
	ldrh r2, [r1, r2]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F3B4:
	pop {r4, pc}
	nop
_0203F3B8: .word 0x02100AE0
_0203F3BC: .word 0x02100AE2
_0203F3C0: .word 0x000002DA
_0203F3C4: .word 0x02100AD4
	thumb_func_end sub_0203F310

	thumb_func_start sub_0203F3C8
sub_0203F3C8: ; 0x0203F3C8
	push {r3, r4, r5, lr}
	ldr r4, _0203F3FC ; =0x020EA378
	bl sub_0203F304
	ldr r1, _0203F400 ; =0x00000101
	mov r3, #0
	add r5, r4, #0
_0203F3D6:
	ldrh r2, [r5, #6]
	cmp r0, r2
	beq _0203F3E4
	add r3, r3, #1
	add r5, #8
	cmp r3, r1
	blo _0203F3D6
_0203F3E4:
	ldr r0, _0203F400 ; =0x00000101
	cmp r3, r0
	blo _0203F3F2
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F3F2:
	lsl r0, r3, #3
	add r0, r4, r0
	ldrb r0, [r0, #3]
	pop {r3, r4, r5, pc}
	nop
_0203F3FC: .word 0x020EA378
_0203F400: .word 0x00000101
	thumb_func_end sub_0203F3C8

	thumb_func_start sub_0203F404
sub_0203F404: ; 0x0203F404
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0x29
	bl sub_0203EF60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0203EF60
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0203EF60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203F304
	add r3, r0, #0
	ldr r6, _0203F470 ; =0x020EA378
	ldr r0, _0203F474 ; =0x00000101
	mov r2, #0
_0203F434:
	ldrh r1, [r6, #6]
	cmp r3, r1
	beq _0203F442
	add r2, r2, #1
	add r6, #8
	cmp r2, r0
	blo _0203F434
_0203F442:
	ldr r0, _0203F474 ; =0x00000101
	cmp r2, r0
	blo _0203F450
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F450:
	ldr r1, _0203F470 ; =0x020EA378
	lsl r0, r2, #3
	ldrh r2, [r1, r0]
	ldr r1, [sp]
	strh r2, [r1]
	ldr r1, _0203F470 ; =0x020EA378
	add r0, r1, r0
	ldrb r0, [r0, #2]
	strh r0, [r7]
	add r0, r5, #0
	bl sub_0203F2F4
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203F470: .word 0x020EA378
_0203F474: .word 0x00000101
	thumb_func_end sub_0203F404

	thumb_func_start sub_0203F478
sub_0203F478: ; 0x0203F478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	add r4, r1, #0
	mov r6, #0
	bl sub_0203A448
	add r5, r0, #0
	add r2, r5, #1
	mov r1, #6
	add r0, r4, #0
	mul r1, r2
	bl sub_02018144
	str r0, [sp, #0x1c]
	cmp r5, #0
	bne _0203F4AA
	mov r2, #0xff
	add r1, r0, #0
	strb r2, [r1, #4]
	ldr r2, _0203F594 ; =0x0000FFFF
	add sp, #0x24
	strh r2, [r1]
	strh r2, [r1, #2]
	pop {r4, r5, r6, r7, pc}
_0203F4AA:
	ldr r0, [sp]
	bl sub_0203A440
	add r4, r0, #0
	bne _0203F4C4
	ldr r0, [sp, #0x1c]
	mov r1, #0xff
	strb r1, [r0, #4]
	ldr r1, _0203F594 ; =0x0000FFFF
	add sp, #0x24
	strh r1, [r0]
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_0203F4C4:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	sub r0, r0, #7
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #7
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r0, #7
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0203F4FA
	add r0, r6, #0
	str r0, [sp, #0x10]
_0203F4FA:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0203F504
	mov r0, #0
	str r0, [sp, #8]
_0203F504:
	add r0, r5, #1
	mov r7, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _0203F57A
	ldr r5, [sp, #0x1c]
_0203F510:
	ldrh r0, [r4, #2]
	cmp r0, #2
	bne _0203F570
	ldrh r0, [r4]
	bl sub_0203F2F4
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0203F188
	cmp r0, #0
	bne _0203F570
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blt _0203F570
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bgt _0203F570
	ldr r1, [r4, #8]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0203F570
	ldr r0, [sp, #4]
	cmp r1, r0
	bgt _0203F570
	ldrh r0, [r4]
	bl sub_0203F3C8
	strb r0, [r5, #4]
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x18]
	sub r1, r0, r1
	mov r0, #7
	sub r0, r0, r1
	bl abs
	strh r0, [r5]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x14]
	sub r1, r0, r1
	mov r0, #7
	sub r0, r0, r1
	bl abs
	strh r0, [r5, #2]
	add r5, r5, #6
	add r6, r6, #1
_0203F570:
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r4, #0x14
	cmp r7, r0
	blt _0203F510
_0203F57A:
	mov r0, #6
	add r3, r6, #0
	mul r3, r0
	ldr r0, [sp, #0x1c]
	mov r1, #0xff
	add r2, r0, r3
	strb r1, [r2, #4]
	ldr r1, _0203F594 ; =0x0000FFFF
	strh r1, [r0, r3]
	strh r1, [r2, #2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0203F594: .word 0x0000FFFF
	thumb_func_end sub_0203F478

	thumb_func_start sub_0203F598
sub_0203F598: ; 0x0203F598
	ldr r3, _0203F5A0 ; =sub_0203F5A4
	mov r1, #0x96
	lsl r1, r1, #6
	bx r3
	; .align 2, 0
_0203F5A0: .word sub_0203F5A4
	thumb_func_end sub_0203F598

	thumb_func_start sub_0203F5A4
sub_0203F5A4: ; 0x0203F5A4
	push {r4, lr}
	bl sub_0203EAB8
	add r4, r0, #0
_0203F5AC:
	add r0, r4, #0
	bl sub_0203E778
	cmp r0, #1
	beq _0203F5AC
	add r0, r4, #0
	bl sub_0203EA50
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F5A4

	thumb_func_start sub_0203F5C0
sub_0203F5C0: ; 0x0203F5C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203A68C
	add r1, r0, #0
	bne _0203F5D2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F5D2:
	cmp r4, #1
	bne _0203F5E0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203F638
	b _0203F5E6
_0203F5E0:
	add r1, r4, #0
	bl sub_0203F610
_0203F5E6:
	add r1, r0, #0
	ldr r0, _0203F60C ; =0x0000FFFF
	cmp r1, r0
	bne _0203F5F2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F5F2:
	cmp r4, #1
	bne _0203F600
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E880
	b _0203F606
_0203F600:
	add r0, r5, #0
	bl sub_0203F5A4
_0203F606:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0203F60C: .word 0x0000FFFF
	thumb_func_end sub_0203F5C0

	thumb_func_start sub_0203F610
sub_0203F610: ; 0x0203F610
	ldrb r2, [r0]
	cmp r2, #0
	bne _0203F61A
	ldr r0, _0203F634 ; =0x0000FFFF
	bx lr
_0203F61A:
	cmp r2, r1
	bne _0203F62C
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0203F62C:
	add r0, r0, #5
	b sub_0203F610
_0203F630:
	.byte 0x70, 0x47, 0xC0, 0x46
_0203F634:
	.word 0x0000FFFF
	thumb_func_end sub_0203F610

	thumb_func_start sub_0203F638
sub_0203F638: ; 0x0203F638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
_0203F63E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0203F648
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F648:
	cmp r0, r2
	bne _0203F664
	ldrb r0, [r4, #4]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #1]
	lsl r1, r0, #0x18
	ldrb r0, [r4, #3]
	lsl r2, r2, #8
	add r2, r3, r2
	lsl r0, r0, #0x10
	add r0, r0, r2
	add r1, r1, r0
	add r0, r4, #5
	b _0203F668
_0203F664:
	add r4, r4, #5
	b _0203F63E
_0203F668:
	cmp r1, #0
	bne _0203F670
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F670:
	add r4, r0, r1
_0203F672:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0203F67C
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F67C:
	ldrb r0, [r4, #1]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _0203F68C
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F68C:
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsl r0, r0, #8
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203F150
	cmp r7, r0
	bne _0203F6BA
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0203F6BA:
	add r4, r4, #6
	b _0203F672
_0203F6BE:
	.byte 0xF8, 0xBD
_0203F6C0: .word 0x0000FFFF
	thumb_func_end sub_0203F638

	.rodata


	.global Unk_020EA378
Unk_020EA378: ; 0x020EA378
	.incbin "incbin/arm9_rodata.bin", 0x5738, 0x808



	.data


	.global Unk_02100AD4
Unk_02100AD4: ; 0x02100AD4
	.incbin "incbin/arm9_data.bin", 0x1DF4, 0x1E00 - 0x1DF4

	.global Unk_02100AE0
Unk_02100AE0: ; 0x02100AE0
	.incbin "incbin/arm9_data.bin", 0x1E00, 0x10

