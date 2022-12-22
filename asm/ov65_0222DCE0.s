	.include "macros/function.inc"
	.include "include/ov65_0222DCE0.inc"

	

	.text


	thumb_func_start ov65_0222DCE0
ov65_0222DCE0: ; 0x0222DCE0
	push {r3, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x35
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_0222DCE0

	thumb_func_start ov65_0222DCF8
ov65_0222DCF8: ; 0x0222DCF8
	push {r3, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_0207D990
	ldr r1, _0222DD18 ; =0x000001C1
	mov r2, #0x36
	bl sub_0207D730
	cmp r0, #0
	beq _0222DD14
	mov r0, #1
	pop {r3, pc}
_0222DD14:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0222DD18: .word 0x000001C1
	thumb_func_end ov65_0222DCF8

	thumb_func_start ov65_0222DD1C
ov65_0222DD1C: ; 0x0222DD1C
	mov r0, #1
	bx lr
	thumb_func_end ov65_0222DD1C

	thumb_func_start ov65_0222DD20
ov65_0222DD20: ; 0x0222DD20
	push {r3, r4, r5, lr}
	ldrb r4, [r1, #0x1b]
	add r5, r0, #0
	add r1, r4, #0
	sub r1, #0x14
	cmp r1, #1
	bhi _0222DD38
	bl ov65_0222DCE0
	cmp r0, #0
	bne _0222DD38
	mov r4, #0x1d
_0222DD38:
	add r0, r4, #0
	sub r0, #0x16
	cmp r0, #5
	bhi _0222DD4C
	add r0, r5, #0
	bl ov65_0222DD1C
	cmp r0, #0
	bne _0222DD4C
	mov r4, #0x1d
_0222DD4C:
	add r0, r4, #0
	sub r0, #0x12
	cmp r0, #1
	bhi _0222DD60
	add r0, r5, #0
	bl ov65_0222DCF8
	cmp r0, #0
	bne _0222DD60
	mov r4, #0x1d
_0222DD60:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222DD20

	thumb_func_start ov65_0222DD64
ov65_0222DD64: ; 0x0222DD64
	sub r0, #0x12
	cmp r0, #9
	bhi _0222DD8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DD76: ; jump table
	.short _0222DD8A - _0222DD76 - 2 ; case 0
	.short _0222DD8A - _0222DD76 - 2 ; case 1
	.short _0222DD8E - _0222DD76 - 2 ; case 2
	.short _0222DD8E - _0222DD76 - 2 ; case 3
	.short _0222DD8A - _0222DD76 - 2 ; case 4
	.short _0222DD8A - _0222DD76 - 2 ; case 5
	.short _0222DD8A - _0222DD76 - 2 ; case 6
	.short _0222DD8A - _0222DD76 - 2 ; case 7
	.short _0222DD8A - _0222DD76 - 2 ; case 8
	.short _0222DD8A - _0222DD76 - 2 ; case 9
_0222DD8A:
	mov r0, #1
	bx lr
_0222DD8E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0222DD64

	thumb_func_start ov65_0222DD94
ov65_0222DD94: ; 0x0222DD94
	push {r3, lr}
	sub r0, #0x12
	cmp r0, #9
	bhi _0222DDCC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DDA8: ; jump table
	.short _0222DDBC - _0222DDA8 - 2 ; case 0
	.short _0222DDBC - _0222DDA8 - 2 ; case 1
	.short _0222DDCC - _0222DDA8 - 2 ; case 2
	.short _0222DDCC - _0222DDA8 - 2 ; case 3
	.short _0222DDC0 - _0222DDA8 - 2 ; case 4
	.short _0222DDC0 - _0222DDA8 - 2 ; case 5
	.short _0222DDC8 - _0222DDA8 - 2 ; case 6
	.short _0222DDC8 - _0222DDA8 - 2 ; case 7
	.short _0222DDC4 - _0222DDA8 - 2 ; case 8
	.short _0222DDC4 - _0222DDA8 - 2 ; case 9
_0222DDBC:
	mov r0, #0xb
	pop {r3, pc}
_0222DDC0:
	mov r0, #0xd
	pop {r3, pc}
_0222DDC4:
	mov r0, #0xf
	pop {r3, pc}
_0222DDC8:
	mov r0, #0xe
	pop {r3, pc}
_0222DDCC:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov65_0222DD94

	thumb_func_start ov65_0222DDD4
ov65_0222DDD4: ; 0x0222DDD4
	sub r0, #9
	cmp r0, #5
	bhi _0222DDF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DDE6: ; jump table
	.short _0222DDF2 - _0222DDE6 - 2 ; case 0
	.short _0222DDF2 - _0222DDE6 - 2 ; case 1
	.short _0222DDF2 - _0222DDE6 - 2 ; case 2
	.short _0222DDF2 - _0222DDE6 - 2 ; case 3
	.short _0222DDF2 - _0222DDE6 - 2 ; case 4
	.short _0222DDF2 - _0222DDE6 - 2 ; case 5
_0222DDF2:
	mov r0, #1
	bx lr
_0222DDF6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0222DDD4

	thumb_func_start ov65_0222DDFC
ov65_0222DDFC: ; 0x0222DDFC
	push {r4, lr}
	add r4, r0, #0
	bl ov65_0222DDD4
	cmp r0, #0
	beq _0222DE0C
	mov r0, #1
	pop {r4, pc}
_0222DE0C:
	sub r4, #0xf
	cmp r4, #0xc
	bhi _0222DE3C
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DE1E: ; jump table
	.short _0222DE38 - _0222DE1E - 2 ; case 0
	.short _0222DE3C - _0222DE1E - 2 ; case 1
	.short _0222DE3C - _0222DE1E - 2 ; case 2
	.short _0222DE3C - _0222DE1E - 2 ; case 3
	.short _0222DE38 - _0222DE1E - 2 ; case 4
	.short _0222DE3C - _0222DE1E - 2 ; case 5
	.short _0222DE38 - _0222DE1E - 2 ; case 6
	.short _0222DE3C - _0222DE1E - 2 ; case 7
	.short _0222DE38 - _0222DE1E - 2 ; case 8
	.short _0222DE3C - _0222DE1E - 2 ; case 9
	.short _0222DE38 - _0222DE1E - 2 ; case 10
	.short _0222DE3C - _0222DE1E - 2 ; case 11
	.short _0222DE38 - _0222DE1E - 2 ; case 12
_0222DE38:
	mov r0, #1
	pop {r4, pc}
_0222DE3C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0222DDFC

	thumb_func_start ov65_0222DE40
ov65_0222DE40: ; 0x0222DE40
	cmp r0, #7
	bhi _0222DE64
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DE50: ; jump table
	.short _0222DE64 - _0222DE50 - 2 ; case 0
	.short _0222DE64 - _0222DE50 - 2 ; case 1
	.short _0222DE60 - _0222DE50 - 2 ; case 2
	.short _0222DE60 - _0222DE50 - 2 ; case 3
	.short _0222DE60 - _0222DE50 - 2 ; case 4
	.short _0222DE60 - _0222DE50 - 2 ; case 5
	.short _0222DE60 - _0222DE50 - 2 ; case 6
	.short _0222DE60 - _0222DE50 - 2 ; case 7
_0222DE60:
	mov r0, #1
	bx lr
_0222DE64:
	mov r0, #0
	bx lr
	thumb_func_end ov65_0222DE40

	thumb_func_start ov65_0222DE68
ov65_0222DE68: ; 0x0222DE68
	push {r4, lr}
	add r4, r0, #0
	bl ov65_0222DE40
	cmp r0, #0
	beq _0222DE78
	mov r0, #1
	pop {r4, pc}
_0222DE78:
	cmp r4, #8
	bgt _0222DE84
	bge _0222DEA8
	cmp r4, #1
	beq _0222DEA8
	b _0222DEAC
_0222DE84:
	sub r4, #0x12
	cmp r4, #8
	bhi _0222DEAC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DE96: ; jump table
	.short _0222DEA8 - _0222DE96 - 2 ; case 0
	.short _0222DEAC - _0222DE96 - 2 ; case 1
	.short _0222DEA8 - _0222DE96 - 2 ; case 2
	.short _0222DEAC - _0222DE96 - 2 ; case 3
	.short _0222DEA8 - _0222DE96 - 2 ; case 4
	.short _0222DEAC - _0222DE96 - 2 ; case 5
	.short _0222DEA8 - _0222DE96 - 2 ; case 6
	.short _0222DEAC - _0222DE96 - 2 ; case 7
	.short _0222DEA8 - _0222DE96 - 2 ; case 8
_0222DEA8:
	mov r0, #1
	pop {r4, pc}
_0222DEAC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0222DE68

	thumb_func_start ov65_0222DEB0
ov65_0222DEB0: ; 0x0222DEB0
	sub r0, #0xc
	cmp r0, #3
	bhi _0222DECE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DEC2: ; jump table
	.short _0222DECA - _0222DEC2 - 2 ; case 0
	.short _0222DECA - _0222DEC2 - 2 ; case 1
	.short _0222DECA - _0222DEC2 - 2 ; case 2
	.short _0222DECA - _0222DEC2 - 2 ; case 3
_0222DECA:
	mov r0, #1
	bx lr
_0222DECE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0222DEB0

	thumb_func_start ov65_0222DED4
ov65_0222DED4: ; 0x0222DED4
	mov r1, #0x1d
	cmp r0, #0x1b
	bhi _0222DF84
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DEE6: ; jump table
	.short _0222DF84 - _0222DEE6 - 2 ; case 0
	.short _0222DF82 - _0222DEE6 - 2 ; case 1
	.short _0222DF6A - _0222DEE6 - 2 ; case 2
	.short _0222DF6E - _0222DEE6 - 2 ; case 3
	.short _0222DF72 - _0222DEE6 - 2 ; case 4
	.short _0222DF76 - _0222DEE6 - 2 ; case 5
	.short _0222DF7A - _0222DEE6 - 2 ; case 6
	.short _0222DF7E - _0222DEE6 - 2 ; case 7
	.short _0222DF66 - _0222DEE6 - 2 ; case 8
	.short _0222DF36 - _0222DEE6 - 2 ; case 9
	.short _0222DF3A - _0222DEE6 - 2 ; case 10
	.short _0222DF3E - _0222DEE6 - 2 ; case 11
	.short _0222DF42 - _0222DEE6 - 2 ; case 12
	.short _0222DF46 - _0222DEE6 - 2 ; case 13
	.short _0222DF4A - _0222DEE6 - 2 ; case 14
	.short _0222DF32 - _0222DEE6 - 2 ; case 15
	.short _0222DF4E - _0222DEE6 - 2 ; case 16
	.short _0222DF84 - _0222DEE6 - 2 ; case 17
	.short _0222DF52 - _0222DEE6 - 2 ; case 18
	.short _0222DF1E - _0222DEE6 - 2 ; case 19
	.short _0222DF56 - _0222DEE6 - 2 ; case 20
	.short _0222DF22 - _0222DEE6 - 2 ; case 21
	.short _0222DF5A - _0222DEE6 - 2 ; case 22
	.short _0222DF26 - _0222DEE6 - 2 ; case 23
	.short _0222DF62 - _0222DEE6 - 2 ; case 24
	.short _0222DF2E - _0222DEE6 - 2 ; case 25
	.short _0222DF5E - _0222DEE6 - 2 ; case 26
	.short _0222DF2A - _0222DEE6 - 2 ; case 27
_0222DF1E:
	mov r1, #0x12
	b _0222DF84
_0222DF22:
	mov r1, #0x14
	b _0222DF84
_0222DF26:
	mov r1, #0x16
	b _0222DF84
_0222DF2A:
	mov r1, #0x1a
	b _0222DF84
_0222DF2E:
	mov r1, #0x18
	b _0222DF84
_0222DF32:
	mov r1, #8
	b _0222DF84
_0222DF36:
	mov r1, #2
	b _0222DF84
_0222DF3A:
	mov r1, #3
	b _0222DF84
_0222DF3E:
	mov r1, #4
	b _0222DF84
_0222DF42:
	mov r1, #5
	b _0222DF84
_0222DF46:
	mov r1, #6
	b _0222DF84
_0222DF4A:
	mov r1, #7
	b _0222DF84
_0222DF4E:
	mov r1, #1
	b _0222DF84
_0222DF52:
	mov r1, #0x13
	b _0222DF84
_0222DF56:
	mov r1, #0x15
	b _0222DF84
_0222DF5A:
	mov r1, #0x17
	b _0222DF84
_0222DF5E:
	mov r1, #0x1b
	b _0222DF84
_0222DF62:
	mov r1, #0x19
	b _0222DF84
_0222DF66:
	mov r1, #0xf
	b _0222DF84
_0222DF6A:
	mov r1, #9
	b _0222DF84
_0222DF6E:
	mov r1, #0xa
	b _0222DF84
_0222DF72:
	mov r1, #0xb
	b _0222DF84
_0222DF76:
	mov r1, #0xc
	b _0222DF84
_0222DF7A:
	mov r1, #0xd
	b _0222DF84
_0222DF7E:
	mov r1, #0xe
	b _0222DF84
_0222DF82:
	mov r1, #0x10
_0222DF84:
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_0222DED4

	thumb_func_start ov65_0222DF88
ov65_0222DF88: ; 0x0222DF88
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_0207A268
	str r0, [sp]
	bl sub_0207A0F8
	mov r5, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r7, #0
	ble _0222DFD0
_0222DFA4:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222DFCA
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0222DFCA
	add r5, r5, #1
_0222DFCA:
	add r4, r4, #1
	cmp r4, r7
	blt _0222DFA4
_0222DFD0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222DF88

	thumb_func_start ov65_0222DFD4
ov65_0222DFD4: ; 0x0222DFD4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	sub r1, #0x12
	cmp r1, #1
	bhi _0222DFE6
	bl sub_02038B00
	pop {r4, pc}
_0222DFE6:
	bl ov65_0222DD64
	cmp r0, #0
	beq _0222DFF4
	bl sub_02038B20
	pop {r4, pc}
_0222DFF4:
	cmp r4, #0x10
	bne _0222DFFE
	bl sub_02038B60
	pop {r4, pc}
_0222DFFE:
	sub r4, #0x14
	cmp r4, #1
	bhi _0222E010
	mov r0, #0
	bl sub_0203632C
	bl sub_02038EA4
	pop {r4, pc}
_0222E010:
	mov r0, #1
	bl sub_0203632C
	bl sub_02038B84
	pop {r4, pc}
	thumb_func_end ov65_0222DFD4

	thumb_func_start ov65_0222E01C
ov65_0222E01C: ; 0x0222E01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0222E1EC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0222E1F0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r0, #0x5c
	mov r1, #0x36
	bl sub_02006C24
	str r0, [sp, #0x20]
	mov r0, #0x36
	bl sub_02018340
	mov r2, #0x57
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	mov r0, #0x36
	bl sub_0200B358
	mov r2, #0x59
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r2, _0222E1F4 ; =0x000002A2
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x36
	bl sub_0200B144
	mov r2, #0x5a
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r2, _0222E1F8 ; =0x000002B7
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x36
	bl sub_0200B144
	mov r2, #0x5b
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	bl ov65_0222E618
	mov r1, #0x57
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov65_0222E638
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl ov65_0222ECA8
	mov r2, #0xcb
	ldr r1, _0222E1FC ; =0x00000D64
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x20]
	mov r1, #4
	add r2, sp, #0x2c
	mov r3, #0x36
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r2, _0222E200 ; =0x00000D6C
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	ldr r0, [sp, #0x2c]
	ldr r2, _0222E204 ; =0x00000DEC
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r1, _0222E204 ; =0x00000DEC
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	sub r1, #0x80
	add r0, r0, r1
	str r0, [sp, #8]
_0222E112:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0x24]
_0222E124:
	ldr r0, [sp, #0x18]
	cmp r0, #0x15
	blt _0222E12E
	bl GF_AssertFail
_0222E12E:
	ldr r0, [sp, #0x24]
	mov r7, #1
	add r4, r0, #2
	ldr r0, [sp, #0xc]
	add r6, r0, #2
	ldr r0, [sp, #8]
	add r5, r0, #2
	ldr r0, [sp, #0x14]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
_0222E146:
	ldr r0, _0222E200 ; =0x00000D6C
	ldr r3, [sp, #0x28]
	ldrh r0, [r4, r0]
	add r1, r6, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	bl sub_0200393C
	add r7, r7, #1
	add r4, r4, #2
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0222E146
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0222E190
	mov r0, #3
	ldr r1, [sp, #0x14]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _0222E124
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0222E124
_0222E190:
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #3
	blt _0222E112
	ldr r1, _0222E204 ; =0x00000DEC
	ldr r0, [sp, #4]
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r1, _0222E208 ; =0x00000D68
	ldr r0, [sp, #4]
	mov r2, #1
	str r2, [r0, r1]
	sub r2, r1, #4
	ldr r1, [sp, #4]
	ldr r0, _0222E20C ; =ov65_0222E214
	add r1, r1, r2
	mov r2, #0x14
	bl sub_0200DA04
	ldr r2, _0222E1FC ; =0x00000D64
	ldr r1, [sp, #4]
	str r0, [r1, r2]
	ldr r0, _0222E210 ; =ov65_0222E5E0
	bl sub_02017798
	bl ov65_0222EDD0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl ov65_0222EE18
	ldr r0, [sp, #4]
	bl ov65_0222EE8C
	ldr r0, [sp, #0x20]
	bl sub_02006CA8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E1EC: .word 0xFFFFE0FF
_0222E1F0: .word 0x04001000
_0222E1F4: .word 0x000002A2
_0222E1F8: .word 0x000002B7
_0222E1FC: .word 0x00000D64
_0222E200: .word 0x00000D6C
_0222E204: .word 0x00000DEC
_0222E208: .word 0x00000D68
_0222E20C: .word ov65_0222E214
_0222E210: .word ov65_0222E5E0
	thumb_func_end ov65_0222E01C

	thumb_func_start ov65_0222E214
ov65_0222E214: ; 0x0222E214
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222E29C
	ldr r0, _0222E2A0 ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0222E29C
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	ldr r0, _0222E2A4 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0222E280
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0222E29C
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0222E280:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0222E29C
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_0222E29C:
	pop {r4, pc}
	nop
_0222E2A0: .word 0x0000032B
_0222E2A4: .word 0x0000032A
	thumb_func_end ov65_0222E214

	thumb_func_start ov65_0222E2A8
ov65_0222E2A8: ; 0x0222E2A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r1, [r6, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _0222E2BE
	cmp r1, #1
	bne _0222E2BC
	b _0222E3E0
_0222E2BC:
	b _0222E3EE
_0222E2BE:
	bl sub_02006840
	add r4, r0, #0
	bl sub_020389B8
	cmp r0, #0
	beq _0222E306
	ldr r0, [r4, #4]
	cmp r0, #0xc
	bhi _0222E312
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E2DE: ; jump table
	.short _0222E312 - _0222E2DE - 2 ; case 0
	.short _0222E2F8 - _0222E2DE - 2 ; case 1
	.short _0222E2F8 - _0222E2DE - 2 ; case 2
	.short _0222E2F8 - _0222E2DE - 2 ; case 3
	.short _0222E2F8 - _0222E2DE - 2 ; case 4
	.short _0222E2F8 - _0222E2DE - 2 ; case 5
	.short _0222E2F8 - _0222E2DE - 2 ; case 6
	.short _0222E2F8 - _0222E2DE - 2 ; case 7
	.short _0222E2F8 - _0222E2DE - 2 ; case 8
	.short _0222E2F8 - _0222E2DE - 2 ; case 9
	.short _0222E2F8 - _0222E2DE - 2 ; case 10
	.short _0222E312 - _0222E2DE - 2 ; case 11
	.short _0222E2F8 - _0222E2DE - 2 ; case 12
_0222E2F8:
	mov r2, #1
	mov r0, #3
	mov r1, #0x79
	lsl r2, r2, #0x10
	bl sub_02017FC8
	b _0222E312
_0222E306:
	mov r2, #1
	mov r0, #3
	mov r1, #0x79
	lsl r2, r2, #0x10
	bl sub_02017FC8
_0222E312:
	ldr r0, _0222E3F4 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0222E32E
	mov r2, #7
	mov r0, #3
	mov r1, #0x36
	lsl r2, r2, #0x10
	bl sub_02017FC8
	b _0222E33A
_0222E32E:
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x36
	lsl r2, r2, #0x10
	bl sub_02017FC8
_0222E33A:
	ldr r1, _0222E3F8 ; =0x00001094
	add r0, r5, #0
	mov r2, #0x36
	bl sub_0200681C
	ldr r2, _0222E3F8 ; =0x00001094
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x20
	mov r1, #0x36
	bl sub_0201DBEC
	mov r1, #6
	mov r0, #8
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r2, [r4, #0]
	sub r0, #0x20
	sub r1, #0x20
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_0202B370
	str r0, [r5, #0]
	mov r1, #0x35
	ldr r0, [r4, #4]
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	mov r2, #8
	sub r0, #8
	str r2, [r5, r0]
	sub r2, #9
	add r1, #0x1c
	str r2, [r5, r1]
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF74
	add r0, r5, #0
	bl ov65_0222EBE0
	add r0, r5, #0
	bl ov65_0222E01C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	bl sub_020389B8
	cmp r0, #0
	beq _0222E3C6
	bl sub_02039734
	b _0222E3CA
_0222E3C6:
	bl sub_02099550
_0222E3CA:
	mov r0, #4
	bl sub_0201E450
	cmp r0, #1
	beq _0222E3D8
	bl GF_AssertFail
_0222E3D8:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0222E3EE
_0222E3E0:
	bl sub_0200682C
	mov r0, #0
	str r0, [r6, #0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222E3EE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222E3F4: .word 0x0000003F
_0222E3F8: .word 0x00001094
	thumb_func_end ov65_0222E2A8

	thumb_func_start ov65_0222E3FC
ov65_0222E3FC: ; 0x0222E3FC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0222E416
	cmp r1, #1
	beq _0222E424
	cmp r1, #2
	beq _0222E43E
	b _0222E44A
_0222E416:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0222E44A
	mov r0, #1
	str r0, [r5, #0]
	b _0222E44A
_0222E424:
	mov r2, #0xd1
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	ldr r3, _0222E474 ; =0x02239D2C
	lsl r6, r2, #2
	ldr r6, [r3, r6]
	cmp r6, #0
	beq _0222E44A
	ldr r3, _0222E478 ; =0x02239E60
	str r2, [r3, #0]
	blx r6
	str r0, [r5, #0]
	b _0222E44A
_0222E43E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0222E44A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222E44A:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222E458
	bl sub_020219F8
_0222E458:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222E470
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_02235244
_0222E470:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222E474: .word 0x02239D2C
_0222E478: .word 0x02239E60
	thumb_func_end ov65_0222E3FC

	thumb_func_start ov65_0222E47C
ov65_0222E47C: ; 0x0222E47C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, _0222E53C ; =0x00000D64
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222E49E
	bl sub_0200DA58
	ldr r0, _0222E53C ; =0x00000D64
	mov r1, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_0222E49E:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222E4B6
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235130
_0222E4B6:
	add r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _0222E4C6
	add r0, r5, #0
	bl ov65_02233068
_0222E4C6:
	ldr r0, _0222E540 ; =0x00000B08
	add r0, r5, r0
	bl ov65_0222E99C
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020127BC
	mov r7, #0xae
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0222E4E0:
	ldr r0, [r4, r7]
	bl sub_02009754
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222E4E0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	add r0, r5, #0
	bl ov65_0222EF4C
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov65_0222EC5C
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	ldr r0, _0222E544 ; =0x0000003F
	bl sub_02006514
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E53C: .word 0x00000D64
_0222E540: .word 0x00000B08
_0222E544: .word 0x0000003F
	thumb_func_end ov65_0222E47C

	thumb_func_start ov65_0222E548
ov65_0222E548: ; 0x0222E548
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov65_0222E47C
	add r0, r5, #0
	bl sub_02006840
	add r6, r0, #0
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [r6, #4]
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _0222E570
	cmp r0, #0xa
	bne _0222E576
_0222E570:
	bl sub_02099560
	b _0222E57C
_0222E576:
	bl ov4_021D2388
	str r0, [r6, #8]
_0222E57C:
	add r0, r4, #0
	bl ov65_0222EC2C
	add r0, r5, #0
	bl sub_02006830
	bl sub_0201E530
	bl sub_0201DC3C
	mov r0, #0x36
	bl sub_0201807C
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xc
	bhi _0222E5CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E5AC: ; jump table
	.short _0222E5CC - _0222E5AC - 2 ; case 0
	.short _0222E5C6 - _0222E5AC - 2 ; case 1
	.short _0222E5C6 - _0222E5AC - 2 ; case 2
	.short _0222E5C6 - _0222E5AC - 2 ; case 3
	.short _0222E5C6 - _0222E5AC - 2 ; case 4
	.short _0222E5C6 - _0222E5AC - 2 ; case 5
	.short _0222E5C6 - _0222E5AC - 2 ; case 6
	.short _0222E5C6 - _0222E5AC - 2 ; case 7
	.short _0222E5C6 - _0222E5AC - 2 ; case 8
	.short _0222E5C6 - _0222E5AC - 2 ; case 9
	.short _0222E5C6 - _0222E5AC - 2 ; case 10
	.short _0222E5CC - _0222E5AC - 2 ; case 11
	.short _0222E5C6 - _0222E5AC - 2 ; case 12
_0222E5C6:
	mov r0, #0x79
	bl sub_0201807C
_0222E5CC:
	bl ov65_02231A54
	cmp r0, #1
	bne _0222E5DC
	mov r0, #0
	mov r1, #0x78
	bl sub_02004A68
_0222E5DC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_0222E548

	thumb_func_start ov65_0222E5E0
ov65_0222E5E0: ; 0x0222E5E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, _0222E614 ; =0x00001090
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _0222E610
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r0, _0222E614 ; =0x00001090
	mov r1, #0
	strh r1, [r4, r0]
_0222E610:
	pop {r4, pc}
	nop
_0222E614: .word 0x00001090
	thumb_func_end ov65_0222E5E0

	thumb_func_start ov65_0222E618
ov65_0222E618: ; 0x0222E618
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0222E634 ; =0x02238B10
	add r3, sp, #0
	mov r2, #5
_0222E622:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222E622
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0222E634: .word 0x02238B10
	thumb_func_end ov65_0222E618

	thumb_func_start ov65_0222E638
ov65_0222E638: ; 0x0222E638
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _0222E850 ; =0x02238988
	add r3, sp, #0xe0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0222E854 ; =0x022389B0
	add r3, sp, #0xc4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x36
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0222E858 ; =0x022389CC
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0222E85C ; =0x02238A74
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0222E860 ; =0x022389E8
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _0222E864 ; =0x02238A04
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0222E868 ; =0x02238A20
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _0222E86C ; =0x02238A3C
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	ldr r5, _0222E870 ; =0x02238A58
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x36
	bl sub_02019690
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	ldr r0, _0222E874 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0222E878 ; =0x04001050
	strh r1, [r0]
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222E850: .word 0x02238988
_0222E854: .word 0x022389B0
_0222E858: .word 0x022389CC
_0222E85C: .word 0x02238A74
_0222E860: .word 0x022389E8
_0222E864: .word 0x02238A04
_0222E868: .word 0x02238A20
_0222E86C: .word 0x02238A3C
_0222E870: .word 0x02238A58
_0222E874: .word 0x04000050
_0222E878: .word 0x04001050
	thumb_func_end ov65_0222E638

	thumb_func_start ov65_0222E87C
ov65_0222E87C: ; 0x0222E87C
	push {r3, r4, r5, lr}
	ldr r2, _0222E8A4 ; =0x00000A84
	mov r4, #0
	add r5, r0, #0
_0222E884:
	ldr r3, [r5, r2]
	cmp r3, #0
	bne _0222E894
	lsl r2, r4, #2
	add r2, r0, r2
	ldr r0, _0222E8A4 ; =0x00000A84
	str r1, [r2, r0]
	pop {r3, r4, r5, pc}
_0222E894:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x21
	blt _0222E884
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_0222E8A4: .word 0x00000A84
	thumb_func_end ov65_0222E87C

	thumb_func_start ov65_0222E8A8
ov65_0222E8A8: ; 0x0222E8A8
	push {r3, r4, r5, lr}
	ldr r2, _0222E8D0 ; =0x00000A84
	mov r4, #0
	add r5, r0, #0
_0222E8B0:
	ldr r3, [r5, r2]
	cmp r3, r1
	bne _0222E8C2
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r0, _0222E8D0 ; =0x00000A84
	mov r2, #0
	str r2, [r1, r0]
	pop {r3, r4, r5, pc}
_0222E8C2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x21
	blt _0222E8B0
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222E8D0: .word 0x00000A84
	thumb_func_end ov65_0222E8A8

	thumb_func_start ov65_0222E8D4
ov65_0222E8D4: ; 0x0222E8D4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0222E908 ; =0x00000A84
	str r0, [sp]
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
_0222E8E0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0222E8FA
	bl ov65_022354D8
	cmp r6, r0
	bne _0222E8FA
	ldr r0, [sp]
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r0, _0222E908 ; =0x00000A84
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222E8FA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x21
	blt _0222E8E0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E908: .word 0x00000A84
	thumb_func_end ov65_0222E8D4

	thumb_func_start ov65_0222E90C
ov65_0222E90C: ; 0x0222E90C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	mov r0, #0x40
	str r0, [sp]
	mov r3, #0xd
	add r5, r1, #0
	add r1, r3, #0
	add r0, r6, #0
	mov r2, #0
	add r3, #0xf3
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0x40
	str r0, [sp]
	mov r1, #0xd
	add r0, r6, #0
	mov r2, #4
	lsl r3, r1, #5
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xc
	add r2, r7, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xc
	add r2, r7, #0
	mov r3, #6
	bl sub_020070E8
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0222E982
	add r3, r5, #0
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	add r3, #0xc
	str r4, [sp]
	bl sub_020071B4
	str r0, [r5, #8]
_0222E982:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0222E998
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	add r3, r5, #4
	str r4, [sp]
	bl sub_020071D0
	str r0, [r5, #0]
_0222E998:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222E90C

	thumb_func_start ov65_0222E99C
ov65_0222E99C: ; 0x0222E99C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0222E9AE
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
_0222E9AE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222E9BC
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
_0222E9BC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0222E99C

	thumb_func_start ov65_0222E9C0
ov65_0222E9C0: ; 0x0222E9C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r1, [r1, #4]
	add r4, r2, #0
	mov r2, #2
	str r2, [sp]
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xc
	str r2, [sp, #8]
	ldr r2, [sp, #0x34]
	add r6, r3, #0
	lsl r2, r2, #0x19
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	ldrh r2, [r1]
	add r3, sp, #0x20
	add r5, r0, #0
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r1, [r1, #2]
	add r2, r6, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x18]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_020198E8
	add r0, r4, #0
	bl ov65_0222EBAC
	mov r1, #2
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	add r3, sp, #0x20
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl sub_02019E2C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_0222E9C0

	thumb_func_start ov65_0222EA38
ov65_0222EA38: ; 0x0222EA38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x24]
	mov r4, #0
	cmp r5, #0x1d
	bhi _0222EABA
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0222EA50: ; jump table
	.short _0222EAB2 - _0222EA50 - 2 ; case 0
	.short _0222EA8C - _0222EA50 - 2 ; case 1
	.short _0222EA92 - _0222EA50 - 2 ; case 2
	.short _0222EA92 - _0222EA50 - 2 ; case 3
	.short _0222EA92 - _0222EA50 - 2 ; case 4
	.short _0222EA92 - _0222EA50 - 2 ; case 5
	.short _0222EA92 - _0222EA50 - 2 ; case 6
	.short _0222EA92 - _0222EA50 - 2 ; case 7
	.short _0222EA98 - _0222EA50 - 2 ; case 8
	.short _0222EA90 - _0222EA50 - 2 ; case 9
	.short _0222EA90 - _0222EA50 - 2 ; case 10
	.short _0222EA90 - _0222EA50 - 2 ; case 11
	.short _0222EA90 - _0222EA50 - 2 ; case 12
	.short _0222EA90 - _0222EA50 - 2 ; case 13
	.short _0222EA90 - _0222EA50 - 2 ; case 14
	.short _0222EA96 - _0222EA50 - 2 ; case 15
	.short _0222EAAE - _0222EA50 - 2 ; case 16
	.short _0222EABA - _0222EA50 - 2 ; case 17
	.short _0222EAA4 - _0222EA50 - 2 ; case 18
	.short _0222EAA2 - _0222EA50 - 2 ; case 19
	.short _0222EAAA - _0222EA50 - 2 ; case 20
	.short _0222EAA8 - _0222EA50 - 2 ; case 21
	.short _0222EA9E - _0222EA50 - 2 ; case 22
	.short _0222EA9C - _0222EA50 - 2 ; case 23
	.short _0222EA9E - _0222EA50 - 2 ; case 24
	.short _0222EA9C - _0222EA50 - 2 ; case 25
	.short _0222EA9E - _0222EA50 - 2 ; case 26
	.short _0222EA9C - _0222EA50 - 2 ; case 27
	.short _0222EAB6 - _0222EA50 - 2 ; case 28
	.short _0222EAB6 - _0222EA50 - 2 ; case 29
_0222EA8C:
	mov r5, #3
	b _0222EABC
_0222EA90:
	mov r4, #1
_0222EA92:
	mov r5, #6
	b _0222EABC
_0222EA96:
	mov r4, #1
_0222EA98:
	mov r5, #7
	b _0222EABC
_0222EA9C:
	mov r4, #1
_0222EA9E:
	mov r5, #0xa
	b _0222EABC
_0222EAA2:
	mov r4, #1
_0222EAA4:
	mov r5, #9
	b _0222EABC
_0222EAA8:
	mov r4, #1
_0222EAAA:
	mov r5, #0xb
	b _0222EABC
_0222EAAE:
	mov r5, #4
	b _0222EABC
_0222EAB2:
	mov r5, #8
	b _0222EABC
_0222EAB6:
	mov r5, #5
	b _0222EABC
_0222EABA:
	mov r5, #5
_0222EABC:
	add r6, sp, #0x10
	ldrb r6, [r6, #0x10]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	bl ov65_0222E9C0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EA38

	thumb_func_start ov65_0222EAD0
ov65_0222EAD0: ; 0x0222EAD0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, [r1, #0xc]
	add r4, r0, #0
	ldrh r5, [r1, #2]
	lsl r5, r5, #0x13
	lsr r5, r5, #0x10
	str r5, [sp]
	ldrh r5, [r1]
	lsl r5, r5, #0x13
	lsr r5, r5, #0x10
	str r5, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r1, [r1, #0x14]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0201ADDC
	ldrb r0, [r4, #4]
	bl ov65_0222EBAC
	add r2, r0, #0
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	add r1, r2, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C2B4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EAD0

	thumb_func_start ov65_0222EB1C
ov65_0222EB1C: ; 0x0222EB1C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	mov r4, #0
	cmp r5, #0x1d
	bhi _0222EB9E
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0222EB34: ; jump table
	.short _0222EB96 - _0222EB34 - 2 ; case 0
	.short _0222EB70 - _0222EB34 - 2 ; case 1
	.short _0222EB76 - _0222EB34 - 2 ; case 2
	.short _0222EB76 - _0222EB34 - 2 ; case 3
	.short _0222EB76 - _0222EB34 - 2 ; case 4
	.short _0222EB76 - _0222EB34 - 2 ; case 5
	.short _0222EB76 - _0222EB34 - 2 ; case 6
	.short _0222EB76 - _0222EB34 - 2 ; case 7
	.short _0222EB7C - _0222EB34 - 2 ; case 8
	.short _0222EB74 - _0222EB34 - 2 ; case 9
	.short _0222EB74 - _0222EB34 - 2 ; case 10
	.short _0222EB74 - _0222EB34 - 2 ; case 11
	.short _0222EB74 - _0222EB34 - 2 ; case 12
	.short _0222EB74 - _0222EB34 - 2 ; case 13
	.short _0222EB74 - _0222EB34 - 2 ; case 14
	.short _0222EB7A - _0222EB34 - 2 ; case 15
	.short _0222EB92 - _0222EB34 - 2 ; case 16
	.short _0222EB9E - _0222EB34 - 2 ; case 17
	.short _0222EB88 - _0222EB34 - 2 ; case 18
	.short _0222EB86 - _0222EB34 - 2 ; case 19
	.short _0222EB8E - _0222EB34 - 2 ; case 20
	.short _0222EB8C - _0222EB34 - 2 ; case 21
	.short _0222EB82 - _0222EB34 - 2 ; case 22
	.short _0222EB80 - _0222EB34 - 2 ; case 23
	.short _0222EB82 - _0222EB34 - 2 ; case 24
	.short _0222EB80 - _0222EB34 - 2 ; case 25
	.short _0222EB82 - _0222EB34 - 2 ; case 26
	.short _0222EB80 - _0222EB34 - 2 ; case 27
	.short _0222EB9A - _0222EB34 - 2 ; case 28
	.short _0222EB9A - _0222EB34 - 2 ; case 29
_0222EB70:
	mov r5, #3
	b _0222EBA0
_0222EB74:
	mov r4, #1
_0222EB76:
	mov r5, #6
	b _0222EBA0
_0222EB7A:
	mov r4, #1
_0222EB7C:
	mov r5, #7
	b _0222EBA0
_0222EB80:
	mov r4, #1
_0222EB82:
	mov r5, #0xa
	b _0222EBA0
_0222EB86:
	mov r4, #1
_0222EB88:
	mov r5, #9
	b _0222EBA0
_0222EB8C:
	mov r4, #1
_0222EB8E:
	mov r5, #0xb
	b _0222EBA0
_0222EB92:
	mov r5, #4
	b _0222EBA0
_0222EB96:
	mov r5, #8
	b _0222EBA0
_0222EB9A:
	mov r5, #5
	b _0222EBA0
_0222EB9E:
	mov r5, #5
_0222EBA0:
	str r5, [sp]
	str r4, [sp, #4]
	bl ov65_0222EAD0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222EB1C

	thumb_func_start ov65_0222EBAC
ov65_0222EBAC: ; 0x0222EBAC
	cmp r0, #4
	bhs _0222EBB4
	mov r0, #8
	bx lr
_0222EBB4:
	mov r0, #0xd
	bx lr
	thumb_func_end ov65_0222EBAC

	thumb_func_start ov65_0222EBB8
ov65_0222EBB8: ; 0x0222EBB8
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	bl ov65_02231A0C
	mov r0, #0x12
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov65_0222EBB8

	thumb_func_start ov65_0222EBE0
ov65_0222EBE0: ; 0x0222EBE0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r1, #0x36
	bl sub_02023790
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #8
	add r0, r1, #0
	mov r1, #0x36
	bl sub_02023790
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0x36
	bl sub_02023790
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x36
	bl sub_02023790
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xd1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EBE0

	thumb_func_start ov65_0222EC2C
ov65_0222EC2C: ; 0x0222EC2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EC2C

	thumb_func_start ov65_0222EC5C
ov65_0222EC5C: ; 0x0222EC5C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EC5C

	thumb_func_start ov65_0222ECA8
ov65_0222ECA8: ; 0x0222ECA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	mov r0, #1
	add r5, r1, #0
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r2, #0
	str r2, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x36
	bl sub_02002E98
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x36
	bl sub_02002E98
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	add r2, r4, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDC8 ; =0x000001E2
	add r0, r4, #0
	mov r1, #2
	mov r3, #0xa
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDCC ; =0x000001D9
	add r0, r4, #0
	mov r1, #2
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDCC ; =0x000001D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0222EDC8: .word 0x000001E2
_0222EDCC: .word 0x000001D9
	thumb_func_end ov65_0222ECA8

	thumb_func_start ov65_0222EDD0
ov65_0222EDD0: ; 0x0222EDD0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0222EE10 ; =0x02238978
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r1, _0222EE14 ; =0x00200010
	mov r2, #0x10
	bl sub_0201E88C
	mov r0, #0x14
	mov r1, #0x36
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	ldr r1, _0222EE14 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add sp, #0x10
	pop {r4, pc}
	nop
_0222EE10: .word 0x02238978
_0222EE14: .word 0x00200010
	thumb_func_end ov65_0222EDD0

	thumb_func_start ov65_0222EE18
ov65_0222EE18: ; 0x0222EE18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x36
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r1, #0x19
	lsl r1, r1, #4
	mov r0, #8
	add r1, r6, r1
	mov r2, #0x36
	bl sub_020095C4
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #4
	mov r2, #1
	add r0, r6, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0xae
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0222EE64:
	mov r0, #1
	add r1, r4, #0
	mov r2, #0x36
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0222EE64
	mov r0, #1
	mov r1, #0x36
	bl sub_02012744
	mov r1, #0xb2
	lsl r1, r1, #2
	str r0, [r6, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EE18

	thumb_func_start ov65_0222EE8C
ov65_0222EE8C: ; 0x0222EE8C
	ldr r3, _0222EE94 ; =sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bx r3
	; .align 2, 0
_0222EE94: .word sub_0201FF0C
	thumb_func_end ov65_0222EE8C

	thumb_func_start ov65_0222EE98
ov65_0222EE98: ; 0x0222EE98
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EEC2
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EEC2:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222EF44 ; =0x000001CA
	mov r1, #0xbb
	str r0, [sp, #0x10]
	sub r0, #0x6e
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #3
	mov r3, #5
	bl sub_0201A7E8
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0x15
	bl sub_0200B1B8
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	mov r3, #0xb0
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _0222EF48 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	add r0, r4, r0
	mov r1, #1
	bl sub_0201D78C
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0222EF44: .word 0x000001CA
_0222EF48: .word 0x000F0E00
	thumb_func_end ov65_0222EE98

	thumb_func_start ov65_0222EF4C
ov65_0222EF4C: ; 0x0222EF4C
	push {r4, lr}
	add r4, r0, #0
	bl ov65_02232DFC
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EF6C
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EF6C:
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EF84
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EF84:
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EF9C
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EF9C:
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EFB4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EFB4:
	mov r0, #0xc3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222EFCC
	mov r0, #0xc3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222EFCC:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222EFDE
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_0222EFDE:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222EFF4
	bl sub_02013A3C
	mov r0, #0x53
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222EFF4:
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222F00C
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222F00C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0222EF4C

	thumb_func_start ov65_0222F010
ov65_0222F010: ; 0x0222F010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020389B8
	cmp r0, #0
	beq _0222F0BC
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	bl sub_020388E8
	add r1, r0, #0
	str r0, [r5, #4]
	add r1, #0x22
	ldrb r1, [r1]
	add r0, #0x21
	strb r1, [r0]
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #8
	beq _0222F06A
	cmp r0, #0x12
	beq _0222F06A
	cmp r0, #0x14
	beq _0222F06A
	cmp r0, #0x16
	beq _0222F06A
	cmp r0, #0x17
	beq _0222F06A
	cmp r0, #0x18
	beq _0222F06A
	cmp r0, #0x19
	beq _0222F06A
	cmp r0, #0x1a
	beq _0222F06A
	cmp r0, #0x1b
	beq _0222F06A
	cmp r0, #0x13
	bne _0222F09A
_0222F06A:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02032A70
	bl sub_02038398
	bl sub_020388E8
	add r1, r0, #0
	str r0, [r5, #4]
	add r1, #0x22
	ldrb r1, [r1]
	add r0, #0x21
	strb r1, [r0]
	mov r0, #0xd6
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x41
	sub r0, #0x14
	str r1, [r5, r0]
	b _0222F158
_0222F09A:
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl ov65_02232B58
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0x10
	bl sub_020364F0
	mov r0, #0xd1
	mov r1, #0x3d
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F0BC:
	ldr r1, _0222F15C ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	add r0, r5, #0
	bl ov65_0222EE98
	ldr r0, [r5, #0]
	bl sub_0202AD28
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _0222F126
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	add r0, r5, #0
	mov r1, #0x12
	bl ov65_02232CA8
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F160 ; =0x02238954
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F126:
	ldr r0, [r5, #0]
	bl sub_0202AD28
	bl DWC_CheckValidConsole
	cmp r0, #0
	bne _0222F146
	add r0, r5, #0
	mov r1, #0x14
	bl ov65_02232CA8
	mov r0, #0xd1
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F146:
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F158:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222F15C: .word 0x00000497
_0222F160: .word 0x02238954
	thumb_func_end ov65_0222F010

	thumb_func_start ov65_0222F164
ov65_0222F164: ; 0x0222F164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222F19E
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F1A4 ; =0x02238944
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F19E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F1A4: .word 0x02238944
	thumb_func_end ov65_0222F164

	thumb_func_start ov65_0222F1A8
ov65_0222F1A8: ; 0x0222F1A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222F1C6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F1C6:
	cmp r0, #0
	bne _0222F20C
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F218 ; =0x000004A4
	bl sub_0203871C
	str r0, [r5, #4]
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F1F0
	bl GF_AssertFail
_0222F1F0:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F214
_0222F20C:
	mov r0, #0xd1
	mov r1, #0x22
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F214:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222F218: .word 0x000004A4
	thumb_func_end ov65_0222F1A8

	thumb_func_start ov65_0222F21C
ov65_0222F21C: ; 0x0222F21C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0222F280 ; =0x021BF67C
	add r5, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0222F27A
	mov r1, #0x15
	bl ov65_02232CA8
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	mov r2, #0x57
	str r0, [sp]
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	ldr r1, _0222F284 ; =0x02238954
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002054
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F27A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222F280: .word 0x021BF67C
_0222F284: .word 0x02238954
	thumb_func_end ov65_0222F21C

	thumb_func_start ov65_0222F288
ov65_0222F288: ; 0x0222F288
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222F2AC
	add sp, #8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F2AC:
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	cmp r6, #0
	bne _0222F2F0
	add r0, r5, #0
	mov r1, #0x16
	bl ov65_02232CA8
	mov r0, #1
	mov r2, #0x57
	str r0, [sp]
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	ldr r1, _0222F300 ; =0x02238954
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002054
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #5
	b _0222F2F2
_0222F2F0:
	mov r1, #0x22
_0222F2F2:
	mov r0, #0xd1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222F300: .word 0x02238954
	thumb_func_end ov65_0222F288

	thumb_func_start ov65_0222F304
ov65_0222F304: ; 0x0222F304
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222F324
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F324:
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	cmp r6, #0
	bne _0222F3CC
	ldr r0, [r5, #0]
	bl sub_0202ACE8
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x23
	bl sub_020245BC
	bl sub_02030CEC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0203068C
	bl sub_02030764
	mov r0, #0xd1
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F3D8 ; =0x000004A4
	bl sub_0203871C
	str r0, [r5, #4]
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F3B0
	bl GF_AssertFail
_0222F3B0:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd9
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F3D4
_0222F3CC:
	mov r0, #0xd1
	mov r1, #0x22
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F3D4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F3D8: .word 0x000004A4
	thumb_func_end ov65_0222F304

	thumb_func_start ov65_0222F3DC
ov65_0222F3DC: ; 0x0222F3DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222F3FC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F3FC:
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	cmp r6, #0
	bne _0222F480
	mov r0, #0xd1
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F48C ; =0x000004A4
	bl sub_0203871C
	str r0, [r5, #4]
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F464
	bl GF_AssertFail
_0222F464:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd9
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0222F488
_0222F480:
	mov r0, #0xd1
	mov r1, #0x22
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F488:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F48C: .word 0x000004A4
	thumb_func_end ov65_0222F3DC

	thumb_func_start ov65_0222F490
ov65_0222F490: ; 0x0222F490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #0xd1
	mov r1, #0xf
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0222F490

	thumb_func_start ov65_0222F4C4
ov65_0222F4C4: ; 0x0222F4C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [sp]
	bl sub_02025E38
	str r0, [sp, #0x14]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027560
	str r0, [sp, #0x10]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0207A268
	str r0, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202C878
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0222F53C
	add r4, r6, #0
_0222F50C:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	ldr r1, [r5, #4]
	mov r2, #0
	strh r0, [r1, r4]
	add r0, r7, #0
	mov r1, #6
	bl sub_02074470
	ldr r1, [r5, #4]
	add r6, r6, #1
	add r1, r1, r4
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	add r4, r4, #2
	cmp r6, r0
	blt _0222F50C
_0222F53C:
	ldr r0, [sp, #0x14]
	bl sub_02025FCC
	ldr r1, [r5, #4]
	strb r0, [r1, #0x18]
	ldr r0, [sp, #0x14]
	bl sub_02025FD8
	ldr r1, [r5, #4]
	strb r0, [r1, #0x19]
	ldr r0, [sp, #0x10]
	bl sub_02027474
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1a]
	ldr r0, [r5, #4]
	mov r1, #0x1d
	strb r1, [r0, #0x1b]
	ldr r1, [sp]
	add r0, r5, #0
	bl ov65_02232E70
	ldr r0, [r5, #4]
	mov r1, #0
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x14]
	bl sub_02025F8C
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x14]
	bl sub_02025F30
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1e]
	ldr r0, [sp, #8]
	bl sub_0202C8C0
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1f]
	ldr r0, [sp, #8]
	bl sub_0202C8C4
	ldr r1, [r5, #4]
	add r1, #0x20
	strb r0, [r1]
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r5, #4]
	add r0, #0x22
	strb r1, [r0]
	ldr r0, [r5, #4]
	mov r1, #0x24
	bl ov4_021D222C
	ldr r0, [r5, #4]
	mov r1, #0x24
	add r0, #0x24
	bl ov4_021D2198
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F4C4

	thumb_func_start ov65_0222F5BC
ov65_0222F5BC: ; 0x0222F5BC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0222F5C4:
	add r1, r5, r4
	mov r0, #0
	strb r0, [r1, #0xc]
	ldr r0, _0222F628 ; =0x00001092
	ldrh r0, [r5, r0]
	cmp r0, r4
	ble _0222F61E
	add r0, r4, #0
	bl ov65_02234FC4
	cmp r0, #0
	beq _0222F61E
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02234FA8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0222DD20
	cmp r0, #0
	beq _0222F606
	cmp r0, #0x1c
	beq _0222F606
	ldrb r1, [r7, #0x1d]
	cmp r1, #0
	beq _0222F606
	add r0, r5, r6
	add r1, r4, #1
	strb r1, [r0, #0xc]
	add r6, r6, #1
	b _0222F61E
_0222F606:
	cmp r0, #0x1c
	bne _0222F61E
	add r0, r5, #0
	add r1, r4, #1
	bl ov65_0223368C
	cmp r0, #0
	beq _0222F61E
	add r0, r5, #0
	add r1, r4, #1
	bl ov65_0223366C
_0222F61E:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0222F5C4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F628: .word 0x00001092
	thumb_func_end ov65_0222F5BC

	thumb_func_start ov65_0222F62C
ov65_0222F62C: ; 0x0222F62C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	str r4, [sp, #0xc]
	add r6, r5, #0
_0222F638:
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02234FA8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0222DD20
	ldr r1, [r6, #0x4c]
	str r0, [sp]
	cmp r0, r1
	bne _0222F662
	add r0, r7, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _0222F6DE
_0222F662:
	add r0, r5, #0
	add r1, r4, #1
	bl ov65_0222E8D4
	str r0, [sp, #4]
	cmp r0, #0
	beq _0222F6DE
	ldr r0, [r6, #0x4c]
	bl ov65_0222DDFC
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov65_0222DDFC
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0222F698
	cmp r0, #0
	bne _0222F698
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r1, [sp, #4]
	add r0, r5, r0
	mov r2, #0
	bl ov65_0223558C
	b _0222F6B0
_0222F698:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0222F6B0
	cmp r0, #1
	bne _0222F6B0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r1, [sp, #4]
	add r0, r5, r0
	mov r2, #1
	bl ov65_0223558C
_0222F6B0:
	ldr r0, [sp]
	mov r2, #7
	str r0, [r6, #0x4c]
	add r0, r7, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xcc
	str r1, [r0, #0]
	ldrb r3, [r7, #0x1d]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0202AE2C
	ldrb r3, [r7, #0x1e]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #8
	bl sub_0202AE2C
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0222F6DE:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0x20
	blt _0222F638
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F62C

	thumb_func_start ov65_0222F6EC
ov65_0222F6EC: ; 0x0222F6EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_020382F8
	add r1, r0, #0
	ldr r6, [r1, #0]
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl ov4_021D1F3C
	add r5, r0, #0
	cmp r5, #0xb
	beq _0222F70C
	cmp r6, #0x19
	bne _0222F712
_0222F70C:
	mov r7, #0xe
	mov r5, #0xb
	b _0222F726
_0222F712:
	cmp r6, #0x1a
	bne _0222F71C
	mov r7, #0xd
	mov r5, #0xc
	b _0222F726
_0222F71C:
	cmp r5, #0
	blt _0222F724
	add r7, r5, #0
	b _0222F726
_0222F724:
	mov r7, #0xb
_0222F726:
	add r0, r4, #0
	bl ov65_02232DFC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #5
	bl sub_0200B60C
	mov r0, #0xd6
	mov r1, #0x1e
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r7, #0
	bl ov65_02232CA8
	cmp r5, #0xb
	bhi _0222F7A0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F764: ; jump table
	.short _0222F7A0 - _0222F764 - 2 ; case 0
	.short _0222F77C - _0222F764 - 2 ; case 1
	.short _0222F7A0 - _0222F764 - 2 ; case 2
	.short _0222F7A0 - _0222F764 - 2 ; case 3
	.short _0222F77C - _0222F764 - 2 ; case 4
	.short _0222F77C - _0222F764 - 2 ; case 5
	.short _0222F788 - _0222F764 - 2 ; case 6
	.short _0222F788 - _0222F764 - 2 ; case 7
	.short _0222F788 - _0222F764 - 2 ; case 8
	.short _0222F788 - _0222F764 - 2 ; case 9
	.short _0222F794 - _0222F764 - 2 ; case 10
	.short _0222F77C - _0222F764 - 2 ; case 11
_0222F77C:
	mov r0, #0xd1
	mov r1, #0xa
	lsl r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F788:
	mov r0, #0xd1
	mov r1, #0xa
	lsl r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F794:
	mov r0, #0xd1
	mov r1, #0xa
	lsl r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F7A0:
	mov r0, #0xd1
	mov r1, #0x23
	lsl r0, r0, #2
	str r1, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F6EC

	thumb_func_start ov65_0222F7AC
ov65_0222F7AC: ; 0x0222F7AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222F7EC ; =0x021BF67C
	add r4, r1, #0
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222F7E8
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222F7E0
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222F7E0:
	mov r0, #0xd1
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F7E8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222F7EC: .word 0x021BF67C
	thumb_func_end ov65_0222F7AC

	thumb_func_start ov65_0222F7F0
ov65_0222F7F0: ; 0x0222F7F0
	mov r2, #0xd1
	mov r3, #9
	lsl r2, r2, #2
	str r3, [r0, r2]
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_0222F7F0

	thumb_func_start ov65_0222F7FC
ov65_0222F7FC: ; 0x0222F7FC
	mov r2, #0xd1
	mov r3, #0xb
	lsl r2, r2, #2
	str r3, [r0, r2]
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_0222F7FC

	thumb_func_start ov65_0222F808
ov65_0222F808: ; 0x0222F808
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xd6
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	ble _0222F820
	sub r0, r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F820:
	ldr r0, _0222F864 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _0222F85E
	sub r1, #0x5c
	add r0, r5, r1
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222F84C
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222F84C:
	add r0, r5, #0
	mov r1, #0x58
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F85E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F864: .word 0x021BF67C
	thumb_func_end ov65_0222F808

	thumb_func_start ov65_0222F868
ov65_0222F868: ; 0x0222F868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222F8A2
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F8A8 ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222F8A2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F8A8: .word 0x0223894C
	thumb_func_end ov65_0222F868

	thumb_func_start ov65_0222F8AC
ov65_0222F8AC: ; 0x0222F8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222F8CA
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F8CA:
	cmp r0, #0
	bne _0222F8E2
	bl sub_02038350
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	mov r0, #0xd1
	mov r1, #0xd
	lsl r0, r0, #2
	b _0222F8FE
_0222F8E2:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038350
	bl sub_02032A70
	mov r0, #0xd2
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x22
	sub r0, r0, #4
_0222F8FE:
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0222F8AC

	thumb_func_start ov65_0222F90C
ov65_0222F90C: ; 0x0222F90C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020334A4
	cmp r0, #0
	beq _0222F91C
	b _0222FA8C
_0222F91C:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222F962
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235130
	mov r2, #0
	ldr r0, _0222FA90 ; =0x00000A84
	add r3, r5, #0
	add r1, r2, #0
_0222F94C:
	add r2, r2, #1
	str r1, [r3, r0]
	add r3, r3, #4
	cmp r2, #0x21
	blt _0222F94C
	mov r0, #0x36
	bl sub_0200A93C
	mov r0, #0x36
	bl sub_0200A944
_0222F962:
	add r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _0222F972
	add r0, r5, #0
	bl ov65_02233068
_0222F972:
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222F996
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222F996:
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222F9AE
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222F9AE:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0x5c
	mov r1, #0x36
	bl sub_02006C24
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0222ECA8
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, _0222FA94 ; =0x00000D68
	mov r1, #1
	str r1, [r5, r0]
	ldr r0, _0222FA98 ; =0x00001090
	strh r1, [r5, r0]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FA16
	mov r0, #0xc3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x15
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x53
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222FA16:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x2c
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x4c
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0xcc
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0
	bl ov65_0222EE98
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222FA9C ; =0x000004A4
	bl sub_0203871C
	str r0, [r5, #4]
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FA72
	bl GF_AssertFail
_0222FA72:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r5, r0]
_0222FA8C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222FA90: .word 0x00000A84
_0222FA94: .word 0x00000D68
_0222FA98: .word 0x00001090
_0222FA9C: .word 0x000004A4
	thumb_func_end ov65_0222F90C

	thumb_func_start ov65_0222FAA0
ov65_0222FAA0: ; 0x0222FAA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0222FABC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FABC:
	bl ov4_021D27E0
	cmp r0, #0
	beq _0222FAF6
	mov r0, #0xd1
	mov r1, #0x45
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FAE4
	bl GF_AssertFail
_0222FAE4:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
_0222FAF6:
	bl sub_02038294
	cmp r0, #0
	beq _0222FB2A
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FB10
	mov r1, #0x10
	sub r0, #0x20
	str r1, [r5, r0]
	b _0222FB40
_0222FB10:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_0222F4C4
	add r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _0222FB40
_0222FB2A:
	bl sub_020383E8
	cmp r0, #0
	bne _0222FB3A
	bl sub_020380E4
	cmp r0, #3
	bne _0222FB40
_0222FB3A:
	add r0, r5, #0
	bl ov65_0222F6EC
_0222FB40:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FAA0

	thumb_func_start ov65_0222FB44
ov65_0222FB44: ; 0x0222FB44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0222FB60
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FB60:
	bl ov4_021D27E0
	cmp r0, #0
	beq _0222FB80
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02024814
	mov r0, #0xd1
	mov r1, #0x47
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FB80:
	bl sub_02038294
	cmp r0, #0
	beq _0222FBB4
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FB9A
	mov r1, #0x10
	sub r0, #0x20
	str r1, [r5, r0]
	b _0222FBCA
_0222FB9A:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_0222F4C4
	add r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _0222FBCA
_0222FBB4:
	bl sub_020383E8
	cmp r0, #0
	bne _0222FBC4
	bl sub_020380E4
	cmp r0, #3
	bne _0222FBCA
_0222FBC4:
	add r0, r5, #0
	bl ov65_0222F6EC
_0222FBCA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0222FB44

	thumb_func_start ov65_0222FBD0
ov65_0222FBD0: ; 0x0222FBD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov4_021D27E0
	cmp r0, #0
	beq _0222FBFA
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024828
	cmp r0, #0
	beq _0222FBF6
	cmp r0, #1
	beq _0222FBF6
	bl ov4_021D27F4
	b _0222FBFA
_0222FBF6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FBFA:
	bl sub_02038294
	cmp r0, #0
	beq _0222FC2E
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FC14
	mov r1, #0x10
	sub r0, #0x20
	str r1, [r5, r0]
	b _0222FC44
_0222FC14:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_0222F4C4
	add r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _0222FC44
_0222FC2E:
	bl sub_020383E8
	cmp r0, #0
	bne _0222FC3E
	bl sub_020380E4
	cmp r0, #3
	bne _0222FC44
_0222FC3E:
	add r0, r5, #0
	bl ov65_0222F6EC
_0222FC44:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FBD0

	thumb_func_start ov65_0222FC48
ov65_0222FC48: ; 0x0222FC48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xd6
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0222FC60
	sub r1, r1, #1
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FC60:
	bl sub_020382C0
	cmp r0, #0
	beq _0222FC74
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _0222FCB4
_0222FC74:
	bl sub_020383E8
	cmp r0, #0
	bne _0222FC84
	bl sub_020380E4
	cmp r0, #3
	bne _0222FC8C
_0222FC84:
	add r0, r5, #0
	bl ov65_0222F6EC
	b _0222FCB4
_0222FC8C:
	bl sub_020380E4
	cmp r0, #4
	bge _0222FCA6
	bl sub_02038284
	cmp r0, #0
	bne _0222FCA6
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _0222FCB4
_0222FCA6:
	bl sub_02038378
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
_0222FCB4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FC48

	thumb_func_start ov65_0222FCB8
ov65_0222FCB8: ; 0x0222FCB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #0x13
	bl ov65_02232CA8
	mov r0, #0xd1
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0x20
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FCB8

	thumb_func_start ov65_0222FCDC
ov65_0222FCDC: ; 0x0222FCDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222FD6C ; =0x021BF67C
	add r4, r1, #0
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222FD68
	mov r1, #0x35
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _0222FD0A
	add r0, r1, #0
	mov r2, #0xa
	sub r0, #8
	str r2, [r5, r0]
	mov r0, #0x22
	sub r1, #0xc
	str r0, [r5, r1]
	bl sub_02038350
	b _0222FD68
_0222FD0A:
	ldr r0, [r5, #0]
	bl sub_0202AF94
	cmp r0, #0
	bne _0222FD2E
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x3b
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0x14
	str r1, [r5, r0]
	b _0222FD68
_0222FD2E:
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_0222F4C4
	add r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x48
	add r0, r5, r1
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222FD68
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222FD68:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222FD6C: .word 0x021BF67C
	thumb_func_end ov65_0222FCDC

	thumb_func_start ov65_0222FD70
ov65_0222FD70: ; 0x0222FD70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02025E38
	mov r1, #0x36
	add r6, r0, #0
	bl sub_02025F04
	add r4, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222FDA2
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0222FDA2:
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	bl sub_02025F30
	cmp r0, #0
	bne _0222FDBC
	ldr r0, _0222FED0 ; =0x00050600
	b _0222FDC0
_0222FDBC:
	mov r0, #0xc1
	lsl r0, r0, #0xa
_0222FDC0:
	str r0, [sp, #0x10]
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r3, #0x20
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0x10
	add r4, r0, #0
	bl ov65_0223484C
	add r6, r0, #0
	cmp r4, #1
	bne _0222FE54
	bl ov4_021D2388
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222FE18
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl sub_0200B1B8
	b _0222FE64
_0222FE18:
	bl ov4_021D2388
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #8
	bl sub_0202AD2C
	cmp r0, #0
	bne _0222FE30
	ldr r0, _0222FED0 ; =0x00050600
	str r0, [sp, #0x10]
	b _0222FE3A
_0222FE30:
	cmp r0, #1
	bne _0222FE3A
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #0x10]
_0222FE3A:
	bl ov4_021D2388
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0202AEF0
	add r1, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02023D28
	b _0222FE64
_0222FE54:
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl sub_0200B1B8
_0222FE64:
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, #0x71
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #0x66
	bl sub_0201D78C
	mov r2, #1
	str r2, [sp]
	mov r0, #0x57
	ldr r1, _0222FED4 ; =0x00000B08
	str r4, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl ov65_0222EA38
	ldr r0, [r5, #4]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222FEA6
	mov r0, #8
	b _0222FEA8
_0222FEA6:
	mov r0, #1
_0222FEA8:
	mov r2, #1
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, _0222FED4 ; =0x00000B08
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0x1a
	bl ov65_0222E9C0
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222FED0: .word 0x00050600
_0222FED4: .word 0x00000B08
	thumb_func_end ov65_0222FD70

	thumb_func_start ov65_0222FED8
ov65_0222FED8: ; 0x0222FED8
	push {r3, lr}
	cmp r2, #0
	bne _0222FEE4
	ldr r0, _0222FEE8 ; =0x000005DC
	bl sub_02005748
_0222FEE4:
	pop {r3, pc}
	nop
_0222FEE8: .word 0x000005DC
	thumb_func_end ov65_0222FED8

	thumb_func_start ov65_0222FEEC
ov65_0222FEEC: ; 0x0222FEEC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222FF0A
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222FF0A:
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222FF2E
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_0222FF2E:
	mov r3, #1
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222FFA0 ; =0x00000192
	mov r1, #0xb7
	str r0, [sp, #0x10]
	sub r0, #0x36
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #3
	bl sub_0201A7E8
	mov r2, #1
	mov r1, #0xbb
	lsl r1, r1, #2
	str r2, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222FFA4 ; =0x000001A1
	add r1, r4, r1
	str r0, [sp, #0x10]
	sub r0, #0x45
	ldr r0, [r4, r0]
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xbb
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r2, _0222FFA8 ; =0x000001D9
	add r0, r4, r0
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0222FFA0: .word 0x00000192
_0222FFA4: .word 0x000001A1
_0222FFA8: .word 0x000001D9
	thumb_func_end ov65_0222FEEC

	thumb_func_start ov65_0222FFAC
ov65_0222FFAC: ; 0x0222FFAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _0222FFC2
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0222FFC2:
	bl sub_020383E8
	cmp r0, #0
	bne _0222FFD8
	bl sub_020382C0
	cmp r0, #0
	bne _0222FFD8
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0222FFD8:
	ldr r0, _0223011C ; =0x0207DFAD
	bl ov4_021D113C
	ldr r0, _02230120 ; =0x00000D68
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x5c
	mov r1, #0x36
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, _02230124 ; =0x00000B08
	ldr r0, [r5, r0]
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0x36
	bl ov65_0222E90C
	add r0, r5, #0
	bl ov65_02232F30
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230052
	mov r0, #0xc3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x15
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x53
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02230052:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _022300A6
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0223006C
	mov r4, #0
	b _0223006E
_0223006C:
	mov r4, #0x61
_0223006E:
	ldr r0, [r5, #0]
	bl sub_0202AFB4
	ldr r1, _02230128 ; =0x00001092
	mov r3, #0x57
	strh r0, [r5, r1]
	str r4, [sp]
	ldrh r0, [r5, r1]
	lsl r3, r3, #2
	mov r1, #0x36
	str r0, [sp, #4]
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r3, [r5, r3]
	add r0, r5, r0
	add r2, r6, #0
	bl ov65_02235060
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov65_02235380
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_0222E87C
_022300A6:
	add r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #0
	bne _022300BA
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x36
	bl ov65_02232FE0
_022300BA:
	add r0, r5, #0
	mov r1, #0x36
	bl ov65_022336A4
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	bl ov65_0222F5BC
	add r0, r5, #0
	bl ov65_0222FEEC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038B60
	mov r1, #0
	mov r0, #0xdb
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223011C: .word 0x0207DFAD
_02230120: .word 0x00000D68
_02230124: .word 0x00000B08
_02230128: .word 0x00001092
	thumb_func_end ov65_0222FFAC

	thumb_func_start ov65_0223012C
ov65_0223012C: ; 0x0223012C
	push {r3, lr}
	bl sub_020380E4
	cmp r0, #1
	bne _0223013A
	mov r0, #1
	pop {r3, pc}
_0223013A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_0223012C

	thumb_func_start ov65_02230140
ov65_02230140: ; 0x02230140
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D2568
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223015E
	ldr r0, [r4, #4]
	add r0, #0x21
	ldrb r0, [r0]
	bl ov4_021D2584
	mov r0, #1
	pop {r4, pc}
_0223015E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02230140

	thumb_func_start ov65_02230164
ov65_02230164: ; 0x02230164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov65_0222F5BC
	str r0, [sp, #8]
	mov r0, #0
	add r1, r5, #0
	str r0, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc
	add r1, #0x2c
	mov r2, #0x20
	bl memcmp
	cmp r0, #0
	bne _0223018A
	b _0223028C
_0223018A:
	mov r4, #0
_0223018C:
	add r7, r5, r4
	add r1, r7, #0
	add r1, #0x2c
	ldrb r1, [r1]
	mov r2, #0
	add r0, r2, #0
_02230198:
	add r3, r5, r0
	ldrb r3, [r3, #0xc]
	cmp r3, r1
	bne _022301A4
	mov r2, #1
	b _022301AA
_022301A4:
	add r0, r0, #1
	cmp r0, #0x20
	blt _02230198
_022301AA:
	cmp r2, #0
	bne _022301EE
	cmp r1, #0
	beq _022301EE
	add r0, r5, #0
	bl ov65_0222E8D4
	add r6, r0, #0
	beq _022301EE
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov65_02235478
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0222E8A8
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov65_0223366C
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #0x36
	bl ov65_02232FB0
	mov r0, #1
	str r0, [sp]
_022301EE:
	ldrb r0, [r7, #0xc]
	mov r1, #0
	add r2, r1, #0
_022301F4:
	add r3, r5, r2
	add r3, #0x2c
	ldrb r3, [r3]
	cmp r0, r3
	bne _02230202
	mov r1, #1
	b _02230208
_02230202:
	add r2, r2, #1
	cmp r2, #0x20
	blt _022301F4
_02230208:
	cmp r1, #0
	bne _02230258
	ldrb r1, [r7, #0xc]
	cmp r1, #0
	beq _02230258
	add r0, r5, #0
	sub r1, r1, #1
	bl ov65_02234FA8
	add r1, r0, #0
	add r6, r5, r4
	mov r0, #0xe2
	lsl r0, r0, #2
	ldrb r1, [r1, #0x1d]
	ldrb r2, [r6, #0xc]
	add r0, r5, r0
	bl ov65_022353EC
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0223024A
	ldrb r1, [r7, #0xc]
	add r0, r5, #0
	mov r2, #2
	bl ov65_02233638
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov65_0222E87C
	mov r0, #1
	str r0, [sp, #4]
	b _02230258
_0223024A:
	ldrb r1, [r6, #0xc]
	add r0, r5, #0
	mov r2, #1
	bl ov65_02233638
	mov r0, #0
	strb r0, [r6, #0xc]
_02230258:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0223018C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0xc
	mov r2, #0x20
	bl memcpy
	add r0, r5, #0
	bl ov65_022336C4
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02230280
	ldr r0, _02230294 ; =0x0000064F
	bl sub_02005748
	b _0223028C
_02230280:
	ldr r0, [sp]
	cmp r0, #1
	bne _0223028C
	ldr r0, _02230294 ; =0x0000064F
	bl sub_02005748
_0223028C:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230294: .word 0x0000064F
	thumb_func_end ov65_02230164

	thumb_func_start ov65_02230298
ov65_02230298: ; 0x02230298
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_0222F62C
	cmp r0, #0
	ble _022302AE
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_022336A4
_022302AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02230298

	thumb_func_start ov65_022302B0
ov65_022302B0: ; 0x022302B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02230164
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02230298
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022302B0

	thumb_func_start ov65_022302C4
ov65_022302C4: ; 0x022302C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r7, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _022302D8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022302D8:
	bl sub_020383E8
	cmp r0, #0
	beq _022302EA
	add r0, r4, #0
	bl ov65_0222F6EC
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022302EA:
	bl sub_020380E4
	cmp r0, #4
	bne _02230320
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r4, #0
	bl ov65_02232DC0
	add r0, r4, #0
	mov r1, #0x12
	add r2, r7, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038378
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230320:
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_022302B0
	add r0, r4, #0
	bl ov65_022331E0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_022355EC
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_0223537C
	cmp r0, #0
	bne _022303DA
	bl ov4_021D2568
	sub r1, r7, #1
	cmp r0, r1
	bne _0223039C
	ldr r0, _022305E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _0223039C
	add r0, r4, #0
	bl ov65_02232F00
	cmp r0, #0
	beq _02230372
	add r0, r4, #0
	mov r1, #0x5a
	add r2, r7, #0
	bl ov65_02232B58
	b _0223037C
_02230372:
	add r0, r4, #0
	mov r1, #0x5b
	add r2, r7, #0
	bl ov65_02232B58
_0223037C:
	ldr r0, _022305E4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov65_0222FD70
	mov r0, #0xd1
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_02232F90
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223039C:
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_022330C0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_0222E8D4
	add r1, r0, #0
	cmp r6, #0
	beq _022303D0
	cmp r1, #0
	beq _022303C4
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_0223532C
	b _022303DA
_022303C4:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_02235370
	b _022303DA
_022303D0:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_02235370
_022303DA:
	add r0, r4, #0
	bl ov65_0223012C
	cmp r0, #0
	beq _02230404
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02230404
	ldr r0, _022305E8 ; =0x00000624
	bl sub_02005748
	mov r0, #0xd1
	mov r1, #0x30
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230404:
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0223044E
	bl ov4_021D2568
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223044E
	bl ov4_021D2568
	mov r1, #0xdb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov65_02232DC0
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl ov65_02232B58
	ldr r0, [r4, #4]
	add r0, #0x21
	ldrb r0, [r0]
	bl ov4_021D2584
	mov r0, #0xd
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _02230494
_0223044E:
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02230494
	bl ov4_021D2568
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02230494
	mov r0, #0
	bl ov4_021D2584
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov65_02232DC0
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	bl sub_02038378
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230494:
	bl ov4_021D254C
	cmp r0, #1
	bne _022304AE
	bl ov4_021D2568
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022304AE
	mov r0, #0
	bl ov4_021D2584
_022304AE:
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov65_0222DD20
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #0
	mvn r1, r1
	add r6, r0, #0
	cmp r2, r1
	bne _02230508
	ldr r1, _022305E0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _022304F2
	bl ov65_0222DDFC
	cmp r0, #0
	beq _022304F2
	ldr r0, _022305E4 ; =0x000005DD
	bl sub_02005748
	mov r0, #0xd1
	mov r1, #0x27
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_02232F90
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022304F2:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_02235198
	add r7, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_022355FC
_02230508:
	cmp r7, #3
	bhi _022305D8
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230518: ; jump table
	.short _02230520 - _02230518 - 2 ; case 0
	.short _02230524 - _02230518 - 2 ; case 1
	.short _022305B0 - _02230518 - 2 ; case 2
	.short _02230562 - _02230518 - 2 ; case 3
_02230520:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230524:
	ldr r0, _022305E4 ; =0x000005DD
	bl sub_02005748
	add r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _0223053E
	mov r0, #0xd1
	mov r1, #0x27
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02230556
_0223053E:
	mov r0, #0xd2
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x39
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #1
	bl ov65_02232B58
_02230556:
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_02232F90
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230562:
	ldr r0, _022305E4 ; =0x000005DD
	bl sub_02005748
	add r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _02230586
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_022355B0
	mov r0, #0xd1
	mov r1, #0x27
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022305A4
_02230586:
	cmp r6, #0x10
	bne _022305A4
	bl sub_020382C0
	cmp r0, #1
	bne _022305A4
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_022355B0
	mov r0, #0xd1
	mov r1, #0x24
	lsl r0, r0, #2
	str r1, [r4, r0]
_022305A4:
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_02232F90
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022305B0:
	ldr r0, _022305E4 ; =0x000005DD
	bl sub_02005748
	add r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _022305C4
	mov r1, #0x27
	b _022305C6
_022305C4:
	mov r1, #0x2a
_022305C6:
	mov r0, #0xd1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x36
	bl ov65_02232F90
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022305D8:
	bl GF_AssertFail
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022305E0: .word 0x021BF67C
_022305E4: .word 0x000005DD
_022305E8: .word 0x00000624
	thumb_func_end ov65_022302C4

	thumb_func_start ov65_022305EC
ov65_022305EC: ; 0x022305EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02230140
	cmp r0, #0
	beq _0223060A
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
	b _02230630
_0223060A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02230630
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
	add r0, r5, #0
	bl ov65_02232DFC
_02230630:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022305EC

	thumb_func_start ov65_02230634
ov65_02230634: ; 0x02230634
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _02230770 ; =0x0000037E
	add r5, r0, #0
	ldrh r1, [r5, r1]
	sub r1, r1, #1
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, #0x21
	ldrb r4, [r0]
	add r0, r5, #0
	bl ov65_0222DD20
	add r6, r0, #0
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _0223066A
	mov r1, #0x46
	add r0, #8
	str r1, [r5, r0]
	b _0223076C
_0223066A:
	bl sub_020380E4
	cmp r0, #5
	bne _02230692
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_02230692:
	bl sub_020380E4
	cmp r0, #3
	bne _022306BA
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_022306BA:
	bl sub_020380E4
	cmp r0, #4
	beq _022306CA
	bl sub_02038284
	cmp r0, #0
	beq _022306EA
_022306CA:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_022306EA:
	bl sub_020383E8
	cmp r0, #0
	beq _022306FA
	add r0, r5, #0
	bl ov65_0222F6EC
	b _0223076C
_022306FA:
	cmp r4, #0
	bne _0223071E
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_0223071E:
	cmp r6, #0x10
	beq _02230742
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_02230742:
	bl sub_020380E4
	cmp r0, #1
	bne _0223076C
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #1
	bl ov65_02232E58
	mov r1, #0xd1
	mov r0, #0x18
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0x3a
	ldrh r1, [r5, r1]
	ldr r0, [r5, #0]
	sub r1, r1, #1
	bl sub_0202B13C
_0223076C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230770: .word 0x0000037E
	thumb_func_end ov65_02230634

	thumb_func_start ov65_02230774
ov65_02230774: ; 0x02230774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov65_02232B58
	add r0, r5, #0
	mov r1, #1
	bl ov65_02232E58
	mov r0, #0xd1
	mov r1, #0x17
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl ov4_021D2388
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0202B13C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02230774

	thumb_func_start ov65_022307B0
ov65_022307B0: ; 0x022307B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020383E8
	cmp r0, #0
	beq _022307C8
	add r0, r5, #0
	bl ov65_0222F6EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_022307C8:
	bl ov4_021D2388
	cmp r0, #0
	bge _022307E6
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_022307E6:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #0x10
	beq _02230824
	cmp r0, #1
	beq _02230824
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230824:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02230858
	ldr r0, _0223085C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02230850
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0xd1
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02230858
_02230850:
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02230860
_02230858:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223085C: .word 0x021BF67C
	thumb_func_end ov65_022307B0

	thumb_func_start ov65_02230860
ov65_02230860: ; 0x02230860
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	bl ov4_021D2388
	cmp r0, #0
	bge _02230888
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02230888:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_0222DD20
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x36
	bl ov65_022302B0
	add r0, r5, #0
	bl ov65_022331E0
	bl sub_020380E4
	cmp r0, #5
	bne _022308D4
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_022308D4:
	bl sub_020380E4
	cmp r0, #3
	bne _022308FC
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_022308FC:
	bl sub_020380E4
	cmp r0, #4
	beq _0223090C
	bl sub_02038284
	cmp r0, #0
	beq _0223092C
_0223090C:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_0223092C:
	bl sub_020383E8
	cmp r0, #0
	beq _0223093C
	add r0, r5, #0
	bl ov65_0222F6EC
	b _022309C0
_0223093C:
	cmp r4, #0x10
	beq _02230964
	cmp r4, #1
	beq _02230964
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_02230964:
	ldr r0, _022309C8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02230982
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x19
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_02230982:
	bl ov4_021D2544
	cmp r0, #0
	ldr r1, _022309CC ; =0x00000B08
	beq _022309A6
	mov r2, #1
	str r2, [sp]
	mov r3, #2
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov65_0222E9C0
	b _022309C0
_022309A6:
	mov r2, #1
	str r2, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl ov65_0222E9C0
_022309C0:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022309C8: .word 0x021BF67C
_022309CC: .word 0x00000B08
	thumb_func_end ov65_02230860

	thumb_func_start ov65_022309D0
ov65_022309D0: ; 0x022309D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020383E8
	cmp r0, #0
	beq _022309E8
	add r0, r5, #0
	bl ov65_0222F6EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_022309E8:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02230A28
	bl ov4_021D2388
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0202B13C
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02230A2C ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0x1a
	lsl r0, r0, #2
	str r1, [r5, r0]
_02230A28:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230A2C: .word 0x0223894C
	thumb_func_end ov65_022309D0

	thumb_func_start ov65_02230A30
ov65_02230A30: ; 0x02230A30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02230AAA
	bl sub_020380E4
	cmp r0, #4
	bge _02230A64
	bl sub_02038284
	cmp r0, #0
	bne _02230A64
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02230A98
_02230A64:
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	mov r0, #0
	mov r1, #0xdb
	mvn r0, r0
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	mov r2, #0x14
	sub r0, #0x14
	str r2, [r5, r0]
	mov r0, #0x41
	sub r1, #0x28
	str r0, [r5, r1]
	b _02230AA6
_02230A98:
	bl sub_020383E8
	cmp r0, #0
	beq _02230AA6
	add r0, r5, #0
	bl ov65_0222F6EC
_02230AA6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230AAA:
	cmp r0, #0
	bne _02230AE4
	bl sub_020383E8
	cmp r0, #0
	bne _02230ADC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_020383D4
	mov r0, #0
	mov r1, #0xdb
	mvn r0, r0
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	mov r2, #0x14
	sub r0, #0x14
	str r2, [r5, r0]
	mov r0, #0x41
	sub r1, #0x28
	str r0, [r5, r1]
	b _02230AEC
_02230ADC:
	add r0, r5, #0
	bl ov65_0222F6EC
	b _02230AEC
_02230AE4:
	mov r0, #0xd1
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
_02230AEC:
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02230A30

	thumb_func_start ov65_02230AF8
ov65_02230AF8: ; 0x02230AF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020383E8
	cmp r0, #0
	beq _02230B10
	add r0, r5, #0
	bl ov65_0222F6EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230B10:
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #0x10
	beq _02230B24
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
_02230B24:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02230B42
	mov r0, #0xd6
	mov r1, #0x1e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230B42:
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _02230BB0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _02230B5C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230BAA
_02230B5C:
	add r0, r5, #0
	bl ov65_02232DFC
	bl sub_02038378
	bl sub_02038B60
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _02230B88
	mov r0, #0xd6
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x41
	sub r0, #0x14
	str r1, [r5, r0]
	b _02230BAA
_02230B88:
	add r0, r5, #0
	bl ov65_02232F30
	add r0, r5, #0
	bl ov65_0222FD70
	mov r1, #0
	mov r0, #0xdb
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x13
	sub r0, #0x28
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
_02230BAA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230BB0: .word 0x021BF67C
	thumb_func_end ov65_02230AF8

	thumb_func_start ov65_02230BB4
ov65_02230BB4: ; 0x02230BB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02230BD0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230BD0:
	ldr r0, _02230C00 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02230BFA
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038378
	mov r0, #0xd6
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x41
	sub r0, #0x14
	str r1, [r5, r0]
_02230BFA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230C00: .word 0x021BF67C
	thumb_func_end ov65_02230BB4

	thumb_func_start ov65_02230C04
ov65_02230C04: ; 0x02230C04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020383E8
	cmp r0, #0
	beq _02230C1C
	add r0, r5, #0
	bl ov65_0222F6EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230C1C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02230C3A
	mov r0, #0xd6
	mov r1, #0x1e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230C3A:
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _02230CA8 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _02230C54
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230CA2
_02230C54:
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038B60
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _02230C80
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _02230CA2
_02230C80:
	add r0, r5, #0
	bl ov65_02232F30
	add r0, r5, #0
	bl ov65_0222FD70
	mov r1, #0
	mov r0, #0xdb
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x13
	sub r0, #0x28
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
_02230CA2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230CA8: .word 0x021BF67C
	thumb_func_end ov65_02230C04

	thumb_func_start ov65_02230CAC
ov65_02230CAC: ; 0x02230CAC
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CAC

	thumb_func_start ov65_02230CB0
ov65_02230CB0: ; 0x02230CB0
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CB0

	thumb_func_start ov65_02230CB4
ov65_02230CB4: ; 0x02230CB4
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CB4

	thumb_func_start ov65_02230CB8
ov65_02230CB8: ; 0x02230CB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xd6
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	ble _02230CD0
	sub r0, r2, #1
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02230CD0:
	ldr r1, _02230CF4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _02230CF0
	mov r1, #0x1a
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x3b
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0x14
	str r1, [r5, r0]
_02230CF0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230CF4: .word 0x021BF67C
	thumb_func_end ov65_02230CB8

	thumb_func_start ov65_02230CF8
ov65_02230CF8: ; 0x02230CF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ov65_022355FC
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x28
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02230CF8

	thumb_func_start ov65_02230D20
ov65_02230D20: ; 0x02230D20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ov65_022355FC
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02230D64
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02230D68 ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0x29
	lsl r0, r0, #2
	str r1, [r5, r0]
_02230D64:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230D68: .word 0x0223894C
	thumb_func_end ov65_02230D20

	thumb_func_start ov65_02230D6C
ov65_02230D6C: ; 0x02230D6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	add r4, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_022355FC
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02230DC4
	bl ov4_021D2568
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02230DC4
	ldr r0, [r5, #4]
	add r0, #0x21
	ldrb r0, [r0]
	bl ov4_021D2584
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02230DC2
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
_02230DC2:
	mov r4, #1
_02230DC4:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02230DD0
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02230DD0:
	cmp r4, #0
	bne _02230DE8
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038B60
	add r0, r5, #0
	bl ov65_0223503C
	b _02230DF6
_02230DE8:
	add r0, r5, #0
	bl ov65_0223503C
	add r0, r5, #0
	mov r1, #1
	bl ov65_0223500C
_02230DF6:
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02230D6C

	thumb_func_start ov65_02230E04
ov65_02230E04: ; 0x02230E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r3, _02230FAC ; =0x02239CBC
	add r2, sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	mov r7, #3
	ldr r4, _02230FB0 ; =0x02239CDC
	bl ov65_0222DCF8
	cmp r0, #1
	bne _02230E4E
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	add r7, r7, #1
	ldr r2, _02230FB4 ; =0x02239C20
	add r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	sub r0, r7, #1
	lsl r1, r0, #3
	ldr r0, [r2, #8]
	ldr r2, [r2, #0xc]
	add r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230E4E:
	add r0, r5, #0
	bl ov65_0222DCE0
	cmp r0, #1
	bne _02230E78
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	add r7, r7, #1
	ldr r2, _02230FB4 ; =0x02239C20
	add r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	sub r0, r7, #1
	lsl r1, r0, #3
	ldr r0, [r2, #0x10]
	ldr r2, [r2, #0x14]
	add r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230E78:
	add r0, r5, #0
	bl ov65_0222DD1C
	cmp r0, #1
	bne _02230EA2
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	add r7, r7, #1
	ldr r2, _02230FB4 ; =0x02239C20
	add r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	sub r0, r7, #1
	lsl r1, r0, #3
	ldr r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	add r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230EA2:
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	ldr r2, _02230FB4 ; =0x02239C20
	add r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	lsl r1, r7, #3
	ldmia r2!, {r0, r2}
	str r0, [r4, r1]
	add r3, r4, r1
	add r0, r7, #1
	mov r1, #0x36
	str r2, [r3, #4]
	bl sub_02013A04
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #1
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02230EF2
_02230ED4:
	mov r0, #0x55
	mov r1, #0x5a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02230ED4
_02230EF2:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02230F16
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_02230F16:
	add r0, r7, #1
	mov r1, #3
	str r1, [sp]
	mov r1, #0xf
	lsl r0, r0, #1
	str r1, [sp, #4]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	mov r1, #0xd
	str r1, [sp, #0xc]
	mov r1, #0x3b
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x57
	lsl r0, r0, #2
	mov r1, #0xc7
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #2
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r2, _02230FB8 ; =0x000001D9
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xc7
	lsl r2, r2, #2
	str r0, [sp, #0x1c]
	add r0, r5, r2
	str r0, [sp, #0x28]
	add r2, #0x54
	ldrh r2, [r5, r2]
	add r0, sp, #0x1c
	mov r1, #0
	mov r3, #0x36
	bl sub_0200112C
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_022355FC
	mov r0, #0xd1
	mov r1, #0x25
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02230FAC: .word 0x02239CBC
_02230FB0: .word 0x02239CDC
_02230FB4: .word 0x02239C20
_02230FB8: .word 0x000001D9
	thumb_func_end ov65_02230E04

	thumb_func_start ov65_02230FBC
ov65_02230FBC: ; 0x02230FBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov65_0222DF88
	str r0, [sp]
	add r0, r5, #0
	bl ov65_022319B8
	add r6, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_022355FC
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02231038
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231034
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x28
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x37
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r5, r2
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	bl ov65_02232DFC
_02231034:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231038:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231052
	mov r4, #1
	mvn r4, r4
_02231052:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02231064
	add r0, r0, #1
	cmp r4, r0
	bne _0223107A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231064:
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_02232DFC
	ldr r0, _022311FC ; =0x000005DD
	bl sub_02005748
	b _022311C6
_0223107A:
	ldr r0, _022311FC ; =0x000005DD
	bl sub_02005748
	cmp r4, #0x13
	bne _022310BC
	cmp r6, #0
	beq _022310BC
	cmp r6, #1
	bne _02231098
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ov65_02232B58
	b _022310B2
_02231098:
	cmp r6, #3
	bne _022310A8
	add r0, r5, #0
	mov r1, #0x6a
	mov r2, #0
	bl ov65_02232B58
	b _022310B2
_022310A8:
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0
	bl ov65_02232B58
_022310B2:
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310BC:
	cmp r4, #0xf
	bne _022310DA
	ldr r0, [sp]
	cmp r0, #2
	bge _022310DA
	add r0, r5, #0
	mov r1, #0x59
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310DA:
	cmp r4, #1
	bne _022310F8
	ldr r0, [sp]
	cmp r0, #2
	bge _022310F8
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310F8:
	cmp r4, #0
	beq _02231104
	cmp r4, #1
	beq _02231104
	cmp r4, #0x1d
	bne _0223114A
_02231104:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x37
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r5, r2
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0223128C
	mov r0, #0xd1
	mov r1, #0x26
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223114A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02232E58
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_02232DFC
_02231160:
	add r0, r4, #0
	mov r6, #1
	bl ov65_0222DD64
	cmp r0, #0
	beq _022311A2
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0x13
	bne _022311A2
	mov r1, #0x44
	str r1, [r5, r0]
	add r0, r5, #0
	sub r1, #0x45
	add r2, r4, #0
	bl ov65_02234FCC
	add r0, r4, #0
	bl ov65_0222DFD4
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02232E58
	add r0, r4, #0
	bl ov65_0222DD94
	mov r1, #0xd2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r6, #0
	b _022311B4
_022311A2:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r2, r4, #0
	bl ov65_02234FCC
	add r0, r4, #0
	bl ov65_0222DFD4
_022311B4:
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0x13
	bne _022311C6
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0223500C
_022311C6:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x37
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r5, r2
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022311FC: .word 0x000005DD
	thumb_func_end ov65_02230FBC

	thumb_func_start ov65_02231200
ov65_02231200: ; 0x02231200
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020383E8
	cmp r0, #0
	beq _0223121C
	add r0, r5, #0
	bl ov65_0222F6EC
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, pc}
_0223121C:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_022355FC
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231238
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
_02231238:
	bl sub_020382C0
	cmp r0, #0
	beq _02231286
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #0
	bl sub_0203632C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020329E0
	bl sub_02032AC0
	bl sub_0203608C
	bl sub_02032E1C
	mov r4, #2
_02231286:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov65_02231200

	thumb_func_start ov65_0223128C
ov65_0223128C: ; 0x0223128C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	cmp r1, #0
	beq _022312A0
	cmp r1, #1
	beq _022312C2
	cmp r1, #0x1d
	beq _022312E4
	b _02231304
_022312A0:
	mov r0, #0xde
	mov r1, #1
	lsl r0, r0, #2
	ldr r3, _02231428 ; =0x02238AD0
	strh r1, [r5, r0]
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r4, _0223142C ; =0x02239C7C
	mov r7, #4
	stmia r2!, {r0, r1}
	b _02231304
_022312C2:
	mov r0, #0xde
	mov r1, #0
	lsl r0, r0, #2
	ldr r3, _02231428 ; =0x02238AD0
	strh r1, [r5, r0]
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r4, _02231430 ; =0x02239C9C
	mov r7, #4
	stmia r2!, {r0, r1}
	b _02231304
_022312E4:
	ldr r3, _02231434 ; =0x02238AF0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xde
	ldr r4, _02231438 ; =0x02239C5C
	mov r1, #2
	lsl r0, r0, #2
	mov r7, #4
	strh r1, [r5, r0]
_02231304:
	add r0, r7, #0
	mov r1, #0x36
	bl sub_02013A04
	mov r1, #0x55
	lsl r1, r1, #2
	mov r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _02231382
_02231318:
	ldr r2, [r4, #0]
	cmp r2, #0x47
	beq _02231332
	mov r0, #0x55
	mov r1, #0x5a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	b _0223137A
_02231332:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200C0B0
	mov r0, #0x5a
	mov r2, #0x17
	lsl r0, r0, #2
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x59
	mov r1, #0x5e
	mov r2, #0x17
	lsl r0, r0, #2
	lsl r1, r1, #2
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0x55
	mov r1, #0x5e
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4, #4]
	bl sub_02013A6C
_0223137A:
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _02231318
_02231382:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _022313A6
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_022313A6:
	mov r1, #9
	str r1, [sp]
	mov r1, #0xf
	lsl r0, r7, #1
	str r1, [sp, #4]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	mov r1, #0xd
	str r1, [sp, #0xc]
	mov r1, #0x3b
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x57
	lsl r0, r0, #2
	mov r1, #0xc7
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #2
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r2, _0223143C ; =0x000001D9
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0xc7
	lsl r3, r3, #2
	str r0, [sp, #0x14]
	add r0, r5, r3
	add r2, r3, #0
	str r0, [sp, #0x20]
	add r2, #0x5c
	ldrh r2, [r5, r2]
	add r3, #0x56
	add r0, sp, #0x14
	lsl r2, r2, #1
	add r2, r5, r2
	ldrh r2, [r2, r3]
	mov r1, #0
	mov r3, #0x36
	bl sub_0200112C
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02231428: .word 0x02238AD0
_0223142C: .word 0x02239C7C
_02231430: .word 0x02239C9C
_02231434: .word 0x02238AF0
_02231438: .word 0x02239C5C
_0223143C: .word 0x000001D9
	thumb_func_end ov65_0223128C

	thumb_func_start ov65_02231440
ov65_02231440: ; 0x02231440
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	bl ov65_022355FC
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _022314A2
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x28
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r3, _0223159C ; =0x00000372
	mov r0, #0x56
	add r2, r5, r3
	add r3, r3, #6
	ldrh r3, [r5, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r3, r3, #1
	mov r1, #0
	add r2, r2, r3
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314A2:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _022314B8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314B8:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022314D6
	add r0, r0, #1
	cmp r4, r0
	bne _022314E6
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314D6:
	ldr r0, _022315A0 ; =0x000005DD
	bl sub_02005748
	mov r0, #0xd1
	mov r1, #0x24
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231502
_022314E6:
	ldr r0, _022315A0 ; =0x000005DD
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02232E58
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_02232DFC
_02231502:
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0x13
	bne _0223155E
	add r0, r4, #0
	mov r7, #1
	bl ov65_0222DD64
	cmp r0, #0
	beq _02231548
	mov r0, #0xd1
	mov r1, #0x44
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	sub r1, #0x45
	add r2, r4, #0
	bl ov65_02234FCC
	add r0, r4, #0
	bl ov65_0222DFD4
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02232E58
	add r0, r4, #0
	bl ov65_0222DD94
	mov r1, #0xd2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r7, #0
	b _02231556
_02231548:
	add r0, r5, #0
	sub r1, r7, #2
	add r2, r4, #0
	bl ov65_02234FCC
	bl sub_02038B84
_02231556:
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0223500C
_0223155E:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r3, _0223159C ; =0x00000372
	mov r0, #0x56
	add r2, r5, r3
	add r3, r3, #6
	ldrh r3, [r5, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r3, r3, #1
	mov r1, #0
	add r2, r2, r3
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223159C: .word 0x00000372
_022315A0: .word 0x000005DD
	thumb_func_end ov65_02231440

	thumb_func_start ov65_022315A4
ov65_022315A4: ; 0x022315A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	add r6, r1, #0
	bl ov65_02235254
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov65_0222E8D4
	add r7, r0, #0
	bne _022315C6
	bl GF_AssertFail
_022315C6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_0222E8D4
	str r0, [sp]
	cmp r0, #0
	bne _022315F2
	add r0, r4, #0
	sub r1, r5, #1
	bl ov65_02232DC0
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022315F2:
	add r0, r7, #0
	bl ov65_022354E8
	add r2, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r1, [sp]
	add r0, r4, r0
	bl ov65_022354F8
	sub r7, r5, #1
	add r0, r4, #0
	add r1, r7, #0
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, r4, #0
	bl ov65_0222DD20
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _022316EC ; =0x0000037A
	add r1, r7, #0
	strh r5, [r4, r0]
	add r0, r4, #0
	bl ov65_02232DC0
	cmp r5, #0xf
	bne _02231630
	mov r1, #3
	b _022316D8
_02231630:
	cmp r5, #0x13
	bne _02231638
	mov r1, #4
	b _022316D8
_02231638:
	cmp r5, #0x12
	bne _02231640
	mov r1, #0x53
	b _022316D8
_02231640:
	cmp r5, #0x15
	bne _02231648
	mov r1, #5
	b _022316D8
_02231648:
	cmp r5, #0x14
	bne _02231650
	mov r1, #0x54
	b _022316D8
_02231650:
	cmp r5, #0x17
	bne _02231666
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0200C0B0
	mov r1, #6
	b _022316D8
_02231666:
	cmp r5, #0x16
	bne _0223166E
	mov r1, #0x55
	b _022316D8
_0223166E:
	cmp r5, #0x19
	bne _02231684
	mov r0, #0x59
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0200C0B0
	mov r1, #6
	b _022316D8
_02231684:
	cmp r5, #0x18
	bne _0223168C
	mov r1, #0x55
	b _022316D8
_0223168C:
	cmp r5, #0x1b
	bne _022316A2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #2
	bl sub_0200C0B0
	mov r1, #6
	b _022316D8
_022316A2:
	cmp r5, #0x1a
	bne _022316AA
	mov r1, #0x55
	b _022316D8
_022316AA:
	add r0, r5, #0
	bl ov65_0222DDD4
	cmp r0, #0
	beq _022316B8
	mov r1, #2
	b _022316D8
_022316B8:
	cmp r5, #8
	bne _022316C0
	mov r1, #0x52
	b _022316D8
_022316C0:
	add r0, r5, #0
	bl ov65_0222DE40
	cmp r0, #0
	beq _022316CE
	mov r1, #0x51
	b _022316D8
_022316CE:
	cmp r5, #1
	bne _022316D6
	mov r1, #0x56
	b _022316D8
_022316D6:
	mov r1, #7
_022316D8:
	add r0, r4, #0
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x2b
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022316EC: .word 0x0000037A
	thumb_func_end ov65_022315A4

	thumb_func_start ov65_022316F0
ov65_022316F0: ; 0x022316F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	str r1, [sp, #0x14]
	bl sub_020383E8
	cmp r0, #0
	beq _0223170C
	add r0, r5, #0
	bl ov65_0222F6EC
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223170C:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235254
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0222E8D4
	add r6, r0, #0
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _0223174C
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov65_0223556C
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223174C:
	cmp r6, #0
	bne _0223178A
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov65_0223556C
	mov r0, #0x56
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223178A:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_0222DD20
	ldr r1, _02231968 ; =0x0000037A
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _022317CC
	add r1, #0xe
	add r0, r5, r1
	add r1, r6, #0
	bl ov65_0223556C
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_022317CC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _022317E4
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_022317E4:
	ldr r3, _0223196C ; =0x02238A90
	mov r0, #2
	str r0, [sp, #0x1c]
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235254
	add r1, r0, #0
	add r0, r5, #0
	sub r1, r1, #1
	bl ov65_02234FA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0222DD20
	add r6, #0x21
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0xdf
	ldrb r1, [r6]
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [r5, #4]
	add r0, #0x21
	ldrb r0, [r0]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #2
	mov r1, #0x36
	bl sub_02013A04
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	ldr r6, _02231970 ; =0x02238968
	str r0, [sp, #0x20]
	add r7, sp, #0x24
_0223184C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022318C6
	add r0, r4, #0
	bl ov65_0222DE68
	cmp r0, #0
	bne _02231868
	cmp r4, #0
	beq _02231868
	cmp r4, #0x1c
	beq _02231868
	cmp r4, #0x1d
	blo _0223187C
_02231868:
	ldrh r0, [r7, #0x12]
	sub r0, r0, #1
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x10]
	sub r0, r0, #1
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _022318DA
_0223187C:
	cmp r4, #0x10
	bne _022318B0
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _0223189C
	mov r0, #0x55
	mov r1, #0x5a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r6, #4]
	mov r2, #0x24
	bl sub_02013A4C
	b _022318DA
_0223189C:
	ldrh r0, [r7, #0x12]
	sub r0, r0, #1
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x10]
	sub r0, r0, #1
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _022318DA
_022318B0:
	mov r0, #0x55
	mov r1, #0x5a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	bl sub_02013A4C
	b _022318DA
_022318C6:
	mov r0, #0x55
	mov r1, #0x5a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	bl sub_02013A4C
_022318DA:
	ldr r0, [sp, #0x20]
	add r6, #8
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #2
	blo _0223184C
	ldr r0, [sp, #0x1c]
	mov r1, #3
	sub r0, r1, r0
	lsl r0, r0, #1
	add r0, #0xb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #0xc7
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3b
	str r0, [sp, #0x10]
	mov r0, #0x57
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #2
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r2, _02231974 ; =0x000001D9
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x24]
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	add r2, r1, #0
	mov r3, #0x36
	bl sub_0200112C
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0xd1
	mov r1, #0x2c
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02231968: .word 0x0000037A
_0223196C: .word 0x02238A90
_02231970: .word 0x02238968
_02231974: .word 0x000001D9
	thumb_func_end ov65_022316F0

	thumb_func_start ov65_02231978
ov65_02231978: ; 0x02231978
	push {r4, r5}
	ldr r2, _022319B4 ; =0x000001EF
	mov r5, #0
	add r1, r2, #0
	sub r1, #0x1c
	add r3, r2, #0
_02231984:
	ldrh r4, [r0]
	cmp r4, r3
	bne _02231990
	mov r0, #0
	pop {r4, r5}
	bx lr
_02231990:
	cmp r4, r2
	bls _0223199A
	mov r0, #0
	pop {r4, r5}
	bx lr
_0223199A:
	ldrh r4, [r0, #0xc]
	cmp r4, r1
	bls _022319A6
	mov r0, #0
	pop {r4, r5}
	bx lr
_022319A6:
	add r5, r5, #1
	add r0, r0, #2
	cmp r5, #6
	blt _02231984
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
_022319B4: .word 0x000001EF
	thumb_func_end ov65_02231978

	thumb_func_start ov65_022319B8
ov65_022319B8: ; 0x022319B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207D990
	mov r1, #4
	bl sub_0207D69C
	cmp r0, #0
	bne _022319D4
	mov r0, #1
	pop {r4, pc}
_022319D4:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207D990
	ldr r1, _02231A08 ; =0x000001C1
	mov r2, #0x36
	bl sub_0207D730
	cmp r0, #0
	bne _022319EE
	mov r0, #3
	pop {r4, pc}
_022319EE:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202AB28
	bl sub_0202AC98
	cmp r0, #0x64
	blo _02231A04
	mov r0, #2
	pop {r4, pc}
_02231A04:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02231A08: .word 0x000001C1
	thumb_func_end ov65_022319B8

	thumb_func_start ov65_02231A0C
ov65_02231A0C: ; 0x02231A0C
	push {r4, lr}
	mov r0, #0
	bl ov4_021D2584
	bl ov65_02231A54
	cmp r0, #0
	bne _02231A3E
	bl sub_02013948
	cmp r0, #0
	bne _02231A28
	ldr r4, _02231A4C ; =0x0000043D
	b _02231A2A
_02231A28:
	ldr r4, _02231A50 ; =0x0000043E
_02231A2A:
	mov r0, #0
	bl sub_02004234
	lsl r1, r4, #0x10
	mov r0, #0xb
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	pop {r4, pc}
_02231A3E:
	bl sub_020041FC
	mov r1, #0x78
	bl sub_02004AD4
	pop {r4, pc}
	nop
_02231A4C: .word 0x0000043D
_02231A50: .word 0x0000043E
	thumb_func_end ov65_02231A0C

	thumb_func_start ov65_02231A54
ov65_02231A54: ; 0x02231A54
	push {r3, lr}
	bl sub_020041FC
	ldr r1, _02231A70 ; =0x0000043D
	cmp r0, r1
	beq _02231A6A
	add r1, r1, #1
	cmp r0, r1
	beq _02231A6A
	mov r0, #0
	pop {r3, pc}
_02231A6A:
	mov r0, #1
	pop {r3, pc}
	nop
_02231A70: .word 0x0000043D
	thumb_func_end ov65_02231A54

	thumb_func_start ov65_02231A74
ov65_02231A74: ; 0x02231A74
	push {r4, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_0202B628
	add r4, r0, #0
	mov r0, #0x36
	mov r1, #0x1d
	bl sub_0202C244
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl sub_0202B758
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02231A74

	thumb_func_start ov65_02231A98
ov65_02231A98: ; 0x02231A98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r1, [sp]
	mov r6, #0
	bl sub_02001288
	add r7, r0, #0
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231ABA
	sub r7, r6, #2
_02231ABA:
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235254
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0222E8D4
	str r0, [sp, #0x14]
	bl sub_020383E8
	cmp r0, #0
	beq _02231B24
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x56
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02231B18
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	bl ov65_0223556C
_02231B18:
	add r0, r5, #0
	bl ov65_0222F6EC
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02231B24:
	mov r0, #1
	mvn r0, r0
	cmp r7, r0
	beq _02231BB8
	add r0, r0, #1
	cmp r7, r0
	bne _02231BC8
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02231B64
	mov r0, #0x56
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231B64:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02234FA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0222DD20
	ldr r1, _02231E58 ; =0x0000037A
	add r6, #0x21
	ldrh r1, [r5, r1]
	ldrb r6, [r6]
	cmp r1, r0
	bne _02231B94
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231BB2
	mov r0, #0xdf
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, r6
	beq _02231BB2
_02231B94:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231BB2:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02231BB8:
	ldr r0, _02231E5C ; =0x000005DD
	bl sub_02005748
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231E06
_02231BC8:
	ldr r0, _02231E5C ; =0x000005DD
	bl sub_02005748
	cmp r7, #1
	beq _02231BD4
	b _02231DFA
_02231BD4:
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x3a
	strh r4, [r5, r0]
	cmp r4, #0
	bne _02231BE6
	b _02231E06
_02231BE6:
	add r0, r5, #0
	bl ov65_0222DF88
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov65_022319B8
	str r0, [sp, #0xc]
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02234FA8
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov65_0222DD20
	ldr r1, [sp, #8]
	add r7, r0, #0
	add r1, #0x21
	ldrb r1, [r1]
	str r1, [sp, #4]
	ldr r1, _02231E58 ; =0x0000037A
	ldrh r1, [r5, r1]
	cmp r1, r7
	bne _02231C2E
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231C4C
	mov r0, #0xdf
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _02231C4C
_02231C2E:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231C4C:
	ldr r0, [sp, #8]
	bl ov65_02231978
	cmp r0, #0
	bne _02231C74
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231C74:
	add r0, r7, #0
	bl ov65_0222DEB0
	cmp r0, #0
	beq _02231CAA
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bge _02231CAA
	cmp r7, #0xf
	bne _02231C94
	add r0, r5, #0
	mov r1, #0x59
	mov r2, #0
	bl ov65_02232B58
	b _02231C9E
_02231C94:
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #0
	bl ov65_02232B58
_02231C9E:
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231CAA:
	cmp r7, #0x13
	bne _02231CEA
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02231CEA
	cmp r0, #1
	bne _02231CC4
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ov65_02232B58
	b _02231CDE
_02231CC4:
	cmp r0, #3
	bne _02231CD4
	add r0, r5, #0
	mov r1, #0x6a
	mov r2, #0
	bl ov65_02232B58
	b _02231CDE
_02231CD4:
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0
	bl ov65_02232B58
_02231CDE:
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231CEA:
	add r0, r7, #0
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231D34
	ldr r0, [r5, #4]
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _02231D34
	cmp r0, #0
	beq _02231D10
	add r0, r5, #0
	mov r1, #0x86
	mov r2, #0
	bl ov65_02232B58
	b _02231D1A
_02231D10:
	add r0, r5, #0
	mov r1, #0x87
	mov r2, #0
	bl ov65_02232B58
_02231D1A:
	add r0, r7, #0
	bl ov65_0222DED4
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232E58
	mov r0, #0xd1
	mov r1, #0x3f
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231D34:
	add r0, r7, #0
	bl ov65_0222DED4
	add r7, r0, #0
	cmp r7, #0x1d
	beq _02231E06
	sub r0, r4, #1
	bl ov65_02234FC4
	cmp r0, #6
	bne _02231DDC
	add r0, r5, #0
	sub r1, r4, #1
	add r2, r7, #0
	bl ov65_02234FCC
	cmp r0, #0
	beq _02231DBE
	mov r0, #0xcf
	ldr r1, _02231E60 ; =0x00000708
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r7, #0
	bl ov65_0222DFD4
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_02232E58
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231D8E
	bl GF_AssertFail
_02231D8E:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r7, #1
	beq _02231DAC
	mov r0, #0xd1
	mov r1, #0x2d
	lsl r0, r0, #2
	b _02231DB8
_02231DAC:
	mov r0, #0xcf
	ldr r1, _02231E60 ; =0x00000708
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x15
	add r0, #8
_02231DB8:
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231DBE:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231DDC:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02231E06
_02231DFA:
	cmp r7, #2
	bne _02231E06
	mov r0, #0xd1
	mov r1, #0x36
	lsl r0, r0, #2
	str r1, [r5, r0]
_02231E06:
	cmp r6, #0
	bne _02231E10
	add r0, r5, #0
	bl ov65_02232DFC
_02231E10:
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0xc7
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x56
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02231E50
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	bl ov65_0223556C
_02231E50:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231E58: .word 0x0000037A
_02231E5C: .word 0x000005DD
_02231E60: .word 0x00000708
	thumb_func_end ov65_02231A98

	thumb_func_start ov65_02231E64
ov65_02231E64: ; 0x02231E64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xcf
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _02231E84
	mov r1, #0x46
	add r0, #8
	str r1, [r5, r0]
	b _02231FD8
_02231E84:
	bl sub_020380E4
	cmp r0, #3
	bne _02231EAC
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231EAC:
	bl sub_020380E4
	cmp r0, #5
	bne _02231ED4
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231ED4:
	bl sub_020380E4
	cmp r0, #4
	beq _02231EE4
	bl sub_02038284
	cmp r0, #0
	beq _02231F04
_02231EE4:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231F04:
	bl sub_020383E8
	cmp r0, #0
	beq _02231F14
	add r0, r5, #0
	bl ov65_0222F6EC
	b _02231FD8
_02231F14:
	bl sub_020380E4
	cmp r0, #1
	bne _02231FD8
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	add r6, r0, #0
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231F52
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020329E0
	mov r0, #0xd6
	mov r1, #0x1e
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231F52:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #1
	bne _02231FB2
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020329E0
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	add r0, r6, #0
	bl ov65_0222DFD4
	add r0, r6, #0
	bl ov65_0222DD94
	mov r1, #0xd2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	bl sub_0203632C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r4, #2
	b _02231FD8
_02231FB2:
	bl sub_020362C8
	cmp r0, #1
	bne _02231FD8
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
_02231FD8:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02231E64

	thumb_func_start ov65_02231FE0
ov65_02231FE0: ; 0x02231FE0
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02231FE0

	thumb_func_start ov65_02231FE4
ov65_02231FE4: ; 0x02231FE4
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02231FE4

	thumb_func_start ov65_02231FE8
ov65_02231FE8: ; 0x02231FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02232F30
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038378
	mov r1, #0
	mov r0, #0xdb
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x13
	sub r0, #0x28
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02231FE8

	thumb_func_start ov65_02232020
ov65_02232020: ; 0x02232020
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02232020

	thumb_func_start ov65_02232024
ov65_02232024: ; 0x02232024
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02232024

	thumb_func_start ov65_02232028
ov65_02232028: ; 0x02232028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02234FA8
	add r7, r0, #0
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0222DD20
	ldr r1, [r5, #4]
	add r1, #0x21
	ldrb r1, [r1]
	cmp r4, #0xc
	bne _02232066
	cmp r0, #5
	bne _02232066
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232066:
	cmp r4, #0xd
	bne _02232078
	cmp r0, #6
	bne _02232078
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232078:
	cmp r4, #0xe
	bne _0223208A
	cmp r0, #7
	bne _0223208A
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223208A:
	cmp r4, #9
	bne _0223209C
	cmp r0, #2
	bne _0223209C
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223209C:
	cmp r4, #0xa
	bne _022320AE
	cmp r0, #3
	bne _022320AE
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320AE:
	cmp r4, #0xb
	bne _022320C0
	cmp r0, #4
	bne _022320C0
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320C0:
	cmp r4, #0xf
	bne _022320D2
	cmp r0, #8
	bne _022320D2
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320D2:
	cmp r4, #0x13
	bne _022320E4
	cmp r0, #0x12
	bne _022320E4
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320E4:
	cmp r4, #0x15
	bne _022320F6
	cmp r0, #0x14
	bne _022320F6
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320F6:
	cmp r4, #0x17
	bne _02232108
	cmp r0, #0x16
	bne _02232108
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232108:
	cmp r4, #0x19
	bne _0223211A
	cmp r0, #0x18
	bne _0223211A
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223211A:
	cmp r4, #0x1b
	bne _0223212C
	cmp r0, #0x1a
	bne _0223212C
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223212C:
	cmp r4, #0x10
	bne _02232144
	cmp r0, #1
	bne _02232144
	cmp r1, #0
	ble _02232144
	mov r0, #0xd1
	mov r1, #0x16
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232144:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	bl sub_02038378
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232172:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020329E0
	mov r0, #0xd1
	mov r1, #0x31
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x1e
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02232028

	thumb_func_start ov65_022321A8
ov65_022321A8: ; 0x022321A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020380E4
	cmp r0, #3
	blt _022321D4
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov65_02232DC0
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022321E8
_022321D4:
	bl sub_020383E8
	cmp r0, #0
	beq _022321E4
	add r0, r4, #0
	bl ov65_0222F6EC
	b _022321E8
_022321E4:
	mov r0, #0
	pop {r4, pc}
_022321E8:
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov65_022321A8

	thumb_func_start ov65_022321F4
ov65_022321F4: ; 0x022321F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020380E4
	cmp r0, #4
	bge _02232214
	bl sub_02038284
	cmp r0, #0
	bne _02232214
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _0223224E
_02232214:
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0223222A
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #0
	bl ov65_02232B58
	b _0223223E
_0223222A:
	sub r1, #0x14
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
_0223223E:
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r1, #0x1b
	sub r0, #0x3c
	str r1, [r5, r0]
	b _02232296
_0223224E:
	add r0, r5, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _02232296
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02232286
	mov r0, #0xd
	bl sub_02036540
	cmp r0, #0
	beq _02232296
	bl sub_020365F4
	mov r0, #0xe
	bl sub_020364F0
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r1, #0x32
	sub r0, #0x3c
	str r1, [r5, r0]
	b _02232296
_02232286:
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02232296
	mov r0, #0xd
	bl sub_020364F0
_02232296:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_022321F4

	thumb_func_start ov65_0223229C
ov65_0223229C: ; 0x0223229C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _022322D6
	mov r0, #0xe
	bl sub_02036540
	cmp r0, #0
	beq _022322D6
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0
	strh r0, [r1]
	bl sub_0203608C
	add r1, sp, #0
	bl sub_02036614
	cmp r0, #0
	beq _022322D6
	mov r0, #0xd1
	mov r1, #0x33
	lsl r0, r0, #2
	str r1, [r5, r0]
_022322D6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223229C

	thumb_func_start ov65_022322DC
ov65_022322DC: ; 0x022322DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _022322EE
	mov r0, #1
	b _022322F0
_022322EE:
	mov r0, #0
_022322F0:
	bl sub_0203664C
	add r4, r0, #0
	add r0, r5, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _02232352
	cmp r4, #0
	beq _02232352
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov65_0222DD20
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl ov65_0222DED4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r1
	beq _02232324
	cmp r0, r6
	bne _02232334
_02232324:
	mov r0, #0xf
	bl sub_020364F0
	mov r0, #0xd1
	mov r1, #0x34
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232352
_02232334:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
_02232352:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_022322DC

	thumb_func_start ov65_02232358
ov65_02232358: ; 0x02232358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _0223238A
	mov r0, #0xf
	bl sub_02036540
	cmp r0, #0
	beq _0223238A
	bl sub_02032AC0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0x12
	bl sub_020364F0
	mov r0, #0xd1
	mov r1, #0x35
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223238A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02232358

	thumb_func_start ov65_02232390
ov65_02232390: ; 0x02232390
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022323AA
	mov r0, #1
	pop {r4, pc}
_022323AA:
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	bne _022323BC
	mov r0, #1
	pop {r4, pc}
_022323BC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_02232390

	thumb_func_start ov65_022323C0
ov65_022323C0: ; 0x022323C0
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _022323E4
	mov r0, #0x12
	bl sub_02036540
	cmp r0, #0
	beq _022323E4
	add r0, r5, #0
	bl ov65_02232390
	cmp r0, #1
	beq _022323E6
_022323E4:
	b _0223252A
_022323E6:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	mov r2, #0x36
	bl sub_020391DC
	add r0, r5, #0
	bl ov65_02232DFC
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02234FA8
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_0222DD20
	add r4, r0, #0
	cmp r4, #0xf
	beq _02232418
	cmp r4, #8
	bne _02232424
_02232418:
	mov r0, #0xd2
	mov r1, #7
	lsl r0, r0, #2
	mov r4, #8
	str r1, [r5, r0]
	b _022324FC
_02232424:
	sub r0, #0x12
	cmp r0, #1
	bhi _02232436
	mov r0, #0xd2
	mov r1, #0xb
	lsl r0, r0, #2
	mov r4, #0x12
	str r1, [r5, r0]
	b _022324FC
_02232436:
	add r0, r4, #0
	sub r0, #0x14
	cmp r0, #1
	bhi _0223244A
	mov r0, #0xd2
	mov r1, #0xc
	lsl r0, r0, #2
	mov r4, #0x14
	str r1, [r5, r0]
	b _022324FC
_0223244A:
	add r0, r4, #0
	sub r0, #0x16
	cmp r0, #1
	bhi _0223245E
	mov r0, #0xd2
	mov r1, #0xd
	lsl r0, r0, #2
	mov r4, #0x16
	str r1, [r5, r0]
	b _022324FC
_0223245E:
	add r0, r4, #0
	sub r0, #0x18
	cmp r0, #1
	bhi _02232472
	mov r0, #0xd2
	mov r1, #0xe
	lsl r0, r0, #2
	mov r4, #0x18
	str r1, [r5, r0]
	b _022324FC
_02232472:
	add r0, r4, #0
	sub r0, #0x1a
	cmp r0, #1
	bhi _02232486
	mov r0, #0xd2
	mov r1, #0xf
	lsl r0, r0, #2
	mov r4, #0x1a
	str r1, [r5, r0]
	b _022324FC
_02232486:
	cmp r4, #9
	beq _0223248E
	cmp r4, #2
	bne _0223249A
_0223248E:
	mov r0, #0xd2
	mov r1, #1
	lsl r0, r0, #2
	mov r4, #2
	str r1, [r5, r0]
	b _022324FC
_0223249A:
	cmp r4, #0xa
	beq _022324A2
	cmp r4, #3
	bne _022324AE
_022324A2:
	mov r0, #0xd2
	mov r1, #2
	lsl r0, r0, #2
	mov r4, #3
	str r1, [r5, r0]
	b _022324FC
_022324AE:
	cmp r4, #0xb
	beq _022324B6
	cmp r4, #4
	bne _022324C2
_022324B6:
	mov r0, #0xd2
	mov r1, #3
	lsl r0, r0, #2
	mov r4, #4
	str r1, [r5, r0]
	b _022324FC
_022324C2:
	cmp r4, #0xc
	beq _022324CA
	cmp r4, #5
	bne _022324D6
_022324CA:
	mov r0, #0xd2
	mov r1, #4
	lsl r0, r0, #2
	mov r4, #5
	str r1, [r5, r0]
	b _022324FC
_022324D6:
	cmp r4, #0xd
	beq _022324DE
	cmp r4, #6
	bne _022324EA
_022324DE:
	mov r0, #0xd2
	mov r1, #5
	lsl r0, r0, #2
	mov r4, #6
	str r1, [r5, r0]
	b _022324FC
_022324EA:
	cmp r4, #0xe
	beq _022324F2
	cmp r4, #7
	bne _022324FC
_022324F2:
	mov r0, #0xd2
	mov r1, #6
	lsl r0, r0, #2
	mov r4, #7
	str r1, [r5, r0]
_022324FC:
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r5, #0
	bl ov65_02231A74
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02232E58
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r4, #2
_0223252A:
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end ov65_022323C0

	thumb_func_start ov65_02232530
ov65_02232530: ; 0x02232530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0x36
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	bl ov65_0222EBB8
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232530

	thumb_func_start ov65_02232558
ov65_02232558: ; 0x02232558
	mov r2, #0xd1
	mov r3, #0x37
	lsl r2, r2, #2
	str r3, [r0, r2]
	add r0, r1, #0
	bx lr
	thumb_func_end ov65_02232558

	thumb_func_start ov65_02232564
ov65_02232564: ; 0x02232564
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02232580
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02232580:
	add r0, r5, #0
	bl ov65_0223012C
	cmp r0, #0
	beq _02232592
	mov r0, #0xd1
	mov r1, #0x38
	lsl r0, r0, #2
	str r1, [r5, r0]
_02232592:
	ldr r0, _022325A8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _022325A4
	mov r0, #0xd1
	mov r1, #0x38
	lsl r0, r0, #2
	str r1, [r5, r0]
_022325A4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022325A8: .word 0x021BF67C
	thumb_func_end ov65_02232564

	thumb_func_start ov65_022325AC
ov65_022325AC: ; 0x022325AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02232DFC
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_022325AC

	thumb_func_start ov65_022325C4
ov65_022325C4: ; 0x022325C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022325FE
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232604 ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0x3a
	lsl r0, r0, #2
	str r1, [r5, r0]
_022325FE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02232604: .word 0x0223894C
	thumb_func_end ov65_022325C4

	thumb_func_start ov65_02232608
ov65_02232608: ; 0x02232608
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02232632
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02232632:
	add r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02232654
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02232650
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
_02232650:
	mov r4, #1
	mvn r4, r4
_02232654:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02232660
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02232660:
	cmp r4, #0
	bne _0223267E
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x3b
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0x14
	str r1, [r5, r0]
	b _02232692
_0223267E:
	add r0, r5, #0
	bl ov65_02232DFC
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_0223503C
_02232692:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02232608

	thumb_func_start ov65_02232698
ov65_02232698: ; 0x02232698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _022326B4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_022326B4:
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _022326C6
	mov r1, #0
	str r1, [r5, r0]
	bl sub_02038350
_022326C6:
	bl sub_02036780
	cmp r0, #0
	bne _022326EC
	ldr r0, [r5, #0]
	bl sub_0202B0F8
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #1
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x3c
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x1e
	add r0, #0x14
	str r1, [r5, r0]
_022326EC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232698

	thumb_func_start ov65_022326F0
ov65_022326F0: ; 0x022326F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0223270C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0223270C:
	mov r1, #0xd6
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02232730
	add r0, r1, #0
	mov r2, #8
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #0x22
	sub r1, #0x14
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov65_02232DFC
_02232730:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022326F0

	thumb_func_start ov65_02232734
ov65_02232734: ; 0x02232734
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	add r4, r1, #0
	bl sub_02036540
	cmp r0, #0
	bne _02232748
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02232748:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02232784
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232788 ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0x3e
	lsl r0, r0, #2
	str r1, [r5, r0]
_02232784:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02232788: .word 0x0223894C
	thumb_func_end ov65_02232734

	thumb_func_start ov65_0223278C
ov65_0223278C: ; 0x0223278C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _022327A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_022327A8:
	bl sub_02038294
	cmp r0, #0
	bne _022327C0
	bl sub_02038284
	cmp r0, #0
	bne _022327C0
	bl sub_020380E4
	cmp r0, #3
	blt _022327E0
_022327C0:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1c
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02232886
_022327E0:
	bl sub_020383E8
	cmp r0, #0
	beq _022327FC
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	bl ov65_0222F6EC
	b _02232886
_022327FC:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02232814
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02232814:
	cmp r0, #0
	bne _0223285A
	add r0, r5, #0
	mov r1, #0x8a
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02232830
	bl GF_AssertFail
_02232830:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0xe
	mov r0, #1
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	mov r2, #0x31
	sub r0, #0x3c
	str r2, [r5, r0]
	mov r0, #0x1e
	sub r1, #0x28
	str r0, [r5, r1]
	b _02232876
_0223285A:
	add r0, r5, #0
	bl ov65_02232DFC
	bl sub_02032A70
	bl sub_020383D4
	mov r0, #0xd6
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x41
	sub r0, #0x14
	str r1, [r5, r0]
_02232876:
	bl sub_020388E8
	add r1, r0, #0
	str r0, [r5, #4]
	add r1, #0x22
	ldrb r1, [r1]
	add r0, #0x21
	strb r1, [r0]
_02232886:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223278C

	thumb_func_start ov65_0223288C
ov65_0223288C: ; 0x0223288C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	bl ov65_02235254
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0222E8D4
	cmp r0, #0
	bne _022328C8
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022328C8:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02234FA8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0222DD20
	ldr r2, _02232944 ; =0x0000037A
	add r7, #0x21
	ldrh r3, [r5, r2]
	ldrb r1, [r7]
	cmp r3, r0
	bne _022328EE
	add r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, r1
	beq _0223290C
_022328EE:
	add r0, r5, #0
	sub r1, r4, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223290C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02232940
	mov r2, #0x57
	mov r0, #0x36
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232948 ; =0x0223894C
	add r2, #0x7d
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xd1
	mov r1, #0x40
	lsl r0, r0, #2
	str r1, [r5, r0]
_02232940:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232944: .word 0x0000037A
_02232948: .word 0x0223894C
	thumb_func_end ov65_0223288C

	thumb_func_start ov65_0223294C
ov65_0223294C: ; 0x0223294C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ov65_02235254
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_0222E8D4
	cmp r0, #0
	bne _02232994
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	sub r1, r6, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232994:
	add r0, r5, #0
	sub r1, r6, #1
	bl ov65_02234FA8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov65_0222DD20
	ldr r2, _02232B1C ; =0x0000037A
	add r7, #0x21
	ldrh r3, [r5, r2]
	ldrb r1, [r7]
	cmp r3, r0
	bne _022329BA
	add r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, r1
	beq _022329E4
_022329BA:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	sub r1, r6, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_022329E4:
	bl sub_020380E4
	cmp r0, #3
	blt _02232A12
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ov65_02232B58
	bl sub_02038378
	mov r0, #0xd1
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232A12:
	bl sub_020383E8
	cmp r0, #0
	beq _02232A2E
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002154
	add r0, r5, #0
	bl ov65_0222F6EC
	b _02232B18
_02232A2E:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02232A46
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232A46:
	cmp r0, #0
	bne _02232AF2
	ldr r0, _02232B1C ; =0x0000037A
	ldrh r0, [r5, r0]
	bl ov65_0222DED4
	add r6, r0, #0
	cmp r6, #0x1d
	beq _02232AF2
	ldr r0, _02232B20 ; =0x0000037E
	ldrh r0, [r5, r0]
	sub r0, r0, #1
	bl ov65_02234FC4
	cmp r0, #6
	bne _02232AF2
	add r0, r5, #0
	bl ov65_02232EDC
	ldr r1, _02232B20 ; =0x0000037E
	add r0, r5, #0
	ldrh r1, [r5, r1]
	add r2, r6, #0
	sub r1, r1, #1
	bl ov65_02234FCC
	cmp r0, #0
	beq _02232AF2
	mov r0, #0xcf
	ldr r1, _02232B24 ; =0x00000708
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	bl ov65_0222DFD4
	mov r0, #0
	bl sub_0203632C
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_02232E58
	ldr r1, _02232B20 ; =0x0000037E
	add r0, r5, #0
	ldrh r1, [r5, r1]
	sub r1, r1, #1
	bl ov65_02232DC0
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl ov65_02232B58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02232ABE
	bl GF_AssertFail
_02232ABE:
	mov r1, #0xb3
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0xea
	bl sub_0200E7FC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r6, #1
	beq _02232AE0
	mov r0, #0xd1
	mov r1, #0x2d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232AE0:
	mov r0, #0xcf
	ldr r1, _02232B24 ; =0x00000708
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x15
	add r0, #8
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232AF2:
	add r0, r5, #0
	bl ov65_02232DFC
	add r0, r5, #0
	mov r1, #0x10
	bl ov65_02232E58
	add r0, r5, #0
	bl ov65_02232F30
	add r0, r5, #0
	bl ov65_0222FD70
	mov r0, #0xd1
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232B18:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232B1C: .word 0x0000037A
_02232B20: .word 0x0000037E
_02232B24: .word 0x00000708
	thumb_func_end ov65_0223294C

	thumb_func_start ov65_02232B28
ov65_02232B28: ; 0x02232B28
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_02036780
	cmp r0, #0
	bne _02232B50
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r4, #2
_02232B50:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02232B28

	thumb_func_start ov65_02232B58
ov65_02232B58: ; 0x02232B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02025E44
	bl sub_02027AC0
	add r7, r0, #0
	add r0, r5, #0
	bl ov65_02232F50
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232B9C
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_02232B9C:
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232BC0
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_02232BC0:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #8
	beq _02232BEC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02232BEC
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
	mov r0, #6
	mov r1, #8
	lsl r0, r0, #6
	str r1, [r5, r0]
_02232BEC:
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _02232CA4 ; =0x0000012D
	mov r1, #0xb3
	str r0, [sp, #0x10]
	add r0, #0x2f
	lsl r1, r1, #2
	mov r2, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	add r3, r2, #0
	bl sub_0201A7E8
	cmp r6, #0
	beq _02232C28
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl sub_0200B1B8
	b _02232C38
_02232C28:
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl sub_0200B1B8
_02232C38:
	mov r2, #0x59
	lsl r2, r2, #2
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x10
	add r2, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r2, #0xb3
	lsl r2, r2, #2
	add r0, r5, r2
	mov r1, #1
	sub r2, #0xea
	mov r3, #0xa
	bl sub_0200E060
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	mov r2, #0x5d
	mov r0, #0xb3
	lsl r0, r0, #2
	str r3, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02232CA4: .word 0x0000012D
	thumb_func_end ov65_02232B58

	thumb_func_start ov65_02232CA8
ov65_02232CA8: ; 0x02232CA8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02232F50
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232CD8
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_02232CD8:
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232CFC
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_02232CFC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #8
	beq _02232D28
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02232D28
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
	mov r0, #6
	mov r1, #8
	lsl r0, r0, #6
	str r1, [r5, r0]
_02232D28:
	mov r3, #4
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x69
	str r0, [sp, #0x10]
	add r0, #0xf3
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #2
	bl sub_0201A7E8
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl sub_0200B1B8
	mov r2, #0x59
	lsl r2, r2, #2
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x10
	add r2, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r2, _02232DBC ; =0x000001D9
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	str r3, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, #0x75
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02232DBC: .word 0x000001D9
	thumb_func_end ov65_02232CA8

	thumb_func_start ov65_02232DC0
ov65_02232DC0: ; 0x02232DC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	mvn r0, r0
	cmp r6, r0
	beq _02232DFA
	mov r0, #0x36
	bl sub_02025E6C
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0202AEF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025EC0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B498
	add r0, r4, #0
	bl sub_020181C4
_02232DFA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02232DC0

	thumb_func_start ov65_02232DFC
ov65_02232DFC: ; 0x02232DFC
	push {r4, lr}
	add r4, r0, #0
	bl ov65_02232F50
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _02232E30
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02232E30
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
	mov r0, #6
	mov r1, #8
	lsl r0, r0, #6
	str r1, [r4, r0]
_02232E30:
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232E54
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_02232E54:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02232DFC

	thumb_func_start ov65_02232E58
ov65_02232E58: ; 0x02232E58
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #4]
	cmp r2, #0
	beq _02232E6E
	bl ov65_02232E70
	ldr r0, [r4, #4]
	mov r1, #0x24
	bl ov4_021D222C
_02232E6E:
	pop {r4, pc}
	thumb_func_end ov65_02232E58

	thumb_func_start ov65_02232E70
ov65_02232E70: ; 0x02232E70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02232EDA
	bl ov65_0222DD20
	cmp r0, r4
	beq _02232ED4
	ldr r0, [r5, #4]
	strb r4, [r0, #0x1b]
	add r0, r4, #0
	bl ov65_0222DE40
	cmp r0, #0
	bne _02232ED4
	cmp r4, #8
	beq _02232ED4
	cmp r4, #0x14
	beq _02232ED4
	cmp r4, #0x16
	beq _02232ED4
	cmp r4, #0x18
	beq _02232ED4
	cmp r4, #0x1a
	beq _02232ED4
	cmp r4, #0x12
	beq _02232ED4
	cmp r4, #1
	bne _02232EB8
	mov r0, #0
	mov r1, #0x1e
	bl sub_0200564C
	b _02232ED4
_02232EB8:
	cmp r4, #0x10
	bne _02232ED4
	mov r0, #0
	bl ov4_021D2584
	bl ov65_02231A54
	cmp r0, #1
	bne _02232ED4
	mov r0, #0x78
	mov r1, #0x1e
	mov r2, #1
	bl sub_0200560C
_02232ED4:
	add r0, r5, #0
	bl ov65_0222FD70
_02232EDA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232E70

	thumb_func_start ov65_02232EDC
ov65_02232EDC: ; 0x02232EDC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #4]
	add r0, r2, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x21
	sub r0, r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	mov r1, #0x24
	bl ov4_021D222C
	ldr r0, [r4, #4]
	add r0, #0x21
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232EDC

	thumb_func_start ov65_02232F00
ov65_02232F00: ; 0x02232F00
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #4]
	add r0, r2, #0
	add r0, #0x22
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x22
	sub r0, r0, r1
	strb r0, [r2]
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, #0x21
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x24
	bl ov4_021D222C
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232F00

	thumb_func_start ov65_02232F30
ov65_02232F30: ; 0x02232F30
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, #0x21
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x24
	bl ov4_021D222C
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232F30

	thumb_func_start ov65_02232F50
ov65_02232F50: ; 0x02232F50
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02232F8E
	bl sub_0200EBC8
	mov r0, #0x62
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #0
	beq _02232F8E
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
_02232F8E:
	pop {r4, pc}
	thumb_func_end ov65_02232F50

	thumb_func_start ov65_02232F90
ov65_02232F90: ; 0x02232F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_0223324C
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235370
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_022336A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02232F90

	thumb_func_start ov65_02232FB0
ov65_02232FB0: ; 0x02232FB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov65_02233240
	cmp r4, r0
	bne _02232FC8
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_02232F90
_02232FC8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02232FB0

	thumb_func_start ov65_02232FCC
ov65_02232FCC: ; 0x02232FCC
	ldr r1, _02232FDC ; =0x00000B64
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02232FD8
	mov r0, #1
	bx lr
_02232FD8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02232FDC: .word 0x00000B64
	thumb_func_end ov65_02232FCC

	thumb_func_start ov65_02232FE0
ov65_02232FE0: ; 0x02232FE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02233058 ; =0x00000B18
	add r4, r2, #0
	mov r2, #0x92
	add r6, r1, #0
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, _0223305C ; =0x02238AB0
	ldr r2, _02233060 ; =ov65_022332C4
	mov r1, #8
	add r3, r5, #0
	str r4, [sp]
	bl sub_02023FCC
	ldr r1, _02233064 ; =0x00000B64
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0200B358
	ldr r1, _02233058 ; =0x00000B18
	add r2, r4, #0
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_022332FC
	mov r0, #0xb9
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov65_022336D4
	add r0, r5, #0
	bl ov65_0223370C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02233058: .word 0x00000B18
_0223305C: .word 0x02238AB0
_02233060: .word ov65_022332C4
_02233064: .word 0x00000B64
	thumb_func_end ov65_02232FE0

	thumb_func_start ov65_02233068
ov65_02233068: ; 0x02233068
	push {r4, lr}
	add r4, r0, #0
	bl ov65_02232FCC
	cmp r0, #0
	beq _022330B6
	add r0, r4, #0
	bl ov65_02233570
	ldr r0, _022330B8 ; =0x00000B64
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, _022330B8 ; =0x00000B64
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0x4c
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	ldr r0, _022330BC ; =0x00000B18
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
_022330B6:
	pop {r4, pc}
	; .align 2, 0
_022330B8: .word 0x00000B64
_022330BC: .word 0x00000B18
	thumb_func_end ov65_02233068

	thumb_func_start ov65_022330C0
ov65_022330C0: ; 0x022330C0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	add r6, r1, #0
	bl ov65_02235270
	add r5, r0, #0
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov65_022352CC
	cmp r0, #3
	blo _022330E6
	cmp r0, #6
	bhi _022330E6
	add r5, r0, #0
_022330E6:
	cmp r5, #3
	blo _02233110
	cmp r5, #6
	bhi _02233110
	ldr r0, _022331C8 ; =0x00000B88
	sub r1, r5, #3
	ldrb r2, [r4, r0]
	cmp r2, r1
	beq _02233110
	strb r1, [r4, r0]
	ldr r0, _022331CC ; =0x000005E1
	bl sub_02005748
	add r0, r4, #0
	bl ov65_022336D4
	ldr r0, _022331D0 ; =0x00000B8D
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r0, #3
	str r1, [r4, r0]
_02233110:
	ldr r0, _022331D4 ; =0x00000B8B
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _02233130
	mov r1, #2
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_02233874
	add r0, r4, #0
	bl ov65_02234D6C
_02233130:
	ldr r0, _022331D4 ; =0x00000B8B
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223315A
	sub r0, #0x27
	ldr r0, [r4, r0]
	bl sub_0202404C
	add r0, r4, #0
	bl ov65_02234A10
	ldr r0, _022331D0 ; =0x00000B8D
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223315A
	add r0, r4, #0
	bl ov65_0223370C
	ldr r0, _022331D0 ; =0x00000B8D
	mov r1, #0
	strb r1, [r4, r0]
_0223315A:
	ldr r0, _022331D4 ; =0x00000B8B
	ldrb r0, [r4, r0]
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _022331C2
	add r0, r4, #0
	bl ov65_02234DD8
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_02233208
	cmp r0, #1
	bne _022331A8
	ldr r1, _022331D8 ; =0x00000B89
	mov r3, #1
	ldrb r2, [r4, r1]
	add r0, r1, #6
	strb r2, [r4, r0]
	mov r0, #0
	strb r0, [r4, r1]
	add r2, r1, #1
	strb r0, [r4, r2]
	add r2, r1, #4
	strb r3, [r4, r2]
	add r2, r1, #7
	str r3, [r4, r2]
	add r1, r1, #2
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov65_02234DA0
	ldr r0, _022331DC ; =0x000005DD
	bl sub_02005748
	b _022331C2
_022331A8:
	cmp r5, #0
	beq _022331C2
	ldr r0, _022331DC ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_0223327C
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_02233874
_022331C2:
	ldr r0, _022331D8 ; =0x00000B89
	ldrb r0, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022331C8: .word 0x00000B88
_022331CC: .word 0x000005E1
_022331D0: .word 0x00000B8D
_022331D4: .word 0x00000B8B
_022331D8: .word 0x00000B89
_022331DC: .word 0x000005DD
	thumb_func_end ov65_022330C0

	thumb_func_start ov65_022331E0
ov65_022331E0: ; 0x022331E0
	push {r4, lr}
	ldr r1, _02233200 ; =0x00000B8B
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	bne _022331FE
	add r1, r1, #2
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _022331FE
	bl ov65_0223370C
	ldr r0, _02233204 ; =0x00000B8D
	mov r1, #0
	strb r1, [r4, r0]
_022331FE:
	pop {r4, pc}
	; .align 2, 0
_02233200: .word 0x00000B8B
_02233204: .word 0x00000B8D
	thumb_func_end ov65_022331E0

	thumb_func_start ov65_02233208
ov65_02233208: ; 0x02233208
	ldr r2, _02233234 ; =0x00000B8B
	ldrb r0, [r0, r2]
	cmp r0, #3
	bne _02233214
	mov r0, #0
	bx lr
_02233214:
	ldr r2, _02233238 ; =0x021BF67C
	mov r0, #0xf0
	ldr r3, [r2, #0x44]
	tst r0, r3
	bne _0223322A
	ldr r2, [r2, #0x48]
	ldr r0, _0223323C ; =0x00000403
	tst r0, r2
	bne _0223322A
	cmp r1, #2
	bne _0223322E
_0223322A:
	mov r0, #1
	bx lr
_0223322E:
	mov r0, #0
	bx lr
	nop
_02233234: .word 0x00000B8B
_02233238: .word 0x021BF67C
_0223323C: .word 0x00000403
	thumb_func_end ov65_02233208

	thumb_func_start ov65_02233240
ov65_02233240: ; 0x02233240
	ldr r1, _02233248 ; =0x00000B89
	ldrb r0, [r0, r1]
	bx lr
	nop
_02233248: .word 0x00000B89
	thumb_func_end ov65_02233240

	thumb_func_start ov65_0223324C
ov65_0223324C: ; 0x0223324C
	push {r4, lr}
	add r4, r0, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _02233276
	ldr r0, _02233278 ; =0x00000B89
	mov r2, #0
	strb r2, [r4, r0]
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #4
	mov r2, #1
	strb r2, [r4, r1]
	add r0, r0, #7
	str r2, [r4, r0]
	add r0, r4, #0
	bl ov65_02234DA0
_02233276:
	pop {r4, pc}
	; .align 2, 0
_02233278: .word 0x00000B89
	thumb_func_end ov65_0223324C

	thumb_func_start ov65_0223327C
ov65_0223327C: ; 0x0223327C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov65_0222DCE0
	cmp r0, #1
	bne _0223328E
	mov r1, #7
	b _02233290
_0223328E:
	mov r1, #2
_02233290:
	cmp r5, #3
	bne _022332A4
	ldr r0, _022332C0 ; =0x00000B8C
	ldrsb r0, [r4, r0]
	add r0, r0, #1
	bl _u32_div_f
	ldr r0, _022332C0 ; =0x00000B8C
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_022332A4:
	ldr r2, _022332C0 ; =0x00000B8C
	ldrsb r3, [r4, r2]
	add r0, r4, r2
	sub r3, r3, #1
	strb r3, [r0]
	ldrsb r2, [r4, r2]
	cmp r2, #0
	bge _022332BC
	mov r2, #0
	ldrsb r2, [r0, r2]
	add r1, r2, r1
	strb r1, [r0]
_022332BC:
	pop {r3, r4, r5, pc}
	nop
_022332C0: .word 0x00000B8C
	thumb_func_end ov65_0223327C

	thumb_func_start ov65_022332C4
ov65_022332C4: ; 0x022332C4
	push {r3, r4, r5, lr}
	ldr r4, _022332F4 ; =0x00000B88
	ldrb r3, [r2, r4]
	lsl r3, r3, #3
	add r0, r0, r3
	add r3, r4, #0
	add r5, r2, r0
	sub r3, #0x20
	ldrb r3, [r5, r3]
	cmp r3, #2
	bne _022332F2
	add r3, r4, #1
	ldrb r3, [r2, r3]
	cmp r3, #0
	bne _022332F2
	cmp r1, #0
	bne _022332F2
	add r1, r0, #1
	add r0, r4, #1
	strb r1, [r2, r0]
	ldr r0, _022332F8 ; =0x000005DD
	bl sub_02005748
_022332F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022332F4: .word 0x00000B88
_022332F8: .word 0x000005DD
	thumb_func_end ov65_022332C4

	thumb_func_start ov65_022332FC
ov65_022332FC: ; 0x022332FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	str r1, [sp, #0x14]
	ldr r0, [r7, r0]
	mov r1, #4
	str r2, [sp, #0x18]
	bl sub_02019EBC
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r0, #0xa0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0x13
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #4
	mov r3, #0x80
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0x57
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	mov r1, #0xf
	mov r3, #4
	bl sub_020070E8
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0x57
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	mov r1, #0x12
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0x57
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	mov r1, #0x11
	mov r3, #4
	bl sub_0200710C
	ldr r0, [sp, #0x18]
	mov r3, #0xb2
	str r0, [sp]
	lsl r3, r3, #4
	ldr r0, [sp, #0x14]
	mov r1, #0x14
	mov r2, #0
	add r3, r7, r3
	bl sub_020071D0
	ldr r1, _0223355C ; =0x00000B1C
	str r0, [r7, r1]
	add r0, r1, #4
	ldr r0, [r7, r0]
	mov r1, #0x30
	bl ov65_022335F8
	mov r0, #0x2d
	lsl r0, r0, #6
	mov r6, #0
	add r5, r7, r0
	add r4, r7, #0
_022333BC:
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, #0x15
	mov r2, #0
	add r3, r5, #0
	bl sub_020071D0
	ldr r1, _02233560 ; =0x00000B24
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl ov65_022335F8
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #7
	blt _022333BC
	ldr r0, [sp, #0x18]
	mov r3, #0xb6
	str r0, [sp]
	lsl r3, r3, #4
	ldr r0, [sp, #0x14]
	mov r1, #0x1c
	mov r2, #0
	add r3, r7, r3
	bl sub_020071D0
	ldr r1, _02233564 ; =0x00000B5C
	str r0, [r7, r1]
	add r0, r1, #4
	ldr r0, [r7, r0]
	mov r1, #0x30
	bl ov65_022335F8
	mov r1, #0x1e
	ldr r2, [sp, #0x18]
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02002E98
	mov r0, #0
	ldr r1, _02233568 ; =0x00000B94
	str r0, [sp, #0x1c]
	add r0, r7, r1
	str r0, [sp, #0x30]
	mov r0, #1
	add r1, #0x80
	str r0, [sp, #0x2c]
	add r0, r7, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x24]
_0223342E:
	ldr r0, [sp, #0x30]
	bl sub_0201A7A0
	ldr r0, [sp, #0x1c]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #6
	mul r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r2, #5
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x1c]
	add r1, r0, r1
	asr r0, r1, #2
	lsl r5, r0, #4
	ldr r0, [sp, #0x20]
	add r3, r5, #4
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x30]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x30]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x30]
	bl sub_0201A9A4
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r6, #0
	add r5, r5, #1
	str r0, [sp, #0x34]
_022334A6:
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x34]
	lsl r3, r5, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r2, #5
	add r1, r6, r0
	mov r0, #6
	mul r0, r1
	add r0, #0xda
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A9A4
	add r6, r6, #1
	add r4, #0x10
	add r5, #0xc
	cmp r6, #2
	blt _022334A6
	ldr r0, [sp, #0x30]
	add r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, #0x1b
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, #0x20
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _0223342E
	mov r3, #1
	str r3, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x57
	ldr r1, _0223356C ; =0x00000D14
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r7, r1
	mov r2, #7
	bl sub_0201A7E8
	ldr r0, _0223356C ; =0x00000D14
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	ldr r0, _0223356C ; =0x00000D14
	add r0, r7, r0
	bl sub_0201A9A4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	bl ov65_02234A68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223355C: .word 0x00000B1C
_02233560: .word 0x00000B24
_02233564: .word 0x00000B5C
_02233568: .word 0x00000B94
_0223356C: .word 0x00000D14
	thumb_func_end ov65_022332FC

	thumb_func_start ov65_02233570
ov65_02233570: ; 0x02233570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	bl ov65_02234CFC
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _022335E4 ; =0x00000B94
	ldr r0, [sp]
	add r7, r0, r1
	add r1, #0x80
	add r6, r0, r1
_02233588:
	add r0, r7, #0
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_02233592:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _02233592
	ldr r0, [sp, #4]
	add r7, #0x10
	add r0, r0, #1
	add r6, #0x20
	str r0, [sp, #4]
	cmp r0, #8
	blt _02233588
	ldr r1, _022335E8 ; =0x00000D14
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_0201A8FC
	ldr r1, _022335EC ; =0x00000B1C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl sub_020181C4
	ldr r4, [sp]
	ldr r6, _022335F0 ; =0x00000B24
	mov r5, #0
_022335C8:
	ldr r0, [r4, r6]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #7
	blt _022335C8
	ldr r1, _022335F4 ; =0x00000B5C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022335E4: .word 0x00000B94
_022335E8: .word 0x00000D14
_022335EC: .word 0x00000B1C
_022335F0: .word 0x00000B24
_022335F4: .word 0x00000B5C
	thumb_func_end ov65_02233570

	thumb_func_start ov65_022335F8
ov65_022335F8: ; 0x022335F8
	push {r4, r5, r6, r7}
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xc
	mov ip, r1
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsr r2, r1, #3
	lsr r7, r0, #3
	mov r0, #0
	cmp r7, #0
	ble _02233634
	add r3, r0, #0
_02233612:
	mov r1, #0
	cmp r2, #0
	ble _0223362C
	lsl r6, r3, #1
	mov r4, ip
	add r4, r4, r6
_0223361E:
	ldrh r6, [r4]
	add r1, r1, #1
	add r6, r6, r5
	strh r6, [r4]
	add r4, r4, #2
	cmp r1, r2
	blt _0223361E
_0223362C:
	add r0, r0, #1
	add r3, r3, r2
	cmp r0, r7
	blt _02233612
_02233634:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov65_022335F8

	thumb_func_start ov65_02233638
ov65_02233638: ; 0x02233638
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r6, #0
	bne _02233648
	bl GF_AssertFail
_02233648:
	cmp r4, #0
	bne _02233650
	bl GF_AssertFail
_02233650:
	cmp r4, #3
	blo _02233658
	bl GF_AssertFail
_02233658:
	ldr r0, _02233668 ; =0x00000B67
	add r1, r5, r6
	strb r4, [r1, r0]
	mov r1, #1
	add r0, #0x26
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02233668: .word 0x00000B67
	thumb_func_end ov65_02233638

	thumb_func_start ov65_0223366C
ov65_0223366C: ; 0x0223366C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02233678
	bl GF_AssertFail
_02233678:
	ldr r0, _02233688 ; =0x00000B67
	mov r2, #0
	add r1, r5, r4
	strb r2, [r1, r0]
	mov r1, #1
	add r0, #0x26
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233688: .word 0x00000B67
	thumb_func_end ov65_0223366C

	thumb_func_start ov65_0223368C
ov65_0223368C: ; 0x0223368C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02233698
	bl GF_AssertFail
_02233698:
	ldr r0, _022336A0 ; =0x00000B67
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022336A0: .word 0x00000B67
	thumb_func_end ov65_0223368C

	thumb_func_start ov65_022336A4
ov65_022336A4: ; 0x022336A4
	push {r3, lr}
	ldr r2, _022336C0 ; =0x00000B8B
	ldrb r3, [r0, r2]
	cmp r3, #0
	beq _022336B4
	bl ov65_02233874
	pop {r3, pc}
_022336B4:
	mov r3, #1
	add r1, r2, #5
	str r3, [r0, r1]
	bl ov65_0223370C
	pop {r3, pc}
	; .align 2, 0
_022336C0: .word 0x00000B8B
	thumb_func_end ov65_022336A4

	thumb_func_start ov65_022336C4
ov65_022336C4: ; 0x022336C4
	mov r1, #0xb9
	mov r2, #1
	lsl r1, r1, #4
	str r2, [r0, r1]
	sub r1, r1, #3
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov65_022336C4

	thumb_func_start ov65_022336D4
ov65_022336D4: ; 0x022336D4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _02233708 ; =0x00000B88
	mov r2, #0
	ldrb r0, [r4, r0]
	mov r1, #4
	add r3, r2, #0
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02019E2C
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02233708: .word 0x00000B88
	thumb_func_end ov65_022336D4

	thumb_func_start ov65_0223370C
ov65_0223370C: ; 0x0223370C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	cmp r1, #1
	bne _02233740
	mov r2, #0
	str r2, [r6, r0]
	mov r0, #1
	str r0, [sp, #0x18]
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x57
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	b _02233744
_02233740:
	mov r0, #0
	str r0, [sp, #0x18]
_02233744:
	ldr r1, _02233864 ; =0x00000B94
	mov r7, #0
	add r0, r6, r1
	add r1, #0x80
	str r0, [sp, #0x14]
	add r0, r6, r1
	str r0, [sp, #0x10]
_02233752:
	ldr r0, _02233868 ; =0x00000B88
	ldrb r1, [r6, r0]
	sub r0, #0x21
	lsl r1, r1, #3
	add r1, r7, r1
	add r4, r1, #1
	add r1, r6, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02233780
	ldr r0, [r6, #0]
	sub r1, r4, #1
	mov r2, #8
	bl sub_0202AD2C
	cmp r0, #0
	bne _0223377A
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02233784
_0223377A:
	mov r0, #0
	str r0, [sp, #0x1c]
	b _02233784
_02233780:
	mov r0, #2
	str r0, [sp, #0x1c]
_02233784:
	asr r0, r7, #1
	lsr r0, r0, #0x1e
	add r0, r7, r0
	asr r2, r0, #2
	lsr r3, r7, #0x1f
	lsl r1, r7, #0x1e
	sub r1, r1, r3
	mov r0, #0x1e
	ror r1, r0
	add r0, r3, r1
	ldr r1, _0223386C ; =0x00000B89
	mov ip, r0
	ldrb r0, [r6, r1]
	cmp r4, r0
	bne _022337A8
	add r1, r1, #1
	ldrb r5, [r6, r1]
	b _022337AA
_022337A8:
	mov r5, #0
_022337AA:
	cmp r4, r0
	beq _022337B6
	ldr r0, _02233870 ; =0x00000B8F
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _022337BA
_022337B6:
	mov r1, #1
	b _022337BC
_022337BA:
	mov r1, #0
_022337BC:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _022337C6
	cmp r1, #1
	bne _02233832
_022337C6:
	lsl r1, r2, #0x1c
	mov r3, #6
	mov r2, ip
	mul r3, r2
	lsl r2, r3, #0x18
	ldr r3, [sp, #0x1c]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	lsl r3, r3, #0x18
	str r0, [sp]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov65_02234788
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _0223380A
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	str r7, [sp]
	bl ov65_02234900
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	str r7, [sp]
	bl ov65_0223498C
	b _02233832
_0223380A:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	bl sub_0201A9A4
	ldr r5, [sp, #0x10]
	mov r4, #0
_0223381C:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A9A4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223381C
_02233832:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
	cmp r7, #8
	blt _02233752
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #6
	bl sub_0201C3C0
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233864: .word 0x00000B94
_02233868: .word 0x00000B88
_0223386C: .word 0x00000B89
_02233870: .word 0x00000B8F
	thumb_func_end ov65_0223370C

	thumb_func_start ov65_02233874
ov65_02233874: ; 0x02233874
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02233930 ; =0x00000B89
	ldr r0, [r5, #0]
	ldrb r1, [r5, r1]
	mov r2, #8
	sub r1, r1, #1
	bl sub_0202AD2C
	cmp r0, #1
	bne _02233892
	mov r4, #7
	b _02233894
_02233892:
	mov r4, #8
_02233894:
	ldr r0, _02233934 ; =0x00000B8C
	ldrsb r1, [r5, r0]
	sub r0, #0x4c
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r3, [r1, r0]
	mov r0, #0x57
	add r2, r3, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl sub_02019574
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	mov r2, #0
	ldr r0, [r5, r0]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019E2C
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	bl ov65_0222DCE0
	cmp r0, #0
	bne _022338EC
	add r0, r5, #0
	bl ov65_02234628
_022338EC:
	ldr r0, _02233938 ; =0x00000D14
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r2, _02233934 ; =0x00000B8C
	add r0, r5, #0
	ldrsb r2, [r5, r2]
	add r1, r6, #0
	lsl r3, r2, #2
	ldr r2, _0223393C ; =0x02239C40
	ldr r2, [r2, r3]
	blx r2
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, _02233938 ; =0x00000D14
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02233930: .word 0x00000B89
_02233934: .word 0x00000B8C
_02233938: .word 0x00000D14
_0223393C: .word 0x02239C40
	thumb_func_end ov65_02233874

	thumb_func_start ov65_02233940
ov65_02233940: ; 0x02233940
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02233CD4 ; =0x00000B89
	mov r2, #8
	ldrb r0, [r5, r0]
	sub r4, r0, #1
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0202AD2C
	cmp r0, #0
	bne _0223395E
	ldr r0, _02233CD8 ; =0x00050600
	b _02233962
_0223395E:
	mov r0, #0xc1
	lsl r0, r0, #0xa
_02233962:
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02234F68
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x2a
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	add r2, #0x79
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _02233CE0 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	mov r3, #0x20
	bl sub_0201D78C
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02234FA8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0x14
	add r7, r0, #0
	bl ov65_0223484C
	mov r2, #0x5a
	lsl r2, r2, #2
	add r1, r0, #0
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #8
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x71
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #0x68
	bl sub_0201D78C
	mov r0, #0x36
	bl sub_02025E6C
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0202AF34
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025EC0
	ldr r0, _02233CDC ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl sub_0200B498
	add r0, r6, #0
	bl sub_020181C4
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x2b
	bl sub_0200B1B8
	mov r0, #0x20
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r1, #0x96
	mov r0, #0x5a
	add r2, r1, #0
	lsl r0, r0, #2
	add r2, #0xda
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x20
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x2c
	bl sub_0200B1B8
	mov r0, #0x38
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #1
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #4
	bl sub_0200B60C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x2d
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0x38
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #0x78
	bl sub_0201D78C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #2
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #4
	bl sub_0200B60C
	mov r0, #0x5a
	mov r1, #0x2e
	lsl r0, r0, #2
	lsl r2, r1, #3
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x38
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	mov r0, #0x5a
	mov r1, #0x2f
	lsl r0, r0, #2
	lsl r2, r1, #3
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x50
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #3
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #4
	bl sub_0200B60C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x30
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x50
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	add r0, r5, #0
	bl ov65_0222DCF8
	cmp r0, #1
	bne _02233CF4
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x31
	bl sub_0200B1B8
	mov r0, #0x68
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #9
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #4
	bl sub_0200B60C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x32
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233CDC ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x68
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 ; =0x00000D14
	b _02233CE8
	nop
_02233CD4: .word 0x00000B89
_02233CD8: .word 0x00050600
_02233CDC: .word 0x00000B18
_02233CE0: .word 0x00000D14
_02233CE4: .word 0x00010200
_02233CE8:
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
_02233CF4:
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x33
	bl sub_0200B1B8
	mov r0, #0x80
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233E10 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233E14 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #6
	bl sub_0202AD2C
	add r2, r0, #0
	beq _02233DC8
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233E18 ; =0x00000B18
	mov r1, #2
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #4
	bl sub_0202AD2C
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233E18 ; =0x00000B18
	mov r3, #4
	ldr r0, [r5, r0]
	bl sub_0200B60C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #5
	bl sub_0202AD2C
	add r2, r0, #0
	ldr r0, _02233E18 ; =0x00000B18
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200C2E0
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x4a
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02233E18 ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x80
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233E10 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233E14 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
_02233DC8:
	mov r3, #2
	str r3, [sp]
	mov r0, #0x57
	ldr r1, _02233E1C ; =0x00000B08
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #6
	bl ov65_0222EA38
	ldr r0, [sp, #0x10]
	add r0, #0x21
	str r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _02233DEE
	mov r1, #8
	b _02233DF0
_02233DEE:
	mov r1, #1
_02233DF0:
	mov r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, _02233E1C ; =0x00000B08
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #6
	mov r3, #0x1c
	bl ov65_0222E9C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233E10: .word 0x00010200
_02233E14: .word 0x00000D14
_02233E18: .word 0x00000B18
_02233E1C: .word 0x00000B08
	thumb_func_end ov65_02233940

	thumb_func_start ov65_02233E20
ov65_02233E20: ; 0x02233E20
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02233EE0 ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x34
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EE4 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02233EE8 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EEC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233EE8 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x71
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EEC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02233EE8 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x70
	add r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233EE0: .word 0x00000B89
_02233EE4: .word 0x000F0E00
_02233EE8: .word 0x00000D14
_02233EEC: .word 0x00010200
	thumb_func_end ov65_02233E20

	thumb_func_start ov65_02233EF0
ov65_02233EF0: ; 0x02233EF0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0223415C ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x35
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234160 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02234164 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3c
	bl sub_0200B1B8
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3e
	bl sub_0200B1B8
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x73
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x42
	mov r2, #0x75
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x40
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x72
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x42
	mov r2, #0x74
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3d
	bl sub_0200B1B8
	mov r0, #0x58
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3e
	bl sub_0200B1B8
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe8
	sub r3, r1, r0
	mov r0, #0x58
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x70
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x77
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x42
	mov r2, #0x79
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x80
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x76
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x42
	mov r2, #0x78
	add r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223415C: .word 0x00000B89
_02234160: .word 0x000F0E00
_02234164: .word 0x00000D14
_02234168: .word 0x00010200
	thumb_func_end ov65_02233EF0

	thumb_func_start ov65_0223416C
ov65_0223416C: ; 0x0223416C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02234298 ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x36
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _0223429C ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022342A0 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3f
	bl sub_0200B1B8
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r1, r0, #1
	mov r0, #0xb4
	sub r3, r0, r1
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0x87
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x43
	mov r2, #0x88
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x50
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0x86
	add r3, r4, #0
	bl ov65_02234694
	mov r0, #0xd4
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x43
	mov r2, #0x8a
	add r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02234298: .word 0x00000B89
_0223429C: .word 0x000F0E00
_022342A0: .word 0x00000D14
_022342A4: .word 0x00010200
	thumb_func_end ov65_0223416C

	thumb_func_start ov65_022342A8
ov65_022342A8: ; 0x022342A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	bl sub_0203068C
	add r7, r0, #0
	ldr r0, _022343BC ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x37
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C0 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022343C4 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	add r0, r7, #0
	mov r1, #0x7c
	add r2, r4, #0
	bl sub_02030698
	add r1, r6, #0
	bl sub_0200B32C
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r1, r0, #1
	mov r0, #0x21
	sub r3, r0, r1
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022343C8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 ; =0x00000D14
	add r2, r6, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #4
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x6c
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x7b
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x50
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x6c
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #0x7a
	add r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022343BC: .word 0x00000B89
_022343C0: .word 0x000F0E00
_022343C4: .word 0x00000D14
_022343C8: .word 0x00010200
	thumb_func_end ov65_022342A8

	thumb_func_start ov65_022343CC
ov65_022343CC: ; 0x022343CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0223448C ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x38
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234490 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02234494 ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #5
	add r3, r4, #0
	bl ov65_022346C4
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234498 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234494 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0x8f
	add r3, r4, #0
	bl ov65_02234694
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234498 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234494 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0x8e
	add r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223448C: .word 0x00000B89
_02234490: .word 0x000F0E00
_02234494: .word 0x00000D14
_02234498: .word 0x00010200
	thumb_func_end ov65_022343CC

	thumb_func_start ov65_0223449C
ov65_0223449C: ; 0x0223449C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202B370
	add r6, r0, #0
	ldr r0, _02234614 ; =0x00000B89
	mov r2, #0x5a
	ldrb r0, [r5, r0]
	lsl r2, r2, #2
	mov r1, #0x46
	sub r4, r0, #1
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234618 ; =0x000F0E00
	add r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223461C ; =0x00000D14
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	ldr r0, _02234620 ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0200C0B0
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x47
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02234620 ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x48
	mov r3, #0xa4
	bl ov65_02234708
	ldr r0, _02234620 ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #1
	bl sub_0200C0B0
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x47
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02234620 ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0x30
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0202AD2C
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x48
	mov r3, #0xa4
	bl ov65_02234708
	ldr r0, _02234620 ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #2
	bl sub_0200C0B0
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x47
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02234620 ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r0, #0x48
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r3, #8
	bl sub_0201D78C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0202AD2C
	add r2, r0, #0
	mov r1, #0x48
	add r0, r5, #0
	mov r3, #0xa4
	str r1, [sp]
	bl ov65_02234708
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02234614: .word 0x00000B89
_02234618: .word 0x000F0E00
_0223461C: .word 0x00000D14
_02234620: .word 0x00000B18
_02234624: .word 0x00010200
	thumb_func_end ov65_0223449C

	thumb_func_start ov65_02234628
ov65_02234628: ; 0x02234628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0
	add r5, r0, #0
	mov r7, #1
	add r6, r4, #0
_02234634:
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r4, #0
	str r7, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrh r1, [r0]
	add r2, #0x1a
	lsl r2, r2, #0x18
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsr r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r6, #0
	bl sub_020198E8
	add r4, r4, #1
	cmp r4, #5
	blt _02234634
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #6
	mov r0, #0x57
	str r1, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x1a
	mov r3, #0
	bl sub_02019E2C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02234628

	thumb_func_start ov65_02234694
ov65_02234694: ; 0x02234694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r2, #0
	add r7, r3, #0
	add r4, r1, #0
	bl sub_0203068C
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02030698
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02234708
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02234694

	thumb_func_start ov65_022346C4
ov65_022346C4: ; 0x022346C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #6
	blo _022346D6
	bl GF_AssertFail
_022346D6:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0203068C
	ldr r1, _02234704 ; =0x02238998
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r2, r7, #0
	bl sub_02030698
	cmp r0, #0
	bne _022346F4
	mov r1, #0x39
	b _022346F6
_022346F4:
	mov r1, #0x3a
_022346F6:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl sub_0200B1B8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234704: .word 0x02238998
	thumb_func_end ov65_022346C4

	thumb_func_start ov65_02234708
ov65_02234708: ; 0x02234708
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223477C ; =0x00000B18
	add r6, r1, #0
	add r4, r3, #0
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _0223477C ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r3, r4, r0
	ldr r0, [sp, #0x20]
	mov r2, #0xff
	str r0, [sp]
	str r2, [sp, #4]
	ldr r0, _02234780 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _02234784 ; =0x00000D14
	str r1, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223477C: .word 0x00000B18
_02234780: .word 0x00010200
_02234784: .word 0x00000D14
	thumb_func_end ov65_02234708

	thumb_func_start ov65_02234788
ov65_02234788: ; 0x02234788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r2, [sp, #0x1c]
	ldr r4, [sp, #0x38]
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #4
	blo _0223479E
	bl GF_AssertFail
_0223479E:
	cmp r4, #3
	bne _022347A4
	mov r4, #1
_022347A4:
	cmp r4, #2
	bhs _022347EA
	mov r0, #0x10
	str r0, [sp]
	mov r1, #6
	mov r0, #0xb2
	str r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r7, #0
	add r0, #0xc
	str r0, [sp, #8]
	lsl r0, r4, #0x14
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #0x12
	str r0, [sp, #0x18]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	bl sub_020198E8
	b _02234828
_022347EA:
	mov r0, #0x10
	mov r2, #0xb2
	str r0, [sp]
	mov r1, #6
	str r1, [sp, #4]
	lsl r2, r2, #4
	ldr r3, [r5, r2]
	mov r2, #0x12
	add r3, #0xc
	lsl r2, r2, #6
	add r2, r3, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, r6, #0
	mul r2, r1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0x12
	str r0, [sp, #0x18]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	add r2, r7, #0
	bl sub_020198E8
_02234828:
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #4
	mov r1, #6
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	add r2, r7, #0
	bl sub_02019E2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02234788

	thumb_func_start ov65_0223484C
ov65_0223484C: ; 0x0223484C
	ldr r2, _022348F8 ; =0x00010200
	cmp r0, #0x1b
	str r2, [r1, #0]
	bhi _022348F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234860: ; jump table
	.short _022348F4 - _02234860 - 2 ; case 0
	.short _02234898 - _02234860 - 2 ; case 1
	.short _022348A0 - _02234860 - 2 ; case 2
	.short _022348A0 - _02234860 - 2 ; case 3
	.short _022348A0 - _02234860 - 2 ; case 4
	.short _022348A0 - _02234860 - 2 ; case 5
	.short _022348A0 - _02234860 - 2 ; case 6
	.short _022348A0 - _02234860 - 2 ; case 7
	.short _022348C0 - _02234860 - 2 ; case 8
	.short _022348A8 - _02234860 - 2 ; case 9
	.short _022348AC - _02234860 - 2 ; case 10
	.short _022348B0 - _02234860 - 2 ; case 11
	.short _022348B4 - _02234860 - 2 ; case 12
	.short _022348B8 - _02234860 - 2 ; case 13
	.short _022348BC - _02234860 - 2 ; case 14
	.short _022348C8 - _02234860 - 2 ; case 15
	.short _022348F0 - _02234860 - 2 ; case 16
	.short _022348F4 - _02234860 - 2 ; case 17
	.short _022348CC - _02234860 - 2 ; case 18
	.short _022348D4 - _02234860 - 2 ; case 19
	.short _022348D8 - _02234860 - 2 ; case 20
	.short _022348E0 - _02234860 - 2 ; case 21
	.short _022348E4 - _02234860 - 2 ; case 22
	.short _022348EC - _02234860 - 2 ; case 23
	.short _022348E4 - _02234860 - 2 ; case 24
	.short _022348EC - _02234860 - 2 ; case 25
	.short _022348E4 - _02234860 - 2 ; case 26
	.short _022348EC - _02234860 - 2 ; case 27
_02234898:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x24
	str r2, [r1, #0]
	bx lr
_022348A0:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x1b
	str r2, [r1, #0]
	bx lr
_022348A8:
	mov r0, #0x60
	bx lr
_022348AC:
	mov r0, #0x61
	bx lr
_022348B0:
	mov r0, #0x5f
	bx lr
_022348B4:
	mov r0, #0x63
	bx lr
_022348B8:
	mov r0, #0x64
	bx lr
_022348BC:
	mov r0, #0x62
	bx lr
_022348C0:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x1d
	str r2, [r1, #0]
	bx lr
_022348C8:
	mov r0, #0x1c
	bx lr
_022348CC:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x1f
	str r2, [r1, #0]
	bx lr
_022348D4:
	mov r0, #0x1e
	bx lr
_022348D8:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x21
	str r2, [r1, #0]
	bx lr
_022348E0:
	mov r0, #0x20
	bx lr
_022348E4:
	ldr r2, _022348FC ; =0x00020E00
	mov r0, #0x23
	str r2, [r1, #0]
	bx lr
_022348EC:
	mov r0, #0x22
	bx lr
_022348F0:
	mov r0, #0x4f
	bx lr
_022348F4:
	mov r0, #0x5c
	bx lr
	; .align 2, 0
_022348F8: .word 0x00010200
_022348FC: .word 0x00020E00
	thumb_func_end ov65_0223484C

	thumb_func_start ov65_02234900
ov65_02234900: ; 0x02234900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	str r2, [sp, #0x10]
	add r4, r3, #0
	bl sub_0201ADA4
	ldr r0, _02234980 ; =0x02238934
	mov r2, #8
	ldrb r7, [r0, r4]
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	bl sub_0202AD2C
	cmp r0, #0
	bne _02234930
	ldr r4, _02234984 ; =0x00050600
	b _02234934
_02234930:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02234934:
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov65_02234F68
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	mov r1, #0x2a
	bl sub_0200B1B8
	mov r2, #0x5e
	ldr r0, _02234988 ; =0x00000B18
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0200C388
	str r7, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	add r2, #0x79
	ldr r2, [r5, r2]
	add r0, r6, #0
	mov r1, #1
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234980: .word 0x02238934
_02234984: .word 0x00050600
_02234988: .word 0x00000B18
	thumb_func_end ov65_02234900

	thumb_func_start ov65_0223498C
ov65_0223498C: ; 0x0223498C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	sub r1, r2, #1
	add r6, r0, #0
	add r4, r3, #0
	bl ov65_02234FA8
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov65_0222DD20
	str r0, [sp, #8]
	ldr r0, _02234A08 ; =0x02238934
	ldrb r0, [r0, r4]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_022349B2:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	cmp r4, #0
	bne _022349D2
	ldr r0, [sp, #8]
	ldr r1, _02234A0C ; =0x00000B08
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	add r3, r7, #0
	bl ov65_0222EB1C
	b _022349F6
_022349D2:
	ldr r0, [sp, #0xc]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _022349E0
	mov r0, #8
	b _022349E2
_022349E0:
	mov r0, #1
_022349E2:
	ldr r1, _02234A0C ; =0x00000B08
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	add r3, r7, #0
	bl ov65_0222EAD0
_022349F6:
	add r0, r5, #0
	bl sub_0201A9A4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _022349B2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234A08: .word 0x02238934
_02234A0C: .word 0x00000B08
	thumb_func_end ov65_0223498C

	thumb_func_start ov65_02234A10
ov65_02234A10: ; 0x02234A10
	push {r3, r4}
	ldr r1, _02234A60 ; =0x00000B89
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02234A5C
	add r2, r1, #5
	ldrb r2, [r0, r2]
	add r3, r2, #1
	add r2, r1, #5
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	add r2, r1, #1
	ldrb r3, [r0, r2]
	ldr r2, _02234A64 ; =0x02238938
	ldrb r2, [r2, r3]
	cmp r4, r2
	blo _02234A5C
	mov r3, #0
	add r2, r1, #5
	strb r3, [r0, r2]
	add r2, r1, #1
	ldrb r2, [r0, r2]
	add r4, r2, #1
	add r2, r1, #1
	strb r4, [r0, r2]
	mov r2, #1
	add r4, r1, #4
	strb r2, [r0, r4]
	add r4, r1, #1
	ldrb r4, [r0, r4]
	cmp r4, #4
	blo _02234A5C
	add r4, r1, #5
	strb r3, [r0, r4]
	add r4, r1, #1
	strb r3, [r0, r4]
	add r1, r1, #2
	strb r2, [r0, r1]
_02234A5C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02234A60: .word 0x00000B89
_02234A64: .word 0x02238938
	thumb_func_end ov65_02234A10

	thumb_func_start ov65_02234A68
ov65_02234A68: ; 0x02234A68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x12c
	ldr r6, _02234CCC ; =0x02238B38
	str r2, [sp, #0x2c]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0x9c
	mov r2, #0x12
_02234A78:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234A78
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x2a
	mov r3, #0
	bl sub_02009A4C
	ldr r1, _02234CD0 ; =0x00000D24
	mov r2, #0x2b
	str r0, [r5, r1]
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_02009B04
	ldr r1, _02234CD4 ; =0x00000D28
	mov r2, #0x28
	str r0, [r5, r1]
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _02234CD8 ; =0x00000D2C
	mov r2, #0x29
	str r0, [r5, r1]
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0xd3
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200A450
	cmp r0, #0
	bne _02234B1E
	bl GF_AssertFail
_02234B1E:
	ldr r0, _02234CD4 ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_0200A640
	cmp r0, #0
	bne _02234B2E
	bl GF_AssertFail
_02234B2E:
	ldr r0, _02234CD0 ; =0x00000D24
	ldr r0, [r5, r0]
	bl sub_02009D4C
	ldr r0, _02234CD4 ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r1, #0x1e
	add r0, r1, #0
	mov r3, #0xae
	str r1, [sp]
	sub r0, #0x1f
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x78
	add r2, r1, #0
	bl sub_020093B4
	mov r0, #0
	add r4, sp, #0x9c
	ldr r7, _02234CDC ; =0x02238930
	str r0, [sp, #0x34]
	str r4, [sp, #0x30]
	add r6, r5, #0
_02234B86:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [r4, #0]
	add r0, sp, #0x78
	str r0, [r4, #4]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x30]
	bl sub_02021AA0
	ldr r1, _02234CE0 ; =0x00000D34
	str r0, [r6, r1]
	add r0, r1, #0
	ldrb r1, [r7]
	ldr r0, [r6, r0]
	bl sub_02021D6C
	ldr r0, [sp, #0x30]
	add r4, #0x30
	add r0, #0x30
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r6, r6, #4
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x34]
	cmp r0, #3
	blt _02234B86
	ldr r1, [sp, #0x2c]
	mov r0, #2
	bl sub_02002BB8
	add r0, sp, #0x68
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x68
	mov r2, #8
	mov r3, #2
	bl sub_0201A870
	ldr r1, [sp, #0x2c]
	mov r0, #0x40
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x49
	add r2, r6, #0
	bl sub_0200B1B8
	mov r1, #0x5e
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	mov r3, #0
	neg r4, r0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02234CE4 ; =0x00010200
	mov r1, #2
	str r0, [sp, #8]
	add r0, sp, #0x68
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x68
	bl sub_02012B20
	mov r1, #2
	add r6, r0, #0
	bl sub_02012B58
	mov r3, #0x35
	lsl r3, r3, #6
	mov r1, #1
	mov r2, #2
	add r3, r5, r3
	bl sub_0201ED94
	cmp r0, #0
	bne _02234C54
	bl GF_AssertFail
_02234C54:
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x40]
	ldr r0, _02234CD4 ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_0200A72C
	str r0, [sp, #0x44]
	ldr r0, _02234CE8 ; =0x00000D38
	ldr r1, [r5, r0]
	add r0, #0xc
	str r1, [sp, #0x48]
	ldr r0, [r5, r0]
	add r1, r6, #0
	str r0, [sp, #0x4c]
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	mov r0, #2
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x50]
	str r0, [sp, #0x64]
	add r0, sp, #0x38
	bl sub_02012B60
	ldr r1, _02234CEC ; =0x00000D4C
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02012B48
	add r0, sp, #0x68
	bl sub_0201A8FC
	mov r0, #2
	bl sub_02002C60
	ldr r0, [sp, #0x2c]
	ldr r2, _02234CF0 ; =ov65_02234E40
	str r0, [sp]
	ldr r0, _02234CF4 ; =0x0223895C
	mov r1, #3
	add r3, r5, #0
	bl sub_02023FCC
	ldr r1, _02234CF8 ; =0x00000D5C
	str r0, [r5, r1]
	add sp, #0x12c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02234CCC: .word 0x02238B38
_02234CD0: .word 0x00000D24
_02234CD4: .word 0x00000D28
_02234CD8: .word 0x00000D2C
_02234CDC: .word 0x02238930
_02234CE0: .word 0x00000D34
_02234CE4: .word 0x00010200
_02234CE8: .word 0x00000D38
_02234CEC: .word 0x00000D4C
_02234CF0: .word ov65_02234E40
_02234CF4: .word 0x0223895C
_02234CF8: .word 0x00000D5C
	thumb_func_end ov65_02234A68

	thumb_func_start ov65_02234CFC
ov65_02234CFC: ; 0x02234CFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02234D58 ; =0x00000D5C
	ldr r0, [r5, r0]
	bl sub_02024034
	ldr r0, _02234D5C ; =0x00000D4C
	ldr r0, [r5, r0]
	bl sub_02012BD8
	mov r0, #0x35
	lsl r0, r0, #6
	add r0, r5, r0
	bl sub_0201EE28
	ldr r7, _02234D60 ; =0x00000D34
	mov r6, #0
	add r4, r5, #0
_02234D20:
	ldr r0, [r4, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02234D20
	ldr r0, _02234D64 ; =0x00000D24
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	ldr r0, _02234D68 ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r7, #0xae
	ldr r6, _02234D64 ; =0x00000D24
	mov r4, #0
	lsl r7, r7, #2
_02234D46:
	ldr r0, [r5, r7]
	ldr r1, [r5, r6]
	bl sub_02009D68
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02234D46
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234D58: .word 0x00000D5C
_02234D5C: .word 0x00000D4C
_02234D60: .word 0x00000D34
_02234D64: .word 0x00000D24
_02234D68: .word 0x00000D28
	thumb_func_end ov65_02234CFC

	thumb_func_start ov65_02234D6C
ov65_02234D6C: ; 0x02234D6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xd5
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x10
	bl sub_0201FF74
	ldr r0, _02234D98 ; =0x00000D54
	mov r4, #0
	ldr r6, _02234D9C ; =0x00000B18
	str r4, [r5, r0]
_02234D86:
	add r0, r5, r6
	add r1, r4, #0
	bl ov65_02234E50
	add r4, r4, #1
	cmp r4, #3
	blt _02234D86
	pop {r4, r5, r6, pc}
	nop
_02234D98: .word 0x00000D54
_02234D9C: .word 0x00000B18
	thumb_func_end ov65_02234D6C

	thumb_func_start ov65_02234DA0
ov65_02234DA0: ; 0x02234DA0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd5
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _02234DC2
	sub r0, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _02234DD4 ; =0x00000D4C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020129D0
_02234DC2:
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x10
	bl sub_0201FF74
	pop {r4, pc}
	nop
_02234DD4: .word 0x00000D4C
	thumb_func_end ov65_02234DA0

	thumb_func_start ov65_02234DD8
ov65_02234DD8: ; 0x02234DD8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xd5
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02234DEA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02234DEA:
	mov r2, #3
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #0xff
	add r0, #8
	add r1, #0xc
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_0202404C
	mov r7, #0xd5
	ldr r6, _02234E34 ; =0x00000B18
	mov r4, #0
	lsl r7, r7, #4
_02234E08:
	ldr r0, [r5, r7]
	cmp r0, #2
	bne _02234E12
	cmp r4, #1
	beq _02234E2A
_02234E12:
	ldr r2, _02234E38 ; =0x00000D54
	ldr r3, _02234E3C ; =0x00000D58
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r6
	add r1, r4, #0
	bl ov65_02234E8C
	cmp r0, #1
	bne _02234E2A
	add r0, r4, #1
	pop {r3, r4, r5, r6, r7, pc}
_02234E2A:
	add r4, r4, #1
	cmp r4, #3
	blt _02234E08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234E34: .word 0x00000B18
_02234E38: .word 0x00000D54
_02234E3C: .word 0x00000D58
	thumb_func_end ov65_02234DD8

	thumb_func_start ov65_02234E40
ov65_02234E40: ; 0x02234E40
	ldr r3, _02234E4C ; =0x00000D54
	str r0, [r2, r3]
	add r0, r3, #4
	str r1, [r2, r0]
	bx lr
	nop
_02234E4C: .word 0x00000D54
	thumb_func_end ov65_02234E40

	thumb_func_start ov65_02234E50
ov65_02234E50: ; 0x02234E50
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0x87
	ldr r1, _02234E88 ; =0x02238930
	lsl r0, r0, #2
	add r6, r5, r0
	lsl r7, r4, #2
	ldrb r1, [r1, r4]
	ldr r0, [r6, r7]
	bl sub_02021D6C
	ldr r0, [r6, r7]
	mov r1, #4
	bl sub_02021E50
	cmp r4, #1
	bne _02234E86
	mov r0, #0x8d
	mov r1, #0x11
	lsl r0, r0, #2
	mvn r1, r1
	add r2, r1, #0
	ldr r0, [r5, r0]
	add r2, #0xa
	bl sub_020128C4
_02234E86:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234E88: .word 0x02238930
	thumb_func_end ov65_02234E50

	thumb_func_start ov65_02234E8C
ov65_02234E8C: ; 0x02234E8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r6, r3, #0
	str r0, [sp, #8]
	cmp r2, r5
	bne _02234F0E
	mov r1, #0x87
	ldr r0, [sp]
	lsl r1, r1, #2
	lsl r4, r5, #2
	add r7, r0, r1
	ldr r0, [r7, r4]
	bl sub_02021E74
	str r0, [sp, #4]
	cmp r6, #0
	beq _02234EB8
	cmp r6, #2
	bne _02234F00
_02234EB8:
	cmp r6, #0
	bne _02234EC6
	ldr r1, _02234F5C ; =0x0223892C
	ldr r0, [r7, r4]
	ldrb r1, [r1, r5]
	bl sub_02021D6C
_02234EC6:
	ldr r0, [sp, #4]
	cmp r0, #3
	bhs _02234F54
	mov r1, #2
	ldr r0, [r7, r4]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r7, r4]
	bl sub_02021E74
	add r4, r0, #0
	cmp r5, #1
	bne _02234EF6
	ldr r2, _02234F60 ; =0x0223893C
	mov r1, #0x8d
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x11
	ldrsb r2, [r2, r4]
	mvn r1, r1
	bl sub_020128C4
_02234EF6:
	cmp r4, #3
	blo _02234F54
	mov r0, #1
	str r0, [sp, #8]
	b _02234F54
_02234F00:
	cmp r6, #1
	bne _02234F54
	cmp r0, #3
	bhs _02234F54
	mov r0, #1
	str r0, [sp, #8]
	b _02234F54
_02234F0E:
	mov r1, #0x87
	ldr r0, [sp]
	lsl r1, r1, #2
	lsl r4, r5, #2
	add r6, r0, r1
	ldr r0, [r6, r4]
	bl sub_02021E24
	add r7, r0, #0
	ldr r0, [r6, r4]
	bl sub_02021E74
	str r0, [sp, #0xc]
	ldr r0, _02234F5C ; =0x0223892C
	ldrb r0, [r0, r5]
	cmp r7, r0
	bne _02234F4A
	ldr r1, _02234F64 ; =0x02238930
	ldr r0, [r6, r4]
	ldrb r1, [r1, r5]
	bl sub_02021D6C
	ldr r1, [sp, #0xc]
	mov r2, #4
	sub r1, r2, r1
	lsl r1, r1, #0x10
	ldr r0, [r6, r4]
	lsr r1, r1, #0x10
	bl sub_02021E50
_02234F4A:
	mov r1, #2
	ldr r0, [r6, r4]
	lsl r1, r1, #0xc
	bl sub_02021E2C
_02234F54:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234F5C: .word 0x0223892C
_02234F60: .word 0x0223893C
_02234F64: .word 0x02238930
	thumb_func_end ov65_02234E8C

	thumb_func_start ov65_02234F68
ov65_02234F68: ; 0x02234F68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	mvn r0, r0
	cmp r6, r0
	beq _02234FA0
	mov r0, #0x36
	bl sub_02025E6C
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0202AEF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025EC0
	ldr r0, _02234FA4 ; =0x00000B18
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_0200B498
	add r0, r4, #0
	bl sub_020181C4
_02234FA0:
	pop {r4, r5, r6, pc}
	nop
_02234FA4: .word 0x00000B18
	thumb_func_end ov65_02234F68

	thumb_func_start ov65_02234FA8
ov65_02234FA8: ; 0x02234FA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blo _02234FB6
	bl GF_AssertFail
_02234FB6:
	ldr r1, [r5, #4]
	mov r0, #0x24
	add r1, #0x24
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02234FA8

	thumb_func_start ov65_02234FC4
ov65_02234FC4: ; 0x02234FC4
	ldr r3, _02234FC8 ; =ov4_021D2234
	bx r3
	; .align 2, 0
_02234FC8: .word ov4_021D2234
	thumb_func_end ov65_02234FC4

	thumb_func_start ov65_02234FCC
ov65_02234FCC: ; 0x02234FCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xf
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020363E8
	ldr r0, [r5, #4]
	add r0, #0x21
	ldrb r0, [r0]
	bl ov4_021D2584
	add r0, r6, #0
	bl ov65_0222DD64
	cmp r0, #1
	bne _02234FF8
	mov r0, #1
	mov r1, #0x79
	bl ov4_021D2618
	b _02235000
_02234FF8:
	mov r0, #0
	mov r1, #0x79
	bl ov4_021D2618
_02235000:
	bl sub_0209C3AC
	add r0, r4, #0
	bl sub_020380A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02234FCC

	thumb_func_start ov65_0223500C
ov65_0223500C: ; 0x0223500C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xd6
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02235038
	mov r1, #1
	str r1, [r5, r0]
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov65_02235378
	cmp r4, #1
	bne _02235038
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ov65_02232B58
_02235038:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223500C

	thumb_func_start ov65_0223503C
ov65_0223503C: ; 0x0223503C
	push {r4, lr}
	mov r1, #0xd6
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #1
	bne _0223505E
	mov r2, #0
	str r2, [r4, r1]
	bl ov65_02232DFC
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov65_02235378
_0223505E:
	pop {r4, pc}
	thumb_func_end ov65_0223503C

	.rodata


	.global Unk_ov65_0223892C
Unk_ov65_0223892C: ; 0x0223892C
	.incbin "incbin/overlay65_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov65_02238930
Unk_ov65_02238930: ; 0x02238930
	.incbin "incbin/overlay65_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov65_02238934
Unk_ov65_02238934: ; 0x02238934
	.incbin "incbin/overlay65_rodata.bin", 0x8, 0xC - 0x8

	.global Unk_ov65_02238938
Unk_ov65_02238938: ; 0x02238938
	.incbin "incbin/overlay65_rodata.bin", 0xC, 0x10 - 0xC

	.global Unk_ov65_0223893C
Unk_ov65_0223893C: ; 0x0223893C
	.incbin "incbin/overlay65_rodata.bin", 0x10, 0x18 - 0x10

	.global Unk_ov65_02238944
Unk_ov65_02238944: ; 0x02238944
	.incbin "incbin/overlay65_rodata.bin", 0x18, 0x20 - 0x18

	.global Unk_ov65_0223894C
Unk_ov65_0223894C: ; 0x0223894C
	.incbin "incbin/overlay65_rodata.bin", 0x20, 0x28 - 0x20

	.global Unk_ov65_02238954
Unk_ov65_02238954: ; 0x02238954
	.incbin "incbin/overlay65_rodata.bin", 0x28, 0x30 - 0x28

	.global Unk_ov65_0223895C
Unk_ov65_0223895C: ; 0x0223895C
	.incbin "incbin/overlay65_rodata.bin", 0x30, 0x3C - 0x30

	.global Unk_ov65_02238968
Unk_ov65_02238968: ; 0x02238968
	.incbin "incbin/overlay65_rodata.bin", 0x3C, 0x4C - 0x3C

	.global Unk_ov65_02238978
Unk_ov65_02238978: ; 0x02238978
	.incbin "incbin/overlay65_rodata.bin", 0x4C, 0x5C - 0x4C

	.global Unk_ov65_02238988
Unk_ov65_02238988: ; 0x02238988
	.incbin "incbin/overlay65_rodata.bin", 0x5C, 0x6C - 0x5C

	.global Unk_ov65_02238998
Unk_ov65_02238998: ; 0x02238998
	.incbin "incbin/overlay65_rodata.bin", 0x6C, 0x84 - 0x6C

	.global Unk_ov65_022389B0
Unk_ov65_022389B0: ; 0x022389B0
	.incbin "incbin/overlay65_rodata.bin", 0x84, 0xA0 - 0x84

	.global Unk_ov65_022389CC
Unk_ov65_022389CC: ; 0x022389CC
	.incbin "incbin/overlay65_rodata.bin", 0xA0, 0xBC - 0xA0

	.global Unk_ov65_022389E8
Unk_ov65_022389E8: ; 0x022389E8
	.incbin "incbin/overlay65_rodata.bin", 0xBC, 0xD8 - 0xBC

	.global Unk_ov65_02238A04
Unk_ov65_02238A04: ; 0x02238A04
	.incbin "incbin/overlay65_rodata.bin", 0xD8, 0xF4 - 0xD8

	.global Unk_ov65_02238A20
Unk_ov65_02238A20: ; 0x02238A20
	.incbin "incbin/overlay65_rodata.bin", 0xF4, 0x110 - 0xF4

	.global Unk_ov65_02238A3C
Unk_ov65_02238A3C: ; 0x02238A3C
	.incbin "incbin/overlay65_rodata.bin", 0x110, 0x12C - 0x110

	.global Unk_ov65_02238A58
Unk_ov65_02238A58: ; 0x02238A58
	.incbin "incbin/overlay65_rodata.bin", 0x12C, 0x148 - 0x12C

	.global Unk_ov65_02238A74
Unk_ov65_02238A74: ; 0x02238A74
	.incbin "incbin/overlay65_rodata.bin", 0x148, 0x164 - 0x148

	.global Unk_ov65_02238A90
Unk_ov65_02238A90: ; 0x02238A90
	.incbin "incbin/overlay65_rodata.bin", 0x164, 0x184 - 0x164

	.global Unk_ov65_02238AB0
Unk_ov65_02238AB0: ; 0x02238AB0
	.incbin "incbin/overlay65_rodata.bin", 0x184, 0x1A4 - 0x184

	.global Unk_ov65_02238AD0
Unk_ov65_02238AD0: ; 0x02238AD0
	.incbin "incbin/overlay65_rodata.bin", 0x1A4, 0x1C4 - 0x1A4

	.global Unk_ov65_02238AF0
Unk_ov65_02238AF0: ; 0x02238AF0
	.incbin "incbin/overlay65_rodata.bin", 0x1C4, 0x1E4 - 0x1C4

	.global Unk_ov65_02238B10
Unk_ov65_02238B10: ; 0x02238B10
	.incbin "incbin/overlay65_rodata.bin", 0x1E4, 0x20C - 0x1E4

	.global Unk_ov65_02238B38
Unk_ov65_02238B38: ; 0x02238B38
	.incbin "incbin/overlay65_rodata.bin", 0x20C, 0x90


	.data


	.global Unk_ov65_02239C20
Unk_ov65_02239C20: ; 0x02239C20
	.incbin "incbin/overlay65_data.bin", 0x0, 0x8 - 0x0

	.global Unk_ov65_02239C28
Unk_ov65_02239C28: ; 0x02239C28
	.incbin "incbin/overlay65_data.bin", 0x8, 0x10 - 0x8

	.global Unk_ov65_02239C30
Unk_ov65_02239C30: ; 0x02239C30
	.incbin "incbin/overlay65_data.bin", 0x10, 0x18 - 0x10

	.global Unk_ov65_02239C38
Unk_ov65_02239C38: ; 0x02239C38
	.incbin "incbin/overlay65_data.bin", 0x18, 0x20 - 0x18

	.global Unk_ov65_02239C40
Unk_ov65_02239C40: ; 0x02239C40
	.incbin "incbin/overlay65_data.bin", 0x20, 0x3C - 0x20

	.global Unk_ov65_02239C5C
Unk_ov65_02239C5C: ; 0x02239C5C
	.incbin "incbin/overlay65_data.bin", 0x3C, 0x5C - 0x3C

	.global Unk_ov65_02239C7C
Unk_ov65_02239C7C: ; 0x02239C7C
	.incbin "incbin/overlay65_data.bin", 0x5C, 0x7C - 0x5C

	.global Unk_ov65_02239C9C
Unk_ov65_02239C9C: ; 0x02239C9C
	.incbin "incbin/overlay65_data.bin", 0x7C, 0x9C - 0x7C

	.global Unk_ov65_02239CBC
Unk_ov65_02239CBC: ; 0x02239CBC
	.incbin "incbin/overlay65_data.bin", 0x9C, 0xBC - 0x9C

	.global Unk_ov65_02239CDC
Unk_ov65_02239CDC: ; 0x02239CDC
	.incbin "incbin/overlay65_data.bin", 0xBC, 0x10C - 0xBC

	.global Unk_ov65_02239D2C
Unk_ov65_02239D2C: ; 0x02239D2C
	.incbin "incbin/overlay65_data.bin", 0x10C, 0x120


	.bss


	.global Unk_ov65_02239E60
Unk_ov65_02239E60: ; 0x02239E60
	.space 0x4

