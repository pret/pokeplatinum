	.include "macros/function.inc"
	.include "include/ov80_021D0D80.inc"

	

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

	.rodata


	.global Unk_ov80_021D2E5C
Unk_ov80_021D2E5C: ; 0x021D2E5C
	.incbin "incbin/overlay80_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov80_021D2E6C
Unk_ov80_021D2E6C: ; 0x021D2E6C
	.incbin "incbin/overlay80_rodata.bin", 0x10, 0x38 - 0x10

	.global Unk_ov80_021D2E94
Unk_ov80_021D2E94: ; 0x021D2E94
	.incbin "incbin/overlay80_rodata.bin", 0x38, 0xA4 - 0x38

	.global Unk_ov80_021D2F00
Unk_ov80_021D2F00: ; 0x021D2F00
	.incbin "incbin/overlay80_rodata.bin", 0xA4, 0xE0


	.data


	.global Unk_ov80_021D3380
Unk_ov80_021D3380: ; 0x021D3380
	.incbin "incbin/overlay80_data.bin", 0x0, 0x14

