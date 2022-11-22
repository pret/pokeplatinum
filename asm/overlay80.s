	.include "macros/function.inc"


	.text

	thumb_func_start ov80_021D0D80
ov80_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x11
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0xe4
	mov r2, #0x11
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xe4
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _021D0DD4 ; =0x00000139
	str r5, [r4, #0x2c]
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhs _021D0DB6
	b _021D0DB8
_021D0DB6:
	mov r0, #0
_021D0DB8:
	strb r0, [r4]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #0
	add r2, r1, #0
	strh r0, [r4, #2]
	mov r0, #0x11
	str r0, [r4, #4]
	mov r0, #0x37
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0DD4: .word 0x00000139
	thumb_func_end ov80_021D0D80

	thumb_func_start ov80_021D0DD8
ov80_021D0DD8: ; 0x021D0DD8
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #8
	bhi _021D0E4A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0DF2: ; jump table
	.short _021D0E04 - _021D0DF2 - 2 ; case 0
	.short _021D0E0C - _021D0DF2 - 2 ; case 1
	.short _021D0E4A - _021D0DF2 - 2 ; case 2
	.short _021D0E14 - _021D0DF2 - 2 ; case 3
	.short _021D0E22 - _021D0DF2 - 2 ; case 4
	.short _021D0E4A - _021D0DF2 - 2 ; case 5
	.short _021D0E30 - _021D0DF2 - 2 ; case 6
	.short _021D0E46 - _021D0DF2 - 2 ; case 7
	.short _021D0E3E - _021D0DF2 - 2 ; case 8
_021D0E04:
	bl ov80_021D132C
	str r0, [r4, #8]
	b _021D0E4A
_021D0E0C:
	bl ov80_021D1354
	str r0, [r4, #8]
	b _021D0E4A
_021D0E14:
	bl ov80_021D138C
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E22:
	bl ov80_021D13A0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E30:
	bl ov80_021D13DC
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E3E:
	bl ov80_021D1438
	str r0, [r4, #8]
	b _021D0E4A
_021D0E46:
	mov r0, #1
	pop {r4, pc}
_021D0E4A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D0DD8

	thumb_func_start ov80_021D0E50
ov80_021D0E50: ; 0x021D0E50
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x11
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov80_021D0E50

	thumb_func_start ov80_021D0E68
ov80_021D0E68: ; 0x021D0E68
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4]
	mov r1, #0x24
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D0E9C ; =0x021D2EB4
	ldr r1, [r1, r3]
	cmp r1, #0
	beq _021D0E7E
	blx r1
_021D0E7E:
	bl sub_020A635C
	add r0, r4, #0
	bl ov80_021D2AEC
	ldr r0, [r4, #0x28]
	bl sub_0201C2B8
	ldr r3, _021D0EA0 ; =0x027E0000
	ldr r1, _021D0EA4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D0E9C: .word 0x021D2EB4
_021D0EA0: .word 0x027E0000
_021D0EA4: .word 0x00003FF8
	thumb_func_end ov80_021D0E68

	thumb_func_start ov80_021D0EA8
ov80_021D0EA8: ; 0x021D0EA8
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D0EC4 ; =0x021D2E6C
	add r3, sp, #0
	mov r2, #5
_021D0EB2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0EB2
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D0EC4: .word 0x021D2E6C
	thumb_func_end ov80_021D0EA8

	thumb_func_start ov80_021D0EC8
ov80_021D0EC8: ; 0x021D0EC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D0EDC
	cmp r0, #1
	beq _021D0F82
	cmp r0, #2
	beq _021D0FAE
	b _021D0FCC
_021D0EDC:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0FD8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0FDC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021D0F1C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021D0F1C
	mov r0, #3
	str r0, [r4, #0x20]
	mov r0, #0x1b
	str r0, [r4, #0x24]
	b _021D0F34
_021D0F1C:
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0, #4]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r4, #0x24]
_021D0F34:
	ldr r0, [r4, #0x20]
	ldr r2, _021D0FE0 ; =0x000001B1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	mov r1, #0x1a
	str r0, [r4, #0x1c]
	ldr r3, [r4, #4]
	mov r0, #1
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	ldr r2, _021D0FE4 ; =0x00000267
	ldr r3, [r4, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1, #0]
	ldr r1, [r4, #4]
	mov r0, #0x16
	bl sub_02023790
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	ldr r0, [r4, #4]
	bl sub_02039EBC
	str r0, [r4, #0x30]
	ldr r0, _021D0FE8 ; =0x021D3380
	ldr r1, [r4, #4]
	bl ov80_021D2D70
	str r0, [r4, #0x40]
	b _021D0FCC
_021D0F82:
	bl ov80_021D0EA8
	ldr r0, [r4, #4]
	bl sub_02018340
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl ov80_021D1088
	add r0, r4, #0
	bl ov80_021D1158
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov80_021D2A08
	b _021D0FCC
_021D0FAE:
	ldr r0, _021D0FEC ; =ov80_021D0E68
	add r1, r4, #0
	bl sub_02017798
	ldrb r1, [r4]
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021D0FF0 ; =0x021D2EA4
	ldr r0, [r0, r2]
	str r0, [r4, #0x38]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_021D0FCC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
	nop
_021D0FD8: .word 0xFFFFE0FF
_021D0FDC: .word 0x04001000
_021D0FE0: .word 0x000001B1
_021D0FE4: .word 0x00000267
_021D0FE8: .word 0x021D3380
_021D0FEC: .word ov80_021D0E68
_021D0FF0: .word 0x021D2EA4
	thumb_func_end ov80_021D0EC8

	thumb_func_start ov80_021D0FF4
ov80_021D0FF4: ; 0x021D0FF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201E530
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl ov80_021D2AC0
	add r0, r5, #0
	bl ov80_021D12D8
	mov r4, #0
_021D1026:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x28]
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #8
	blt _021D1026
	ldr r0, [r5, #0x28]
	bl sub_020181C4
	ldr r0, [r5, #0x40]
	bl ov80_021D2E10
	ldr r0, [r5, #0x30]
	bl sub_02039EF0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r5, #0x80
	ldr r0, [r5, #0]
	bl sub_0200B190
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D0FF4

	thumb_func_start ov80_021D1068
ov80_021D1068: ; 0x021D1068
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4]
	mov r1, #0x24
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1084 ; =0x021D2EAC
	ldr r1, [r1, r3]
	blx r1
	add r0, r4, #0
	bl ov80_021D2AE0
	pop {r4, pc}
	nop
_021D1084: .word 0x021D2EAC
	thumb_func_end ov80_021D1068

	thumb_func_start ov80_021D1088
ov80_021D1088: ; 0x021D1088
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	ldr r4, _021D1150 ; =0x021D2E5C
	add r3, sp, #4
	str r0, [sp]
	add r6, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _021D1154 ; =0x021D2F00
	add r3, sp, #0x14
	mov r2, #0x1c
_021D10AA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D10AA
	mov r4, #0
	add r7, r4, #0
	add r5, sp, #0x14
_021D10B8:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, r5, #0
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r4, r4, #1
	bl sub_02019EBC
	add r7, r7, #1
	add r5, #0x1c
	cmp r7, #8
	blt _021D10B8
	ldr r3, [sp]
	mov r0, #0
	ldr r3, [r3, #4]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #1
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #2
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #3
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #4
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #5
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #6
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [sp]
	mov r0, #7
	ldr r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_021D1150: .word 0x021D2E5C
_021D1154: .word 0x021D2F00
	thumb_func_end ov80_021D1088

	thumb_func_start ov80_021D1158
ov80_021D1158: ; 0x021D1158
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #4]
	mov r0, #0x11
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0208C210
	mov r0, #0x14
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0208C210
	mov r0, #0x15
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0208C210
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0208C210
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0208C210
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x18
	add r3, #0xb8
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x16
	add r3, #0xbc
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x17
	add r3, #0xc0
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x19
	add r3, #0xc4
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x1a
	add r3, #0xc8
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x1b
	add r3, #0xcc
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x1c
	add r3, #0xd0
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x1d
	add r3, #0xd4
	bl sub_0208C2F4
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02006CA8
	mov r1, #0x1e
	ldr r2, [r5, #4]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	mov r1, #0x1e
	ldr r2, [r5, #4]
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02002E7C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D1158

	thumb_func_start ov80_021D12D8
ov80_021D12D8: ; 0x021D12D8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r4, #0x98
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D12D8

	thumb_func_start ov80_021D132C
ov80_021D132C: ; 0x021D132C
	push {r4, lr}
	add r4, r0, #0
	bl ov80_021D0EC8
	cmp r0, #1
	beq _021D133C
	mov r0, #0
	pop {r4, pc}
_021D133C:
	ldrb r2, [r4]
	mov r1, #0x24
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1350 ; =0x021D2E94
	ldr r1, [r1, r3]
	blx r1
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D1350: .word 0x021D2E94
	thumb_func_end ov80_021D132C

	thumb_func_start ov80_021D1354
ov80_021D1354: ; 0x021D1354
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4]
	mov r1, #0x24
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1384 ; =0x021D2E98
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #1
	beq _021D136E
	mov r0, #1
	pop {r4, pc}
_021D136E:
	ldrb r2, [r4]
	mov r1, #0x24
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1388 ; =0x021D2E9C
	ldr r1, [r1, r3]
	blx r1
	mov r0, #3
	pop {r4, pc}
	nop
_021D1384: .word 0x021D2E98
_021D1388: .word 0x021D2E9C
	thumb_func_end ov80_021D1354

	thumb_func_start ov80_021D138C
ov80_021D138C: ; 0x021D138C
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D139A
	mov r0, #4
	pop {r3, pc}
_021D139A:
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov80_021D138C

	thumb_func_start ov80_021D13A0
ov80_021D13A0: ; 0x021D13A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x38]
	blx r1
	cmp r0, #1
	beq _021D13C0
	ldrb r2, [r4]
	mov r1, #0x24
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D13D4 ; =0x021D2EA8
	ldr r1, [r1, r3]
	blx r1
	mov r0, #4
	pop {r4, pc}
_021D13C0:
	ldrb r2, [r4]
	mov r1, #0x24
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D13D8 ; =0x021D2EA0
	ldr r1, [r1, r3]
	blx r1
	mov r0, #6
	pop {r4, pc}
	; .align 2, 0
_021D13D4: .word 0x021D2EA8
_021D13D8: .word 0x021D2EA0
	thumb_func_end ov80_021D13A0

	thumb_func_start ov80_021D13DC
ov80_021D13DC: ; 0x021D13DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D141A
	mov r1, #0
	ldr r0, _021D1430 ; =0x04000050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl sub_020BF55C
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	add sp, #4
	mov r0, #8
	pop {r3, r4, pc}
_021D141A:
	ldrb r2, [r4]
	mov r1, #0x24
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1434 ; =0x021D2EA8
	ldr r1, [r1, r3]
	blx r1
	mov r0, #6
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D1430: .word 0x04000050
_021D1434: .word 0x021D2EA8
	thumb_func_end ov80_021D13DC

	thumb_func_start ov80_021D1438
ov80_021D1438: ; 0x021D1438
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4]
	mov r1, #0x24
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1454 ; =0x021D2EB0
	ldr r1, [r1, r3]
	blx r1
	add r0, r4, #0
	bl ov80_021D0FF4
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
_021D1454: .word 0x021D2EB0
	thumb_func_end ov80_021D1438

	thumb_func_start ov80_021D1458
ov80_021D1458: ; 0x021D1458
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x11
	ldr r0, [r4, #4]
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #4
	str r0, [r4, #0x34]
	bl sub_020D5124
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D1458

	thumb_func_start ov80_021D1478
ov80_021D1478: ; 0x021D1478
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	bl ov80_021D225C
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D148E
	add r0, r5, #0
	bl ov80_021D2700
_021D148E:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov80_021D2C1C
	add r0, r5, #0
	bl ov80_021D1F14
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1478

	thumb_func_start ov80_021D14A8
ov80_021D14A8: ; 0x021D14A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D14BA
	cmp r1, #1
	beq _021D1504
	b _021D1546
_021D14BA:
	ldr r1, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	str r1, [r4, #0x1c]
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	lsl r2, r1, #4
	add r1, r4, #0
	sub r2, #0x68
	add r1, #0x8c
	str r2, [r1, #0]
	ldr r1, [r4, #0x1c]
	lsl r2, r1, #4
	add r1, r4, #0
	sub r2, #0x60
	add r1, #0x90
	str r2, [r1, #0]
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x8c
	add r2, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov80_021D24BC
	add r0, r5, #0
	bl ov80_021D1DF8
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D1546
	add r0, r5, #0
	bl ov80_021D259C
	b _021D1546
_021D1504:
	bl ov80_021D20DC
	add r0, r5, #0
	bl ov80_021D2398
	ldr r0, [r5, #4]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	mov r2, #0x49
	ldr r3, [r5, #0x2c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r3, #0x14
	bl ov80_021D2AF4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov80_021D1A30
	add r0, r5, #0
	bl ov80_021D19E4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1546:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D14A8

	thumb_func_start ov80_021D1550
ov80_021D1550: ; 0x021D1550
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r2, #0x25
	str r0, [sp, #8]
	add r0, r1, #0
	mov r1, #0x11
	bl sub_0200F174
	ldr r0, _021D1594 ; =0x0000068F
	bl sub_02005748
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r1, #4
	ldr r0, _021D1598 ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl sub_020BF55C
	mov r0, #0
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021D1594: .word 0x0000068F
_021D1598: .word 0x04000050
	thumb_func_end ov80_021D1550

	thumb_func_start ov80_021D159C
ov80_021D159C: ; 0x021D159C
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #2
	mov r2, #0x24
	bl sub_0200F174
	mov r0, #0x69
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D159C

	thumb_func_start ov80_021D15C8
ov80_021D15C8: ; 0x021D15C8
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x11
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, _021D1608 ; =0x0000068F
	bl sub_02005748
	mov r0, #0
	bl sub_0200F338
	mov r1, #4
	ldr r0, _021D160C ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl sub_020BF55C
	mov r0, #0
	add sp, #0xc
	pop {pc}
	nop
_021D1608: .word 0x0000068F
_021D160C: .word 0x04000050
	thumb_func_end ov80_021D15C8

	thumb_func_start ov80_021D1610
ov80_021D1610: ; 0x021D1610
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #0x69
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D1610

	thumb_func_start ov80_021D163C
ov80_021D163C: ; 0x021D163C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r3, [r1, #0x14]
	cmp r3, #1
	bhi _021D165A
	ldr r1, _021D1670 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _021D165A
	ldr r0, _021D1674 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D165A:
	cmp r3, #1
	bls _021D1662
	mov r0, #0
	pop {r3, pc}
_021D1662:
	ldr r1, _021D1670 ; =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	nop
_021D1670: .word 0x021BF67C
_021D1674: .word 0x000005DD
	thumb_func_end ov80_021D163C

	thumb_func_start ov80_021D1678
ov80_021D1678: ; 0x021D1678
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r1, [r1, #0x14]
	cmp r1, #1
	bhi _021D16B2
	ldr r2, _021D16C8 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #1
	tst r2, r3
	beq _021D16A2
	bl ov80_021D29BC
	cmp r0, #0
	beq _021D169E
	ldr r0, _021D16CC ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D169E:
	mov r0, #0
	pop {r3, pc}
_021D16A2:
	mov r2, #2
	tst r2, r3
	beq _021D16B2
	ldr r0, _021D16CC ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D16B2:
	cmp r1, #1
	bls _021D16BA
	mov r0, #0
	pop {r3, pc}
_021D16BA:
	ldr r1, _021D16C8 ; =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	nop
_021D16C8: .word 0x021BF67C
_021D16CC: .word 0x000005DD
	thumb_func_end ov80_021D1678

	thumb_func_start ov80_021D16D0
ov80_021D16D0: ; 0x021D16D0
	push {r3, lr}
	ldr r2, _021D16F0 ; =0x021BF67C
	mov r1, #2
	ldr r3, [r2, #0x48]
	tst r1, r3
	beq _021D16E6
	ldr r0, _021D16F4 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D16E6:
	ldr r1, [r2, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D16F0: .word 0x021BF67C
_021D16F4: .word 0x000005DD
	thumb_func_end ov80_021D16D0

	thumb_func_start ov80_021D16F8
ov80_021D16F8: ; 0x021D16F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r1, #1
	ldrb r2, [r4, #0x12]
	tst r1, r2
	beq _021D1724
	ldrb r1, [r4, #0x15]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #2
	blo _021D1738
	bl ov80_021D19E4
	mov r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrb r1, [r4, #0x15]
	mov r0, #0xf
	bic r1, r0
	strb r1, [r4, #0x15]
	b _021D1738
_021D1724:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _021D1738
	ldrh r1, [r4, #0x16]
	cmp r1, #1
	bne _021D1738
	ldr r2, [r4, #0x20]
	mov r1, #0
	bl ov80_021D1D24
_021D1738:
	add r0, r5, #0
	bl ov80_021D1C24
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D16F8

	thumb_func_start ov80_021D1744
ov80_021D1744: ; 0x021D1744
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x34]
	ldrb r1, [r1]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov80_021D2D28
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov80_021D1744

	thumb_func_start ov80_021D1758
ov80_021D1758: ; 0x021D1758
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x94
	ldr r5, [r1, #0]
	add r1, r6, #0
	add r1, #0x90
	ldr r7, [r1, #0]
	add r1, r6, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	ldr r4, [r6, #0x34]
	cmp r1, #0
	bne _021D177C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D177C:
	add r1, r6, #0
	mov r2, #0
	add r1, #0x8c
	str r2, [r1, #0]
	cmp r5, #0
	bne _021D179C
	add r4, #0x58
	add r1, r4, #0
	bl ov80_021D1B5C
	add r0, r6, #0
	bl ov80_021D1D38
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D179C:
	add r1, r4, #0
	add r1, #0x58
	add r2, r5, #0
	bl ov80_021D1B5C
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_020237E8
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl ov80_021D1A58
	ldrh r0, [r5, #4]
	ldr r2, _021D1844 ; =0x0000013B
	mov r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #6]
	mov r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0x28]
	bl sub_0200E2A4
	ldrh r0, [r5, #4]
	cmp r0, #1
	bhi _021D17E4
	add r7, r4, #0
	add r7, #0x38
	b _021D17E8
_021D17E4:
	add r7, r4, #0
	add r7, #0x48
_021D17E8:
	str r7, [r4, #0x78]
	ldrb r0, [r4, #0x15]
	mov r1, #0xf0
	ldr r2, _021D1844 ; =0x0000013B
	bic r0, r1
	ldrh r1, [r5, #4]
	mov r3, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #0x15]
	ldrh r0, [r5, #4]
	mov r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	bl sub_0200E69C
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r6, #0x88
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r7, #0
	bl sub_0201A954
	add r4, #0x58
	add r0, r4, #0
	bl sub_0201A954
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1844: .word 0x0000013B
	thumb_func_end ov80_021D1758

	thumb_func_start ov80_021D1848
ov80_021D1848: ; 0x021D1848
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	sub r0, r0, r6
	ldr r1, _021D1898 ; =0x021D2FEC
	lsl r0, r0, #2
	add r0, r1, r0
	bl sub_02022664
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D186C
	cmp r6, #1
	bne _021D1872
_021D186C:
	add sp, #8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D1872:
	mov r1, #0x12
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021D189C ; =0x021BF6BC
	ldr r0, [r5, #0x28]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #5
	bl sub_0201C784
	cmp r0, #0
	beq _021D1892
	mov r4, #0
	mvn r4, r4
_021D1892:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1898: .word 0x021D2FEC
_021D189C: .word 0x021BF6BC
	thumb_func_end ov80_021D1848

	thumb_func_start ov80_021D18A0
ov80_021D18A0: ; 0x021D18A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x2c]
	ldr r0, _021D18F4 ; =0x00000139
	ldr r4, [r5, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021D18B4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D18B4:
	bl sub_0202278C
	cmp r0, #0
	ldrb r0, [r4, #0x14]
	beq _021D18E2
	cmp r0, #0
	bne _021D18F0
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	bl ov80_021D1848
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D18F0
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	bl ov80_021D273C
	mov r0, #3
	strb r0, [r4, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D18E2:
	cmp r0, #3
	beq _021D18EA
	cmp r0, #1
	bne _021D18F0
_021D18EA:
	ldrb r0, [r4, #0x14]
	sub r0, r0, #1
	strb r0, [r4, #0x14]
_021D18F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D18F4: .word 0x00000139
	thumb_func_end ov80_021D18A0

	thumb_func_start ov80_021D18F8
ov80_021D18F8: ; 0x021D18F8
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	add r5, r1, #0
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	beq _021D1928
	mov r0, #0xf0
	tst r0, r5
	bne _021D19E0
	ldrb r2, [r4, #0x15]
	lsl r0, r2, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	mov r0, #0xf
	bic r2, r0
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1928:
	bl ov80_021D18A0
	cmp r0, #0
	bne _021D19E0
	mov r0, #0xf0
	tst r0, r5
	bne _021D1954
	ldrb r2, [r4, #0x15]
	lsl r0, r2, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	mov r0, #0xf
	bic r2, r0
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1954:
	mov r0, #0x40
	tst r0, r5
	beq _021D196C
	ldr r0, [r4, #0x1c]
	cmp r0, #7
	blt _021D196C
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #0x11]
_021D196C:
	mov r0, #0x80
	tst r0, r5
	beq _021D1984
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1b
	bgt _021D1984
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0x11]
_021D1984:
	mov r0, #0x10
	tst r0, r5
	beq _021D199C
	ldr r0, [r4, #0x18]
	cmp r0, #0x1b
	bgt _021D199C
	add r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x11]
_021D199C:
	mov r0, #0x20
	tst r0, r5
	beq _021D19B4
	ldr r0, [r4, #0x18]
	cmp r0, #2
	blt _021D19B4
	sub r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0x11]
_021D19B4:
	mov r0, #3
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _021D19CC
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	b _021D19CE
_021D19CC:
	mov r0, #0
_021D19CE:
	strh r0, [r4, #0x16]
	mov r0, #0
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x15]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x15]
_021D19E0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D18F8

	thumb_func_start ov80_021D19E4
ov80_021D19E4: ; 0x021D19E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	add r1, r4, #0
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x18]
	add r1, #0x28
	bl ov80_021D1AB0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2CC0
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _021D1A2E
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	bl ov80_021D1D24
	ldr r0, [r5, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
_021D1A2E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D19E4

	thumb_func_start ov80_021D1A30
ov80_021D1A30: ; 0x021D1A30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x30]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl sub_02039F04
	str r0, [r4, #0x20]
	ldrh r3, [r5, #2]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl ov80_021D2E24
	add r4, #0xa0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1A30

	thumb_func_start ov80_021D1A58
ov80_021D1A58: ; 0x021D1A58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021D1A6E
	add r0, r1, #0
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	bl sub_02071D10
	pop {r3, r4, r5, pc}
_021D1A6E:
	ldr r5, _021D1AA8 ; =0x021D3080
	mov r1, #0
_021D1A72:
	ldrh r0, [r5]
	cmp r2, r0
	bne _021D1A90
	ldrh r0, [r5, #2]
	cmp r3, r0
	bne _021D1A90
	ldr r0, _021D1AAC ; =0x021D3084
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	bl sub_02071D10
	pop {r3, r4, r5, pc}
_021D1A90:
	add r1, r1, #1
	add r5, #8
	cmp r1, #0xd
	blo _021D1A72
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	mov r0, #0
	bl sub_02071D10
	pop {r3, r4, r5, pc}
	nop
_021D1AA8: .word 0x021D3080
_021D1AAC: .word 0x021D3084
	thumb_func_end ov80_021D1A58

	thumb_func_start ov80_021D1AB0
ov80_021D1AB0: ; 0x021D1AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	add r4, r1, #0
	ldr r6, [r5, #0x34]
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_020237E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r6, #0xa0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021D1B1C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x28]
	add r0, r5, #0
	add r1, r7, #0
	bl ov80_021D1A58
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1AEC
	mov r3, #0x7a
	b _021D1B00
_021D1AEC:
	add r1, r5, #0
	add r1, #0x88
	mov r0, #0
	ldr r1, [r1, #0]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xd0
	sub r0, r1, r0
	lsr r3, r0, #1
_021D1B00:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 ; =0x00010200
	add r2, r5, #0
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r2, #0x88
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_0201D78C
_021D1B1C:
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1B4E
	add r5, #0x84
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_021D1B4E:
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1B58: .word 0x00010200
	thumb_func_end ov80_021D1AB0

	thumb_func_start ov80_021D1B5C
ov80_021D1B5C: ; 0x021D1B5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bne _021D1B80
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_0201ACF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1B80:
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrh r1, [r4, #8]
	ldr r0, _021D1C1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D1BD0
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	add r2, #0x5c
	ldrb r0, [r2, r0]
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1e
	beq _021D1BA4
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _021D1BD0
_021D1BA4:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #0xe]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 ; =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
_021D1BD0:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D1C1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D1C16
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	add r2, #0x5c
	ldrb r0, [r2, r0]
	lsl r2, r0, #0x1a
	lsr r2, r2, #0x1e
	beq _021D1BEC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	beq _021D1C16
_021D1BEC:
	add r5, #0x84
	ldr r0, [r5, #0]
	bl sub_0200B1EC
	add r5, r0, #0
	ldrh r0, [r4, #0x12]
	mov r1, #0
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 ; =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0x10]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_021D1C16:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C1C: .word 0x0000FFFF
_021D1C20: .word 0x00010200
	thumb_func_end ov80_021D1B5C

	thumb_func_start ov80_021D1C24
ov80_021D1C24: ; 0x021D1C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	mov r4, #5
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _021D1D20
	sub r0, r1, #1
	strb r0, [r5, #0x13]
	cmp r1, #3
	bne _021D1C94
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r5, #0x1c]
	add r0, #0xff
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, r4, #0
	add r0, #0xff
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r6, #0
	bl ov80_021D1A30
	ldr r0, [r5, #0x18]
	ldr r7, [r5, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r6, #0x30]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_02039F04
	add r1, r5, #0
	add r2, r0, #0
	ldr r3, [sp, #4]
	add r0, r6, #0
	add r1, #0x28
	str r7, [sp]
	bl ov80_021D1AB0
	add r4, r4, #1
_021D1C94:
	ldrb r1, [r5, #0x11]
	mov r0, #8
	tst r0, r1
	beq _021D1CAA
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	sub r1, r0, r4
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
_021D1CAA:
	ldrb r1, [r5, #0x11]
	mov r0, #4
	tst r0, r1
	beq _021D1CC0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
_021D1CC0:
	ldrb r1, [r5, #0x11]
	mov r0, #1
	tst r0, r1
	beq _021D1CD6
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
_021D1CD6:
	ldrb r1, [r5, #0x11]
	mov r0, #2
	tst r0, r1
	beq _021D1CEC
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	sub r1, r0, r4
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
_021D1CEC:
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x8c
	add r2, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r0, r6, #0
	bl ov80_021D24BC
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _021D1D20
	mov r0, #1
	strb r0, [r5, #0x12]
	mov r2, #0
	strb r2, [r5, #0x11]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	beq _021D1D20
	add r5, #0x9c
	ldr r0, [r5, #0]
	sub r1, r2, #1
	add r3, r2, #0
	bl ov80_021D2CC0
_021D1D20:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov80_021D1C24

	thumb_func_start ov80_021D1D24
ov80_021D1D24: ; 0x021D1D24
	add r3, r0, #0
	add r3, #0x90
	str r2, [r3, #0]
	add r2, r0, #0
	add r2, #0x94
	str r1, [r2, #0]
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov80_021D1D24

	thumb_func_start ov80_021D1D38
ov80_021D1D38: ; 0x021D1D38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #0x34]
	mov r1, #0
	ldr r5, [r4, #0x78]
	str r1, [r4, #0x78]
	cmp r5, #0
	beq _021D1D6A
	add r0, r5, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201ACF4
	ldrb r1, [r4, #0x15]
	add r0, r5, #0
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_0200E744
	ldr r0, [r6, #0x28]
	mov r1, #4
	bl sub_0201C3C0
_021D1D6A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov80_021D1D38

	thumb_func_start ov80_021D1D6C
ov80_021D1D6C: ; 0x021D1D6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0xcc
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xc
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r1, #7
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r2, #0xa
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	add r4, #0x84
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x50
	sub r4, r1, r0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1DF4 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r3, r4, #1
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021D1DF4: .word 0x00010200
	thumb_func_end ov80_021D1D6C

	thumb_func_start ov80_021D1DF8
ov80_021D1DF8: ; 0x021D1DF8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	mov r3, #3
	str r3, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0xea
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r5, #0x28]
	add r1, #0x28
	mov r2, #1
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F04 ; =0x000003AB
	add r1, #0x38
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #9
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F08 ; =0x0000033B
	add r1, #0x48
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D1F0C ; =0x000001B3
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	add r1, #0x58
	mov r2, #4
	mov r3, #1
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _021D1F10 ; =0x0000019F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	add r1, #0x68
	mov r2, #4
	mov r3, #0xb
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A954
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201ACF4
	add r4, #0x68
	add r0, r4, #0
	bl sub_0201ACF4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D1F04: .word 0x000003AB
_021D1F08: .word 0x0000033B
_021D1F0C: .word 0x000001B3
_021D1F10: .word 0x0000019F
	thumb_func_end ov80_021D1DF8

	thumb_func_start ov80_021D1F14
ov80_021D1F14: ; 0x021D1F14
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	mov r5, #0
	add r4, #0x28
_021D1F1C:
	lsl r0, r5, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #5
	blo _021D1F1C
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1F14

	thumb_func_start ov80_021D1F30
ov80_021D1F30: ; 0x021D1F30
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _021D1F6E
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl sub_020198E8
_021D1F6E:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r2, #6
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	add r1, r4, #0
	mul r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r2, #0xd
	mov r3, #0xa
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl sub_02019964
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov80_021D1F30

	thumb_func_start ov80_021D1FB0
ov80_021D1FB0: ; 0x021D1FB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	lsl r1, r1, #2
	add r4, r0, #0
	mov r7, #6
	add r2, r1, #0
	ldr r0, _021D20D8 ; =0x021D3020
	mul r2, r7
	add r6, r0, r2
	add r2, r1, #1
	add r0, r2, #0
	mul r0, r7
	ldr r2, _021D20D8 ; =0x021D3020
	mov ip, r0
	add r3, r2, r0
	add r2, r1, #2
	add r0, r2, #0
	ldr r2, _021D20D8 ; =0x021D3020
	mul r0, r7
	add r5, r2, r0
	add r0, r1, #3
	add r1, r0, #0
	mul r1, r7
	add r0, r2, #0
	add r7, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [sp, #0x20]
	ldr r1, [r0, #0]
	ldrb r0, [r3, #4]
	str r0, [sp]
	ldrb r0, [r3, #5]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0xc
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, ip
	ldrb r0, [r0, r2]
	str r0, [sp, #0xc]
	ldrb r0, [r3, #1]
	str r0, [sp, #0x10]
	ldrh r0, [r1]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #3]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xd4
	ldrb r1, [r7, #4]
	ldr r0, [r0, #0]
	ldr r2, _021D20D8 ; =0x021D3020
	str r1, [sp]
	ldrb r1, [r7, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldrb r1, [r2, r1]
	str r1, [sp, #0xc]
	ldrb r1, [r7, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r7, #2]
	ldrb r3, [r7, #3]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _021D20D4
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r6, #4]
	ldr r0, [r0, #0]
	str r1, [sp]
	ldrb r1, [r6, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r6]
	str r1, [sp, #0xc]
	ldrb r1, [r6, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r6, #2]
	ldrb r3, [r6, #3]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xd4
	ldrb r1, [r5, #4]
	ldr r0, [r0, #0]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r5]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	ldr r0, [r4, #0x28]
	bl sub_02019964
_021D20D4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D20D8: .word 0x021D3020
	thumb_func_end ov80_021D1FB0

	thumb_func_start ov80_021D20DC
ov80_021D20DC: ; 0x021D20DC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xbc
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	ldrb r0, [r4]
	cmp r0, #1
	beq _021D2182
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #2
	str r1, [sp]
	mov r1, #3
	add r2, r0, #0
	str r1, [sp, #4]
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #0x15
	str r3, [sp, #0x10]
	ldrh r2, [r0]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x10
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
_021D2182:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov80_021D1F30
	add r0, r4, #0
	add r0, #0xc8
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	add r0, r4, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	ldrh r1, [r4, #2]
	mov r0, #1
	tst r0, r1
	beq _021D2200
	add r0, r4, #0
	mov r1, #0
	bl ov80_021D1FB0
_021D2200:
	ldrh r1, [r4, #2]
	mov r0, #2
	tst r0, r1
	beq _021D2210
	add r0, r4, #0
	mov r1, #1
	bl ov80_021D1FB0
_021D2210:
	ldrh r1, [r4, #2]
	mov r0, #4
	tst r0, r1
	beq _021D2220
	add r0, r4, #0
	mov r1, #2
	bl ov80_021D1FB0
_021D2220:
	ldrh r1, [r4, #2]
	mov r0, #8
	tst r0, r1
	beq _021D2230
	add r0, r4, #0
	mov r1, #3
	bl ov80_021D1FB0
_021D2230:
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov80_021D20DC

	thumb_func_start ov80_021D225C
ov80_021D225C: ; 0x021D225C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x28]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x28]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D225C

	thumb_func_start ov80_021D2398
ov80_021D2398: ; 0x021D2398
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r6, _021D24B0 ; =0x021D3138
	add r3, sp, #0
	mov r2, #5
_021D23A6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D23A6
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D24B4 ; =0x021D30E8
	bl sub_0200CA08
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	lsl r1, r1, #4
	bl sub_02021CE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x6c
	bl sub_0200D494
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D24B8 ; =0x021D3110
	bl sub_0200CA08
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x41
	lsl r0, r0, #2
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r1, [r4, #0x18]
	mov r0, #0x41
	lsl r0, r0, #2
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021D2452
	mov r0, #1
	str r0, [sp, #0x10]
	b _021D2456
_021D2452:
	mov r0, #0
	str r0, [sp, #0x10]
_021D2456:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0
	bl sub_0200CA08
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r5, #0x2c]
	mov r0, #0x42
	ldr r1, [r1, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r1, [r4, #0x18]
	mov r0, #0x42
	lsl r0, r0, #2
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D24B0: .word 0x021D3138
_021D24B4: .word 0x021D30E8
_021D24B8: .word 0x021D3110
	thumb_func_end ov80_021D2398

	thumb_func_start ov80_021D24BC
ov80_021D24BC: ; 0x021D24BC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	bge _021D24E2
	ldr r0, [r5, #0x28]
	mov r1, #6
	mov r2, #0
	mov r3, #8
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	mov r3, #8
	bl sub_0201C63C
	b _021D2516
_021D24E2:
	cmp r4, #0xf8
	ldr r0, [r5, #0x28]
	ble _021D2500
	mov r1, #6
	mov r2, #0
	mov r3, #0xf8
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	mov r3, #0xf8
	bl sub_0201C63C
	b _021D2516
_021D2500:
	mov r1, #6
	mov r2, #0
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	add r3, r4, #0
	bl sub_0201C63C
_021D2516:
	cmp r6, #0x50
	bge _021D2534
	ldr r0, [r5, #0x28]
	mov r1, #6
	mov r2, #3
	mov r3, #0x50
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	mov r3, #0x50
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
_021D2534:
	mov r3, #0x13
	lsl r3, r3, #4
	cmp r6, r3
	ldr r0, [r5, #0x28]
	ble _021D2556
	mov r1, #6
	mov r2, #3
	bl sub_0201C63C
	mov r3, #0x13
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	lsl r3, r3, #4
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
_021D2556:
	mov r1, #6
	mov r2, #3
	add r3, r6, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	add r3, r6, #0
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov80_021D24BC

	thumb_func_start ov80_021D2570
ov80_021D2570: ; 0x021D2570
	push {r4, r5}
	ldr r5, [r0, #0]
	mov r4, #0
	cmp r5, #0
	ble _021D2594
_021D257A:
	ldr r3, [r0, #0xc]
	cmp r1, r3
	bne _021D258C
	ldr r3, [r0, #0x10]
	cmp r2, r3
	bne _021D258C
	add r0, r4, #0
	pop {r4, r5}
	bx lr
_021D258C:
	add r4, r4, #1
	add r0, #0x10
	cmp r4, r5
	blt _021D257A
_021D2594:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov80_021D2570

	thumb_func_start ov80_021D259C
ov80_021D259C: ; 0x021D259C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	mov r1, #0
	str r0, [sp, #8]
	add r0, #0xa4
	mov r2, #0x5c
	bl sub_020C4CF4
	mov r0, #0
	ldr r7, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, #0xa4
	str r0, [sp, #0xc]
	add r0, #0xb0
	str r0, [sp, #0xc]
_021D25C2:
	ldr r1, [r6, #0x2c]
	ldr r0, [sp]
	add r1, #0x20
	add r4, r1, r0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _021D2676
	ldr r1, [r4, #0]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	bne _021D25E0
	ldr r2, [r4, #4]
	ldr r0, [r6, #0x24]
	cmp r2, r0
	beq _021D2666
_021D25E0:
	ldr r2, [r4, #4]
	add r0, r7, #0
	bl ov80_021D2570
	cmp r0, #0
	bge _021D25FE
	ldr r0, [sp, #8]
	add r0, #0xa4
	ldr r1, [r0, #0]
	ldr r0, [r7, #0]
	lsl r1, r1, #4
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #0xc]
	b _021D2602
_021D25FE:
	lsl r1, r0, #4
	ldr r0, [sp, #0xc]
_021D2602:
	add r5, r0, r1
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bls _021D2616
	mov r0, #0
	b _021D261C
_021D2616:
	lsl r1, r0, #1
	ldr r0, _021D26A0 ; =0x021D2FE4
	ldrh r0, [r0, r1]
_021D261C:
	strh r0, [r5, #8]
	ldr r0, [sp, #4]
	add r1, r6, #0
	strb r0, [r5, #0xa]
	mov r0, #1
	strb r0, [r5, #0xb]
	add r0, r6, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D26A4 ; =0x021D2FF8
	bl sub_0200CA08
	str r0, [r5, #0xc]
	ldr r2, [r5, #0]
	mov r1, #7
	mul r1, r2
	add r1, #0x19
	lsl r1, r1, #0x10
	ldr r3, [r5, #4]
	mov r2, #7
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02021F58
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_02021CAC
_021D2666:
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D25C2
_021D2676:
	ldr r0, [sp, #8]
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D269C
	sub r1, r0, #1
	ldr r0, [sp, #8]
	mov r2, #1
	add r0, #0xae
	strb r1, [r0]
	ldr r1, [sp, #8]
	ldr r0, _021D26A8 ; =ov80_021D26AC
	add r1, #0xa4
	bl sub_0200D9E8
	ldr r1, [sp, #8]
	add r1, #0xa8
	str r1, [sp, #8]
	str r0, [r1, #0]
_021D269C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D26A0: .word 0x021D2FE4
_021D26A4: .word 0x021D2FF8
_021D26A8: .word ov80_021D26AC
	thumb_func_end ov80_021D259C

	thumb_func_start ov80_021D26AC
ov80_021D26AC: ; 0x021D26AC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #8]
	add r1, r0, #1
	strh r1, [r4, #8]
	mov r1, #0x1a
	bl sub_020E1F6C
	cmp r1, #0
	bgt _021D26FC
	ldrb r0, [r4, #0xb]
	mov r1, #0
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_02021CAC
	ldrb r0, [r4, #0xa]
	mov r1, #1
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_02021CAC
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r1, [r4, #0]
	ldrb r2, [r4, #0xa]
	sub r0, r1, #1
	add r0, r2, r0
	bl sub_020E1F6C
	strb r1, [r4, #0xa]
	mov r0, #0x41
	ldrh r1, [r4, #8]
	lsl r0, r0, #2
	cmp r1, r0
	bls _021D26FC
	mov r0, #1
	strh r0, [r4, #8]
_021D26FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D26AC

	thumb_func_start ov80_021D2700
ov80_021D2700: ; 0x021D2700
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x34]
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2712
	bl sub_0200DA58
_021D2712:
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021D2738
	add r5, r6, #0
_021D2720:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200C7E4
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _021D2720
_021D2738:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2700

	thumb_func_start ov80_021D273C
ov80_021D273C: ; 0x021D273C
	push {r4, lr}
	add r3, r0, #0
	ldr r4, [r3, #0x34]
	mov r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	cmp r1, #0
	bne _021D275C
	ldr r0, _021D276C ; =ov80_021D2774
	add r1, r3, #0
	bl sub_0200D9E8
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_021D275C:
	ldr r0, _021D2770 ; =ov80_021D28EC
	add r1, r3, #0
	bl sub_0200D9E8
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_021D276C: .word ov80_021D2774
_021D2770: .word ov80_021D28EC
	thumb_func_end ov80_021D273C

	thumb_func_start ov80_021D2774
ov80_021D2774: ; 0x021D2774
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r4, [r5, #0x34]
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bls _021D2786
	b _021D28E0
_021D2786:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2792: ; jump table
	.short _021D279C - _021D2792 - 2 ; case 0
	.short _021D27D0 - _021D2792 - 2 ; case 1
	.short _021D280C - _021D2792 - 2 ; case 2
	.short _021D2848 - _021D2792 - 2 ; case 3
	.short _021D28BE - _021D2792 - 2 ; case 4
_021D279C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E50
	ldr r0, _021D28E4 ; =0x000005E4
	bl sub_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D27D0:
	ldr r1, [r4, #8]
	mov r0, #0x1f
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	ror r2, r0
	add r0, r3, r2
	beq _021D27F8
	add r3, r1, r3
	ldr r1, _021D28E8 ; =0x021D2FE0
	asr r2, r3, #1
	ldrb r1, [r1, r2]
	add r0, r5, #0
	mov r2, #0
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
_021D27F8:
	ldr r1, [r4, #8]
	add r0, r1, #1
	str r0, [r4, #8]
	cmp r1, #7
	ble _021D28E0
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D280C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #2
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2848:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D28E0
	mov r0, #1
	strb r0, [r4, #0x10]
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x68
	bl ov80_021D1D6C
	add r0, r5, #0
	bl ov80_021D1A30
	add r0, r5, #0
	bl ov80_021D19E4
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #5
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D28BE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D28E0
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x14]
	sub r0, r0, #2
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0x43
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D28E0:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D28E4: .word 0x000005E4
_021D28E8: .word 0x021D2FE0
	thumb_func_end ov80_021D2774

	thumb_func_start ov80_021D28EC
ov80_021D28EC: ; 0x021D28EC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r4, [r5, #0x34]
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D2908
	cmp r0, #1
	beq _021D2932
	cmp r0, #2
	beq _021D2990
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021D2908:
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #2
	bl sub_0200F174
	ldr r0, _021D29B8 ; =0x00000691
	bl sub_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2932:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D29B4
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #5
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2990:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D29B4
	mov r0, #0
	strb r0, [r4, #0x10]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	sub r0, r0, #2
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0x43
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D29B4:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D29B8: .word 0x00000691
	thumb_func_end ov80_021D28EC

	thumb_func_start ov80_021D29BC
ov80_021D29BC: ; 0x021D29BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D29D0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D29D0:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2C5C
	cmp r0, #0
	beq _021D29EA
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D29EE
_021D29EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D29EE:
	ldr r1, [r5, #0x2c]
	mov r0, #1
	str r0, [r1, #0x10]
	ldr r2, [r4, #0x18]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x14]
	ldr r2, [r4, #0x1c]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x18]
	ldr r2, [r4, #0x20]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D29BC

	thumb_func_start ov80_021D2A08
ov80_021D2A08: ; 0x021D2A08
	push {r4, r5, r6, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, [r4, #4]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #4]
	bl sub_0200C6E4
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r4, #0
	add r1, #0xdc
	add r2, sp, #0x30
	ldr r5, _021D2AB4 ; =0x021D3190
	str r0, [r1, #0]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021D2AB8 ; =0x021D3160
	stmia r2!, {r0, r1}
	add r5, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r3, #0x20
	bl sub_0200C73C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x1c
	bl sub_0200C7C0
	ldr r5, _021D2ABC ; =0x021D3174
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0xd8
	add r4, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0200C8F0
	add sp, #0x50
	pop {r4, r5, r6, pc}
	nop
_021D2AB4: .word 0x021D3190
_021D2AB8: .word 0x021D3160
_021D2ABC: .word 0x021D3174
	thumb_func_end ov80_021D2A08

	thumb_func_start ov80_021D2AC0
ov80_021D2AC0: ; 0x021D2AC0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200C8B0
	add r4, #0xd8
	ldr r0, [r4, #0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	thumb_func_end ov80_021D2AC0

	thumb_func_start ov80_021D2AE0
ov80_021D2AE0: ; 0x021D2AE0
	ldr r3, _021D2AE8 ; =sub_0200C7EC
	add r0, #0xdc
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_021D2AE8: .word sub_0200C7EC
	thumb_func_end ov80_021D2AE0

	thumb_func_start ov80_021D2AEC
ov80_021D2AEC: ; 0x021D2AEC
	ldr r3, _021D2AF0 ; =sub_0200C800
	bx r3
	; .align 2, 0
_021D2AF0: .word sub_0200C800
	thumb_func_end ov80_021D2AEC

	thumb_func_start ov80_021D2AF4
ov80_021D2AF4: ; 0x021D2AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	mov r1, #0xc
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_02018144
	add r7, r0, #0
	mov r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	strb r0, [r7, #3]
	strb r0, [r7, #4]
	strb r0, [r7, #5]
	strb r0, [r7, #6]
	strb r0, [r7, #7]
	strb r0, [r7, #8]
	strb r0, [r7, #9]
	strb r0, [r7, #0xa]
	strb r0, [r7, #0xb]
	strh r4, [r7]
	ldrh r2, [r7]
	mov r1, #0x1c
	add r0, r5, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r7, #8]
	ldrh r3, [r7]
	mov r2, #0x1c
	mov r1, #0
	mul r2, r3
	bl sub_020D5124
	ldrh r0, [r7]
	mov r6, #0
	ldr r5, _021D2C10 ; =0x021D31D8
	cmp r0, #0
	ble _021D2C0A
	str r6, [sp, #0xc]
_021D2B4E:
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r5, #0]
	add r4, r0, r1
	str r2, [r0, r1]
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	ldr r2, _021D2C14 ; =0x021D31B0
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	ldrb r0, [r0, r6]
	str r0, [r4, #0x14]
	ldr r0, [sp]
	bl sub_0200CA08
	str r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021D2B98
	ldrb r2, [r4, #9]
	ldr r0, [r4, #0x18]
	add r2, r2, #5
	add r1, r2, r1
	bl sub_02021E90
	b _021D2BAE
_021D2B98:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D2C18 ; =0x0000FFFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021D2BAE
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02021CAC
_021D2BAE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D2BC6
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2BD4
_021D2BC6:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2BD4:
	bl sub_020E1740
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_02021E2C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r1, #0x19
	sub r2, #0x22
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [sp, #0xc]
	add r5, #0x14
	add r0, #0x1c
	str r0, [sp, #0xc]
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blt _021D2B4E
_021D2C0A:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C10: .word 0x021D31D8
_021D2C14: .word 0x021D31B0
_021D2C18: .word 0x0000FFFF
	thumb_func_end ov80_021D2AF4

	thumb_func_start ov80_021D2C1C
ov80_021D2C1C: ; 0x021D2C1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0
	cmp r0, #0
	ble _021D2C4C
	add r4, r6, #0
_021D2C2A:
	ldr r0, [r5, #8]
	mov r1, #0
	add r7, r0, r4
	ldr r0, [r7, #0x18]
	add r2, r1, #0
	bl sub_02021C98
	ldr r0, [r7, #0x18]
	bl sub_02021BD4
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldrh r0, [r5]
	add r4, #0x1c
	cmp r6, r0
	blt _021D2C2A
_021D2C4C:
	ldr r0, [r5, #8]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2C1C

	thumb_func_start ov80_021D2C5C
ov80_021D2C5C: ; 0x021D2C5C
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _021D2CB8
	ldr r0, [r0, #8]
_021D2C68:
	ldr r6, [r0, #0]
	cmp r6, r1
	bne _021D2CAC
	ldrh r6, [r0, #0xa]
	cmp r6, #3
	bhi _021D2CAC
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_021D2C80: ; jump table
	.short _021D2C88 - _021D2C80 - 2 ; case 0
	.short _021D2C8C - _021D2C80 - 2 ; case 1
	.short _021D2C98 - _021D2C80 - 2 ; case 2
	.short _021D2CA4 - _021D2C80 - 2 ; case 3
_021D2C88:
	pop {r3, r4, r5, r6}
	bx lr
_021D2C8C:
	cmp r2, #9
	bne _021D2CAC
	cmp r3, #0x1c
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2C98:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x12
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2CA4:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x11
	beq _021D2CBA
_021D2CAC:
	add r4, r4, #1
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add r0, #0x1c
	cmp r4, r5
	blt _021D2C68
_021D2CB8:
	mov r0, #0
_021D2CBA:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov80_021D2C5C

	thumb_func_start ov80_021D2CC0
ov80_021D2CC0: ; 0x021D2CC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _021D2CCA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2CCA:
	bl ov80_021D2C5C
	add r4, r0, #0
	beq _021D2CD8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D2CF2
_021D2CD8:
	ldr r3, [r5, #4]
	cmp r3, #0
	beq _021D2CEC
	ldrb r1, [r3, #9]
	ldr r0, [r3, #0x18]
	add r2, r1, #5
	ldr r1, [r3, #0x14]
	add r1, r2, r1
	bl sub_02021E90
_021D2CEC:
	mov r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021D2CF2:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021D2D00
	mov r0, #0
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _021D2D1C
_021D2D00:
	ldrh r2, [r4, #0xa]
	ldr r0, _021D2D24 ; =0x0000FFFE
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021D2D1C
	ldrb r2, [r1, #9]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x14]
	add r2, r2, #5
	add r1, r2, r1
	bl sub_02021E90
_021D2D1C:
	str r4, [r5, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D2D24: .word 0x0000FFFE
	thumb_func_end ov80_021D2CC0

	thumb_func_start ov80_021D2D28
ov80_021D2D28: ; 0x021D2D28
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _021D2D6C
	cmp r1, #1
	bne _021D2D6C
	ldrb r0, [r4, #3]
	cmp r0, #0
	ldr r0, [r3, #0x18]
	bne _021D2D48
	ldrb r1, [r3, #9]
	add r1, #8
	bl sub_02021E90
	b _021D2D54
_021D2D48:
	ldrb r1, [r3, #9]
	add r2, r1, #5
	ldr r1, [r3, #0x14]
	add r1, r2, r1
	bl sub_02021E90
_021D2D54:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #0x10
	bne _021D2D6C
	mov r0, #0
	strb r0, [r4, #2]
	ldrb r1, [r4, #3]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #3]
_021D2D6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2D28

	thumb_func_start ov80_021D2D70
ov80_021D2D70: ; 0x021D2D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	bl sub_020C7DA0
	add r0, sp, #4
	add r1, r5, #0
	bl sub_020C8080
	cmp r0, #0
	bne _021D2D94
	bl sub_02022974
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D2D94:
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	cmp r0, #0
	bge _021D2DA6
	bl sub_02022974
_021D2DA6:
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r6, r0, #0
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	strb r0, [r6, #6]
	strb r0, [r6, #7]
	ldr r2, [sp]
	mov r1, #0x18
	add r0, r4, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r6, #4]
	ldr r3, [sp]
	mov r2, #0x18
	mov r1, #0
	mul r2, r3
	bl sub_020D5124
	ldr r0, [sp]
	mov r4, #0
	str r0, [r6, #0]
	cmp r0, #0
	ble _021D2E02
	add r5, r4, #0
_021D2DE8:
	ldr r0, [r6, #4]
	mov r2, #0x18
	add r7, r0, r5
	add r0, sp, #4
	add r1, r7, #0
	bl sub_020C81D4
	strh r4, [r7, #0x16]
	ldr r0, [r6, #0]
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r0
	blt _021D2DE8
_021D2E02:
	add r0, sp, #4
	bl sub_020C80C8
	add r0, r6, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2D70

	thumb_func_start ov80_021D2E10
ov80_021D2E10: ; 0x021D2E10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2E10

	thumb_func_start ov80_021D2E24
ov80_021D2E24: ; 0x021D2E24
	push {r3, r4, r5, r6}
	ldr r6, [r0, #0]
	mov r5, #0
	cmp r6, #0
	ble _021D2E54
	ldr r0, [r0, #4]
_021D2E30:
	ldrh r4, [r0]
	cmp r4, r1
	bne _021D2E4C
	ldrh r4, [r0, #2]
	cmp r4, r2
	bne _021D2E4C
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _021D2E56
	tst r1, r3
	bne _021D2E56
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021D2E4C:
	add r5, r5, #1
	add r0, #0x18
	cmp r5, r6
	blt _021D2E30
_021D2E54:
	mov r0, #0
_021D2E56:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov80_021D2E24
	; 0x021D2E5C

	.incbin "data/overlay80.bin"
