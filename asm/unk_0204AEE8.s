	.include "macros/function.inc"
	.include "include/unk_0204AEE8.inc"

	

	.text


	thumb_func_start sub_0204AEE8
sub_0204AEE8: ; 0x0204AEE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp, #8]
	mov r0, #0xe
	mov r1, #4
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x38]
	bl sub_02023790
	add r6, r0, #0
	mov r0, #2
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02027560
	mov r2, #0x67
	str r0, [sp, #0x18]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x10]
	mov r0, #0x13
	mov r1, #0xe
	mov r2, #4
	bl sub_0200B368
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	add r2, r7, #0
	str r0, [sp, #0x14]
	str r3, [sp, #4]
	bl sub_0200B60C
	mov r4, #0
_0204AF3E:
	add r0, r4, #0
	bl sub_02078824
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _0204AF78
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrb r1, [r5]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #8]
	add r1, r1, #1
	bl sub_0200B48C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0204AF78:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x12
	blo _0204AF3E
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AEE8

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
	bl MI_CpuCopy8
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
	ldr r3, _0204B0D0 ; =MI_CpuCopy8
	add r0, #0x3e
	mov r2, #0x1c
	bx r3
	nop
_0204B0CC: .word 0x0000083E
_0204B0D0: .word MI_CpuCopy8
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
	bl _s32_div_f
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
	bl _s32_div_f
	add r0, r5, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0204B15A:
	bl sub_0204AEC0
	mov r1, #0x64
	bl _s32_div_f
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl _s32_div_f
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
	bl GF_AssertFail
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
	bl _s32_div_f
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

	.rodata


	.global Unk_020EBD50
Unk_020EBD50: ; 0x020EBD50
	.incbin "incbin/arm9_rodata.bin", 0x7110, 0x7118 - 0x7110

	.global Unk_020EBD58
Unk_020EBD58: ; 0x020EBD58
	.incbin "incbin/arm9_rodata.bin", 0x7118, 0x7138 - 0x7118

	.global Unk_020EBD78
Unk_020EBD78: ; 0x020EBD78
	.incbin "incbin/arm9_rodata.bin", 0x7138, 0x7158 - 0x7138

	.global Unk_020EBD98
Unk_020EBD98: ; 0x020EBD98
	.incbin "incbin/arm9_rodata.bin", 0x7158, 0xFC

