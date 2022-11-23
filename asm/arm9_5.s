	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0204AF9C
sub_0204AF9C: ; 0x0204AF9C
	ldr r3, _0204AFBC ; =0x020EBD98
	mov r2, #0
_0204AFA0:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0204AFAE
	ldr r0, _0204AFC0 ; =0x020EBD9A
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_0204AFAE:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x3f
	blo _0204AFA0
	mov r0, #3
	bx lr
	nop
_0204AFBC: .word 0x020EBD98
_0204AFC0: .word 0x020EBD9A
	thumb_func_end sub_0204AF9C

	thumb_func_start sub_0204AFC4
sub_0204AFC4: ; 0x0204AFC4
	push {r3, r4}
	add r0, #0xac
	ldr r3, [r0, #0]
	ldrh r0, [r1]
	mov r2, #0
	strb r0, [r3, #0x12]
	ldrh r0, [r1, #2]
	strh r0, [r3, #0x16]
	ldrh r0, [r1, #4]
	strh r0, [r3, #0x18]
	ldrh r0, [r1, #6]
	mov r1, #0xe0
	strh r0, [r3, #0x14]
	ldrb r0, [r3, #0x10]
	bic r0, r1
	ldrb r1, [r3, #0x12]
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r3, #0x10]
	ldrh r4, [r3, #0x16]
	ldrh r1, [r3, #0x2e]
	cmp r1, r4
	beq _0204B000
	ldrh r0, [r3, #0x18]
	cmp r1, r0
	bne _0204B006
_0204B000:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0204B006:
	ldrh r1, [r3, #0x30]
	cmp r1, r4
	beq _0204B012
	ldrh r0, [r3, #0x18]
	cmp r1, r0
	bne _0204B018
_0204B012:
	add r0, r2, #2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0204B018:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0204AFC4

	thumb_func_start sub_0204B020
sub_0204B020: ; 0x0204B020
	push {r3, r4, r5, lr}
	add r0, #0xac
	add r5, r1, #0
	ldr r4, [r0, #0]
	bl sub_0203608C
	cmp r0, #0
	bne _0204B034
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B034:
	add r4, #0x3e
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	bl sub_020C4DB0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B020

	thumb_func_start sub_0204B044
sub_0204B044: ; 0x0204B044
	add r0, #0xac
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0204B056
	ldrh r0, [r1]
	cmp r0, #0
	beq _0204B05A
_0204B056:
	mov r0, #1
	bx lr
_0204B05A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0204B044

	thumb_func_start sub_0204B060
sub_0204B060: ; 0x0204B060
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02025E38
	bl sub_02025F30
	ldr r1, _0204B0B4 ; =0x0000083E
	strh r0, [r6, r1]
	add r0, r4, #0
	bl sub_0207A268
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_0204B080:
	add r1, r6, r4
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x21
	lsl r1, r1, #6
	strh r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #2
	blt _0204B080
	ldr r0, [r6, #0x74]
	mov r1, #3
	mov r2, #0
	bl sub_0202D3B4
	ldr r1, _0204B0B8 ; =0x00000844
	strh r0, [r6, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204B0B4: .word 0x0000083E
_0204B0B8: .word 0x00000844
	thumb_func_end sub_0204B060

	thumb_func_start sub_0204B0BC
sub_0204B0BC: ; 0x0204B0BC
	ldr r1, _0204B0CC ; =0x0000083E
	add r2, r0, #0
	add r1, r2, r1
	ldr r3, _0204B0D0 ; =sub_020C4DB0
	add r0, #0x3e
	mov r2, #0x1c
	bx r3
	nop
_0204B0CC: .word 0x0000083E
_0204B0D0: .word sub_020C4DB0
	thumb_func_end sub_0204B0BC

	thumb_func_start sub_0204B0D4
sub_0204B0D4: ; 0x0204B0D4
	ldrb r3, [r0, #0x10]
	mov r2, #8
	bic r3, r2
	lsl r2, r1, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1c
	orr r2, r3
	strb r2, [r0, #0x10]
	ldr r2, _0204B0EC ; =0x0000083E
	strh r1, [r0, r2]
	bx lr
	; .align 2, 0
_0204B0EC: .word 0x0000083E
	thumb_func_end sub_0204B0D4

	thumb_func_start sub_0204B0F0
sub_0204B0F0: ; 0x0204B0F0
	push {r3, r4, r5, lr}
	cmp r3, #0
	bne _0204B10E
	cmp r1, #2
	bne _0204B102
	cmp r2, #6
	bne _0204B102
	ldr r0, _0204B16C ; =0x00000131
	pop {r3, r4, r5, pc}
_0204B102:
	cmp r1, #6
	bne _0204B10E
	cmp r2, #6
	bne _0204B10E
	ldr r0, _0204B170 ; =0x00000132
	pop {r3, r4, r5, pc}
_0204B10E:
	cmp r1, #7
	bhs _0204B15A
	cmp r2, #6
	bne _0204B138
	lsl r5, r1, #2
	ldr r1, _0204B174 ; =0x020EBD78
	ldrh r4, [r1, r5]
	bl sub_0204AEC0
	ldr r1, _0204B178 ; =0x020EBD7A
	ldrh r1, [r1, r5]
	sub r1, r1, r4
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	add r0, r4, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0204B138:
	lsl r4, r1, #2
	ldr r1, _0204B17C ; =0x020EBD58
	ldrh r5, [r1, r4]
	bl sub_0204AEC0
	ldr r1, _0204B180 ; =0x020EBD5A
	ldrh r1, [r1, r4]
	sub r1, r1, r5
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	add r0, r5, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0204B15A:
	bl sub_0204AEC0
	mov r1, #0x64
	bl sub_020E1F6C
	add r1, #0xc8
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204B16C: .word 0x00000131
_0204B170: .word 0x00000132
_0204B174: .word 0x020EBD78
_0204B178: .word 0x020EBD7A
_0204B17C: .word 0x020EBD58
_0204B180: .word 0x020EBD5A
	thumb_func_end sub_0204B0F0

	thumb_func_start sub_0204B184
sub_0204B184: ; 0x0204B184
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x15
	add r3, r6, #0
	bl sub_0200B144
	mov r2, #0x11
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0204B630
	add r6, r0, #0
	ldr r0, _0204B1E4 ; =0x0000FFFF
	str r4, [r5, #0]
	strh r0, [r5, #0x18]
	lsl r0, r4, #1
	add r0, r4, r0
	strh r0, [r5, #0x1a]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r5, #4]
	add r0, r7, #0
	bl sub_0200B1EC
	add r5, #8
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204B1E4: .word 0x0000FFFF
	thumb_func_end sub_0204B184

	thumb_func_start sub_0204B1E8
sub_0204B1E8: ; 0x0204B1E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x38
	str r3, [sp]
	bl sub_020C4CF4
	add r0, sp, #8
	add r1, r6, #0
	bl sub_0204B640
	add r2, sp, #8
	ldrh r0, [r5]
	ldr r1, _0204B390 ; =0xFFFFF800
	ldrh r3, [r2]
	and r0, r1
	lsr r1, r1, #0x15
	and r1, r3
	orr r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	ldr r0, _0204B394 ; =0xFFFF07FF
	and r1, r0
	ldrh r0, [r2, #0xe]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0204B23A
	add r0, sp, #0x20
	ldrb r0, [r0, #0x18]
	lsl r1, r0, #1
	ldr r0, _0204B398 ; =0x020EBD50
	ldrh r0, [r0, r1]
	b _0204B23C
_0204B23A:
	ldrh r0, [r2, #0xc]
_0204B23C:
	strh r0, [r5, #2]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	add r1, sp, #8
	add r2, r5, #0
	add r3, r0, #0
_0204B24A:
	ldrh r6, [r1, #2]
	strh r6, [r2, #4]
	ldrh r6, [r1, #2]
	cmp r6, #0xda
	bne _0204B256
	str r3, [sp, #4]
_0204B256:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0204B24A
	ldr r0, [sp]
	ldr r7, [sp, #0x30]
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _0204B29C
_0204B26A:
	add r0, r4, #0
	bl sub_0204AEC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0204AEC0
	lsl r0, r0, #0x10
	add r7, r6, #0
	orr r7, r0
	add r0, r7, #0
	bl sub_02075BFC
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _0204B26A
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02075E38
	cmp r0, #1
	beq _0204B26A
	str r7, [r5, #0x10]
	b _0204B29E
_0204B29C:
	str r7, [r5, #0x10]
_0204B29E:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x14]
	ldr r2, [r5, #0x14]
	mov r0, #0x1f
	bic r2, r0
	mov r0, #0x1f
	and r0, r1
	orr r2, r0
	ldr r0, _0204B39C ; =0xFFFFFC1F
	mov r6, #0
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r1, r0, #0x16
	orr r2, r1
	ldr r1, _0204B3A0 ; =0xFFFF83FF
	add r4, r6, #0
	and r2, r1
	lsr r1, r0, #0x11
	orr r2, r1
	ldr r1, _0204B3A4 ; =0xFFF07FFF
	and r2, r1
	lsr r1, r0, #0xc
	orr r2, r1
	ldr r1, _0204B3A8 ; =0xFE0FFFFF
	and r2, r1
	lsr r1, r0, #7
	orr r2, r1
	ldr r1, _0204B3AC ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x14]
_0204B2DE:
	add r0, r4, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0204B2EE
	add r6, r6, #1
_0204B2EE:
	add r4, r4, #1
	cmp r4, #6
	blt _0204B2DE
	ldr r0, _0204B3B0 ; =0x000001FE
	add r1, r6, #0
	bl sub_020E1F6C
	cmp r0, #0xff
	ble _0204B302
	mov r0, #0xff
_0204B302:
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r6, r0, #0x18
_0204B308:
	add r0, r4, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0204B31A
	add r0, r5, r4
	strb r6, [r0, #0x18]
_0204B31A:
	add r4, r4, #1
	cmp r4, #6
	blt _0204B308
	mov r0, #0
	strb r0, [r5, #0x1e]
	ldr r0, _0204B3B4 ; =0x020E4C44
	mov r1, #0x19
	ldrb r0, [r0]
	strb r0, [r5, #0x1f]
	ldrh r0, [r5]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	cmp r0, #0
	beq _0204B35E
	ldr r2, [r5, #0x10]
	mov r1, #1
	tst r1, r2
	beq _0204B34A
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
	b _0204B370
_0204B34A:
	ldrh r0, [r5]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
	b _0204B370
_0204B35E:
	ldrh r0, [r5]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r5, #0
	add r1, #0x20
	strb r0, [r1]
_0204B370:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x21
	strb r0, [r1]
	ldrh r0, [r5]
	add r5, #0x22
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	add r2, r5, #0
	bl sub_0200B274
	add r0, r7, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204B390: .word 0xFFFFF800
_0204B394: .word 0xFFFF07FF
_0204B398: .word 0x020EBD50
_0204B39C: .word 0xFFFFFC1F
_0204B3A0: .word 0xFFFF83FF
_0204B3A4: .word 0xFFF07FFF
_0204B3A8: .word 0xFE0FFFFF
_0204B3AC: .word 0xC1FFFFFF
_0204B3B0: .word 0x000001FE
_0204B3B4: .word 0x020E4C44
	thumb_func_end sub_0204B1E8

	thumb_func_start sub_0204B3B8
sub_0204B3B8: ; 0x0204B3B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x3c]
	add r6, r3, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204B184
	add r7, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r5, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_0204B470
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204B3B8

	thumb_func_start sub_0204B404
sub_0204B404: ; 0x0204B404
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	add r5, r1, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r4, r2, #0
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x3c]
	add r0, r5, #0
	add r1, r4, #0
	str r3, [sp, #0x18]
	bl sub_0204B184
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0204AE84
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x20]
	mov r7, #0
	add r4, r6, #0
	add r5, #0x30
_0204B434:
	ldr r0, [r6, #8]
	ldr r3, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldrh r2, [r4, #4]
	ldr r0, [sp, #0x14]
	ldr r3, [r3, #0]
	bl sub_0204B1E8
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #2
	add r5, #0x38
	cmp r7, #2
	blt _0204B434
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204B404

	thumb_func_start sub_0204B470
sub_0204B470: ; 0x0204B470
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x94]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x94]
	ldr r0, [sp, #0x98]
	str r1, [sp, #0x18]
	str r0, [sp, #0x98]
	ldr r0, [sp, #0x9c]
	str r3, [sp, #0x20]
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0xa0]
	mov r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #4
	bls _0204B49C
	bl sub_02022974
_0204B49C:
	add r0, sp, #0x80
	ldrb r6, [r0, #0x10]
	mov r4, #0
	str r4, [sp, #0x2c]
	cmp r6, #0
	beq _0204B58E
	add r0, sp, #0x6c
	str r0, [sp, #0x24]
_0204B4AC:
	ldr r0, [sp, #0x14]
	bl sub_0204AEC0
	ldr r1, [sp, #0x18]
	ldrh r1, [r1, #2]
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r1, r0, #0x17
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r0, [r0, #4]
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	add r0, sp, #0x3c
	bl sub_0204B640
	mov r7, #0
	cmp r4, #0
	ble _0204B4F0
	add r5, sp, #0x6c
_0204B4D6:
	ldr r1, [r5, #0]
	add r0, sp, #0x4c
	bl sub_0204B640
	add r0, sp, #0x3c
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0204B4F0
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r4
	blt _0204B4D6
_0204B4F0:
	cmp r7, r4
	bne _0204B58A
	ldr r0, [sp, #0x94]
	cmp r0, #0
	beq _0204B518
	mov r3, #0
	cmp r6, #0
	ble _0204B514
	add r1, r0, #0
	add r0, sp, #0x3c
	ldrh r2, [r0]
_0204B506:
	ldrh r0, [r1]
	cmp r2, r0
	beq _0204B514
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, r6
	blt _0204B506
_0204B514:
	cmp r3, r6
	bne _0204B58A
_0204B518:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x32
	bge _0204B580
	mov r7, #0
	cmp r4, #0
	ble _0204B544
	add r5, sp, #0x6c
_0204B526:
	ldr r1, [r5, #0]
	add r0, sp, #0x4c
	bl sub_0204B640
	add r0, sp, #0x3c
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0204B53C
	ldrh r0, [r0, #0xc]
	cmp r1, r0
	beq _0204B544
_0204B53C:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r4
	blt _0204B526
_0204B544:
	cmp r7, r4
	beq _0204B550
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	b _0204B58A
_0204B550:
	ldr r0, [sp, #0x98]
	cmp r0, #0
	beq _0204B580
	mov r3, #0
	cmp r6, #0
	ble _0204B574
	add r1, r0, #0
	add r0, sp, #0x3c
	ldrh r2, [r0, #0xc]
_0204B562:
	ldrh r0, [r1]
	cmp r2, r0
	bne _0204B56C
	cmp r0, #0
	bne _0204B574
_0204B56C:
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, r6
	blt _0204B562
_0204B574:
	cmp r3, r6
	beq _0204B580
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	b _0204B58A
_0204B580:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	stmia r0!, {r1}
	str r0, [sp, #0x24]
_0204B58A:
	cmp r4, r6
	bne _0204B4AC
_0204B58E:
	ldr r0, [sp, #0x1c]
	bl sub_0204AE84
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	bl sub_0204AEC0
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0204AEC0
	lsl r0, r0, #0x10
	orr r0, r5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	cmp r0, #0x32
	blt _0204B5B4
	mov r0, #1
	str r0, [sp, #0x28]
_0204B5B4:
	mov r5, #0
	cmp r4, #0
	ble _0204B5F4
	add r7, sp, #0x6c
	add r6, sp, #0x5c
_0204B5BE:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x20]
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x10]
	ldr r2, [r7, #0]
	ldr r0, [sp, #0x14]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204B1E8
	stmia r6!, {r0}
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r0, #0x38
	add r7, r7, #4
	str r0, [sp, #0x20]
	cmp r5, r4
	blt _0204B5BE
_0204B5F4:
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	bne _0204B600
	ldr r0, [sp, #0x28]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_0204B600:
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x9c]
	str r1, [r0, #0]
	mov r3, #0
	add r0, sp, #0x6c
	add r1, sp, #0x5c
_0204B60C:
	ldr r5, [r0, #0]
	ldr r4, [sp, #0x9c]
	add r3, r3, #1
	strh r5, [r4, #4]
	ldr r4, [r1, #0]
	add r0, r0, #4
	str r4, [r2, #8]
	ldr r4, [sp, #0x9c]
	add r1, r1, #4
	add r4, r4, #2
	add r2, r2, #4
	str r4, [sp, #0x9c]
	cmp r3, #2
	blt _0204B60C
	ldr r0, [sp, #0x28]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204B470

	thumb_func_start sub_0204B630
sub_0204B630: ; 0x0204B630
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _0204B63C ; =sub_02006AC0
	mov r0, #0xb2
	bx r3
	; .align 2, 0
_0204B63C: .word sub_02006AC0
	thumb_func_end sub_0204B630

	thumb_func_start sub_0204B640
sub_0204B640: ; 0x0204B640
	ldr r3, _0204B648 ; =sub_02006AA4
	add r2, r1, #0
	mov r1, #0xb3
	bx r3
	; .align 2, 0
_0204B648: .word sub_02006AA4
	thumb_func_end sub_0204B640

	thumb_func_start sub_0204B64C
sub_0204B64C: ; 0x0204B64C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	bl sub_02055F00
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B64C

	thumb_func_start sub_0204B680
sub_0204B680: ; 0x0204B680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F40
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B680

	thumb_func_start sub_0204B6B4
sub_0204B6B4: ; 0x0204B6B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F64
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B6B4

	thumb_func_start sub_0204B6E8
sub_0204B6E8: ; 0x0204B6E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F88
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B6E8

	thumb_func_start sub_0204B71C
sub_0204B71C: ; 0x0204B71C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055FA8
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B71C

	thumb_func_start sub_0204B750
sub_0204B750: ; 0x0204B750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055E80
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204B750

	thumb_func_start sub_0204B784
sub_0204B784: ; 0x0204B784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055EAC
	add r0, r6, #0
	mov r1, #4
	bl sub_0202CF28
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B784

	thumb_func_start sub_0204B7CC
sub_0204B7CC: ; 0x0204B7CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #0
	beq _0204B7DE
	cmp r0, #1
	beq _0204B7E8
	b _0204B7F2
_0204B7DE:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020562AC
	b _0204B7F6
_0204B7E8:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020562D8
	b _0204B7F6
_0204B7F2:
	bl sub_02022974
_0204B7F6:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204B7CC

	thumb_func_start sub_0204B7FC
sub_0204B7FC: ; 0x0204B7FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	bl sub_02055E00
	add r0, r4, #0
	mov r1, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B7FC

	thumb_func_start sub_0204B830
sub_0204B830: ; 0x0204B830
	str r1, [r0, #0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	bx lr
	thumb_func_end sub_0204B830

	thumb_func_start sub_0204B838
sub_0204B838: ; 0x0204B838
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF40
	pop {r3, pc}
	thumb_func_end sub_0204B838

	thumb_func_start sub_0204B844
sub_0204B844: ; 0x0204B844
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF5C
	pop {r3, pc}
	thumb_func_end sub_0204B844

	thumb_func_start sub_0204B850
sub_0204B850: ; 0x0204B850
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF78
	pop {r3, pc}
	thumb_func_end sub_0204B850

	thumb_func_start sub_0204B85C
sub_0204B85C: ; 0x0204B85C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #8
	bls _0204B86C
	b _0204BA44
_0204B86C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204B878: ; jump table
	.short _0204B88A - _0204B878 - 2 ; case 0
	.short _0204B8B4 - _0204B878 - 2 ; case 1
	.short _0204B8E0 - _0204B878 - 2 ; case 2
	.short _0204B900 - _0204B878 - 2 ; case 3
	.short _0204B93C - _0204B878 - 2 ; case 4
	.short _0204B96E - _0204B878 - 2 ; case 5
	.short _0204B9DA - _0204B878 - 2 ; case 6
	.short _0204B898 - _0204B878 - 2 ; case 7
	.short _0204B8A6 - _0204B878 - 2 ; case 8
_0204B88A:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_0202DEE4
	b _0204BA44
_0204B898:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0202DF04
	b _0204BA44
_0204B8A6:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl sub_0202DF04
	b _0204BA44
_0204B8B4:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0204B838
	cmp r0, #0
	beq _0204B8DA
	mov r0, #1
	strh r0, [r5]
	b _0204BA44
_0204B8DA:
	mov r0, #0
	strh r0, [r5]
	b _0204BA44
_0204B8E0:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0204B838
	strh r0, [r5]
	b _0204BA44
_0204B900:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	lsl r5, r0, #4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r7, _0204BA4C ; =0x020EBE94
	bl sub_0204B844
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r7, r5]
	blx r2
	strh r0, [r6]
	b _0204BA44
_0204B93C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B844
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, [r5, #4]
	blx r2
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0204B850
	b _0204BA44
_0204B96E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B844
	add r4, #0x80
	add r3, r0, #0
	ldr r1, [r4, #0]
	ldr r2, [r6, #0]
	add r0, sp, #0x14
	bl sub_0204B830
	ldr r2, [sp]
	ldr r3, [r5, #8]
	add r0, sp, #0x14
	add r1, r7, #0
	blx r3
	b _0204BA44
_0204B9DA:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B844
	add r4, #0x80
	add r3, r0, #0
	ldr r1, [r4, #0]
	ldr r2, [r6, #0]
	add r0, sp, #8
	bl sub_0204B830
	ldr r2, [sp, #4]
	ldr r3, [r5, #0xc]
	add r0, sp, #8
	add r1, r7, #0
	blx r3
_0204BA44:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BA4C: .word 0x020EBE94
	thumb_func_end sub_0204B85C

	thumb_func_start sub_0204BA50
sub_0204BA50: ; 0x0204BA50
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	cmp r0, #6
	bge _0204BA64
	mov r0, #1
	pop {r3, pc}
_0204BA64:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204BA50

	thumb_func_start sub_0204BA68
sub_0204BA68: ; 0x0204BA68
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r1, [r1, #0xc]
	ldr r2, _0204BA84 ; =0x000001EA
	mov r0, #0x20
	bl sub_02054930
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0204BA84: .word 0x000001EA
	thumb_func_end sub_0204BA68

	thumb_func_start sub_0204BA88
sub_0204BA88: ; 0x0204BA88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0204BAA8 ; =0x0000017B
	strh r0, [r1]
	mov r0, #0xd
	strh r0, [r2]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, pc}
	; .align 2, 0
_0204BAA8: .word 0x0000017B
	thumb_func_end sub_0204BA88

	thumb_func_start sub_0204BAAC
sub_0204BAAC: ; 0x0204BAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	bl sub_0204B844
	str r0, [sp, #0x14]
	ldr r0, [r7, #0xc]
	bl sub_02025E38
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl sub_020507E4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #8]
	add r5, r0, #0
	add r4, r0, #4
	add r0, r4, #0
	mov r1, #0x98
	add r5, #0xf0
	bl sub_02074470
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	bl sub_020C3880
	bl sub_0201D30C
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0204BB30
	cmp r0, #1
	bne _0204BB2E
	add r0, r6, #0
	bl sub_02075E38
	cmp r0, #0
	beq _0204BB30
_0204BB18:
	ldr r0, [sp, #0x38]
	bl sub_0201D30C
	add r1, r0, #0
	add r0, r6, #0
	str r1, [sp, #0x38]
	bl sub_02075E38
	cmp r0, #0
	bne _0204BB18
	b _0204BB30
_0204BB2E:
	str r0, [sp, #0x38]
_0204BB30:
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl sub_020780C4
	add r0, r4, #0
	bl sub_02075D6C
	str r0, [sp, #0x34]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, sp, #0x34
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x24]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	add r1, r6, r0
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	ldr r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x34]
	bne _0204BC22
	bl sub_0201D2E8
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x46
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r6
	lsr r0, r0, #5
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x47
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x48
	add r2, sp, #0x38
	bl sub_02074B30
	bl sub_0201D2E8
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x49
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r6
	lsr r0, r0, #5
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #0x38
	bl sub_02074B30
_0204BC22:
	ldr r0, [r7, #0xc]
	bl sub_0202D79C
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC42
	mov r0, #0x49
	bl sub_02092444
	ldrb r1, [r5]
	strb r1, [r6, r0]
_0204BC42:
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC5A
	mov r0, #0x4a
	bl sub_02092444
	ldrb r1, [r5, #1]
	strb r1, [r6, r0]
_0204BC5A:
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC72
	mov r0, #0x4b
	bl sub_02092444
	ldrb r1, [r5, #2]
	strb r1, [r6, r0]
_0204BC72:
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC8A
	mov r0, #0x4c
	bl sub_02092444
	ldrb r1, [r5, #3]
	strb r1, [r6, r0]
_0204BC8A:
	add r0, r4, #0
	mov r1, #0x32
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCA2
	mov r0, #0x4d
	bl sub_02092444
	ldrb r1, [r5, #4]
	strb r1, [r6, r0]
_0204BCA2:
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCBA
	mov r0, #0x4e
	bl sub_02092444
	ldrb r1, [r5, #5]
	strb r1, [r6, r0]
_0204BCBA:
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCD2
	mov r0, #0x4f
	bl sub_02092444
	ldrb r1, [r5, #6]
	strb r1, [r6, r0]
_0204BCD2:
	add r0, r4, #0
	mov r1, #0x67
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCEA
	mov r0, #0x19
	bl sub_02092444
	ldrb r1, [r5, #7]
	strb r1, [r6, r0]
_0204BCEA:
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BD02
	mov r0, #0x1a
	bl sub_02092444
	ldrb r1, [r5, #8]
	strb r1, [r6, r0]
_0204BD02:
	add r0, r4, #0
	mov r1, #0x69
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BD1A
	mov r0, #0x1b
	bl sub_02092444
	ldrb r1, [r5, #9]
	strb r1, [r6, r0]
_0204BD1A:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0204BD72
	ldr r0, [sp, #0x10]
	mov r1, #0x20
	bl sub_02025F04
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02025F20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	str r0, [sp, #0x2c]
	mov r0, #0x20
	bl sub_02073C74
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020775EC
	ldr r0, [sp, #8]
	mov r1, #0x91
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #8]
	mov r1, #7
	add r2, sp, #0x30
	bl sub_02074B30
	ldr r0, [sp, #8]
	mov r1, #0x9d
	add r2, sp, #0x2c
	bl sub_02074B30
	add r0, r5, #0
	ldr r4, [sp, #8]
	bl sub_020237BC
_0204BD72:
	ldr r1, [sp, #4]
	mov r0, #2
	bl sub_02017070
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #4
	bl sub_0209304C
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _0204BDE8 ; =0x000001ED
	cmp r0, r1
	bne _0204BDBA
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0204BDBA
	ldr r0, [sp, #0xc]
	bl sub_0206B5F8
	cmp r0, #0
	bne _0204BDBA
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_0206B608
_0204BDBA:
	add r0, r4, #0
	bl sub_0207418C
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A048
	cmp r0, #0
	beq _0204BDD8
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	bl sub_0202F180
_0204BDD8:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0204BDE2
	bl sub_020181C4
_0204BDE2:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0204BDE8: .word 0x000001ED
	thumb_func_end sub_0204BAAC

	thumb_func_start sub_0204BDEC
sub_0204BDEC: ; 0x0204BDEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BE28 ; =0x0000017B
	strh r0, [r4]
	mov r0, #7
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #4
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200B578
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204BE28: .word 0x0000017B
	thumb_func_end sub_0204BDEC

	thumb_func_start sub_0204BE2C
sub_0204BE2C: ; 0x0204BE2C
	ldr r0, _0204BE38 ; =0x0000017B
	strh r0, [r1]
	mov r0, #4
	strh r0, [r2]
	bx lr
	nop
_0204BE38: .word 0x0000017B
	thumb_func_end sub_0204BE2C

	thumb_func_start sub_0204BE3C
sub_0204BE3C: ; 0x0204BE3C
	ldr r3, _0204BE40 ; =sub_0204BAAC
	bx r3
	; .align 2, 0
_0204BE40: .word sub_0204BAAC
	thumb_func_end sub_0204BE3C

	thumb_func_start sub_0204BE44
sub_0204BE44: ; 0x0204BE44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BE80 ; =0x0000017B
	strh r0, [r4]
	mov r0, #8
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #4
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200B538
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204BE80: .word 0x0000017B
	thumb_func_end sub_0204BE44

	thumb_func_start sub_0204BE84
sub_0204BE84: ; 0x0204BE84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204BE84

	thumb_func_start sub_0204BEAC
sub_0204BEAC: ; 0x0204BEAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204BEAC

	thumb_func_start sub_0204BED4
sub_0204BED4: ; 0x0204BED4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, _0204BF10 ; =0x0000017B
	strh r0, [r4]
	mov r0, #9
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, r7, #0
	bl sub_0200B70C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BF10: .word 0x0000017B
	thumb_func_end sub_0204BED4

	thumb_func_start sub_0204BF14
sub_0204BF14: ; 0x0204BF14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _0204BF44 ; =0x0000017B
	strh r0, [r4]
	mov r0, #5
	strh r0, [r6]
	ldr r0, [r5, #4]
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204BF44: .word 0x0000017B
	thumb_func_end sub_0204BF14

	thumb_func_start sub_0204BF48
sub_0204BF48: ; 0x0204BF48
	mov r0, #1
	bx lr
	thumb_func_end sub_0204BF48

	thumb_func_start sub_0204BF4C
sub_0204BF4C: ; 0x0204BF4C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202613C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204BF4C

	thumb_func_start sub_0204BF60
sub_0204BF60: ; 0x0204BF60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BFB4 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xa
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #0
	mov r1, #0x20
	bl sub_0202605C
	add r4, r0, #0
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BFB4: .word 0x0000017B
	thumb_func_end sub_0204BF60

	thumb_func_start sub_0204BFB8
sub_0204BFB8: ; 0x0204BFB8
	ldr r0, _0204BFC4 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204BFC4: .word 0x0000017B
	thumb_func_end sub_0204BFB8

	thumb_func_start sub_0204BFC8
sub_0204BFC8: ; 0x0204BFC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0xc8
	bge _0204BFDC
	mov r0, #1
	pop {r3, pc}
_0204BFDC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204BFC8

	thumb_func_start sub_0204BFE0
sub_0204BFE0: ; 0x0204BFE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020298B0
	ldr r1, [r4, #0]
	bl sub_0202895C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204BFE0

	thumb_func_start sub_0204BFF8
sub_0204BFF8: ; 0x0204BFF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r7, [r0, #0]
	ldr r0, _0204C030 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xb
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, r7, #0
	bl sub_0200BC80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C030: .word 0x0000017B
	thumb_func_end sub_0204BFF8

	thumb_func_start sub_0204C034
sub_0204C034: ; 0x0204C034
	ldr r0, _0204C040 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204C040: .word 0x0000017B
	thumb_func_end sub_0204C034

	thumb_func_start sub_0204C044
sub_0204C044: ; 0x0204C044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	ldr r4, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C05E
	cmp r0, #2
	beq _0204C06E
	cmp r0, #3
	beq _0204C072
	b _0204C076
_0204C05E:
	ldr r0, [r5, #0xc]
	bl sub_0202CA1C
	add r1, r4, #0
	mov r2, #1
	bl sub_0202CB70
	pop {r3, r4, r5, pc}
_0204C06E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204C072:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204C076:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C044

	thumb_func_start sub_0204C07C
sub_0204C07C: ; 0x0204C07C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	ldr r4, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C096
	cmp r0, #2
	beq _0204C0A6
	cmp r0, #3
	beq _0204C0BA
	pop {r3, r4, r5, pc}
_0204C096:
	ldr r0, [r5, #0xc]
	bl sub_0202CA1C
	add r1, r4, #0
	mov r2, #1
	bl sub_0202CAE0
	pop {r3, r4, r5, pc}
_0204C0A6:
	ldr r0, [r5, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	mov r2, #1
	bl sub_02029E2C
	pop {r3, r4, r5, pc}
_0204C0BA:
	ldr r0, [r5, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	bl sub_02029EFC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C07C

	thumb_func_start sub_0204C0CC
sub_0204C0CC: ; 0x0204C0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r2, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C0EC
	cmp r0, #2
	beq _0204C0F6
	cmp r0, #3
	beq _0204C100
	b _0204C108
_0204C0EC:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200BE64
	b _0204C108
_0204C0F6:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200BFAC
	b _0204C108
_0204C100:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200C01C
_0204C108:
	ldr r0, _0204C124 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xc
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C124: .word 0x0000017B
	thumb_func_end sub_0204C0CC

	thumb_func_start sub_0204C128
sub_0204C128: ; 0x0204C128
	ldr r0, _0204C134 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204C134: .word 0x0000017B
	thumb_func_end sub_0204C128

	thumb_func_start sub_0204C138
sub_0204C138: ; 0x0204C138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C158 ; =0x000001C6
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C158: .word 0x000001C6
	thumb_func_end sub_0204C138

	thumb_func_start sub_0204C15C
sub_0204C15C: ; 0x0204C15C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C18C ; =0x000001C6
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C18C: .word 0x000001C6
	thumb_func_end sub_0204C15C

	thumb_func_start sub_0204C190
sub_0204C190: ; 0x0204C190
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C1C4 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xe
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C1C8 ; =0x000001C6
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C1C4: .word 0x0000017B
_0204C1C8: .word 0x000001C6
	thumb_func_end sub_0204C190

	thumb_func_start sub_0204C1CC
sub_0204C1CC: ; 0x0204C1CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C1F8 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x4b
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C1F8: .word 0x0000017B
	thumb_func_end sub_0204C1CC

	thumb_func_start sub_0204C1FC
sub_0204C1FC: ; 0x0204C1FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	mov r1, #0x71
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C1FC

	thumb_func_start sub_0204C220
sub_0204C220: ; 0x0204C220
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #0x71
	add r4, r0, #0
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #1
	bl sub_0206B144
	add r0, r4, #0
	bl sub_0206B618
	cmp r0, #0
	bne _0204C262
	add r0, r4, #0
	mov r1, #1
	bl sub_0206B628
_0204C262:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C220

	thumb_func_start sub_0204C264
sub_0204C264: ; 0x0204C264
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C29C ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xf
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	mov r2, #0x71
	ldr r0, [r5, #4]
	mov r1, #1
	lsl r2, r2, #2
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C29C: .word 0x0000017B
	thumb_func_end sub_0204C264

	thumb_func_start sub_0204C2A0
sub_0204C2A0: ; 0x0204C2A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C2CC ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x49
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C2CC: .word 0x0000017B
	thumb_func_end sub_0204C2A0

	thumb_func_start sub_0204C2D0
sub_0204C2D0: ; 0x0204C2D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C2F0 ; =0x000001D3
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C2F0: .word 0x000001D3
	thumb_func_end sub_0204C2D0

	thumb_func_start sub_0204C2F4
sub_0204C2F4: ; 0x0204C2F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C324 ; =0x000001D3
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #3
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C324: .word 0x000001D3
	thumb_func_end sub_0204C2F4

	thumb_func_start sub_0204C328
sub_0204C328: ; 0x0204C328
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C35C ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x11
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C360 ; =0x000001D3
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C35C: .word 0x0000017B
_0204C360: .word 0x000001D3
	thumb_func_end sub_0204C328

	thumb_func_start sub_0204C364
sub_0204C364: ; 0x0204C364
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C390 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x58
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C390: .word 0x0000017B
	thumb_func_end sub_0204C364

	thumb_func_start sub_0204C394
sub_0204C394: ; 0x0204C394
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C3B4 ; =0x000001C7
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C3B4: .word 0x000001C7
	thumb_func_end sub_0204C394

	thumb_func_start sub_0204C3B8
sub_0204C3B8: ; 0x0204C3B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C3E8 ; =0x000001C7
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #2
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C3E8: .word 0x000001C7
	thumb_func_end sub_0204C3B8

	thumb_func_start sub_0204C3EC
sub_0204C3EC: ; 0x0204C3EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C420 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x10
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C424 ; =0x000001C7
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C420: .word 0x0000017B
_0204C424: .word 0x000001C7
	thumb_func_end sub_0204C3EC

	thumb_func_start sub_0204C428
sub_0204C428: ; 0x0204C428
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C454 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x4c
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C454: .word 0x0000017B
	thumb_func_end sub_0204C428

	thumb_func_start sub_0204C458
sub_0204C458: ; 0x0204C458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r0, r4, #0
	bl sub_020567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C458

	thumb_func_start sub_0204C474
sub_0204C474: ; 0x0204C474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020567F0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C474

	thumb_func_start sub_0204C494
sub_0204C494: ; 0x0204C494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204C4CC ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x13
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, [r7, #0]
	mov r1, #1
	bl sub_0200B928
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C4CC: .word 0x0000017B
	thumb_func_end sub_0204C494

	thumb_func_start sub_0204C4D0
sub_0204C4D0: ; 0x0204C4D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C4FC ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x14
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	nop
_0204C4FC: .word 0x0000017B
	thumb_func_end sub_0204C4D0

	thumb_func_start sub_0204C500
sub_0204C500: ; 0x0204C500
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	cmp r0, #0
	bne _0204C536
	add r0, r4, #0
	bl sub_0206AE6C
	add r5, #0x80
	ldr r0, [r5, #0]
	bl sub_020562F8
	b _0204C54E
_0204C536:
	cmp r0, #1
	bne _0204C54A
	add r0, r4, #0
	bl sub_0206AE7C
	add r5, #0x80
	ldr r0, [r5, #0]
	bl sub_02056328
	b _0204C54E
_0204C54A:
	bl sub_02022974
_0204C54E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C500

	thumb_func_start sub_0204C554
sub_0204C554: ; 0x0204C554
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024440
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202F028
	cmp r0, #6
	bne _0204C58C
	mov r0, #1
	b _0204C58E
_0204C58C:
	mov r0, #0
_0204C58E:
	strh r0, [r4]
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C554

	thumb_func_start sub_0204C59C
sub_0204C59C: ; 0x0204C59C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024440
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	str r0, [sp, #8]
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	mov r5, #0
_0204C5E0:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202F000
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_0209304C
	add r0, r4, #0
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_02079868
	cmp r0, #0
	bne _0204C610
	bl sub_02022974
_0204C610:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_0202F180
	add r5, r5, #1
	cmp r5, #6
	blt _0204C5E0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0202EF04
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204C59C

	thumb_func_start sub_0204C638
sub_0204C638: ; 0x0204C638
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	cmp r6, #3
	bhi _0204C6C4
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204C672: ; jump table
	.short _0204C67A - _0204C672 - 2 ; case 0
	.short _0204C686 - _0204C672 - 2 ; case 1
	.short _0204C692 - _0204C672 - 2 ; case 2
	.short _0204C69E - _0204C672 - 2 ; case 3
_0204C67A:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563D0
	strh r0, [r5]
	b _0204C6C4
_0204C686:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563E0
	strh r0, [r5]
	b _0204C6C4
_0204C692:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563F0
	strh r0, [r5]
	b _0204C6C4
_0204C69E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020563E0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020563D0
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl sub_020563F0
	add r0, r7, r0
	add r0, r6, r0
	strh r0, [r5]
_0204C6C4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C638

	thumb_func_start sub_0204C6C8
sub_0204C6C8: ; 0x0204C6C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x26
	bl sub_0203F098
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021DD020
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C6C8

	thumb_func_start sub_0204C718
sub_0204C718: ; 0x0204C718
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DD084
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204C718

	thumb_func_start sub_0204C730
sub_0204C730: ; 0x0204C730
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DD098
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204C730

	thumb_func_start sub_0204C750
sub_0204C750: ; 0x0204C750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202B5B4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C750

	thumb_func_start sub_0204C780
sub_0204C780: ; 0x0204C780
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202B5B8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C780

	thumb_func_start sub_0204C7AC
sub_0204C7AC: ; 0x0204C7AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202B5F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C7AC

	thumb_func_start sub_0204C7D8
sub_0204C7D8: ; 0x0204C7D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_0202B5F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C7D8

	thumb_func_start sub_0204C808
sub_0204C808: ; 0x0204C808
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	ldr r0, [r5, #0xc]
	bl sub_02025E50
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202B5B4
	cmp r0, r4
	bhs _0204C84C
	mov r0, #0
	b _0204C84E
_0204C84C:
	mov r0, #1
_0204C84E:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204C808

	thumb_func_start sub_0204C854
sub_0204C854: ; 0x0204C854
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02025E38
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldrh r5, [r0]
	add r0, r6, #0
	bl sub_0202B5B4
	cmp r0, r5
	bhs _0204C8A2
	mov r0, #0
	b _0204C8A4
_0204C8A2:
	mov r0, #1
_0204C8A4:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C854

	thumb_func_start sub_0204C8AC
sub_0204C8AC: ; 0x0204C8AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202B5D8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C8AC

	thumb_func_start sub_0204C8F0
sub_0204C8F0: ; 0x0204C8F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025F94
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C8F0

	thumb_func_start sub_0204C914
sub_0204C914: ; 0x0204C914
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025FB8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C914

	thumb_func_start sub_0204C938
sub_0204C938: ; 0x0204C938
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025FB8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C938

	thumb_func_start sub_0204C968
sub_0204C968: ; 0x0204C968
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F74
	cmp r0, r4
	bhs _0204C9A4
	mov r0, #0
	b _0204C9A6
_0204C9A4:
	mov r0, #1
_0204C9A6:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204C968

	thumb_func_start sub_0204C9AC
sub_0204C9AC: ; 0x0204C9AC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F74
	cmp r0, r4
	bhs _0204C9F2
	mov r0, #0
	b _0204C9F4
_0204C9F2:
	mov r0, #1
_0204C9F4:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C9AC

	thumb_func_start sub_0204C9FC
sub_0204C9FC: ; 0x0204C9FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x27
	bl sub_0203F098
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021DCEB0
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C9FC

	thumb_func_start sub_0204CA4C
sub_0204CA4C: ; 0x0204CA4C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x27
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DCF58
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204CA4C

	thumb_func_start sub_0204CA64
sub_0204CA64: ; 0x0204CA64
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x27
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DCF6C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CA64

	thumb_func_start sub_0204CA84
sub_0204CA84: ; 0x0204CA84
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r5, [r0, #0xc]
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026310
	ldr r1, [r4, #0]
	bl ov5_021E72BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204CA84

	thumb_func_start sub_0204CAA4
sub_0204CAA4: ; 0x0204CAA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl ov5_021E73C8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CAA4

	thumb_func_start sub_0204CAD4
sub_0204CAD4: ; 0x0204CAD4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	ldr r0, [r0, #0xc]
	bl sub_020245BC
	bl ov5_021E6B40
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204CAD4

	thumb_func_start sub_0204CAEC
sub_0204CAEC: ; 0x0204CAEC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #8
	ldr r0, [r5, #0xc]
	bl sub_020245BC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021E6EA8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204CAEC

	thumb_func_start sub_0204CB20
sub_0204CB20: ; 0x0204CB20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	ldr r6, [r5, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_020245BC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	lsl r3, r4, #0x18
	ldr r1, [r7, #0]
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov5_021E64F8
	ldr r1, [sp]
	strh r0, [r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CB20

	thumb_func_start sub_0204CB80
sub_0204CB80: ; 0x0204CB80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	ldr r5, [r5, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_020245BC
	lsl r1, r4, #0x18
	ldr r2, [r7, #0]
	lsr r1, r1, #0x18
	bl ov5_021E6630
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CB80

	thumb_func_start sub_0204CBD4
sub_0204CBD4: ; 0x0204CBD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r4, [r0, #0xc]
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	ldr r2, [r6, #0]
	add r1, r5, #0
	bl ov5_021E6640
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CBD4

	thumb_func_start sub_0204CC24
sub_0204CC24: ; 0x0204CC24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl ov5_021E73A0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CC24

	thumb_func_start sub_0204CC78
sub_0204CC78: ; 0x0204CC78
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	ldr r5, [r4, #0xc]
	bl sub_0203E838
	add r6, #0x80
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_020245BC
	lsl r1, r6, #0x18
	add r2, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r5, #0
	bl ov5_021E6358
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204CC78

	thumb_func_start sub_0204CCB8
sub_0204CCB8: ; 0x0204CCB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r5, [r0, #0xc]
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026310
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov5_021E7308
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204CCB8

	thumb_func_start sub_0204CD44
sub_0204CD44: ; 0x0204CD44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl ov5_021E7420
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CD44

	thumb_func_start sub_0204CD74
sub_0204CD74: ; 0x0204CD74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl sub_02026234
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CD74

	thumb_func_start sub_0204CDA4
sub_0204CDA4: ; 0x0204CDA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDA4

	thumb_func_start sub_0204CDBC
sub_0204CDBC: ; 0x0204CDBC
	mov r0, #0
	bx lr
	thumb_func_end sub_0204CDBC

	thumb_func_start sub_0204CDC0
sub_0204CDC0: ; 0x0204CDC0
	mov r0, #0
	bx lr
	thumb_func_end sub_0204CDC0

	thumb_func_start sub_0204CDC4
sub_0204CDC4: ; 0x0204CDC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDC4

	thumb_func_start sub_0204CDDC
sub_0204CDDC: ; 0x0204CDDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B218
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204CDDC

	thumb_func_start sub_0204CDF0
sub_0204CDF0: ; 0x0204CDF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B228
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDF0

	thumb_func_start sub_0204CE1C
sub_0204CE1C: ; 0x0204CE1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bhs _0204CE5A
	mov r0, #0
	b _0204CE9C
_0204CE5A:
	cmp r0, #0x1e
	bhs _0204CE62
	mov r0, #1
	b _0204CE9C
_0204CE62:
	cmp r0, #0x2d
	bhs _0204CE6A
	mov r0, #2
	b _0204CE9C
_0204CE6A:
	cmp r0, #0x3c
	bhs _0204CE72
	mov r0, #3
	b _0204CE9C
_0204CE72:
	cmp r0, #0x46
	bhs _0204CE7A
	mov r0, #4
	b _0204CE9C
_0204CE7A:
	cmp r0, #0x50
	bhs _0204CE82
	mov r0, #5
	b _0204CE9C
_0204CE82:
	cmp r0, #0x58
	bhs _0204CE8A
	mov r0, #6
	b _0204CE9C
_0204CE8A:
	cmp r0, #0x5d
	bhs _0204CE92
	mov r0, #7
	b _0204CE9C
_0204CE92:
	cmp r0, #0x62
	bhs _0204CE9A
	mov r0, #8
	b _0204CE9C
_0204CE9A:
	mov r0, #9
_0204CE9C:
	mov r2, #0x4b
	lsl r2, r2, #2
	cmp r4, r2
	bgt _0204CED4
	bge _0204CF44
	cmp r4, #0x36
	bgt _0204CEC4
	bge _0204CF3C
	cmp r4, #0x19
	bgt _0204CEB4
	beq _0204CF40
	b _0204CF48
_0204CEB4:
	cmp r4, #0x27
	bgt _0204CF48
	cmp r4, #0x23
	blt _0204CF48
	beq _0204CF40
	cmp r4, #0x27
	beq _0204CF44
	b _0204CF48
_0204CEC4:
	cmp r4, #0xff
	bgt _0204CECC
	beq _0204CF44
	b _0204CF48
_0204CECC:
	sub r2, #0xf
	cmp r4, r2
	beq _0204CF44
	b _0204CF48
_0204CED4:
	add r1, r2, #0
	add r1, #0x75
	cmp r4, r1
	bgt _0204CF18
	add r1, r2, #0
	add r1, #0x75
	cmp r4, r1
	bge _0204CF40
	add r1, r2, #0
	add r1, #0x57
	cmp r4, r1
	bgt _0204CEF4
	add r2, #0x57
	cmp r4, r2
	beq _0204CF38
	b _0204CF48
_0204CEF4:
	add r2, #0x58
	sub r1, r4, r2
	cmp r1, #7
	bhi _0204CF48
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204CF08: ; jump table
	.short _0204CF38 - _0204CF08 - 2 ; case 0
	.short _0204CF38 - _0204CF08 - 2 ; case 1
	.short _0204CF30 - _0204CF08 - 2 ; case 2
	.short _0204CF30 - _0204CF08 - 2 ; case 3
	.short _0204CF30 - _0204CF08 - 2 ; case 4
	.short _0204CF34 - _0204CF08 - 2 ; case 5
	.short _0204CF34 - _0204CF08 - 2 ; case 6
	.short _0204CF34 - _0204CF08 - 2 ; case 7
_0204CF18:
	ldr r1, _0204CF60 ; =0x000001AB
	cmp r4, r1
	bgt _0204CF28
	bge _0204CF3C
	sub r1, r1, #2
	cmp r4, r1
	beq _0204CF3C
	b _0204CF48
_0204CF28:
	add r1, #0xd
	cmp r4, r1
	beq _0204CF40
	b _0204CF48
_0204CF30:
	mov r2, #0
	b _0204CF4A
_0204CF34:
	mov r2, #1
	b _0204CF4A
_0204CF38:
	mov r2, #2
	b _0204CF4A
_0204CF3C:
	mov r2, #3
	b _0204CF4A
_0204CF40:
	mov r2, #4
	b _0204CF4A
_0204CF44:
	mov r2, #5
	b _0204CF4A
_0204CF48:
	mov r2, #0
_0204CF4A:
	add r3, r2, #0
	mov r1, #0x14
	mul r3, r1
	ldr r2, _0204CF64 ; =0x020EBF84
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204CF60: .word 0x000001AB
_0204CF64: .word 0x020EBF84
	thumb_func_end sub_0204CE1C

	thumb_func_start sub_0204CF68
sub_0204CF68: ; 0x0204CF68
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0xf
	and r0, r1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CF68

	thumb_func_start sub_0204CF8C
sub_0204CF8C: ; 0x0204CF8C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	cmp r5, #9
	bhs _0204CFBA
	mov r1, #0
	b _0204CFBC
_0204CFBA:
	mov r1, #1
_0204CFBC:
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CF8C

	thumb_func_start sub_0204CFC4
sub_0204CFC4: ; 0x0204CFC4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, _0204CFF8 ; =0x020EBF64
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204CFF8: .word 0x020EBF64
	thumb_func_end sub_0204CFC4

	thumb_func_start sub_0204CFFC
sub_0204CFFC: ; 0x0204CFFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r0, [sp, #0x10]
	lsl r3, r7, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #0xc]
	mov r0, #0xb
	lsr r3, r3, #0x18
	bl sub_020548B0
	strh r0, [r4]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CFFC

	thumb_func_start sub_0204D08C
sub_0204D08C: ; 0x0204D08C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldrh r1, [r6]
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D0E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	b _0204D0E2
_0204D0E0:
	mov r0, #0
_0204D0E2:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D08C

	thumb_func_start sub_0204D0E8
sub_0204D0E8: ; 0x0204D0E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldrh r1, [r6]
	bl sub_0207A0FC
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	bl sub_02025F20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	bne _0204D14C
	mov r0, #0
	b _0204D14E
_0204D14C:
	mov r0, #1
_0204D14E:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D0E8

	thumb_func_start sub_0204D154
sub_0204D154: ; 0x0204D154
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	bhs _0204D1D4
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #1
	add r1, r5, #0
	bl sub_02017070
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #1
	add r3, r7, #0
	bl ov5_021E6CF0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A048
	add r0, r4, #0
	bl sub_020181C4
_0204D1D4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D154

	thumb_func_start sub_0204D1DC
sub_0204D1DC: ; 0x0204D1DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02054988
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D1DC

	thumb_func_start sub_0204D234
sub_0204D234: ; 0x0204D234
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r2, #0
	mov r1, #0x4c
	add r4, r0, #0
	strh r2, [r6]
	bl sub_02074470
	cmp r0, #0
	beq _0204D296
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204D296:
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0204D2D2
_0204D2CE:
	mov r0, #1
	strh r0, [r6]
_0204D2D2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D234

	thumb_func_start sub_0204D2D8
sub_0204D2D8: ; 0x0204D2D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, _0204D390 ; =0x00000006
	ldr r0, [sp]
	ldr r6, _0204D394 ; =0x00000000
	strh r1, [r0]
	beq _0204D388
_0204D324:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D37E
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0204D37E
_0204D378:
	ldr r0, [sp]
	strh r6, [r0]
	b _0204D388
_0204D37E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r7
	blo _0204D324
_0204D388:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204D390: .word 0x00000006
_0204D394: .word 0x00000000
	thumb_func_end sub_0204D2D8

	thumb_func_start sub_0204D398
sub_0204D398: ; 0x0204D398
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	bl sub_02054B94
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D398

	thumb_func_start sub_0204D3DC
sub_0204D3DC: ; 0x0204D3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r4, #0
	ldr r0, [sp, #4]
	add r5, r4, #0
	strh r4, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _0204D466
_0204D42A:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D45A
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	cmp r0, r1
	bhi _0204D45A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0204D45A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _0204D42A
_0204D466:
	ldr r0, [sp, #4]
	strh r5, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D3DC

	thumb_func_start sub_0204D470
sub_0204D470: ; 0x0204D470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r2, #0
	mov r1, #0x4c
	add r5, r0, #0
	strh r2, [r4]
	bl sub_02074470
	cmp r0, #0
	bne _0204D4C6
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
_0204D4C6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204D470

	thumb_func_start sub_0204D4CC
sub_0204D4CC: ; 0x0204D4CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r6, #0x80
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, r0
	blt _0204D512
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_0204D512:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D532
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_0204D532:
	add r0, r5, #0
	bl sub_02075BCC
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204D4CC

	thumb_func_start sub_0204D540
sub_0204D540: ; 0x0204D540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, _0204D5C4 ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204D5C8 ; =0x00000000
	strh r1, [r0]
	beq _0204D5BE
_0204D588:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D5B4
	add r0, r4, #0
	bl sub_02075BCC
	ldr r1, [sp]
	cmp r1, r0
	bne _0204D5B4
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204D5BE
_0204D5B4:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204D588
_0204D5BE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204D5C4: .word 0x000000FF
_0204D5C8: .word 0x00000000
	thumb_func_end sub_0204D540

	thumb_func_start sub_0204D5CC
sub_0204D5CC: ; 0x0204D5CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D5CC

	thumb_func_start sub_0204D614
sub_0204D614: ; 0x0204D614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	ldr r1, [sp]
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	add r1, sp, #4
	strh r0, [r1]
	cmp r4, #0
	beq _0204D6C2
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0xb
	bl sub_0207CFF0
	cmp r0, #0x35
	bne _0204D69A
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D69A:
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _0204D6AE
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D6AE:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _0204D6C2
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D6C2:
	add r0, sp, #4
	ldrh r1, [r0]
	add r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0]
	cmp r1, #0xff
	bls _0204D6D4
	mov r1, #0xff
	strh r1, [r0]
_0204D6D4:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #4
	bl sub_02074B30
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D614

	thumb_func_start sub_0204D6E4
sub_0204D6E4: ; 0x0204D6E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r4, r0
	bls _0204D738
	mov r0, #0
	b _0204D73A
_0204D738:
	sub r0, r0, r4
_0204D73A:
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204D6E4

	thumb_func_start sub_0204D74C
sub_0204D74C: ; 0x0204D74C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, #0x13
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D74C

	thumb_func_start sub_0204D7AC
sub_0204D7AC: ; 0x0204D7AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E1B4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204D7AC

	thumb_func_start sub_0204D7D4
sub_0204D7D4: ; 0x0204D7D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D7D4

	thumb_func_start sub_0204D840
sub_0204D840: ; 0x0204D840
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204D840

	thumb_func_start sub_0204D86C
sub_0204D86C: ; 0x0204D86C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r7, #0
	ble _0204D8BA
_0204D89A:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D8B4
	add r4, r4, #1
_0204D8B4:
	add r5, r5, #1
	cmp r5, r7
	blt _0204D89A
_0204D8BA:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D86C

	thumb_func_start sub_0204D8C4
sub_0204D8C4: ; 0x0204D8C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r4, r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0204D940
_0204D908:
	ldr r0, [sp]
	cmp r5, r0
	beq _0204D938
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D938
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D938
	add r4, r4, #1
_0204D938:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _0204D908
_0204D940:
	ldr r0, [sp, #4]
	strh r4, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D8C4

	thumb_func_start sub_0204D94C
sub_0204D94C: ; 0x0204D94C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_02024420
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r4, r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0204D9B6
_0204D984:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D9AE
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D9AE
	add r4, r4, #1
_0204D9AE:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _0204D984
_0204D9B6:
	ldr r0, [sp, #4]
	bl sub_02079BEC
	add r1, r4, r0
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D94C

	thumb_func_start sub_0204D9C8
sub_0204D9C8: ; 0x0204D9C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r7, #0
	ble _0204DA16
_0204D9F6:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DA10
	add r4, r4, #1
_0204DA10:
	add r5, r5, #1
	cmp r5, r7
	blt _0204D9F6
_0204DA16:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D9C8

	thumb_func_start sub_0204DA20
sub_0204DA20: ; 0x0204DA20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r4, _0204DA80 ; =0x00000000
	ldr r0, [sp]
	strh r4, [r0]
	beq _0204DA7C
	mov r7, #0x9a
_0204DA52:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DA72
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	b _0204DA7C
_0204DA72:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _0204DA52
_0204DA7C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DA80: .word 0x00000000
	thumb_func_end sub_0204DA20

	thumb_func_start sub_0204DA84
sub_0204DA84: ; 0x0204DA84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DA84

	thumb_func_start sub_0204DACC
sub_0204DACC: ; 0x0204DACC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB1A
	mov r0, #0
	strh r0, [r5]
	pop {r4, r5, r6, pc}
_0204DB1A:
	mov r4, #0
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB30
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB30:
	add r0, r6, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB44
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB44:
	add r0, r6, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB58
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB58:
	add r0, r6, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB6C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB6C:
	strh r4, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204DACC

	thumb_func_start sub_0204DB74
sub_0204DB74: ; 0x0204DB74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_02077408
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DB74

	thumb_func_start sub_0204DBB8
sub_0204DBB8: ; 0x0204DBB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DBB8

	thumb_func_start sub_0204DC18
sub_0204DC18: ; 0x0204DC18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DC18

	thumb_func_start sub_0204DC60
sub_0204DC60: ; 0x0204DC60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204DC60

	thumb_func_start sub_0204DC98
sub_0204DC98: ; 0x0204DC98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r5, _0204DD24 ; =0x00000000
	ldr r0, [sp, #4]
	strh r5, [r0]
	beq _0204DD1E
_0204DCDE:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DD14
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204DD14
	ldr r0, [sp, #4]
	mov r1, #1
	strh r1, [r0]
	b _0204DD1E
_0204DD14:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204DCDE
_0204DD1E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DD24: .word 0x00000000
	thumb_func_end sub_0204DC98

	thumb_func_start sub_0204DD28
sub_0204DD28: ; 0x0204DD28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r3, #0
	add r7, r0, #0
	add r2, r3, #0
	add r1, sp, #0xc
_0204DD60:
	lsl r0, r3, #1
	strh r2, [r1, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _0204DD60
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r5, #0
	strh r5, [r6]
	ldr r0, [sp]
	cmp r0, #0
	bls _0204DDFA
	add r4, sp, #0xc
_0204DD8C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	cmp r0, #0
	bne _0204DDEE
	ldr r0, [sp, #8]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r7, #0
	bne _0204DDE4
	lsl r1, r5, #1
	strh r0, [r4, r1]
	mov r0, #0
	cmp r5, #0
	bls _0204DDEE
	ldrh r1, [r4, r1]
_0204DDC6:
	lsl r2, r0, #1
	ldrh r2, [r4, r2]
	cmp r2, r1
	bne _0204DDD8
	mov r0, #1
	strh r0, [r6]
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204DDD8:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	blo _0204DDC6
	b _0204DDEE
_0204DDE4:
	cmp r7, r0
	bne _0204DDEE
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_0204DDEE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	blo _0204DD8C
_0204DDFA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204DD28

	thumb_func_start sub_0204DE00
sub_0204DE00: ; 0x0204DE00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, _0204DE8C ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204DE90 ; =0x00000000
	strh r1, [r0]
	beq _0204DE86
_0204DE48:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DE7C
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204DE7C
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204DE86
_0204DE7C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204DE48
_0204DE86:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DE8C: .word 0x000000FF
_0204DE90: .word 0x00000000
	thumb_func_end sub_0204DE00

	thumb_func_start sub_0204DE94
sub_0204DE94: ; 0x0204DE94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
	add r7, r4, #0
_0204DED6:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DEF4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0204DEF4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x50
	blo _0204DED6
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DE94

	thumb_func_start sub_0204DF08
sub_0204DF08: ; 0x0204DF08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	add r4, #0x80
	lsr r6, r0, #0x10
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
_0204DF46:
	mov r5, #0
	cmp r6, #0
	bls _0204DF94
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0204DF52:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DF8A
	add r0, r7, #0
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DF8A
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	b _0204DF94
_0204DF8A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _0204DF52
_0204DF94:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #0x50
	blo _0204DF46
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DF08

	thumb_func_start sub_0204DFB0
sub_0204DFB0: ; 0x0204DFB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r5, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DFB0

	thumb_func_start sub_0204E01C
sub_0204E01C: ; 0x0204E01C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0
	bl sub_02074B30
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0xc]
	bl sub_0206DDB8
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204E01C

	thumb_func_start sub_0204E094
sub_0204E094: ; 0x0204E094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	add r4, #0x80
	lsr r6, r0, #0x10
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_0204E0D0:
	mov r5, #0
	cmp r6, #0
	bls _0204E110
_0204E0D6:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204E106
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204E106
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204E106:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _0204E0D6
_0204E110:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0x50
	blo _0204E0D0
	ldr r1, [sp]
	mov r0, #0
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E094

	thumb_func_start sub_0204E128
sub_0204E128: ; 0x0204E128
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E128

	thumb_func_start sub_0204E12C
sub_0204E12C: ; 0x0204E12C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, _0204E1C8 ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204E1CC ; =0x00000000
	strh r1, [r0]
	beq _0204E1C0
_0204E174:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204E1B6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204E1B6
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0204E1B6
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204E1C0
_0204E1B6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blo _0204E174
_0204E1C0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204E1C8: .word 0x000000FF
_0204E1CC: .word 0x00000000
	thumb_func_end sub_0204E12C

	thumb_func_start sub_0204E1D0
sub_0204E1D0: ; 0x0204E1D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	ldr r0, [sp]
	cmp r6, #0
	strh r4, [r0]
	ble _0204E23A
_0204E214:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _0204E234
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	b _0204E23A
_0204E234:
	add r4, r4, #1
	cmp r4, r6
	blt _0204E214
_0204E23A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204E1D0

	thumb_func_start sub_0204E240
sub_0204E240: ; 0x0204E240
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r4, #0
	ldr r7, _0204E288 ; =0x020EBFFC
	str r0, [sp]
	add r5, r4, #0
_0204E260:
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	lsl r1, r4, #2
	ldrh r1, [r7, r1]
	mov r2, #4
	bl sub_0207D730
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0204E260
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204E288: .word 0x020EBFFC
	thumb_func_end sub_0204E240

	thumb_func_start sub_0204E28C
sub_0204E28C: ; 0x0204E28C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	mov r5, #0
	ldr r2, _0204E2D8 ; =0x020EBFFC
	strh r5, [r4]
_0204E2B8:
	lsl r3, r5, #2
	ldrh r1, [r2, r3]
	cmp r0, r1
	bne _0204E2C8
	ldr r0, _0204E2DC ; =0x020EBFFE
	ldrh r0, [r0, r3]
	strh r0, [r4]
	b _0204E2D2
_0204E2C8:
	add r1, r5, #1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	cmp r5, #7
	blo _0204E2B8
_0204E2D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204E2D8: .word 0x020EBFFC
_0204E2DC: .word 0x020EBFFE
	thumb_func_end sub_0204E28C

	thumb_func_start sub_0204E2E0
sub_0204E2E0: ; 0x0204E2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r4, #0
	ldr r0, [sp, #8]
	add r5, r4, #0
	strh r4, [r0]
	ldr r0, [sp, #4]
	strh r4, [r0]
_0204E330:
	ldr r0, [r6, #0xc]
	lsl r7, r4, #2
	bl sub_0207D990
	ldr r1, _0204E36C ; =0x020EBFFC
	mov r2, #4
	ldrh r1, [r1, r7]
	bl sub_0207D730
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	cmp r5, r0
	blo _0204E35C
	ldr r0, _0204E36C ; =0x020EBFFC
	ldrh r1, [r0, r7]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	strh r4, [r0]
	b _0204E366
_0204E35C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0204E330
_0204E366:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204E36C: .word 0x020EBFFC
	thumb_func_end sub_0204E2E0

	thumb_func_start sub_0204E370
sub_0204E370: ; 0x0204E370
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E370

	thumb_func_start sub_0204E374
sub_0204E374: ; 0x0204E374
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E374

	thumb_func_start sub_0204E378
sub_0204E378: ; 0x0204E378
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, _0204E3C4 ; =0x020EC018
	lsl r2, r4, #2
	ldrh r1, [r1, r2]
	strh r1, [r6]
	ldr r1, _0204E3C8 ; =0x020EC01A
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204E3C4: .word 0x020EC018
_0204E3C8: .word 0x020EC01A
	thumb_func_end sub_0204E378

	thumb_func_start sub_0204E3CC
sub_0204E3CC: ; 0x0204E3CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02027520
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E3CC

	thumb_func_start sub_0204E3FC
sub_0204E3FC: ; 0x0204E3FC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027540
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E3FC

	thumb_func_start sub_0204E410
sub_0204E410: ; 0x0204E410
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	bl sub_0205EC40
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E410

	thumb_func_start sub_0204E440
sub_0204E440: ; 0x0204E440
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	mov r1, #1
	bl sub_0205EC54
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204E440

	thumb_func_start sub_0204E45C
sub_0204E45C: ; 0x0204E45C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	cmp r4, #8
	blo _0204E48E
	bl sub_02022974
_0204E48E:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r4, #0
	bl sub_02025F34
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204E45C

	thumb_func_start sub_0204E4A4
sub_0204E4A4: ; 0x0204E4A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	cmp r4, #8
	blo _0204E4C2
	bl sub_02022974
_0204E4C2:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r4, #0
	bl sub_02025F48
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E4A4

	thumb_func_start sub_0204E4D8
sub_0204E4D8: ; 0x0204E4D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A938
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E4D8

	thumb_func_start sub_0204E504
sub_0204E504: ; 0x0204E504
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r4, #0
	ldr r7, _0204E550 ; =0x020EC064
	str r0, [sp]
	add r5, r4, #0
_0204E520:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	ldrb r1, [r7, r4]
	bl sub_02025F34
	cmp r0, #1
	bne _0204E53C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0204E53C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0204E520
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204E550: .word 0x020EC064
	thumb_func_end sub_0204E504

	thumb_func_start sub_0204E554
sub_0204E554: ; 0x0204E554
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A92C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E554

	thumb_func_start sub_0204E568
sub_0204E568: ; 0x0204E568
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E568

	thumb_func_start sub_0204E594
sub_0204E594: ; 0x0204E594
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A964
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E594

	thumb_func_start sub_0204E5A8
sub_0204E5A8: ; 0x0204E5A8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5A8

	thumb_func_start sub_0204E5BC
sub_0204E5BC: ; 0x0204E5BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A9B4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E5BC

	thumb_func_start sub_0204E5E8
sub_0204E5E8: ; 0x0204E5E8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A994
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5E8

	thumb_func_start sub_0204E5FC
sub_0204E5FC: ; 0x0204E5FC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A9A4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5FC

	thumb_func_start sub_0204E610
sub_0204E610: ; 0x0204E610
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E610

	thumb_func_start sub_0204E63C
sub_0204E63C: ; 0x0204E63C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A944
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E63C

	thumb_func_start sub_0204E650
sub_0204E650: ; 0x0204E650
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E67E
	cmp r1, #1
	beq _0204E676
	cmp r1, #2
	beq _0204E686
	b _0204E6A4
_0204E676:
	mov r1, #1
	bl sub_0206AEAC
	b _0204E6A8
_0204E67E:
	mov r1, #0
	bl sub_0206AEAC
	b _0204E6A8
_0204E686:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_0206AEAC
	strh r0, [r5]
	b _0204E6A8
_0204E6A4:
	bl sub_02022974
_0204E6A8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204E650

	thumb_func_start sub_0204E6AC
sub_0204E6AC: ; 0x0204E6AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E6D8
	cmp r1, #1
	beq _0204E6D2
	cmp r1, #2
	beq _0204E6DE
	b _0204E6FA
_0204E6D2:
	bl sub_0206AEBC
	b _0204E6FE
_0204E6D8:
	bl sub_0206AECC
	b _0204E6FE
_0204E6DE:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206AEDC
	strh r0, [r5]
	b _0204E6FE
_0204E6FA:
	bl sub_02022974
_0204E6FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E6AC

	thumb_func_start sub_0204E704
sub_0204E704: ; 0x0204E704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E730
	cmp r1, #1
	beq _0204E72A
	cmp r1, #2
	beq _0204E736
	b _0204E752
_0204E72A:
	bl sub_0206AEEC
	b _0204E756
_0204E730:
	bl sub_0206AEFC
	b _0204E756
_0204E736:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206AF0C
	strh r0, [r5]
	b _0204E756
_0204E752:
	bl sub_02022974
_0204E756:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E704

	thumb_func_start sub_0204E75C
sub_0204E75C: ; 0x0204E75C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #4
	bl sub_0207D570
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E75C

	thumb_func_start sub_0204E7B4
sub_0204E7B4: ; 0x0204E7B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #4
	bl sub_0207D60C
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E7B4

	thumb_func_start sub_0204E80C
sub_0204E80C: ; 0x0204E80C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #4
	bl sub_0207D55C
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E80C

	thumb_func_start sub_0204E864
sub_0204E864: ; 0x0204E864
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0xb
	bl sub_0207D688
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E864

	thumb_func_start sub_0204E8BC
sub_0204E8BC: ; 0x0204E8BC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	mov r2, #0xb
	bl sub_0207D730
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204E8BC

	thumb_func_start sub_0204E900
sub_0204E900: ; 0x0204E900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205E060
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204E900

	thumb_func_start sub_0204E934
sub_0204E934: ; 0x0204E934
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xb
	bl sub_0207CFF0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204E934

	thumb_func_start sub_0204E96C
sub_0204E96C: ; 0x0204E96C
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E96C

	thumb_func_start sub_0204E970
sub_0204E970: ; 0x0204E970
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E970

	thumb_func_start sub_0204E974
sub_0204E974: ; 0x0204E974
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020298B0
	add r1, r6, #0
	bl sub_0202895C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204E974

	thumb_func_start sub_0204E9C8
sub_0204E9C8: ; 0x0204E9C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204E9C8

	thumb_func_start sub_0204EA04
sub_0204EA04: ; 0x0204EA04
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020298B0
	add r1, r6, #0
	bl sub_02028984
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204EA04

	thumb_func_start sub_0204EA58
sub_0204EA58: ; 0x0204EA58
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EA58

	thumb_func_start sub_0204EA94
sub_0204EA94: ; 0x0204EA94
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020298B0
	add r1, r6, #0
	bl sub_02028E84
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204EA94

	thumb_func_start sub_0204EAE8
sub_0204EAE8: ; 0x0204EAE8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EAE8

	thumb_func_start sub_0204EB24
sub_0204EB24: ; 0x0204EB24
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EB24

	thumb_func_start sub_0204EB60
sub_0204EB60: ; 0x0204EB60
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EB60

	thumb_func_start sub_0204EB9C
sub_0204EB9C: ; 0x0204EB9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r0, r4, #0
	bl sub_020298B0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204EB9C

	thumb_func_start sub_0204EBE4
sub_0204EBE4: ; 0x0204EBE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EBE4

	thumb_func_start sub_0204EC20
sub_0204EC20: ; 0x0204EC20
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EC20

	thumb_func_start sub_0204EC5C
sub_0204EC5C: ; 0x0204EC5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204EC5C

	thumb_func_start sub_0204EC98
sub_0204EC98: ; 0x0204EC98
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020298B0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02028CB0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204EC98

	thumb_func_start sub_0204ECF0
sub_0204ECF0: ; 0x0204ECF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204ECF0

	thumb_func_start sub_0204ED2C
sub_0204ED2C: ; 0x0204ED2C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204ED2C

	thumb_func_start sub_0204ED68
sub_0204ED68: ; 0x0204ED68
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204ED68

	thumb_func_start sub_0204EDA4
sub_0204EDA4: ; 0x0204EDA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	lsl r2, r4, #0x18
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	lsr r2, r2, #0x18
	bl sub_0203D6E4
	str r0, [r6, #0]
	ldr r1, _0204EDE8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0204EDE8: .word sub_02041D60
	thumb_func_end sub_0204EDA4

	thumb_func_start sub_0204EDEC
sub_0204EDEC: ; 0x0204EDEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0204EE18
	bl sub_02022974
_0204EE18:
	ldr r0, [r4, #0]
	bl sub_0203D750
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #4
	bne _0204EE2A
	mov r0, #0xff
	strh r0, [r5]
_0204EE2A:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EDEC

	thumb_func_start sub_0204EE38
sub_0204EE38: ; 0x0204EE38
	mov r0, #0
	bx lr
	thumb_func_end sub_0204EE38

	thumb_func_start sub_0204EE3C
sub_0204EE3C: ; 0x0204EE3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x20
	bl sub_020997D8
	add r5, r0, #0
	bl sub_020998D8
	strh r0, [r4]
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204EE3C

	thumb_func_start sub_0204EE90
sub_0204EE90: ; 0x0204EE90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	add r7, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0x13
	str r2, [sp]
	add r6, r3, #0
	bl sub_0203F098
	str r0, [sp, #4]
	mov r0, #0x20
	bl sub_020997B8
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r4, [r0, #0]
	ldr r0, [sp]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	add r0, r5, #0
	strb r7, [r4, #0x15]
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203E284
	ldr r1, _0204EEF8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204EEF8: .word sub_02041D60
	thumb_func_end sub_0204EE90

	thumb_func_start sub_0204EEFC
sub_0204EEFC: ; 0x0204EEFC
	mov r0, #1
	bx lr
	thumb_func_end sub_0204EEFC

	thumb_func_start sub_0204EF00
sub_0204EF00: ; 0x0204EF00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0x20
	bl sub_020997D8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0204EE90
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204EF00

	thumb_func_start sub_0204EF40
sub_0204EF40: ; 0x0204EF40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0x20
	mov r1, #4
	bl sub_02018144
	add r3, r0, #0
	ldr r0, _0204EF9C ; =0x0000FFFF
	strh r4, [r3]
	strh r0, [r3, #2]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0204EE90
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204EF9C: .word 0x0000FFFF
	thumb_func_end sub_0204EF40

	thumb_func_start sub_0204EFA0
sub_0204EFA0: ; 0x0204EFA0
	mov r0, #0
	bx lr
	thumb_func_end sub_0204EFA0

	thumb_func_start sub_0204EFA4
sub_0204EFA4: ; 0x0204EFA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0204EFCE
	bl sub_02022974
_0204EFCE:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0204EFD8
	mov r0, #0
	b _0204EFDA
_0204EFD8:
	mov r0, #0xff
_0204EFDA:
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020997D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EFA4

	thumb_func_start sub_0204EFE8
sub_0204EFE8: ; 0x0204EFE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0204F012
	bl sub_02022974
_0204F012:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0204F01C
	mov r0, #0
	b _0204F01E
_0204F01C:
	mov r0, #0xff
_0204F01E:
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020997D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EFE8

	thumb_func_start sub_0204F02C
sub_0204F02C: ; 0x0204F02C
	push {r3, lr}
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204F02C

	thumb_func_start sub_0204F038
sub_0204F038: ; 0x0204F038
	push {r3, lr}
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204F038

	thumb_func_start sub_0204F044
sub_0204F044: ; 0x0204F044
	mov r0, #0
	bx lr
	thumb_func_end sub_0204F044

	thumb_func_start sub_0204F048
sub_0204F048: ; 0x0204F048
	mov r0, #0
	bx lr
	thumb_func_end sub_0204F048

	thumb_func_start sub_0204F04C
sub_0204F04C: ; 0x0204F04C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020300F4
	mov r2, #0
	add r1, sp, #8
	strb r2, [r1]
	lsl r2, r5, #2
	add r2, r4, r2
	lsl r2, r2, #0x18
	mov r1, #0xa
	lsr r2, r2, #0x18
	add r3, sp, #8
	bl sub_020300B0
	cmp r4, #3
	bne _0204F0C8
	cmp r5, #0
	bne _0204F0A6
	mov r7, #0x66
	b _0204F0A8
_0204F0A6:
	mov r7, #0x68
_0204F0A8:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	str r0, [sp]
	add r0, r7, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
_0204F0C8:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E430
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E430
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	mov r3, #0
	bl sub_020306E4
	add r6, #0x80
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r6, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E488
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204F04C

	thumb_func_start sub_0204F13C
sub_0204F13C: ; 0x0204F13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02030114
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203026C
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0204F25A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204F1A8: ; jump table
	.short _0204F1B2 - _0204F1A8 - 2 ; case 0
	.short _0204F1C2 - _0204F1A8 - 2 ; case 1
	.short _0204F1FA - _0204F1A8 - 2 ; case 2
	.short _0204F22A - _0204F1A8 - 2 ; case 3
	.short _0204F23C - _0204F1A8 - 2 ; case 4
_0204F1B2:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	bl sub_0204F268
	strh r0, [r6]
	b _0204F262
_0204F1C2:
	cmp r5, #3
	bne _0204F1E6
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6a
	bl sub_02030698
	strh r0, [r6]
	b _0204F262
_0204F1E6:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_020302B4
	strh r0, [r6]
	b _0204F262
_0204F1FA:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E55C
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E55C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030698
	strh r0, [r6]
	b _0204F262
_0204F22A:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_0204FA50
	b _0204F262
_0204F23C:
	cmp r5, #0
	bne _0204F244
	mov r2, #0
	b _0204F24E
_0204F244:
	cmp r5, #1
	bne _0204F24C
	mov r2, #1
	b _0204F24E
_0204F24C:
	mov r2, #2
_0204F24E:
	ldr r0, [r4, #0x74]
	bl sub_0204F470
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0204F25A:
	bl sub_02022974
	mov r0, #0
	strh r0, [r6]
_0204F262:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204F13C

	thumb_func_start sub_0204F268
sub_0204F268: ; 0x0204F268
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	add r0, r1, #0
	bl sub_0207A268
	str r0, [sp, #4]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	bge _0204F28A
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0204F28A:
	mov r2, #0
	add r5, r2, #0
	add r1, sp, #0x10
_0204F290:
	lsl r0, r2, #1
	strh r5, [r1, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #6
	blo _0204F290
	str r5, [sp, #0xc]
	cmp r4, #0
	bls _0204F302
_0204F2A4:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204F2F8
	ldr r0, [sp, #8]
	cmp r0, #0x1e
	blo _0204F2F8
	add r0, r6, #0
	bl sub_02078804
	cmp r0, #1
	beq _0204F2F8
	ldr r0, [sp, #0xc]
	lsl r1, r5, #1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	strh r6, [r0, r1]
_0204F2F8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r4
	blo _0204F2A4
_0204F302:
	ldr r0, [sp]
	cmp r0, #2
	bne _0204F34C
	mov r3, #0
	cmp r4, #0
	bls _0204F346
	add r1, sp, #0x10
	add r2, r3, #0
_0204F312:
	add r5, r2, #0
	cmp r4, #0
	bls _0204F33C
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
_0204F31C:
	cmp r3, r5
	beq _0204F332
	cmp r0, #0
	beq _0204F332
	lsl r6, r5, #1
	ldrh r6, [r1, r6]
	cmp r0, r6
	bne _0204F332
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204F332:
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	cmp r5, r4
	blo _0204F31C
_0204F33C:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r4
	blo _0204F312
_0204F346:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0204F34C:
	ldr r1, [sp, #0xc]
	cmp r1, r0
	blt _0204F358
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204F358:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204F268

	thumb_func_start sub_0204F360
sub_0204F360: ; 0x0204F360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203026C
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_0204FA50
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F360

	thumb_func_start sub_0204F398
sub_0204F398: ; 0x0204F398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0204F3D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F398

	thumb_func_start sub_0204F3D0
sub_0204F3D0: ; 0x0204F3D0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0xc
	add r6, r2, #0
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
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	strh r5, [r4, #4]
	str r6, [r4, #8]
	bl sub_02099514
	ldr r1, _0204F410 ; =sub_0204F414
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F410: .word sub_0204F414
	thumb_func_end sub_0204F3D0

	thumb_func_start sub_0204F414
sub_0204F414: ; 0x0204F414
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0204F42C
	cmp r1, #1
	beq _0204F442
	cmp r1, #2
	beq _0204F462
	b _0204F46A
_0204F42C:
	mov r0, #0x84
	add r1, r4, #0
	mov r2, #0xc
	bl sub_020359DC
	cmp r0, #1
	bne _0204F46A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204F46A
_0204F442:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _0204F46A
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bne _0204F454
	mov r1, #0
	b _0204F456
_0204F454:
	mov r1, #1
_0204F456:
	ldr r0, [r4, #8]
	strh r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204F46A
_0204F462:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0204F46A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204F414

	thumb_func_start sub_0204F470
sub_0204F470: ; 0x0204F470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	strb r6, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r7, #0x10]
	ldr r1, _0204F4A0 ; =sub_0204F4A4
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204F4A0: .word sub_0204F4A4
	thumb_func_end sub_0204F470

	thumb_func_start sub_0204F4A4
sub_0204F4A4: ; 0x0204F4A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _0204F506
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204F4C8: ; jump table
	.short _0204F4D2 - _0204F4C8 - 2 ; case 0
	.short _0204F4DE - _0204F4C8 - 2 ; case 1
	.short _0204F4E8 - _0204F4C8 - 2 ; case 2
	.short _0204F4F4 - _0204F4C8 - 2 ; case 3
	.short _0204F4FE - _0204F4C8 - 2 ; case 4
_0204F4D2:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204F50C
	str r0, [r4, #0]
	b _0204F506
_0204F4DE:
	add r1, r5, #0
	bl sub_0204F5D8
	str r0, [r4, #0]
	b _0204F506
_0204F4E8:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204F628
	str r0, [r4, #0]
	b _0204F506
_0204F4F4:
	add r1, r5, #0
	bl sub_0204F6B0
	str r0, [r4, #0]
	b _0204F506
_0204F4FE:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204F506:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F4A4

	thumb_func_start sub_0204F50C
sub_0204F50C: ; 0x0204F50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020C4BB8
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x16
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_0204F560:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #2
	blo _0204F560
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #1
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x10
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #1
	bne _0204F5C2
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_0204F5C2:
	ldr r1, _0204F5D4 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #8]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F5D4: .word 0x020F1E88
	thumb_func_end sub_0204F50C

	thumb_func_start sub_0204F5D8
sub_0204F5D8: ; 0x0204F5D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204F5EA
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204F5EA:
	ldr r0, [r5, #8]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0204F600
	cmp r0, #7
	bne _0204F604
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204F600:
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204F604:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #2
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204F5D8

	thumb_func_start sub_0204F628
sub_0204F628: ; 0x0204F628
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0204F6A8 ; =0x020EC06C
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0204F6AC ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #8]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F6A8: .word 0x020EC06C
_0204F6AC: .word 0x020F410C
	thumb_func_end sub_0204F628

	thumb_func_start sub_0204F6B0
sub_0204F6B0: ; 0x0204F6B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204F6C2
	mov r0, #3
	pop {r4, pc}
_0204F6C2:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204F6B0

	thumb_func_start sub_0204F6D8
sub_0204F6D8: ; 0x0204F6D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #8]
	add r0, #0x80
	ldr r7, [r0, #0]
	mov r1, #0xf
	add r0, r7, #0
	bl sub_0203F098
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	str r1, [r0, #8]
	ldrb r0, [r2]
	add r2, r1, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	str r2, [r0, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	str r1, [r0, #8]
	ldrb r0, [r2]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r7, #0xc]
	mov r4, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0204F758
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	strh r0, [r1]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0204F758:
	ldr r0, [r7, #0xc]
	mov r1, #0x20
	add r2, sp, #0x2c
	bl sub_020308A0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0204F782
	add r6, r4, #0
_0204F76C:
	ldr r0, [r7, #0xc]
	ldr r1, [sp, #0x28]
	mov r2, #0
	add r3, r6, #0
	bl sub_020308BC
	add r4, r4, r0
	ldr r0, _0204F8A0 ; =0x000001ED
	add r6, r6, #1
	cmp r6, r0
	blo _0204F76C
_0204F782:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0204F78C
	bl sub_020181C4
_0204F78C:
	add r0, r4, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_0200B60C
	ldrh r1, [r5]
	mov r6, #0
	add r7, r6, #0
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0x2f
	bhs _0204F7DA
	ldr r2, [sp, #0xc]
	ldr r0, _0204F8A4 ; =0x020EC078
	lsl r2, r2, #3
	add r0, r0, r2
_0204F7BC:
	ldr r2, [r0, #0]
	cmp r2, r4
	bhi _0204F7D2
	ldr r2, [r0, #4]
	add r7, r1, #0
	add r2, r6, r2
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	ldrh r2, [r5]
	add r2, r2, #1
	strh r2, [r5]
_0204F7D2:
	add r1, r1, #1
	add r0, #8
	cmp r1, #0x2f
	blo _0204F7BC
_0204F7DA:
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x44
	add r2, r6, #0
	bl sub_0202CF70
	cmp r6, #0
	beq _0204F808
	ldr r0, [sp, #8]
	add r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #5
	bl sub_0202D230
_0204F808:
	cmp r4, #0
	bne _0204F814
	ldr r0, [sp, #0x10]
	mov r1, #0
	strh r1, [r0]
	b _0204F83A
_0204F814:
	ldrh r1, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _0204F822
	mov r1, #1
	ldr r0, [sp, #0x10]
	b _0204F826
_0204F822:
	ldr r0, [sp, #0x10]
	mov r1, #2
_0204F826:
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0x2f
	blo _0204F83A
	ldr r0, [sp, #0x10]
	mov r1, #3
	strh r1, [r0]
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204F83A:
	ldr r0, _0204F8A4 ; =0x020EC078
	lsl r1, r7, #3
	ldr r4, [r0, r1]
	add r0, r4, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_0200B60C
	ldrh r0, [r5]
	lsl r1, r0, #3
	ldr r0, _0204F8A4 ; =0x020EC078
	ldr r0, [r0, r1]
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r2, [r5]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	lsl r4, r2, #3
	ldr r2, _0204F8A4 ; =0x020EC078
	ldr r0, [r0, #0]
	ldr r2, [r2, r4]
	bl sub_0200B60C
	add r0, r6, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F8A0: .word 0x000001ED
_0204F8A4: .word 0x020EC078
	thumb_func_end sub_0204F6D8

	thumb_func_start sub_0204F8A8
sub_0204F8A8: ; 0x0204F8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_020247C8
	cmp r0, #0
	bne _0204F8E0
	ldr r1, [sp]
	mov r0, #0
	strh r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204F8E0:
	ldr r0, [r5, #0xc]
	mov r1, #0x20
	add r2, sp, #8
	bl sub_020308A0
	add r7, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0204F8F8
	mov r0, #0
	str r0, [sp, #4]
	b _0204F936
_0204F8F8:
	mov r4, #0
_0204F8FA:
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_020308BC
	mov r1, #0
	add r6, r1, r0
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_020308BC
	add r6, r6, r0
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_020308BC
	add r0, r6, r0
	beq _0204F92E
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0204F92E:
	ldr r0, _0204F94C ; =0x000001ED
	add r4, r4, #1
	cmp r4, r0
	blo _0204F8FA
_0204F936:
	cmp r7, #0
	beq _0204F940
	add r0, r7, #0
	bl sub_020181C4
_0204F940:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F94C: .word 0x000001ED
	thumb_func_end sub_0204F8A8

	thumb_func_start sub_0204F950
sub_0204F950: ; 0x0204F950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	mov r4, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0204F986
	ldr r1, [sp]
	add r0, r4, #0
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0204F986:
	ldr r0, [r6, #0xc]
	mov r1, #0x20
	add r2, sp, #4
	bl sub_020308A0
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0204F9B0
	add r5, r4, #0
_0204F99A:
	ldr r0, [r6, #0xc]
	add r1, r7, #0
	mov r2, #0
	add r3, r5, #0
	bl sub_020308BC
	add r4, r4, r0
	ldr r0, _0204F9CC ; =0x000001ED
	add r5, r5, #1
	cmp r5, r0
	blo _0204F99A
_0204F9B0:
	cmp r7, #0
	beq _0204F9BA
	add r0, r7, #0
	bl sub_020181C4
_0204F9BA:
	ldr r0, _0204F9D0 ; =0x00002710
	cmp r4, r0
	bls _0204F9C2
	add r4, r0, #0
_0204F9C2:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F9CC: .word 0x000001ED
_0204F9D0: .word 0x00002710
	thumb_func_end sub_0204F950

	thumb_func_start sub_0204F9D4
sub_0204F9D4: ; 0x0204F9D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0
	bl sub_0205E55C
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xff
	bl sub_02030698
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r5, r0, #0
	mov r0, #0
	bl sub_0205E50C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xff
	bl sub_02030698
	mov r1, #0
	strh r1, [r4]
	cmp r0, #0x32
	bne _0204FA30
	mov r0, #1
	strh r0, [r4]
_0204FA30:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204F9D4

	thumb_func_start sub_0204FA34
sub_0204FA34: ; 0x0204FA34
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	bl sub_0203608C
	cmp r5, r0
	beq _0204FA4E
	ldrh r0, [r6, #4]
	strh r0, [r4, #6]
_0204FA4E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204FA34

	thumb_func_start sub_0204FA50
sub_0204FA50: ; 0x0204FA50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	add r0, sp, #4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #5
	add r4, r2, #0
	bl sub_02030280
	cmp r4, #3
	bne _0204FA88
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x6a
	mov r3, #0
	bl sub_020306E4
_0204FA88:
	add r0, r5, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205E50C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E50C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204FA50

	thumb_func_start sub_0204FAB4
sub_0204FAB4: ; 0x0204FAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020302DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203041C
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0204FBA4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204FB20: ; jump table
	.short _0204FB2A - _0204FB20 - 2 ; case 0
	.short _0204FB3C - _0204FB20 - 2 ; case 1
	.short _0204FBA4 - _0204FB20 - 2 ; case 2
	.short _0204FB74 - _0204FB20 - 2 ; case 3
	.short _0204FB86 - _0204FB20 - 2 ; case 4
_0204FB2A:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl sub_02049EC4
	strh r0, [r6]
	b _0204FBAC
_0204FB3C:
	cmp r5, #3
	bne _0204FB60
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6c
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6c
	bl sub_02030698
	strh r0, [r6]
	b _0204FBAC
_0204FB60:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #9
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_02030470
	strh r0, [r6]
	b _0204FBAC
_0204FB74:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_0204FBEC
	b _0204FBAC
_0204FB86:
	cmp r5, #0
	bne _0204FB8E
	mov r2, #0
	b _0204FB98
_0204FB8E:
	cmp r5, #1
	bne _0204FB96
	mov r2, #1
	b _0204FB98
_0204FB96:
	mov r2, #2
_0204FB98:
	ldr r0, [r4, #0x74]
	bl sub_0204FDB4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0204FBA4:
	bl sub_02022974
	mov r0, #0
	strh r0, [r6]
_0204FBAC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204FAB4

	thumb_func_start sub_0204FBB4
sub_0204FBB4: ; 0x0204FBB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203041C
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_0204FBEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204FBB4

	thumb_func_start sub_0204FBEC
sub_0204FBEC: ; 0x0204FBEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r3, #0
	add r0, sp, #8
	strb r3, [r0]
	add r0, sp, #8
	str r0, [sp]
	add r0, r1, #0
	mov r1, #9
	add r5, r2, #0
	bl sub_02030430
	cmp r5, #3
	bne _0204FC24
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6c
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6c
	mov r3, #0
	bl sub_020306E4
_0204FC24:
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205E5E0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E5E0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	mov r4, #0
_0204FC72:
	ldr r0, [sp, #4]
	bl sub_0203068C
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	bl sub_020306E4
	add r4, r4, #1
	cmp r4, #3
	blt _0204FC72
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204FBEC

	thumb_func_start sub_0204FCAC
sub_0204FCAC: ; 0x0204FCAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204FCF8
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204FCAC

	thumb_func_start sub_0204FCF8
sub_0204FCF8: ; 0x0204FCF8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0204FD12:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0204FD12
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	add r0, r4, #0
	str r7, [r4, #0xc]
	bl sub_02099514
	ldr r0, [sp]
	ldr r1, _0204FD34 ; =sub_0204FD38
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FD34: .word sub_0204FD38
	thumb_func_end sub_0204FCF8

	thumb_func_start sub_0204FD38
sub_0204FD38: ; 0x0204FD38
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0204FD50
	cmp r1, #1
	beq _0204FD66
	cmp r1, #2
	beq _0204FDA6
	b _0204FDAE
_0204FD50:
	mov r0, #0x85
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020359DC
	cmp r0, #1
	bne _0204FDAE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204FDAE
_0204FD66:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _0204FDAE
	ldr r0, [r4, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0204FD80
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _0204FD88
_0204FD80:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_0204FD88:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0204FD96
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _0204FD9E
_0204FD96:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
_0204FD9E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204FDAE
_0204FDA6:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0204FDAE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204FD38

	thumb_func_start sub_0204FDB4
sub_0204FDB4: ; 0x0204FDB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	strb r6, [r4, #4]
	str r5, [r4, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, _0204FDE4 ; =sub_0204FDE8
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FDE4: .word sub_0204FDE8
	thumb_func_end sub_0204FDB4

	thumb_func_start sub_0204FDE8
sub_0204FDE8: ; 0x0204FDE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _0204FE4A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204FE0C: ; jump table
	.short _0204FE16 - _0204FE0C - 2 ; case 0
	.short _0204FE22 - _0204FE0C - 2 ; case 1
	.short _0204FE2C - _0204FE0C - 2 ; case 2
	.short _0204FE38 - _0204FE0C - 2 ; case 3
	.short _0204FE42 - _0204FE0C - 2 ; case 4
_0204FE16:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204FE50
	str r0, [r4, #0]
	b _0204FE4A
_0204FE22:
	add r1, r5, #0
	bl sub_0204FF1C
	str r0, [r4, #0]
	b _0204FE4A
_0204FE2C:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204FF6C
	str r0, [r4, #0]
	b _0204FE4A
_0204FE38:
	add r1, r5, #0
	bl sub_0204FFF4
	str r0, [r4, #0]
	b _0204FE4A
_0204FE42:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204FE4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204FDE8

	thumb_func_start sub_0204FE50
sub_0204FE50: ; 0x0204FE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020C4BB8
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x17
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_0204FEA4:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #3
	blo _0204FEA4
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #3
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x30
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #2
	bne _0204FF06
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_0204FF06:
	ldr r1, _0204FF18 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0xc]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204FF18: .word 0x020F1E88
	thumb_func_end sub_0204FE50

	thumb_func_start sub_0204FF1C
sub_0204FF1C: ; 0x0204FF1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204FF2E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204FF2E:
	ldr r0, [r5, #0xc]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0204FF44
	cmp r0, #7
	bne _0204FF48
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204FF44:
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204FF48:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #3
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204FF1C

	thumb_func_start sub_0204FF6C
sub_0204FF6C: ; 0x0204FF6C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0204FFEC ; =0x020EC1F0
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0204FFF0 ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0xc]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204FFEC: .word 0x020EC1F0
_0204FFF0: .word 0x020F410C
	thumb_func_end sub_0204FF6C

	thumb_func_start sub_0204FFF4
sub_0204FFF4: ; 0x0204FFF4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02050006
	mov r0, #3
	pop {r4, pc}
_02050006:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #0xc]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204FFF4

	thumb_func_start sub_0205001C
sub_0205001C: ; 0x0205001C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #1]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	bl sub_0203608C
	cmp r6, r0
	beq _0205003A
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_0205003A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205001C

	thumb_func_start sub_0205003C
sub_0205003C: ; 0x0205003C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020304A0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020305B8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0205012C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020500A8: ; jump table
	.short _020500B2 - _020500A8 - 2 ; case 0
	.short _020500C4 - _020500A8 - 2 ; case 1
	.short _0205012C - _020500A8 - 2 ; case 2
	.short _020500FC - _020500A8 - 2 ; case 3
	.short _0205010E - _020500A8 - 2 ; case 4
_020500B2:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl sub_02049EC4
	strh r0, [r6]
	b _02050134
_020500C4:
	cmp r5, #3
	bne _020500E8
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6e
	bl sub_02030698
	strh r0, [r6]
	b _02050134
_020500E8:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #8
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_02030600
	strh r0, [r6]
	b _02050134
_020500FC:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_02050174
	b _02050134
_0205010E:
	cmp r5, #0
	bne _02050116
	mov r2, #0
	b _02050120
_02050116:
	cmp r5, #1
	bne _0205011E
	mov r2, #1
	b _02050120
_0205011E:
	mov r2, #2
_02050120:
	ldr r0, [r4, #0x74]
	bl sub_020502E0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205012C:
	bl sub_02022974
	mov r0, #0
	strh r0, [r6]
_02050134:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205003C

	thumb_func_start sub_0205013C
sub_0205013C: ; 0x0205013C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020305B8
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_02050174
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205013C

	thumb_func_start sub_02050174
sub_02050174: ; 0x02050174
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	add r0, sp, #4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #8
	add r4, r2, #0
	bl sub_020305CC
	cmp r4, #3
	bne _020501AC
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x6e
	mov r3, #0
	bl sub_020306E4
_020501AC:
	add r0, r5, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205E700
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E700
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02050174

	thumb_func_start sub_020501D8
sub_020501D8: ; 0x020501D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02050224
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020501D8

	thumb_func_start sub_02050224
sub_02050224: ; 0x02050224
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0205023E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0205023E
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	add r0, r4, #0
	str r7, [r4, #0xc]
	bl sub_02099514
	ldr r0, [sp]
	ldr r1, _02050260 ; =sub_02050264
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02050260: .word sub_02050264
	thumb_func_end sub_02050224

	thumb_func_start sub_02050264
sub_02050264: ; 0x02050264
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0205027C
	cmp r1, #1
	beq _02050292
	cmp r1, #2
	beq _020502D2
	b _020502DA
_0205027C:
	mov r0, #0x86
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020359DC
	cmp r0, #1
	bne _020502DA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020502DA
_02050292:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _020502DA
	ldr r0, [r4, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _020502AC
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _020502B4
_020502AC:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_020502B4:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _020502C2
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _020502CA
_020502C2:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
_020502CA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020502DA
_020502D2:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_020502DA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050264

	thumb_func_start sub_020502E0
sub_020502E0: ; 0x020502E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	strb r6, [r4, #4]
	str r5, [r4, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, _02050310 ; =sub_02050314
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02050310: .word sub_02050314
	thumb_func_end sub_020502E0

	thumb_func_start sub_02050314
sub_02050314: ; 0x02050314
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _02050376
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02050338: ; jump table
	.short _02050342 - _02050338 - 2 ; case 0
	.short _0205034E - _02050338 - 2 ; case 1
	.short _02050358 - _02050338 - 2 ; case 2
	.short _02050364 - _02050338 - 2 ; case 3
	.short _0205036E - _02050338 - 2 ; case 4
_02050342:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0205037C
	str r0, [r4, #0]
	b _02050376
_0205034E:
	add r1, r5, #0
	bl sub_02050448
	str r0, [r4, #0]
	b _02050376
_02050358:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_02050498
	str r0, [r4, #0]
	b _02050376
_02050364:
	add r1, r5, #0
	bl sub_02050520
	str r0, [r4, #0]
	b _02050376
_0205036E:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050376:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02050314

	thumb_func_start sub_0205037C
sub_0205037C: ; 0x0205037C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020C4BB8
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x17
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_020503D0:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #3
	blo _020503D0
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #3
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x30
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #2
	bne _02050432
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_02050432:
	ldr r1, _02050444 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0xc]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02050444: .word 0x020F1E88
	thumb_func_end sub_0205037C

	thumb_func_start sub_02050448
sub_02050448: ; 0x02050448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205045A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205045A:
	ldr r0, [r5, #0xc]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _02050470
	cmp r0, #7
	bne _02050474
	mov r0, #4
	pop {r3, r4, r5, pc}
_02050470:
	mov r0, #4
	pop {r3, r4, r5, pc}
_02050474:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #3
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02050448

	thumb_func_start sub_02050498
sub_02050498: ; 0x02050498
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _02050518 ; =0x020EC1FC
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0205051C ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0xc]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02050518: .word 0x020EC1FC
_0205051C: .word 0x020F410C
	thumb_func_end sub_02050498

	thumb_func_start sub_02050520
sub_02050520: ; 0x02050520
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02050532
	mov r0, #3
	pop {r4, pc}
_02050532:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #0xc]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050520

	thumb_func_start sub_02050548
sub_02050548: ; 0x02050548
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #1]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	bl sub_0203608C
	cmp r6, r0
	beq _02050566
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_02050566:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050548

	thumb_func_start sub_02050568
sub_02050568: ; 0x02050568
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #8]
	strb r0, [r2, #9]
	strb r0, [r2, #0xa]
	strb r0, [r2, #0xb]
	ldr r0, [r4, #0x10]
	ldr r1, _0205059C ; =sub_020505A0
	bl sub_02050944
	pop {r4, pc}
	nop
_0205059C: .word sub_020505A0
	thumb_func_end sub_02050568

	thumb_func_start sub_020505A0
sub_020505A0: ; 0x020505A0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldrb r1, [r4, #8]
	cmp r1, #0xb
	bls _020505C2
	b _02050730
_020505C2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020505CE: ; jump table
	.short _020505E6 - _020505CE - 2 ; case 0
	.short _0205060C - _020505CE - 2 ; case 1
	.short _0205061A - _020505CE - 2 ; case 2
	.short _02050642 - _020505CE - 2 ; case 3
	.short _02050650 - _020505CE - 2 ; case 4
	.short _02050688 - _020505CE - 2 ; case 5
	.short _02050698 - _020505CE - 2 ; case 6
	.short _020506C2 - _020505CE - 2 ; case 7
	.short _020506D0 - _020505CE - 2 ; case 8
	.short _020506F8 - _020505CE - 2 ; case 9
	.short _02050706 - _020505CE - 2 ; case 10
	.short _0205071C - _020505CE - 2 ; case 11
_020505E6:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	strh r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_02070428
	add r0, r6, #0
	bl sub_020558AC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205060C:
	add r0, r6, #0
	bl sub_02055820
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205061A:
	bl sub_0206AE0C
	mov r0, #0xac
	str r0, [sp, #0x24]
	sub r0, #0xad
	str r0, [sp, #0x28]
	ldr r0, _02050738 ; =0x0000034F
	add r1, sp, #0x24
	str r0, [sp, #0x2c]
	ldr r0, _0205073C ; =0x00000231
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x34]
	add r0, r6, #0
	bl sub_020539A0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050642:
	add r0, r6, #0
	bl sub_02055868
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050650:
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205074C
	add r0, r5, #0
	bl sub_0205075C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _02050740 ; =0x0000FFFF
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x11
	bl sub_02056B30
	ldr r0, _02050744 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050688:
	ldr r0, _02050748 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _02050730
	add r0, r1, #1
	strb r0, [r4, #8]
	b _02050730
_02050698:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _02050740 ; =0x0000FFFF
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x10
	bl sub_02056B30
	ldr r0, _02050744 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506C2:
	add r0, r6, #0
	bl sub_02055820
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506D0:
	bl sub_0206AE1C
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	mov r0, #0xa4
	str r0, [sp, #0x10]
	sub r0, #0xa5
	str r0, [sp, #0x14]
	mov r0, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x10
	bl sub_020539A0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506F8:
	add r0, r6, #0
	bl sub_02055868
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050706:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205074C
	add r0, r6, #0
	bl sub_020558F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205071C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02070428
	add sp, #0x38
	mov r0, #1
	pop {r4, r5, r6, pc}
_02050730:
	mov r0, #0
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_02050738: .word 0x0000034F
_0205073C: .word 0x00000231
_02050740: .word 0x0000FFFF
_02050744: .word 0x00000679
_02050748: .word 0x021BF67C
	thumb_func_end sub_020505A0

	thumb_func_start sub_0205074C
sub_0205074C: ; 0x0205074C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062D64
	pop {r4, pc}
	thumb_func_end sub_0205074C

	thumb_func_start sub_0205075C
sub_0205075C: ; 0x0205075C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _020507B0 ; =0x000008C1
	ldr r1, [r4, #0x24]
	bl sub_02020910
	ldr r0, _020507B4 ; =0x000F81B8
	ldr r1, [r4, #0x24]
	bl sub_02020A50
	ldr r0, _020507B8 ; =0x0350523D
	str r0, [sp, #8]
	ldr r0, _020507BC ; =0x0015EDB7
	str r0, [sp, #0xc]
	ldr r0, _020507C0 ; =0x023DA40E
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x24]
	add r0, sp, #8
	bl sub_02020ACC
	ldr r1, _020507C4 ; =0x00000823
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x52
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r4, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #3
	ldr r1, _020507C8 ; =0x0061C000
	ldr r2, [r4, #0x24]
	lsl r0, r0, #0xe
	bl sub_020206BC
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_020507B0: .word 0x000008C1
_020507B4: .word 0x000F81B8
_020507B8: .word 0x0350523D
_020507BC: .word 0x0015EDB7
_020507C0: .word 0x023DA40E
_020507C4: .word 0x00000823
_020507C8: .word 0x0061C000
	thumb_func_end sub_0205075C

	thumb_func_start sub_020507CC
sub_020507CC: ; 0x020507CC
	mov r0, #0xeb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_020507CC

	thumb_func_start sub_020507D4
sub_020507D4: ; 0x020507D4
	ldr r3, _020507E0 ; =sub_020D5124
	mov r2, #0xeb
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_020507E0: .word sub_020D5124
	thumb_func_end sub_020507D4

	thumb_func_start sub_020507E4
sub_020507E4: ; 0x020507E4
	ldr r3, _020507EC ; =sub_020245BC
	mov r1, #4
	bx r3
	nop
_020507EC: .word sub_020245BC
	thumb_func_end sub_020507E4

	thumb_func_start sub_020507F0
sub_020507F0: ; 0x020507F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _02050816
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1d
	ldrb r5, [r0]
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	mov r0, #1
	add r1, r3, r2
	add r2, r0, #0
	lsl r2, r1
	add r1, r5, #0
	tst r1, r2
	bne _02050818
_02050816:
	mov r0, #0
_02050818:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020507F0

	thumb_func_start sub_0205081C
sub_0205081C: ; 0x0205081C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _02050840
	lsr r5, r4, #0x1f
	lsl r3, r4, #0x1d
	sub r3, r3, r5
	mov r2, #0x1d
	ror r3, r2
	mov r6, #1
	add r2, r5, r3
	add r3, r6, #0
	ldrb r1, [r0]
	lsl r3, r2
	orr r1, r3
	strb r1, [r0]
_02050840:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205081C

	thumb_func_start sub_02050844
sub_02050844: ; 0x02050844
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _0205086C
	lsr r5, r4, #0x1f
	lsl r3, r4, #0x1d
	sub r3, r3, r5
	mov r2, #0x1d
	ror r3, r2
	mov r6, #1
	add r2, r5, r3
	add r3, r6, #0
	lsl r3, r2
	mov r2, #0xff
	ldrb r1, [r0]
	eor r2, r3
	and r1, r2
	strb r1, [r0]
_0205086C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02050844

	thumb_func_start sub_02050870
sub_02050870: ; 0x02050870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0205087C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205087C:
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r1, r0
	bhs _0205089C
	mov r0, #0x5b
	lsr r4, r1, #3
	lsl r0, r0, #2
	cmp r4, r0
	blt _02050892
	bl sub_02022974
_02050892:
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	add r0, r0, r4
	pop {r3, r4, r5, pc}
_0205089C:
	sub r1, r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r4, r0, #3
	cmp r4, #8
	blt _020508AE
	bl sub_02022974
_020508AE:
	ldr r0, _020508B4 ; =0x021C07F4
	add r0, r0, r4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020508B4: .word 0x021C07F4
	thumb_func_end sub_02050870

	thumb_func_start sub_020508B8
sub_020508B8: ; 0x020508B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xe
	sub r4, r1, r0
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r4, r0
	blt _020508CE
	bl sub_02022974
_020508CE:
	lsl r0, r4, #1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020508B8

	thumb_func_start sub_020508D4
sub_020508D4: ; 0x020508D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	add r1, r0, #0
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	str r6, [r4, #4]
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0x20
	mov r1, #4
	str r5, [r4, #0x18]
	bl sub_02018184
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020508D4

	thumb_func_start sub_02050904
sub_02050904: ; 0x02050904
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02050916
	bl sub_02022974
_02050916:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020508D4
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050904

	thumb_func_start sub_02050924
sub_02050924: ; 0x02050924
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r2, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02050938
	beq _02050942
_02050938:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
_02050942:
	pop {r4, pc}
	thumb_func_end sub_02050924

	thumb_func_start sub_02050944
sub_02050944: ; 0x02050944
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_020508D4
	str r4, [r0, #0]
	ldr r1, [r4, #0x18]
	str r0, [r1, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050944

	thumb_func_start sub_02050958
sub_02050958: ; 0x02050958
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02050966
	mov r0, #0
	pop {r3, r4, r5, pc}
_02050966:
	ldr r1, [r0, #4]
	blx r1
	cmp r0, #1
	bne _0205099E
_0205096E:
	ldr r0, [r5, #0x10]
	ldr r4, [r0, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0205097C
	bl sub_020181C4
_0205097C:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x1c]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	str r4, [r5, #0x10]
	cmp r4, #0
	bne _02050994
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050994:
	ldr r0, [r5, #0x10]
	ldr r1, [r0, #4]
	blx r1
	cmp r0, #1
	beq _0205096E
_0205099E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02050958

	thumb_func_start sub_020509A4
sub_020509A4: ; 0x020509A4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020509AE
	mov r0, #1
	bx lr
_020509AE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020509A4

	thumb_func_start sub_020509B4
sub_020509B4: ; 0x020509B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _020509CA
	add r0, r4, #0
	bl sub_0203CD74
	cmp r0, #0
	beq _020509CE
_020509CA:
	mov r0, #1
	pop {r4, pc}
_020509CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020509B4

	thumb_func_start sub_020509D4
sub_020509D4: ; 0x020509D4
	ldr r3, _020509D8 ; =sub_0203CD00
	bx r3
	; .align 2, 0
_020509D8: .word sub_0203CD00
	thumb_func_end sub_020509D4

	thumb_func_start sub_020509DC
sub_020509DC: ; 0x020509DC
	push {r3, lr}
	bl sub_0203CD5C
	cmp r0, #0
	beq _020509EA
	mov r0, #1
	pop {r3, pc}
_020509EA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020509DC

	thumb_func_start sub_020509F0
sub_020509F0: ; 0x020509F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050A0E
	cmp r0, #1
	beq _02050A20
	b _02050A34
_02050A0E:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_0203CD84
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050A34
_02050A20:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02050A34
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050A34:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020509F0

	thumb_func_start sub_02050A38
sub_02050A38: ; 0x02050A38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x20
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r5, [r2, #4]
	ldr r1, _02050A5C ; =sub_020509F0
	add r0, r6, #0
	str r4, [r2, #8]
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050A5C: .word sub_020509F0
	thumb_func_end sub_02050A38

	thumb_func_start sub_02050A60
sub_02050A60: ; 0x02050A60
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02050A60

	thumb_func_start sub_02050A64
sub_02050A64: ; 0x02050A64
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02050A64

	thumb_func_start sub_02050A68
sub_02050A68: ; 0x02050A68
	add r0, #8
	bx lr
	thumb_func_end sub_02050A68

	thumb_func_start sub_02050A6C
sub_02050A6C: ; 0x02050A6C
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02050A6C

	thumb_func_start sub_02050A74
sub_02050A74: ; 0x02050A74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050A9A
	cmp r0, #1
	beq _02050AAA
	b _02050AB8
_02050A9A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203D1D4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050AB8
_02050AAA:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02050AB8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02050AB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050A74

	thumb_func_start sub_02050ABC
sub_02050ABC: ; 0x02050ABC
	ldr r3, _02050AC4 ; =sub_02050944
	add r2, r1, #0
	ldr r1, _02050AC8 ; =sub_02050A74
	bx r3
	; .align 2, 0
_02050AC4: .word sub_02050944
_02050AC8: .word sub_02050A74
	thumb_func_end sub_02050ABC

	thumb_func_start sub_02050ACC
sub_02050ACC: ; 0x02050ACC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x14
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02018184
	str r4, [r0, #0]
	cmp r4, #0
	beq _02050AE8
	mov r1, #0
	str r1, [r4, #0]
_02050AE8:
	str r6, [r0, #4]
	str r7, [r0, #8]
	str r5, [r0, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02050ACC

	thumb_func_start sub_02050AF0
sub_02050AF0: ; 0x02050AF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020520A4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050AF0

	thumb_func_start sub_02050B04
sub_02050B04: ; 0x02050B04
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02050B10
	ldr r1, [r0, #0x10]
	ldr r1, [r1, #0x14]
	str r1, [r2, #0]
_02050B10:
	ldr r0, [r0, #0x10]
	ldr r3, _02050B18 ; =sub_02052868
	ldr r0, [r0, #0x14]
	bx r3
	; .align 2, 0
_02050B18: .word sub_02052868
	thumb_func_end sub_02050B04

	thumb_func_start sub_02050B1C
sub_02050B1C: ; 0x02050B1C
	push {r3, lr}
	mov r2, #2
	ldr r3, [r0, #0]
	lsl r2, r2, #0x1e
	tst r2, r3
	bne _02050B2C
	bl sub_020526E8
_02050B2C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02050B1C

	thumb_func_start sub_02050B30
sub_02050B30: ; 0x02050B30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _02050C46
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050B5C: ; jump table
	.short _02050B68 - _02050B5C - 2 ; case 0
	.short _02050B80 - _02050B5C - 2 ; case 1
	.short _02050B8E - _02050B5C - 2 ; case 2
	.short _02050B9E - _02050B5C - 2 ; case 3
	.short _02050C28 - _02050B5C - 2 ; case 4
	.short _02050C3C - _02050B5C - 2 ; case 5
_02050B68:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B80:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B8E:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B9E:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r2, [r5, #0x10]
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02050BBA
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _02050BBA
	cmp r1, #0x4a
	bne _02050BC8
_02050BBA:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r2, #0x14]
	add r0, r6, #0
	bl sub_0206D1B8
_02050BC8:
	add r0, r5, #0
	bl sub_02050B04
	cmp r0, #0
	bne _02050BDC
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050BDC:
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02050BF4
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_02097284
_02050BF4:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02051988
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	mov r1, #0x6d
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B48C
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050C28:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050C3C:
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050C46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050B30

	thumb_func_start sub_02050C4C
sub_02050C4C: ; 0x02050C4C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050C68 ; =sub_02050B30
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02050C68: .word sub_02050B30
	thumb_func_end sub_02050C4C

	thumb_func_start sub_02050C6C
sub_02050C6C: ; 0x02050C6C
	push {r3, lr}
	mov r2, #0xf
	and r0, r2
	cmp r0, #6
	bhi _02050CA4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050C82: ; jump table
	.short _02050CA4 - _02050C82 - 2 ; case 0
	.short _02050C90 - _02050C82 - 2 ; case 1
	.short _02050C9A - _02050C82 - 2 ; case 2
	.short _02050CA4 - _02050C82 - 2 ; case 3
	.short _02050CA4 - _02050C82 - 2 ; case 4
	.short _02050C9A - _02050C82 - 2 ; case 5
	.short _02050C90 - _02050C82 - 2 ; case 6
_02050C90:
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_020331B4
	pop {r3, pc}
_02050C9A:
	ldr r0, [r1, #0xc]
	sub r2, #0x10
	add r1, r2, #0
	bl sub_020331B4
_02050CA4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02050C6C

	thumb_func_start sub_02050CA8
sub_02050CA8: ; 0x02050CA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _02050D46
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050CD4: ; jump table
	.short _02050CE0 - _02050CD4 - 2 ; case 0
	.short _02050CF2 - _02050CD4 - 2 ; case 1
	.short _02050D00 - _02050CD4 - 2 ; case 2
	.short _02050D10 - _02050CD4 - 2 ; case 3
	.short _02050D3C - _02050CD4 - 2 ; case 4
	.short _02050D3C - _02050CD4 - 2 ; case 5
_02050CE0:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050CF2:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D00:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D10:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	ldr r0, [r0, #0x14]
	bl sub_02050C6C
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_02052754
	ldr r0, [r7, #0xc]
	bl sub_0202CD88
	mov r1, #0x15
	bl sub_0202CFEC
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D3C:
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050D46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050CA8

	thumb_func_start sub_02050D4C
sub_02050D4C: ; 0x02050D4C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050D76
	cmp r0, #1
	beq _02050D9A
	cmp r0, #2
	beq _02050DC0
	b _02050DCE
_02050D76:
	mov r0, #0
	bl sub_02004234
	ldr r1, [r5, #8]
	mov r0, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050DCE
_02050D9A:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	ldr r0, [r0, #0x14]
	bl sub_02050C6C
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02052754
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #0x15
	bl sub_0202CFEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050DCE
_02050DC0:
	add r0, r5, #0
	bl sub_02050AF0
	bl sub_0202F22C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050DCE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050D4C

	thumb_func_start sub_02050DD4
sub_02050DD4: ; 0x02050DD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x14
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02018184
	str r4, [r0, #0xc]
	cmp r4, #0
	beq _02050DF0
	mov r1, #0
	str r1, [r4, #0]
_02050DF0:
	str r6, [r0, #4]
	str r7, [r0, #8]
	str r5, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02050DD4

	thumb_func_start sub_02050DFC
sub_02050DFC: ; 0x02050DFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020520A4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050DFC

	thumb_func_start sub_02050E10
sub_02050E10: ; 0x02050E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	beq _02050E4A
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050E70 ; =sub_02051074
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
_02050E4A:
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050DD4
	add r2, r0, #0
	ldr r1, _02050E74 ; =sub_02050EE0
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050E70: .word sub_02051074
_02050E74: .word sub_02050EE0
	thumb_func_end sub_02050E10

	thumb_func_start sub_02050E78
sub_02050E78: ; 0x02050E78
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	beq _02050EB2
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050ED8 ; =sub_02051074
	add r0, r5, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
_02050EB2:
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050DD4
	add r2, r0, #0
	ldr r1, _02050EDC ; =sub_02050EE0
	add r0, r5, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050ED8: .word sub_02051074
_02050EDC: .word sub_02050EE0
	thumb_func_end sub_02050E78

	thumb_func_start sub_02050EE0
sub_02050EE0: ; 0x02050EE0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bls _02050EFA
	b _0205106A
_02050EFA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050F06: ; jump table
	.short _02050F14 - _02050F06 - 2 ; case 0
	.short _02050F38 - _02050F06 - 2 ; case 1
	.short _02050F46 - _02050F06 - 2 ; case 2
	.short _02050F56 - _02050F06 - 2 ; case 3
	.short _02051006 - _02050F06 - 2 ; case 4
	.short _0205101C - _02050F06 - 2 ; case 5
	.short _0205104C - _02050F06 - 2 ; case 6
_02050F14:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F38:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F46:
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F56:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02050B1C
	mov r1, #0x4d
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	bl sub_0206D1B8
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x14]
	bl sub_02052868
	cmp r0, #0
	bne _02050F96
	add r0, r4, #0
	bl sub_02050DFC
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	ldr r1, _02051070 ; =sub_02052B2C
	add r0, r6, #0
	mov r2, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, r5, r6, pc}
_02050F96:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02050FAE
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_02097284
_02050FAE:
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_020518B0
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02051988
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #0
	beq _02050FF8
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069798
	cmp r0, #0
	beq _02050FF0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _02050FF8
	cmp r0, #4
	beq _02050FF8
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	b _02050FF8
_02050FF0:
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
_02050FF8:
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02051006:
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl ov6_02246034
	add r0, r6, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_0205101C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #0
	beq _02051044
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl sub_020695C8
	add r0, r5, #0
	add r5, #0x94
	ldr r1, [r5, #0]
	bl sub_02069638
_02051044:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_0205104C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069690
	cmp r0, #0
	beq _0205106A
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_02050DFC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205106A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02051070: .word sub_02052B2C
	thumb_func_end sub_02050EE0

	thumb_func_start sub_02051074
sub_02051074: ; 0x02051074
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	str r0, [sp]
	ldr r0, [r4, #0]
	cmp r0, #7
	bls _020510A4
	b _020511F8
_020510A4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020510B0: ; jump table
	.short _020510C0 - _020510B0 - 2 ; case 0
	.short _020510E4 - _020510B0 - 2 ; case 1
	.short _020510F2 - _020510B0 - 2 ; case 2
	.short _02051102 - _020510B0 - 2 ; case 3
	.short _02051166 - _020510B0 - 2 ; case 4
	.short _02051174 - _020510B0 - 2 ; case 5
	.short _02051188 - _020510B0 - 2 ; case 6
	.short _020511EC - _020510B0 - 2 ; case 7
_020510C0:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020510E4:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020510F2:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051102:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _0205112C
	ldr r0, [r6, #0xc]
	bl sub_0202440C
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0206D018
_0205112C:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	bne _02051156
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	beq _02051156
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020539A0
_02051156:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02051988
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051166:
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051174:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051188:
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	bne _020511B4
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _020511A6
	mov r2, #0
	ldr r1, _02051200 ; =0x00002262
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020511E4
_020511A6:
	mov r2, #0
	ldr r1, _02051204 ; =0x00002269
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020511E4
_020511B4:
	ldr r0, [r6, #0xc]
	bl sub_02024420
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_020799A0
	cmp r0, #0x12
	bne _020511E4
	add r0, r5, #0
	bl sub_0207A0F8
	cmp r0, #6
	bne _020511E4
	mov r2, #0
	ldr r1, _02051208 ; =0x00002276
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
_020511E4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020511EC:
	add r0, r5, #0
	bl sub_02050AF0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020511F8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02051200: .word 0x00002262
_02051204: .word 0x00002269
_02051208: .word 0x00002276
	thumb_func_end sub_02051074

	thumb_func_start sub_0205120C
sub_0205120C: ; 0x0205120C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_02242034
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205120C

	thumb_func_start sub_02051270
sub_02051270: ; 0x02051270
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020512B8
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_020512B8:
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051270

	thumb_func_start sub_020512E4
sub_020512E4: ; 0x020512E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #0x6e
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02051340
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_02051340:
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020512E4

	thumb_func_start sub_0205136C
sub_0205136C: ; 0x0205136C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _0205144C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051398: ; jump table
	.short _020513A6 - _02051398 - 2 ; case 0
	.short _020513CA - _02051398 - 2 ; case 1
	.short _020513D8 - _02051398 - 2 ; case 2
	.short _020513E8 - _02051398 - 2 ; case 3
	.short _02051408 - _02051398 - 2 ; case 4
	.short _02051416 - _02051398 - 2 ; case 5
	.short _0205142A - _02051398 - 2 ; case 6
_020513A6:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513CA:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513D8:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513E8:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020563AC
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_02051408:
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_02051416:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_0205142A:
	add r0, r5, #0
	bl sub_02050AF0
	add r0, r6, #0
	bl sub_020563BC
	cmp r0, #0
	bne _02051448
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl sub_0203E918
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02051448:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205144C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205136C

	thumb_func_start sub_02051450
sub_02051450: ; 0x02051450
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _0205147C ; =sub_0205136C
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205147C: .word sub_0205136C
	thumb_func_end sub_02051450

	thumb_func_start sub_02051480
sub_02051480: ; 0x02051480
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r6, r1, #0
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #1
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	mov r0, #0x63
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r6, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_02079170
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r7, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051480

	thumb_func_start sub_020514E8
sub_020514E8: ; 0x020514E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _0205158A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02051514: ; jump table
	.short _02051522 - _02051514 - 2 ; case 0
	.short _0205153A - _02051514 - 2 ; case 1
	.short _02051548 - _02051514 - 2 ; case 2
	.short _02051558 - _02051514 - 2 ; case 3
	.short _0205155E - _02051514 - 2 ; case 4
	.short _0205156C - _02051514 - 2 ; case 5
	.short _02051580 - _02051514 - 2 ; case 6
_02051522:
	ldr r0, [r7, #0x38]
	bl sub_02062C48
	ldr r1, [r6, #4]
	ldr r2, [r6, #8]
	add r0, r5, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205153A:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051548:
	ldr r1, [r6, #0x10]
	add r0, r5, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051558:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205155E:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205156C:
	ldr r0, [r7, #0x38]
	bl sub_02062C78
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051580:
	add r0, r6, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205158A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020514E8

	thumb_func_start sub_02051590
sub_02051590: ; 0x02051590
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051F4C
	add r4, r0, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020515C8 ; =sub_020514E8
	add r0, r5, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_020515C8: .word sub_020514E8
	thumb_func_end sub_02051590

	thumb_func_start sub_020515CC
sub_020515CC: ; 0x020515CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #8]
	bl sub_02050A60
	add r6, r0, #0
	cmp r5, #0
	beq _020515F4
	cmp r7, r5
	beq _020515F4
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020515F0
	mov r4, #0x13
	b _020515FE
_020515F0:
	mov r4, #0x4b
	b _020515FE
_020515F4:
	cmp r7, r5
	bne _020515FC
	mov r4, #3
	b _020515FE
_020515FC:
	mov r4, #1
_020515FE:
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	add r1, r4, #0
	bl sub_02051D8C
	add r1, r6, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r0, [r6, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _02051678 ; =0x0000023D
	cmp r2, r0
	blt _02051638
	add r1, r0, #0
	add r1, #0xa
	cmp r2, r1
	bgt _02051638
	add r1, r0, #0
	sub r1, #0xb1
	ldr r2, [r4, r1]
	mov r1, #0x80
	orr r1, r2
	sub r0, #0xb1
	str r1, [r4, r0]
_02051638:
	str r7, [r4, #0x1c]
	ldr r0, [sp, #8]
	str r5, [r4, #0x24]
	str r0, [r4, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	bl sub_02079170
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02051678: .word 0x0000023D
	thumb_func_end sub_020515CC

	thumb_func_start sub_0205167C
sub_0205167C: ; 0x0205167C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	add r6, r0, #0
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02051D8C
	add r5, r0, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020526CC
	add r0, r5, #0
	bl sub_02051C00
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020516C4 ; =sub_02050CA8
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020516C4: .word sub_02050CA8
	thumb_func_end sub_0205167C

	thumb_func_start sub_020516C8
sub_020516C8: ; 0x020516C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020261B0
	mov r1, #8
	tst r1, r4
	beq _020516DA
	mov r1, #0xe
	b _020516E6
_020516DA:
	mov r1, #2
	tst r1, r4
	beq _020516E4
	mov r1, #7
	b _020516E6
_020516E4:
	mov r1, #0
_020516E6:
	cmp r0, #0xff
	beq _020516EE
	add r0, r0, #1
	add r1, r1, r0
_020516EE:
	add r0, r1, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020516C8

	thumb_func_start sub_020516F4
sub_020516F4: ; 0x020516F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02050A60
	add r6, r0, #0
	cmp r4, #0
	bne _02051718
	mov r0, #0xb
	mov r1, #5
	bl sub_02051D8C
	add r4, r0, #0
	mov r5, #0
	b _02051746
_02051718:
	cmp r4, #1
	bne _0205172A
	mov r0, #0xb
	mov r1, #7
	bl sub_02051D8C
	add r4, r0, #0
	mov r5, #7
	b _02051746
_0205172A:
	mov r0, #0xb
	mov r1, #0x8f
	bl sub_02051D8C
	add r4, r0, #0
	mov r1, #1
	str r1, [r4, #0x1c]
	mov r1, #2
	str r1, [r4, #0x24]
	ldr r1, [r6, #0xc]
	mov r2, #0xb
	bl sub_02079170
	mov r5, #0xe
_02051746:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02052348
	ldr r0, [r6, #0xc]
	mov r1, #0xb
	add r2, sp, #8
	bl sub_0202F1F8
	ldr r0, _02051788 ; =0x000001B2
	strb r5, [r4, r0]
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, _0205178C ; =sub_02050D4C
	str r7, [r2, #0xc]
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02051788: .word 0x000001B2
_0205178C: .word sub_02050D4C
	thumb_func_end sub_020516F4

	thumb_func_start sub_02051790
sub_02051790: ; 0x02051790
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020517B6
	cmp r0, #1
	beq _020517C8
	b _020517DE
_020517B6:
	ldr r1, _020517E4 ; =sub_02050CA8
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020517DE
_020517C8:
	bl sub_0202F250
	cmp r0, #1
	bne _020517D4
	bl sub_0202F22C
_020517D4:
	add r0, r6, #0
	bl sub_020597B4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020517DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020517E4: .word sub_02050CA8
	thumb_func_end sub_02051790

	thumb_func_start sub_020517E8
sub_020517E8: ; 0x020517E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r7, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_020526CC
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202F1F8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_020516C8
	ldr r1, _02051844 ; =0x000001B2
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02051848 ; =sub_02051790
	add r0, r5, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02051844: .word 0x000001B2
_02051848: .word sub_02051790
	thumb_func_end sub_020517E8

	thumb_func_start sub_0205184C
sub_0205184C: ; 0x0205184C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r7, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_020524E4
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202F1F8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_020516C8
	ldr r1, _020518A8 ; =0x000001B2
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020518AC ; =sub_02051790
	add r0, r5, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020518A8: .word 0x000001B2
_020518AC: .word sub_02051790
	thumb_func_end sub_0205184C

	thumb_func_start sub_020518B0
sub_020518B0: ; 0x020518B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	mov r3, #4
	ldr r2, [r1, #0x14]
	tst r3, r0
	bne _02051984
	mov r3, #0x80
	add r5, r0, #0
	tst r5, r3
	bne _02051984
	cmp r0, #0
	beq _020518D4
	add r3, #0x80
	cmp r0, r3
	beq _020518D4
	cmp r0, #0x4a
	bne _02051920
_020518D4:
	cmp r2, #1
	bne _020518E6
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_020518E6:
	cmp r2, #4
	bne _02051984
	ldr r0, [r1, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	mov r0, #0
	bl sub_0207A294
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _02051914
	bl sub_0202CD88
	mov r1, #9
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_02051914:
	bl sub_0202CD88
	mov r1, #0xa
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_02051920:
	mov r3, #1
	tst r3, r0
	bne _0205192C
	mov r3, #0x10
	tst r3, r0
	beq _0205193E
_0205192C:
	cmp r2, #1
	bne _02051984
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0xb
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_0205193E:
	mov r3, #0x20
	add r5, r0, #0
	tst r5, r3
	bne _0205194C
	lsl r3, r3, #4
	tst r0, r3
	beq _02051984
_0205194C:
	cmp r2, #4
	bne _02051984
	ldr r0, [r1, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	mov r0, #0
	bl sub_0207A294
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _0205197A
	bl sub_0202CD88
	mov r1, #9
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_0205197A:
	bl sub_0202CD88
	mov r1, #0xa
	bl sub_0202CFEC
_02051984:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020518B0

	thumb_func_start sub_02051988
sub_02051988: ; 0x02051988
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #4
	ldr r1, [r4, #0x14]
	tst r2, r0
	bne _020519A8
	mov r3, #0x80
	add r2, r0, #0
	tst r2, r3
	bne _020519A8
	lsl r2, r3, #2
	tst r2, r0
	beq _020519AA
_020519A8:
	b _02051AB8
_020519AA:
	cmp r0, #0
	beq _020519BC
	add r3, #0x80
	cmp r0, r3
	beq _020519BC
	cmp r0, #0x4a
	beq _020519BC
	cmp r0, #0x20
	bne _02051A8E
_020519BC:
	cmp r1, #1
	bne _02051A2C
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x7a
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #5
	blo _02051AB8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E5C
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r3, #0xb
	str r3, [sp]
	lsl r3, r3, #5
	ldr r3, [r4, r3]
	lsl r1, r7, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202BECC
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_0202B758
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02051A2C:
	cmp r1, #4
	bne _02051AB8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E5C
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r3, #0xb
	str r3, [sp]
	lsl r3, r3, #5
	ldr r3, [r4, r3]
	lsl r1, r7, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202BE4C
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_0202B758
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02051A8E:
	mov r2, #1
	tst r2, r0
	bne _02051A9A
	mov r2, #0x10
	tst r0, r2
	beq _02051AB8
_02051A9A:
	cmp r1, #1
	bne _02051AB8
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	ldr r2, [r4, #0x1c]
	add r0, #0x9c
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xb
	bl sub_0202C720
_02051AB8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051988

	thumb_func_start sub_02051ABC
sub_02051ABC: ; 0x02051ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	bl sub_02077A64
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02051B10
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_02051B10:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0xc0
	orr r2, r1
	str r2, [r4, r0]
	mov r0, #0x17
	add r1, #0x94
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02051ABC

	thumb_func_start sub_02051B50
sub_02051B50: ; 0x02051B50
	push {r4, lr}
	add r2, r0, #0
	ldr r4, [r2, #0]
	mov r0, #1
	tst r0, r4
	beq _02051BA0
	add r2, #0x5d
	ldrb r0, [r2]
	bl sub_02051C20
	mov r1, #0x80
	tst r1, r4
	beq _02051B7C
	cmp r0, #0x1f
	beq _02051BB8
	mov r0, #2
	tst r0, r4
	beq _02051B78
	mov r0, #0x1d
	pop {r4, pc}
_02051B78:
	mov r0, #0x1b
	pop {r4, pc}
_02051B7C:
	add r1, r0, #0
	sub r1, #0x18
	cmp r1, #2
	bls _02051BB8
	mov r1, #2
	tst r1, r4
	beq _02051B96
	cmp r0, #7
	bne _02051B92
	mov r0, #0x20
	pop {r4, pc}
_02051B92:
	mov r0, #0x1d
	pop {r4, pc}
_02051B96:
	mov r1, #4
	tst r1, r4
	beq _02051BB8
	mov r0, #0x1c
	pop {r4, pc}
_02051BA0:
	mov r1, #0x57
	lsl r1, r1, #2
	ldr r0, [r2, #8]
	ldr r1, [r2, r1]
	bl sub_02051CD0
	cmp r0, #0x22
	blo _02051BB8
	mov r1, #2
	tst r1, r4
	beq _02051BB8
	mov r0, #0x1e
_02051BB8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02051B50

	thumb_func_start sub_02051BBC
sub_02051BBC: ; 0x02051BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x23
	blo _02051BCA
	bl sub_02022974
_02051BCA:
	ldr r0, _02051BE0 ; =0x020EC208
	lsl r1, r5, #2
	ldrh r0, [r0, r1]
	ldr r1, _02051BE4 ; =0x0000FFFF
	cmp r0, r1
	bne _02051BDC
	add r0, r4, #0
	bl ov5_021DEEC8
_02051BDC:
	pop {r3, r4, r5, pc}
	nop
_02051BE0: .word 0x020EC208
_02051BE4: .word 0x0000FFFF
	thumb_func_end sub_02051BBC

	thumb_func_start sub_02051BE8
sub_02051BE8: ; 0x02051BE8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x23
	blo _02051BF4
	bl sub_02022974
_02051BF4:
	ldr r0, _02051BFC ; =0x020EC20A
	lsl r1, r4, #2
	ldrh r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02051BFC: .word 0x020EC20A
	thumb_func_end sub_02051BE8

	thumb_func_start sub_02051C00
sub_02051C00: ; 0x02051C00
	push {r4, lr}
	add r4, r0, #0
	bl sub_02051B50
	add r1, r4, #0
	bl sub_02051BBC
	pop {r4, pc}
	thumb_func_end sub_02051C00

	thumb_func_start sub_02051C10
sub_02051C10: ; 0x02051C10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02051B50
	add r1, r4, #0
	bl sub_02051BE8
	pop {r4, pc}
	thumb_func_end sub_02051C10

	thumb_func_start sub_02051C20
sub_02051C20: ; 0x02051C20
	sub r0, #0x3e
	mov r1, #0x21
	cmp r0, #0x28
	bhi _02051CCC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051C34: ; jump table
	.short _02051C86 - _02051C34 - 2 ; case 0
	.short _02051CBA - _02051C34 - 2 ; case 1
	.short _02051C9E - _02051C34 - 2 ; case 2
	.short _02051CA6 - _02051C34 - 2 ; case 3
	.short _02051CAA - _02051C34 - 2 ; case 4
	.short _02051CAE - _02051C34 - 2 ; case 5
	.short _02051CB2 - _02051C34 - 2 ; case 6
	.short _02051CB6 - _02051C34 - 2 ; case 7
	.short _02051CCC - _02051C34 - 2 ; case 8
	.short _02051CCC - _02051C34 - 2 ; case 9
	.short _02051CC2 - _02051C34 - 2 ; case 10
	.short _02051CC6 - _02051C34 - 2 ; case 11
	.short _02051C8A - _02051C34 - 2 ; case 12
	.short _02051C8E - _02051C34 - 2 ; case 13
	.short _02051C92 - _02051C34 - 2 ; case 14
	.short _02051C96 - _02051C34 - 2 ; case 15
	.short _02051C9A - _02051C34 - 2 ; case 16
	.short _02051CA2 - _02051C34 - 2 ; case 17
	.short _02051CCC - _02051C34 - 2 ; case 18
	.short _02051CCC - _02051C34 - 2 ; case 19
	.short _02051CCC - _02051C34 - 2 ; case 20
	.short _02051CCC - _02051C34 - 2 ; case 21
	.short _02051CCC - _02051C34 - 2 ; case 22
	.short _02051CCC - _02051C34 - 2 ; case 23
	.short _02051CBE - _02051C34 - 2 ; case 24
	.short _02051CC2 - _02051C34 - 2 ; case 25
	.short _02051CC2 - _02051C34 - 2 ; case 26
	.short _02051CC6 - _02051C34 - 2 ; case 27
	.short _02051CCC - _02051C34 - 2 ; case 28
	.short _02051CCC - _02051C34 - 2 ; case 29
	.short _02051CCC - _02051C34 - 2 ; case 30
	.short _02051CCC - _02051C34 - 2 ; case 31
	.short _02051CCC - _02051C34 - 2 ; case 32
	.short _02051CCC - _02051C34 - 2 ; case 33
	.short _02051CCC - _02051C34 - 2 ; case 34
	.short _02051CCA - _02051C34 - 2 ; case 35
	.short _02051CCC - _02051C34 - 2 ; case 36
	.short _02051CCA - _02051C34 - 2 ; case 37
	.short _02051CCA - _02051C34 - 2 ; case 38
	.short _02051CCA - _02051C34 - 2 ; case 39
	.short _02051CCA - _02051C34 - 2 ; case 40
_02051C86:
	mov r1, #0
	b _02051CCC
_02051C8A:
	mov r1, #1
	b _02051CCC
_02051C8E:
	mov r1, #2
	b _02051CCC
_02051C92:
	mov r1, #3
	b _02051CCC
_02051C96:
	mov r1, #4
	b _02051CCC
_02051C9A:
	mov r1, #5
	b _02051CCC
_02051C9E:
	mov r1, #6
	b _02051CCC
_02051CA2:
	mov r1, #7
	b _02051CCC
_02051CA6:
	mov r1, #8
	b _02051CCC
_02051CAA:
	mov r1, #9
	b _02051CCC
_02051CAE:
	mov r1, #0xa
	b _02051CCC
_02051CB2:
	mov r1, #0xb
	b _02051CCC
_02051CB6:
	mov r1, #0xc
	b _02051CCC
_02051CBA:
	mov r1, #0xd
	b _02051CCC
_02051CBE:
	mov r1, #0x1a
	b _02051CCC
_02051CC2:
	mov r1, #0x19
	b _02051CCC
_02051CC6:
	mov r1, #0x18
	b _02051CCC
_02051CCA:
	mov r1, #0x1f
_02051CCC:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_02051C20

	thumb_func_start sub_02051CD0
sub_02051CD0: ; 0x02051CD0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x22
	bl sub_02054A40
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r2, _02051D88 ; =0x0000017B
	cmp r0, r2
	bhi _02051D0E
	bhs _02051D60
	sub r1, r2, #2
	cmp r0, r1
	bhi _02051D06
	bhs _02051D60
	cmp r0, #0x92
	bhi _02051D82
	cmp r0, #0x90
	blo _02051D82
	beq _02051D7C
	cmp r0, #0x91
	beq _02051D7C
	cmp r0, #0x92
	beq _02051D7C
	b _02051D82
_02051D06:
	sub r1, r2, #1
	cmp r0, r1
	beq _02051D60
	b _02051D82
_02051D0E:
	add r1, r2, #0
	add r1, #0x65
	cmp r0, r1
	bhi _02051D26
	add r1, r2, #0
	add r1, #0x65
	cmp r0, r1
	bhs _02051D70
	add r2, #0x64
	cmp r0, r2
	beq _02051D68
	b _02051D82
_02051D26:
	add r2, #0x66
	sub r0, r0, r2
	cmp r0, #0xc
	bhi _02051D82
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051D3A: ; jump table
	.short _02051D6C - _02051D3A - 2 ; case 0
	.short _02051D70 - _02051D3A - 2 ; case 1
	.short _02051D74 - _02051D3A - 2 ; case 2
	.short _02051D74 - _02051D3A - 2 ; case 3
	.short _02051D68 - _02051D3A - 2 ; case 4
	.short _02051D68 - _02051D3A - 2 ; case 5
	.short _02051D5C - _02051D3A - 2 ; case 6
	.short _02051D58 - _02051D3A - 2 ; case 7
	.short _02051D82 - _02051D3A - 2 ; case 8
	.short _02051D82 - _02051D3A - 2 ; case 9
	.short _02051D68 - _02051D3A - 2 ; case 10
	.short _02051D54 - _02051D3A - 2 ; case 11
	.short _02051D78 - _02051D3A - 2 ; case 12
_02051D54:
	mov r4, #0xe
	b _02051D82
_02051D58:
	mov r4, #0x14
	b _02051D82
_02051D5C:
	mov r4, #0x16
	b _02051D82
_02051D60:
	cmp r5, #0xfb
	beq _02051D82
	mov r4, #0x17
	b _02051D82
_02051D68:
	mov r4, #0x13
	b _02051D82
_02051D6C:
	mov r4, #0x11
	b _02051D82
_02051D70:
	mov r4, #0x10
	b _02051D82
_02051D74:
	mov r4, #0xf
	b _02051D82
_02051D78:
	mov r4, #0x12
	b _02051D82
_02051D7C:
	cmp r5, #0xfb
	beq _02051D82
	mov r4, #0x15
_02051D82:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02051D88: .word 0x0000017B
	thumb_func_end sub_02051CD0

	thumb_func_start sub_02051D8C
sub_02051D8C: ; 0x02051D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	mov r1, #0x72
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x72
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl sub_020C4CF4
	mov r1, #0x63
	str r4, [r7, #0]
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r4, r7, #0
	str r0, [sp]
	str r0, [r7, #0x14]
	add r6, r7, #0
	add r4, #0x28
_02051DBC:
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x34
	str r0, [r6, #0x18]
	bl sub_020C4B4C
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0x34
	str r0, [sp]
	cmp r0, #4
	blt _02051DBC
	mov r0, #0x15
	lsl r0, r0, #4
	mov r6, #0
	str r6, [r7, r0]
	mov r2, #0x18
	add r1, r0, #4
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #8
	str r6, [r7, r1]
	add r1, r0, #0
	add r1, #0x10
	str r6, [r7, r1]
	add r1, r0, #0
	add r1, #0x14
	str r6, [r7, r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x18
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #0x1c
	str r2, [r7, r1]
	add r0, #0x24
	str r6, [r7, r0]
	add r4, r7, #0
_02051E0A:
	add r0, r5, #0
	bl sub_02079FF4
	str r0, [r4, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02051E0A
	mov r6, #0
	add r4, r7, #0
_02051E1E:
	add r0, r5, #0
	bl sub_02025E6C
	add r1, r4, #0
	add r1, #0xf8
	add r6, r6, #1
	add r4, r4, #4
	str r0, [r1, #0]
	cmp r6, #4
	blt _02051E1E
	mov r6, #0
	add r4, r7, #0
_02051E36:
	add r0, r5, #0
	bl sub_0202CC84
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02051E36
	add r0, r5, #0
	bl sub_0207D3C0
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_02026324
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_020279FC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_0206D140
	mov r1, #0x4d
	lsl r1, r1, #2
	add r2, r1, #0
	str r0, [r7, r1]
	mov r0, #0
	sub r2, #0x28
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x84
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x5c
	str r0, [r7, r2]
	add r2, r1, #0
	sub r2, #8
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x10
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x14
	str r0, [r7, r2]
	add r1, #0x60
	str r0, [r7, r1]
	add r0, sp, #0x10
	add r1, sp, #4
	bl sub_0201384C
	ldr r0, _02051F20 ; =0x021BF67C
	ldr r5, [sp, #0x14]
	ldr r4, [r0, #0x2c]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r5, r5, #8
	add r0, r1, r0
	lsl r3, r0, #0x18
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	lsl r2, r0, #0x10
	ldr r0, [sp, #0x18]
	mul r5, r0
	lsl r0, r5, #0x10
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r1, r4, r0
	mov r0, #0x67
	lsl r0, r0, #2
	str r1, [r7, r0]
	bl sub_02035E38
	cmp r0, #1
	bne _02051F0C
	mov r5, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02051F02
	mov r6, #0x1a
	add r4, r7, #0
	lsl r6, r6, #4
_02051EEE:
	add r0, r5, #0
	bl sub_020362F4
	str r0, [r4, r6]
	add r4, r4, #4
	add r5, r5, #1
	bl sub_02035E18
	cmp r5, r0
	blt _02051EEE
_02051F02:
	bl sub_0203608C
	mov r1, #0x1b
	lsl r1, r1, #4
	strh r0, [r7, r1]
_02051F0C:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	add r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02051F20: .word 0x021BF67C
	thumb_func_end sub_02051D8C

	thumb_func_start sub_02051F24
sub_02051F24: ; 0x02051F24
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x20
	bl sub_02051D8C
	mov r1, #0x19
	lsl r1, r1, #4
	str r4, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02051F24

	thumb_func_start sub_02051F38
sub_02051F38: ; 0x02051F38
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	lsl r1, r1, #8
	bl sub_02051D8C
	mov r1, #0x19
	lsl r1, r1, #4
	str r4, [r0, r1]
	pop {r4, pc}
	thumb_func_end sub_02051F38

	thumb_func_start sub_02051F4C
sub_02051F4C: ; 0x02051F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	mov r1, #1
	str r0, [sp, #0x14]
	add r0, r6, #0
	lsl r1, r1, #0xa
	bl sub_02051D8C
	add r4, r0, #0
	ldr r2, _0205209C ; =0x00000229
	mov r0, #1
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	str r0, [sp, #0x18]
	mov r0, #8
	add r1, r6, #0
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	add r2, r0, #0
	mov r1, #1
	eor r1, r2
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02023E2C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EC0
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	mov r1, #1
	ldr r0, [r0, #0]
	eor r1, r2
	bl sub_02025F2C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205281C
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #0x14]
	ldr r1, [r4, r1]
	bl sub_02027A10
	add r0, r5, #0
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x58
	ldr r0, [r4, r1]
	mov r1, #4
	mov r2, #0x14
	add r3, r6, #0
	bl sub_0207D570
	add r0, r6, #0
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r6, #0
	mov r2, #5
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_0207A048
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, _020520A0 ; =0x0000018F
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_0207A048
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #8
	str r2, [r4, r0]
	mov r0, #0
	add r1, #0xa4
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	add r1, #0x18
	ldr r0, [r0, #0]
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_02052894
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0205209C: .word 0x00000229
_020520A0: .word 0x0000018F
	thumb_func_end sub_02051F4C

	thumb_func_start sub_020520A4
sub_020520A4: ; 0x020520A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
_020520AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _020520B6
	bl sub_02022974
_020520B6:
	ldr r0, [r5, #4]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _020520AC
	mov r5, #0
	add r4, r7, #0
_020520C8:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020520D6
	bl sub_02022974
_020520D6:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _020520C8
	mov r6, #0x46
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_020520F0:
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _020520FA
	bl sub_02022974
_020520FA:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _020520F0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0206D158
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020520A4

	thumb_func_start sub_0205213C
sub_0205213C: ; 0x0205213C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _0205214C
	bl sub_02022974
_0205214C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r1, r6, #0
	bl sub_0207A048
	cmp r0, #0
	bne _02052160
	bl sub_02022974
_02052160:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205213C

	thumb_func_start sub_02052164
sub_02052164: ; 0x02052164
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _02052174
	bl sub_02022974
_02052174:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_0207A21C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02052164

	thumb_func_start sub_02052184
sub_02052184: ; 0x02052184
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _02052194
	bl sub_02022974
_02052194:
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	add r0, r6, #0
	bl sub_02025E80
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02052184

	thumb_func_start sub_020521A4
sub_020521A4: ; 0x020521A4
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r3, _020521B4 ; =sub_0202CD3C
	ldr r0, [r2, r0]
	bx r3
	nop
_020521B4: .word sub_0202CD3C
	thumb_func_end sub_020521A4

	thumb_func_start sub_020521B8
sub_020521B8: ; 0x020521B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r1, #0
	add r6, r3, #0
	bl sub_02025E38
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0207D990
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02027560
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0202CC98
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02025E44
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203A790
	str r0, [sp]
	cmp r7, #0
	beq _02052210
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0205281C
	add r0, r7, #0
	bl sub_02055BA8
	b _0205222E
_02052210:
	add r0, r6, #0
	bl sub_0203A19C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #9
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r4, #0
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	bl sub_02013974
_0205222E:
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052184
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #4]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	add r0, r4, #0
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0203A138
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0203A354
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0208C324
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_020507E4
	bl sub_0206ADFC
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_0203A74C
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r2, [sp, #0x34]
	sub r0, #0x68
	str r2, [r5, r0]
	ldr r0, [sp, #0x38]
	add r1, #0x44
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02056B24
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp, #0x30]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r4, #0
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x10
	str r6, [r5, r0]
	add r1, #0x74
	str r4, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020521B8

	thumb_func_start sub_02052314
sub_02052314: ; 0x02052314
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r1, #0
	add r2, #0x9c
	ldr r2, [r2, #0]
	add r4, r0, #0
	str r2, [sp]
	add r2, r1, #0
	add r2, #0x98
	ldr r2, [r2, #0]
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldr r3, [r1, #0x1c]
	ldr r2, [r1, #0xc]
	ldr r3, [r3, #0]
	bl sub_020521B8
	add r0, r4, #0
	bl sub_02052894
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02052314

	thumb_func_start sub_02052348
sub_02052348: ; 0x02052348
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0, #0xc]
	str r1, [sp]
	add r6, r2, #0
	bl sub_02025E38
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #4]
	mov r0, #0x15
	mov r1, #6
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #9
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02052184
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0207A0F8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0207A014
	ldr r0, [sp, #0x14]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02052420
_020523C8:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_020775EC
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _0205240A
	cmp r6, #0
	beq _0205240A
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r6, #0
	bl sub_02075AD0
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_0205240A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _020523C8
_02052420:
	add r0, r4, #0
	bl sub_020181C4
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #4]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x54
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x58
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r2, [r0, #0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x74
	ldr r0, [r0, #0xc]
	str r0, [r5, r1]
	add r0, r5, #0
	bl sub_02052894
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02052348

	thumb_func_start sub_020524E4
sub_020524E4: ; 0x020524E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0, #0xc]
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_02025E38
	str r0, [sp, #0x20]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r1, #6
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #9
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl sub_02052184
	cmp r7, #0
	bne _02052552
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	b _020525B0
_02052552:
	mov r4, #0
	add r1, r4, #0
_02052556:
	ldrb r0, [r7, r1]
	cmp r0, #0
	beq _0205255E
	add r4, r4, #1
_0205255E:
	add r1, r1, #1
	cmp r1, #6
	blt _02052556
	cmp r4, #0
	bne _02052574
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	b _020525B0
_02052574:
	mov r0, #0xb
	bl sub_02073C74
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0207A014
	mov r6, #0
	cmp r4, #0
	ble _020525AA
_0205258A:
	ldrb r1, [r7, r6]
	ldr r0, [sp, #4]
	sub r1, r1, #1
	bl sub_0207A0FC
	ldr r1, [sp, #8]
	bl sub_020775EC
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_0205213C
	add r6, r6, #1
	cmp r6, r4
	blt _0205258A
_020525AA:
	ldr r0, [sp, #8]
	bl sub_020181C4
_020525B0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020525C8
	mov r1, #0xc
	bl sub_02026074
	cmp r0, #0
	beq _020525C8
	mov r0, #0x65
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_020525C8:
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0x18]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x54
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x58
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x18
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r1, #0x74
	ldr r0, [r0, #0xc]
	str r0, [r5, r1]
	bl sub_0203895C
	bl sub_020326C4
	cmp r0, #0
	beq _020526C0
	ldr r0, [sp, #0x20]
	bl sub_02025F8C
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_02025F30
	add r1, r4, #0
	mov r2, #1
	bl sub_0205CA14
	add r1, r5, #0
	add r1, #0x29
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x3c
	bl sub_020021B0
	add r3, r5, #0
	add r3, #0x28
	add r5, #0x90
	mov r2, #6
_020526B0:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _020526B0
	ldr r0, [r3, #0]
	add sp, #0x24
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_020526C0:
	add r0, r5, #0
	bl sub_02052894
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020524E4

	thumb_func_start sub_020526CC
sub_020526CC: ; 0x020526CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r6, r2, #0
	bl sub_0207A268
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl sub_020524E4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020526CC

	thumb_func_start sub_020526E8
sub_020526E8: ; 0x020526E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02025E80
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl sub_0207A21C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp]
	bl sub_0207D3EC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	bl sub_02026338
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	strh r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020526E8

	thumb_func_start sub_02052754
sub_02052754: ; 0x02052754
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	ldr r0, [r5, #0xc]
	bl sub_02027560
	add r1, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02026338
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02052754

	thumb_func_start sub_02052780
sub_02052780: ; 0x02052780
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0x1c]
	add r4, r1, #0
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_02054F94
	add r5, r0, #0
	bl sub_0205DC5C
	cmp r0, #0
	beq _0205279C
	mov r0, #8
	pop {r3, r4, r5, pc}
_0205279C:
	add r0, r5, #0
	bl sub_0205DAC8
	cmp r0, #0
	bne _020527B0
	add r0, r5, #0
	bl sub_0205DAD4
	cmp r0, #0
	beq _020527B4
_020527B0:
	mov r0, #2
	pop {r3, r4, r5, pc}
_020527B4:
	add r0, r5, #0
	bl sub_0205DB6C
	cmp r0, #0
	beq _020527C2
	mov r0, #1
	pop {r3, r4, r5, pc}
_020527C2:
	add r0, r5, #0
	bl sub_0205DD18
	cmp r0, #0
	beq _020527D0
	mov r0, #6
	pop {r3, r4, r5, pc}
_020527D0:
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #0
	bne _020527E4
	add r0, r5, #0
	bl sub_0205DCFC
	cmp r0, #0
	beq _020527E8
_020527E4:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_020527E8:
	add r0, r5, #0
	bl sub_0205DDA8
	cmp r0, #0
	beq _020527F6
	mov r0, #5
	pop {r3, r4, r5, pc}
_020527F6:
	add r0, r5, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _02052804
	mov r0, #7
	pop {r3, r4, r5, pc}
_02052804:
	cmp r4, #0x17
	bhs _02052810
	ldr r0, _02052818 ; =0x020EC294
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02052810:
	bl sub_02022974
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02052818: .word 0x020EC294
	thumb_func_end sub_02052780

	thumb_func_start sub_0205281C
sub_0205281C: ; 0x0205281C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A19C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _02052846
	mov r0, #1
	str r0, [r5, r1]
_02052846:
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_02052780
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205281C

	thumb_func_start sub_0205285C
sub_0205285C: ; 0x0205285C
	mov r1, #0x55
	mov r2, #7
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205285C

	thumb_func_start sub_02052868
sub_02052868: ; 0x02052868
	cmp r0, #2
	beq _02052870
	cmp r0, #3
	bne _02052874
_02052870:
	mov r0, #0
	bx lr
_02052874:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052868

	thumb_func_start sub_02052878
sub_02052878: ; 0x02052878
	cmp r0, #1
	beq _02052880
	cmp r0, #4
	bne _02052884
_02052880:
	mov r0, #0
	bx lr
_02052884:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052878

	thumb_func_start sub_02052888
sub_02052888: ; 0x02052888
	cmp r0, #4
	bne _02052890
	mov r0, #0
	bx lr
_02052890:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052888

	thumb_func_start sub_02052894
sub_02052894: ; 0x02052894
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025F30
	add r1, r4, #0
	add r1, #0x29
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x3c
	bl sub_020021B0
	add r3, r4, #0
	add r3, #0x28
	add r4, #0x90
	mov r2, #6
_020528C2:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020528C2
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02052894

	thumb_func_start sub_020528D0
sub_020528D0: ; 0x020528D0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02052908 ; =0x020EC324
	bl sub_0201FE94
	ldr r0, _0205290C ; =0x020EC2F8
	bl sub_02018368
	ldr r2, _02052910 ; =0x020EC308
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	mov r3, #0x1a
	str r0, [sp, #4]
	mov r0, #0xe
	mov r1, #6
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02052908: .word 0x020EC324
_0205290C: .word 0x020EC2F8
_02052910: .word 0x020EC308
	thumb_func_end sub_020528D0

	thumb_func_start sub_02052914
sub_02052914: ; 0x02052914
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	bne _0205292A
	bl sub_02022974
_0205292A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0xb
	bl sub_02018340
	str r0, [r4, #8]
	bl sub_020528D0
	ldr r2, _020529B4 ; =0x00000175
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x1c]
	mov r0, #0xb
	bl sub_0200B358
	str r0, [r4, #0x20]
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, _020529B8 ; =0x020EC2F0
	add r1, #0xc
	bl sub_0201A8D4
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _020529BC ; =0x0000019E
	cmp r1, r0
	bne _02052994
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02052AA4
	b _020529A0
_02052994:
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02052AA4
_020529A0:
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A954
	ldr r1, _020529C0 ; =sub_020529C4
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020529B4: .word 0x00000175
_020529B8: .word 0x020EC2F0
_020529BC: .word 0x0000019E
_020529C0: .word sub_020529C4
	thumb_func_end sub_02052914

	thumb_func_start sub_020529C4
sub_020529C4: ; 0x020529C4
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _02052A9A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020529E0: ; jump table
	.short _020529EA - _020529E0 - 2 ; case 0
	.short _02052A08 - _020529E0 - 2 ; case 1
	.short _02052A18 - _020529E0 - 2 ; case 2
	.short _02052A48 - _020529E0 - 2 ; case 3
	.short _02052A62 - _020529E0 - 2 ; case 4
_020529EA:
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	mov r2, #0x2a
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A08:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052A9A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A18:
	ldr r0, _02052AA0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02052A28
	mov r0, #2
	tst r0, r1
	beq _02052A9A
_02052A28:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A48:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052A9A
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A62:
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A8FC
	ldr r0, [r4, #0x20]
	bl sub_0200B3F0
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02052A9A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02052AA0: .word 0x021BF67C
	thumb_func_end sub_020529C4

	thumb_func_start sub_02052AA4
sub_02052AA4: ; 0x02052AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #1
	str r1, [sp, #0x10]
	lsl r0, r0, #0xa
	mov r1, #0xb
	add r7, r3, #0
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	add r3, r0, #0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02052B28 ; =0x000F0200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	ldrb r5, [r5, #0x13]
	add r0, #0xc
	add r2, r4, #0
	lsl r5, r5, #3
	sub r3, r5, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x19
	sub r3, r3, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02052B28: .word 0x000F0200
	thumb_func_end sub_02052AA4

	thumb_func_start sub_02052B2C
sub_02052B2C: ; 0x02052B2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bls _02052B48
	b _02052C4E
_02052B48:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02052B54: ; jump table
	.short _02052B62 - _02052B54 - 2 ; case 0
	.short _02052BAE - _02052B54 - 2 ; case 1
	.short _02052BBE - _02052B54 - 2 ; case 2
	.short _02052BD2 - _02052B54 - 2 ; case 3
	.short _02052BFA - _02052B54 - 2 ; case 4
	.short _02052C08 - _02052B54 - 2 ; case 5
	.short _02052C48 - _02052B54 - 2 ; case 6
_02052B62:
	cmp r5, #0
	beq _02052B76
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02052B76
	bl sub_0207A268
	mov r1, #0
	bl sub_02077A9C
_02052B76:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	bl sub_0203A75C
	add r1, sp, #4
	str r0, [sp]
	bl sub_0203A824
	add r0, r7, #0
	bl sub_0203A72C
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0203A7F0
	add r0, r6, #0
	add r1, sp, #4
	bl sub_020539A0
	add r0, r5, #0
	bl sub_020705B4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BAE:
	mov r0, #0
	mov r1, #0x14
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BBE:
	bl sub_02005684
	cmp r0, #0
	bne _02052C4E
	bl sub_020553DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BD2:
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x37
	mov r2, #1
	bl sub_0200AB4C
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x3f
	mov r2, #2
	bl sub_0200AB4C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02052914
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BFA:
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052C08:
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	bl sub_0203A7EC
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A75C
	cmp r7, r0
	bne _02052C34
	mov r2, #0
	ldr r1, _02052C54 ; =0x000007E4
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _02052C40
_02052C34:
	mov r2, #0
	ldr r1, _02052C58 ; =0x000007E5
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
_02052C40:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052C48:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02052C4E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02052C54: .word 0x000007E4
_02052C58: .word 0x000007E5
	thumb_func_end sub_02052B2C

	thumb_func_start sub_02052C5C
sub_02052C5C: ; 0x02052C5C
	ldr r3, _02052C64 ; =sub_02050944
	ldr r1, _02052C68 ; =sub_02052B2C
	mov r2, #0
	bx r3
	; .align 2, 0
_02052C64: .word sub_02050944
_02052C68: .word sub_02052B2C
	thumb_func_end sub_02052C5C

	thumb_func_start sub_02052C6C
sub_02052C6C: ; 0x02052C6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202444C
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #1
	bne _02052C8A
	cmp r6, #0
	bne _02052C90
_02052C8A:
	add r0, r4, #0
	bl sub_0202DF94
_02052C90:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, sp, #4
	bl sub_020138A4
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #4
	bl sub_0202DFA8
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02024458
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02052C6C

	thumb_func_start sub_02052CBC
sub_02052CBC: ; 0x02052CBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #9
	bhi _02052D18
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02052CEA: ; jump table
	.short _02052CFE - _02052CEA - 2 ; case 0
	.short _02052D0E - _02052CEA - 2 ; case 1
	.short _02052D4A - _02052CEA - 2 ; case 2
	.short _02052D72 - _02052CEA - 2 ; case 3
	.short _02052D84 - _02052CEA - 2 ; case 4
	.short _02052DBA - _02052CEA - 2 ; case 5
	.short _02052DD6 - _02052CEA - 2 ; case 6
	.short _02052DE8 - _02052CEA - 2 ; case 7
	.short _02052E08 - _02052CEA - 2 ; case 8
	.short _02052E2A - _02052CEA - 2 ; case 9
_02052CFE:
	add r0, r6, #0
	add r1, r5, #4
	bl sub_0203E234
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D0E:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02052D1A
_02052D18:
	b _02052E4C
_02052D1A:
	mov r1, #4
	mov r0, #3
	lsl r2, r1, #0xf
	bl sub_02017FC8
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02052F28
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D4A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052E4C
	ldr r0, [r6, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _02052D6C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02052FA8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D6C:
	mov r0, #7
	str r0, [r4, #0]
	b _02052E4C
_02052D72:
	add r0, r5, #0
	bl sub_02052FFC
	cmp r0, #0
	beq _02052E4C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D84:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_02097284
	bl sub_02024804
	ldr r0, [r6, #0xc]
	bl sub_020246E0
	add r7, r0, #0
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02052C6C
	add r0, r5, #0
	bl sub_0205300C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02053028
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DBA:
	add r0, r5, #0
	bl sub_02052FFC
	cmp r0, #0
	beq _02052E4C
	ldr r0, _02052E54 ; =0x0000061B
	bl sub_02005748
	mov r0, #0x12
	str r0, [r5, #0x38]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DD6:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02052DE2
	sub r0, r1, #1
	str r0, [r5, #0x38]
	b _02052E4C
_02052DE2:
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DE8:
	mov r0, #8
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052E08:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052E4C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02053098
	add r5, #0x10
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203E274
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052E2A:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02052E4C
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #4
	bl sub_0201807C
	mov r0, #0
	bl sub_020C3EE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02052E4C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02052E54: .word 0x0000061B
	thumb_func_end sub_02052CBC

	thumb_func_start sub_02052E58
sub_02052E58: ; 0x02052E58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x3c
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0206A954
	str r0, [r5, #0]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	bl sub_02025E5C
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_0206A954
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [r5, #0x18]
	add r0, r6, #0
	bl sub_0206A954
	cmp r0, #0
	bne _02052EE2
	add r0, r4, #0
	bl sub_02055C2C
_02052EE2:
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl sub_02054AC4
	ldr r0, [sp, #8]
	bl sub_0203D178
	ldr r0, [sp, #4]
	bl sub_0203D190
	add r0, r6, #0
	bl sub_0206AD9C
	add r0, r6, #0
	bl sub_0206A944
	ldr r0, [sp]
	bl sub_02025FE0
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0x49
	bl sub_0202CF28
	ldr r1, _02052F24 ; =sub_02052CBC
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02052F24: .word sub_02052CBC
	thumb_func_end sub_02052E58

	thumb_func_start sub_02052F28
sub_02052F28: ; 0x02052F28
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	add r1, #0x1c
	add r0, r1, #0
	bl sub_0201A7A0
	ldr r0, _02052F98 ; =0x020EC378
	bl sub_0201FE94
	ldr r2, _02052F9C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _02052FA0 ; =0x020EC34C
	bl sub_02018368
	mov r0, #3
	mov r1, #0
	bl sub_0201975C
	ldr r0, [r4, #8]
	ldr r2, _02052FA4 ; =0x020EC35C
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	mov r1, #0x20
	mov r0, #3
	mov r2, #0
	add r3, r1, #0
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	nop
_02052F98: .word 0x020EC378
_02052F9C: .word 0x04000304
_02052FA0: .word 0x020EC34C
_02052FA4: .word 0x020EC35C
	thumb_func_end sub_02052F28

	thumb_func_start sub_02052FA8
sub_02052FA8: ; 0x02052FA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_02025E44
	add r6, r0, #0
	mov r0, #0x1a
	mov r1, #0xd5
	mov r2, #0xf
	mov r3, #0x20
	bl sub_0200B010
	str r0, [r4, #0x2c]
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x1c
	mov r2, #3
	bl sub_0205D8F4
	add r0, r4, #0
	add r0, #0x1c
	add r1, r6, #0
	bl sub_0205D944
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #0x1c
	add r2, r6, #0
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x34]
	add r0, r4, #0
	ldr r1, _02052FF8 ; =0x000003E2
	add r0, #0x1c
	bl sub_0200E7FC
	str r0, [r4, #0x30]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02052FF8: .word 0x000003E2
	thumb_func_end sub_02052FA8

	thumb_func_start sub_02052FFC
sub_02052FFC: ; 0x02052FFC
	ldr r0, [r0, #0x34]
	ldr r3, _02053008 ; =sub_0205DA04
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	nop
_02053008: .word sub_0205DA04
	thumb_func_end sub_02052FFC

	thumb_func_start sub_0205300C
sub_0205300C: ; 0x0205300C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020237BC
	ldr r0, [r4, #0x30]
	bl sub_0200EBA0
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0205D988
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205300C

	thumb_func_start sub_02053028
sub_02053028: ; 0x02053028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	cmp r6, #2
	bne _02053070
	mov r0, #4
	bl sub_0200B358
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x10
	mov r3, #4
	bl sub_0200B29C
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_0200B3F0
	b _02053078
_02053070:
	mov r1, #0x12
	bl sub_0200B1EC
	str r0, [r4, #0x2c]
_02053078:
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #0x1c
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053028

	thumb_func_start sub_02053098
sub_02053098: ; 0x02053098
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _020530A8
	bl sub_020237BC
_020530A8:
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0201A7CC
	cmp r0, #0
	beq _020530BC
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0201A8FC
_020530BC:
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_02019044
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02053098

	thumb_func_start sub_020530C8
sub_020530C8: ; 0x020530C8
	ldr r1, [r0, #0x1c]
	ldr r2, _02053114 ; =0x0000014B
	ldr r1, [r1, #0]
	cmp r1, r2
	bgt _020530F0
	sub r2, r2, #5
	sub r2, r1, r2
	bmi _020530FA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020530E4: ; jump table
	.short _020530F6 - _020530E4 - 2 ; case 0
	.short _020530F6 - _020530E4 - 2 ; case 1
	.short _020530F6 - _020530E4 - 2 ; case 2
	.short _020530F6 - _020530E4 - 2 ; case 3
	.short _020530F6 - _020530E4 - 2 ; case 4
	.short _020530F6 - _020530E4 - 2 ; case 5
_020530F0:
	ldr r2, _02053118 ; =0x000001ED
	cmp r1, r2
	bne _020530FA
_020530F6:
	mov r2, #1
	b _020530FC
_020530FA:
	mov r2, #0
_020530FC:
	cmp r2, #0
	bne _0205310A
	ldr r1, [r0, #0x70]
	cmp r1, #4
	bne _0205310A
	mov r1, #0
	str r1, [r0, #0x70]
_0205310A:
	cmp r2, #0
	beq _02053112
	mov r1, #4
	str r1, [r0, #0x70]
_02053112:
	bx lr
	; .align 2, 0
_02053114: .word 0x0000014B
_02053118: .word 0x000001ED
	thumb_func_end sub_020530C8

	thumb_func_start sub_0205311C
sub_0205311C: ; 0x0205311C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0203A790
	add r6, r0, #0
	bl sub_0203A728
	add r2, r0, #0
	cmp r4, #0
	beq _02053150
	ldr r3, [r5, #0x1c]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r2, [r5, #0x1c]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_02053150:
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A3B0
	ldr r0, [r5, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0205319E
	add r0, r5, #0
	bl sub_0203A450
	ldrh r2, [r0]
	ldr r1, [r5, #0x1c]
	str r2, [r1, #8]
	ldrh r2, [r0, #2]
	ldr r1, [r5, #0x1c]
	str r2, [r1, #0xc]
	ldrh r1, [r0, #6]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bne _0205319E
	add r0, r6, #0
	bl sub_0203A730
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203A724
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
_0205319E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205311C

	thumb_func_start sub_020531A0
sub_020531A0: ; 0x020531A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	cmp r0, #5
	blt _020531AE
	bl sub_02022974
_020531AE:
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1c
	ldr r0, _020531BC ; =0x021BF6DC
	strb r1, [r0, #5]
	pop {r4, pc}
	; .align 2, 0
_020531BC: .word 0x021BF6DC
	thumb_func_end sub_020531A0

	thumb_func_start sub_020531C0
sub_020531C0: ; 0x020531C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	ldr r7, [r0, #0]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02055414
	add r0, r5, #0
	bl sub_0203F1C4
	cmp r6, #0
	bne _020531EC
	add r0, r5, #0
	bl sub_02070494
	b _020531F2
_020531EC:
	add r0, r5, #0
	bl sub_02070430
_020531F2:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B0D4
	cmp r6, #0
	bne _02053206
	add r0, r5, #0
	bl sub_020559DC
_02053206:
	cmp r6, #0
	bne _02053214
	ldr r0, [r5, #0xc]
	bl sub_02027860
	bl sub_02027F50
_02053214:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203A944
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xe
	bne _02053236
	ldr r0, [sp]
	bl sub_0206AF0C
	cmp r0, #1
	beq _02053244
_02053236:
	cmp r4, #0x10
	bne _02053246
	ldr r0, [sp]
	bl sub_0206AEDC
	cmp r0, #1
	bne _02053246
_02053244:
	mov r4, #0
_02053246:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0203A754
	cmp r6, #0
	beq _0205326A
	ldr r0, [sp, #4]
	bl sub_0203A770
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203A188
	cmp r4, r0
	beq _02053278
	bl sub_02022974
	b _02053278
_0205326A:
	add r0, r7, #0
	bl sub_0203A188
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0203A778
_02053278:
	cmp r6, #0
	bne _0205328E
	add r0, r7, #0
	bl sub_0203A858
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _0205328E
	ldr r0, [sp, #4]
	bl sub_0203A764
_0205328E:
	add r0, r5, #0
	mov r1, #2
	bl sub_0203F5C0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	add r5, #0x7a
	strh r1, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020531C0

	thumb_func_start sub_020532A8
sub_020532A8: ; 0x020532A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r6, [r0, #0]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02055414
	add r0, r5, #0
	bl sub_0203F1C4
	cmp r4, #0
	bne _020532D2
	add r0, r5, #0
	bl sub_02070494
	b _020532D8
_020532D2:
	add r0, r5, #0
	bl sub_02070430
_020532D8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B0D4
	cmp r4, #0
	bne _020532EC
	add r0, r5, #0
	bl sub_020559DC
_020532EC:
	cmp r4, #0
	bne _020532FA
	ldr r0, [r5, #0xc]
	bl sub_02027860
	bl sub_02027F50
_020532FA:
	cmp r4, #0
	bne _02053310
	add r0, r6, #0
	bl sub_0203A858
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02053310
	add r0, r7, #0
	bl sub_0203A764
_02053310:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	add r5, #0x7a
	strh r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020532A8

	thumb_func_start sub_02053320
sub_02053320: ; 0x02053320
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #0x40
	mov r2, #5
	bl sub_02061804
	str r0, [r5, #0x38]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	ldr r3, [r5, #0x1c]
	ldr r1, [r0, #4]
	str r1, [sp]
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x38]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl sub_0205E7D0
	str r0, [r5, #0x3c]
	add r0, r5, #0
	bl sub_0203A418
	ldr r0, [r5, #0x38]
	bl sub_02062C30
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02053320

	thumb_func_start sub_02053374
sub_02053374: ; 0x02053374
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205E8E0
	ldr r0, [r4, #0x38]
	bl sub_02061BBC
	ldr r0, [r4, #0x38]
	bl sub_02061830
	pop {r4, pc}
	thumb_func_end sub_02053374

	thumb_func_start sub_0205338C
sub_0205338C: ; 0x0205338C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x40
	mov r2, #5
	bl sub_02061804
	str r0, [r5, #0x38]
	add r0, r5, #0
	bl sub_0203A7C0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	bl sub_0205E820
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x38]
	bl sub_02062C30
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205338C

	thumb_func_start sub_020533CC
sub_020533CC: ; 0x020533CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020530C8
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _020533DE
	bl sub_02022974
_020533DE:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x2c]
	ldr r0, [r0, #0]
	bl sub_02039DC0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #3
	bl sub_0206B1F0
	cmp r0, #0
	beq _020533FE
	ldr r0, [r4, #0x2c]
	bl sub_02039FE0
_020533FE:
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #2
	bl sub_0206B1F0
	cmp r0, #0
	bne _02053414
	ldr r0, [r4, #0x2c]
	bl sub_02039F8C
_02053414:
	ldr r0, [r4, #0x70]
	cmp r0, #5
	blt _0205341E
	bl sub_02022974
_0205341E:
	ldr r0, [r4, #0x70]
	ldr r1, _02053464 ; =0x020EC3A8
	lsl r0, r0, #3
	add r0, r1, r0
	str r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x74]
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0x5c
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	bl sub_02054F44
	ldr r0, [r4, #0x74]
	ldr r1, [r0, #0]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1c
	beq _02053460
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02054BD0
_02053460:
	pop {r4, pc}
	nop
_02053464: .word 0x020EC3A8
	thumb_func_end sub_020533CC

	thumb_func_start sub_02053468
sub_02053468: ; 0x02053468
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _02053476
	bl sub_02022974
_02053476:
	mov r0, #0
	str r0, [r4, #0x5c]
	mov r0, #5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1c
	beq _0205348E
	add r0, r4, #0
	bl sub_02054BF8
_0205348E:
	mov r0, #0
	str r0, [r4, #0x74]
	pop {r4, pc}
	thumb_func_end sub_02053468

	thumb_func_start sub_02053494
sub_02053494: ; 0x02053494
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020534BA
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0202BC58
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0202B758
_020534BA:
	pop {r4, pc}
	thumb_func_end sub_02053494

	thumb_func_start sub_020534BC
sub_020534BC: ; 0x020534BC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020534EA
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r0, [r0, #0]
	mov r1, #0xb
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0202BC58
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0202B758
_020534EA:
	pop {r4, pc}
	thumb_func_end sub_020534BC

	thumb_func_start sub_020534EC
sub_020534EC: ; 0x020534EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	ldr r1, [r4, #0x1c]
	ldr r1, [r1, #0]
	str r1, [r5, #0]
	mov r1, #0
	mvn r1, r1
	str r1, [r5, #4]
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020534EC

	thumb_func_start sub_02053518
sub_02053518: ; 0x02053518
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A334
	cmp r0, #0
	beq _0205353A
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #8]
	cmp r0, #7
	bne _0205353A
	ldr r0, [r1, #0xc]
	cmp r0, #6
	bne _0205353A
	mov r0, #1
	pop {r4, pc}
_0205353A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02053518

	thumb_func_start sub_02053540
sub_02053540: ; 0x02053540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053540

	thumb_func_start sub_02053570
sub_02053570: ; 0x02053570
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053592
	cmp r0, #1
	beq _020535B6
	cmp r0, #2
	beq _020535C4
	b _020535C8
_02053592:
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	bl sub_0205311C
	add r0, r5, #0
	bl sub_020533CC
	add r0, r5, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r5, #0
	bl sub_02053320
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020535C8
_020535B6:
	add r0, r6, #0
	bl sub_020559CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020535C8
_020535C4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020535C8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053570

	thumb_func_start sub_020535CC
sub_020535CC: ; 0x020535CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x70]
	bl sub_0203F598
	ldr r1, _020535E4 ; =sub_02053570
	add r0, r4, #0
	mov r2, #0
	bl sub_02050904
	pop {r4, pc}
	; .align 2, 0
_020535E4: .word sub_02053570
	thumb_func_end sub_020535CC

	thumb_func_start sub_020535E8
sub_020535E8: ; 0x020535E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #4
	bhi _020536FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02053614: ; jump table
	.short _0205361E - _02053614 - 2 ; case 0
	.short _0205364C - _02053614 - 2 ; case 1
	.short _020536E0 - _02053614 - 2 ; case 2
	.short _020536EC - _02053614 - 2 ; case 3
	.short _020536F0 - _02053614 - 2 ; case 4
_0205361E:
	ldr r0, [r4, #0xc]
	bl sub_0202878C
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B6A4
	cmp r0, #0
	beq _0205364C
	add r0, r4, #0
	mov r1, #0
	bl sub_0203D30C
	mov r0, #4
	str r0, [r6, #0]
	b _020536FE
_0205364C:
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B634
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r7, #0
	bl sub_0206ADBC
	cmp r0, #0
	beq _020536B4
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02053518
	cmp r0, #0
	beq _0205368A
	add r0, r4, #0
	bl sub_02053540
_0205368A:
	add r0, r7, #0
	bl sub_0206ADAC
	add r0, r5, #0
	bl sub_0203A730
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r4, #0
	bl sub_02053320
	b _020536CE
_020536B4:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	bl sub_020559DC
	add r0, r4, #0
	bl sub_0205338C
_020536CE:
	add r0, r4, #0
	bl sub_02053494
	add r0, r4, #0
	bl sub_020705CC
	mov r0, #2
	str r0, [r6, #0]
	b _020536FE
_020536E0:
	add r0, r5, #0
	bl sub_020559CC
	mov r0, #3
	str r0, [r6, #0]
	b _020536FE
_020536EC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020536F0:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020536FE
	mov r0, #1
	str r0, [r6, #0]
_020536FE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020535E8

	thumb_func_start sub_02053704
sub_02053704: ; 0x02053704
	ldr r3, _02053710 ; =sub_02050904
	mov r2, #0
	str r2, [r0, #0x70]
	ldr r1, _02053714 ; =sub_020535E8
	bx r3
	nop
_02053710: .word sub_02050904
_02053714: .word sub_020535E8
	thumb_func_end sub_02053704

	thumb_func_start sub_02053718
sub_02053718: ; 0x02053718
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r7, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #5
	bhi _02053802
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205374C: ; jump table
	.short _02053758 - _0205374C - 2 ; case 0
	.short _02053790 - _0205374C - 2 ; case 1
	.short _020537BA - _0205374C - 2 ; case 2
	.short _020537D8 - _0205374C - 2 ; case 3
	.short _020537EC - _0205374C - 2 ; case 4
	.short _020537F8 - _0205374C - 2 ; case 5
_02053758:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r4, #0xc]
	bl sub_0202878C
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B634
	add r4, #0x9c
	str r0, [r4, #0]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_02053790:
	add r0, r4, #0
	add r1, r5, #4
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r4, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020534BC
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537BA:
	add r0, r4, #0
	bl sub_0205B33C
	str r0, [r4, #0x7c]
	bl sub_0205C22C
	add r4, #0x80
	str r0, [r4, #0]
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537D8:
	mov r1, #0
	str r1, [r5, #0]
	add r0, r4, #0
	add r2, r5, #0
	bl ov5_021E15A8
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537EC:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02053802
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537F8:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053802:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053718

	thumb_func_start sub_02053808
sub_02053808: ; 0x02053808
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A2DC
	cmp r0, #0
	bne _02053840
	add r0, r4, #0
	bl sub_02053518
	cmp r0, #0
	beq _02053838
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02053540
	add r0, r5, #0
	bl sub_0206AD9C
	b _02053840
_02053838:
	add r0, r4, #0
	bl sub_02053704
	pop {r3, r4, r5, pc}
_02053840:
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r2, r0, #0
	mov r1, #0
	ldr r0, _02053870 ; =0x000001D2
	str r1, [r2, #0]
	str r0, [r2, #4]
	sub r0, r1, #1
	str r0, [r2, #8]
	mov r0, #8
	str r0, [r2, #0xc]
	mov r0, #0xe
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	mov r0, #2
	str r0, [r4, #0x70]
	ldr r1, _02053874 ; =sub_02053718
	add r0, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	nop
_02053870: .word 0x000001D2
_02053874: .word sub_02053718
	thumb_func_end sub_02053808

	thumb_func_start sub_02053878
sub_02053878: ; 0x02053878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020538F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205389C: ; jump table
	.short _020538A4 - _0205389C - 2 ; case 0
	.short _020538C0 - _0205389C - 2 ; case 1
	.short _020538D0 - _0205389C - 2 ; case 2
	.short _020538EE - _0205389C - 2 ; case 3
_020538A4:
	ldr r0, _020538FC ; =0x00000603
	bl sub_02005748
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055974
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538C0:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538D0:
	bl sub_02005684
	cmp r0, #0
	bne _020538F6
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_020559CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538EE:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020538F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020538FC: .word 0x00000603
	thumb_func_end sub_02053878

	thumb_func_start sub_02053900
sub_02053900: ; 0x02053900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldmia r4!, {r0, r1}
	add r3, r2, #4
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _0205392C ; =sub_02053878
	str r0, [r3, #0]
	add r0, r5, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205392C: .word sub_02053878
	thumb_func_end sub_02053900

	thumb_func_start sub_02053930
sub_02053930: ; 0x02053930
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053952
	cmp r0, #1
	beq _02053966
	cmp r0, #2
	beq _0205398C
	b _0205399C
_02053952:
	add r0, r5, #0
	bl sub_02053374
	add r0, r5, #0
	bl sub_02053468
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205399C
_02053966:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_0205311C
	add r0, r5, #0
	bl sub_020533CC
	add r0, r5, #0
	mov r1, #0
	bl sub_020531C0
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205399C
_0205398C:
	add r0, r5, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205399C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053930

	thumb_func_start sub_020539A0
sub_020539A0: ; 0x020539A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _020539C6
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_020539C6:
	mov r0, #0
	str r0, [r4, #0]
	ldmia r5!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _020539E4 ; =sub_02053930
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020539E4: .word sub_02053930
	thumb_func_end sub_020539A0

	thumb_func_start sub_020539E8
sub_020539E8: ; 0x020539E8
	push {lr}
	sub sp, #0x14
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	str r3, [sp, #8]
	str r1, [sp, #0x10]
	add r1, sp, #0
	bl sub_020539A0
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020539E8

	thumb_func_start sub_02053A04
sub_02053A04: ; 0x02053A04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _02053A7C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053A28: ; jump table
	.short _02053A30 - _02053A28 - 2 ; case 0
	.short _02053A46 - _02053A28 - 2 ; case 1
	.short _02053A56 - _02053A28 - 2 ; case 2
	.short _02053A74 - _02053A28 - 2 ; case 3
_02053A30:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A46:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A56:
	bl sub_02005684
	cmp r0, #0
	bne _02053A7C
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A74:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02053A7C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053A04

	thumb_func_start sub_02053A80
sub_02053A80: ; 0x02053A80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r5, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [sp, #0x18]
	str r6, [r2, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, _02053AB0 ; =sub_02053A04
	str r0, [r2, #0x14]
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02053AB0: .word sub_02053A04
	thumb_func_end sub_02053A80

	thumb_func_start sub_02053AB4
sub_02053AB4: ; 0x02053AB4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	add r3, r2, #0
	add r5, sp, #0
	str r0, [r2, #4]
	ldmia r5!, {r0, r1}
	add r3, #8
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053AF8 ; =sub_02053B44
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02050904
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02053AF8: .word sub_02053B44
	thumb_func_end sub_02053AB4

	thumb_func_start sub_02053AFC
sub_02053AFC: ; 0x02053AFC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	add r3, r2, #0
	add r5, sp, #0
	str r0, [r2, #4]
	ldmia r5!, {r0, r1}
	add r3, #8
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053B40 ; =sub_02053B44
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02050924
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02053B40: .word sub_02053B44
	thumb_func_end sub_02053AFC

	thumb_func_start sub_02053B44
sub_02053B44: ; 0x02053B44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, [r4, #0]
	add r5, #8
	cmp r1, #3
	bhi _02053BD0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053B6C: ; jump table
	.short _02053B74 - _02053B6C - 2 ; case 0
	.short _02053B8A - _02053B6C - 2 ; case 1
	.short _02053BA4 - _02053B6C - 2 ; case 2
	.short _02053BC8 - _02053B6C - 2 ; case 3
_02053B74:
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02055644
	add r0, r7, #0
	bl sub_02053BD4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053B8A:
	ldr r0, [r6, #0x3c]
	mov r1, #0
	bl sub_0205EB58
	add r1, r4, #0
	add r0, r7, #0
	add r1, #8
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053BA4:
	bl sub_02005684
	cmp r0, #0
	bne _02053BD0
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_0207056C
	add r0, r7, #0
	bl sub_02053C10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053BC8:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053BD0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02053B44

	thumb_func_start sub_02053BD4
sub_02053BD4: ; 0x02053BD4
	ldr r3, _02053BDC ; =sub_02050944
	ldr r1, _02053BE0 ; =sub_02053BE4
	mov r2, #0
	bx r3
	; .align 2, 0
_02053BDC: .word sub_02050944
_02053BE0: .word sub_02053BE4
	thumb_func_end sub_02053BD4

	thumb_func_start sub_02053BE4
sub_02053BE4: ; 0x02053BE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053BFA
	cmp r0, #1
	beq _02053C08
	b _02053C0C
_02053BFA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C0C
_02053C08:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053C0C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053BE4

	thumb_func_start sub_02053C10
sub_02053C10: ; 0x02053C10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _02053C24 ; =sub_02053C28
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02053C24: .word sub_02053C28
	thumb_func_end sub_02053C10

	thumb_func_start sub_02053C28
sub_02053C28: ; 0x02053C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02053C48
	cmp r1, #1
	beq _02053C56
	cmp r1, #2
	beq _02053C68
	b _02053C6C
_02053C48:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C6C
_02053C56:
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_02053C70
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C6C
_02053C68:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053C6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053C28

	thumb_func_start sub_02053C70
sub_02053C70: ; 0x02053C70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02053C92
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02053C92:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_02245CCC
	str r0, [r4, #4]
	ldr r1, _02053CB0 ; =sub_02053CB4
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02053CB0: .word sub_02053CB4
	thumb_func_end sub_02053C70

	thumb_func_start sub_02053CB4
sub_02053CB4: ; 0x02053CB4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov6_02245CF0
	cmp r0, #1
	bne _02053CD0
	ldr r0, [r4, #4]
	bl ov6_02245CFC
	mov r0, #1
	pop {r4, pc}
_02053CD0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02053CB4

	thumb_func_start sub_02053CD4
sub_02053CD4: ; 0x02053CD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x20
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r4, [r2, #4]
	str r0, [r2, #8]
	add r3, r2, #0
	ldmia r5!, {r0, r1}
	add r3, #0xc
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053D08 ; =sub_02053D0C
	str r0, [r3, #0]
	add r0, r6, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02053D08: .word sub_02053D0C
	thumb_func_end sub_02053CD4

	thumb_func_start sub_02053D0C
sub_02053D0C: ; 0x02053D0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r6, r4, #0
	ldr r1, [r4, #0]
	add r6, #0xc
	cmp r1, #3
	bhi _02053DB0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053D34: ; jump table
	.short _02053D3C - _02053D34 - 2 ; case 0
	.short _02053D52 - _02053D34 - 2 ; case 1
	.short _02053D6C - _02053D34 - 2 ; case 2
	.short _02053DA8 - _02053D34 - 2 ; case 3
_02053D3C:
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl sub_02055644
	add r0, r7, #0
	bl sub_02053DB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053D52:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205EB58
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xc
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053D6C:
	bl sub_02005684
	cmp r0, #0
	bne _02053DB0
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl sub_02055670
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _02053D8A
	add r0, r5, #0
	bl sub_02070588
	b _02053D9A
_02053D8A:
	cmp r0, #1
	bhi _02053D96
	add r0, r5, #0
	bl sub_020705A4
	b _02053D9A
_02053D96:
	bl sub_02022974
_02053D9A:
	add r0, r7, #0
	bl sub_02053DF0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053DA8:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053DB0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02053D0C

	thumb_func_start sub_02053DB4
sub_02053DB4: ; 0x02053DB4
	ldr r3, _02053DBC ; =sub_02050944
	ldr r1, _02053DC0 ; =sub_02053DC4
	mov r2, #0
	bx r3
	; .align 2, 0
_02053DBC: .word sub_02050944
_02053DC0: .word sub_02053DC4
	thumb_func_end sub_02053DB4

	thumb_func_start sub_02053DC4
sub_02053DC4: ; 0x02053DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053DDA
	cmp r0, #1
	beq _02053DE8
	b _02053DEC
_02053DDA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DEC
_02053DE8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053DEC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053DC4

	thumb_func_start sub_02053DF0
sub_02053DF0: ; 0x02053DF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _02053E04 ; =sub_02053E08
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02053E04: .word sub_02053E08
	thumb_func_end sub_02053DF0

	thumb_func_start sub_02053E08
sub_02053E08: ; 0x02053E08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053E30
	cmp r0, #1
	beq _02053E3E
	cmp r0, #2
	beq _02053E52
	b _02053E56
_02053E30:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053E56
_02053E3E:
	add r0, r6, #0
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_02053E5C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053E56
_02053E52:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02053E56:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02053E08

	thumb_func_start sub_02053E5C
sub_02053E5C: ; 0x02053E5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02053E7E
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02053E7E:
	ldr r2, [r6, #4]
	add r0, r4, #0
	mov r1, #4
	bl ov6_022472C8
	add r2, r0, #0
	ldr r1, _02053E94 ; =0x022472E9
	add r0, r5, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02053E94: .word 0x022472E9
	thumb_func_end sub_02053E5C

	thumb_func_start sub_02053E98
sub_02053E98: ; 0x02053E98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, [r4, #0]
	add r5, #8
	cmp r1, #6
	bhi _02053F52
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02053EC0: ; jump table
	.short _02053ECE - _02053EC0 - 2 ; case 0
	.short _02053EE0 - _02053EC0 - 2 ; case 1
	.short _02053EFC - _02053EC0 - 2 ; case 2
	.short _02053F0C - _02053EC0 - 2 ; case 3
	.short _02053F2A - _02053EC0 - 2 ; case 4
	.short _02053F3E - _02053EC0 - 2 ; case 5
	.short _02053F4A - _02053EC0 - 2 ; case 6
_02053ECE:
	add r0, r7, #0
	mov r1, #1
	add r2, r4, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053EE0:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02053F52
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02055644
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053EFC:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F0C:
	bl sub_02005684
	cmp r0, #0
	bne _02053F52
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F2A:
	mov r1, #0
	str r1, [r4, #4]
	add r0, r7, #0
	add r2, r4, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F3E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02053F52
	add r0, r1, #1
	str r0, [r4, #0]
	b _02053F52
_02053F4A:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053F52:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053E98

	thumb_func_start sub_02053F58
sub_02053F58: ; 0x02053F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x1c
	add r6, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r7, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	mov r1, #0
	add r2, r7, #0
	str r4, [sp]
	str r6, [sp, #4]
	add r3, sp, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _02053FA8 ; =sub_02053E98
	str r0, [r2, #0]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050904
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02053FA8: .word sub_02053E98
	thumb_func_end sub_02053F58

	thumb_func_start sub_02053FAC
sub_02053FAC: ; 0x02053FAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018184
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	ldr r0, [r6, #0x70]
	cmp r0, #1
	bne _02053FE4
	ldr r0, [r4, #0]
	str r0, [r5, #8]
	sub r0, r1, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x14]
	b _02054060
_02053FE4:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020534EC
	mov r0, #2
	str r0, [r5, #8]
	sub r0, r0, #3
	str r0, [r5, #0xc]
	ldr r1, [r4, #8]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	ldr r1, [r4, #0xc]
	sub r6, r0, #1
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	sub r4, r0, #6
	cmp r6, #0
	bge _02054014
	bl sub_02022974
_02054014:
	cmp r4, #0
	bge _0205401C
	bl sub_02022974
_0205401C:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0205402E
	mov r0, #8
	b _02054030
_0205402E:
	mov r0, #0x17
_02054030:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	bne _02054042
	mov r1, #8
	b _02054044
_02054042:
	mov r1, #0x17
_02054044:
	lsr r2, r6, #0x1f
	add r2, r6, r2
	asr r2, r2, #1
	add r6, r2, #1
	lsr r2, r4, #0x1f
	add r2, r4, r2
	asr r2, r2, #1
	add r3, r2, #3
	lsl r2, r6, #5
	add r0, r0, r2
	str r0, [r5, #0x10]
	lsl r0, r3, #5
	add r0, r1, r0
	str r0, [r5, #0x14]
_02054060:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053FAC

	thumb_func_start sub_02054064
sub_02054064: ; 0x02054064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02053FAC
	add r4, r0, #0
	beq _02054080
	add r0, r5, #0
	bl sub_02054428
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
_02054080:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054064

	thumb_func_start sub_02054084
sub_02054084: ; 0x02054084
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bhi _0205416C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020540AA: ; jump table
	.short _020540C4 - _020540AA - 2 ; case 0
	.short _0205411C - _020540AA - 2 ; case 1
	.short _02054158 - _020540AA - 2 ; case 2
	.short _0205419E - _020540AA - 2 ; case 3
	.short _020541E2 - _020540AA - 2 ; case 4
	.short _02054210 - _020540AA - 2 ; case 5
	.short _02054222 - _020540AA - 2 ; case 6
	.short _02054232 - _020540AA - 2 ; case 7
	.short _02054246 - _020540AA - 2 ; case 8
	.short _02054254 - _020540AA - 2 ; case 9
	.short _02054282 - _020540AA - 2 ; case 10
	.short _020542A4 - _020540AA - 2 ; case 11
	.short _020542D6 - _020540AA - 2 ; case 12
_020540C4:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xdd
	mov r3, #0xb
	bl sub_0200B144
	add r6, r0, #0
	mov r1, #0x7c
	bl sub_0200B1EC
	str r0, [r4, #0x34]
	add r0, r6, #0
	bl sub_0200B190
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x24
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x24
	bl sub_0205D944
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x24
	mov r3, #1
	bl sub_0205D994
	add r1, r4, #0
	add r1, #0x38
	strb r0, [r1]
	mov r0, #1
	str r0, [r4, #0]
	b _020542F2
_0205411C:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #1
	bne _0205416C
	ldr r0, [r4, #0x34]
	bl sub_020237BC
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _020542F8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	mov r3, #0xb
	str r3, [sp]
	ldr r0, [r5, #8]
	ldr r1, _020542FC ; =0x020EC3A0
	ldr r2, _020542F8 ; =0x000003D9
	bl sub_02002100
	str r0, [r4, #0x3c]
	mov r0, #2
	str r0, [r4, #0]
	b _020542F2
_02054158:
	ldr r0, [r4, #0x3c]
	mov r1, #0xb
	bl sub_02002114
	cmp r0, #0
	beq _0205416E
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02054186
_0205416C:
	b _020542F2
_0205416E:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x24
	bl sub_0201A8FC
	mov r0, #3
	str r0, [r4, #0]
	b _020542F2
_02054186:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x24
	bl sub_0201A8FC
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_0205419E:
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _020541B6
	mov r2, #0
	ldr r1, _02054300 ; =0x000007F2
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020541DC
_020541B6:
	ldr r0, [r5, #0xc]
	bl sub_020287E0
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #3
	bl ov5_021E1F98
	str r0, [r4, #0x20]
	bl ov5_021E1F04
	add r3, r4, #0
	mov r2, #0
	ldr r1, _02054304 ; =0x000007D5
	add r0, r6, #0
	add r3, #0x1c
	strh r2, [r4, #0x1c]
	bl sub_0203E8E0
_020541DC:
	mov r0, #4
	str r0, [r4, #0]
	b _020542F2
_020541E2:
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _020541F2
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_020541F2:
	ldr r0, [r4, #0x20]
	bl ov5_021E1F7C
	ldr r0, [r4, #0x20]
	bl ov5_021E1FF4
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _0205420A
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_0205420A:
	mov r0, #6
	str r0, [r4, #0]
	b _020542F2
_02054210:
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02054222:
	mov r0, #0
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054232:
	add r0, r6, #0
	mov r1, #0
	bl sub_0205444C
	cmp r0, #0
	beq _020542F2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054246:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054254:
	mov r0, #1
	str r0, [r5, #0x70]
	ldr r0, _02054308 ; =0x00000017
	mov r1, #2
	bl sub_02006590
	add r0, r5, #0
	bl ov23_022499E8
	ldr r0, [r4, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, r6, #0
	sub r2, r2, #2
	bl sub_020539E8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054282:
	bl sub_02005684
	cmp r0, #0
	bne _020542F2
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	bl sub_02055414
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_020542A4:
	add r0, r6, #0
	mov r1, #1
	bl sub_0205444C
	cmp r0, #0
	beq _020542F2
	bl ov23_02249A2C
	add r0, r5, #0
	bl ov23_02249404
	mov r1, #0
	str r0, [r5, #0x6c]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x1e
	sub r2, #0x10
	mov r3, #0x19
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_020542D6:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _020542F2
	mov r0, #1
	bl ov23_0224DBF4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020542F2:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020542F8: .word 0x000003D9
_020542FC: .word 0x020EC3A0
_02054300: .word 0x000007F2
_02054304: .word 0x000007D5
_02054308: .word 0x00000017
	thumb_func_end sub_02054084

	thumb_func_start sub_0205430C
sub_0205430C: ; 0x0205430C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #7
	bhi _0205441C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02054332: ; jump table
	.short _02054342 - _02054332 - 2 ; case 0
	.short _0205436C - _02054332 - 2 ; case 1
	.short _02054394 - _02054332 - 2 ; case 2
	.short _020543A8 - _02054332 - 2 ; case 3
	.short _020543B6 - _02054332 - 2 ; case 4
	.short _020543DC - _02054332 - 2 ; case 5
	.short _020543FE - _02054332 - 2 ; case 6
	.short _02054412 - _02054332 - 2 ; case 7
_02054342:
	mov r0, #0
	bl ov23_0224DBF4
	bl ov23_02249A5C
	ldr r0, [r5, #0x6c]
	bl ov23_0224942C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1e
	add r1, r0, #0
	sub r1, #0x2e
	mov r2, #0
	mov r3, #1
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_0205436C:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _0205441C
	bl sub_02035E38
	cmp r0, #0
	bne _0205441C
	mov r0, #0
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_02054394:
	add r0, r6, #0
	mov r1, #2
	bl sub_0205444C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543A8:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543B6:
	mov r0, #0
	str r0, [r5, #0x70]
	ldr r0, _02054424 ; =0x00000017
	bl sub_02006514
	ldr r0, [r4, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, r6, #0
	sub r2, r2, #2
	bl sub_020539E8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543DC:
	bl sub_02005684
	cmp r0, #0
	bne _0205441C
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	bl sub_02055414
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543FE:
	add r0, r6, #0
	mov r1, #3
	bl sub_0205444C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_02054412:
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205441C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02054424: .word 0x00000017
	thumb_func_end sub_0205430C

	thumb_func_start sub_02054428
sub_02054428: ; 0x02054428
	push {r3, lr}
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _02054434
	ldr r0, _02054444 ; =sub_02054084
	pop {r3, pc}
_02054434:
	cmp r0, #1
	bne _0205443C
	ldr r0, _02054448 ; =sub_0205430C
	pop {r3, pc}
_0205443C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02054444: .word sub_02054084
_02054448: .word sub_0205430C
	thumb_func_end sub_02054428

	thumb_func_start sub_0205444C
sub_0205444C: ; 0x0205444C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	beq _0205446E
	cmp r0, #1
	beq _02054484
	b _0205448E
_0205446E:
	add r2, r4, #0
	str r5, [r4, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	add r2, #0x18
	bl sub_0205CFDC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0205448E
_02054484:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205448E
	str r5, [r4, #4]
	mov r5, #1
_0205448E:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205444C

	thumb_func_start sub_02054494
sub_02054494: ; 0x02054494
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020544B6
	cmp r0, #1
	beq _020544C4
	cmp r0, #2
	beq _020544DC
	b _020544EC
_020544B6:
	add r0, r5, #0
	bl sub_02053374
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020544EC
_020544C4:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_0205311C
	add r0, r5, #0
	mov r1, #2
	bl sub_0203F5C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020544EC
_020544DC:
	add r0, r5, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020544EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02054494

	thumb_func_start sub_020544F0
sub_020544F0: ; 0x020544F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _02054516
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02054516:
	mov r0, #0
	str r0, [r4, #0]
	ldmia r5!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02054534 ; =sub_02054494
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054534: .word sub_02054494
	thumb_func_end sub_020544F0

	thumb_func_start sub_02054538
sub_02054538: ; 0x02054538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	add r6, r7, #0
	ldr r0, [r4, #0]
	add r6, #8
	cmp r0, #5
	bhi _020545E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02054568: ; jump table
	.short _02054574 - _02054568 - 2 ; case 0
	.short _0205458E - _02054568 - 2 ; case 1
	.short _020545A2 - _02054568 - 2 ; case 2
	.short _020545B2 - _02054568 - 2 ; case 3
	.short _020545D0 - _02054568 - 2 ; case 4
	.short _020545DE - _02054568 - 2 ; case 5
_02054574:
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055644
	ldr r0, [sp]
	mov r1, #1
	add r2, r7, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_0205458E:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _020545E8
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545A2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545B2:
	bl sub_02005684
	cmp r0, #0
	bne _020545E8
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545D0:
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545DE:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020545E8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054538

	thumb_func_start sub_020545EC
sub_020545EC: ; 0x020545EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	add r2, r6, #0
	ldmia r4!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_0205B388
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0205C2E0
	mov r0, #0
	str r0, [r5, #0x70]
	ldr r1, _02054644 ; =sub_02054538
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02050904
	mov r0, #0
	str r0, [r5, #0x7c]
	pop {r4, r5, r6, pc}
	nop
_02054644: .word sub_02054538
	thumb_func_end sub_020545EC

	thumb_func_start sub_02054648
sub_02054648: ; 0x02054648
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	add r6, r7, #0
	ldr r0, [r4, #0]
	add r6, #8
	cmp r0, #6
	bhi _02054702
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02054678: ; jump table
	.short _02054686 - _02054678 - 2 ; case 0
	.short _0205469C - _02054678 - 2 ; case 1
	.short _020546AA - _02054678 - 2 ; case 2
	.short _020546BA - _02054678 - 2 ; case 3
	.short _020546D8 - _02054678 - 2 ; case 4
	.short _020546EC - _02054678 - 2 ; case 5
	.short _020546F8 - _02054678 - 2 ; case 6
_02054686:
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055644
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_0205469C:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546AA:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546BA:
	bl sub_02005684
	cmp r0, #0
	bne _02054702
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546D8:
	mov r1, #0
	ldr r0, [sp]
	str r1, [r7, #4]
	add r2, r7, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546EC:
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02054702
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546F8:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02054702:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054648

	thumb_func_start sub_02054708
sub_02054708: ; 0x02054708
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020534EC
	ldr r0, _02054770 ; =0x000001D2
	str r0, [r4, #8]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0205B33C
	str r0, [r5, #0x7c]
	bl sub_0205C22C
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r0, #2
	str r0, [r5, #0x70]
	ldr r1, _02054774 ; =sub_02054648
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054770: .word 0x000001D2
_02054774: .word sub_02054648
	thumb_func_end sub_02054708

	thumb_func_start sub_02054778
sub_02054778: ; 0x02054778
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020547F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205479C: ; jump table
	.short _020547A4 - _0205479C - 2 ; case 0
	.short _020547C0 - _0205479C - 2 ; case 1
	.short _020547D0 - _0205479C - 2 ; case 2
	.short _020547EE - _0205479C - 2 ; case 3
_020547A4:
	ldr r0, _020547FC ; =0x00000603
	bl sub_02005748
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055974
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547C0:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547D0:
	bl sub_02005684
	cmp r0, #0
	bne _020547F6
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547EE:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020547F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020547FC: .word 0x00000603
	thumb_func_end sub_02054778

	thumb_func_start sub_02054800
sub_02054800: ; 0x02054800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02050A60
	str r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r1, [sp]
	bl sub_020534EC
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x70]
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r2, r0, #0
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	str r5, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0
	str r6, [sp, #0xc]
	add r4, sp, #4
	str r0, [r2, #0]
	ldmia r4!, {r0, r1}
	add r3, r2, #4
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _02054860 ; =sub_02054778
	str r0, [r3, #0]
	add r0, r7, #0
	bl sub_02050944
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054860: .word sub_02054778
	thumb_func_end sub_02054800

	thumb_func_start sub_02054864
sub_02054864: ; 0x02054864
	push {r4, lr}
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r1, r0, #0
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x10]
	bl sub_02053900
	pop {r4, pc}
	thumb_func_end sub_02054864

	thumb_func_start sub_02054884
sub_02054884: ; 0x02054884
	push {r4, lr}
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054898
	mov r0, #0
	pop {r4, pc}
_02054898:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020548AA
	mov r0, #1
	pop {r4, pc}
_020548AA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054884

	thumb_func_start sub_020548B0
sub_020548B0: ; 0x020548B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02025E38
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_0207A268
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r3, [sp, #0x3c]
	add r0, r4, #0
	mov r2, #4
	str r5, [sp, #4]
	bl sub_02077E64
	add r0, sp, #0x28
	ldrh r0, [r0, #0x10]
	mov r1, #6
	add r2, sp, #0x1c
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02074B30
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0207A048
	add r5, r0, #0
	beq _02054924
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F180
_02054924:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020548B0

	thumb_func_start sub_02054930
sub_02054930: ; 0x02054930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r0, r4, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02025E38
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0207A268
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl sub_02017070
	mov r1, #4
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021E6CF0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A048
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054930

	thumb_func_start sub_02054988
sub_02054988: ; 0x02054988
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	lsl r2, r5, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_020771F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054988

	thumb_func_start sub_020549A0
sub_020549A0: ; 0x020549A0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	bl sub_0207A0F8
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _02054A0A
_020549B2:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054A04
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _02054A04
_02054A00:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A04:
	add r6, r6, #1
	cmp r6, r7
	blt _020549B2
_02054A0A:
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020549A0

	thumb_func_start sub_02054A10
sub_02054A10: ; 0x02054A10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207A0F8
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
	cmp r6, #0
	ble _02054A3A
_02054A22:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	bl sub_02054884
	cmp r0, #0
	beq _02054A34
	add r5, r5, #1
_02054A34:
	add r4, r4, #1
	cmp r4, r6
	blt _02054A22
_02054A3A:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054A10

	thumb_func_start sub_02054A40
sub_02054A40: ; 0x02054A40
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A0F8
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _02054A6C
_02054A50:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r7, r0, #0
	bl sub_02054884
	cmp r0, #0
	beq _02054A66
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A66:
	add r4, r4, #1
	cmp r4, r5
	blt _02054A50
_02054A6C:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054A40

	thumb_func_start sub_02054A74
sub_02054A74: ; 0x02054A74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r4, _02054AAC ; =0x00000000
	beq _02054AA8
_02054A84:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054A9E
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A9E:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _02054A84
_02054AA8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054AAC: .word 0x00000000
	thumb_func_end sub_02054A74

	thumb_func_start sub_02054AB0
sub_02054AB0: ; 0x02054AB0
	push {r3, lr}
	bl sub_02054A10
	cmp r0, #2
	blt _02054ABE
	mov r0, #1
	pop {r3, pc}
_02054ABE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02054AB0

	thumb_func_start sub_02054AC4
sub_02054AC4: ; 0x02054AC4
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	add r1, sp, #0
	add r7, r0, #0
	strb r2, [r1]
	bl sub_0207A0F8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02054B00
_02054ADA:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054AFA
	add r0, r4, #0
	mov r1, #0x19
	add r2, sp, #0
	bl sub_02074B30
_02054AFA:
	add r5, r5, #1
	cmp r5, r6
	blt _02054ADA
_02054B00:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054AC4

	thumb_func_start sub_02054B04
sub_02054B04: ; 0x02054B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r7, #0
	bl sub_0207A0F8
	add r4, r7, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _02054B78
_02054B1C:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02054884
	cmp r0, #0
	beq _02054B70
	add r0, r5, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #0x88
	tst r0, r1
	beq _02054B70
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	cmp r0, #1
	bls _02054B52
	sub r0, r0, #1
	str r0, [sp, #0xc]
_02054B52:
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02054B6E
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #7
	add r6, r6, #1
	bl sub_02075C74
_02054B6E:
	add r7, r7, #1
_02054B70:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _02054B1C
_02054B78:
	cmp r6, #0
	beq _02054B82
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02054B82:
	cmp r7, #0
	beq _02054B8C
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02054B8C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054B04

	thumb_func_start sub_02054B94
sub_02054B94: ; 0x02054B94
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xa0
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	mov r1, #0x88
	tst r0, r1
	beq _02054BCA
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02054BCA
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02054BCA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02054B94

	thumb_func_start sub_02054BD0
sub_02054BD0: ; 0x02054BD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	cmp r0, #0
	bne _02054BF0
	ldr r1, _02054BF4 ; =0x000080E2
	mov r0, #0xb
	bl sub_02018144
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x58]
	add r2, r4, #0
	bl sub_02054C18
_02054BF0:
	pop {r3, r4, r5, pc}
	nop
_02054BF4: .word 0x000080E2
	thumb_func_end sub_02054BD0

	thumb_func_start sub_02054BF8
sub_02054BF8: ; 0x02054BF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02054C0A
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x58]
_02054C0A:
	pop {r4, pc}
	thumb_func_end sub_02054BF8

	thumb_func_start sub_02054C0C
sub_02054C0C: ; 0x02054C0C
	ldrb r0, [r1, r0]
	add r2, r1, #0
	add r2, #0xe2
	lsl r0, r0, #0xb
	add r0, r2, r0
	bx lr
	thumb_func_end sub_02054C0C

	thumb_func_start sub_02054C18
sub_02054C18: ; 0x02054C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	mov r2, #0
	add r1, sp, #0x18
	strb r2, [r1]
	bl sub_02039E10
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_02039E20
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _02054C78
	ldr r7, [sp, #0x14]
_02054C42:
	mov r5, #0
	cmp r6, #0
	ble _02054C6A
_02054C48:
	add r0, r5, r7
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02039DEC
	add r1, sp, #0x18
	add r1, #2
	add r2, sp, #0x18
	bl sub_02054CC4
	ldr r1, [sp, #8]
	add r5, r5, #1
	strb r0, [r1, r4]
	cmp r5, r6
	blt _02054C48
_02054C6A:
	ldr r0, [sp, #0x14]
	add r7, r7, r6
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02054C42
_02054C78:
	mov r0, #0x43
	mov r1, #0xb
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02054CBA
	ldr r0, [sp, #8]
	add r4, sp, #0x18
	add r0, #0xe2
	add r4, #2
	add r5, r6, #0
	str r0, [sp, #8]
_02054C96:
	ldr r0, [sp, #8]
	lsl r1, r5, #1
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	mov r2, #0x10
	add r0, r7, #0
	lsl r3, r2, #7
	bl sub_02006DC8
	mov r0, #1
	lsl r0, r0, #0xa
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blt _02054C96
_02054CBA:
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02054C18

	thumb_func_start sub_02054CC4
sub_02054CC4: ; 0x02054CC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	ldrb r0, [r7]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _02054CEA
_02054CD4:
	lsl r1, r4, #1
	ldrh r1, [r6, r1]
	cmp r5, r1
	bne _02054CE0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054CE0:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, r0
	blo _02054CD4
_02054CEA:
	cmp r4, #0x10
	blo _02054CF2
	bl sub_02022974
_02054CF2:
	lsl r0, r4, #1
	strh r5, [r6, r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054CC4

	thumb_func_start sub_02054D00
sub_02054D00: ; 0x02054D00
	cmp r0, r1
	blt _02054D08
	sub r0, r0, r1
	bx lr
_02054D08:
	sub r0, r1, r0
	bx lr
	thumb_func_end sub_02054D00

	thumb_func_start sub_02054D0C
sub_02054D0C: ; 0x02054D0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	add r1, sp, #0x2c
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #8]
	bl ov5_021EA6BC
	ldr r0, [sp, #0x30]
	sub r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	sub r0, r6, r0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	str r4, [sp, #0x3c]
	sub r0, r7, r0
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	str r0, [sp, #0x24]
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r5, #0
	sub r1, r6, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	add r2, #0xa0
	sub r1, r7, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0]
	add r3, sp, #0x28
	bl ov5_021EF314
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	lsr r0, r0, #5
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsr r0, r0, #5
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	sub r1, r6, r0
	ldr r0, [sp, #0x2c]
	sub r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	sub r1, r7, r0
	ldr r0, [sp, #0x34]
	sub r0, r1, r0
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x40]
	add r2, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	bl ov5_021E935C
	ldr r2, [sp, #0x10]
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #8]
	mul r3, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r3
	bl ov5_021E9390
	add r1, r0, #0
	cmp r1, #3
	bls _02054DCE
	add r6, r4, #0
	b _02054DEA
_02054DCE:
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	bl ov5_021E9610
	add r3, r0, #0
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x40]
	bl ov5_021EED9C
	add r6, r0, #0
_02054DEA:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02054E34
	add r0, sp, #0x28
	add r5, #0xa0
	ldrb r0, [r0]
	ldr r1, [r5, #0]
	bl ov5_021EF35C
	add r5, r0, #0
	cmp r6, #0
	beq _02054E2E
	ldr r4, [sp, #0x3c]
	cmp r5, r4
	bgt _02054E0C
	mov r1, #1
	b _02054E40
_02054E0C:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02054D00
	add r4, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054D00
	cmp r4, r0
	bgt _02054E28
	ldr r4, [sp, #0x3c]
	mov r1, #1
	b _02054E40
_02054E28:
	add r4, r5, #0
	mov r1, #2
	b _02054E40
_02054E2E:
	mov r1, #2
	add r4, r5, #0
	b _02054E40
_02054E34:
	cmp r6, #0
	beq _02054E3E
	mov r1, #1
	ldr r4, [sp, #0x3c]
	b _02054E40
_02054E3E:
	mov r1, #0
_02054E40:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _02054E48
	strb r1, [r0]
_02054E48:
	ldr r0, [sp, #0x30]
	add r0, r4, r0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02054D0C

	thumb_func_start sub_02054E50
sub_02054E50: ; 0x02054E50
	push {r3, lr}
	asr r1, r2, #0xf
	lsr r1, r1, #0x10
	add r1, r2, r1
	asr r2, r3, #0xf
	lsr r2, r2, #0x10
	add r2, r3, r2
	ldr r0, [r0, #0x28]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov5_021E9580
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _02054E7E
	cmp r0, #0
	beq _02054E78
	mov r1, #1
	b _02054E7A
_02054E78:
	mov r1, #0
_02054E7A:
	ldr r0, [sp, #8]
	strb r1, [r0]
_02054E7E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02054E50

	thumb_func_start sub_02054E84
sub_02054E84: ; 0x02054E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, [r0, #0x28]
	add r5, r1, #0
	add r0, r7, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov5_021EA6AC
	sub r0, r5, r0
	str r0, [sp, #4]
	add r0, r7, #0
	bl ov5_021EA6B4
	sub r0, r6, r0
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, sp, #8
	bl ov5_021E9580
	cmp r0, #0
	bne _02054EBE
	mov r0, #0xff
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02054EBE:
	add r1, sp, #8
	ldrb r1, [r1]
	add r0, r7, #0
	bl ov5_021E9624
	ldr r1, [sp, #4]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1b
	sub r2, r2, r3
	mov r1, #0x1b
	ror r2, r1
	add r2, r3, r2
	ldr r3, [sp]
	lsr r5, r3, #0x1f
	lsl r3, r3, #0x1b
	sub r3, r3, r5
	ror r3, r1
	add r1, r5, r3
	lsl r1, r1, #5
	add r1, r2, r1
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054E84

	thumb_func_start sub_02054EF4
sub_02054EF4: ; 0x02054EF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x2c]
	add r4, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	bl sub_02039E10
	asr r2, r4, #4
	asr r1, r5, #4
	lsr r2, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r4, r2
	add r1, r5, r1
	asr r2, r2, #5
	asr r1, r1, #5
	mul r0, r2
	add r0, r1, r0
	ldr r1, [r6, #0x58]
	bl sub_02054C0C
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r3, #0x1b
	ror r1, r3
	add r1, r2, r1
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1b
	sub r2, r2, r5
	ror r2, r3
	add r2, r5, r2
	lsl r2, r2, #5
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054EF4

	thumb_func_start sub_02054F44
sub_02054F44: ; 0x02054F44
	push {r3, lr}
	cmp r1, #0
	bne _02054F50
	ldr r1, _02054F60 ; =0x020EC3D0
	str r1, [r0, #0]
	pop {r3, pc}
_02054F50:
	cmp r1, #1
	bne _02054F5A
	ldr r1, _02054F64 ; =0x020EC3D8
	str r1, [r0, #0]
	pop {r3, pc}
_02054F5A:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
_02054F60: .word 0x020EC3D0
_02054F64: .word 0x020EC3D8
	thumb_func_end sub_02054F44

	thumb_func_start sub_02054F68
sub_02054F68: ; 0x02054F68
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x5c]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054F8E
	add r0, sp, #0
	ldrh r0, [r0]
	asr r0, r0, #0xf
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	beq _02054F90
_02054F8E:
	mov r0, #0
_02054F90:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02054F68

	thumb_func_start sub_02054F94
sub_02054F94: ; 0x02054F94
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x5c]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054FB4
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, pc}
_02054FB4:
	mov r0, #0xff
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054F94

	thumb_func_start sub_02054FBC
sub_02054FBC: ; 0x02054FBC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [r0, #0x5c]
	ldr r4, [r4, #0]
	blx r4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054FBC

	thumb_func_start sub_02054FD0
sub_02054FD0: ; 0x02054FD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [sp, #0x10]
	mov r5, #2
	str r1, [sp]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x10
	lsl r5, r5, #0xe
	lsl r3, r3, #0x10
	add r2, r2, r5
	add r3, r3, r5
	bl sub_02054FBC
	ldr r1, [r4, #4]
	cmp r0, r1
	bge _02054FF8
	mov r4, #0
	add r2, r1, #0
	mvn r4, r4
	b _02055008
_02054FF8:
	cmp r0, r1
	ble _02055004
	add r2, r0, #0
	add r0, r1, #0
	mov r4, #1
	b _02055008
_02055004:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02055008:
	sub r1, r2, r0
	mov r0, #5
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _0205501C
	cmp r4, #0
	bne _0205501E
	bl sub_02022974
	b _0205501E
_0205501C:
	mov r4, #0
_0205501E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054FD0

	thumb_func_start sub_02055024
sub_02055024: ; 0x02055024
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	str r6, [sp]
	bl sub_02054FD0
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _0205503E
	strb r0, [r1]
_0205503E:
	cmp r0, #0
	bne _02055076
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F68
	add r6, r0, #0
	bne _02055070
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02055070
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F94
	bl sub_0205DC20
	cmp r0, #0
	beq _02055070
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02055070:
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055076:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02055024

	thumb_func_start sub_0205507C
sub_0205507C: ; 0x0205507C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	add r4, r2, #0
	add r7, r3, #0
	str r6, [sp]
	bl sub_02054FD0
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _02055098
	strb r0, [r1]
_02055098:
	cmp r0, #0
	bne _020550EE
	add r0, sp, #0xc
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	ldr r3, [r3, #4]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02068390
	cmp r0, #0
	bne _020550E8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F68
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020550E2
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #2
	bne _020550E2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F94
	bl sub_0205DC20
	cmp r0, #0
	beq _020550E2
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020550E2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020550E8:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020550EE:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205507C

	thumb_func_start sub_020550F4
sub_020550F4: ; 0x020550F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, r2
	ldr r0, [sp, #0x18]
	add r4, r1, r3
	add r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	add r7, r4, r0
	cmp r6, #0
	blt _02055118
	cmp r4, #0
	blt _02055118
	ldr r0, [sp]
	cmp r0, #0
	blt _02055118
	cmp r7, #0
	bge _0205511C
_02055118:
	bl sub_02022974
_0205511C:
	lsl r0, r6, #0x10
	str r0, [r5, #0]
	lsl r0, r4, #0x10
	str r0, [r5, #4]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	str r0, [r5, #8]
	lsl r0, r7, #0x10
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020550F4

	thumb_func_start sub_02055130
sub_02055130: ; 0x02055130
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	add r1, r3, #0
	bl ov5_021E1894
	ldr r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, [sp, #8]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #8]
	add r2, r2, r1
	str r2, [sp, #8]
	ldr r1, [r5, #0]
	cmp r1, r0
	bgt _02055170
	ldr r1, [r5, #8]
	cmp r0, r1
	bgt _02055170
	ldr r0, [r5, #4]
	cmp r0, r2
	bgt _02055170
	ldr r0, [r5, #0xc]
	cmp r2, r0
	bgt _02055170
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02055170:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055130

	thumb_func_start sub_02055178
sub_02055178: ; 0x02055178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055188:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020551F2
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0x10
	bl sub_020553A4
	mov r5, #0
_020551BA:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ov5_021E18C4
	add r1, r7, #0
	add r2, sp, #0x10
	add r4, r0, #0
	bl sub_02055130
	cmp r0, #0
	beq _020551E8
	add r0, r4, #0
	bl ov5_021E18B8
	cmp r0, r6
	bne _020551E8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020551E2
	str r4, [r0, #0]
_020551E2:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020551E8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x20
	blo _020551BA
_020551F2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055188
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055178

	thumb_func_start sub_02055208
sub_02055208: ; 0x02055208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055218:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0205529E
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	add r6, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0x10
	bl sub_020553A4
	mov r6, #0
_0205524A:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl ov5_021E18C4
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	add r7, r0, #0
	bl sub_02055130
	cmp r0, #0
	beq _02055294
	add r0, r7, #0
	bl ov5_021E18B8
	mov r1, #0
	cmp r4, #0
	bls _02055294
_0205526C:
	lsl r2, r1, #2
	ldr r2, [r5, r2]
	cmp r0, r2
	bne _0205528A
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0205527C
	str r7, [r1, #0]
_0205527C:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _02055284
	str r0, [r1, #0]
_02055284:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205528A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	blo _0205526C
_02055294:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x20
	blo _0205524A
_0205529E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055218
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055208

	thumb_func_start sub_020552B4
sub_020552B4: ; 0x020552B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
_020552C2:
	ldr r1, [sp]
	add r0, r7, #0
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02055314
	mov r4, #0
_020552D6:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov5_021E18C4
	add r6, r0, #0
	bl ov5_021E18B8
	cmp r0, r5
	bne _0205530A
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020552F0
	str r6, [r0, #0]
_020552F0:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02055304
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	ldr r1, [sp, #8]
	str r0, [r1, #0]
_02055304:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205530A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _020552D6
_02055314:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _020552C2
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020552B4

	thumb_func_start sub_02055324
sub_02055324: ; 0x02055324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055334:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0205538E
	mov r6, #0
_02055348:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl ov5_021E18C4
	add r7, r0, #0
	bl ov5_021E18B8
	mov r1, #0
	cmp r4, #0
	bls _02055384
_0205535C:
	lsl r2, r1, #2
	ldr r2, [r5, r2]
	cmp r0, r2
	bne _0205537A
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0205536C
	str r7, [r1, #0]
_0205536C:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _02055374
	str r0, [r1, #0]
_02055374:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205537A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	blo _0205535C
_02055384:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x20
	blo _02055348
_0205538E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055334
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055324

	thumb_func_start sub_020553A4
sub_020553A4: ; 0x020553A4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #1
	lsl r2, r2, #0x14
	str r2, [r4, #0]
	add r5, r0, #0
	add r6, r1, #0
	str r2, [r4, #8]
	bl sub_020E1F6C
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r0, [r4, #0]
	lsl r1, r1, #0x15
	add r0, r0, r1
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r1, [r4, #8]
	lsl r0, r0, #0x15
	add r0, r1, r0
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020553A4

	thumb_func_start sub_020553DC
sub_020553DC: ; 0x020553DC
	push {r3, lr}
	bl sub_0200569C
	bl sub_02004A3C
	mov r0, #0
	bl sub_02004234
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020553DC

	thumb_func_start sub_020553F0
sub_020553F0: ; 0x020553F0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0203A790
	bl sub_0203A748
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020553F0

	thumb_func_start sub_02055404
sub_02055404: ; 0x02055404
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A748
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02055404

	thumb_func_start sub_02055414
sub_02055414: ; 0x02055414
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A748
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055414

	thumb_func_start sub_02055428
sub_02055428: ; 0x02055428
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r5, r1, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _02055466
	ldr r0, _02055498 ; =0x0000023D
	sub r0, r5, r0
	cmp r0, #0xa
	bhi _02055462
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205544C: ; jump table
	.short _02055466 - _0205544C - 2 ; case 0
	.short _02055466 - _0205544C - 2 ; case 1
	.short _02055466 - _0205544C - 2 ; case 2
	.short _02055466 - _0205544C - 2 ; case 3
	.short _02055466 - _0205544C - 2 ; case 4
	.short _02055462 - _0205544C - 2 ; case 5
	.short _02055466 - _0205544C - 2 ; case 6
	.short _02055466 - _0205544C - 2 ; case 7
	.short _02055466 - _0205544C - 2 ; case 8
	.short _02055466 - _0205544C - 2 ; case 9
	.short _02055466 - _0205544C - 2 ; case 10
_02055462:
	ldr r0, _0205549C ; =0x0000047F
	pop {r3, r4, r5, pc}
_02055466:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #1
	bne _02055478
	ldr r0, _020554A0 ; =0x0000047E
	pop {r3, r4, r5, pc}
_02055478:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020554A4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02055404
	cmp r0, #0
	beq _02055494
	add r0, r4, #0
	bl sub_02055404
	add r5, r0, #0
_02055494:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02055498: .word 0x0000023D
_0205549C: .word 0x0000047F
_020554A0: .word 0x0000047E
	thumb_func_end sub_02055428

	thumb_func_start sub_020554A4
sub_020554A4: ; 0x020554A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02013948
	cmp r0, #0
	bne _020554BA
	add r0, r4, #0
	bl sub_0203A0C4
	b _020554C0
_020554BA:
	add r0, r4, #0
	bl sub_0203A0D8
_020554C0:
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0206AB68
	cmp r0, #0
	beq _020554D4
	add r6, r0, #0
_020554D4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554E8
	cmp r0, #0
	beq _020554E2
	add r6, r0, #0
_020554E2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020554A4

	thumb_func_start sub_020554E8
sub_020554E8: ; 0x020554E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	bl sub_0203A790
	bl sub_0203A728
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, _02055548 ; =0x0000015E
	cmp r6, r1
	beq _02055512
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055512:
	ldr r2, [r7, #0]
	cmp r2, #0x50
	beq _0205551E
	add r1, r1, #1
	cmp r2, r1
	bne _02055544
_0205551E:
	ldr r1, _0205554C ; =0x0000012B
	cmp r4, r1
	bge _02055528
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055528:
	add r1, r1, #7
	cmp r4, r1
	ble _02055532
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055532:
	mov r1, #9
	lsl r1, r1, #6
	cmp r0, r1
	beq _02055540
	add r1, #0x69
	cmp r0, r1
	bne _02055544
_02055540:
	ldr r0, _02055550 ; =0x000004A5
	pop {r3, r4, r5, r6, r7, pc}
_02055544:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02055548: .word 0x0000015E
_0205554C: .word 0x0000012B
_02055550: .word 0x000004A5
	thumb_func_end sub_020554E8

	thumb_func_start sub_02055554
sub_02055554: ; 0x02055554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r7, r2, #0
	bl sub_0205EB74
	add r6, r0, #0
	bl sub_020041DC
	cmp r0, #1
	bne _02055574
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02055574:
	add r0, r5, #0
	bl sub_020041FC
	cmp r4, r0
	bne _02055584
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02055584:
	bl sub_02004A3C
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_020555CC
	cmp r6, #1
	beq _0205559A
	bne _020555B2
_0205559A:
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mov r0, #4
	add r1, r4, #0
	bl sub_02005068
	b _020555C4
_020555B2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mov r0, #4
	add r1, r4, #0
	bl sub_0200502C
_020555C4:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055554

	thumb_func_start sub_020555CC
sub_020555CC: ; 0x020555CC
	cmp r1, #3
	bhi _0205560A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020555DC: ; jump table
	.short _020555E4 - _020555DC - 2 ; case 0
	.short _020555EE - _020555DC - 2 ; case 1
	.short _020555F8 - _020555DC - 2 ; case 2
	.short _02055602 - _020555DC - 2 ; case 3
_020555E4:
	mov r0, #0x1e
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
	bx lr
_020555EE:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
	bx lr
_020555F8:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0xf
	str r0, [r3, #0]
	bx lr
_02055602:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
_0205560A:
	bx lr
	thumb_func_end sub_020555CC

	thumb_func_start sub_0205560C
sub_0205560C: ; 0x0205560C
	push {r3, r4, r5, lr}
	mov r1, #1
	bl sub_02079220
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, _02055638 ; =0x0000044D
	ldr r2, _0205563C ; =0x020EC3E0
	mov r4, #0
_0205561E:
	lsl r3, r4, #2
	ldrh r1, [r2, r3]
	cmp r5, r1
	bne _0205562C
	ldr r0, _02055640 ; =0x020EC3E2
	ldrh r0, [r0, r3]
	pop {r3, r4, r5, pc}
_0205562C:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x4f
	blo _0205561E
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02055638: .word 0x0000044D
_0205563C: .word 0x020EC3E0
_02055640: .word 0x020EC3E2
	thumb_func_end sub_0205560C

	thumb_func_start sub_02055644
sub_02055644: ; 0x02055644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020041DC
	cmp r0, #1
	beq _0205566C
	bl sub_020041FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020554A4
	cmp r4, r0
	beq _0205566C
	mov r0, #0
	mov r1, #0x28
	bl sub_0200564C
_0205566C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055644

	thumb_func_start sub_02055670
sub_02055670: ; 0x02055670
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041DC
	cmp r0, #1
	beq _0205569C
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554A4
	add r4, r0, #0
	bl sub_02004224
	mov r0, #4
	add r1, r4, #0
	mov r2, #1
	bl sub_02004550
_0205569C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055670

	thumb_func_start sub_020556A0
sub_020556A0: ; 0x020556A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02055428
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554A4
	bl sub_02004224
	mov r0, #4
	add r1, r6, #0
	mov r2, #1
	bl sub_02004550
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020556A0

	thumb_func_start sub_020556C4
sub_020556C4: ; 0x020556C4
	mov r3, #0
	add r2, r3, #0
_020556C8:
	lsl r1, r3, #2
	add r1, r0, r1
	strb r2, [r1, #6]
	strb r2, [r1, #7]
	strb r2, [r1, #8]
	strb r2, [r1, #9]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _020556C8
	str r2, [r0, #0]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020556C4

	thumb_func_start sub_020556E8
sub_020556E8: ; 0x020556E8
	push {r4, lr}
	add r4, r0, #0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	lsl r0, r0, #0x13
	lsl r1, r1, #0x13
	ldrb r2, [r4, #4]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	cmp r0, r2
	bne _0205570C
	ldrb r2, [r4, #5]
	cmp r1, r2
	beq _0205573C
_0205570C:
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r0, [r2, #6]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #7]
	ldr r0, [r4, #0]
	mov r1, #0xff
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #9]
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #0]
_0205573C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020556E8

	thumb_func_start sub_02055740
sub_02055740: ; 0x02055740
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #0x18
	lsl r1, r2, #0x18
	ldrb r2, [r4, #4]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	cmp r0, r2
	bne _02055758
	ldrb r2, [r4, #5]
	cmp r1, r2
	beq _0205578A
_02055758:
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r0, [r2, #6]
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r1, [r2, #7]
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r3, [r2, #8]
	ldr r2, [r4, #0]
	mov r3, #1
	lsl r2, r2, #2
	add r2, r4, r2
	strb r3, [r2, #9]
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #0]
_0205578A:
	pop {r4, pc}
	thumb_func_end sub_02055740

	thumb_func_start sub_0205578C
sub_0205578C: ; 0x0205578C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020557AA
	cmp r1, #1
	beq _020557CA
	b _020557D8
_020557AA:
	ldr r0, [r4, #8]
	add r1, r5, #0
	add r2, r4, #4
	bl ov5_021DDBE8
	ldr r1, [r4, #0xc]
	mov r0, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020557D8
_020557CA:
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _020557D8
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020557D8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205578C

	thumb_func_start sub_020557DC
sub_020557DC: ; 0x020557DC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r1, _02055804 ; =sub_0205578C
	add r0, r6, #0
	str r4, [r2, #0xc]
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02055804: .word sub_0205578C
	thumb_func_end sub_020557DC

	thumb_func_start sub_02055808
sub_02055808: ; 0x02055808
	push {r3, lr}
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _0205581A
	mov r0, #1
	pop {r3, pc}
_0205581A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055808

	thumb_func_start sub_02055820
sub_02055820: ; 0x02055820
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02055838
	bl sub_02022974
	pop {r3, r4, r5, pc}
_02055838:
	add r0, r4, #0
	bl sub_0203CD44
	ldr r1, _0205584C ; =sub_02055808
	add r0, r5, #0
	mov r2, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0205584C: .word sub_02055808
	thumb_func_end sub_02055820

	thumb_func_start sub_02055850
sub_02055850: ; 0x02055850
	push {r3, lr}
	bl sub_02050A60
	bl sub_020509DC
	cmp r0, #0
	beq _02055862
	mov r0, #1
	pop {r3, pc}
_02055862:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055850

	thumb_func_start sub_02055868
sub_02055868: ; 0x02055868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _02055880
	bl sub_02022974
	pop {r3, r4, r5, pc}
_02055880:
	add r0, r4, #0
	bl sub_020509D4
	ldr r1, _02055894 ; =sub_02055850
	add r0, r5, #0
	mov r2, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_02055894: .word sub_02055850
	thumb_func_end sub_02055868

	thumb_func_start sub_02055898
sub_02055898: ; 0x02055898
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #0
	beq _020558A6
	mov r0, #1
	pop {r3, pc}
_020558A6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055898

	thumb_func_start sub_020558AC
sub_020558AC: ; 0x020558AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _020558C6
	bl sub_02022974
	add sp, #0xc
	pop {r3, r4, pc}
_020558C6:
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
	ldr r1, _020558EC ; =sub_02055898
	add r0, r4, #0
	mov r2, #0
	bl sub_02050944
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_020558EC: .word sub_02055898
	thumb_func_end sub_020558AC

	thumb_func_start sub_020558F0
sub_020558F0: ; 0x020558F0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _0205590A
	bl sub_02022974
	add sp, #0xc
	pop {r3, r4, pc}
_0205590A:
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
	ldr r1, _02055930 ; =sub_02055898
	add r0, r4, #0
	mov r2, #0
	bl sub_02050944
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02055930: .word sub_02055898
	thumb_func_end sub_020558F0

	thumb_func_start sub_02055934
sub_02055934: ; 0x02055934
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205594E
	cmp r0, #1
	beq _0205595C
	cmp r0, #2
	beq _0205596A
	b _0205596E
_0205594E:
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205596E
_0205595C:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205596E
_0205596A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205596E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055934

	thumb_func_start sub_02055974
sub_02055974: ; 0x02055974
	ldr r3, _0205597C ; =sub_02050944
	ldr r1, _02055980 ; =sub_02055934
	mov r2, #0
	bx r3
	; .align 2, 0
_0205597C: .word sub_02050944
_02055980: .word sub_02055934
	thumb_func_end sub_02055974

	thumb_func_start sub_02055984
sub_02055984: ; 0x02055984
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020559A4
	cmp r1, #1
	beq _020559B2
	cmp r1, #2
	beq _020559C4
	b _020559C8
_020559A4:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020559C8
_020559B2:
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020559C8
_020559C4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_020559C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055984

	thumb_func_start sub_020559CC
sub_020559CC: ; 0x020559CC
	ldr r3, _020559D4 ; =sub_02050944
	ldr r1, _020559D8 ; =sub_02055984
	mov r2, #0
	bx r3
	; .align 2, 0
_020559D4: .word sub_02050944
_020559D8: .word sub_02055984
	thumb_func_end sub_020559CC

	thumb_func_start sub_020559DC
sub_020559DC: ; 0x020559DC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025CD8
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02055A0E
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl sub_02055A14
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl sub_02055A3C
_02055A0E:
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020559DC

	thumb_func_start sub_02055A14
sub_02055A14: ; 0x02055A14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	bl sub_020CC16C
	ldr r1, [r5, #0x20]
	add r4, r0, #0
	cmp r4, r1
	bhs _02055A2C
	str r4, [r5, #0x20]
	pop {r4, r5, r6, pc}
_02055A2C:
	cmp r4, r1
	bls _02055A3A
	add r0, r6, #0
	sub r1, r4, r1
	bl sub_02055AC0
	str r4, [r5, #0x20]
_02055A3A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02055A14

	thumb_func_start sub_02055A3C
sub_02055A3C: ; 0x02055A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r0, [sp]
	add r6, r3, #0
	add r5, r1, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020CC218
	str r1, [sp, #8]
	add r1, r5, #0
	add r7, r0, #0
	add r0, r5, #4
	add r1, #0x14
	bl sub_020CC218
	add r2, r1, #0
	sub r1, r7, r0
	ldr r1, [sp, #8]
	sbc r1, r2
	bge _02055A80
	add r2, r5, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add sp, #0xc
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_02055A80:
	ldr r1, [sp, #8]
	sub r0, r7, r0
	sbc r1, r2
	mov r2, #0x3c
	mov r3, #0
	str r1, [sp, #8]
	bl sub_020E1D24
	add r7, r0, #0
	cmp r7, #0
	ble _02055ABC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02025DC8
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02055B64
	add r2, r5, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
_02055ABC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02055A3C

	thumb_func_start sub_02055AC0
sub_02055AC0: ; 0x02055AC0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203D174
	add r1, r4, #0
	bl sub_02028658
	add r0, r5, #0
	bl sub_0203F1FC
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0206C2D0
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	add r1, r4, #0
	bl sub_0202B3D8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	bl sub_0202B428
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202D80C
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_020777B4
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B260
	cmp r0, r4
	ble _02055B28
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _02055B2A
_02055B28:
	mov r1, #0
_02055B2A:
	add r0, r6, #0
	bl sub_0206B270
	lsl r1, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	bl sub_0206B2E4
	ldr r0, [r5, #0xc]
	bl sub_0206B334
	ldr r0, [r5, #0xc]
	bl sub_0206B514
	add r0, r5, #0
	bl sub_0203F310
	ldr r0, [r5, #0xc]
	bl sub_0206C008
	ldr r0, [r5, #0xc]
	bl sub_0202C878
	bl sub_0202C9A0
	ldr r0, [r5, #0xc]
	bl sub_0206F2F0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02055AC0

	thumb_func_start sub_02055B64
sub_02055B64: ; 0x02055B64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02055CD4
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0202D854
	add r0, r5, #0
	bl sub_02055C40
	add r2, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02028758
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	ldr r2, [r6, #4]
	add r1, r4, #0
	bl sub_0202E324
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02077BD8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055B64

	thumb_func_start sub_02055BA8
sub_02055BA8: ; 0x02055BA8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	bl sub_02013974
	pop {r3, pc}
	thumb_func_end sub_02055BA8

	thumb_func_start sub_02055BB8
sub_02055BB8: ; 0x02055BB8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #8]
	pop {r3, pc}
	thumb_func_end sub_02055BB8

	thumb_func_start sub_02055BC4
sub_02055BC4: ; 0x02055BC4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	thumb_func_end sub_02055BC4

	thumb_func_start sub_02055BD0
sub_02055BD0: ; 0x02055BD0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end sub_02055BD0

	thumb_func_start sub_02055BDC
sub_02055BDC: ; 0x02055BDC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	thumb_func_end sub_02055BDC

	thumb_func_start sub_02055BE8
sub_02055BE8: ; 0x02055BE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x18]
	pop {r3, pc}
	thumb_func_end sub_02055BE8

	thumb_func_start sub_02055BF4
sub_02055BF4: ; 0x02055BF4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02025CD8
	add r3, r0, #0
	ldr r2, [r3, #0x24]
	ldr r3, [r3, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020CC3FC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055BF4

	thumb_func_start sub_02055C10
sub_02055C10: ; 0x02055C10
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02025CD8
	add r3, r0, #0
	ldr r2, [r3, #0x2c]
	ldr r3, [r3, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020CC3FC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055C10

	thumb_func_start sub_02055C2C
sub_02055C2C: ; 0x02055C2C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	add r4, r0, #0
	bl sub_020138EC
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end sub_02055C2C

	thumb_func_start sub_02055C40
sub_02055C40: ; 0x02055C40
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	bl sub_02025DB8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055C40

	thumb_func_start sub_02055C50
sub_02055C50: ; 0x02055C50
	cmp r0, #0
	bne _02055C58
	mov r0, #0
	bx lr
_02055C58:
	add r0, #0x94
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C50

	thumb_func_start sub_02055C60
sub_02055C60: ; 0x02055C60
	cmp r0, #0
	bne _02055C68
	mov r0, #0
	bx lr
_02055C68:
	sub r0, #0x94
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C60

	thumb_func_start sub_02055C70
sub_02055C70: ; 0x02055C70
	cmp r0, #0
	bne _02055C78
	mov r0, #0
	bx lr
_02055C78:
	add r0, #0x5e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C70

	thumb_func_start sub_02055C80
sub_02055C80: ; 0x02055C80
	cmp r0, #0
	bne _02055C88
	mov r0, #0
	bx lr
_02055C88:
	sub r0, #0x5e
	bx lr
	thumb_func_end sub_02055C80

	thumb_func_start sub_02055C8C
sub_02055C8C: ; 0x02055C8C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x64
	bl sub_020C4CF4
	str r6, [r4, #0]
	add r0, r6, #0
	bl sub_02027BF4
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02055D14
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055C8C

	thumb_func_start sub_02055CBC
sub_02055CBC: ; 0x02055CBC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02055D48
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02055CBC

	thumb_func_start sub_02055CD4
sub_02055CD4: ; 0x02055CD4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r6, r1, #0
	cmp r0, #0
	bne _02055CFE
	mov r0, #0xb
	bl sub_02027BF4
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027854
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02027EAC
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02055CFE:
	ldr r0, [r0, #0x18]
	ldr r5, [r0, #4]
	ldr r0, [r4, #0xc]
	bl sub_02027854
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02027EAC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055CD4

	thumb_func_start sub_02055D14
sub_02055D14: ; 0x02055D14
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x40]
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0x11
	bl ov5_021DF5A8
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018144
	str r0, [r5, #0x60]
	ldr r2, [r5, #0x60]
	add r0, r4, #0
	mov r1, #0x11
	bl ov5_021DF5B4
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x60
	add r0, #8
	add r1, #0x5c
	add r2, r5, #0
	bl sub_0201CA3C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055D14

	thumb_func_start sub_02055D48
sub_02055D48: ; 0x02055D48
	ldr r3, _02055D50 ; =ov5_021DF554
	ldr r0, [r0, #0x60]
	bx r3
	nop
_02055D50: .word ov5_021DF554
	thumb_func_end sub_02055D48

	thumb_func_start sub_02055D54
sub_02055D54: ; 0x02055D54
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r3, _02055D90 ; =0x020EC52C
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_020BB4C8
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x18]
	add r2, sp, #0
	ldr r0, [r0, #0x5c]
	add r3, sp, #0x24
	bl sub_0201CED8
	cmp r0, #0
	beq _02055D88
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, pc}
_02055D88:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_02055D90: .word 0x020EC52C
	thumb_func_end sub_02055D54

	thumb_func_start sub_02055D94
sub_02055D94: ; 0x02055D94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_02027854
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02055DFC
	mov r6, #0
	mov r7, #1
_02055DBA:
	ldr r0, [sp]
	bl sub_02062920
	bl sub_020677F4
	cmp r0, #1
	bne _02055DEC
	ldr r0, [sp]
	bl sub_02063070
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02055D54
	cmp r0, #0
	beq _02055DEC
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02027D90
_02055DEC:
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02055DBA
_02055DFC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02055D94

	thumb_func_start sub_02055E00
sub_02055E00: ; 0x02055E00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027D10
	str r0, [sp, #4]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027DB4
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_02055C50
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027D34
	add r2, r0, #0
	lsl r2, r2, #0x18
	lsl r3, r6, #0x10
	ldr r1, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x10
	bl sub_0206D914
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027DC0
	add r0, r7, #0
	bl sub_02067834
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02055C50
	lsl r2, r6, #0x10
	add r1, r0, #0
	add r0, r4, #0
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0207D570
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055E00

	thumb_func_start sub_02055E80
sub_02055E80: ; 0x02055E80
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	add r5, r2, #0
	bl sub_02027854
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020629D8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02055C80
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027DA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055E80

	thumb_func_start sub_02055EAC
sub_02055EAC: ; 0x02055EAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02027854
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02055C60
	ldr r2, [r4, #4]
	add r3, r0, #0
	ldr r2, [r2, #0x18]
	add r0, r7, #0
	ldr r2, [r2, #4]
	add r1, r5, #0
	bl sub_02027D40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055EAC

	thumb_func_start sub_02055EE0
sub_02055EE0: ; 0x02055EE0
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D78
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055EE0

	thumb_func_start sub_02055F00
sub_02055F00: ; 0x02055F00
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F00

	thumb_func_start sub_02055F20
sub_02055F20: ; 0x02055F20
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F20

	thumb_func_start sub_02055F40
sub_02055F40: ; 0x02055F40
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D10
	bl sub_02055C50
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F40

	thumb_func_start sub_02055F64
sub_02055F64: ; 0x02055F64
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D9C
	bl sub_02055C70
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F64

	thumb_func_start sub_02055F88
sub_02055F88: ; 0x02055F88
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F88

	thumb_func_start sub_02055FA8
sub_02055FA8: ; 0x02055FA8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027DB4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055FA8

	thumb_func_start sub_02055FC8
sub_02055FC8: ; 0x02055FC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0205600C ; =0x00000000
	beq _02055FDC
	add r0, r5, #0
	bl sub_02062920
	cmp r0, #0x64
	beq _02055FE0
_02055FDC:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02055FE0:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02055F00
	cmp r0, #0
	bne _02056002
	mov r0, #1
	orr r4, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02055F64
	cmp r0, #0
	bne _02056006
	mov r0, #2
	orr r4, r0
	b _02056006
_02056002:
	mov r0, #4
	orr r4, r0
_02056006:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0205600C: .word 0x00000000
	thumb_func_end sub_02055FC8

	thumb_func_start sub_02056010
sub_02056010: ; 0x02056010
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x3c]
	add r5, r2, #0
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	cmp r5, #2
	bne _0205602E
	sub r6, r6, #1
	b _0205604A
_0205602E:
	cmp r5, #3
	bne _02056036
	add r6, r6, #1
	b _0205604A
_02056036:
	cmp r5, #0
	bne _0205603E
	sub r4, r4, #1
	b _0205604A
_0205603E:
	cmp r5, #1
	bne _02056046
	add r4, r4, #1
	b _0205604A
_02056046:
	bl sub_02022974
_0205604A:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02054F68
	cmp r0, #0
	beq _0205605C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205605C:
	ldr r0, [r7, #0x38]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0206326C
	cmp r0, #0
	beq _02056070
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02056070:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02056010

	thumb_func_start sub_02056074
sub_02056074: ; 0x02056074
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	cmp r6, #2
	bne _02056092
	sub r4, r4, #1
	b _02056098
_02056092:
	cmp r6, #3
	bne _02056098
	add r4, r4, #1
_02056098:
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	sub r2, r2, #1
	mov r3, #0
	bl sub_0206326C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02056074

	thumb_func_start sub_020560A8
sub_020560A8: ; 0x020560A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	bl sub_0205EABC
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _020560C8
	sub r4, r4, #1
	b _020560D4
_020560C8:
	cmp r0, #1
	bne _020560D0
	add r4, r4, #1
	b _020560D4
_020560D0:
	bl sub_02022974
_020560D4:
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0206326C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020560A8

	thumb_func_start sub_020560E4
sub_020560E4: ; 0x020560E4
	push {r3, lr}
	bl sub_02062920
	cmp r0, #0x64
	bne _020560F2
	mov r0, #1
	pop {r3, pc}
_020560F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020560E4

	thumb_func_start sub_020560F8
sub_020560F8: ; 0x020560F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020560A8
	add r1, r0, #0
	beq _0205610A
	add r0, r4, #0
	bl sub_02055EE0
_0205610A:
	pop {r4, pc}
	thumb_func_end sub_020560F8

	thumb_func_start sub_0205610C
sub_0205610C: ; 0x0205610C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x3c]
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02065700
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205610C

	thumb_func_start sub_02056124
sub_02056124: ; 0x02056124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bls _0205613E
	b _0205629A
_0205613E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205614A: ; jump table
	.short _02056154 - _0205614A - 2 ; case 0
	.short _02056172 - _0205614A - 2 ; case 1
	.short _02056182 - _0205614A - 2 ; case 2
	.short _02056246 - _0205614A - 2 ; case 3
	.short _0205627E - _0205614A - 2 ; case 4
_02056154:
	ldr r0, [r5, #0x3c]
	mov r1, #0x10
	bl ov5_021DFB54
	ldr r0, [r5, #0x3c]
	bl ov5_021DFB5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	mov r0, #1
	str r0, [r4, #0]
	b _0205629A
_02056172:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020560F8
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0]
_02056182:
	ldr r0, _020562A0 ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x44]
	tst r1, r0
	beq _020561C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02056074
	cmp r0, #0
	beq _020561A0
	bl sub_020560E4
	cmp r0, #0
	bne _020561A6
_020561A0:
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_020561A6:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02056010
	cmp r0, #0
	bne _0205622E
	ldr r2, _020562A4 ; =0x020EC51C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205610C
	mov r0, #3
	str r0, [r4, #0]
	b _0205629A
_020561C4:
	mov r1, #0x10
	tst r1, r0
	beq _02056202
	add r0, r5, #0
	mov r1, #3
	bl sub_02056074
	cmp r0, #0
	beq _020561DE
	bl sub_020560E4
	cmp r0, #0
	bne _020561E4
_020561DE:
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_020561E4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl sub_02056010
	cmp r0, #0
	bne _0205622E
	ldr r2, _020562A8 ; =0x020EC524
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205610C
	mov r0, #3
	str r0, [r4, #0]
	b _0205629A
_02056202:
	mov r1, #0x40
	tst r1, r0
	beq _0205621C
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _0205621C
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205621C:
	mov r1, #0x80
	tst r0, r1
	beq _0205622E
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0205622E
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205622E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x5a
	ble _0205629A
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_02056246:
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	beq _0205629A
	ldr r0, [r4, #0xc]
	bl sub_02065758
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020560A8
	cmp r0, #0
	beq _02056270
	bl sub_020560E4
	cmp r0, #0
	beq _02056270
	mov r0, #1
	str r0, [r4, #0]
	b _0205629A
_02056270:
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205627E:
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DD0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205629A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020562A0: .word 0x021BF67C
_020562A4: .word 0x020EC51C
_020562A8: .word 0x020EC524
	thumb_func_end sub_02056124

	thumb_func_start sub_020562AC
sub_020562AC: ; 0x020562AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _020562D4 ; =sub_02056124
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020562D4: .word sub_02056124
	thumb_func_end sub_020562AC

	thumb_func_start sub_020562D8
sub_020562D8: ; 0x020562D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	bl sub_0205EED8
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020562D8

	thumb_func_start sub_020562F8
sub_020562F8: ; 0x020562F8
	push {r4, lr}
	ldr r1, _02056320 ; =0x021C07FC
	add r4, r0, #0
	mov r0, #0
	mov r2, #0x4c
	bl sub_020C4BB8
	ldr r1, _02056320 ; =0x021C07FC
	add r0, r4, #0
	bl sub_0205642C
	ldr r0, _02056320 ; =0x021C07FC
	bl sub_020564D0
	bl sub_020138EC
	ldr r2, _02056324 ; =0x021C07FC
	str r0, [r2, #0x40]
	str r1, [r2, #0x44]
	pop {r4, pc}
	; .align 2, 0
_02056320: .word 0x021C07FC
_02056324: .word 0x021C07FC
	thumb_func_end sub_020562F8

	thumb_func_start sub_02056328
sub_02056328: ; 0x02056328
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	ldr r4, _0205636C ; =0x021C07FC
	bl sub_0202CD88
	add r5, r0, #0
	bl sub_020138EC
	add r3, r1, #0
	ldr r1, _02056370 ; =0x021C07FC
	add r2, r0, #0
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	bl sub_0201398C
	mov r2, #0xfa
	mov r3, #0
	lsl r2, r2, #2
	sub r2, r0, r2
	sbc r1, r3
	bge _0205635C
	mov r1, #0xfa
	lsl r1, r1, #2
	sub r0, r1, r0
	lsl r0, r0, #1
	b _0205635E
_0205635C:
	mov r0, #0
_0205635E:
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
	nop
_0205636C: .word 0x021C07FC
_02056370: .word 0x021C07FC
	thumb_func_end sub_02056328

	thumb_func_start sub_02056374
sub_02056374: ; 0x02056374
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02056398 ; =0x021C07FC
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020564F4
	cmp r0, #1
	bne _02056394
	ldr r1, _02056398 ; =0x021C07FC
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02056554
	pop {r4, r5, r6, pc}
_02056394:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02056398: .word 0x021C07FC
	thumb_func_end sub_02056374

	thumb_func_start sub_0205639C
sub_0205639C: ; 0x0205639C
	ldr r3, _020563A4 ; =sub_0205664C
	ldr r1, _020563A8 ; =0x021C07FC
	bx r3
	nop
_020563A4: .word sub_0205664C
_020563A8: .word 0x021C07FC
	thumb_func_end sub_0205639C

	thumb_func_start sub_020563AC
sub_020563AC: ; 0x020563AC
	ldr r3, _020563B4 ; =sub_02056624
	ldr r2, _020563B8 ; =0x021C07FC
	bx r3
	nop
_020563B4: .word sub_02056624
_020563B8: .word 0x021C07FC
	thumb_func_end sub_020563AC

	thumb_func_start sub_020563BC
sub_020563BC: ; 0x020563BC
	push {r3, lr}
	ldr r0, _020563CC ; =0x021C07FC
	bl sub_020564B4
	mov r1, #6
	sub r0, r1, r0
	pop {r3, pc}
	nop
_020563CC: .word 0x021C07FC
	thumb_func_end sub_020563BC

	thumb_func_start sub_020563D0
sub_020563D0: ; 0x020563D0
	ldr r3, _020563D8 ; =sub_02056698
	ldr r0, _020563DC ; =0x021C07FC
	bx r3
	nop
_020563D8: .word sub_02056698
_020563DC: .word 0x021C07FC
	thumb_func_end sub_020563D0

	thumb_func_start sub_020563E0
sub_020563E0: ; 0x020563E0
	ldr r3, _020563E8 ; =sub_0205671C
	ldr r0, _020563EC ; =0x021C07FC
	bx r3
	nop
_020563E8: .word sub_0205671C
_020563EC: .word 0x021C07FC
	thumb_func_end sub_020563E0

	thumb_func_start sub_020563F0
sub_020563F0: ; 0x020563F0
	ldr r3, _020563F8 ; =sub_020566AC
	ldr r0, _020563FC ; =0x021C07FC
	bx r3
	nop
_020563F8: .word sub_020566AC
_020563FC: .word 0x021C07FC
	thumb_func_end sub_020563F0

	thumb_func_start sub_02056400
sub_02056400: ; 0x02056400
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _02056410
	ldr r0, _02056428 ; =0x000001ED
	cmp r5, r0
	bls _02056414
_02056410:
	bl sub_02022974
_02056414:
	mov r3, #6
	add r0, r4, #0
	sub r4, r5, #1
	str r3, [sp]
	mov r1, #0x83
	mov r2, #0
	mul r3, r4
	bl sub_02006AFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02056428: .word 0x000001ED
	thumb_func_end sub_02056400

	thumb_func_start sub_0205642C
sub_0205642C: ; 0x0205642C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	str r1, [sp]
	bl sub_02024440
	str r0, [sp, #4]
	mov r0, #4
	bl sub_02073C74
	ldr r5, [sp]
	add r4, r0, #0
	mov r6, #0
	add r7, sp, #8
_02056448:
	ldr r0, [sp]
	add r2, r4, #0
	add r1, r0, r6
	add r1, #0x30
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0202F000
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r5]
	add r1, sp, #8
	bl sub_02056400
	ldrb r0, [r7]
	cmp r0, #0
	beq _0205647A
	b _0205647E
_0205647A:
	ldrb r0, [r7, #1]
	add r0, r0, #4
_0205647E:
	strb r0, [r5, #2]
	ldrb r0, [r7, #3]
	mov r1, #0xb1
	mov r2, #0
	strb r0, [r5, #3]
	ldrb r0, [r7, #2]
	strh r0, [r5, #4]
	add r0, r4, #0
	bl sub_02074470
	strb r0, [r5, #6]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #7]
	add r6, r6, #1
	add r5, #8
	cmp r6, #6
	blt _02056448
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205642C

	thumb_func_start sub_020564B4
sub_020564B4: ; 0x020564B4
	mov r3, #0
	add r2, r3, #0
_020564B8:
	add r1, r0, r2
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #0
	beq _020564C4
	add r3, r3, #1
_020564C4:
	add r2, r2, #1
	cmp r2, #6
	blt _020564B8
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020564B4

	thumb_func_start sub_020564D0
sub_020564D0: ; 0x020564D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	ldr r1, _020564F0 ; =0x0000199A
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0xa
	blo _020564EA
	bl sub_02022974
_020564EA:
	add r0, r5, #5
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020564F0: .word 0x0000199A
	thumb_func_end sub_020564D0

	thumb_func_start sub_020564F4
sub_020564F4: ; 0x020564F4
	push {r3, lr}
	ldr r1, [r0, #0x38]
	sub r1, r1, #1
	str r1, [r0, #0x38]
	bne _02056506
	bl sub_020564D0
	mov r0, #1
	pop {r3, pc}
_02056506:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020564F4

	thumb_func_start sub_0205650C
sub_0205650C: ; 0x0205650C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02054F94
	add r4, r0, #0
	cmp r5, #0x20
	blt _02056520
	mov r5, #1
	b _02056522
_02056520:
	mov r5, #0
_02056522:
	cmp r6, #0x20
	bge _0205652A
	mov r0, #0
	b _0205652C
_0205652A:
	mov r0, #2
_0205652C:
	add r5, r5, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAC8
	cmp r0, #0
	beq _0205653E
	add r0, r5, #1
	pop {r4, r5, r6, pc}
_0205653E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _0205654E
	add r0, r5, #5
	pop {r4, r5, r6, pc}
_0205654E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205650C

	thumb_func_start sub_02056554
sub_02056554: ; 0x02056554
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	mov r6, #0
	bl sub_0205650C
	add r7, r0, #0
	bne _0205656A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205656A:
	add r0, r6, #0
	add r1, r5, #0
_0205656E:
	add r2, r5, r0
	add r2, #0x30
	ldrb r2, [r2]
	cmp r2, #0
	bne _02056582
	ldrb r2, [r1, #2]
	cmp r7, r2
	bne _02056582
	ldrb r2, [r1, #3]
	add r6, r6, r2
_02056582:
	add r0, r0, #1
	add r1, #8
	cmp r0, #6
	blt _0205656E
	cmp r6, #0
	bne _02056592
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02056592:
	add r0, r6, #0
	add r0, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020565A0
	bl sub_02022974
_020565A0:
	add r0, r6, #0
	add r0, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _020565B0
	mov r4, #0
	b _020565E4
_020565B0:
	bl sub_0201D2E8
	add r1, r6, #0
	add r1, #0x14
	add r4, r0, #0
	lsl r1, r1, #0x10
	ldr r0, _02056620 ; =0x0000FFFF
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	add r6, #0x14
	lsr r4, r0, #0x10
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	blo _020565E4
	bl sub_02022974
_020565E4:
	cmp r4, #0x14
	bge _020565EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020565EC:
	sub r4, #0x14
	mov r1, #0
	add r0, r5, #0
_020565F2:
	add r2, r5, r1
	add r2, #0x30
	ldrb r2, [r2]
	cmp r2, #0
	bne _02056610
	ldrb r2, [r0, #2]
	cmp r7, r2
	bne _02056610
	ldrb r2, [r0, #3]
	cmp r4, r2
	bge _0205660E
	str r1, [r5, #0x3c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205660E:
	sub r4, r4, r2
_02056610:
	add r1, r1, #1
	add r0, #8
	cmp r1, #6
	blt _020565F2
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02056620: .word 0x0000FFFF
	thumb_func_end sub_02056554

	thumb_func_start sub_02056624
sub_02056624: ; 0x02056624
	push {r4, lr}
	ldr r0, [r1, #0x14]
	add r4, r2, #0
	cmp r0, #4
	beq _02056634
	cmp r0, #5
	beq _0205664A
	b _02056646
_02056634:
	add r0, r4, #0
	bl sub_020564B4
	add r1, r0, #1
	ldr r0, [r4, #0x3c]
	add r0, r4, r0
	add r0, #0x30
	strb r1, [r0]
	pop {r4, pc}
_02056646:
	bl sub_02022974
_0205664A:
	pop {r4, pc}
	thumb_func_end sub_02056624

	thumb_func_start sub_0205664C
sub_0205664C: ; 0x0205664C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	bl sub_02073C74
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02024440
	str r0, [sp]
	add r0, r5, #0
	bl sub_020563BC
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051F38
	add r1, r5, #0
	add r7, r0, #0
	bl sub_02052314
	ldr r0, [sp]
	ldr r1, [r6, #0x3c]
	add r2, r4, #0
	bl sub_0202F000
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0205213C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205664C

	thumb_func_start sub_02056698
sub_02056698: ; 0x02056698
	mov r3, #0
	add r2, r3, #0
_0205669C:
	ldrh r1, [r0, #4]
	add r2, r2, #1
	add r0, #8
	add r3, r3, r1
	cmp r2, #6
	blt _0205669C
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02056698

	thumb_func_start sub_020566AC
sub_020566AC: ; 0x020566AC
	push {r4, r5, r6, r7}
	mov r3, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #1
_020566B6:
	mov r1, #0
_020566B8:
	add r2, r5, r1
	add r2, #0x30
	ldrb r2, [r2]
	cmp r0, r2
	bne _020566F8
	lsl r1, r1, #3
	add r2, r5, r1
	ldrb r1, [r2, #6]
	ldrb r2, [r2, #7]
	cmp r0, #1
	beq _020566E4
	mov r6, ip
	cmp r6, r1
	beq _020566E4
	mov r6, ip
	cmp r6, r2
	beq _020566E4
	cmp r7, r1
	beq _020566E4
	cmp r7, r2
	beq _020566E4
	add r4, #0xc8
_020566E4:
	mov r6, #1
	mov ip, r1
	lsl r6, r1
	add r1, r3, #0
	mov r3, #1
	lsl r3, r2
	orr r1, r6
	add r7, r2, #0
	orr r3, r1
	b _020566FE
_020566F8:
	add r1, r1, #1
	cmp r1, #6
	blt _020566B8
_020566FE:
	add r0, r0, #1
	cmp r0, #7
	blt _020566B6
	cmp r3, #0
	beq _02056716
	mov r0, #1
_0205670A:
	add r1, r3, #0
	tst r1, r0
	beq _02056712
	add r4, #0x32
_02056712:
	lsr r3, r3, #1
	bne _0205670A
_02056716:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_020566AC

	thumb_func_start sub_0205671C
sub_0205671C: ; 0x0205671C
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_0205671C

	thumb_func_start sub_02056720
sub_02056720: ; 0x02056720
	mov r0, #0x46
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056720

	thumb_func_start sub_02056728
sub_02056728: ; 0x02056728
	push {r3, r4, r5, lr}
	mov r2, #0
	add r3, r2, #0
_0205672E:
	add r1, r0, r2
	add r2, r2, #1
	strb r3, [r1, #3]
	cmp r2, #0x20
	blt _0205672E
	strb r3, [r0, #1]
	strb r3, [r0, #2]
	ldrb r1, [r0]
	mov r2, #1
	bic r1, r2
	strb r1, [r0]
	ldrb r4, [r0]
	mov r1, #0x38
	bic r4, r1
	strb r4, [r0]
	ldrb r4, [r0]
	mov r1, #2
	bic r4, r1
	strb r4, [r0]
	str r3, [r0, #0x24]
	ldrh r1, [r0, #0x28]
	bic r1, r2
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	mov r1, #0x3e
	bic r2, r1
	strh r2, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	ldr r1, _020567C8 ; =0xFFFFF03F
	and r1, r2
	strh r1, [r0, #0x28]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xa8
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xa4
	str r3, [r1, #0]
	ldr r1, _020567CC ; =0x020EC538
	add r2, r0, #0
_0205677E:
	ldrb r5, [r1]
	add r4, r2, #0
	add r4, #0xa9
	strb r5, [r4]
	add r4, r2, #0
	ldrb r5, [r1, #1]
	add r4, #0xaa
	add r3, r3, #1
	strb r5, [r4]
	add r1, r1, #2
	add r2, r2, #2
	cmp r3, #6
	blt _0205677E
	mov r4, #0
	add r3, r0, #0
	add r1, r4, #0
_0205679E:
	add r2, r3, #0
	add r2, #0xb8
	strh r1, [r2]
	add r2, r3, #0
	add r2, #0xba
	strh r1, [r2]
	add r2, r3, #0
	add r2, #0xbc
	add r4, r4, #1
	add r3, #8
	str r1, [r2, #0]
	cmp r4, #0xc
	blt _0205679E
	ldrb r3, [r0]
	mov r2, #4
	bic r3, r2
	strb r3, [r0]
	bl sub_020567F0
	pop {r3, r4, r5, pc}
	nop
_020567C8: .word 0xFFFFF03F
_020567CC: .word 0x020EC538
	thumb_func_end sub_02056728

	thumb_func_start sub_020567D0
sub_020567D0: ; 0x020567D0
	ldrb r2, [r0]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020567D0

	thumb_func_start sub_020567E0
sub_020567E0: ; 0x020567E0
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020567E0

	thumb_func_start sub_020567E8
sub_020567E8: ; 0x020567E8
	add r0, r0, r1
	ldrb r0, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020567E8

	thumb_func_start sub_020567F0
sub_020567F0: ; 0x020567F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, _0205682C ; =0x00000000
	bmi _020567FE
	cmp r4, #0x19
	blt _02056802
_020567FE:
	bl sub_02022974
_02056802:
	mov r0, #1
	ldrsb r1, [r5, r0]
	cmp r1, #0x19
	bge _02056828
	add r2, r5, #3
	ldrb r1, [r2, r4]
	cmp r1, #0
	bne _02056828
	strb r0, [r2, r4]
	ldrsb r0, [r5, r0]
	add r0, r0, #1
	strb r0, [r5, #1]
	cmp r4, #3
	bne _02056826
	ldrb r1, [r5]
	mov r0, #2
	orr r0, r1
	strb r0, [r5]
_02056826:
	mov r6, #1
_02056828:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205682C: .word 0x00000000
	thumb_func_end sub_020567F0

	thumb_func_start sub_02056830
sub_02056830: ; 0x02056830
	mov r1, #2
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056830

	thumb_func_start sub_02056838
sub_02056838: ; 0x02056838
	push {r3, r4}
	mov r1, #2
	ldrsb r3, [r0, r1]
	mov r2, #0
	add r4, r3, #0
_02056842:
	add r3, r3, #1
	cmp r3, #0x19
	blt _0205684A
	add r3, r2, #0
_0205684A:
	cmp r3, r4
	beq _02056856
	add r1, r0, r3
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _02056842
_02056856:
	mov r1, #2
	strb r3, [r0, #2]
	ldrsb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02056838

	thumb_func_start sub_02056860
sub_02056860: ; 0x02056860
	push {r3, r4}
	mov r1, #2
	ldrsb r3, [r0, r1]
	mov r2, #0x18
	add r4, r3, #0
_0205686A:
	sub r3, r3, #1
	bpl _02056870
	add r3, r2, #0
_02056870:
	cmp r3, r4
	beq _0205687C
	add r1, r0, r3
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _0205686A
_0205687C:
	mov r1, #2
	strb r3, [r0, #2]
	ldrsb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056860

	thumb_func_start sub_02056888
sub_02056888: ; 0x02056888
	push {r4, lr}
	add r4, r0, #0
	bne _02056892
	bl sub_02022974
_02056892:
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02056888

	thumb_func_start sub_0205689C
sub_0205689C: ; 0x0205689C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020568AA
	bl sub_02022974
_020568AA:
	cmp r4, #8
	blo _020568B2
	bl sub_02022974
_020568B2:
	ldrb r1, [r5]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205689C

	thumb_func_start sub_020568C8
sub_020568C8: ; 0x020568C8
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_020568C8

	thumb_func_start sub_020568CC
sub_020568CC: ; 0x020568CC
	ldrb r2, [r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1f
	beq _020568D6
	str r1, [r0, #0x24]
_020568D6:
	bx lr
	thumb_func_end sub_020568CC

	thumb_func_start sub_020568D8
sub_020568D8: ; 0x020568D8
	ldrh r0, [r0, #0x28]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020568D8

	thumb_func_start sub_020568E0
sub_020568E0: ; 0x020568E0
	ldrh r3, [r0, #0x28]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1b
	str r3, [r1, #0]
	ldrh r0, [r0, #0x28]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020568E0

	thumb_func_start sub_020568F4
sub_020568F4: ; 0x020568F4
	push {r4, r5}
	ldrh r4, [r0, #0x28]
	mov r5, #1
	lsl r1, r1, #0x10
	bic r4, r5
	lsr r5, r1, #0x10
	mov r1, #1
	and r1, r5
	orr r1, r4
	strh r1, [r0, #0x28]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1b
	ldrh r1, [r0, #0x28]
	mov r4, #0x3e
	lsr r2, r2, #0x1a
	bic r1, r4
	orr r1, r2
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	ldr r1, _02056930 ; =0xFFFFF03F
	and r2, r1
	lsl r1, r3, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x14
	orr r1, r2
	strh r1, [r0, #0x28]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02056930: .word 0xFFFFF03F
	thumb_func_end sub_020568F4

	thumb_func_start sub_02056934
sub_02056934: ; 0x02056934
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _0205695A
	add r1, r0, #0
	add r1, #0xa4
	ldr r4, [r1, #0]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	add r1, r4, #0
	orr r1, r2
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
_0205695A:
	add r3, r0, #0
	add r3, #0xa8
	strb r1, [r3]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	add r0, #0xa4
	str r2, [r0, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02056934

	thumb_func_start sub_02056970
sub_02056970: ; 0x02056970
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _02056996
	add r1, r0, #0
	add r1, #0xa4
	ldr r4, [r1, #0]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	mvn r1, r2
	and r1, r4
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
_02056996:
	add r2, r0, #0
	add r2, #0xa8
	strb r1, [r2]
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056970

	thumb_func_start sub_020569A8
sub_020569A8: ; 0x020569A8
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _020569C0
	add r0, #0xa4
	ldr r1, [r0, #0]
	sub r0, r2, #1
	lsr r1, r0
	mov r0, #1
	and r0, r1
	bx lr
_020569C0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020569A8

	thumb_func_start sub_020569C4
sub_020569C4: ; 0x020569C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #6
	blt _020569D6
	bl sub_02022974
_020569D6:
	lsl r1, r4, #1
	add r0, r5, r1
	add r0, #0xa9
	strb r6, [r0]
	add r0, r5, r1
	add r0, #0xaa
	strb r7, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020569C4

	thumb_func_start sub_020569E8
sub_020569E8: ; 0x020569E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #6
	blt _020569FA
	bl sub_02022974
_020569FA:
	lsl r1, r4, #1
	add r0, r5, r1
	add r0, #0xa9
	ldrb r0, [r0]
	strb r0, [r6]
	add r0, r5, r1
	add r0, #0xaa
	ldrb r0, [r0]
	strb r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020569E8

	thumb_func_start sub_02056A10
sub_02056A10: ; 0x02056A10
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02056A10

	thumb_func_start sub_02056A18
sub_02056A18: ; 0x02056A18
	push {r3, lr}
	ldrb r2, [r0]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	beq _02056A2A
	add r0, #0x2a
	mov r2, #0x78
	bl sub_020C4DB0
_02056A2A:
	pop {r3, pc}
	thumb_func_end sub_02056A18

	thumb_func_start sub_02056A2C
sub_02056A2C: ; 0x02056A2C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x2a
	mov r2, #0x78
	bl sub_020C4DB0
	ldrb r1, [r4]
	mov r0, #4
	orr r0, r1
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02056A2C

	thumb_func_start sub_02056A48
sub_02056A48: ; 0x02056A48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02056AAC
	cmp r0, #0xc
	blt _02056A7C
	mov r2, #0
	add r3, r5, #0
_02056A5A:
	add r0, r3, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0xc4
	add r4, r3, #0
	ldr r0, [r0, #0]
	add r4, #0xb8
	str r1, [r4, #0]
	add r1, r3, #0
	add r1, #0xbc
	add r2, r2, #1
	add r3, #8
	str r0, [r1, #0]
	cmp r2, #0xb
	blt _02056A5A
	mov r0, #0xb
_02056A7C:
	lsl r4, r0, #3
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, r5, r4
	add r1, #0xb8
	strh r0, [r1]
	add r0, r6, #0
	bl sub_02079E44
	add r1, r5, r4
	add r1, #0xba
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r1, r5, r4
	add r1, #0xbc
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02056A48

	thumb_func_start sub_02056AAC
sub_02056AAC: ; 0x02056AAC
	mov r2, #0
_02056AAE:
	add r1, r0, #0
	add r1, #0xb8
	ldrh r1, [r1]
	cmp r1, #0
	bne _02056ABC
	add r0, r2, #0
	bx lr
_02056ABC:
	add r2, r2, #1
	add r0, #8
	cmp r2, #0xc
	blt _02056AAE
	add r0, r2, #0
	bx lr
	thumb_func_end sub_02056AAC

	thumb_func_start sub_02056AC8
sub_02056AC8: ; 0x02056AC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r4, #0xc
	blt _02056ADA
	bl sub_02022974
_02056ADA:
	add r6, r5, #0
	lsl r4, r4, #3
	add r6, #0xb8
	ldrh r0, [r6, r4]
	cmp r0, #0
	bne _02056AEA
	bl sub_02022974
_02056AEA:
	ldrh r0, [r6, r4]
	str r0, [r7, #0]
	add r0, r5, r4
	add r0, #0xba
	ldrh r1, [r0]
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02056AC8

	thumb_func_start sub_02056AFC
sub_02056AFC: ; 0x02056AFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blt _02056B0A
	bl sub_02022974
_02056B0A:
	lsl r4, r4, #3
	add r0, r5, r4
	add r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	bne _02056B1A
	bl sub_02022974
_02056B1A:
	add r0, r5, r4
	add r0, #0xbc
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02056AFC

	thumb_func_start sub_02056B24
sub_02056B24: ; 0x02056B24
	ldr r3, _02056B2C ; =sub_020245BC
	mov r1, #5
	bx r3
	nop
_02056B2C: .word sub_020245BC
	thumb_func_end sub_02056B24

	thumb_func_start sub_02056B30
sub_02056B30: ; 0x02056B30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r6, [r2, #0xc]
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	ldr r1, _02056B6C ; =sub_02056B70
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x1c]
	mov r0, #0
	str r0, [r2, #0]
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02056B6C: .word sub_02056B70
	thumb_func_end sub_02056B30

	thumb_func_start sub_02056B70
sub_02056B70: ; 0x02056B70
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02056B90
	cmp r0, #1
	beq _02056BB8
	b _02056BD4
_02056B90:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldrh r3, [r4, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056BD4
_02056BB8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02056BD4
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02056BD4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02056B70

	thumb_func_start sub_02056BDC
sub_02056BDC: ; 0x02056BDC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r5, [r2, #8]
	str r4, [r2, #0xc]
	ldr r0, [sp, #0x18]
	str r6, [r2, #0x10]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, _02056C14 ; =sub_02056CFC
	str r0, [r2, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x20]
	add r0, r7, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02056C14: .word sub_02056CFC
	thumb_func_end sub_02056BDC

	thumb_func_start sub_02056C18
sub_02056C18: ; 0x02056C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02018184
	add r6, r0, #0
	mov r4, #0
	str r4, [r6, #0]
	str r4, [r6, #4]
	ldr r0, [sp]
	str r5, [r6, #8]
	str r0, [r6, #0xc]
	ldr r0, [sp, #4]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r6, #0x18]
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	bl sub_0203A274
	cmp r0, #0
	beq _02056C84
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	beq _02056C62
	mov r4, #6
	b _02056CE6
_02056C62:
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #0
	beq _02056C70
	mov r4, #5
	b _02056CE6
_02056C70:
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056C7E
	mov r4, #6
	b _02056CE6
_02056C7E:
	bl sub_02022974
	b _02056CE6
_02056C84:
	ldr r0, [sp, #8]
	bl sub_0203A2A8
	cmp r0, #0
	beq _02056CB0
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	beq _02056C9C
	mov r4, #4
	b _02056CE6
_02056C9C:
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056CAA
	mov r4, #6
	b _02056CE6
_02056CAA:
	bl sub_02022974
	b _02056CE6
_02056CB0:
	ldr r0, [sp, #8]
	bl sub_0203A288
	cmp r0, #0
	beq _02056CE2
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #0
	bne _02056CE6
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056CD2
	mov r4, #6
	b _02056CE6
_02056CD2:
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	bne _02056CE6
	bl sub_02022974
	b _02056CE6
_02056CE2:
	bl sub_02022974
_02056CE6:
	ldr r1, _02056CF8 ; =sub_02056CFC
	add r0, r7, #0
	add r2, r6, #0
	str r4, [r6, #0x20]
	bl sub_02050904
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02056CF8: .word sub_02056CFC
	thumb_func_end sub_02056C18

	thumb_func_start sub_02056CFC
sub_02056CFC: ; 0x02056CFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r6, r4, #0
	ldr r1, [r4, #0]
	add r6, #8
	cmp r1, #6
	bhi _02056DD4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02056D24: ; jump table
	.short _02056D32 - _02056D24 - 2 ; case 0
	.short _02056D56 - _02056D24 - 2 ; case 1
	.short _02056D64 - _02056D24 - 2 ; case 2
	.short _02056D74 - _02056D24 - 2 ; case 3
	.short _02056D82 - _02056D24 - 2 ; case 4
	.short _02056D9A - _02056D24 - 2 ; case 5
	.short _02056DCC - _02056D24 - 2 ; case 6
_02056D32:
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r6, #0]
	add r0, r7, #0
	bl sub_02055644
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02056DD8 ; =0x020EC560
	ldr r1, [r1, r2]
	add r2, r4, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D56:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D64:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D74:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D82:
	ldr r0, [r4, #0x20]
	lsl r1, r0, #2
	ldr r0, _02056DDC ; =0x020EC57C
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02056D92
	add r0, r7, #0
	blx r1
_02056D92:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D9A:
	bl sub_02005684
	cmp r0, #0
	bne _02056DD4
	ldr r1, [r6, #0]
	add r0, r7, #0
	bl sub_02055670
	add r0, r7, #0
	bl ov5_021DDAA4
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02056DE0 ; =0x020EC544
	ldr r1, [r1, r2]
	add r2, r4, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056DCC:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02056DD4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02056DD8: .word 0x020EC560
_02056DDC: .word 0x020EC57C
_02056DE0: .word 0x020EC544
	thumb_func_end sub_02056CFC

	thumb_func_start sub_02056DE4
sub_02056DE4: ; 0x02056DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056E00
	cmp r0, #1
	beq _02056E14
	b _02056E18
_02056E00:
	ldr r0, _02056E1C ; =0x00000603
	bl sub_02005748
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E18
_02056E14:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02056E18:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02056E1C: .word 0x00000603
	thumb_func_end sub_02056DE4

	thumb_func_start sub_02056E20
sub_02056E20: ; 0x02056E20
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02056E9E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02056E44: ; jump table
	.short _02056E4C - _02056E44 - 2 ; case 0
	.short _02056E72 - _02056E44 - 2 ; case 1
	.short _02056E8C - _02056E44 - 2 ; case 2
	.short _02056E9A - _02056E44 - 2 ; case 3
_02056E4C:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E72:
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl ov5_021D433C
	cmp r0, #0
	beq _02056E9E
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E8C:
	add r0, r6, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E9A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056E9E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02056E20

	thumb_func_start sub_02056EA4
sub_02056EA4: ; 0x02056EA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056EC6
	cmp r0, #1
	beq _02056EEC
	cmp r0, #2
	beq _02056F14
	b _02056F18
_02056EC6:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056F18
_02056EEC:
	ldr r0, [r5, #0x3c]
	ldr r6, [r4, #0x1c]
	bl sub_0205EA78
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov5_021D4A24
	cmp r0, #0
	beq _02056F18
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056F18
_02056F14:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056F18:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02056EA4

	thumb_func_start sub_02056F1C
sub_02056F1C: ; 0x02056F1C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02056FB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02056F40: ; jump table
	.short _02056F48 - _02056F40 - 2 ; case 0
	.short _02056F7A - _02056F40 - 2 ; case 1
	.short _02056F98 - _02056F40 - 2 ; case 2
	.short _02056FAC - _02056F40 - 2 ; case 3
_02056F48:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	cmp r6, #2
	bne _02056F62
	mov r1, #0xa
	bl sub_02065638
	b _02056F72
_02056F62:
	cmp r6, #3
	bne _02056F6E
	mov r1, #0xb
	bl sub_02065638
	b _02056F72
_02056F6E:
	bl sub_02022974
_02056F72:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056F7A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _02056FB8
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056F98:
	ldr r0, _02056FBC ; =0x00000603
	bl sub_02005748
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056FAC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02056FB8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056FB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02056FBC: .word 0x00000603
	thumb_func_end sub_02056F1C

	thumb_func_start sub_02056FC0
sub_02056FC0: ; 0x02056FC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056FE4
	cmp r0, #1
	beq _02056FFA
	b _02056FFE
_02056FE4:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _02057004 ; =0x021D4FA1
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FFE
_02056FFA:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056FFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02057004: .word 0x021D4FA1
	thumb_func_end sub_02056FC0

	thumb_func_start sub_02057008
sub_02057008: ; 0x02057008
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205702C
	cmp r0, #1
	beq _02057042
	b _02057046
_0205702C:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _0205704C ; =0x021D4F15
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057046
_02057042:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057046:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0205704C: .word 0x021D4F15
	thumb_func_end sub_02057008

	thumb_func_start sub_02057050
sub_02057050: ; 0x02057050
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #3
	bhi _02057114
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02057074: ; jump table
	.short _0205707C - _02057074 - 2 ; case 0
	.short _020570C6 - _02057074 - 2 ; case 1
	.short _020570EC - _02057074 - 2 ; case 2
	.short _02057110 - _02057074 - 2 ; case 3
_0205707C:
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #0
	beq _020570B2
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	str r0, [r5, #4]
	b _02057114
_020570B2:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _02057118 ; =0x021D5021
	add r0, r6, #0
	bl sub_02050944
	mov r0, #3
	str r0, [r5, #4]
	b _02057114
_020570C6:
	bl ov5_021D431C
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r5, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _02057114
_020570EC:
	ldr r5, [r5, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D453C
	cmp r0, #0
	beq _02057114
	add r0, r5, #0
	bl ov5_021D432C
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	mov r1, #0
	bl sub_02062D64
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057110:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057114:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057118: .word 0x021D5021
	thumb_func_end sub_02057050

	thumb_func_start sub_0205711C
sub_0205711C: ; 0x0205711C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205713A
	cmp r0, #1
	beq _02057190
	b _02057194
_0205713A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #0
	beq _0205717A
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	str r0, [r4, #4]
	ldr r1, _02057198 ; =sub_02057050
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050924
	b _02057194
_0205717A:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _0205719C ; =0x021D5151
	add r0, r6, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057194
_02057190:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057194:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057198: .word sub_02057050
_0205719C: .word 0x021D5151
	thumb_func_end sub_0205711C

	thumb_func_start sub_020571A0
sub_020571A0: ; 0x020571A0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020571C2
	cmp r0, #1
	beq _020571E8
	cmp r0, #2
	beq _02057210
	b _02057214
_020571C2:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057214
_020571E8:
	ldr r0, [r5, #0x3c]
	ldr r6, [r4, #0x1c]
	bl sub_0205EA78
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov5_021D4858
	cmp r0, #0
	beq _02057214
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057214
_02057210:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057214:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020571A0

	thumb_func_start sub_02057218
sub_02057218: ; 0x02057218
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _020572B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205723C: ; jump table
	.short _02057244 - _0205723C - 2 ; case 0
	.short _02057280 - _0205723C - 2 ; case 1
	.short _0205729E - _0205723C - 2 ; case 2
	.short _020572AE - _0205723C - 2 ; case 3
_02057244:
	mov r0, #1
	bl ov5_021D1744
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	cmp r0, #2
	bne _02057266
	add r0, r6, #0
	mov r1, #0xa
	bl sub_02065638
	b _02057278
_02057266:
	cmp r0, #3
	bne _02057274
	add r0, r6, #0
	mov r1, #0xb
	bl sub_02065638
	b _02057278
_02057274:
	bl sub_02022974
_02057278:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_02057280:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _020572B2
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_0205729E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020572B2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_020572AE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020572B2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02057218

	thumb_func_start sub_020572B8
sub_020572B8: ; 0x020572B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020572DC
	cmp r0, #1
	beq _020572F2
	b _020572F6
_020572DC:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _020572FC ; =0x021D4E11
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572F6
_020572F2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020572F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020572FC: .word 0x021D4E11
	thumb_func_end sub_020572B8

	thumb_func_start sub_02057300
sub_02057300: ; 0x02057300
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	cmp r4, #3
	bne _02057326
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	b _02057330
_02057326:
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
_02057330:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054FBC
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, r4, #0
	bl sub_0205ECB8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020A5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020690
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02057300

	thumb_func_start sub_02057368
sub_02057368: ; 0x02057368
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	add r6, r0, #0
	bl sub_0205DC44
	cmp r0, #0
	beq _020573AE
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	mov r4, #2
	b _020573C4
_020573AE:
	add r0, r6, #0
	bl sub_0205DC50
	cmp r0, #0
	beq _020573C4
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r4, #3
_020573C4:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054FBC
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, r4, #0
	bl sub_0205ECB8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020A5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020690
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02057368

	thumb_func_start sub_020573FC
sub_020573FC: ; 0x020573FC
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057408 ; =0x020EC598
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057408: .word 0x020EC598
	thumb_func_end sub_020573FC

	thumb_func_start sub_0205740C
sub_0205740C: ; 0x0205740C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057418 ; =0x020EC599
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057418: .word 0x020EC599
	thumb_func_end sub_0205740C

	thumb_func_start sub_0205741C
sub_0205741C: ; 0x0205741C
	mov r1, #0x1c
	ldr r2, _02057428 ; =0x020EC598
	mul r1, r0
	add r0, r2, r1
	add r0, r0, #2
	bx lr
	; .align 2, 0
_02057428: .word 0x020EC598
	thumb_func_end sub_0205741C

	thumb_func_start sub_0205742C
sub_0205742C: ; 0x0205742C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057438 ; =0x020EC5A3
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057438: .word 0x020EC5A3
	thumb_func_end sub_0205742C

	thumb_func_start sub_0205743C
sub_0205743C: ; 0x0205743C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057448 ; =0x020EC5A4
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057448: .word 0x020EC5A4
	thumb_func_end sub_0205743C

	thumb_func_start sub_0205744C
sub_0205744C: ; 0x0205744C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057458 ; =0x020EC5A5
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057458: .word 0x020EC5A5
	thumb_func_end sub_0205744C

	thumb_func_start sub_0205745C
sub_0205745C: ; 0x0205745C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057468 ; =0x020EC5A8
	ldr r0, [r0, r1]
	bx lr
	nop
_02057468: .word 0x020EC5A8
	thumb_func_end sub_0205745C

	thumb_func_start sub_0205746C
sub_0205746C: ; 0x0205746C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057478 ; =0x020EC5AC
	ldr r0, [r0, r1]
	bx lr
	nop
_02057478: .word 0x020EC5AC
	thumb_func_end sub_0205746C

	thumb_func_start sub_0205747C
sub_0205747C: ; 0x0205747C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057488 ; =0x020EC5B0
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057488: .word 0x020EC5B0
	thumb_func_end sub_0205747C

	thumb_func_start sub_0205748C
sub_0205748C: ; 0x0205748C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057498 ; =0x020EC5B1
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057498: .word 0x020EC5B1
	thumb_func_end sub_0205748C

	thumb_func_start sub_0205749C
sub_0205749C: ; 0x0205749C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r2, r0, #0
	add r3, r2, #0
	mov r1, #0x10
	mov r0, #0
_020574B2:
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020574B2
	ldr r1, _020574C8 ; =sub_020574CC
	add r0, r5, #0
	strh r4, [r2, #2]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_020574C8: .word sub_020574CC
	thumb_func_end sub_0205749C

	thumb_func_start sub_020574CC
sub_020574CC: ; 0x020574CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r1, [r4]
	cmp r1, #0
	beq _020574EA
	cmp r1, #1
	beq _02057508
	b _02057510
_020574EA:
	ldr r0, [r5, #0xc]
	add r5, #0xc4
	str r0, [r4, #8]
	ldrh r0, [r4, #2]
	ldr r1, _02057514 ; =0x020ED4CC
	add r2, r4, #4
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	add r0, r6, #0
	bl sub_02050A38
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02057510
_02057508:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057510:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02057514: .word 0x020ED4CC
	thumb_func_end sub_020574CC

	thumb_func_start sub_02057518
sub_02057518: ; 0x02057518
	ldr r0, _02057520 ; =0x021C0848
	ldr r0, [r0, #0]
	bx lr
	nop
_02057520: .word 0x021C0848
	thumb_func_end sub_02057518

	thumb_func_start sub_02057524
sub_02057524: ; 0x02057524
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _02057638 ; =0x021C0848
	add r5, r2, #0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02057536
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02057536:
	bne _02057544
	mov r2, #0xb1
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
_02057544:
	ldr r1, _02057638 ; =0x021C0848
	ldr r0, _0205763C ; =0x000002BE
	ldr r2, [r1, #0]
	strb r5, [r2, r0]
	mov r2, #0
	ldr r0, [r1, #0]
	cmp r5, #0
	str r2, [r0, #4]
	beq _02057570
	bl ov23_02249918
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _02057638 ; =0x021C0848
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldr r0, [r0, #4]
	bl ov23_0224991C
_02057570:
	ldr r0, _02057638 ; =0x021C0848
	ldr r7, _02057640 ; =0x0000FFFF
	ldr r1, [r0, #0]
	str r4, [r1, #0x54]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
_0205757E:
	ldr r4, [r0, #0]
	add r5, r4, r2
	mov r4, #0
	add r5, #0xa6
	mvn r4, r4
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0xa2
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0xa4
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r5, r4, r2
	add r5, #0xa7
	mov r4, #2
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r2
	mov r4, #0
	add r5, #0x66
	mvn r4, r4
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0x62
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0x64
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r5, r4, r2
	add r5, #0x67
	mov r4, #2
	strb r4, [r5]
	ldr r4, [r0, #0]
	ldr r5, _02057644 ; =0x00000102
	add r6, r4, r1
	mov r4, #0
	mvn r4, r4
	strb r4, [r6, r5]
	ldr r4, [r0, #0]
	add r2, #8
	add r5, r4, r1
	add r5, #0xe2
	mov r4, #0
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	add r5, #0xea
	mov r4, #1
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	add r5, #0xf2
	mov r4, #0
	strb r4, [r5]
	ldr r4, [r0, #0]
	mov r5, #0xff
	add r6, r4, r3
	add r4, r5, #0
	add r4, #0x6b
	add r1, r1, #1
	add r3, #0x22
	strh r5, [r6, r4]
	cmp r1, #8
	blt _0205757E
	ldr r2, _02057638 ; =0x021C0848
	mov r1, #0xaf
	ldr r3, [r2, #0]
	lsl r1, r1, #2
	mov r0, #0
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	add r1, r1, #3
	strb r0, [r2, r1]
	ldr r0, _02057648 ; =sub_02057E80
	mov r1, #0
	mov r2, #0xc8
	bl sub_0200D9E8
	ldr r1, _02057638 ; =0x021C0848
	ldr r1, [r1, #0]
	str r0, [r1, #0x50]
	bl sub_02035EA8
	bl sub_020578DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057638: .word 0x021C0848
_0205763C: .word 0x000002BE
_02057640: .word 0x0000FFFF
_02057644: .word 0x00000102
_02057648: .word sub_02057E80
	thumb_func_end sub_02057524

	thumb_func_start sub_0205764C
sub_0205764C: ; 0x0205764C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02057698 ; =0x021C0848
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02057696
	ldr r6, _0205769C ; =0x000002BE
	mov r5, #0
	mov r7, #1
_0205765C:
	ldr r0, [r4, #0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02057672
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	mov r2, #0
	bl sub_02057DB8
	b _0205767E
_02057672:
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	add r2, r1, #0
	bl sub_02057DB8
_0205767E:
	add r5, r5, #1
	cmp r5, #8
	blt _0205765C
	ldr r0, _02057698 ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _0205769C ; =0x000002BE
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02057696
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r2, r0]
_02057696:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057698: .word 0x021C0848
_0205769C: .word 0x000002BE
	thumb_func_end sub_0205764C

	thumb_func_start sub_020576A0
sub_020576A0: ; 0x020576A0
	push {r3, lr}
	ldr r1, _020576C4 ; =0x021C0848
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _020576C2
	ldr r0, _020576C8 ; =0x000002BB
	mov r2, #1
	strb r2, [r3, r0]
	ldr r1, [r1, #0]
	mov r2, #0
	add r0, r0, #2
	strb r2, [r1, r0]
	bl sub_020578DC
	mov r0, #1
	bl sub_02057AE4
_020576C2:
	pop {r3, pc}
	; .align 2, 0
_020576C4: .word 0x021C0848
_020576C8: .word 0x000002BB
	thumb_func_end sub_020576A0

	thumb_func_start sub_020576CC
sub_020576CC: ; 0x020576CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0205775C ; =0x021C0848
	add r6, r0, #0
	ldr r0, [r7, #0]
	cmp r0, #0
	beq _0205775A
	mov r4, #0
	add r5, r4, #0
_020576DC:
	ldr r0, [r7, #0]
	add r1, r0, r5
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020576FA
	bl sub_020181C4
	ldr r0, [r7, #0]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x9f
	lsl r0, r0, #2
	str r1, [r2, r0]
_020576FA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _020576DC
	ldr r0, _0205775C ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _02057760 ; =0x000002B2
	ldrh r1, [r2, r0]
	cmp r1, #5
	blo _02057714
	ldr r0, [r2, #0x54]
	bl sub_0206DF60
_02057714:
	mov r4, #0
	add r5, r4, #0
_02057718:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02057DB8
	add r4, r4, #1
	cmp r4, #8
	blt _02057718
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200DA58
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0205774C
	bl ov23_02249938
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_020181C4
_0205774C:
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0205775C ; =0x021C0848
	mov r1, #0
	str r1, [r0, #0]
_0205775A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205775C: .word 0x021C0848
_02057760: .word 0x000002B2
	thumb_func_end sub_020576CC

	thumb_func_start sub_02057764
sub_02057764: ; 0x02057764
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0205788C ; =0x021C0848
	add r7, r4, #0
	add r5, r4, #0
_0205776E:
	ldr r1, [r6, #0]
	ldr r0, _02057890 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0205778E
	add r0, r4, #0
	bl ov23_0224AF4C
	add r0, r4, #0
	bl ov23_0224AD98
	cmp r4, #0
	beq _0205778E
	add r0, r4, #0
	bl ov23_0224AE60
_0205778E:
	ldr r1, [r6, #0]
	add r0, r1, r7
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020577B4
	ldr r2, [r1, #0x54]
	ldr r2, [r2, #0x3c]
	cmp r2, r0
	beq _020577AC
	ldr r2, _02057890 ; =0x000002BE
	ldrb r1, [r1, r2]
	cmp r1, #0
	beq _020577AC
	bl sub_0205E8E8
_020577AC:
	ldr r0, [r6, #0]
	add r1, r0, r7
	mov r0, #0
	str r0, [r1, #8]
_020577B4:
	ldr r0, [r6, #0]
	add r7, r7, #4
	add r1, r0, r4
	add r1, #0x48
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0
	add r1, #0xa6
	mvn r0, r0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0xa2
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0xa4
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0xa7
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0
	add r1, #0x66
	mvn r0, r0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0x62
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0x64
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0x67
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _02057898 ; =0x00000102
	mvn r1, r1
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _0205789C ; =0x0000010A
	add r5, #8
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xe2
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xea
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xf2
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _020578A0 ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	add r2, r0, r4
	ldr r0, _020578A4 ; =0x00000142
	add r4, r4, #1
	strb r1, [r2, r0]
	cmp r4, #8
	blt _0205776E
	ldr r0, _0205788C ; =0x021C0848
	ldr r1, _020578A8 ; =0x000002BF
	ldr r2, [r0, #0]
	mov r0, #0
	strb r0, [r2, r1]
	bl sub_020578DC
	ldr r0, _0205788C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _0205788A
	ldr r0, _020578AC ; =sub_02057E80
	mov r1, #0
	mov r2, #0xc8
	bl sub_0200D9E8
	ldr r1, _0205788C ; =0x021C0848
	ldr r1, [r1, #0]
	str r0, [r1, #0x50]
_0205788A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205788C: .word 0x021C0848
_02057890: .word 0x000002BE
_02057894: .word 0x0000FFFF
_02057898: .word 0x00000102
_0205789C: .word 0x0000010A
_020578A0: .word 0x0000013A
_020578A4: .word 0x00000142
_020578A8: .word 0x000002BF
_020578AC: .word sub_02057E80
	thumb_func_end sub_02057764

	thumb_func_start sub_020578B0
sub_020578B0: ; 0x020578B0
	push {r3, lr}
	ldr r0, _020578D8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _020578CE
	mov r0, #0
	add r1, r0, #0
	bl sub_02057E80
	ldr r0, _020578D8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200DA58
_020578CE:
	ldr r0, _020578D8 ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x50]
	pop {r3, pc}
	; .align 2, 0
_020578D8: .word 0x021C0848
	thumb_func_end sub_020578B0

	thumb_func_start sub_020578DC
sub_020578DC: ; 0x020578DC
	push {r4, lr}
	bl sub_0203608C
	ldr r1, _020579B8 ; =0x021C0848
	lsl r0, r0, #2
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x54]
	add r0, r2, r0
	ldr r1, [r1, #0x3c]
	str r1, [r0, #8]
	bl sub_0203608C
	ldr r1, _020579B8 ; =0x021C0848
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x48
	strb r2, [r0]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa2
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa4
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa6
	strb r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x62
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x64
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x66
	strb r0, [r1]
	pop {r4, pc}
	nop
_020579B8: .word 0x021C0848
	thumb_func_end sub_020578DC

	thumb_func_start sub_020579BC
sub_020579BC: ; 0x020579BC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _02057A8C ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057A90 ; =0x000002BF
	strb r2, [r1, r0]
	bl sub_0203608C
	ldr r2, _02057A8C ; =0x021C0848
	add r1, r0, #0
	ldr r4, [r2, #0]
	lsl r6, r1, #2
	ldr r0, [r4, #0x54]
	ldr r3, [r0, #0x3c]
	add r0, r4, r6
	str r3, [r0, #8]
	ldr r0, [r2, #0]
	mov r3, #1
	add r0, r0, r1
	add r0, #0x48
	strb r3, [r0]
	ldr r0, [sp]
	ldr r3, [r2, #0]
	lsl r5, r0, #3
	add r0, r3, r5
	add r0, #0xa2
	lsl r4, r1, #3
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0xa2
	strh r0, [r3]
	ldr r3, [r2, #0]
	add r0, r3, r5
	add r0, #0xa4
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0xa4
	strh r0, [r3]
	ldr r7, [r2, #0]
	mov r0, #0xa6
	add r3, r7, r5
	ldrsb r0, [r3, r0]
	add r3, r7, r4
	add r3, #0xa6
	strb r0, [r3]
	ldr r3, [r2, #0]
	mov r7, #0x29
	add r0, r3, r5
	add r0, #0x62
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0x62
	lsl r7, r7, #4
	strh r0, [r3]
	ldr r3, [r2, #0]
	add r0, r3, r5
	add r0, #0x64
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0x64
	strh r0, [r3]
	ldr r0, [r2, #0]
	mov r3, #0x66
	add r5, r0, r5
	add r0, r0, r4
	ldrsb r5, [r5, r3]
	add r0, #0x66
	strb r5, [r0]
	ldr r0, [sp]
	ldr r4, [r2, #0]
	lsl r5, r0, #2
	add r0, r4, r5
	ldr r0, [r0, r7]
	add r4, r4, r6
	str r0, [r4, r7]
	ldr r0, [r2, #0]
	mov r4, #0
	add r0, r0, r5
	str r4, [r0, r7]
	ldr r2, [r2, #0]
	add r0, r2, r6
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _02057A74
	add r3, #0xe4
	add r3, r2, r3
	mov r2, #0x22
	mul r2, r1
	add r1, r3, r2
	bl sub_02025E80
_02057A74:
	ldr r1, _02057A8C ; =0x021C0848
	mov r0, #0xff
	ldr r3, [r1, #0]
	ldr r1, [sp]
	mov r2, #0x22
	mul r2, r1
	add r1, r0, #0
	add r2, r3, r2
	add r1, #0x6b
	strh r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057A8C: .word 0x021C0848
_02057A90: .word 0x000002BF
	thumb_func_end sub_020579BC

	thumb_func_start sub_02057A94
sub_02057A94: ; 0x02057A94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02057ADC ; =0x021C0848
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, sp, #0
	strb r4, [r1]
	asr r2, r4, #8
	strb r2, [r1, #1]
	asr r2, r6, #8
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	strb r0, [r1, #4]
	cmp r5, #0
	beq _02057AC6
	ldrb r2, [r1, #4]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #4]
_02057AC6:
	mov r0, #0x16
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02057ADC ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02057AE0 ; =0x000002BB
	strb r2, [r1, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02057ADC: .word 0x021C0848
_02057AE0: .word 0x000002BB
	thumb_func_end sub_02057A94

	thumb_func_start sub_02057AE4
sub_02057AE4: ; 0x02057AE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02057B10 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _02057B10 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02057A94
	pop {r3, r4, r5, pc}
	nop
_02057B10: .word 0x021C0848
	thumb_func_end sub_02057AE4

	thumb_func_start sub_02057B14
sub_02057B14: ; 0x02057B14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203608C
	ldr r1, _02057B44 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x62
	ldrh r4, [r0]
	bl sub_0203608C
	ldr r1, _02057B44 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x64
	ldrh r2, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02057A94
	pop {r3, r4, r5, pc}
	nop
_02057B44: .word 0x021C0848
	thumb_func_end sub_02057B14

	thumb_func_start sub_02057B48
sub_02057B48: ; 0x02057B48
	push {r3, r4, r5, lr}
	sub sp, #8
	ldrh r2, [r1]
	mov r4, #0xf
	lsl r4, r4, #0xc
	ldrh r3, [r1, #2]
	cmp r2, r4
	blo _02057B5A
	sub r2, r4, #1
_02057B5A:
	mov r4, #0xf
	lsl r4, r4, #0xc
	cmp r3, r4
	blo _02057B64
	sub r3, r4, #1
_02057B64:
	mov r4, #0xf
	and r0, r4
	add r4, sp, #0
	strb r0, [r4]
	strb r2, [r4, #1]
	asr r2, r2, #8
	add r5, r2, #0
	mov r0, #1
	and r5, r0
	asr r2, r3, #7
	mov r0, #2
	and r0, r2
	add r0, r5, r0
	strb r0, [r4, #2]
	strb r3, [r4, #3]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _02057B90
	ldrb r2, [r4, #2]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r4, #2]
_02057B90:
	mov r2, #4
	ldrsb r2, [r1, r2]
	add r5, sp, #0
	ldrb r0, [r5]
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1e
	sub r3, r3, r4
	mov r2, #0x1e
	ror r3, r2
	add r2, r4, r3
	lsl r2, r2, #4
	add r0, r0, r2
	strb r0, [r5]
	ldrb r0, [r1, #5]
	ldrb r2, [r5]
	add r1, sp, #0
	lsl r0, r0, #6
	add r0, r2, r0
	strb r0, [r5]
	mov r0, #0x17
	mov r2, #0
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02057B48

	thumb_func_start sub_02057BC4
sub_02057BC4: ; 0x02057BC4
	push {r3, r4, r5, lr}
	ldr r0, _02057C24 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB0C
	add r4, r0, #0
	ldr r0, _02057C24 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB14
	add r5, r0, #0
	cmp r4, #0
	bne _02057C0E
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02057C0E
	ldr r0, _02057C24 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02057C0E
	mov r0, #1
	bl sub_02057AE4
	ldr r0, _02057C24 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	strb r2, [r1, r0]
_02057C0E:
	cmp r4, #1
	bne _02057C20
	cmp r5, #1
	bne _02057C20
	ldr r0, _02057C24 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	strb r2, [r1, r0]
_02057C20:
	pop {r3, r4, r5, pc}
	nop
_02057C24: .word 0x021C0848
_02057C28: .word 0x000002BA
	thumb_func_end sub_02057BC4

	thumb_func_start sub_02057C2C
sub_02057C2C: ; 0x02057C2C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _02057C78 ; =0x021C0848
	add r5, r4, #0
	add r6, r4, #0
_02057C36:
	ldr r0, [r7, #0]
	add r2, r0, r4
	add r1, r2, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _02057C64
	ldr r3, _02057C7C ; =0x00000132
	add r1, r0, #0
	ldrb r3, [r2, r3]
	add r1, #0x62
	cmp r3, #0
	bne _02057C58
	ldr r3, _02057C80 ; =0x000002BB
	ldrb r0, [r0, r3]
	cmp r0, #0
	beq _02057C64
_02057C58:
	ldr r0, _02057C7C ; =0x00000132
	add r1, r1, r5
	strb r6, [r2, r0]
	add r0, r4, #0
	bl sub_02057B48
_02057C64:
	add r4, r4, #1
	add r5, #8
	cmp r4, #8
	blt _02057C36
	ldr r0, _02057C78 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057C80 ; =0x000002BB
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057C78: .word 0x021C0848
_02057C7C: .word 0x00000132
_02057C80: .word 0x000002BB
	thumb_func_end sub_02057C2C

	thumb_func_start sub_02057C84
sub_02057C84: ; 0x02057C84
	mov r0, #0xb1
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02057C84

	thumb_func_start sub_02057C8C
sub_02057C8C: ; 0x02057C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _02057DAC ; =0x021C0848
	add r5, r0, #0
	ldr r2, [r1, #0]
	lsl r6, r5, #2
	add r1, r2, r6
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02057CA2
	b _02057DA6
_02057CA2:
	ldr r1, _02057DB0 ; =0x000002BD
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _02057DA6
	bl sub_02032EE8
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _02057DA6
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057DB4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02057CE2
	bl sub_0203608C
	cmp r5, r0
	beq _02057CE2
	ldr r0, _02057DAC ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #8
	ldr r0, [r0, #0x54]
	add r1, r5, r1
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	cmp r0, #0
	beq _02057CE2
	bl sub_02061AF4
_02057CE2:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_02025FCC
	cmp r0, #0
	bne _02057CF4
	mov r0, #1
	str r0, [sp, #0x10]
_02057CF4:
	ldr r0, _02057DAC ; =0x021C0848
	lsl r4, r5, #3
	ldr r7, [r0, #0]
	ldr r0, [sp, #0x14]
	bl sub_02025F30
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, #0xa6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x54]
	add r7, r7, r4
	add r1, r7, #0
	add r2, r7, #0
	add r1, #0xa2
	add r2, #0xa4
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldrsb r3, [r7, r3]
	ldr r0, [r0, #0x38]
	bl sub_0205E7D0
	add r7, r0, #0
	bne _02057D2E
	bl sub_02022974
_02057D2E:
	ldr r0, _02057DAC ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r6
	str r7, [r0, #8]
	add r0, r7, #0
	bl sub_0205EB3C
	mov r1, #1
	lsl r1, r1, #8
	add r1, r5, r1
	bl sub_0206290C
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057DB4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057D58
	add r0, r5, #0
	bl ov23_02243038
_02057D58:
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, _02057DB4 ; =0x000002BE
	ldr r3, [r0, #0]
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _02057D9A
	add r0, r3, r5
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057D9A
	sub r0, r1, #1
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02057D8A
	add r1, r3, r4
	ldr r0, [r3, #0x54]
	add r3, r3, r4
	add r1, #0xa2
	add r3, #0xa4
	ldrh r1, [r1]
	ldrh r3, [r3]
	mov r2, #0
	bl ov5_021F5634
_02057D8A:
	ldr r0, _02057DAC ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	add sp, #0x18
	add r0, r0, r5
	add r0, #0x48
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02057D9A:
	cmp r2, #0
	bne _02057DA6
	add r0, r3, r5
	mov r1, #1
	add r0, #0x48
	strb r1, [r0]
_02057DA6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057DAC: .word 0x021C0848
_02057DB0: .word 0x000002BD
_02057DB4: .word 0x000002BE
	thumb_func_end sub_02057C8C

	thumb_func_start sub_02057DB8
sub_02057DB8: ; 0x02057DB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02057E5C ; =0x021C0848
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	cmp r0, #0
	beq _02057E58
	add r0, #0x5a
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	ldr r0, _02057E5C ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057E60 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057DE4
	add r0, r5, #0
	bl ov23_0224AF4C
_02057DE4:
	ldr r0, _02057E5C ; =0x021C0848
	lsl r4, r5, #2
	ldr r1, [r0, #0]
	add r0, r1, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02057E1A
	ldr r2, [r1, #0x54]
	ldr r2, [r2, #0x3c]
	cmp r2, r0
	beq _02057E10
	ldr r2, _02057E60 ; =0x000002BE
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _02057E06
	cmp r7, #0
	beq _02057E0C
_02057E06:
	bl sub_0205E8E8
	b _02057E10
_02057E0C:
	bl sub_0205E8E0
_02057E10:
	ldr r0, _02057E5C ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	str r1, [r0, #8]
_02057E1A:
	ldr r0, _02057E5C ; =0x021C0848
	ldr r1, [r0, #0]
	add r1, #0x48
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _02057E2E
	cmp r6, #0
	bne _02057E2E
	mov r0, #0
	strb r0, [r1, r5]
_02057E2E:
	ldr r1, _02057E5C ; =0x021C0848
	mov r3, #1
	ldr r0, [r1, #0]
	add r2, r0, r5
	ldr r0, _02057E64 ; =0x00000132
	cmp r6, #0
	strb r3, [r2, r0]
	bne _02057E58
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, r0, r5
	add r0, #0xfa
	strb r2, [r0]
	ldr r1, [r1, #0]
	ldr r0, _02057E60 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057E58
	add r0, r5, #0
	bl ov23_0224AE60
_02057E58:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057E5C: .word 0x021C0848
_02057E60: .word 0x000002BE
_02057E64: .word 0x00000132
	thumb_func_end sub_02057DB8

	thumb_func_start sub_02057E68
sub_02057E68: ; 0x02057E68
	ldr r1, _02057E78 ; =0x021BF67C
	mov r0, #2
	ldr r1, [r1, #0x44]
	tst r1, r0
	beq _02057E74
	mov r0, #1
_02057E74:
	ldr r3, _02057E7C ; =sub_02035E5C
	bx r3
	; .align 2, 0
_02057E78: .word 0x021BF67C
_02057E7C: .word sub_02035E5C
	thumb_func_end sub_02057E68

	thumb_func_start sub_02057E80
sub_02057E80: ; 0x02057E80
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	beq _02057EC0
	bl sub_02057E68
	bl sub_0203608C
	cmp r0, #0
	bne _02057EB4
	add r0, r4, #0
	bl sub_02057C2C
	add r0, r4, #0
	bl sub_02057BC4
	ldr r0, _02057EF0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02057EBA
	bl ov23_02249954
	b _02057EBA
_02057EB4:
	add r0, r4, #0
	bl sub_02057BC4
_02057EBA:
	add r0, r4, #0
	bl sub_02057EF8
_02057EC0:
	ldr r4, _02057EF0 ; =0x021C0848
	ldr r6, _02057EF4 ; =0x000002BE
	mov r5, #0
_02057EC6:
	ldr r0, [r4, #0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02057EE6
	bl sub_0203608C
	cmp r0, #0
	bne _02057EE6
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _02057EE6
	add r0, r5, #0
	bl ov23_0224B5CC
_02057EE6:
	add r5, r5, #1
	cmp r5, #8
	blt _02057EC6
	pop {r4, r5, r6, pc}
	nop
_02057EF0: .word 0x021C0848
_02057EF4: .word 0x000002BE
	thumb_func_end sub_02057E80

	thumb_func_start sub_02057EF8
sub_02057EF8: ; 0x02057EF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02057FA4 ; =0x021C0848
	ldr r7, _02057FA8 ; =0x000002BE
	mov r5, #0
	add r6, sp, #0
_02057F02:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02057F30
	bl sub_02036180
	cmp r0, #0
	beq _02057F1A
	cmp r5, #0
	beq _02057F30
_02057F1A:
	bl sub_0203608C
	cmp r0, #0
	bne _02057F30
	ldr r0, [r4, #0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _02057F30
	add r0, r5, #0
	bl ov23_0224D898
_02057F30:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02057F48
	bl sub_02036180
	cmp r0, #0
	beq _02057F60
	cmp r5, #0
	bne _02057F60
_02057F48:
	add r0, r5, #0
	bl sub_020587C0
	ldr r1, [r4, #0]
	ldr r0, _02057FA8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057F9A
	add r0, r5, #0
	bl ov23_0224AF7C
	b _02057F9A
_02057F60:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _02057F9A
	bl sub_0203608C
	cmp r0, #0
	bne _02057F8A
	ldr r1, [r4, #0]
	ldr r0, _02057FA8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057F8A
	add r0, r5, #0
	bl ov23_022436F0
	add r0, r5, #0
	bl ov23_02241648
_02057F8A:
	strb r5, [r6]
	ldr r3, [r4, #0]
	mov r0, #0
	ldr r3, [r3, #0x54]
	mov r1, #1
	add r2, sp, #0
	bl sub_0205853C
_02057F9A:
	add r5, r5, #1
	cmp r5, #8
	blt _02057F02
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057FA4: .word 0x021C0848
_02057FA8: .word 0x000002BE
	thumb_func_end sub_02057EF8

	thumb_func_start sub_02057FAC
sub_02057FAC: ; 0x02057FAC
	ldr r0, _02057FC0 ; =0x021C0848
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02057FBC
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
_02057FBC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02057FC0: .word 0x021C0848
	thumb_func_end sub_02057FAC

	thumb_func_start sub_02057FC4
sub_02057FC4: ; 0x02057FC4
	push {r3, lr}
	ldr r1, _02057FEC ; =0x021C0848
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _02057FEA
	mov r1, #0xaf
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, r0
	beq _02057FDA
	strb r0, [r3, r1]
_02057FDA:
	ldr r1, _02057FEC ; =0x021C0848
	mov r0, #0x3e
	ldr r2, [r1, #0]
	mov r1, #0xaf
	lsl r1, r1, #2
	add r1, r2, r1
	bl sub_020360D0
_02057FEA:
	pop {r3, pc}
	; .align 2, 0
_02057FEC: .word 0x021C0848
	thumb_func_end sub_02057FC4

	thumb_func_start sub_02057FF0
sub_02057FF0: ; 0x02057FF0
	push {r4, lr}
	ldr r2, _02058014 ; =0x021C0848
	ldr r4, [r2, #0]
	cmp r4, #0
	beq _02058010
	mov r1, #0xaf
	lsl r1, r1, #2
	ldrb r3, [r4, r1]
	cmp r3, r0
	beq _02058010
	strb r0, [r4, r1]
	ldr r2, [r2, #0]
	mov r0, #0x3e
	add r1, r2, r1
	bl sub_020360D0
_02058010:
	pop {r4, pc}
	nop
_02058014: .word 0x021C0848
	thumb_func_end sub_02057FF0

	thumb_func_start sub_02058018
sub_02058018: ; 0x02058018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02058058 ; =0x021C0848
	add r4, r2, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058054
	cmp r1, #1
	beq _0205802E
	bl sub_02022974
_0205802E:
	cmp r5, #8
	blt _02058036
	bl sub_02022974
_02058036:
	ldrb r0, [r4]
	mov r1, #1
	cmp r0, #1
	beq _02058044
	cmp r0, #0
	beq _02058044
	mov r1, #0
_02058044:
	cmp r1, #0
	bne _0205804C
	bl sub_02022974
_0205804C:
	ldrb r1, [r4]
	add r0, r5, #0
	bl sub_02059058
_02058054:
	pop {r3, r4, r5, pc}
	nop
_02058058: .word 0x021C0848
	thumb_func_end sub_02058018

	thumb_func_start sub_0205805C
sub_0205805C: ; 0x0205805C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020580D0 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020580CE
	ldr r0, _020580D4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058080
	add r0, r4, #0
	bl sub_02057FF0
	ldr r0, _020580D0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020580D8 ; =0x000002C1
	strb r4, [r1, r0]
_02058080:
	ldr r4, [r5, #0x3c]
	cmp r4, #0
	beq _02058094
	bl sub_0203608C
	ldr r1, _020580D0 ; =0x021C0848
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r1, r0
	str r4, [r0, #8]
_02058094:
	bl sub_02035E38
	cmp r0, #0
	beq _020580AE
	bl sub_0203608C
	cmp r0, #0
	bne _020580AE
	ldr r1, _020580D0 ; =0x021C0848
	mov r0, #0
	ldr r1, [r1, #0]
	bl sub_0205820C
_020580AE:
	bl sub_02035E38
	cmp r0, #0
	beq _020580CE
	bl sub_0203608C
	cmp r0, #0
	bne _020580CE
	ldr r0, _020580D0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020580D4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020580CE
	bl sub_020591A8
_020580CE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020580D0: .word 0x021C0848
_020580D4: .word 0x000002BE
_020580D8: .word 0x000002C1
	thumb_func_end sub_0205805C

	thumb_func_start sub_020580DC
sub_020580DC: ; 0x020580DC
	mov r0, #0x20
	tst r0, r1
	beq _020580E6
	mov r0, #2
	bx lr
_020580E6:
	mov r0, #0x10
	tst r0, r1
	beq _020580F0
	mov r0, #3
	bx lr
_020580F0:
	mov r0, #0x40
	tst r0, r1
	beq _020580FA
	mov r0, #0
	bx lr
_020580FA:
	mov r0, #0x80
	tst r1, r0
	beq _02058104
	mov r0, #1
	bx lr
_02058104:
	sub r0, #0x81
	bx lr
	thumb_func_end sub_020580DC

	thumb_func_start sub_02058108
sub_02058108: ; 0x02058108
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02058148 ; =0x021C0848
	add r6, r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203A4B4
	add r4, r0, #0
	ldr r0, _02058148 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203A4BC
	mov r2, #0
	cmp r4, #0
	ble _02058142
_0205812A:
	ldrh r1, [r0, #0x18]
	cmp r5, r1
	bne _0205813A
	ldrh r1, [r0, #0x1a]
	cmp r6, r1
	bne _0205813A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205813A:
	add r2, r2, #1
	add r0, #0x20
	cmp r2, r4
	blt _0205812A
_02058142:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02058148: .word 0x021C0848
	thumb_func_end sub_02058108

	thumb_func_start sub_0205814C
sub_0205814C: ; 0x0205814C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020581C0 ; =0x0000FFFF
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, r0
	beq _020581AE
	cmp r6, r0
	beq _020581AE
	mov r4, #0
_02058160:
	cmp r4, r7
	beq _0205817C
	add r0, r4, #0
	bl sub_02058DF8
	cmp r5, r0
	bne _0205817C
	add r0, r4, #0
	bl sub_02058E4C
	cmp r6, r0
	bne _0205817C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205817C:
	add r4, r4, #1
	cmp r4, #8
	blt _02058160
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02058108
	cmp r0, #0
	beq _02058192
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058192:
	ldr r0, _020581C4 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020581C8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020581AE
	add r0, r5, #0
	add r1, r6, #0
	bl ov23_0224D1A0
	cmp r0, #0
	bne _020581AE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020581AE:
	ldr r0, _020581C4 ; =0x021C0848
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	ldr r0, [r0, #0x54]
	bl sub_02054F68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020581C0: .word 0x0000FFFF
_020581C4: .word 0x021C0848
_020581C8: .word 0x000002BE
	thumb_func_end sub_0205814C

	thumb_func_start sub_020581CC
sub_020581CC: ; 0x020581CC
	cmp r0, #5
	bge _020581D4
	mov r0, #8
	bx lr
_020581D4:
	cmp r0, #0xa
	bge _020581DC
	mov r0, #4
	bx lr
_020581DC:
	mov r0, #2
	bx lr
	thumb_func_end sub_020581CC

	thumb_func_start sub_020581E0
sub_020581E0: ; 0x020581E0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r3, _02058208 ; =0x020ED500
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r4, #5
	str r0, [r2, #0]
	blt _020581FE
	bl sub_02022974
_020581FE:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02058208: .word 0x020ED500
	thumb_func_end sub_020581E0

	thumb_func_start sub_0205820C
sub_0205820C: ; 0x0205820C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r5, #0
	add r0, r5, #0
	ldr r6, _02058464 ; =0x021C0848
	str r5, [sp, #4]
	str r0, [sp]
_0205821A:
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r1, r0, r5
	add r1, #0xe2
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r1, r0, r5
	add r1, #0xea
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x62
	ldr r0, [r0, #4]
	add r4, r2, r1
	cmp r0, #0
	beq _02058250
	add r1, r5, #0
	bl ov23_0224993C
	str r0, [sp, #4]
_02058250:
	ldr r1, [r6, #0]
	ldr r0, _02058468 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058264
	add r0, r5, #0
	bl ov23_0224C1C8
	cmp r0, #0
	bne _020582E6
_02058264:
	ldr r0, [r6, #0]
	ldr r1, _0205846C ; =0x0000013A
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0205827A
	ldr r1, _0205846C ; =0x0000013A
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _0205846C ; =0x0000013A
	strb r2, [r0, r1]
_0205827A:
	ldr r0, [r6, #0]
	ldr r1, _0205846C ; =0x0000013A
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _020582AC
	ldr r1, _02058468 ; =0x000002BE
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _020582AC
	add r0, r5, #0
	bl ov23_0224444C
	cmp r0, #0
	bne _020582E6
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _020582AC
	add r0, r5, #0
	bl ov23_0224D7C8
	cmp r0, #0
	bne _020582E6
_020582AC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020582BA
	bl ov23_022499AC
	cmp r0, #0
	beq _020582E6
_020582BA:
	ldr r0, [r6, #0]
	add r0, r0, r5
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	beq _020582CA
	mov r7, #0
	b _020582D2
_020582CA:
	add r0, r5, #0
	bl sub_02035E84
	add r7, r0, #0
_020582D2:
	add r0, r5, #0
	bl sub_02035E70
	strb r0, [r4, #5]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020582E8
_020582E6:
	b _02058452
_020582E8:
	ldr r0, _02058470 ; =0x0000010A
	ldr r2, _02058474 ; =0x0000012A
	ldrb r0, [r1, r0]
	ldrb r1, [r1, r2]
	bl sub_020581CC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_02058A18
	cmp r0, #0
	beq _02058318
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x10]
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	b _02058452
_02058318:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _02058328
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
_02058328:
	mov r0, #0
	strb r0, [r4, #7]
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _0205834E
	add r1, sp, #0x14
	strb r5, [r1, #1]
	ldr r1, _0205847C ; =0x00000122
	mov r2, #1
	strb r2, [r0, r1]
	add r1, sp, #0x14
	mov r0, #0x28
	add r1, #1
	bl sub_02035B48
	b _02058452
_0205834E:
	add r0, r7, #0
	add r1, r7, #0
	bl sub_020580DC
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058EE0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02058F18
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, _02058480 ; =0x0000FFFF
	cmp r1, r0
	beq _02058452
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02058452
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02058452
	mov r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, r7
	beq _020583B4
	strb r7, [r4, #4]
	ldr r0, [r6, #0]
	mov r1, #4
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #2
	bls _02058452
	ldr r1, _0205847C ; =0x00000122
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _0205847C ; =0x00000122
	strb r2, [r0, r1]
	b _02058452
_020583B4:
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _02058452
	ldr r1, _02058468 ; =0x000002BE
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _020583D6
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r5, #0
	bl ov23_0224B8E0
	cmp r0, #1
	beq _02058452
_020583D6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r5, #0
	bl sub_0205814C
	cmp r0, #0
	beq _020583FE
	mov r0, #1
	strb r0, [r4, #7]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #4
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	b _02058452
_020583FE:
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [sp, #0xc]
	strh r0, [r4]
	ldr r0, [sp, #8]
	strh r0, [r4, #2]
	strb r7, [r4, #4]
	ldrb r0, [r4, #5]
	bl sub_020581E0
	ldr r1, [r6, #0]
	add r2, r1, r5
	ldr r1, _0205846C ; =0x0000013A
	strb r0, [r2, r1]
	ldr r0, [r6, #0]
	sub r1, #0x20
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02058452
	ldr r1, _02058484 ; =0x0000011A
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02058484 ; =0x0000011A
	strb r2, [r0, r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02058484 ; =0x0000011A
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058452
	mov r1, #1
	add r0, sp, #0x14
	strb r1, [r0]
	add r0, r5, #0
	add r2, sp, #0x14
	mov r3, #0
	bl ov23_0224540C
_02058452:
	ldr r0, [sp]
	add r5, r5, #1
	add r0, #8
	str r0, [sp]
	cmp r5, #8
	bge _02058460
	b _0205821A
_02058460:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02058464: .word 0x021C0848
_02058468: .word 0x000002BE
_0205846C: .word 0x0000013A
_02058470: .word 0x0000010A
_02058474: .word 0x0000012A
_02058478: .word 0x00000132
_0205847C: .word 0x00000122
_02058480: .word 0x0000FFFF
_02058484: .word 0x0000011A
	thumb_func_end sub_0205820C

	thumb_func_start sub_02058488
sub_02058488: ; 0x02058488
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02058530 ; =0x021C0848
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r3, r2, #0
	cmp r0, #0
	beq _0205852C
	add r2, r0, #0
	ldrb r4, [r3, #4]
	add r2, #0x62
	lsl r1, r7, #3
	add r2, r2, r1
	mov r1, #0x80
	tst r1, r4
	beq _020584AE
	ldr r1, _02058534 ; =0x000002BB
	mov r2, #1
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_020584AE:
	mov r0, #4
	ldrsb r1, [r2, r0]
	sub r0, r0, #5
	cmp r1, r0
	bne _020584CA
	ldr r4, _02058538 ; =0x00000132
	mov r1, #0
	mov r0, #1
_020584BE:
	ldr r6, [r5, #0]
	add r6, r6, r1
	add r1, r1, #1
	strb r0, [r6, r4]
	cmp r1, #8
	blt _020584BE
_020584CA:
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	ldrh r1, [r2]
	ldrb r0, [r3]
	add r0, r1, r0
	strh r0, [r2]
	ldrb r1, [r3, #1]
	ldrh r0, [r2]
	lsl r4, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r4, r1
	add r0, r0, r4
	strh r0, [r2]
	ldrh r4, [r2, #2]
	ldrb r0, [r3, #2]
	add r0, r4, r0
	strh r0, [r2, #2]
	ldrb r4, [r3, #3]
	ldrh r0, [r2, #2]
	lsl r4, r4, #8
	and r1, r4
	add r0, r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r3, #4]
	mov r0, #0xf
	ldr r3, _02058530 ; =0x021C0848
	and r0, r1
	strb r0, [r2, #4]
	ldr r1, [r3, #0]
	mov r0, #1
	add r1, r1, r7
	add r1, #0x48
	strb r0, [r1]
	ldr r1, [r3, #0]
	add r4, r1, r7
	ldr r1, _02058538 ; =0x00000132
	strb r0, [r4, r1]
	ldr r0, [r3, #0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0x54]
	bl sub_02054F68
	cmp r0, #0
	beq _0205852C
	bl sub_02022974
_0205852C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02058530: .word 0x021C0848
_02058534: .word 0x000002BB
_02058538: .word 0x00000132
	thumb_func_end sub_02058488

	thumb_func_start sub_0205853C
sub_0205853C: ; 0x0205853C
	push {r3, r4, r5, lr}
	ldr r0, _02058598 ; =0x021C0848
	ldrb r4, [r2]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058594
	bl sub_0203608C
	cmp r4, r0
	beq _02058594
	ldr r0, _02058598 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _0205859C ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058584
	add r0, r4, #0
	bl ov23_022430B8
	ldr r0, _02058598 ; =0x021C0848
	ldr r3, [r0, #0]
	ldr r0, _020585A0 ; =0x000002BD
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02058584
	lsl r5, r4, #3
	add r1, r3, r5
	ldr r0, [r3, #0x54]
	add r3, r3, r5
	add r1, #0xa2
	add r3, #0xa4
	ldrh r1, [r1]
	ldrh r3, [r3]
	mov r2, #0
	bl ov5_021F5634
_02058584:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02057DB8
	add r0, r4, #0
	bl sub_02032D98
_02058594:
	pop {r3, r4, r5, pc}
	nop
_02058598: .word 0x021C0848
_0205859C: .word 0x000002BE
_020585A0: .word 0x000002BD
	thumb_func_end sub_0205853C

	thumb_func_start sub_020585A4
sub_020585A4: ; 0x020585A4
	mov r0, #5
	bx lr
	thumb_func_end sub_020585A4

	thumb_func_start sub_020585A8
sub_020585A8: ; 0x020585A8
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldrb r1, [r5]
	add r6, r0, #0
	mov r0, #0xf
	add r4, r1, #0
	and r4, r0
	ldr r0, _0205863C ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058638
	bl sub_0203608C
	cmp r6, r0
	bne _020585D2
	ldr r0, _0205863C ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058640 ; =0x000002C3
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058638
_020585D2:
	ldr r0, _0205863C ; =0x021C0848
	ldrb r2, [r5, #2]
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r1, #0xa2
	add r1, r1, r0
	mov r0, #0x80
	tst r0, r2
	beq _020585E8
	mov r0, #1
	b _020585EA
_020585E8:
	mov r0, #0
_020585EA:
	strb r0, [r1, #7]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldrh r2, [r1]
	ldrb r0, [r5, #1]
	add r0, r2, r0
	strh r0, [r1]
	ldrb r2, [r5, #2]
	ldrh r0, [r1]
	lsl r3, r2, #8
	mov r2, #1
	lsl r2, r2, #8
	and r3, r2
	add r0, r0, r3
	strh r0, [r1]
	ldrh r3, [r1, #2]
	ldrb r0, [r5, #3]
	add r0, r3, r0
	strh r0, [r1, #2]
	ldrb r3, [r5, #2]
	ldrh r0, [r1, #2]
	lsl r3, r3, #7
	and r2, r3
	add r0, r0, r2
	strh r0, [r1, #2]
	ldrb r0, [r5]
	asr r2, r0, #4
	mov r0, #3
	and r2, r0
	strb r2, [r1, #4]
	ldrb r2, [r5]
	asr r2, r2, #6
	and r0, r2
	strb r0, [r1, #5]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02057C8C
_02058638:
	pop {r4, r5, r6, pc}
	nop
_0205863C: .word 0x021C0848
_02058640: .word 0x000002C3
	thumb_func_end sub_020585A8

	thumb_func_start sub_02058644
sub_02058644: ; 0x02058644
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020586A4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0205869C
	bl sub_0203608C
	cmp r5, r0
	bne _0205869C
	add r0, r4, #0
	bl sub_0202929C
	add r0, r4, #0
	bl sub_020292B4
	cmp r0, #0x32
	bne _0205869C
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x25
	bl sub_0202CFEC
_0205869C:
	pop {r3, r4, r5, pc}
	nop
_020586A0: .word 0x021C0848
_020586A4: .word 0x000002BE
	thumb_func_end sub_02058644

	thumb_func_start sub_020586A8
sub_020586A8: ; 0x020586A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _020587B4 ; =0x020ED4E4
	add r6, r3, #0
	add r5, r0, #0
	add r3, sp, #4
	mov r2, #0xc
_020586B6:
	ldrb r0, [r4]
	add r4, r4, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _020586B6
	ldr r0, _020587B8 ; =0x021C0848
	ldr r2, _020587BC ; =0x00000102
	ldr r0, [r0, #0]
	add r3, r0, r5
	ldrsb r3, [r3, r2]
	mov r2, #0
	mvn r2, r2
	cmp r3, r2
	beq _020586DE
	lsl r7, r5, #2
	add r0, r0, r7
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020586E4
_020586DE:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020586E4:
	cmp r1, #0
	bne _020586EE
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020586EE:
	bl sub_0205EB3C
	add r4, r0, #0
	ldr r0, _020587B8 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r7, #0
	add r0, r1, r0
	ldr r0, [r0, #8]
	bl sub_0205EA78
	str r0, [sp]
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _020587BC ; =0x00000102
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r1, [sp]
	cmp r1, r0
	beq _02058744
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628C4
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _020587BC ; =0x00000102
	ldrsb r0, [r1, r0]
	bl sub_02059328
	add r1, r0, #0
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r7
	ldr r0, [r0, #8]
	bl sub_0205EA84
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628BC
_02058744:
	add r0, r4, #0
	bl sub_02065684
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020587AC
	add r0, r5, #0
	bl sub_02058644
	cmp r6, #0
	beq _02058768
	cmp r6, #1
	beq _0205877E
	cmp r6, #2
	beq _02058796
	b _020587AC
_02058768:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r2, [r2, r1]
	add r1, sp, #4
	ldrb r1, [r1, r2]
	bl sub_02065638
	b _020587AC
_0205877E:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r1, [r2, r1]
	add r2, r1, #4
	add r1, sp, #4
	ldrb r1, [r1, r2]
	bl sub_02065638
	b _020587AC
_02058796:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r2, [r2, r1]
	add r1, sp, #4
	add r2, #8
	ldrb r1, [r1, r2]
	bl sub_02065638
_020587AC:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020587B4: .word 0x020ED4E4
_020587B8: .word 0x021C0848
_020587BC: .word 0x00000102
	thumb_func_end sub_020586A8

	thumb_func_start sub_020587C0
sub_020587C0: ; 0x020587C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02058A00 ; =0x021C0848
	lsl r1, r5, #3
	ldr r0, [r0, #0]
	add r2, r0, #0
	add r2, #0xa2
	add r6, r2, r1
	ldr r1, _02058A04 ; =0x00000142
	add r2, r0, r1
	ldrb r1, [r2, r5]
	cmp r1, #0
	beq _020587E4
	sub r0, r1, #1
	add sp, #0x1c
	strb r0, [r2, r5]
	pop {r4, r5, r6, r7, pc}
_020587E4:
	ldrh r2, [r6]
	ldr r1, _02058A08 ; =0x0000FFFF
	cmp r2, r1
	beq _02058898
	ldrh r2, [r6, #2]
	cmp r2, r1
	beq _02058898
	ldr r1, _02058A0C ; =0x000002BD
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _02058898
	add r1, r1, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02058816
	bl sub_0203608C
	cmp r5, r0
	bne _02058816
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A10 ; =0x000002C1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058898
_02058816:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02058828
	b _020589FA
_02058828:
	bl sub_0205EABC
	ldrh r1, [r6]
	sub r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_0205EAC8
	ldrh r1, [r6, #2]
	sub r7, r0, r1
	ldr r0, [sp, #0x18]
	bl sub_0205EA78
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02058852
	cmp r7, #0
	bne _02058852
	mov r4, #0
	b _0205887C
_02058852:
	ldr r0, [sp, #0x10]
	bl sub_020D4070
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020D4070
	cmp r4, r0
	ble _02058872
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0205886E
	mov r4, #0x20
	b _0205887C
_0205886E:
	mov r4, #0x10
	b _0205887C
_02058872:
	cmp r7, #0
	ble _0205887A
	mov r4, #0x40
	b _0205887C
_0205887A:
	mov r4, #0x80
_0205887C:
	add r0, r7, #0
	bl sub_020D4070
	ldr r0, [sp, #0x10]
	bl sub_020D4070
	ldrb r3, [r6, #5]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_020586A8
	cmp r0, #0
	beq _0205889A
_02058898:
	b _020589FA
_0205889A:
	ldrb r0, [r6, #5]
	mov r7, #0xff
	str r0, [sp, #0x14]
	cmp r0, #3
	bhi _020588D6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020588B0: ; jump table
	.short _020588B8 - _020588B0 - 2 ; case 0
	.short _020588BE - _020588B0 - 2 ; case 1
	.short _020588CC - _020588B0 - 2 ; case 2
	.short _020588D2 - _020588B0 - 2 ; case 3
_020588B8:
	mov r0, #5
	str r0, [sp, #8]
	b _020588D6
_020588BE:
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _020588D6
_020588CC:
	mov r0, #2
	str r0, [sp, #8]
	b _020588D6
_020588D2:
	mov r0, #1
	str r0, [sp, #8]
_020588D6:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020588FC
	bl sub_0203608C
	cmp r5, r0
	bne _020588FC
	ldr r0, _02058A00 ; =0x021C0848
	ldr r2, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	ldrb r1, [r2, r0]
	sub r1, r1, #1
	strb r1, [r2, r0]
	b _0205899C
_020588FC:
	bl sub_02035EE0
	cmp r0, #0
	bne _02058930
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A14 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058930
	bl sub_0203608C
	cmp r5, r0
	bne _02058930
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0206147C
	add r7, r0, #0
	b _0205899C
_02058930:
	mov r0, #2
	add r1, r4, #0
	bic r1, r0
	bne _0205896E
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _0205896E
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bhi _02058962
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02058956: ; jump table
	.short _0205895E - _02058956 - 2 ; case 0
	.short _02058962 - _02058956 - 2 ; case 1
	.short _02058966 - _02058956 - 2 ; case 2
	.short _0205896A - _02058956 - 2 ; case 3
_0205895E:
	mov r7, #0x1c
	b _0205899C
_02058962:
	mov r7, #0x1d
	b _0205899C
_02058966:
	mov r7, #0x1e
	b _0205899C
_0205896A:
	mov r7, #0x1f
	b _0205899C
_0205896E:
	cmp r1, #0
	bne _02058986
	mov r0, #4
	ldrsb r0, [r6, r0]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _02058986
	mov r1, #0x24
	bl sub_02065838
	add r7, r0, #0
	b _0205899C
_02058986:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0206147C
	add r7, r0, #0
_0205899C:
	ldr r0, [sp, #0x18]
	bl sub_02061544
	cmp r0, #0
	bne _020589B0
	ldr r0, [sp, #0x18]
	bl sub_020613AC
	cmp r0, #0
	beq _020589FA
_020589B0:
	cmp r7, #0xff
	beq _020589FA
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	mov r2, #1
	bl sub_02061550
	mov r0, #2
	bic r4, r0
	beq _020589FA
	ldr r0, _02058A00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058A04 ; =0x00000142
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020589E2
	ldr r0, [sp, #0x14]
	bl sub_020581E0
	ldr r1, _02058A00 ; =0x021C0848
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _02058A04 ; =0x00000142
	strb r0, [r2, r1]
_020589E2:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A04 ; =0x00000142
	add r1, r1, r0
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _020589F4
	sub r0, r0, #1
	strb r0, [r1, r5]
_020589F4:
	add r0, r5, #0
	bl sub_02058644
_020589FA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02058A00: .word 0x021C0848
_02058A04: .word 0x00000142
_02058A08: .word 0x0000FFFF
_02058A0C: .word 0x000002BD
_02058A10: .word 0x000002C1
_02058A14: .word 0x000002BE
	thumb_func_end sub_020587C0

	thumb_func_start sub_02058A18
sub_02058A18: ; 0x02058A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02058B00 ; =0x021C0848
	add r5, r0, #0
	ldr r2, [r1, #0]
	ldr r1, _02058B04 ; =0x0000010A
	add r2, r2, r1
	ldrb r1, [r2, r5]
	cmp r1, #0
	bne _02058A34
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02058A34:
	cmp r1, #0xff
	bne _02058A3E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058A3E:
	sub r1, r1, #1
	strb r1, [r2, r5]
	cmp r4, #1
	bne _02058A4C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058A4C:
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058E4C
	str r0, [sp]
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B08 ; =0x00000112
	ldrb r0, [r1, r0]
	bl sub_0206419C
	add r7, r6, r0
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B08 ; =0x00000112
	ldrb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, [sp]
	add r6, r1, r0
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B04 ; =0x0000010A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058AA4
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0205814C
	cmp r0, #0
	beq _02058AA4
	ldr r1, _02058B00 ; =0x021C0848
	mov r0, #1
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _02058B04 ; =0x0000010A
	strb r0, [r2, r1]
_02058AA4:
	ldr r0, _02058B00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058B04 ; =0x0000010A
	add r2, r1, r5
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _02058AB8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058AB8:
	cmp r0, #0
	bne _02058AD2
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	add r0, r5, #0
	add r2, sp, #4
	mov r3, #0
	bl ov23_0224540C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058AD2:
	add r1, #0x62
	lsl r2, r5, #3
	add r0, r1, r2
	strh r7, [r1, r2]
	strh r6, [r0, #2]
	cmp r4, #2
	beq _02058AEA
	cmp r4, #4
	beq _02058AF0
	cmp r4, #8
	beq _02058AF6
	b _02058AFA
_02058AEA:
	mov r1, #0
	strb r1, [r0, #5]
	b _02058AFA
_02058AF0:
	mov r1, #1
	strb r1, [r0, #5]
	b _02058AFA
_02058AF6:
	mov r1, #2
	strb r1, [r0, #5]
_02058AFA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02058B00: .word 0x021C0848
_02058B04: .word 0x0000010A
_02058B08: .word 0x00000112
	thumb_func_end sub_02058A18

	thumb_func_start sub_02058B0C
sub_02058B0C: ; 0x02058B0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02058B70 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	lsl r0, r5, #3
	add r1, #0x62
	add r6, r1, r0
	add r0, r4, #0
	add r7, r2, #0
	bl sub_02059328
	ldr r1, _02058B70 ; =0x021C0848
	strb r0, [r6, #4]
	ldr r0, [r1, #0]
	add r2, r0, r5
	ldr r0, _02058B74 ; =0x00000112
	cmp r7, #0
	strb r4, [r2, r0]
	beq _02058B4A
	ldr r2, [r1, #0]
	mov r3, #1
	add r2, r2, r5
	add r0, #0x18
	strb r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0x2d
	add r1, r0, r5
	add r0, r2, #0
	add r0, #0xdd
	b _02058B5E
_02058B4A:
	ldr r2, [r1, #0]
	mov r3, #0
	add r2, r2, r5
	add r0, #0x18
	strb r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0x1b
	add r1, r0, r5
	add r0, r2, #0
	add r0, #0xef
_02058B5E:
	strb r2, [r1, r0]
	ldr r0, _02058B70 ; =0x021C0848
	mov r2, #1
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B78 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02058B70: .word 0x021C0848
_02058B74: .word 0x00000112
_02058B78: .word 0x00000132
	thumb_func_end sub_02058B0C

	thumb_func_start sub_02058B7C
sub_02058B7C: ; 0x02058B7C
	ldr r1, _02058B8C ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _02058B90 ; =0x0000010A
	strb r2, [r1, r0]
	bx lr
	nop
_02058B8C: .word 0x021C0848
_02058B90: .word 0x0000010A
	thumb_func_end sub_02058B7C

	thumb_func_start sub_02058B94
sub_02058B94: ; 0x02058B94
	ldr r1, _02058BA4 ; =0x021C0848
	mov r2, #0xff
	ldr r1, [r1, #0]
	add r1, r1, r0
	add r0, r2, #0
	add r0, #0xb
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02058BA4: .word 0x021C0848
	thumb_func_end sub_02058B94

	thumb_func_start sub_02058BA8
sub_02058BA8: ; 0x02058BA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02058BE0 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02058BDC
	bl sub_0205EB3C
	mov r1, #0x80
	add r6, r0, #0
	bl sub_020628BC
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_020628BC
	ldr r0, _02058BE0 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058BE4 ; =0x00000102
	strb r4, [r1, r0]
_02058BDC:
	pop {r4, r5, r6, pc}
	nop
_02058BE0: .word 0x021C0848
_02058BE4: .word 0x00000102
	thumb_func_end sub_02058BA8

	thumb_func_start sub_02058BE8
sub_02058BE8: ; 0x02058BE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02058C34 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02058C32
	add r2, r1, r4
	ldr r1, _02058C38 ; =0x00000102
	ldrsb r2, [r2, r1]
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _02058C32
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020656AC
	add r0, r5, #0
	mov r1, #0x80
	bl sub_020628C4
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #8
	bl sub_020628C4
	ldr r0, _02058C34 ; =0x021C0848
	mov r2, #0
	ldr r0, [r0, #0]
	mvn r2, r2
	add r1, r0, r4
	ldr r0, _02058C38 ; =0x00000102
	strb r2, [r1, r0]
_02058C32:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02058C34: .word 0x021C0848
_02058C38: .word 0x00000102
	thumb_func_end sub_02058BE8

	thumb_func_start sub_02058C3C
sub_02058C3C: ; 0x02058C3C
	mov r0, #4
	bx lr
	thumb_func_end sub_02058C3C

	thumb_func_start sub_02058C40
sub_02058C40: ; 0x02058C40
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _02058C4E
	mov r0, #1
	pop {r3, pc}
_02058C4E:
	ldr r0, _02058C88 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058C5A
	mov r0, #0
	pop {r3, pc}
_02058C5A:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02058C6A
	mov r0, #0
	pop {r3, pc}
_02058C6A:
	ldr r0, _02058C88 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058C8C ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058C82
	bl ov23_02249BD4
	cmp r0, #0
	bne _02058C82
	mov r0, #0
	pop {r3, pc}
_02058C82:
	mov r0, #1
	pop {r3, pc}
	nop
_02058C88: .word 0x021C0848
_02058C8C: .word 0x000002BE
	thumb_func_end sub_02058C40

	thumb_func_start sub_02058C90
sub_02058C90: ; 0x02058C90
	ldr r1, _02058C9C ; =0x021C0848
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x48
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
_02058C9C: .word 0x021C0848
	thumb_func_end sub_02058C90

	thumb_func_start sub_02058CA0
sub_02058CA0: ; 0x02058CA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058CEC ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058CB0
	ldr r0, _02058CF0 ; =0x0000FFFF
	pop {r4, pc}
_02058CB0:
	bl sub_0203608C
	cmp r4, r0
	bne _02058CC6
	ldr r0, _02058CEC ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r4, pc}
_02058CC6:
	bl sub_02058C40
	cmp r0, #0
	beq _02058CDC
	ldr r0, _02058CEC ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058CE0
_02058CDC:
	ldr r0, _02058CF0 ; =0x0000FFFF
	pop {r4, pc}
_02058CE0:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058CEC: .word 0x021C0848
_02058CF0: .word 0x0000FFFF
	thumb_func_end sub_02058CA0

	thumb_func_start sub_02058CF4
sub_02058CF4: ; 0x02058CF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058D40 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058D04
	ldr r0, _02058D44 ; =0x0000FFFF
	pop {r4, pc}
_02058D04:
	bl sub_0203608C
	cmp r4, r0
	bne _02058D1A
	ldr r0, _02058D40 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r4, pc}
_02058D1A:
	bl sub_02058C40
	cmp r0, #0
	beq _02058D30
	ldr r0, _02058D40 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058D34
_02058D30:
	ldr r0, _02058D44 ; =0x0000FFFF
	pop {r4, pc}
_02058D34:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058D40: .word 0x021C0848
_02058D44: .word 0x0000FFFF
	thumb_func_end sub_02058CF4

	thumb_func_start sub_02058D48
sub_02058D48: ; 0x02058D48
	ldr r1, _02058D60 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058D5A
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	bx lr
_02058D5A:
	ldr r0, _02058D64 ; =0x0000FFFF
	bx lr
	nop
_02058D60: .word 0x021C0848
_02058D64: .word 0x0000FFFF
	thumb_func_end sub_02058D48

	thumb_func_start sub_02058D68
sub_02058D68: ; 0x02058D68
	ldr r1, _02058D80 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058D7A
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	bx lr
_02058D7A:
	ldr r0, _02058D84 ; =0x0000FFFF
	bx lr
	nop
_02058D80: .word 0x021C0848
_02058D84: .word 0x0000FFFF
	thumb_func_end sub_02058D68

	thumb_func_start sub_02058D88
sub_02058D88: ; 0x02058D88
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058CA0
	ldr r1, _02058DB8 ; =0x0000FFFF
	cmp r0, r1
	bne _02058D9A
	add r0, r1, #0
	pop {r4, pc}
_02058D9A:
	ldr r0, _02058DBC ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_0206419C
	ldr r1, _02058DBC ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xa2
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058DB8: .word 0x0000FFFF
_02058DBC: .word 0x021C0848
	thumb_func_end sub_02058D88

	thumb_func_start sub_02058DC0
sub_02058DC0: ; 0x02058DC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058CF4
	ldr r1, _02058DF0 ; =0x0000FFFF
	cmp r0, r1
	bne _02058DD2
	add r0, r1, #0
	pop {r4, pc}
_02058DD2:
	ldr r0, _02058DF4 ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, _02058DF4 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xa4
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058DF0: .word 0x0000FFFF
_02058DF4: .word 0x021C0848
	thumb_func_end sub_02058DC0

	thumb_func_start sub_02058DF8
sub_02058DF8: ; 0x02058DF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058E44 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058E08
	ldr r0, _02058E48 ; =0x0000FFFF
	pop {r4, pc}
_02058E08:
	bl sub_0203608C
	cmp r4, r0
	bne _02058E1E
	ldr r0, _02058E44 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	pop {r4, pc}
_02058E1E:
	bl sub_02058C40
	cmp r0, #0
	beq _02058E34
	ldr r0, _02058E44 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058E38
_02058E34:
	ldr r0, _02058E48 ; =0x0000FFFF
	pop {r4, pc}
_02058E38:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058E44: .word 0x021C0848
_02058E48: .word 0x0000FFFF
	thumb_func_end sub_02058DF8

	thumb_func_start sub_02058E4C
sub_02058E4C: ; 0x02058E4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058E98 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058E5C
	ldr r0, _02058E9C ; =0x0000FFFF
	pop {r4, pc}
_02058E5C:
	bl sub_0203608C
	cmp r4, r0
	bne _02058E72
	ldr r0, _02058E98 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	pop {r4, pc}
_02058E72:
	bl sub_02058C40
	cmp r0, #0
	beq _02058E88
	ldr r0, _02058E98 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058E8C
_02058E88:
	ldr r0, _02058E9C ; =0x0000FFFF
	pop {r4, pc}
_02058E8C:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058E98: .word 0x021C0848
_02058E9C: .word 0x0000FFFF
	thumb_func_end sub_02058E4C

	thumb_func_start sub_02058EA0
sub_02058EA0: ; 0x02058EA0
	ldr r1, _02058EB8 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058EB2
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	bx lr
_02058EB2:
	ldr r0, _02058EBC ; =0x0000FFFF
	bx lr
	nop
_02058EB8: .word 0x021C0848
_02058EBC: .word 0x0000FFFF
	thumb_func_end sub_02058EA0

	thumb_func_start sub_02058EC0
sub_02058EC0: ; 0x02058EC0
	ldr r1, _02058ED8 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058ED2
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	bx lr
_02058ED2:
	ldr r0, _02058EDC ; =0x0000FFFF
	bx lr
	nop
_02058ED8: .word 0x021C0848
_02058EDC: .word 0x0000FFFF
	thumb_func_end sub_02058EC0

	thumb_func_start sub_02058EE0
sub_02058EE0: ; 0x02058EE0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058DF8
	ldr r1, _02058F10 ; =0x0000FFFF
	cmp r0, r1
	bne _02058EF2
	add r0, r1, #0
	pop {r4, pc}
_02058EF2:
	ldr r0, _02058F14 ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_0206419C
	ldr r1, _02058F14 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x62
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058F10: .word 0x0000FFFF
_02058F14: .word 0x021C0848
	thumb_func_end sub_02058EE0

	thumb_func_start sub_02058F18
sub_02058F18: ; 0x02058F18
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058E4C
	ldr r1, _02058F48 ; =0x0000FFFF
	cmp r0, r1
	bne _02058F2A
	add r0, r1, #0
	pop {r4, pc}
_02058F2A:
	ldr r0, _02058F4C ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, _02058F4C ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x64
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058F48: .word 0x0000FFFF
_02058F4C: .word 0x021C0848
	thumb_func_end sub_02058F18

	thumb_func_start sub_02058F50
sub_02058F50: ; 0x02058F50
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058C40
	cmp r0, #0
	beq _02058F6A
	ldr r0, _02058F7C ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058F70
_02058F6A:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02058F70:
	lsl r0, r4, #3
	add r1, r1, r0
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	pop {r4, pc}
	nop
_02058F7C: .word 0x021C0848
	thumb_func_end sub_02058F50

	thumb_func_start sub_02058F80
sub_02058F80: ; 0x02058F80
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058C40
	cmp r0, #0
	beq _02058F9A
	ldr r0, _02058FAC ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058FA0
_02058F9A:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02058FA0:
	lsl r0, r4, #3
	add r1, r1, r0
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	pop {r4, pc}
	nop
_02058FAC: .word 0x021C0848
	thumb_func_end sub_02058F80

	thumb_func_start sub_02058FB0
sub_02058FB0: ; 0x02058FB0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02058FDC ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r2, _02058FDC ; =0x021C0848
	lsl r1, r4, #3
	ldr r3, [r2, #0]
	add r1, r3, r1
	add r1, #0x66
	strb r0, [r1]
	ldr r0, [r2, #0]
	mov r3, #1
	add r1, r0, r4
	ldr r0, _02058FE0 ; =0x00000132
	strb r3, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02058FDC: .word 0x021C0848
_02058FE0: .word 0x00000132
	thumb_func_end sub_02058FB0

	thumb_func_start sub_02058FE4
sub_02058FE4: ; 0x02058FE4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02059008 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r1, _02059008 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa6
	strb r0, [r1]
	pop {r4, pc}
	nop
_02059008: .word 0x021C0848
	thumb_func_end sub_02058FE4

	thumb_func_start sub_0205900C
sub_0205900C: ; 0x0205900C
	push {r3, r4, r5, r6}
	ldr r2, _02059054 ; =0x021C0848
	ldr r3, [r2, #0]
	cmp r3, #0
	bne _0205901C
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
_0205901C:
	mov r2, #0
	add r4, r3, #0
_02059020:
	add r5, r3, #0
	add r5, #0x48
	ldrb r5, [r5]
	cmp r5, #0
	beq _02059044
	add r5, r4, #0
	add r5, #0x64
	ldrh r6, [r5]
	add r5, r4, #0
	add r5, #0x62
	ldrh r5, [r5]
	cmp r0, r5
	bne _02059044
	cmp r1, r6
	bne _02059044
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
_02059044:
	add r2, r2, #1
	add r3, r3, #1
	add r4, #8
	cmp r2, #8
	blt _02059020
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02059054: .word 0x021C0848
	thumb_func_end sub_0205900C

	thumb_func_start sub_02059058
sub_02059058: ; 0x02059058
	push {r3, r4}
	ldr r3, _0205908C ; =0x021C0848
	ldr r4, [r3, #0]
	add r4, #0xe2
	ldrb r2, [r4, r0]
	cmp r1, r2
	beq _02059088
	strb r1, [r4, r0]
	ldr r2, [r3, #0]
	lsl r1, r0, #3
	add r2, r2, r1
	mov r4, #0
	add r2, #0x69
	strb r4, [r2]
	ldr r2, [r3, #0]
	mov r4, #1
	add r2, r2, r0
	ldr r0, _02059090 ; =0x00000132
	strb r4, [r2, r0]
	ldr r0, [r3, #0]
	mov r2, #2
	add r0, r0, r1
	add r0, #0x67
	strb r2, [r0]
_02059088:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205908C: .word 0x021C0848
_02059090: .word 0x00000132
	thumb_func_end sub_02059058

	thumb_func_start sub_02059094
sub_02059094: ; 0x02059094
	ldr r1, _020590BC ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, _020590C0 ; =0x000002C2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _020590A4
	mov r0, #0
	bx lr
_020590A4:
	add r1, r2, r0
	add r1, #0xea
	ldrb r1, [r1]
	cmp r1, #0
	beq _020590B6
	add r0, r2, r0
	add r0, #0xe2
	ldrb r0, [r0]
	bx lr
_020590B6:
	mov r0, #0
	bx lr
	nop
_020590BC: .word 0x021C0848
_020590C0: .word 0x000002C2
	thumb_func_end sub_02059094

	thumb_func_start sub_020590C4
sub_020590C4: ; 0x020590C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r1, _02059178 ; =0x020ED4DC
	add r0, sp, #8
	ldrh r2, [r1]
	ldr r3, _0205917C ; =0x020ED4F0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	add r2, sp, #0x20
	mov r1, #8
_020590E2:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _020590E2
	bl sub_0203895C
	bl sub_02036148
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	cmp r6, #2
	bne _02059106
	add r5, sp, #8
	b _02059108
_02059106:
	add r5, sp, #0x20
_02059108:
	mov r7, #0
	cmp r6, #0
	ble _02059154
_0205910E:
	mov r4, #0
	cmp r6, #0
	ble _0205914C
_02059114:
	add r0, r4, #0
	bl sub_02058CA0
	ldrh r1, [r5]
	cmp r1, r0
	bne _02059146
	add r0, r4, #0
	bl sub_02058CF4
	ldrh r1, [r5, #2]
	cmp r1, r0
	bne _02059146
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r7, [r0, r1]
	bl sub_0203608C
	cmp r4, r0
	bne _0205914C
	mov r0, #1
	str r0, [sp]
	b _0205914C
_02059146:
	add r4, r4, #1
	cmp r4, r6
	blt _02059114
_0205914C:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r6
	blt _0205910E
_02059154:
	ldr r0, [sp, #4]
	cmp r0, r6
	bne _02059172
	mov r5, #0
	cmp r6, #0
	ble _02059172
	add r4, sp, #0x10
_02059162:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_020362DC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02059162
_02059172:
	ldr r0, [sp]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059178: .word 0x020ED4DC
_0205917C: .word 0x020ED4F0
	thumb_func_end sub_020590C4

	thumb_func_start sub_02059180
sub_02059180: ; 0x02059180
	ldrb r2, [r2]
	cmp r2, #3
	bne _02059194
	ldr r1, _020591A4 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xf2
	strb r2, [r0]
	bx lr
_02059194:
	ldr r1, _020591A4 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xad
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	nop
_020591A4: .word 0x021C0848
	thumb_func_end sub_02059180

	thumb_func_start sub_020591A8
sub_020591A8: ; 0x020591A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	bl sub_02036148
	add r7, r0, #0
	cmp r7, #2
	bne _020591C0
	ldr r0, _02059234 ; =0x02100B6C
	str r0, [sp]
	b _020591C4
_020591C0:
	ldr r0, _02059238 ; =0x02100B74
	str r0, [sp]
_020591C4:
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	cmp r7, #0
	ble _0205922E
_020591CE:
	ldr r0, _0205923C ; =0x021C0848
	add r6, sp, #4
	ldr r1, [r0, #0]
	ldrb r0, [r6]
	add r1, r1, r0
	mov r0, #0xad
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02059220
	mov r4, #0
	cmp r7, #0
	ble _02059220
	ldr r5, [sp]
_020591EA:
	ldrb r0, [r6]
	bl sub_02058DF8
	ldrh r1, [r5]
	cmp r1, r0
	bne _02059218
	ldrb r0, [r6]
	bl sub_02058E4C
	ldrh r1, [r5, #2]
	cmp r1, r0
	bne _02059218
	ldr r0, _0205923C ; =0x021C0848
	ldr r1, [r0, #0]
	ldrb r0, [r6]
	add r1, r1, r0
	add r1, #0xf2
	mov r0, #1
	strb r0, [r1]
	mov r0, #0x5f
	add r1, sp, #4
	bl sub_02035B48
_02059218:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r7
	blt _020591EA
_02059220:
	add r0, sp, #4
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, r7
	blt _020591CE
_0205922E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02059234: .word 0x02100B6C
_02059238: .word 0x02100B74
_0205923C: .word 0x021C0848
	thumb_func_end sub_020591A8

	thumb_func_start sub_02059240
sub_02059240: ; 0x02059240
	push {r4, lr}
	bl sub_0203608C
	add r4, r0, #0
	bl sub_02058CA0
	cmp r0, #8
	ble _02059260
	mov r0, #2
	bl sub_020593F4
	mov r0, #2
	mov r1, #0x24
	bl sub_02065838
	b _0205926E
_02059260:
	mov r0, #3
	bl sub_020593F4
	mov r0, #3
	mov r1, #0x24
	bl sub_02065838
_0205926E:
	add r1, r0, #0
	ldr r0, _02059288 ; =0x021C0848
	ldr r2, [r0, #0]
	lsl r0, r4, #2
	add r0, r2, r0
	ldr r0, [r0, #8]
	mov r2, #1
	bl sub_02061550
	bl sub_02059624
	pop {r4, pc}
	nop
_02059288: .word 0x021C0848
	thumb_func_end sub_02059240

	thumb_func_start sub_0205928C
sub_0205928C: ; 0x0205928C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	bl sub_02036148
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0
	cmp r1, #0
	ble _020592C8
	ldr r1, _02059320 ; =0x021C0848
	ldr r2, _02059324 ; =0x00000132
	ldr r3, [r1, #0]
_020592A8:
	add r1, r3, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _020592B8
	ldrb r1, [r3, r2]
	cmp r1, #1
	bne _020592BE
_020592B8:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020592BE:
	ldr r1, [sp]
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, r1
	blt _020592A8
_020592C8:
	ldr r0, [sp]
	mov r5, #0
	cmp r0, #0
	ble _0205931A
	add r4, r5, #0
_020592D2:
	ldr r0, _02059320 ; =0x021C0848
	ldr r7, [r0, #0]
	mov r0, #4
	add r7, #0x62
	add r6, r7, r4
	ldrsb r0, [r6, r0]
	bl sub_02059328
	str r0, [sp, #4]
	bl sub_0206419C
	ldrh r1, [r7, r4]
	add r0, r1, r0
	strh r0, [r7, r4]
	ldr r0, [sp, #4]
	bl sub_020641A8
	ldrh r1, [r6, #2]
	add r0, r1, r0
	strh r0, [r6, #2]
	mov r0, #2
	strb r0, [r6, #5]
	ldr r0, _02059320 ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r0, r5
	ldr r0, _02059324 ; =0x00000132
	strb r1, [r2, r0]
	add r0, r5, #0
	bl sub_02059058
	ldr r0, [sp]
	add r5, r5, #1
	add r4, #8
	cmp r5, r0
	blt _020592D2
_0205931A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059320: .word 0x021C0848
_02059324: .word 0x00000132
	thumb_func_end sub_0205928C

	thumb_func_start sub_02059328
sub_02059328: ; 0x02059328
	push {r3, lr}
	cmp r0, #0
	bne _02059332
	mov r0, #1
	pop {r3, pc}
_02059332:
	cmp r0, #1
	bne _0205933A
	mov r0, #0
	pop {r3, pc}
_0205933A:
	cmp r0, #2
	bne _02059342
	mov r0, #3
	pop {r3, pc}
_02059342:
	cmp r0, #3
	bne _0205934A
	mov r0, #2
	pop {r3, pc}
_0205934A:
	bl sub_02022974
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02059328

	thumb_func_start sub_02059354
sub_02059354: ; 0x02059354
	push {r3, r4}
	ldr r3, _02059370 ; =0x021C0848
	ldr r2, [r3, #0]
	add r4, r2, r0
	ldr r2, _02059374 ; =0x0000011A
	strb r1, [r4, r2]
	ldr r1, [r3, #0]
	mov r4, #0xf
	add r0, r1, r0
	add r2, #0x20
	strb r4, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_02059370: .word 0x021C0848
_02059374: .word 0x0000011A
	thumb_func_end sub_02059354

	thumb_func_start sub_02059378
sub_02059378: ; 0x02059378
	ldr r1, _02059388 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _0205938C ; =0x0000011A
	strb r2, [r1, r0]
	bx lr
	nop
_02059388: .word 0x021C0848
_0205938C: .word 0x0000011A
	thumb_func_end sub_02059378

	thumb_func_start sub_02059390
sub_02059390: ; 0x02059390
	push {r3, r4}
	ldr r3, _020593AC ; =0x021C0848
	ldr r2, [r3, #0]
	add r4, r2, r0
	ldr r2, _020593B0 ; =0x00000122
	strb r1, [r4, r2]
	ldr r1, [r3, #0]
	mov r4, #0xf
	add r0, r1, r0
	add r2, #0x18
	strb r4, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_020593AC: .word 0x021C0848
_020593B0: .word 0x00000122
	thumb_func_end sub_02059390

	thumb_func_start sub_020593B4
sub_020593B4: ; 0x020593B4
	ldr r1, _020593C4 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593C8 ; =0x00000122
	strb r2, [r1, r0]
	bx lr
	nop
_020593C4: .word 0x021C0848
_020593C8: .word 0x00000122
	thumb_func_end sub_020593B4

	thumb_func_start sub_020593CC
sub_020593CC: ; 0x020593CC
	ldr r1, _020593D8 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593DC ; =0x00000142
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020593D8: .word 0x021C0848
_020593DC: .word 0x00000142
	thumb_func_end sub_020593CC

	thumb_func_start sub_020593E0
sub_020593E0: ; 0x020593E0
	ldr r1, _020593EC ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593F0 ; =0x0000013A
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020593EC: .word 0x021C0848
_020593F0: .word 0x0000013A
	thumb_func_end sub_020593E0

	thumb_func_start sub_020593F4
sub_020593F4: ; 0x020593F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02059420 ; =0x021C0848
	add r1, r4, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	bl sub_0203608C
	ldr r1, _02059420 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xa6
	strb r4, [r0]
	mov r0, #0
	bl sub_02057AE4
	pop {r4, pc}
	nop
_02059420: .word 0x021C0848
	thumb_func_end sub_020593F4

	thumb_func_start sub_02059424
sub_02059424: ; 0x02059424
	push {r4, lr}
	ldr r3, _02059440 ; =0x021C0848
	lsl r2, r0, #3
	ldr r4, [r3, #0]
	lsl r0, r0, #2
	add r2, r4, r2
	add r2, #0xa6
	strb r1, [r2]
	ldr r2, [r3, #0]
	add r0, r2, r0
	ldr r0, [r0, #8]
	bl sub_0205EA84
	pop {r4, pc}
	; .align 2, 0
_02059440: .word 0x021C0848
	thumb_func_end sub_02059424

	thumb_func_start sub_02059444
sub_02059444: ; 0x02059444
	push {r3, lr}
	ldr r1, _02059460 ; =0x021C0848
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0205945A
	bl sub_0205EA78
	pop {r3, pc}
_0205945A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	; .align 2, 0
_02059460: .word 0x021C0848
	thumb_func_end sub_02059444

	thumb_func_start sub_02059464
sub_02059464: ; 0x02059464
	push {r3, lr}
	cmp r0, #0
	beq _02059474
	ldr r1, _02059488 ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
_02059474:
	bl sub_0203D128
	ldr r0, _02059488 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, pc}
	nop
_02059488: .word 0x021C0848
	thumb_func_end sub_02059464

	thumb_func_start sub_0205948C
sub_0205948C: ; 0x0205948C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	beq _020594A0
	ldr r0, _020594E8 ; =0x021C0848
	ldr r2, [r0, #0]
	mvn r0, r4
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
_020594A0:
	ldr r0, _020594E8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x10
	bne _020594B8
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x3e
	add r1, sp, #0
	bl sub_020360D0
_020594B8:
	ldr r0, _020594E8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020594E4
	cmp r4, #0x10
	beq _020594D4
	bl sub_0203D140
	mov r0, #1
	bl sub_02057FC4
	add sp, #4
	pop {r3, r4, pc}
_020594D4:
	bl sub_0203D140
	ldr r0, _020594E8 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
_020594E4:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_020594E8: .word 0x021C0848
	thumb_func_end sub_0205948C

	thumb_func_start sub_020594EC
sub_020594EC: ; 0x020594EC
	ldr r0, _020594F8 ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	bx lr
	nop
_020594F8: .word 0x021C0848
	thumb_func_end sub_020594EC

	thumb_func_start sub_020594FC
sub_020594FC: ; 0x020594FC
	push {r3, lr}
	bl sub_0203D128
	ldr r0, _02059510 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_02059510: .word 0x021C0848
	thumb_func_end sub_020594FC

	thumb_func_start sub_02059514
sub_02059514: ; 0x02059514
	push {r3, lr}
	bl sub_0203D140
	mov r0, #1
	bl sub_02057FC4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02059514

	thumb_func_start sub_02059524
sub_02059524: ; 0x02059524
	push {r3, lr}
	ldr r0, _02059568 ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02059564
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0205954A
	bl sub_02059514
	ldr r0, _02059568 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	strb r2, [r1, r0]
	pop {r3, pc}
_0205954A:
	bl sub_0203608C
	bl ov23_02243298
	cmp r0, #0
	beq _02059564
	bl sub_02059514
	ldr r0, _02059568 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	strb r2, [r1, r0]
_02059564:
	pop {r3, pc}
	nop
_02059568: .word 0x021C0848
_0205956C: .word 0x000002BF
	thumb_func_end sub_02059524

	thumb_func_start sub_02059570
sub_02059570: ; 0x02059570
	push {r3, lr}
	ldr r0, _0205959C ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _020595A0 ; =0x000002BF
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02059598
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02059598
	bl sub_0203608C
	bl ov23_02243298
	cmp r0, #0
	bne _02059598
	mov r0, #0
	bl sub_02057FC4
_02059598:
	pop {r3, pc}
	nop
_0205959C: .word 0x021C0848
_020595A0: .word 0x000002BF
	thumb_func_end sub_02059570

	thumb_func_start sub_020595A4
sub_020595A4: ; 0x020595A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205961A
	mov r6, #0
	add r4, r6, #0
	add r5, r6, #0
_020595B6:
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02059610
	bl sub_0203608C
	cmp r6, r0
	beq _02059610
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_0205EB3C
	ldr r1, _02059620 ; =0x021C0848
	str r0, [sp, #0xc]
	ldr r1, [r1, #0]
	add r1, r1, r5
	add r2, r1, #0
	add r2, #0xa2
	ldrh r2, [r2]
	str r2, [sp, #8]
	add r2, r1, #0
	add r2, #0xa4
	ldrh r7, [r2]
	mov r2, #0xa6
	ldrsb r1, [r1, r2]
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_02063024
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_02063044
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r3, r7, #0
	bl sub_02063340
_02059610:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #8
	cmp r6, #8
	blt _020595B6
_0205961A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02059620: .word 0x021C0848
	thumb_func_end sub_020595A4

	thumb_func_start sub_02059624
sub_02059624: ; 0x02059624
	ldr r0, _02059634 ; =0x021C0848
	mov r2, #8
	ldr r1, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	strb r2, [r1, r0]
	bx lr
	nop
_02059634: .word 0x021C0848
	thumb_func_end sub_02059624

	thumb_func_start sub_02059638
sub_02059638: ; 0x02059638
	ldr r1, _02059644 ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, _02059648 ; =0x000002C3
	strb r0, [r2, r1]
	bx lr
	nop
_02059644: .word 0x021C0848
_02059648: .word 0x000002C3
	thumb_func_end sub_02059638

	thumb_func_start sub_0205964C
sub_0205964C: ; 0x0205964C
	ldr r0, _02059654 ; =0x021C084C
	ldr r0, [r0, #0]
	bx lr
	nop
_02059654: .word 0x021C084C
	thumb_func_end sub_0205964C

	thumb_func_start sub_02059658
sub_02059658: ; 0x02059658
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059658

	thumb_func_start sub_0205965C
sub_0205965C: ; 0x0205965C
	push {r4, lr}
	ldr r1, _020596B4 ; =0x021C084C
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020596B0
	bl sub_02099514
	mov r0, #0xf
	mov r1, #0x48
	bl sub_02018144
	ldr r1, _020596B4 ; =0x021C084C
	mov r2, #0x48
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _020596B4 ; =0x021C084C
	mov r1, #0x32
	ldr r0, [r0, #0]
	mov r2, #0xa
	strh r1, [r0, #0x3c]
	ldr r0, _020596B8 ; =sub_020598C4
	mov r1, #0
	bl sub_0200D9E8
	ldr r1, _020596B4 ; =0x021C084C
	ldr r2, [r1, #0]
	str r0, [r2, #0x38]
	ldr r0, [r1, #0]
	mov r2, #0
	str r4, [r0, #0x18]
	ldr r0, [r1, #0]
	str r2, [r0, #0x44]
	bl sub_02059658
	ldr r0, _020596B4 ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020361BC
_020596B0:
	pop {r4, pc}
	nop
_020596B4: .word 0x021C084C
_020596B8: .word sub_020598C4
	thumb_func_end sub_0205965C

	thumb_func_start sub_020596BC
sub_020596BC: ; 0x020596BC
	push {r4, r5, r6, lr}
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059702
	ldr r0, [r0, #0x38]
	bl sub_0200DA58
	mov r4, #0
	ldr r6, _02059704 ; =0x021C084C
	add r5, r4, #0
_020596D2:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _020596DE
	bl sub_020181C4
_020596DE:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _020596D2
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _020596F4
	bl sub_020181C4
_020596F4:
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02059704 ; =0x021C084C
	mov r1, #0
	str r1, [r0, #0]
_02059702:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02059704: .word 0x021C084C
	thumb_func_end sub_020596BC

	thumb_func_start sub_02059708
sub_02059708: ; 0x02059708
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02059740
	add r0, r5, #0
	bl sub_0203D174
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xb0
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020368B8
	add r0, r5, #0
	bl sub_0205965C
	ldr r0, _02059744 ; =sub_020598FC
	mov r1, #0
	bl sub_020598EC
_02059740:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02059744: .word sub_020598FC
	thumb_func_end sub_02059708

	thumb_func_start sub_02059748
sub_02059748: ; 0x02059748
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02059780
	add r0, r5, #0
	bl sub_0203D174
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xb0
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02036900
	add r0, r5, #0
	bl sub_0205965C
	ldr r0, _02059784 ; =sub_02059924
	mov r1, #0
	bl sub_020598EC
_02059780:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02059784: .word sub_02059924
	thumb_func_end sub_02059748

	thumb_func_start sub_02059788
sub_02059788: ; 0x02059788
	ldr r1, _02059798 ; =0x021C084C
	ldr r3, _0205979C ; =sub_020598EC
	ldr r1, [r1, #0]
	add r1, #0x3e
	strb r0, [r1]
	ldr r0, _020597A0 ; =sub_02059944
	mov r1, #0
	bx r3
	; .align 2, 0
_02059798: .word 0x021C084C
_0205979C: .word sub_020598EC
_020597A0: .word sub_02059944
	thumb_func_end sub_02059788

	thumb_func_start sub_020597A4
sub_020597A4: ; 0x020597A4
	ldr r3, _020597AC ; =sub_020598EC
	ldr r0, _020597B0 ; =sub_02059E80
	mov r1, #0
	bx r3
	; .align 2, 0
_020597AC: .word sub_020598EC
_020597B0: .word sub_02059E80
	thumb_func_end sub_020597A4

	thumb_func_start sub_020597B4
sub_020597B4: ; 0x020597B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F3B0
	mov r0, #1
	mov r1, #0
	bl sub_0200F3B0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	bl sub_02036780
	cmp r0, #0
	beq _0205986C
	ldr r0, _02059870 ; =0x021C084C
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020597F4
	add r0, r4, #0
	bl sub_0205965C
	ldr r0, _02059870 ; =0x021C084C
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x42
	strb r1, [r0]
	b _020597FA
_020597F4:
	mov r0, #0
	add r1, #0x42
	strb r0, [r1]
_020597FA:
	ldr r0, _02059870 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
	bl sub_0203608C
	str r0, [sp, #8]
	bl sub_0203608C
	bl sub_02032EE8
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02059842
	ldr r6, _02059870 ; =0x021C084C
	add r5, r4, #0
	add r7, r4, #0
_02059822:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _02059836
	ldr r1, _02059874 ; =0x0000066C
	add r0, r7, #0
	bl sub_02018144
	ldr r1, [r6, #0]
	str r0, [r1, r5]
_02059836:
	add r5, r5, #4
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02059822
_02059842:
	ldr r0, _02059870 ; =0x021C084C
	mov r3, #0xff
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x18]
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #4]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02071D40
	mov r0, #0x5f
	bl sub_020364F0
	ldr r0, _02059878 ; =sub_02059ED8
	mov r1, #0
	bl sub_020598EC
_0205986C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02059870: .word 0x021C084C
_02059874: .word 0x0000066C
_02059878: .word sub_02059ED8
	thumb_func_end sub_020597B4

	thumb_func_start sub_0205987C
sub_0205987C: ; 0x0205987C
	push {r3, lr}
	ldr r0, _02059898 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059896
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _0205989C ; =sub_0205A040
	mov r1, #5
	bl sub_020598EC
_02059896:
	pop {r3, pc}
	; .align 2, 0
_02059898: .word 0x021C084C
_0205989C: .word sub_0205A040
	thumb_func_end sub_0205987C

	thumb_func_start sub_020598A0
sub_020598A0: ; 0x020598A0
	push {r3, lr}
	ldr r0, _020598BC ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020598B8
	mov r0, #0x5b
	bl sub_020364F0
	ldr r0, _020598C0 ; =sub_0205A018
	mov r1, #5
	bl sub_020598EC
_020598B8:
	pop {r3, pc}
	nop
_020598BC: .word 0x021C084C
_020598C0: .word sub_0205A018
	thumb_func_end sub_020598A0

	thumb_func_start sub_020598C4
sub_020598C4: ; 0x020598C4
	push {r3, lr}
	ldr r1, _020598E8 ; =0x021C084C
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _020598D4
	bl sub_0200DA58
	pop {r3, pc}
_020598D4:
	ldr r1, [r2, #0x34]
	cmp r1, #0
	beq _020598E4
	add r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	bne _020598E4
	blx r1
_020598E4:
	pop {r3, pc}
	nop
_020598E8: .word 0x021C084C
	thumb_func_end sub_020598C4

	thumb_func_start sub_020598EC
sub_020598EC: ; 0x020598EC
	ldr r2, _020598F8 ; =0x021C084C
	ldr r3, [r2, #0]
	str r0, [r3, #0x34]
	ldr r0, [r2, #0]
	strh r1, [r0, #0x3c]
	bx lr
	; .align 2, 0
_020598F8: .word 0x021C084C
	thumb_func_end sub_020598EC

	thumb_func_start sub_020598FC
sub_020598FC: ; 0x020598FC
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _0205991A
	bl ov7_0224B4B8
	bl sub_02032AC0
	ldr r0, _0205991C ; =sub_02059920
	mov r1, #0
	bl sub_020598EC
_0205991A:
	pop {r3, pc}
	; .align 2, 0
_0205991C: .word sub_02059920
	thumb_func_end sub_020598FC

	thumb_func_start sub_02059920
sub_02059920: ; 0x02059920
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059920

	thumb_func_start sub_02059924
sub_02059924: ; 0x02059924
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0205993A
	bl ov7_0224B450
	ldr r0, _0205993C ; =sub_02059940
	mov r1, #0
	bl sub_020598EC
_0205993A:
	pop {r3, pc}
	; .align 2, 0
_0205993C: .word sub_02059940
	thumb_func_end sub_02059924

	thumb_func_start sub_02059940
sub_02059940: ; 0x02059940
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059940

	thumb_func_start sub_02059944
sub_02059944: ; 0x02059944
	push {r3, lr}
	ldr r0, _0205995C ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x3e
	ldrb r0, [r0]
	bl sub_02036948
	ldr r0, _02059960 ; =sub_02059964
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205995C: .word 0x021C084C
_02059960: .word sub_02059964
	thumb_func_end sub_02059944

	thumb_func_start sub_02059964
sub_02059964: ; 0x02059964
	push {r3, lr}
	bl sub_0203699C
	cmp r0, #0
	beq _0205997A
	bl sub_02032AC0
	ldr r0, _0205997C ; =sub_02059980
	mov r1, #0
	bl sub_020598EC
_0205997A:
	pop {r3, pc}
	; .align 2, 0
_0205997C: .word sub_02059980
	thumb_func_end sub_02059964

	thumb_func_start sub_02059980
sub_02059980: ; 0x02059980
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059980

	thumb_func_start sub_02059984
sub_02059984: ; 0x02059984
	push {r3, lr}
	mov r0, #0x62
	bl sub_02036540
	cmp r0, #0
	beq _020599C0
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020599DC ; =0x021C084C
	mov r2, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	bl sub_02057524
	bl sub_02059524
	bl sub_02035EC8
	mov r0, #0x5c
	bl sub_020364F0
	ldr r0, _020599E0 ; =sub_020599E4
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
_020599C0:
	ldr r0, _020599DC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _020599D0
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_020599D0:
	mov r0, #0x1e
	strh r0, [r1, #0x3c]
	mov r0, #0x62
	bl sub_020364F0
	pop {r3, pc}
	; .align 2, 0
_020599DC: .word 0x021C084C
_020599E0: .word sub_020599E4
	thumb_func_end sub_02059984

	thumb_func_start sub_020599E4
sub_020599E4: ; 0x020599E4
	push {lr}
	sub sp, #0xc
	bl sub_0203608C
	cmp r0, #0
	bne _020599F4
	bl sub_02032CE8
_020599F4:
	mov r0, #0x5c
	bl sub_02036540
	cmp r0, #0
	beq _02059A32
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
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	bl sub_020576A0
	mov r0, #0
	bl sub_02057AE4
	ldr r0, _02059A38 ; =sub_02059A70
	mov r1, #1
	bl sub_020598EC
_02059A32:
	add sp, #0xc
	pop {pc}
	nop
_02059A38: .word sub_02059A70
	thumb_func_end sub_020599E4

	thumb_func_start sub_02059A3C
sub_02059A3C: ; 0x02059A3C
	push {r3, lr}
	ldr r0, _02059A68 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059A4E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059A4E:
	mov r0, #0x1e
	bl sub_02036540
	cmp r0, #0
	beq _02059A64
	bl sub_02035EA8
	ldr r0, _02059A6C ; =sub_02059BF4
	mov r1, #0
	bl sub_020598EC
_02059A64:
	pop {r3, pc}
	nop
_02059A68: .word 0x021C084C
_02059A6C: .word sub_02059BF4
	thumb_func_end sub_02059A3C

	thumb_func_start sub_02059A70
sub_02059A70: ; 0x02059A70
	push {r3, lr}
	ldr r0, _02059AAC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059A82
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059A82:
	bl sub_0203608C
	cmp r0, #0
	bne _02059A9A
	bl sub_0205928C
	cmp r0, #0
	beq _02059AA8
	mov r0, #0x1e
	bl sub_020364F0
	b _02059AA0
_02059A9A:
	mov r0, #0x1e
	bl sub_020364F0
_02059AA0:
	ldr r0, _02059AB0 ; =sub_02059A3C
	mov r1, #0x14
	bl sub_020598EC
_02059AA8:
	pop {r3, pc}
	nop
_02059AAC: .word 0x021C084C
_02059AB0: .word sub_02059A3C
	thumb_func_end sub_02059A70

	thumb_func_start sub_02059AB4
sub_02059AB4: ; 0x02059AB4
	push {r3, lr}
	mov r0, #0x62
	bl sub_02036540
	cmp r0, #0
	beq _02059AEC
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _02059B08 ; =0x021C084C
	mov r2, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	bl sub_02057524
	bl sub_02059524
	mov r0, #0x5c
	bl sub_020364F0
	ldr r0, _02059B0C ; =sub_02059B10
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
_02059AEC:
	ldr r0, _02059B08 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059AFC
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059AFC:
	mov r0, #0x1e
	strh r0, [r1, #0x3c]
	mov r0, #0x62
	bl sub_020364F0
	pop {r3, pc}
	; .align 2, 0
_02059B08: .word 0x021C084C
_02059B0C: .word sub_02059B10
	thumb_func_end sub_02059AB4

	thumb_func_start sub_02059B10
sub_02059B10: ; 0x02059B10
	push {r3, lr}
	sub sp, #0x10
	bl sub_0203608C
	cmp r0, #0
	bne _02059B20
	bl sub_02032CE8
_02059B20:
	mov r0, #0x5c
	bl sub_02036540
	cmp r0, #0
	beq _02059B6C
	bl sub_020576A0
	mov r0, #0
	bl sub_02057AE4
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0xc
	bl sub_020360D0
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
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	ldr r0, _02059B70 ; =sub_02059CD8
	mov r1, #0
	bl sub_020598EC
_02059B6C:
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
_02059B70: .word sub_02059CD8
	thumb_func_end sub_02059B10

	thumb_func_start sub_02059B74
sub_02059B74: ; 0x02059B74
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	str r0, [sp]
	bl sub_02035E18
	cmp r0, #0
	ble _02059BDC
	ldr r6, _02059BEC ; =0x021C084C
	mov r7, #0
_02059B86:
	bl sub_0203608C
	ldr r1, [sp]
	cmp r1, r0
	beq _02059BCC
	add r0, r1, #0
	bl sub_02036564
	cmp r0, #0x5e
	bne _02059BCC
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02059BCC
	mov r4, #0
	add r5, r4, #0
_02059BA8:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _02059BB8
	bl sub_020181C4
	ldr r0, [r6, #0]
	str r7, [r0, r5]
_02059BB8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02059BA8
	ldr r0, [r6, #0]
	ldr r1, _02059BF0 ; =0x0000238E
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_0203E880
_02059BCC:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	bl sub_02035E18
	ldr r1, [sp]
	cmp r1, r0
	blt _02059B86
_02059BDC:
	ldr r1, _02059BEC ; =0x021C084C
	mov r0, #4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	ldr r1, [r1, #8]
	bl sub_02038A1C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059BEC: .word 0x021C084C
_02059BF0: .word 0x0000238E
	thumb_func_end sub_02059B74

	thumb_func_start sub_02059BF4
sub_02059BF4: ; 0x02059BF4
	push {r3, lr}
	bl sub_020590C4
	cmp r0, #0
	bne _02059C1E
	ldr r0, _02059C24 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02059C28 ; =sub_02059CD8
	mov r1, #0
	bl sub_020598EC
_02059C1E:
	bl sub_02059B74
	pop {r3, pc}
	; .align 2, 0
_02059C24: .word 0x021C084C
_02059C28: .word sub_02059CD8
	thumb_func_end sub_02059BF4

	thumb_func_start sub_02059C2C
sub_02059C2C: ; 0x02059C2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02059C4A
	mov r0, #0xb
	bl sub_02079FF4
	ldr r1, _02059C70 ; =0x021C084C
	ldr r2, [r1, #0]
	str r0, [r2, #0x44]
	ldr r1, [r1, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x44]
	bl sub_0207A21C
_02059C4A:
	cmp r5, #0
	beq _02059C58
	ldr r0, _02059C74 ; =sub_02059E50
	mov r1, #3
	bl sub_020598EC
	pop {r3, r4, r5, pc}
_02059C58:
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02059C78 ; =sub_02059BF4
	mov r1, #0
	bl sub_020598EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02059C70: .word 0x021C084C
_02059C74: .word sub_02059E50
_02059C78: .word sub_02059BF4
	thumb_func_end sub_02059C2C

	thumb_func_start sub_02059C7C
sub_02059C7C: ; 0x02059C7C
	ldr r3, _02059C84 ; =sub_020598EC
	ldr r0, _02059C88 ; =sub_02059BF4
	mov r1, #0
	bx r3
	; .align 2, 0
_02059C84: .word sub_020598EC
_02059C88: .word sub_02059BF4
	thumb_func_end sub_02059C7C

	thumb_func_start sub_02059C8C
sub_02059C8C: ; 0x02059C8C
	push {r3, lr}
	bl sub_020363A0
	cmp r0, #0
	bne _02059CCA
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _02059CCA
	ldr r0, _02059CCC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059CB2
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059CB2:
	bl sub_020594FC
	ldr r0, _02059CCC ; =0x021C084C
	ldr r1, _02059CD0 ; =sub_02059C2C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x18]
	bl sub_0205AB10
	ldr r0, _02059CD4 ; =sub_02059C7C
	mov r1, #0
	bl sub_020598EC
_02059CCA:
	pop {r3, pc}
	; .align 2, 0
_02059CCC: .word 0x021C084C
_02059CD0: .word sub_02059C2C
_02059CD4: .word sub_02059C7C
	thumb_func_end sub_02059C8C

	thumb_func_start sub_02059CD8
sub_02059CD8: ; 0x02059CD8
	push {r3, lr}
	ldr r0, _02059D04 ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _02059CFC
	ldr r0, _02059D08 ; =sub_02059C8C
	mov r1, #5
	bl sub_020598EC
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
_02059CFC:
	bl sub_02059B74
	pop {r3, pc}
	nop
_02059D04: .word 0x021C084C
_02059D08: .word sub_02059C8C
	thumb_func_end sub_02059CD8

	thumb_func_start sub_02059D0C
sub_02059D0C: ; 0x02059D0C
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _02059D24
	ldr r0, _02059D28 ; =0x021C084C
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
_02059D24:
	pop {r4, pc}
	nop
_02059D28: .word 0x021C084C
	thumb_func_end sub_02059D0C

	thumb_func_start sub_02059D2C
sub_02059D2C: ; 0x02059D2C
	ldr r0, _02059D4C ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059D46
	ldr r1, [r0, #0x34]
	ldr r0, _02059D50 ; =sub_02059CD8
	cmp r1, r0
	beq _02059D42
	ldr r0, _02059D54 ; =sub_02059BF4
	cmp r1, r0
	bne _02059D46
_02059D42:
	mov r0, #1
	bx lr
_02059D46:
	mov r0, #0
	bx lr
	nop
_02059D4C: .word 0x021C084C
_02059D50: .word sub_02059CD8
_02059D54: .word sub_02059BF4
	thumb_func_end sub_02059D2C

	thumb_func_start sub_02059D58
sub_02059D58: ; 0x02059D58
	push {r4, lr}
	sub sp, #8
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059D6E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	add sp, #8
	pop {r4, pc}
_02059D6E:
	mov r4, #5
	bl sub_0203895C
	cmp r0, #2
	beq _02059D84
	cmp r0, #4
	beq _02059D80
	cmp r0, #5
	bne _02059D86
_02059D80:
	mov r4, #0xf
	b _02059D86
_02059D84:
	mov r4, #7
_02059D86:
	add r0, sp, #0
	bl sub_020389A0
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x44]
	ldr r0, [r0, #0x18]
	cmp r1, #0
	bne _02059DA2
	add r1, sp, #0
	add r2, r4, #0
	bl sub_020517E8
	b _02059DBA
_02059DA2:
	add r2, r4, #0
	bl sub_0205184C
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x44]
	bl sub_020181C4
	ldr r0, _02059DC4 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x44]
_02059DBA:
	bl sub_020596BC
	add sp, #8
	pop {r4, pc}
	nop
_02059DC4: .word 0x021C084C
	thumb_func_end sub_02059D58

	thumb_func_start sub_02059DC8
sub_02059DC8: ; 0x02059DC8
	push {r3, lr}
	bl sub_020348B0
	cmp r0, #0
	beq _02059E02
	ldr r0, _02059E04 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059DE0
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
_02059DE0:
	ldr r0, _02059E04 ; =0x021C084C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	cmp r0, #0x5a
	bne _02059DF0
	mov r0, #4
	bl sub_020364F0
_02059DF0:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	beq _02059E02
	ldr r0, _02059E08 ; =sub_02059D58
	mov r1, #0
	bl sub_020598EC
_02059E02:
	pop {r3, pc}
	; .align 2, 0
_02059E04: .word 0x021C084C
_02059E08: .word sub_02059D58
	thumb_func_end sub_02059DC8

	thumb_func_start sub_02059E0C
sub_02059E0C: ; 0x02059E0C
	push {r3, lr}
	ldr r0, _02059E2C ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059E1E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059E1E:
	bl sub_02034878
	ldr r0, _02059E30 ; =sub_02059DC8
	mov r1, #0x78
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E2C: .word 0x021C084C
_02059E30: .word sub_02059DC8
	thumb_func_end sub_02059E0C

	thumb_func_start sub_02059E34
sub_02059E34: ; 0x02059E34
	push {r3, lr}
	mov r0, #3
	bl sub_02036540
	cmp r0, #0
	beq _02059E48
	ldr r0, _02059E4C ; =sub_02059E0C
	mov r1, #2
	bl sub_020598EC
_02059E48:
	pop {r3, pc}
	nop
_02059E4C: .word sub_02059E0C
	thumb_func_end sub_02059E34

	thumb_func_start sub_02059E50
sub_02059E50: ; 0x02059E50
	push {r3, lr}
	ldr r0, _02059E78 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059E62
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059E62:
	mov r0, #0
	bl sub_020576CC
	mov r0, #3
	bl sub_020364F0
	ldr r0, _02059E7C ; =sub_02059E34
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E78: .word 0x021C084C
_02059E7C: .word sub_02059E34
	thumb_func_end sub_02059E50

	thumb_func_start sub_02059E80
sub_02059E80: ; 0x02059E80
	push {r3, lr}
	bl sub_02036964
	ldr r0, _02059E90 ; =sub_02059E94
	mov r1, #2
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E90: .word sub_02059E94
	thumb_func_end sub_02059E80

	thumb_func_start sub_02059E94
sub_02059E94: ; 0x02059E94
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02059EA6
	ldr r0, _02059EA8 ; =sub_02059964
	mov r1, #0xa
	bl sub_020598EC
_02059EA6:
	pop {r3, pc}
	; .align 2, 0
_02059EA8: .word sub_02059964
	thumb_func_end sub_02059E94

	thumb_func_start sub_02059EAC
sub_02059EAC: ; 0x02059EAC
	ldr r1, _02059EB8 ; =0x021C084C
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	strb r2, [r0, #0x10]
	bx lr
	; .align 2, 0
_02059EB8: .word 0x021C084C
	thumb_func_end sub_02059EAC

	thumb_func_start sub_02059EBC
sub_02059EBC: ; 0x02059EBC
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02059EC8
	bl sub_02022974
_02059EC8:
	ldr r0, _02059ED4 ; =0x021C084C
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_02059ED4: .word 0x021C084C
	thumb_func_end sub_02059EBC

	thumb_func_start sub_02059ED8
sub_02059ED8: ; 0x02059ED8
	push {r4, lr}
	bl sub_0203608C
	add r4, r0, #0
	mov r0, #0x5f
	bl sub_02036540
	cmp r0, #0
	beq _02059F02
	ldr r1, _02059F04 ; =0x021C084C
	mov r0, #0x58
	ldr r2, [r1, #0]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	ldr r2, _02059F08 ; =0x0000066C
	bl sub_0203597C
	ldr r0, _02059F0C ; =sub_02059F10
	mov r1, #0
	bl sub_020598EC
_02059F02:
	pop {r4, pc}
	; .align 2, 0
_02059F04: .word 0x021C084C
_02059F08: .word 0x0000066C
_02059F0C: .word sub_02059F10
	thumb_func_end sub_02059ED8

	thumb_func_start sub_02059F10
sub_02059F10: ; 0x02059F10
	push {r3, r4, r5, lr}
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02059F32
	ldr r5, _02059F44 ; =0x021C084C
_02059F1E:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _02059F40
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02059F1E
_02059F32:
	mov r0, #0x61
	bl sub_020364F0
	ldr r0, _02059F48 ; =sub_02059FB8
	mov r1, #0
	bl sub_020598EC
_02059F40:
	pop {r3, r4, r5, pc}
	nop
_02059F44: .word 0x021C084C
_02059F48: .word sub_02059FB8
	thumb_func_end sub_02059F10

	thumb_func_start sub_02059F4C
sub_02059F4C: ; 0x02059F4C
	push {r3, lr}
	bl sub_020348B0
	cmp r0, #0
	bne _02059F86
	ldr r0, _02059F88 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059F64
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
_02059F64:
	ldr r0, _02059F88 ; =0x021C084C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	cmp r0, #0x5a
	bne _02059F74
	mov r0, #5
	bl sub_020364F0
_02059F74:
	mov r0, #5
	bl sub_02036540
	cmp r0, #0
	beq _02059F86
	ldr r0, _02059F8C ; =sub_02059FD4
	mov r1, #0
	bl sub_020598EC
_02059F86:
	pop {r3, pc}
	; .align 2, 0
_02059F88: .word 0x021C084C
_02059F8C: .word sub_02059FD4
	thumb_func_end sub_02059F4C

	thumb_func_start sub_02059F90
sub_02059F90: ; 0x02059F90
	push {r3, lr}
	ldr r0, _02059FB0 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059FA2
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059FA2:
	bl sub_02034884
	ldr r0, _02059FB4 ; =sub_02059F4C
	mov r1, #0x78
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059FB0: .word 0x021C084C
_02059FB4: .word sub_02059F4C
	thumb_func_end sub_02059F90

	thumb_func_start sub_02059FB8
sub_02059FB8: ; 0x02059FB8
	push {r3, lr}
	mov r0, #0x61
	bl sub_02036540
	cmp r0, #0
	beq _02059FCC
	ldr r0, _02059FD0 ; =sub_02059F90
	mov r1, #2
	bl sub_020598EC
_02059FCC:
	pop {r3, pc}
	nop
_02059FD0: .word sub_02059F90
	thumb_func_end sub_02059FB8

	thumb_func_start sub_02059FD4
sub_02059FD4: ; 0x02059FD4
	push {r3, lr}
	ldr r0, _0205A00C ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059FE6
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059FE6:
	mov r0, #0x62
	bl sub_020364F0
	ldr r0, _0205A00C ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A002
	ldr r0, _0205A010 ; =sub_02059984
	mov r1, #0x1e
	bl sub_020598EC
	pop {r3, pc}
_0205A002:
	ldr r0, _0205A014 ; =sub_02059AB4
	mov r1, #0x1e
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205A00C: .word 0x021C084C
_0205A010: .word sub_02059984
_0205A014: .word sub_02059AB4
	thumb_func_end sub_02059FD4

	thumb_func_start sub_0205A018
sub_0205A018: ; 0x0205A018
	push {r3, lr}
	mov r0, #0x5b
	bl sub_02036540
	cmp r0, #0
	beq _0205A03A
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_020576CC
	ldr r0, _0205A03C ; =sub_0205A058
	mov r1, #5
	bl sub_020598EC
_0205A03A:
	pop {r3, pc}
	; .align 2, 0
_0205A03C: .word sub_0205A058
	thumb_func_end sub_0205A018

	thumb_func_start sub_0205A040
sub_0205A040: ; 0x0205A040
	push {r3, lr}
	mov r0, #1
	bl sub_020576CC
	ldr r0, _0205A054 ; =sub_0205A058
	mov r1, #5
	bl sub_020598EC
	pop {r3, pc}
	nop
_0205A054: .word sub_0205A058
	thumb_func_end sub_0205A040

	thumb_func_start sub_0205A058
sub_0205A058: ; 0x0205A058
	push {r3, lr}
	ldr r0, _0205A078 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _0205A06A
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_0205A06A:
	bl sub_02036978
	ldr r0, _0205A07C ; =sub_020596BC
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205A078: .word 0x021C084C
_0205A07C: .word sub_020596BC
	thumb_func_end sub_0205A058

	thumb_func_start sub_0205A080
sub_0205A080: ; 0x0205A080
	push {r3, lr}
	ldr r1, _0205A09C ; =0x021C084C
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0205A092
	add r1, #0x41
	ldrb r1, [r1]
	cmp r1, #0
	bne _0205A096
_0205A092:
	mov r0, #0
	pop {r3, pc}
_0205A096:
	bl ov23_02242E10
	pop {r3, pc}
	; .align 2, 0
_0205A09C: .word 0x021C084C
	thumb_func_end sub_0205A080

	thumb_func_start sub_0205A0A0
sub_0205A0A0: ; 0x0205A0A0
	push {r3, lr}
	ldr r0, _0205A0B8 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A0B6
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A0B6
	bl ov23_02242C78
_0205A0B6:
	pop {r3, pc}
	; .align 2, 0
_0205A0B8: .word 0x021C084C
	thumb_func_end sub_0205A0A0

	thumb_func_start sub_0205A0BC
sub_0205A0BC: ; 0x0205A0BC
	push {r3, lr}
	ldr r0, _0205A0D4 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A0D2
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A0D2
	bl ov23_02242CB4
_0205A0D2:
	pop {r3, pc}
	; .align 2, 0
_0205A0D4: .word 0x021C084C
	thumb_func_end sub_0205A0BC

	thumb_func_start sub_0205A0D8
sub_0205A0D8: ; 0x0205A0D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r6, [r5, #0xc]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r6, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #4]
	ldr r0, [sp]
	str r0, [r4, #0]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [sp, #4]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x12]
	add r0, r6, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0205A15C ; =0x020ED514
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, _0205A160 ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	str r4, [r7, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205A15C: .word 0x020ED514
_0205A160: .word 0x020F410C
	thumb_func_end sub_0205A0D8

	thumb_func_start sub_0205A164
sub_0205A164: ; 0x0205A164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A1F4
	mov r1, #1
	bl sub_02026074
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	mov r2, #0xf
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0xf
	and r0, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xf0
	bic r0, r1
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	b _0205A214
_0205A1F4:
	add r0, r4, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #3
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x30
_0205A214:
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
	mov r2, #0
_0205A232:
	add r0, r5, r2
	add r0, #0x3d
	ldrb r1, [r0]
	add r0, r4, r2
	add r0, #0x2c
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #6
	blt _0205A232
	ldr r0, [r5, #0x24]
	ldr r1, _0205A254 ; =0x020F1E88
	add r2, r4, #0
	bl sub_0203CD84
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0205A254: .word 0x020F1E88
	thumb_func_end sub_0205A164

	thumb_func_start sub_0205A258
sub_0205A258: ; 0x0205A258
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205A26A
	mov r0, #0
	pop {r4, pc}
_0205A26A:
	ldr r0, [r4, #4]
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x3d
	mov r2, #6
	bl sub_020C4DB0
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0205A28C
	cmp r0, #7
	bne _0205A292
	mov r0, #0
	str r0, [r4, #0x38]
	b _0205A296
_0205A28C:
	mov r0, #1
	str r0, [r4, #0x38]
	b _0205A296
_0205A292:
	mov r0, #2
	str r0, [r4, #0x38]
_0205A296:
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0205A258

	thumb_func_start sub_0205A2B0
sub_0205A2B0: ; 0x0205A2B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205A2C2
	mov r0, #0
	pop {r4, pc}
_0205A2C2:
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2B0

	thumb_func_start sub_0205A2DC
sub_0205A2DC: ; 0x0205A2DC
	push {r3, lr}
	ldr r0, [r0, #0x24]
	bl sub_020509DC
	cmp r0, #0
	beq _0205A2F6
	mov r0, #1
	bl ov5_021D1744
	bl sub_020576A0
	mov r0, #1
	pop {r3, pc}
_0205A2F6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2DC

	thumb_func_start sub_0205A2FC
sub_0205A2FC: ; 0x0205A2FC
	push {r3, r4, r5, lr}
	bl sub_02035E18
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0205A31E
_0205A30A:
	add r0, r4, #0
	bl sub_02036564
	cmp r0, #0x5e
	bne _0205A318
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A318:
	add r4, r4, #1
	cmp r4, r5
	blt _0205A30A
_0205A31E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2FC

	thumb_func_start sub_0205A324
sub_0205A324: ; 0x0205A324
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0x34]
	cmp r1, #0x2c
	bls _0205A33E
	b _0205AA4A
_0205A33E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205A34A: ; jump table
	.short _0205A3A4 - _0205A34A - 2 ; case 0
	.short _0205A3C6 - _0205A34A - 2 ; case 1
	.short _0205A3E0 - _0205A34A - 2 ; case 2
	.short _0205A3FA - _0205A34A - 2 ; case 3
	.short _0205A436 - _0205A34A - 2 ; case 4
	.short _0205A486 - _0205A34A - 2 ; case 5
	.short _0205AA4A - _0205A34A - 2 ; case 6
	.short _0205A474 - _0205A34A - 2 ; case 7
	.short _0205A49C - _0205A34A - 2 ; case 8
	.short _0205A4C2 - _0205A34A - 2 ; case 9
	.short _0205A4CE - _0205A34A - 2 ; case 10
	.short _0205A4FA - _0205A34A - 2 ; case 11
	.short _0205A518 - _0205A34A - 2 ; case 12
	.short _0205A52C - _0205A34A - 2 ; case 13
	.short _0205A538 - _0205A34A - 2 ; case 14
	.short _0205A55A - _0205A34A - 2 ; case 15
	.short _0205A570 - _0205A34A - 2 ; case 16
	.short _0205A59E - _0205A34A - 2 ; case 17
	.short _0205A5C4 - _0205A34A - 2 ; case 18
	.short _0205A5D6 - _0205A34A - 2 ; case 19
	.short _0205A61A - _0205A34A - 2 ; case 20
	.short _0205A5FA - _0205A34A - 2 ; case 21
	.short _0205A636 - _0205A34A - 2 ; case 22
	.short _0205A646 - _0205A34A - 2 ; case 23
	.short _0205A664 - _0205A34A - 2 ; case 24
	.short _0205A682 - _0205A34A - 2 ; case 25
	.short _0205A696 - _0205A34A - 2 ; case 26
	.short _0205A702 - _0205A34A - 2 ; case 27
	.short _0205A73A - _0205A34A - 2 ; case 28
	.short _0205A750 - _0205A34A - 2 ; case 29
	.short _0205A79A - _0205A34A - 2 ; case 30
	.short _0205A7D2 - _0205A34A - 2 ; case 31
	.short _0205A7F8 - _0205A34A - 2 ; case 32
	.short _0205A918 - _0205A34A - 2 ; case 33
	.short _0205A948 - _0205A34A - 2 ; case 34
	.short _0205A960 - _0205A34A - 2 ; case 35
	.short _0205A84C - _0205A34A - 2 ; case 36
	.short _0205A88A - _0205A34A - 2 ; case 37
	.short _0205A8A6 - _0205A34A - 2 ; case 38
	.short _0205A970 - _0205A34A - 2 ; case 39
	.short _0205AA4A - _0205A34A - 2 ; case 40
	.short _0205A994 - _0205A34A - 2 ; case 41
	.short _0205A9D6 - _0205A34A - 2 ; case 42
	.short _0205A9F8 - _0205A34A - 2 ; case 43
	.short _0205AA2A - _0205A34A - 2 ; case 44
_0205A3A4:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A46C
	mov r0, #1
	str r0, [r4, #0x34]
	bl sub_02059240
	b _0205AA4A
_0205A3C6:
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #1
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A3E0:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A46C
	mov r0, #0x5d
	bl sub_020364F0
	mov r0, #3
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A3FA:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A41A
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x38]
	bl sub_02062C30
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
	b _0205AA4A
_0205A41A:
	ldr r0, _0205A720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0205A46C
	mov r0, #4
	str r0, [r4, #0x34]
	mov r0, #0x5c
	bl sub_020364F0
	mov r0, #5
	add r4, #0x43
	strb r0, [r4]
	b _0205AA4A
_0205A436:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A454
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x38]
	bl sub_02062C30
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
_0205A454:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A46E
_0205A46C:
	b _0205AA4A
_0205A46E:
	mov r0, #8
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A474:
	add r0, r4, #0
	bl sub_0205AC28
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A486:
	add r0, r4, #0
	bl sub_0205AC28
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A49C:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A4B4
	mov r0, #5
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
	b _0205AA4A
_0205A4B4:
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #0
	blx r2
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A4C2:
	mov r0, #0xa
	str r0, [r4, #0x34]
	mov r0, #5
	add r4, #0x44
	strb r0, [r4]
	b _0205AA4A
_0205A4CE:
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	beq _0205A4E6
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	add r4, #0x44
	sub r0, r0, #1
	strb r0, [r4]
	b _0205AA4A
_0205A4E6:
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	bl sub_02065684
	cmp r0, #0
	beq _0205A58A
	mov r0, #0xb
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A4FA:
	bl sub_02059240
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xd
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0xc
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A518:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A58A
	mov r0, #0xd
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A52C:
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0xe
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A538:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A58A
	bl sub_02059240
	mov r0, #0xf
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A55A:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AAA0
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0205A164
	mov r0, #0x10
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A570:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A258
	cmp r0, #0
	beq _0205A58A
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0205A58C
	cmp r0, #1
	beq _0205A592
	cmp r0, #2
	beq _0205A598
_0205A58A:
	b _0205AA4A
_0205A58C:
	mov r0, #0x14
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A592:
	mov r0, #0x13
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A598:
	mov r0, #0x11
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A59E:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r3, r4, #0
	add r3, #0x3c
	ldrb r3, [r3]
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A0D8
	mov r0, #0x12
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5C4:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A2B0
	cmp r0, #0
	beq _0205A6A0
	mov r0, #0xf
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5D6:
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205A5F4
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0x15
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5F4:
	mov r0, #0x1a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5FA:
	add r0, r4, #0
	add r0, #0x3d
	bl sub_0203898C
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205A6A0
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A61A:
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205A630
	mov r0, #0x16
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A630:
	mov r0, #0x1a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A636:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205A6A0
	mov r0, #8
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A646:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A6A0
	mov r0, #0x18
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A664:
	bl sub_02059240
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x13
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x19
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A682:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A6A0
	mov r0, #0xd
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A696:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	bne _0205A6A2
_0205A6A0:
	b _0205AA4A
_0205A6A2:
	bl sub_0205A2FC
	cmp r0, #0
	beq _0205A6B0
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A6B0:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0205A6BA
	mov r1, #1
	b _0205A6BC
_0205A6BA:
	mov r1, #0
_0205A6BC:
	add r0, r4, #0
	add r0, #0x82
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x82
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_0205AC80
	mov r0, #0
	bl sub_020364F0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x74]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xe
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1b
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A702:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	bl sub_0205A2FC
	cmp r0, #0
	beq _0205A724
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
	nop
_0205A720: .word 0x021BF67C
_0205A724:
	mov r0, #0
	bl sub_02036540
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205ACC8
	mov r0, #0x1c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A73A:
	add r0, r4, #0
	bl sub_0205AD10
	cmp r0, #0
	beq _0205A806
	mov r0, #1
	bl sub_020364F0
	mov r0, #0x1d
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A750:
	mov r0, #1
	bl sub_02036540
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205AD20
	add r1, r4, #0
	add r1, #0x83
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A794
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A794
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x14
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A794:
	mov r0, #0x2a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A79A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	mov r1, #0
	add r0, #0x89
	strb r1, [r0]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	strb r1, [r0]
	mov r0, #0x1f
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A7D2:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205AD80
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_0205ADF8
	mov r0, #0x20
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A7F8:
	add r0, r4, #0
	bl sub_0205AFE4
	cmp r0, #1
	beq _0205A808
	cmp r0, #2
	beq _0205A81E
_0205A806:
	b _0205AA4A
_0205A808:
	add r0, r4, #0
	bl sub_0205B0B4
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	mov r0, #0x24
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A81E:
	add r0, r4, #0
	bl sub_0205B0B4
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x84
	strb r1, [r0]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xf
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	bl sub_020364F0
	mov r0, #0x27
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A84C:
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	ldr r0, [r4, #0x50]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0200B538
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x12
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x25
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A88A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A920
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AF18
	mov r0, #0x26
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A8A6:
	add r0, r4, #0
	bl sub_0205AFE4
	cmp r0, #1
	beq _0205A8D4
	cmp r0, #2
	bne _0205A920
	add r0, r4, #0
	bl sub_0205B0B4
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1f
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A8D4:
	mov r0, #0x81
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _0205A90C
	add r0, r4, #0
	bl sub_0205B0B4
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xe
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	bl sub_020364F0
	mov r0, #0x27
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A90C:
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x21
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A918:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0205A922
_0205A920:
	b _0205AA4A
_0205A922:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AAA0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r3, r4, #0
	add r3, #0x84
	ldrb r3, [r3]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x50]
	add r0, r4, #0
	bl sub_0205A0D8
	mov r0, #0x22
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A948:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A2B0
	cmp r0, #0
	beq _0205AA4A
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	mov r0, #0x23
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A960:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205AA4A
	mov r0, #0x24
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A970:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205AA4A
	mov r0, #2
	bl sub_02036540
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	bl sub_0205AD34
	mov r0, #0x29
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A994:
	add r0, r4, #0
	bl sub_0205AD70
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0205A9B4
	mov r0, #4
	bl sub_020364F0
	mov r0, #0x2c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9B4:
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0205A9C4
	mov r0, #0x2a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9C4:
	add r0, r4, #0
	bl sub_0205ADAC
	mov r0, #0x5d
	bl sub_020364F0
	mov r0, #2
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9D6:
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xf
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0x2b
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9F8:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _0205AA4A
	mov r0, #4
	bl sub_020364F0
	mov r0, #0x2c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205AA2A:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	ldr r2, [r4, #8]
	add r1, r0, #0
	blx r2
	mov r0, #5
	str r0, [r4, #0x34]
_0205AA4A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205A324

	thumb_func_start sub_0205AA50
sub_0205AA50: ; 0x0205AA50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x14
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AA82
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	b _0205AA88
_0205AA82:
	add r0, r4, #0
	bl sub_0205D988
_0205AA88:
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_0205D994
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205AA50

	thumb_func_start sub_0205AAA0
sub_0205AAA0: ; 0x0205AAA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AAD6
	cmp r4, #0
	beq _0205AAC6
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201ACF4
_0205AAC6:
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A7A0
_0205AAD6:
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AAF2
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7A0
_0205AAF2:
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AB0E
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A8FC
	add r5, #0x64
	add r0, r5, #0
	bl sub_0201A7A0
_0205AB0E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205AAA0

	thumb_func_start sub_0205AB10
sub_0205AB10: ; 0x0205AB10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	cmp r0, #0
	beq _0205AB1E
	b _0205AC22
_0205AB1E:
	mov r0, #0xb
	mov r1, #0x8c
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x8c
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	str r5, [r4, #0x24]
	mov r0, #0xb
	str r6, [r4, #8]
	bl sub_0200B358
	mov r2, #0xb
	str r0, [r4, #0x28]
	mov r0, #0
	mov r1, #0x1a
	add r3, r2, #0
	bl sub_0200B144
	str r0, [r4, #0x2c]
	mov r0, #0xc8
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0xc]
	mov r0, #0xc8
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x54
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A7A0
	mov r0, #0xb
	bl sub_020149F0
	str r0, [r4, #0x78]
	bl sub_0203895C
	add r1, r4, #0
	add r1, #0x88
	strb r0, [r1]
	mov r1, #0
	str r1, [r4, #0x4c]
	str r1, [r4, #0x48]
	add r0, r4, #0
	str r1, [r4, #0x50]
	add r0, #0x89
	strb r1, [r0]
	bl sub_0203608C
	add r1, r4, #0
	add r1, #0x86
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x86
	ldrh r1, [r0]
	mov r0, #1
	eor r0, r1
	bl sub_02032EE8
	str r0, [r4, #0x74]
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205ABC8
	cmp r0, #4
	beq _0205ABFE
	b _0205AC04
_0205ABC8:
	bl sub_0205B0E4
	add r6, r0, #0
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018184
	str r0, [r4, #0x4c]
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018184
	str r0, [r4, #0x48]
	mov r0, #0xb
	bl sub_02079FF4
	mov r1, #3
	str r0, [r4, #0x50]
	bl sub_0207A014
	add r0, r4, #0
	mov r1, #5
	add r0, #0x44
	strb r1, [r0]
	mov r0, #0x17
	str r0, [r4, #0x34]
	b _0205AC18
_0205ABFE:
	mov r0, #9
	str r0, [r4, #0x34]
	b _0205AC18
_0205AC04:
	ldr r0, [r4, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205AC14
	mov r0, #9
	str r0, [r4, #0x34]
	b _0205AC18
_0205AC14:
	mov r0, #0
	str r0, [r4, #0x34]
_0205AC18:
	ldr r1, _0205AC24 ; =sub_0205A324
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
_0205AC22:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205AC24: .word sub_0205A324
	thumb_func_end sub_0205AB10
