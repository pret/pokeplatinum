	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov113_0225C700
ov113_0225C700: ; 0x0225C700
	push {r4, r5, lr}
	sub sp, #0xc
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
	ldr r2, _0225C9C4 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0225C9C8 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0225C9CC ; =0xFFFF1FFF
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
	mov r2, #5
	mov r0, #3
	mov r1, #0x76
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0225C9D0 ; =0x000019E4
	add r0, r4, #0
	mov r2, #0x76
	bl sub_0200681C
	ldr r2, _0225C9D0 ; =0x000019E4
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov66_0222E0C4
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov66_0222E0C8
	ldr r1, _0225C9D4 ; =0x000019E0
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov113_0225DD14
	ldr r0, [r5, #0]
	ldr r2, _0225C9D8 ; =0x000008D8
	ldrb r0, [r0, #4]
	ldr r1, [r5, #4]
	add r2, r5, r2
	bl ov113_0225DD4C
	mov r1, #2
	ldr r0, _0225C9DC ; =0x000019D4
	lsl r1, r1, #0xc
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x76
	bl ov113_0225DC6C
	str r0, [r5, #0x14]
	mov r0, #0x76
	bl sub_02002F38
	str r0, [r5, #0xc]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x76
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r5, #0xc]
	lsl r2, r1, #9
	mov r3, #0x76
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x76
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x76
	bl sub_02002F70
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02003858
	mov r0, #0x76
	bl sub_02018340
	str r0, [r5, #8]
	mov r0, #0x40
	mov r1, #0x76
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #8]
	bl ov113_0225CF58
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x76
	bl sub_02002BB8
	mov r0, #0x76
	bl sub_0200B358
	str r0, [r5, #0x2c]
	ldr r2, _0225C9E0 ; =0x0000028A
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x76
	bl sub_0200B144
	str r0, [r5, #0x30]
	mov r0, #4
	mov r1, #0x76
	bl sub_02012744
	str r0, [r5, #0x10]
	mov r0, #0xbb
	mov r1, #0x76
	bl sub_02006C24
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x46
	mov r1, #0x76
	bl sub_02006C24
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov113_0225D160
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov113_0225DAA8
	add r0, r5, #0
	bl ov113_0225D9FC
	add r0, r5, #0
	bl ov113_0225DBCC
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x76
	bl sub_02023790
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #0x76
	bl sub_0200C6E4
	ldr r1, _0225C9E4 ; =0x02260954
	ldr r2, _0225C9E8 ; =0x022608E8
	mov r3, #0x20
	str r0, [r5, #0x1c]
	bl sub_0200C73C
	ldr r1, _0225C9EC ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x1c]
	bl sub_0200C704
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _0225C9F0 ; =0x022608FC
	bl sub_0200CB30
	ldr r0, [r5, #0x1c]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	bl sub_02039734
	ldr r1, _0225C9D4 ; =0x000019E0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov113_0225E368
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov113_0225D304
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov113_0225D630
	add r0, r5, #0
	bl ov113_0225D484
	add r0, r5, #0
	bl ov113_0225D6F8
	add r0, r5, #0
	bl ov113_0225D7CC
	mov r0, #0x76
	bl sub_02015920
	str r0, [r5, #0x24]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x76
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225C94A
	mov r1, #1
	bl ov66_0222E31C
_0225C94A:
	mov r0, #1
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
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _0225C9F4 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, _0225C9F8 ; =ov113_0225CEF0
	ldr r2, _0225C9FC ; =0x0000EA60
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #0x18]
	ldr r0, _0225CA00 ; =ov113_0225CF18
	add r1, r5, #0
	bl sub_02017798
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0225C9C4: .word 0xFFFFE0FF
_0225C9C8: .word 0x04001000
_0225C9CC: .word 0xFFFF1FFF
_0225C9D0: .word 0x000019E4
_0225C9D4: .word 0x000019E0
_0225C9D8: .word 0x000008D8
_0225C9DC: .word 0x000019D4
_0225C9E0: .word 0x0000028A
_0225C9E4: .word 0x02260954
_0225C9E8: .word 0x022608E8
_0225C9EC: .word 0x00200010
_0225C9F0: .word 0x022608FC
_0225C9F4: .word 0x021BF6DC
_0225C9F8: .word ov113_0225CEF0
_0225C9FC: .word 0x0000EA60
_0225CA00: .word ov113_0225CF18
	thumb_func_end ov113_0225C700

	thumb_func_start ov113_0225CA04
ov113_0225CA04: ; 0x0225CA04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r3, [r4, #0]
	add r1, r4, #0
	ldr r2, _0225CD58 ; =0x000009BC
	mov r0, #0x65
	add r1, #0xcc
	lsl r0, r0, #2
	ldrb r3, [r3, #4]
	ldr r1, [r1, #0]
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ov113_0225E3F0
	ldr r0, [r5, #0]
	cmp r0, #0xa
	bls _0225CA30
	b _0225CD3C
_0225CA30:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CA3C: ; jump table
	.short _0225CA52 - _0225CA3C - 2 ; case 0
	.short _0225CA70 - _0225CA3C - 2 ; case 1
	.short _0225CA88 - _0225CA3C - 2 ; case 2
	.short _0225CB56 - _0225CA3C - 2 ; case 3
	.short _0225CBAC - _0225CA3C - 2 ; case 4
	.short _0225CBEC - _0225CA3C - 2 ; case 5
	.short _0225CC76 - _0225CA3C - 2 ; case 6
	.short _0225CCCC - _0225CA3C - 2 ; case 7
	.short _0225CCE2 - _0225CA3C - 2 ; case 8
	.short _0225CD00 - _0225CA3C - 2 ; case 9
	.short _0225CD2C - _0225CA3C - 2 ; case 10
_0225CA52:
	mov r0, #0x5a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov113_022607D8
	add r0, r4, #0
	add r1, sp, #0x20
	bl ov113_0225DD24
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CA70:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0225CA7A
	b _0225CD46
_0225CA7A:
	ldr r0, _0225CD58 ; =0x000009BC
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CA88:
	ldr r0, _0225CD5C ; =0x021BF6BC
	ldrh r1, [r0, #0x20]
	cmp r1, #0
	beq _0225CAF4
	ldrh r0, [r0, #0x1e]
	cmp r0, #0xa0
	bhs _0225CAF4
	ldr r1, _0225CD60 ; =0x00000555
	add r0, r4, #0
	bl ov113_0225E318
	cmp r0, #1
	bne _0225CAF4
	mov r2, #0x92
	lsl r2, r2, #4
	ldrb r1, [r4, r2]
	ldr r7, _0225CD5C ; =0x021BF6BC
	mov r3, #0xc
	add r6, r1, #0
	mul r6, r3
	add r1, r2, #0
	ldrh r0, [r7, #0x1c]
	add r6, r4, r6
	sub r1, #0x3f
	strb r0, [r6, r1]
	ldrb r1, [r4, r2]
	ldrh r0, [r7, #0x1e]
	add r6, r1, #0
	mul r6, r3
	add r1, r2, #0
	add r6, r4, r6
	sub r1, #0x3e
	strb r0, [r6, r1]
	add r1, r2, #0
	ldrb r2, [r4, r2]
	sub r1, #0x48
	add r1, r4, r1
	mul r3, r2
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r1, r3
	bl ov113_0225DDC0
	ldr r0, _0225CD64 ; =0x000008D8
	add r2, r4, r0
	add r0, #0x48
	ldrb r1, [r4, r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	bl ov113_02260818
_0225CAF4:
	ldr r1, _0225CD64 ; =0x000008D8
	add r0, r4, r1
	add r1, #0x48
	ldrb r1, [r4, r1]
	bl ov113_02260748
	add r1, r0, #0
	cmp r1, #6
	bge _0225CB14
	mov r0, #0x92
	lsl r0, r0, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov113_0225E068
	b _0225CD46
_0225CB14:
	ldr r0, [r5, #0]
	cmp r0, #2
	bne _0225CC06
	cmp r1, #0xfe
	bne _0225CC06
	ldr r0, _0225CD68 ; =0x000005E5
	bl sub_02005748
	mov r0, #8
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r2, #9
	mov r3, #1
	bl sub_020039B0
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, _0225CD6C ; =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	mov r0, #3
	str r0, [r5, #0]
	b _0225CD46
_0225CB56:
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	add r2, r4, #0
	add r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2, #0]
	mov r1, #2
	bl sub_0200B1B8
	ldr r0, [r4, #4]
	bl sub_02025E44
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	add r0, r4, #0
	str r3, [sp, #8]
	add r2, #0xc4
	ldr r2, [r2, #0]
	add r0, #0xb4
	mov r1, #1
	bl sub_0201D738
	add r1, r4, #0
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CBAC:
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0225CC06
	ldr r0, [r4, #8]
	mov r1, #0x19
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x1f
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldr r0, [r4, #0x24]
	add r1, sp, #0xc
	bl sub_02015958
	add r0, r4, #0
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CBEC:
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0xb0
	mov r3, #0x40
	bl sub_02003070
	ldr r0, [r4, #0x24]
	bl sub_020159FC
	cmp r0, #1
	beq _0225CC08
	cmp r0, #2
	beq _0225CC32
_0225CC06:
	b _0225CD46
_0225CC08:
	ldr r0, [r4, #0x24]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	bl sub_0200E084
	mov r0, #0x5a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0225CD58 ; =0x000009BC
	mov r1, #3
	str r1, [r4, r0]
	mov r0, #9
	str r0, [r5, #0]
	b _0225CD46
_0225CC32:
	ldr r0, [r4, #0x24]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	bl sub_0200E084
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r2, #9
	mov r3, #1
	bl sub_020039B0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _0225CD6C ; =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	mov r0, #2
	str r0, [r5, #0]
	b _0225CD46
_0225CC76:
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	add r2, r4, #0
	add r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2, #0]
	mov r1, #3
	bl sub_0200B1B8
	ldr r0, [r4, #4]
	bl sub_02025E44
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	add r0, r4, #0
	str r3, [sp, #8]
	add r2, #0xc4
	ldr r2, [r2, #0]
	add r0, #0xb4
	mov r1, #1
	bl sub_0201D738
	add r1, r4, #0
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CCCC:
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0225CD46
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CCE2:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x5a
	bls _0225CD46
	mov r0, #9
	str r0, [r5, #0]
	b _0225CD46
_0225CD00:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0225CD0C
	bl sub_0200F2C0
_0225CD0C:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x76
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CD2C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225CD46
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225CD46
_0225CD3C:
	bl ov66_02232DC8
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225CD46:
	add r0, r4, #0
	bl ov113_0225E118
	add r0, r4, #0
	bl ov113_0225E294
	ldr r0, _0225CD58 ; =0x000009BC
	b _0225CD70
	nop
_0225CD58: .word 0x000009BC
_0225CD5C: .word 0x021BF6BC
_0225CD60: .word 0x00000555
_0225CD64: .word 0x000008D8
_0225CD68: .word 0x000005E5
_0225CD6C: .word 0x00000921
_0225CD70:
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225CDE8
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	ble _0225CD90
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov113_0225DE98
_0225CD90:
	bl ov66_02231760
	cmp r0, #1
	beq _0225CDA4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov66_0222E12C
	cmp r0, #1
	bne _0225CDE8
_0225CDA4:
	ldr r0, [r5, #0]
	cmp r0, #4
	beq _0225CDE8
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225CDBA
	ldr r0, [r4, #0x24]
	bl sub_02015A54
_0225CDBA:
	mov r0, #0x5a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0225CDF4 ; =0x000009BC
	mov r1, #3
	str r1, [r4, r0]
	bl ov66_02231760
	cmp r0, #1
	bne _0225CDD6
	mov r0, #9
	str r0, [r5, #0]
	b _0225CDE8
_0225CDD6:
	ldr r0, _0225CDF8 ; =0x000005F1
	bl sub_02005748
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov66_0222E2A4
	mov r0, #6
	str r0, [r5, #0]
_0225CDE8:
	add r0, r4, #0
	bl ov113_0225E364
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CDF4: .word 0x000009BC
_0225CDF8: .word 0x000005F1
	thumb_func_end ov113_0225CA04

	thumb_func_start ov113_0225CDFC
ov113_0225CDFC: ; 0x0225CDFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	add r0, r4, #0
	bl ov113_0225D5D8
	add r0, r4, #0
	bl ov113_0225D7A4
	ldr r0, [r4, #0x24]
	bl sub_02015938
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov113_0225E378
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_020237BC
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r4, #0x10]
	bl sub_020127BC
	ldr r0, [r4, #0x30]
	bl sub_0200B190
	ldr r0, [r4, #0x2c]
	bl sub_0200B3F0
	add r0, r4, #0
	bl ov113_0225DC4C
	ldr r0, [r4, #8]
	bl ov113_0225D12C
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl sub_0200D0B0
	ldr r0, [r4, #0x1c]
	bl sub_0200C8D4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	bl sub_02002F54
	add r0, r4, #0
	bl ov113_0225DAFC
	add r0, r4, #0
	bl ov113_0225DA9C
	ldr r0, [r4, #0x14]
	bl ov113_0225DD0C
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	bl sub_0201E530
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x76
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225CDFC

	thumb_func_start ov113_0225CEF0
ov113_0225CEF0: ; 0x0225CEF0
	push {r4, lr}
	mov r0, #0x65
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov113_0225E4E8
	add r0, r4, #0
	bl ov113_0225DB08
	ldr r0, [r4, #0x20]
	bl sub_0200C7EC
	bl sub_0200C808
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	pop {r4, pc}
	thumb_func_end ov113_0225CEF0

	thumb_func_start ov113_0225CF18
ov113_0225CF18: ; 0x0225CF18
	push {r4, lr}
	ldr r1, _0225CF4C ; =0x000009BC
	add r4, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov113_0225E65C
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0xc]
	bl sub_02003694
	ldr r0, [r4, #8]
	bl sub_0201C2B8
	ldr r3, _0225CF50 ; =0x027E0000
	ldr r1, _0225CF54 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_0225CF4C: .word 0x000009BC
_0225CF50: .word 0x027E0000
_0225CF54: .word 0x00003FF8
	thumb_func_end ov113_0225CF18

	thumb_func_start ov113_0225CF58
ov113_0225CF58: ; 0x0225CF58
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r5, _0225D118 ; =0x02260974
	add r3, sp, #0x10
	mov r2, #5
_0225CF6C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225CF6C
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0225D11C ; =0x022608D8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0225D120 ; =0x02260B14
	add r3, sp, #0x8c
	mov r2, #0xa
_0225CFCC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225CFCC
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xa8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xc4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0225D124 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0225D128 ; =0x02260B68
	add r3, sp, #0x38
	mov r2, #0xa
_0225D078:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D078
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x76
	bl sub_02019690
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225D118: .word 0x02260974
_0225D11C: .word 0x022608D8
_0225D120: .word 0x02260B14
_0225D124: .word 0x04000008
_0225D128: .word 0x02260B68
	thumb_func_end ov113_0225CF58

	thumb_func_start ov113_0225D12C
ov113_0225D12C: ; 0x0225D12C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #7
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
	pop {r4, pc}
	thumb_func_end ov113_0225D12C

	thumb_func_start ov113_0225D160
ov113_0225D160: ; 0x0225D160
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	mov r0, #7
	str r1, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xbb
	mov r2, #0x13
	mov r3, #0x76
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x12
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x11
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x14
	mov r3, #3
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xbb
	mov r2, #0x17
	mov r3, #0x76
	bl sub_02003050
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225D1FA
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #0xc]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_02003120
_0225D1FA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x16
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x15
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x18
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_02019FE4
	mov r1, #0x27
	lsl r1, r1, #6
	mov r2, #2
	add r1, r4, r1
	lsl r2, r2, #0xa
	add r5, r0, #0
	bl sub_020C4B18
	mov r2, #2
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_020C4AF0
	ldr r0, [r4, #4]
	bl sub_02025E44
	bl sub_02027B50
	add r5, r0, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x26
	mov r3, #0x76
	bl sub_02003050
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x76
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x76
	bl sub_02003050
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225D2DE
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x76
	bl sub_02003050
	b _0225D2F6
_0225D2DE:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xbb
	mov r2, #0x19
	mov r3, #0x76
	bl sub_02003050
_0225D2F6:
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov113_0225D160

	thumb_func_start ov113_0225D304
ov113_0225D304: ; 0x0225D304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	str r6, [sp]
	mov r1, #3
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0225D468 ; =0x00002711
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D46C ; =0x00002717
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #4
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D470 ; =0x00002712
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #5
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D470 ; =0x00002712
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #6
	bl sub_0200CE54
	mov r4, #0
	add r7, r4, #0
_0225D370:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D468 ; =0x00002711
	add r2, r6, #0
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0x10
	bl sub_0200CC3C
	add r4, r4, #1
	cmp r4, #6
	blt _0225D370
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D468 ; =0x00002711
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xf
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D468 ; =0x00002711
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xe
	bl sub_0200CE54
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225D470 ; =0x00002712
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl sub_0200CDC4
	ldr r1, [r5, #0]
	ldrb r1, [r1, #4]
	cmp r1, #0
	bne _0225D3E2
	mov r3, #0
	b _0225D3E4
_0225D3E2:
	ldr r3, _0225D474 ; =0x00007FFF
_0225D3E4:
	lsl r1, r0, #4
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, #0x10
	str r0, [sp]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	bl sub_020038B0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D478 ; =0x00002718
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #2
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D47C ; =0x00002713
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #1
	bl sub_0200CE24
	mov r3, #0
	ldr r0, _0225D47C ; =0x00002713
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, r6, #0
	bl sub_0200CE54
	mov r0, #0xbb
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225D47C ; =0x00002713
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl sub_0200CD7C
	ldr r1, _0225D480 ; =0x00000921
	strb r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D468: .word 0x00002711
_0225D46C: .word 0x00002717
_0225D470: .word 0x00002712
_0225D474: .word 0x00007FFF
_0225D478: .word 0x00002718
_0225D47C: .word 0x00002713
_0225D480: .word 0x00000921
	thumb_func_end ov113_0225D304

	thumb_func_start ov113_0225D484
ov113_0225D484: ; 0x0225D484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r4, _0225D5B4 ; =0x02260A04
	add r7, r0, #0
	add r3, sp, #0x18
	mov r2, #6
_0225D490:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D490
	ldr r0, [r4, #0]
	mov r6, #0
	str r0, [r3, #0]
	mov r4, #0x10
	add r5, r7, #0
_0225D4A2:
	add r0, sp, #0x18
	strh r4, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	add r2, sp, #0x18
	bl sub_0200CE6C
	ldr r1, _0225D5B8 ; =0x00000924
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200D364
	ldr r0, _0225D5B8 ; =0x00000924
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, #0x20
	add r5, r5, #4
	cmp r6, #6
	blt _0225D4A2
	ldr r4, _0225D5BC ; =0x02260A38
	add r3, sp, #0x18
	mov r2, #6
_0225D4DC:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D4DC
	ldr r0, [r4, #0]
	mov r6, #0
	str r0, [r3, #0]
	mov r4, #0x10
	add r5, r7, #0
_0225D4EE:
	add r0, sp, #0x18
	strh r4, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	add r2, sp, #0x18
	bl sub_0200CE6C
	ldr r1, _0225D5C0 ; =0x0000093C
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200D364
	ldr r0, _0225D5C0 ; =0x0000093C
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, #0x20
	add r5, r5, #4
	cmp r6, #6
	blt _0225D4EE
	ldr r4, _0225D5C4 ; =0x02260A6C
	add r3, sp, #0x18
	mov r2, #6
_0225D528:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D528
	ldr r0, [r4, #0]
	mov r5, #0
	str r0, [r3, #0]
	mov r6, #0x10
	add r4, r7, #0
_0225D53A:
	add r0, sp, #0x18
	strh r6, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, _0225D5C8 ; =0x00002711
	add r2, sp, #0x18
	add r0, r5, r0
	str r0, [sp, #0x2c]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	bl sub_0200CE6C
	ldr r1, _0225D5CC ; =0x00000954
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r5, r5, #1
	add r6, #0x20
	add r4, r4, #4
	cmp r5, #6
	blt _0225D53A
	ldr r0, [r7, #0x30]
	mov r1, #1
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _0225D5D0 ; =0x00010203
	mov r1, #0x67
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0225D5D4 ; =0x00002713
	lsl r1, r1, #6
	str r0, [sp, #8]
	mov r0, #0xe0
	str r0, [sp, #0xc]
	mov r0, #0xb0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r7, r1
	add r2, r4, #0
	mov r3, #2
	bl ov113_0225E15C
	mov r0, #0x67
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	mov r1, #1
	bl sub_020129D0
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D5B4: .word 0x02260A04
_0225D5B8: .word 0x00000924
_0225D5BC: .word 0x02260A38
_0225D5C0: .word 0x0000093C
_0225D5C4: .word 0x02260A6C
_0225D5C8: .word 0x00002711
_0225D5CC: .word 0x00000954
_0225D5D0: .word 0x00010203
_0225D5D4: .word 0x00002713
	thumb_func_end ov113_0225D484

	thumb_func_start ov113_0225D5D8
ov113_0225D5D8: ; 0x0225D5D8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, _0225D624 ; =0x00000924
	mov r4, #0
	add r5, r7, #0
_0225D5E2:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0225D5E2
	ldr r6, _0225D628 ; =0x0000093C
	mov r5, #0
	add r4, r7, #0
_0225D5F6:
	ldr r0, [r4, r6]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0225D5F6
	ldr r6, _0225D62C ; =0x00000954
	mov r5, #0
	add r4, r7, #0
_0225D60A:
	ldr r0, [r4, r6]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0225D60A
	mov r0, #0x67
	lsl r0, r0, #6
	add r0, r7, r0
	bl ov113_0225E250
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D624: .word 0x00000924
_0225D628: .word 0x0000093C
_0225D62C: .word 0x00000954
	thumb_func_end ov113_0225D5D8

	thumb_func_start ov113_0225D630
ov113_0225D630: ; 0x0225D630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0225D6E8 ; =0x00002714
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0225D6EC ; =0x00002719
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #9
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D6E8 ; =0x00002714
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #8
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D6E8 ; =0x00002714
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #7
	bl sub_0200CE54
	mov r4, #0
	add r7, r4, #0
_0225D69E:
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0225D6F0 ; =0x0000271A
	add r2, r6, #0
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xd
	bl sub_0200CC3C
	add r4, r4, #1
	cmp r4, #8
	blt _0225D69E
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D6F4 ; =0x00002715
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xc
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225D6F4 ; =0x00002715
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xb
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D6E8: .word 0x00002714
_0225D6EC: .word 0x00002719
_0225D6F0: .word 0x0000271A
_0225D6F4: .word 0x00002715
	thumb_func_end ov113_0225D630

	thumb_func_start ov113_0225D6F8
ov113_0225D6F8: ; 0x0225D6F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _0225D790 ; =0x0226099C
	bl sub_0200CE6C
	ldr r1, _0225D794 ; =0x0000096C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, _0225D794 ; =0x0000096C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r4, _0225D798 ; =0x022609D0
	add r3, sp, #0
	mov r2, #6
_0225D724:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D724
	ldr r0, [r4, #0]
	mov r7, #0x97
	str r0, [r3, #0]
	mov r4, #0
	ldr r6, _0225D79C ; =0x02260934
	lsl r7, r7, #4
	b _0225D786
_0225D73A:
	ldr r0, _0225D7A0 ; =0x0000271A
	add r2, sp, #0
	add r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl sub_0200CE6C
	add r3, r0, #0
	lsl r2, r4, #2
	mov r0, #0x97
	add r1, r5, r2
	lsl r0, r0, #4
	str r3, [r1, r0]
	ldr r0, [r1, r0]
	ldrsh r1, [r6, r2]
	add r3, r6, r2
	mov r2, #2
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	lsl r3, r3, #0x10
	bl sub_0200D500
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x97
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #0
	bl sub_0200D3F4
	add r4, r4, #1
_0225D786:
	cmp r4, #8
	blt _0225D73A
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0225D790: .word 0x0226099C
_0225D794: .word 0x0000096C
_0225D798: .word 0x022609D0
_0225D79C: .word 0x02260934
_0225D7A0: .word 0x0000271A
	thumb_func_end ov113_0225D6F8

	thumb_func_start ov113_0225D7A4
ov113_0225D7A4: ; 0x0225D7A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0225D7C8 ; =0x0000096C
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r6, #0x97
	mov r4, #0
	lsl r6, r6, #4
_0225D7B6:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0225D7B6
	pop {r4, r5, r6, pc}
	nop
_0225D7C8: .word 0x0000096C
	thumb_func_end ov113_0225D7A4

	thumb_func_start ov113_0225D7CC
ov113_0225D7CC: ; 0x0225D7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	mov r1, #2
	bl sub_02003164
	str r0, [sp, #0x28]
	ldr r0, [r6, #0xc]
	mov r1, #2
	bl sub_0200316C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	str r6, [sp, #0x20]
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_0225D7F8:
	ldr r2, _0225D918 ; =0x000008DA
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _0225D808
	ldr r3, _0225D91C ; =0x000001ED
	cmp r0, r3
	bls _0225D862
_0225D808:
	ldr r1, _0225D920 ; =0x00000924
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_0200D3F4
	ldr r1, _0225D924 ; =0x0000093C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_0200D3F4
	ldr r1, _0225D928 ; =0x00000954
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp, #0x18]
	ldr r5, _0225D92C ; =0x022608AC
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r7, r0, #0x18
_0225D836:
	add r0, r4, #0
	add r0, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r2, [r5]
	ldr r0, [r6, #8]
	mov r1, #2
	add r3, r7, #0
	bl sub_02019CB8
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0225D836
	b _0225D8D8
_0225D862:
	add r1, r3, #0
	sub r1, #0x89
	ldr r1, [r6, r1]
	add r4, r2, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, _0225D930 ; =0x000019E0
	add r2, #0x7a
	ldr r1, [r6, r1]
	sub r3, #0x8d
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [r6, r3]
	ldrb r1, [r1, r4]
	ldr r4, [sp, #0x1c]
	ldr r2, [r4, r2]
	bl ov113_0225D938
	ldr r1, _0225D934 ; =0x000008D8
	ldr r0, [sp, #0x20]
	mov r3, #0xc
	ldrh r2, [r0, r1]
	ldr r0, [sp, #0x14]
	strh r2, [r0, #0x22]
	ldr r0, [sp, #0x20]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x22]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r0, #0x11
	lsl r1, r0, #1
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	ldr r1, [sp, #0x2c]
	add r1, #0x21
	lsl r2, r1, #1
	ldr r1, [sp, #0x28]
	add r1, r1, r2
	mov r2, #1
	bl sub_0200393C
	ldr r0, [sp, #0x14]
	add r0, #0x42
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x42
	strh r1, [r0]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0225D8D8
	add r0, r0, #1
	str r0, [sp, #0x24]
	mov r1, #0x92
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #4
	strb r0, [r6, r1]
_0225D8D8:
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	bge _0225D902
	b _0225D7F8
_0225D902:
	add r0, r6, #0
	mov r1, #0
	bl ov113_0225E0D4
	ldr r0, [r6, #8]
	mov r1, #2
	bl sub_0201C3C0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D918: .word 0x000008DA
_0225D91C: .word 0x000001ED
_0225D920: .word 0x00000924
_0225D924: .word 0x0000093C
_0225D928: .word 0x00000954
_0225D92C: .word 0x022608AC
_0225D930: .word 0x000019E0
_0225D934: .word 0x000008D8
	thumb_func_end ov113_0225D7CC

	thumb_func_start ov113_0225D938
ov113_0225D938: ; 0x0225D938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	cmp r4, #0
	beq _0225D94C
	ldr r2, _0225D9F8 ; =0x000001ED
	cmp r4, r2
	ble _0225D952
_0225D94C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225D952:
	ldr r2, [sp, #0x30]
	bl ov113_02260788
	cmp r0, #1
	bne _0225D98C
	ldr r0, [sp, #0x28]
	mov r2, #1
	add r1, r4, #3
	mov r3, #0x76
	str r2, [sp]
	bl sub_0200723C
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl sub_020A7118
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	b _0225D9B6
_0225D98C:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x76
	bl sub_0200723C
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl sub_020A7118
	ldr r0, [sp, #0xc]
	mov r1, #0x80
	ldr r0, [r0, #0x14]
	bl sub_020C2C54
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	str r4, [sp, #4]
	add r4, #0x40
_0225D9B6:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225D9C2
	mov r5, #0x19
	lsl r5, r5, #0x16
	b _0225D9C6
_0225D9C2:
	mov r5, #0x66
	lsl r5, r5, #0x14
_0225D9C6:
	ldr r0, [r6, #0]
	bl sub_02021F98
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0x40
	lsl r7, r0, #2
	ldr r1, [r6, r7]
	ldr r0, [sp, #4]
	add r1, r5, r1
	bl sub_020C4B18
	ldr r1, [r6, r7]
	add r5, #0x40
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x40
	bl sub_020C4B18
	ldr r0, [sp, #8]
	bl sub_020181C4
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D9F8: .word 0x000001ED
	thumb_func_end ov113_0225D938

	thumb_func_start ov113_0225D9FC
ov113_0225D9FC: ; 0x0225D9FC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r3, _0225DA8C ; =0x022608BC
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x76
	bl sub_020203AC
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #0x1f
	str r0, [sp, #8]
	ldr r2, _0225DA90 ; =0x022608B4
	ldr r3, _0225DA94 ; =0x00000FA4
	add r0, sp, #0x14
	lsl r1, r1, #0xe
	bl sub_020206D0
	add r2, r5, #0
	add r2, #0xcc
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r2, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_020203D4
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02020A88
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02020A90
	add r1, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r2, _0225DA98 ; =0x00001555
	add r0, r4, #0
	add r3, sp, #0x10
	bl sub_0201E34C
	add r0, r5, #0
	ldr r1, [sp, #0x10]
	add r0, #0xd0
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r5, #0xd4
	str r0, [r5, #0]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0225DA8C: .word 0x022608BC
_0225DA90: .word 0x022608B4
_0225DA94: .word 0x00000FA4
_0225DA98: .word 0x00001555
	thumb_func_end ov113_0225D9FC

	thumb_func_start ov113_0225DA9C
ov113_0225DA9C: ; 0x0225DA9C
	ldr r3, _0225DAA4 ; =sub_020203B8
	add r0, #0xcc
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225DAA4: .word sub_020203B8
	thumb_func_end ov113_0225DA9C

	thumb_func_start ov113_0225DAA8
ov113_0225DAA8: ; 0x0225DAA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225DAB8
	mov r2, #0x1c
	b _0225DABA
_0225DAB8:
	mov r2, #0x1b
_0225DABA:
	add r0, r4, #0
	add r0, #0xd8
	mov r3, #0x76
	bl sub_020170D8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe8
	add r1, #0xd8
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r0, #0xe8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r0, #0xe8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r4, #0xe8
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov113_0225DAA8

	thumb_func_start ov113_0225DAFC
ov113_0225DAFC: ; 0x0225DAFC
	ldr r3, _0225DB04 ; =sub_02017110
	add r0, #0xd8
	bx r3
	nop
_0225DB04: .word sub_02017110
	thumb_func_end ov113_0225DAFC

	thumb_func_start ov113_0225DB08
ov113_0225DB08: ; 0x0225DB08
	push {r4, lr}
	sub sp, #0x40
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #4
	bl sub_020BB4C8
	bl sub_020241B4
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_020203D4
	add r1, r4, #0
	add r1, #0xcc
	ldr r1, [r1, #0]
	mov r0, #0
	bl sub_02020854
	bl sub_020203EC
	mov r0, #0
	ldr r2, _0225DBB8 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl sub_020AF51C
	ldr r1, _0225DBBC ; =0x0000739C
	mov r0, #0
	bl sub_020AF558
	ldr r0, _0225DBC0 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF56C
	ldr r0, _0225DBC0 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF590
	add r0, sp, #0x28
	bl sub_020AF4BC
	ldr r1, _0225DBC4 ; =0x021C5B48
	add r0, sp, #4
	bl sub_020C4C88
	ldr r1, _0225DBC8 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	bl sub_020AF4EC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	add r0, r4, #0
	add r0, #0xe8
	bl sub_02017294
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov113_0225E4A0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add sp, #0x40
	pop {r4, pc}
	nop
_0225DBB8: .word 0xFFFFF000
_0225DBBC: .word 0x0000739C
_0225DBC0: .word 0x00007FFF
_0225DBC4: .word 0x021C5B48
_0225DBC8: .word 0x021C5B0C
	thumb_func_end ov113_0225DB08

	thumb_func_start ov113_0225DBCC
ov113_0225DBCC: ; 0x0225DBCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r2, #1
	add r6, r0, #0
	str r2, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x93
	str r0, [sp, #0x10]
	add r1, r6, #0
	ldr r0, [r6, #8]
	add r1, #0xb4
	mov r3, #2
	bl sub_0201A7E8
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #0xf
	bl sub_0201ADA4
	add r4, r6, #0
	mov r5, #0
	ldr r7, _0225DC48 ; =0x022608C8
	add r4, #0x34
	b _0225DC40
_0225DC06:
	lsl r3, r5, #1
	add r0, r7, r3
	ldrb r0, [r0, #1]
	lsl r1, r5, #4
	mov r2, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r3, [r7, r3]
	ldr r0, [r6, #8]
	add r1, r4, r1
	bl sub_0201A7E8
	lsl r0, r5, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	add r5, r5, #1
_0225DC40:
	cmp r5, #8
	blt _0225DC06
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DC48: .word 0x022608C8
	thumb_func_end ov113_0225DBCC

	thumb_func_start ov113_0225DC4C
ov113_0225DC4C: ; 0x0225DC4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb4
	bl sub_0201A8FC
	mov r4, #0
	add r5, #0x34
_0225DC5A:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0225DC5A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov113_0225DC4C

	thumb_func_start ov113_0225DC6C
ov113_0225DC6C: ; 0x0225DC6C
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _0225DC84 ; =ov113_0225DC88
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0225DC84: .word ov113_0225DC88
	thumb_func_end ov113_0225DC6C

	thumb_func_start ov113_0225DC88
ov113_0225DC88: ; 0x0225DC88
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0225DCF4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225DCF8 ; =0xFFFFCFFD
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
	ldr r2, _0225DCFC ; =0x0000CFFB
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
	ldr r2, _0225DD00 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0225DD04 ; =0xBFFF0000
	ldr r0, _0225DD08 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0225DCF4: .word 0x04000008
_0225DCF8: .word 0xFFFFCFFD
_0225DCFC: .word 0x0000CFFB
_0225DD00: .word 0x00007FFF
_0225DD04: .word 0xBFFF0000
_0225DD08: .word 0x04000580
	thumb_func_end ov113_0225DC88

	thumb_func_start ov113_0225DD0C
ov113_0225DD0C: ; 0x0225DD0C
	ldr r3, _0225DD10 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0225DD10: .word sub_020242C4
	thumb_func_end ov113_0225DD0C

	thumb_func_start ov113_0225DD14
ov113_0225DD14: ; 0x0225DD14
	push {r4, lr}
	add r4, r0, #0
	bl ov66_022328F0
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov113_0225DD14

	thumb_func_start ov113_0225DD24
ov113_0225DD24: ; 0x0225DD24
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, #0x96
	strh r0, [r4, #2]
	mov r0, #0x1f
	strh r0, [r4]
	add r0, #0xe2
	str r0, [r4, #4]
	mov r0, #0
	strb r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov113_0225DD24

	thumb_func_start ov113_0225DD44
ov113_0225DD44: ; 0x0225DD44
	mov r1, #0x5a
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov113_0225DD44

	thumb_func_start ov113_0225DD4C
ov113_0225DD4C: ; 0x0225DD4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r0, [sp]
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x48
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_0207A268
	str r0, [sp, #4]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _0225DDBC
_0225DD74:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	mov r1, #0
	strh r0, [r5, #2]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #8]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp]
	bl ov113_0226072C
	strh r0, [r5]
	add r6, r6, #1
	add r5, #0xc
	cmp r6, r7
	blt _0225DD74
_0225DDBC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225DD4C

	thumb_func_start ov113_0225DDC0
ov113_0225DDC0: ; 0x0225DDC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0x59
	add r4, r0, #0
	lsl r3, r3, #2
	add r5, r1, #0
	ldr r1, [r4, r3]
	add r6, r2, #0
	str r1, [sp]
	ldr r1, _0225DE88 ; =0x000019E0
	add r2, r5, #0
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	add r1, r3, #0
	sub r3, r3, #4
	add r1, #0x30
	ldr r3, [r4, r3]
	add r1, r4, r1
	bl ov113_0225E398
	str r0, [sp, #0xc]
	cmp r0, #1
	bne _0225DE80
	add r0, r6, #0
	bl ov66_02232B8C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0225DE7A
	ldr r3, _0225DE8C ; =0x0000099C
	lsl r1, r6, #1
	add r0, r4, r3
	mov ip, r0
	mov r2, ip
	ldrh r0, [r5, #2]
	ldrh r2, [r2, r1]
	cmp r0, r2
	bne _0225DE1C
	add r2, r4, r1
	add r3, #0x10
	ldrh r7, [r5]
	ldrh r2, [r2, r3]
	cmp r7, r2
	beq _0225DE7A
_0225DE1C:
	mov r2, ip
	strh r0, [r2, r1]
	ldrh r2, [r5]
	ldr r0, _0225DE90 ; =0x000009AC
	add r1, r4, r1
	strh r2, [r1, r0]
	sub r0, #0x3c
	mov r3, #0x59
	add r7, r4, r0
	lsl r0, r6, #2
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0225DE88 ; =0x000019E0
	sub r3, r3, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #8]
	ldr r2, [r7, r2]
	ldr r3, [r4, r3]
	bl ov113_0225D938
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0200D3F4
	add r0, r6, #0
	add r0, #0x21
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, #0x22
	str r0, [sp]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r3, [r5]
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #2
	bl sub_020038B0
_0225DE7A:
	ldr r0, _0225DE94 ; =0x000005EB
	bl sub_02005748
_0225DE80:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225DE88: .word 0x000019E0
_0225DE8C: .word 0x0000099C
_0225DE90: .word 0x000009AC
_0225DE94: .word 0x000005EB
	thumb_func_end ov113_0225DDC0

	thumb_func_start ov113_0225DE98
ov113_0225DE98: ; 0x0225DE98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	bl ov66_02232B4C
	mov r7, #0
	b _0225DFD8
_0225DEAE:
	lsl r3, r7, #2
	mov r0, #0x17
	add r1, r6, r3
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x28]
	ldr r1, [r0, r3]
	cmp r2, r1
	bne _0225DEC2
	b _0225DFC8
_0225DEC2:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0225DF32
	str r1, [sp]
	ldr r3, [r6, #0]
	add r2, r6, #0
	ldr r0, [r6, #0x30]
	ldr r1, [r6, #0x2c]
	ldr r3, [r3, #0]
	add r2, #0x34
	bl ov113_02260620
	ldr r0, [r6, #8]
	mov r1, #6
	bl sub_02019FE4
	str r0, [sp, #0x10]
	lsl r0, r7, #3
	ldr r1, _0225E02C ; =0x02260AD4
	str r0, [sp, #0x1c]
	add r4, r1, r0
	mov r0, #0x27
	lsl r0, r0, #6
	add r0, r6, r0
	ldrh r5, [r4, #2]
	str r0, [sp, #0x20]
	b _0225DF18
_0225DEFA:
	ldrh r0, [r4, #4]
	ldr r1, _0225E02C ; =0x02260AD4
	lsl r3, r5, #5
	lsl r2, r0, #1
	ldr r0, [sp, #0x1c]
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r0, r3, r0
	lsl r3, r0, #1
	ldr r0, [sp, #0x20]
	add r1, r1, r3
	add r0, r0, r3
	bl sub_020C4B18
	add r5, r5, #1
_0225DF18:
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #6]
	add r0, r1, r0
	cmp r5, r0
	blt _0225DEFA
	ldr r0, [r6, #8]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	b _0225DF98
_0225DF32:
	add r0, r6, #0
	add r0, #0x34
	add r1, r7, #0
	bl ov113_02260714
	lsl r0, r7, #1
	ldr r2, _0225E030 ; =0x0000099C
	add r3, r6, r0
	mov r1, #0
	add r0, r2, #0
	strh r1, [r3, r2]
	add r0, #0x10
	strh r1, [r3, r0]
	lsl r0, r7, #2
	add r0, r6, r0
	sub r2, #0x2c
	ldr r0, [r0, r2]
	bl sub_0200D3F4
	ldr r3, _0225E02C ; =0x02260AD4
	lsl r4, r7, #3
	add r0, r3, r4
	ldrh r1, [r0, #2]
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldrh r1, [r0, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldrh r0, [r0, #6]
	mov r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r3, [r3, r4]
	ldr r0, [r6, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r6, #8]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_0225DF98:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x28]
	lsl r2, r7, #2
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0225DFC8
	ldr r3, _0225E034 ; =0x02260914
	ldr r0, _0225E038 ; =0x0000096C
	ldrsh r1, [r3, r2]
	add r3, r3, r2
	mov r2, #2
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	ldr r0, [r6, r0]
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, _0225E038 ; =0x0000096C
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0200D3F4
_0225DFC8:
	ldr r1, [sp, #0x28]
	lsl r0, r7, #2
	ldr r2, [r1, r0]
	add r1, r6, r0
	mov r0, #0x17
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r7, r7, #1
_0225DFD8:
	cmp r7, #8
	bge _0225DFDE
	b _0225DEAE
_0225DFDE:
	mov r0, #0
	mov r1, #0x17
	add r7, r0, #0
	lsl r1, r1, #4
	sub r2, r0, #1
	b _0225DFF8
_0225DFEA:
	lsl r3, r7, #2
	add r3, r6, r3
	ldr r3, [r3, r1]
	cmp r3, r2
	beq _0225DFF6
	add r0, r0, #1
_0225DFF6:
	add r7, r7, #1
_0225DFF8:
	cmp r7, #8
	blt _0225DFEA
	ldr r1, _0225E03C ; =0x000008D3
	strb r0, [r6, r1]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0225E012
	ldr r0, _0225E040 ; =0x000005E4
	bl sub_02005748
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225E012:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0225E024
	ldr r0, _0225E040 ; =0x000005E4
	bl sub_02005748
	add sp, #0x2c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0225E024:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225E02C: .word 0x02260AD4
_0225E030: .word 0x0000099C
_0225E034: .word 0x02260914
_0225E038: .word 0x0000096C
_0225E03C: .word 0x000008D3
_0225E040: .word 0x000005E4
	thumb_func_end ov113_0225DE98

	thumb_func_start ov113_0225E044
ov113_0225E044: ; 0x0225E044
	push {r3, lr}
	add r3, r0, #0
	str r1, [sp]
	add r2, r3, #0
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x2c]
	ldr r3, [r3, #0]
	add r2, #0x34
	ldr r3, [r3, #0]
	bl ov113_02260620
	pop {r3, pc}
	thumb_func_end ov113_0225E044

	thumb_func_start ov113_0225E05C
ov113_0225E05C: ; 0x0225E05C
	ldr r3, _0225E064 ; =ov113_02260714
	add r0, #0x34
	bx r3
	nop
_0225E064: .word ov113_02260714
	thumb_func_end ov113_0225E05C

	thumb_func_start ov113_0225E068
ov113_0225E068: ; 0x0225E068
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r4, _0225E0CC ; =0x02260AA0
	add r5, r0, #0
	add r6, r1, #0
	add r3, sp, #0
	mov r2, #6
_0225E076:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225E076
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	mov r0, #0x99
	add r2, r5, #0
	lsl r0, r0, #4
_0225E08A:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0225E0B2
	lsl r1, r6, #5
	add r1, #0x10
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, sp, #0
	bl sub_0200CE6C
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x99
	lsl r1, r1, #4
	str r0, [r2, r1]
	b _0225E0BA
_0225E0B2:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #3
	blt _0225E08A
_0225E0BA:
	add r0, r5, #0
	add r1, r6, #0
	bl ov113_0225E0D4
	ldr r0, _0225E0D0 ; =0x000005E5
	bl sub_02005748
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225E0CC: .word 0x02260AA0
_0225E0D0: .word 0x000005E5
	thumb_func_end ov113_0225E068

	thumb_func_start ov113_0225E0D4
ov113_0225E0D4: ; 0x0225E0D4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	mov r1, #2
	bl sub_02003164
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_0200316C
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r0, #0x22
	add r1, #0x22
	mov r2, #0xc
	bl sub_020C4B18
	add r4, #0x11
	mov r0, #0
	lsl r1, r4, #1
	str r0, [sp]
	add r0, r6, r1
	add r1, r5, r1
	mov r2, #1
	mov r3, #6
	bl sub_0200393C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225E0D4

	thumb_func_start ov113_0225E118
ov113_0225E118: ; 0x0225E118
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x99
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_0225E124:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225E150
	bl sub_0200D3B8
	cmp r0, #0
	bne _0225E144
	mov r0, #0x99
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r0, #0x99
	lsl r0, r0, #4
	str r6, [r5, r0]
	b _0225E150
_0225E144:
	mov r0, #0x99
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
_0225E150:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225E124
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov113_0225E118

	thumb_func_start ov113_0225E15C
ov113_0225E15C: ; 0x0225E15C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _0225E174
	bl sub_02022974
_0225E174:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	ldr r7, [r6, #0x20]
	bl ov113_0225E264
	add r0, sp, #0x38
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x20]
	lsl r2, r2, #0x18
	add r1, sp, #0x38
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add r0, sp, #0x38
	mov r1, #1
	mov r2, #0x76
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x2c
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0225E1E2
	ldr r1, [sp, #0x28]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r4, r4, r0
_0225E1E2:
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	add r0, r7, #0
	bl sub_0200D9B0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x98]
	add r0, r7, #0
	bl sub_0200D04C
	mov r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	sub r0, #8
	str r0, [sp, #0x64]
	mov r0, #0x33
	str r0, [sp, #0x6c]
	mov r0, #1
	str r0, [sp, #0x70]
	mov r0, #0x76
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	bl sub_02012AC0
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	sub r2, #8
	bl sub_020128C4
	add r0, sp, #0x38
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x28]
	strh r0, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225E15C

	thumb_func_start ov113_0225E250
ov113_0225E250: ; 0x0225E250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov113_0225E250

	thumb_func_start ov113_0225E264
ov113_0225E264: ; 0x0225E264
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _0225E28C
	add r5, r5, #1
_0225E28C:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov113_0225E264

	thumb_func_start ov113_0225E294
ov113_0225E294: ; 0x0225E294
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0225E30C ; =0x000019D4
	add r5, r0, #0
	add r0, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r2, r0
	bne _0225E2BE
	add r2, #0x88
	str r2, [r5, r1]
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0xc
	cmp r2, r0
	ble _0225E2B4
	str r0, [r5, r1]
_0225E2B4:
	ldr r0, _0225E30C ; =0x000019D4
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	b _0225E2DA
_0225E2BE:
	add r0, r1, #4
	ldr r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	sub r2, r2, r0
	add r0, r1, #4
	str r2, [r5, r0]
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r0, r2
	bge _0225E2DA
	add r0, r1, #4
	str r2, [r5, r0]
_0225E2DA:
	ldr r0, _0225E310 ; =0x000019D8
	mov r6, #0
	ldr r0, [r5, r0]
	mov r4, #0x10
	asr r1, r0, #8
	mov r0, #0x20
	sub r0, r0, r1
	add r0, #0xb0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_0225E2EE:
	ldr r0, _0225E314 ; =0x00000924
	lsl r1, r4, #0x10
	mov r3, #0x11
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	add r2, r7, #0
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r6, r6, #1
	add r4, #0x20
	add r5, r5, #4
	cmp r6, #6
	blt _0225E2EE
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E30C: .word 0x000019D4
_0225E310: .word 0x000019D8
_0225E314: .word 0x00000924
	thumb_func_end ov113_0225E294

	thumb_func_start ov113_0225E318
ov113_0225E318: ; 0x0225E318
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E360 ; =0x000019D4
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, r4
	bge _0225E32A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225E32A:
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	bge _0225E33E
	bl sub_02022974
	ldr r0, _0225E360 ; =0x000019D4
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_0225E33E:
	ldr r1, _0225E360 ; =0x000019D4
	ldr r0, [r5, r1]
	sub r0, r0, r4
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, [r5, r1]
	add r1, #8
	sub r2, r2, r0
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	asr r0, r0, #2
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0225E360: .word 0x000019D4
	thumb_func_end ov113_0225E318

	thumb_func_start ov113_0225E364
ov113_0225E364: ; 0x0225E364
	bx lr
	; .align 2, 0
	thumb_func_end ov113_0225E364

	.rodata


	.global Unk_ov113_022608AC
Unk_ov113_022608AC: ; 0x022608AC
	.incbin "incbin/overlay113_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov113_022608B4
Unk_ov113_022608B4: ; 0x022608B4
	.incbin "incbin/overlay113_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov113_022608BC
Unk_ov113_022608BC: ; 0x022608BC
	.incbin "incbin/overlay113_rodata.bin", 0x10, 0x1C - 0x10

	.global Unk_ov113_022608C8
Unk_ov113_022608C8: ; 0x022608C8
	.incbin "incbin/overlay113_rodata.bin", 0x1C, 0x2C - 0x1C

	.global Unk_ov113_022608D8
Unk_ov113_022608D8: ; 0x022608D8
	.incbin "incbin/overlay113_rodata.bin", 0x2C, 0x3C - 0x2C

	.global Unk_ov113_022608E8
Unk_ov113_022608E8: ; 0x022608E8
	.incbin "incbin/overlay113_rodata.bin", 0x3C, 0x50 - 0x3C

	.global Unk_ov113_022608FC
Unk_ov113_022608FC: ; 0x022608FC
	.incbin "incbin/overlay113_rodata.bin", 0x50, 0x68 - 0x50

	.global Unk_ov113_02260914
Unk_ov113_02260914: ; 0x02260914
	.incbin "incbin/overlay113_rodata.bin", 0x68, 0x88 - 0x68

	.global Unk_ov113_02260934
Unk_ov113_02260934: ; 0x02260934
	.incbin "incbin/overlay113_rodata.bin", 0x88, 0xA8 - 0x88

	.global Unk_ov113_02260954
Unk_ov113_02260954: ; 0x02260954
	.incbin "incbin/overlay113_rodata.bin", 0xA8, 0xC8 - 0xA8

	.global Unk_ov113_02260974
Unk_ov113_02260974: ; 0x02260974
	.incbin "incbin/overlay113_rodata.bin", 0xC8, 0xF0 - 0xC8

	.global Unk_ov113_0226099C
Unk_ov113_0226099C: ; 0x0226099C
	.incbin "incbin/overlay113_rodata.bin", 0xF0, 0x124 - 0xF0

	.global Unk_ov113_022609D0
Unk_ov113_022609D0: ; 0x022609D0
	.incbin "incbin/overlay113_rodata.bin", 0x124, 0x158 - 0x124

	.global Unk_ov113_02260A04
Unk_ov113_02260A04: ; 0x02260A04
	.incbin "incbin/overlay113_rodata.bin", 0x158, 0x18C - 0x158

	.global Unk_ov113_02260A38
Unk_ov113_02260A38: ; 0x02260A38
	.incbin "incbin/overlay113_rodata.bin", 0x18C, 0x1C0 - 0x18C

	.global Unk_ov113_02260A6C
Unk_ov113_02260A6C: ; 0x02260A6C
	.incbin "incbin/overlay113_rodata.bin", 0x1C0, 0x1F4 - 0x1C0

	.global Unk_ov113_02260AA0
Unk_ov113_02260AA0: ; 0x02260AA0
	.incbin "incbin/overlay113_rodata.bin", 0x1F4, 0x228 - 0x1F4

	.global Unk_ov113_02260AD4
Unk_ov113_02260AD4: ; 0x02260AD4
	.incbin "incbin/overlay113_rodata.bin", 0x228, 0x268 - 0x228

	.global Unk_ov113_02260B14
Unk_ov113_02260B14: ; 0x02260B14
	.incbin "incbin/overlay113_rodata.bin", 0x268, 0x2BC - 0x268

	.global Unk_ov113_02260B68
Unk_ov113_02260B68: ; 0x02260B68
	.incbin "incbin/overlay113_rodata.bin", 0x2BC, 0x54

